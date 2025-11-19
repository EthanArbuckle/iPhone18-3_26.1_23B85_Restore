void sub_2974EA9B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, __int16 a12, char a13, char a14, uint64_t a15, xpc_object_t object, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, std::__shared_weak_count *a25, void *aBlock)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (a25)
  {
    std::__shared_weak_count::__release_weak(a25);
  }

  _ZZZZN12TraceManager24collectBasebandLogs_syncEN3xpc4dictEN8dispatch5blockIU13block_pointerFviS1_EEEEUb1_ENK3__3clEvENUlvE_D1Ev(v26 - 96);
  _ZNSt3__110unique_ptrIZZN12TraceManager24collectBasebandLogs_syncEN3xpc4dictEN8dispatch5blockIU13block_pointerFviS3_EEEEUb1_E3__3NS_14default_deleteIS9_EEED1B8ne200100Ev(&a11);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a10);
  _Unwind_Resume(a1);
}

uint64_t *_ZNSt3__110unique_ptrIZZN12TraceManager24collectBasebandLogs_syncEN3xpc4dictEN8dispatch5blockIU13block_pointerFviS3_EEEEUb1_E3__3NS_14default_deleteIS9_EEED1B8ne200100Ev(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(v2 + 87) < 0)
    {
      operator delete(*(v2 + 64));
    }

    v3 = *(v2 + 56);
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    v4 = *(v2 + 32);
    if (v4)
    {
      _Block_release(v4);
    }

    if (*(v2 + 31) < 0)
    {
      operator delete(*(v2 + 8));
    }

    operator delete(v2);
  }

  return a1;
}

void _ZZZZN12TraceManager24collectBasebandLogs_syncEN3xpc4dictEN8dispatch5blockIU13block_pointerFviS1_EEEEUb1_ENK3__3clEvENKUlvE_clEv(uint64_t a1)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = v2;
  if (v2)
  {
    xdict = v2;
  }

  else
  {
    v3 = xpc_null_create();
    xdict = v3;
    if (!v3)
    {
      v4 = xpc_null_create();
      v3 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x29C272BA0](v3) == MEMORY[0x29EDCAA00])
  {
    xpc_retain(v3);
    goto LABEL_9;
  }

  v4 = xpc_null_create();
LABEL_8:
  xdict = v4;
LABEL_9:
  xpc_release(v3);
  v5 = xpc_string_create(*MEMORY[0x29EDBFC08]);
  if (!v5)
  {
    v5 = xpc_null_create();
  }

  xpc_dictionary_set_value(xdict, *MEMORY[0x29EDBEC90], v5);
  v6 = xpc_null_create();
  xpc_release(v5);
  xpc_release(v6);
  v7 = a1;
  if (*(a1 + 23) < 0)
  {
    v7 = *a1;
  }

  v8 = xpc_string_create(v7);
  if (!v8)
  {
    v8 = xpc_null_create();
  }

  xpc_dictionary_set_value(xdict, *MEMORY[0x29EDBE930], v8);
  v9 = xpc_null_create();
  xpc_release(v8);
  xpc_release(v9);
  v10 = 0;
  dispatch::block<void({block_pointer})(int,xpc::dict)>::operator()<int,xpc::dict&>((a1 + 24), &v10, &xdict);
  xpc_release(xdict);
}

void ___ZZZN12TraceManager24collectBasebandLogs_syncEN3xpc4dictEN8dispatch5blockIU13block_pointerFviS1_EEEEUb1_ENK3__3clEv_block_invoke(void *a1, unsigned int *a2)
{
  v20 = *MEMORY[0x29EDCA608];
  v3 = a1[4];
  v16 = 0;
  v17 = 0;
  v4 = a1[6];
  if (!v4)
  {
    v6 = 0;
    goto LABEL_12;
  }

  v6 = std::__shared_weak_count::lock(v4);
  v17 = v6;
  if (!v6 || (v16 = a1[5]) == 0)
  {
LABEL_12:
    v10 = xpc_null_create();
    v11 = a1[7];
    __p[0] = v10;
    v12 = xpc_null_create();
    (*(v11 + 16))(v11, 3760250880, __p);
    xpc_release(__p[0]);
    xpc_release(v12);
    if (!v6)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  v7 = *a2;
  v8 = *(v3 + 104);
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      TelephonyXPC::Result::toString(v7, __p);
      v9 = v15 >= 0 ? __p : __p[0];
      *buf = 136315138;
      v19 = v9;
      _os_log_error_impl(&dword_297476000, v8, OS_LOG_TYPE_ERROR, "Failed to archive logs. Result: %s", buf, 0xCu);
      if (v15 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(__p[0]) = 0;
    _os_log_debug_impl(&dword_297476000, v8, OS_LOG_TYPE_DEBUG, "#D Compression is done.", __p, 2u);
  }

  _ZZZZN12TraceManager24collectBasebandLogs_syncEN3xpc4dictEN8dispatch5blockIU13block_pointerFviS1_EEEEUb1_ENK3__3clEvENKUlvE_clEv((a1 + 8));
LABEL_17:
  if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

LABEL_19:
  v13 = *MEMORY[0x29EDCA608];
}

void sub_2974EAF60(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t TelephonyXPC::Result::toString@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result <= -534716413)
  {
    if (result <= -534716415)
    {
      if (result == -534716416)
      {
        a2[23] = 14;
        strcpy(a2, "kInternalError");
        return result;
      }

      if (result == -534716415)
      {
        a2[23] = 12;
        strcpy(a2, "kServerError");
        return result;
      }

LABEL_20:
      a2[23] = 17;
      strcpy(a2, "kInvalidErrorCode");
      return result;
    }

    if (result == -534716414)
    {
      a2[23] = 13;
      strcpy(a2, "kCommandError");
    }

    else
    {
      a2[23] = 8;
      strcpy(a2, "kTimeout");
    }
  }

  else
  {
    if (result > -534716411)
    {
      switch(result)
      {
        case 0xE020E006:
          a2[23] = 17;
          strcpy(a2, "kPermissionDenied");
          return result;
        case 0xE020E007:
          a2[23] = 13;
          strcpy(a2, "kNotAvailable");
          return result;
        case 0:
          a2[23] = 8;
          strcpy(a2, "kSuccess");
          return result;
      }

      goto LABEL_20;
    }

    if (result == -534716412)
    {
      a2[23] = 13;
      strcpy(a2, "kNotSupported");
    }

    else
    {
      a2[23] = 6;
      strcpy(a2, "kRetry");
    }
  }

  return result;
}

void *__copy_helper_block_e8_40c37_ZTSNSt3__18weak_ptrI12TraceManagerEE56c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE64c124_ZTSZZZN12TraceManager24collectBasebandLogs_syncEN3xpc4dictEN8dispatch5blockIU13block_pointerFviS1_EEEEUb1_ENK3__3clEvEUlvE_(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  v5 = *(a2 + 56);
  if (v5)
  {
    v5 = _Block_copy(v5);
  }

  *(a1 + 56) = v5;
  if (*(a2 + 87) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 64), *(a2 + 64), *(a2 + 72));
  }

  else
  {
    v6 = *(a2 + 64);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 64) = v6;
  }

  result = *(a2 + 88);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 88) = result;
  return result;
}

void sub_2974EB238(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 56);
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = *(v1 + 48);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_40c37_ZTSNSt3__18weak_ptrI12TraceManagerEE56c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE64c124_ZTSZZZN12TraceManager24collectBasebandLogs_syncEN3xpc4dictEN8dispatch5blockIU13block_pointerFviS1_EEEEUb1_ENK3__3clEvEUlvE_(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    _Block_release(v2);
  }

  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
    v3 = *(a1 + 56);
    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v3 = *(a1 + 56);
  if (v3)
  {
LABEL_7:
    _Block_release(v3);
  }

LABEL_8:
  v4 = *(a1 + 48);
  if (v4)
  {

    std::__shared_weak_count::__release_weak(v4);
  }
}

uint64_t _ZZZZN12TraceManager24collectBasebandLogs_syncEN3xpc4dictEN8dispatch5blockIU13block_pointerFviS1_EEEEUb1_ENK3__3clEvENUlvE_D1Ev(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    _Block_release(v2);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::__function::__func<TraceManager::registerEventHandlers_sync(void)::$_0,std::allocator<TraceManager::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::~__func(uint64_t result)
{
  *result = &unk_2A1E44E30;
  if (*(result + 24))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 24));
    return v1;
  }

  return result;
}

void std::__function::__func<TraceManager::registerEventHandlers_sync(void)::$_0,std::allocator<TraceManager::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::~__func(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E44E30;
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

char *std::__function::__func<TraceManager::registerEventHandlers_sync(void)::$_0,std::allocator<TraceManager::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t a1)
{
  result = operator new(0x20uLL);
  *result = &unk_2A1E44E30;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<TraceManager::registerEventHandlers_sync(void)::$_0,std::allocator<TraceManager::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A1E44E30;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<TraceManager::registerEventHandlers_sync(void)::$_0,std::allocator<TraceManager::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<TraceManager::registerEventHandlers_sync(void)::$_0,std::allocator<TraceManager::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::destroy_deallocate(std::__shared_weak_count **a1)
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

void std::__function::__func<TraceManager::registerEventHandlers_sync(void)::$_0,std::allocator<TraceManager::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::operator()(void *a1, NSObject **a2, void **a3)
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
      if (!a1[2] || MEMORY[0x29C272BA0](v5) != MEMORY[0x29EDCAA00])
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
      dispatch_async_f(v19, v20, dispatch::async<void ctu::SharedSynchronizable<TraceManager>::execute_wrapped<TraceManager::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(TraceManager::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<TraceManager::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<TraceManager::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
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

void sub_2974EB734(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
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

uint64_t std::__function::__func<TraceManager::registerEventHandlers_sync(void)::$_0,std::allocator<TraceManager::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN12TraceManager26registerEventHandlers_syncEvE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN12TraceManager26registerEventHandlers_syncEvE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN12TraceManager26registerEventHandlers_syncEvE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN12TraceManager26registerEventHandlers_syncEvE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void dispatch::async<void ctu::SharedSynchronizable<TraceManager>::execute_wrapped<TraceManager::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(TraceManager::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<TraceManager::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<TraceManager::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v2 = *a1;
  TraceManager::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}::operator()(*a1);
  if (v2)
  {
    xpc_release(v2[4]);
    v2[4] = 0;
    v3 = v2[3];
    if (v3)
    {
      dispatch_group_leave(v3);
      v4 = v2[3];
      if (v4)
      {
        dispatch_release(v4);
      }
    }

    v5 = v2[2];
    if (v5)
    {
      std::__shared_weak_count::__release_weak(v5);
    }

    operator delete(v2);
  }

  v6 = *(a1 + 16);
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
    v7 = a1;
  }

  else
  {
    v7 = a1;
  }

  operator delete(v7);
}

void sub_2974EB8E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10)
{
  std::unique_ptr<TraceManager::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},std::default_delete<TraceManager::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&a10);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a9);
  _Unwind_Resume(a1);
}

void TraceManager::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}::operator()(uint64_t *a1)
{
  v297 = *MEMORY[0x29EDCA608];
  v2 = *a1;
  v294 = 0xAAAAAAAAAAAAAAAALL;
  v3 = a1[4];
  *__s1 = v3;
  if (v3)
  {
    xpc_retain(v3);
  }

  else
  {
    *__s1 = xpc_null_create();
  }

  xpc::bridge(&buf, __s1, v4);
  v5 = buf.__r_.__value_.__r.__words[0];
  if (!buf.__r_.__value_.__r.__words[0] || (v6 = CFGetTypeID(buf.__r_.__value_.__l.__data_), v6 != CFDictionaryGetTypeID()))
  {
    v5 = 0;
    v294 = 0;
    v7 = buf.__r_.__value_.__r.__words[0];
    if (!buf.__r_.__value_.__r.__words[0])
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v294 = v5;
  CFRetain(v5);
  v7 = buf.__r_.__value_.__r.__words[0];
  if (buf.__r_.__value_.__r.__words[0])
  {
LABEL_9:
    CFRelease(v7);
  }

LABEL_10:
  xpc_release(*__s1);
  if (!v5)
  {
    goto LABEL_567;
  }

  v293[0] = 0xAAAAAAAAAAAAAAAALL;
  v293[1] = 0xAAAAAAAAAAAAAAAALL;
  ctu::cf::dict_adapter::dict_adapter(v293, v5);
  memset(__s1, 170, sizeof(__s1));
  v8 = *MEMORY[0x29EDBEAF8];
  ctu::cf::MakeCFString::MakeCFString(&buf, *MEMORY[0x29EDBEAF8]);
  ctu::cf::map_adapter::getString();
  MEMORY[0x29C270E70](&buf);
  v9 = (v2 + 136);
  if ((v2 + 136) != __s1)
  {
    if (*(v2 + 159) < 0)
    {
      if (__s1[23] >= 0)
      {
        v10 = __s1;
      }

      else
      {
        v10 = *__s1;
      }

      if (__s1[23] >= 0)
      {
        v11 = __s1[23];
      }

      else
      {
        v11 = *&__s1[8];
      }

      std::string::__assign_no_alias<false>(v9, v10, v11);
    }

    else if ((__s1[23] & 0x80) != 0)
    {
      std::string::__assign_no_alias<true>(v9, *__s1, *&__s1[8]);
    }

    else
    {
      *v9 = *__s1;
      *(v2 + 152) = *&__s1[16];
    }
  }

  v12 = *(v2 + 104);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = __s1;
    if (__s1[23] < 0)
    {
      v13 = *__s1;
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
    *(buf.__r_.__value_.__r.__words + 4) = v13;
    _os_log_impl(&dword_297476000, v12, OS_LOG_TYPE_DEFAULT, "#I %s", &buf, 0xCu);
  }

  v14 = *MEMORY[0x29EDBF210];
  v15 = strlen(*MEMORY[0x29EDBF210]);
  v16 = __s1[23];
  if ((__s1[23] & 0x8000000000000000) != 0)
  {
    if (v15 == *&__s1[8])
    {
      if (v15 == -1)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      if (!memcmp(*__s1, v14, v15))
      {
LABEL_65:
        memset(__dst, 170, sizeof(__dst));
        v31 = *MEMORY[0x29EDBEB00];
        memset(&buf, 0, sizeof(buf));
        ctu::cf::MakeCFString::MakeCFString(&v290, v31);
        ctu::cf::map_adapter::getString();
        MEMORY[0x29C270E70](&v290);
        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }

        memset(&v290, 170, sizeof(v290));
        v32 = *MEMORY[0x29EDBE5C0];
        v33 = strlen(*MEMORY[0x29EDBE5C0]);
        if (v33 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v34 = v33;
        if (v33 >= 0x17)
        {
          if ((v33 | 7) == 0x17)
          {
            v48 = 25;
          }

          else
          {
            v48 = (v33 | 7) + 1;
          }

          p_buf = operator new(v48);
          buf.__r_.__value_.__l.__size_ = v34;
          buf.__r_.__value_.__r.__words[2] = v48 | 0x8000000000000000;
          buf.__r_.__value_.__r.__words[0] = p_buf;
        }

        else
        {
          *(&buf.__r_.__value_.__s + 23) = v33;
          p_buf = &buf;
          if (!v33)
          {
LABEL_96:
            v49 = *MEMORY[0x29EDBED88];
            p_buf->__r_.__value_.__s.__data_[v34] = 0;
            ctu::cf::MakeCFString::MakeCFString(__p, v49);
            ctu::cf::map_adapter::getString();
            MEMORY[0x29C270E70](__p);
            if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(buf.__r_.__value_.__l.__data_);
            }

            v50 = *MEMORY[0x29EDBE578];
            ctu::cf::MakeCFString::MakeCFString(&buf, *MEMORY[0x29EDBE578]);
            Int = ctu::cf::map_adapter::getInt(v293, buf.__r_.__value_.__l.__data_);
            MEMORY[0x29C270E70](&buf);
            size = HIBYTE(v290.__r_.__value_.__r.__words[2]);
            if ((v290.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              size = v290.__r_.__value_.__l.__size_;
            }

            if (!size)
            {
              std::string::__assign_external(&v290, v32);
            }

            v52 = *MEMORY[0x29EDBEB60];
            v53 = strlen(*MEMORY[0x29EDBEB60]);
            v54 = SHIBYTE(__dst[2]);
            if ((SHIBYTE(__dst[2]) & 0x8000000000000000) != 0)
            {
              if (v53 == __dst[1])
              {
                if (v53 == -1)
                {
                  std::string::__throw_out_of_range[abi:ne200100]();
                }

                if (!memcmp(__dst[0], v52, v53))
                {
LABEL_171:
                  v81 = *MEMORY[0x29EDBE590];
                  v82 = strlen(*MEMORY[0x29EDBE590]);
                  if (v82 > 0x7FFFFFFFFFFFFFF7)
                  {
                    std::string::__throw_length_error[abi:ne200100]();
                  }

                  v83 = v82;
                  if (v82 >= 0x17)
                  {
                    if ((v82 | 7) == 0x17)
                    {
                      v97 = 25;
                    }

                    else
                    {
                      v97 = (v82 | 7) + 1;
                    }

                    v84 = operator new(v97);
                    __p[2] = (v97 | 0x8000000000000000);
                    __p[0] = v84;
                    __p[1] = v83;
                  }

                  else
                  {
                    HIBYTE(__p[2]) = v82;
                    v84 = __p;
                    if (!v82)
                    {
LABEL_236:
                      *(v83 + v84) = 0;
                      memset(&buf, 0, sizeof(buf));
                      v98 = -1431655766;
                      if (prop::bbtrace::get(__p, &buf))
                      {
                        LODWORD(v283) = -1431655766;
                        if (util::convert<int>(&buf, &v283, 0))
                        {
                          v98 = v283;
                        }

                        else
                        {
                          v98 = -1431655766;
                        }
                      }

                      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(buf.__r_.__value_.__l.__data_);
                      }

                      if (SHIBYTE(__p[2]) < 0)
                      {
                        operator delete(__p[0]);
                      }

                      v99 = *MEMORY[0x29EDBE880];
                      v100 = strlen(*MEMORY[0x29EDBE880]);
                      if (v100 > 0x7FFFFFFFFFFFFFF7)
                      {
                        std::string::__throw_length_error[abi:ne200100]();
                      }

                      v101 = v100;
                      __s = v52;
                      if (v100 >= 0x17)
                      {
                        if ((v100 | 7) == 0x17)
                        {
                          v103 = 25;
                        }

                        else
                        {
                          v103 = (v100 | 7) + 1;
                        }

                        v102 = operator new(v103);
                        __p[2] = (v103 | 0x8000000000000000);
                        __p[0] = v102;
                        __p[1] = v101;
                      }

                      else
                      {
                        HIBYTE(__p[2]) = v100;
                        v102 = __p;
                        if (!v100)
                        {
LABEL_253:
                          *(v101 + v102) = 0;
                          memset(&buf, 0, sizeof(buf));
                          v104 = -1431655766;
                          if (prop::bbtrace::get(__p, &buf))
                          {
                            LODWORD(v283) = -1431655766;
                            if (util::convert<int>(&buf, &v283, 0))
                            {
                              v104 = v283;
                            }

                            else
                            {
                              v104 = -1431655766;
                            }
                          }

                          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
                          {
                            operator delete(buf.__r_.__value_.__l.__data_);
                          }

                          if (SHIBYTE(__p[2]) < 0)
                          {
                            operator delete(__p[0]);
                          }

                          v105 = *MEMORY[0x29EDBFCB8];
                          v106 = strlen(*MEMORY[0x29EDBFCB8]);
                          if (v106 > 0x7FFFFFFFFFFFFFF7)
                          {
                            std::string::__throw_length_error[abi:ne200100]();
                          }

                          v107 = v106;
                          if (v106 >= 0x17)
                          {
                            if ((v106 | 7) == 0x17)
                            {
                              v109 = 25;
                            }

                            else
                            {
                              v109 = (v106 | 7) + 1;
                            }

                            v108 = operator new(v109);
                            __p[2] = (v109 | 0x8000000000000000);
                            __p[0] = v108;
                            __p[1] = v107;
                          }

                          else
                          {
                            HIBYTE(__p[2]) = v106;
                            v108 = __p;
                            if (!v106)
                            {
LABEL_270:
                              *(v107 + v108) = 0;
                              memset(&buf, 0, sizeof(buf));
                              if (prop::bbtrace::get(__p, &buf))
                              {
                                LODWORD(v283) = -1431655766;
                                v110 = util::convert<int>(&buf, &v283, 0);
                                if (v283 == 3)
                                {
                                  v111 = v110;
                                }

                                else
                                {
                                  v111 = 0;
                                }
                              }

                              else
                              {
                                v111 = 0;
                              }

                              if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
                              {
                                operator delete(buf.__r_.__value_.__l.__data_);
                                if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
                                {
LABEL_277:
                                  if (v98 != 4)
                                  {
                                    goto LABEL_412;
                                  }

LABEL_408:
                                  if (v104 == 1)
                                  {
                                    v153 = *(v2 + 104);
                                    if (os_log_type_enabled(v153, OS_LOG_TYPE_DEFAULT))
                                    {
                                      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
                                      _os_log_impl(&dword_297476000, v153, OS_LOG_TYPE_DEFAULT, "#N Hard reset detected while Cellular Logging is running. Cellular Logging will be paused.", &buf, 2u);
                                    }

                                    v154 = xpc_null_create();
                                    v155 = *MEMORY[0x29EDBD470];
                                    v288 = v154;
                                    v287 = 0;
                                    v286[1] = 0;
                                    v286[0] = 0;
                                    TraceManager::runOnHelper_sync(v2, 0xA, v155, 0x1388u, 1, &v288, &v287, v286);
                                    xpc_release(v288);
                                    v288 = 0;
LABEL_416:
                                    memset(&buf, 170, sizeof(buf));
                                    v157 = *MEMORY[0x29EDBEEE0];
                                    memset(__p, 0, sizeof(__p));
                                    ctu::cf::MakeCFString::MakeCFString(&v283, v157);
                                    ctu::cf::map_adapter::getString();
                                    MEMORY[0x29C270E70](&v283);
                                    if (SHIBYTE(__p[2]) < 0)
                                    {
                                      operator delete(__p[0]);
                                    }

                                    memset(__p, 170, sizeof(__p));
                                    v158 = *MEMORY[0x29EDBE7B8];
                                    v159 = strlen(*MEMORY[0x29EDBE7B8]);
                                    if (v159 > 0x7FFFFFFFFFFFFFF7)
                                    {
                                      std::string::__throw_length_error[abi:ne200100]();
                                    }

                                    v160 = v159;
                                    if (v159 >= 0x17)
                                    {
                                      if ((v159 | 7) == 0x17)
                                      {
                                        v162 = 25;
                                      }

                                      else
                                      {
                                        v162 = (v159 | 7) + 1;
                                      }

                                      v161 = operator new(v162);
                                      v285 = v162 | 0x8000000000000000;
                                      v283 = v161;
                                      v284 = v160;
                                    }

                                    else
                                    {
                                      HIBYTE(v285) = v159;
                                      v161 = &v283;
                                      if (!v159)
                                      {
LABEL_427:
                                        v163 = *MEMORY[0x29EDBE930];
                                        *(&v160->isa + v161) = 0;
                                        ctu::cf::MakeCFString::MakeCFString(&v295, v163);
                                        ctu::cf::map_adapter::getString();
                                        MEMORY[0x29C270E70](&v295);
                                        if (SHIBYTE(v285) < 0)
                                        {
                                          operator delete(v283);
                                        }

                                        v164 = xpc_dictionary_create(0, 0, 0);
                                        if (v164 || (v164 = xpc_null_create()) != 0)
                                        {
                                          if (MEMORY[0x29C272BA0](v164) == MEMORY[0x29EDCAA00])
                                          {
                                            xpc_retain(v164);
                                            v165 = v164;
                                          }

                                          else
                                          {
                                            v165 = xpc_null_create();
                                          }
                                        }

                                        else
                                        {
                                          v165 = xpc_null_create();
                                          v164 = 0;
                                        }

                                        xpc_release(v164);
                                        if (SHIBYTE(__dst[2]) >= 0)
                                        {
                                          v179 = __dst;
                                        }

                                        else
                                        {
                                          v179 = __dst[0];
                                        }

                                        v180 = xpc_string_create(v179);
                                        if (!v180)
                                        {
                                          v180 = xpc_null_create();
                                        }

                                        xpc_dictionary_set_value(v165, v31, v180);
                                        v181 = xpc_null_create();
                                        xpc_release(v180);
                                        xpc_release(v181);
                                        if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                                        {
                                          v182 = &buf;
                                        }

                                        else
                                        {
                                          v182 = buf.__r_.__value_.__r.__words[0];
                                        }

                                        v183 = xpc_string_create(v182);
                                        if (!v183)
                                        {
                                          v183 = xpc_null_create();
                                        }

                                        xpc_dictionary_set_value(v165, v157, v183);
                                        v184 = xpc_null_create();
                                        xpc_release(v183);
                                        xpc_release(v184);
                                        if ((v290.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                                        {
                                          v185 = &v290;
                                        }

                                        else
                                        {
                                          v185 = v290.__r_.__value_.__r.__words[0];
                                        }

                                        v186 = xpc_string_create(v185);
                                        if (!v186)
                                        {
                                          v186 = xpc_null_create();
                                        }

                                        xpc_dictionary_set_value(v165, *MEMORY[0x29EDBEF60], v186);
                                        v187 = xpc_null_create();
                                        xpc_release(v186);
                                        xpc_release(v187);
                                        if (SHIBYTE(__p[2]) >= 0)
                                        {
                                          v188 = __p;
                                        }

                                        else
                                        {
                                          v188 = __p[0];
                                        }

                                        v189 = xpc_string_create(v188);
                                        if (!v189)
                                        {
                                          v189 = xpc_null_create();
                                        }

                                        xpc_dictionary_set_value(v165, v163, v189);
                                        v190 = xpc_null_create();
                                        xpc_release(v189);
                                        xpc_release(v190);
                                        v191 = xpc_string_create(*MEMORY[0x29EDBF680]);
                                        if (!v191)
                                        {
                                          v191 = xpc_null_create();
                                        }

                                        xpc_dictionary_set_value(v165, *MEMORY[0x29EDBE670], v191);
                                        v192 = xpc_null_create();
                                        xpc_release(v191);
                                        xpc_release(v192);
                                        v193 = xpc_int64_create(Int);
                                        if (!v193)
                                        {
                                          v193 = xpc_null_create();
                                        }

                                        xpc_dictionary_set_value(v165, v50, v193);
                                        v194 = xpc_null_create();
                                        xpc_release(v193);
                                        xpc_release(v194);
                                        v195 = *MEMORY[0x29EDBED80];
                                        ctu::cf::MakeCFString::MakeCFString(&v283, *MEMORY[0x29EDBED80]);
                                        Bool = ctu::cf::map_adapter::getBool(v293, v283);
                                        MEMORY[0x29C270E70](&v283);
                                        v197 = xpc_BOOL_create(Bool);
                                        if (!v197)
                                        {
                                          v197 = xpc_null_create();
                                        }

                                        xpc_dictionary_set_value(v165, v195, v197);
                                        v198 = xpc_null_create();
                                        xpc_release(v197);
                                        xpc_release(v198);
                                        v199 = *MEMORY[0x29EDBED98];
                                        ctu::cf::MakeCFString::MakeCFString(&v283, *MEMORY[0x29EDBED98]);
                                        v200 = ctu::cf::map_adapter::getBool(v293, v283);
                                        MEMORY[0x29C270E70](&v283);
                                        v201 = xpc_BOOL_create(v200);
                                        if (!v201)
                                        {
                                          v201 = xpc_null_create();
                                        }

                                        xpc_dictionary_set_value(v165, v199, v201);
                                        v202 = xpc_null_create();
                                        xpc_release(v201);
                                        xpc_release(v202);
                                        v203 = *MEMORY[0x29EDBED90];
                                        ctu::cf::MakeCFString::MakeCFString(&v283, *MEMORY[0x29EDBED90]);
                                        v204 = ctu::cf::map_adapter::getBool(v293, v283);
                                        MEMORY[0x29C270E70](&v283);
                                        v205 = xpc_BOOL_create(v204);
                                        if (!v205)
                                        {
                                          v205 = xpc_null_create();
                                        }

                                        xpc_dictionary_set_value(v165, v203, v205);
                                        v206 = xpc_null_create();
                                        xpc_release(v205);
                                        xpc_release(v206);
                                        v207 = *MEMORY[0x29EDBEBE0];
                                        v208 = strlen(*MEMORY[0x29EDBEBE0]);
                                        if (v208 > 0x7FFFFFFFFFFFFFF7)
                                        {
                                          std::string::__throw_length_error[abi:ne200100]();
                                        }

                                        v209 = v208;
                                        if (v208 >= 0x17)
                                        {
                                          if ((v208 | 7) == 0x17)
                                          {
                                            v211 = 25;
                                          }

                                          else
                                          {
                                            v211 = (v208 | 7) + 1;
                                          }

                                          v210 = operator new(v211);
                                          v285 = v211 | 0x8000000000000000;
                                          v283 = v210;
                                          v284 = v209;
                                        }

                                        else
                                        {
                                          HIBYTE(v285) = v208;
                                          v210 = &v283;
                                          if (!v208)
                                          {
LABEL_524:
                                            *(&v209->isa + v210) = 0;
                                            v282 = v165;
                                            if (v165)
                                            {
                                              xpc_retain(v165);
                                            }

                                            else
                                            {
                                              v282 = xpc_null_create();
                                            }

                                            v277[0] = MEMORY[0x29EDCA5F8];
                                            v277[1] = 1174405120;
                                            v277[2] = ___ZZZN12TraceManager26registerEventHandlers_syncEvENK3__0clEN8dispatch13group_sessionEN3xpc4dictEENKUlvE_clEv_block_invoke;
                                            v277[3] = &__block_descriptor_tmp_144;
                                            v212 = a1[3];
                                            v277[4] = v2;
                                            v278 = v212;
                                            if (v212)
                                            {
                                              dispatch_retain(v212);
                                              dispatch_group_enter(v278);
                                            }

                                            v213 = a1[2];
                                            v279 = a1[1];
                                            v280 = v213;
                                            if (v213)
                                            {
                                              atomic_fetch_add_explicit(&v213->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                                            }

                                            v214 = _Block_copy(v277);
                                            v281 = v214;
                                            Service::runCommand(v2, &v283, &v282, &v281);
                                            if (v214)
                                            {
                                              _Block_release(v214);
                                            }

                                            xpc_release(v282);
                                            v282 = 0;
                                            if (SHIBYTE(v285) < 0)
                                            {
                                              operator delete(v283);
                                            }

                                            v215 = strlen(__s);
                                            if (v215 > 0x7FFFFFFFFFFFFFF7)
                                            {
                                              std::string::__throw_length_error[abi:ne200100]();
                                            }

                                            v216 = v215;
                                            if (v215 >= 0x17)
                                            {
                                              if ((v215 | 7) == 0x17)
                                              {
                                                v218 = 25;
                                              }

                                              else
                                              {
                                                v218 = (v215 | 7) + 1;
                                              }

                                              v217 = operator new(v218);
                                              v276 = v218 | 0x8000000000000000;
                                              v275[0] = v217;
                                              v275[1] = v216;
                                            }

                                            else
                                            {
                                              HIBYTE(v276) = v215;
                                              v217 = v275;
                                              if (!v215)
                                              {
LABEL_544:
                                                *(v216 + v217) = 0;
                                                if (SHIBYTE(v290.__r_.__value_.__r.__words[2]) < 0)
                                                {
                                                  std::string::__init_copy_ctor_external(&v274, v290.__r_.__value_.__l.__data_, v290.__r_.__value_.__l.__size_);
                                                }

                                                else
                                                {
                                                  v274 = v290;
                                                }

                                                TraceManager::submitTraceMetric_sync(v2, v275, &v274);
                                                if (SHIBYTE(v274.__r_.__value_.__r.__words[2]) < 0)
                                                {
                                                  operator delete(v274.__r_.__value_.__l.__data_);
                                                  if ((SHIBYTE(v276) & 0x80000000) == 0)
                                                  {
LABEL_549:
                                                    v219 = v280;
                                                    if (!v280)
                                                    {
                                                      goto LABEL_551;
                                                    }

                                                    goto LABEL_550;
                                                  }
                                                }

                                                else if ((SHIBYTE(v276) & 0x80000000) == 0)
                                                {
                                                  goto LABEL_549;
                                                }

                                                operator delete(v275[0]);
                                                v219 = v280;
                                                if (!v280)
                                                {
LABEL_551:
                                                  if (v278)
                                                  {
                                                    dispatch_group_leave(v278);
                                                    if (v278)
                                                    {
                                                      dispatch_release(v278);
                                                    }
                                                  }

                                                  xpc_release(v165);
                                                  if (SHIBYTE(__p[2]) < 0)
                                                  {
                                                    operator delete(__p[0]);
                                                  }

                                                  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
                                                  {
                                                    operator delete(buf.__r_.__value_.__l.__data_);
                                                  }

                                                  goto LABEL_558;
                                                }

LABEL_550:
                                                std::__shared_weak_count::__release_weak(v219);
                                                goto LABEL_551;
                                              }
                                            }

                                            memmove(v217, __s, v216);
                                            goto LABEL_544;
                                          }
                                        }

                                        memmove(v210, v207, v209);
                                        goto LABEL_524;
                                      }
                                    }

                                    memmove(v161, v158, v160);
                                    goto LABEL_427;
                                  }

LABEL_412:
                                  v156 = v111 ^ 1;
                                  if (v104 | v98)
                                  {
                                    v156 = 1;
                                  }

                                  if ((v156 & 1) == 0)
                                  {
                                    notify_post("com.apple.cellularlogging.bbreset");
                                  }

                                  goto LABEL_416;
                                }
                              }

                              else if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
                              {
                                goto LABEL_277;
                              }

                              operator delete(__p[0]);
                              if (v98 != 4)
                              {
                                goto LABEL_412;
                              }

                              goto LABEL_408;
                            }
                          }

                          memmove(v108, v105, v107);
                          goto LABEL_270;
                        }
                      }

                      memmove(v102, v99, v101);
                      goto LABEL_253;
                    }
                  }

                  memmove(v84, v81, v83);
                  goto LABEL_236;
                }
              }
            }

            else if (v53 == SHIBYTE(__dst[2]) && !memcmp(__dst, v52, v53))
            {
              goto LABEL_171;
            }

            v55 = *MEMORY[0x29EDBEB68];
            v56 = strlen(*MEMORY[0x29EDBEB68]);
            if ((v54 & 0x80000000) != 0)
            {
              if (v56 != __dst[1])
              {
                v57 = *(v2 + 104);
                if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
                {
LABEL_176:
                  v80 = __dst[0];
                  goto LABEL_177;
                }

                goto LABEL_558;
              }

              if (v56 == -1)
              {
                std::string::__throw_out_of_range[abi:ne200100]();
              }

              if (memcmp(__dst[0], v55, v56))
              {
                goto LABEL_112;
              }
            }

            else
            {
              if (v56 != v54)
              {
                v57 = *(v2 + 104);
                if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_169;
                }

                goto LABEL_558;
              }

              if (memcmp(__dst, v55, v56))
              {
LABEL_112:
                v57 = *(v2 + 104);
                if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
                {
                  if ((v54 & 0x80000000) != 0)
                  {
                    goto LABEL_176;
                  }

LABEL_169:
                  v80 = __dst;
LABEL_177:
                  LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
                  *(buf.__r_.__value_.__r.__words + 4) = v80;
                  _os_log_impl(&dword_297476000, v57, OS_LOG_TYPE_DEFAULT, "#I Invalid reset type [%s]", &buf, 0xCu);
                }

LABEL_558:
                if (SHIBYTE(v290.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v290.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(__dst[2]) < 0)
                {
                  operator delete(__dst[0]);
                }

                goto LABEL_562;
              }
            }

            v284 = 0xAAAAAAAAAAAAAAAALL;
            v283 = 0xAAAAAAAAAAAAAAAALL;
            v270[0] = MEMORY[0x29EDCA5F8];
            v270[1] = 1174405120;
            v270[2] = ___ZZZN12TraceManager26registerEventHandlers_syncEvENK3__0clEN8dispatch13group_sessionEN3xpc4dictEENKUlvE_clEv_block_invoke_145;
            v270[3] = &__block_descriptor_tmp_148;
            v58 = a1[3];
            v270[4] = v2;
            v271 = v58;
            if (v58)
            {
              dispatch_retain(v58);
              dispatch_group_enter(v271);
            }

            v59 = a1[2];
            v272 = a1[1];
            v273 = v59;
            if (v59)
            {
              atomic_fetch_add_explicit(&v59->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            }

            v60 = _Block_copy(v270);
            v61 = *(v2 + 88);
            if (v61)
            {
              dispatch_retain(*(v2 + 88));
            }

            v283 = v60;
            v284 = v61;
            v62 = *MEMORY[0x29EDBE590];
            v63 = strlen(*MEMORY[0x29EDBE590]);
            if (v63 > 0x7FFFFFFFFFFFFFF7)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            v64 = v63;
            if (v63 >= 0x17)
            {
              if ((v63 | 7) == 0x17)
              {
                v138 = 25;
              }

              else
              {
                v138 = (v63 | 7) + 1;
              }

              v65 = operator new(v138);
              __p[2] = (v138 | 0x8000000000000000);
              __p[0] = v65;
              __p[1] = v64;
            }

            else
            {
              HIBYTE(__p[2]) = v63;
              v65 = __p;
              if (!v63)
              {
LABEL_363:
                *(v64 + v65) = 0;
                memset(&buf, 0, sizeof(buf));
                v139 = -1431655766;
                if (prop::bbtrace::get(__p, &buf))
                {
                  LODWORD(v295) = -1431655766;
                  if (util::convert<int>(&buf, &v295, 0))
                  {
                    v139 = v295;
                  }

                  else
                  {
                    v139 = -1431655766;
                  }
                }

                if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(buf.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(__p[2]) < 0)
                {
                  operator delete(__p[0]);
                }

                v140 = *MEMORY[0x29EDBE880];
                v141 = strlen(*MEMORY[0x29EDBE880]);
                if (v141 > 0x7FFFFFFFFFFFFFF7)
                {
                  std::string::__throw_length_error[abi:ne200100]();
                }

                v142 = v141;
                if (v141 >= 0x17)
                {
                  if ((v141 | 7) == 0x17)
                  {
                    v144 = 25;
                  }

                  else
                  {
                    v144 = (v141 | 7) + 1;
                  }

                  v143 = operator new(v144);
                  __p[2] = (v144 | 0x8000000000000000);
                  __p[0] = v143;
                  __p[1] = v142;
                }

                else
                {
                  HIBYTE(__p[2]) = v141;
                  v143 = __p;
                  if (!v141)
                  {
LABEL_380:
                    *(v142 + v143) = 0;
                    memset(&buf, 0, sizeof(buf));
                    v145 = -1431655766;
                    if (prop::bbtrace::get(__p, &buf))
                    {
                      LODWORD(v295) = -1431655766;
                      if (util::convert<int>(&buf, &v295, 0))
                      {
                        v145 = v295;
                      }

                      else
                      {
                        v145 = -1431655766;
                      }
                    }

                    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(buf.__r_.__value_.__l.__data_);
                    }

                    if (SHIBYTE(__p[2]) < 0)
                    {
                      operator delete(__p[0]);
                    }

                    v146 = *MEMORY[0x29EDBFCB8];
                    v147 = strlen(*MEMORY[0x29EDBFCB8]);
                    if (v147 > 0x7FFFFFFFFFFFFFF7)
                    {
                      std::string::__throw_length_error[abi:ne200100]();
                    }

                    v148 = v147;
                    if (v147 >= 0x17)
                    {
                      if ((v147 | 7) == 0x17)
                      {
                        v150 = 25;
                      }

                      else
                      {
                        v150 = (v147 | 7) + 1;
                      }

                      v149 = operator new(v150);
                      __p[2] = (v150 | 0x8000000000000000);
                      __p[0] = v149;
                      __p[1] = v148;
                    }

                    else
                    {
                      HIBYTE(__p[2]) = v147;
                      v149 = __p;
                      if (!v147)
                      {
LABEL_397:
                        *(v148 + v149) = 0;
                        memset(&buf, 0, sizeof(buf));
                        if (prop::bbtrace::get(__p, &buf))
                        {
                          LODWORD(v295) = -1431655766;
                          v151 = util::convert<int>(&buf, &v295, 0);
                          if (v295 == 3)
                          {
                            v152 = v151;
                          }

                          else
                          {
                            v152 = 0;
                          }
                        }

                        else
                        {
                          v152 = 0;
                        }

                        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(buf.__r_.__value_.__l.__data_);
                          if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
                          {
LABEL_404:
                            if (v139 != 4)
                            {
                              goto LABEL_453;
                            }

LABEL_436:
                            if (v145 == 1)
                            {
                              v166 = *(v2 + 104);
                              if (os_log_type_enabled(v166, OS_LOG_TYPE_DEFAULT))
                              {
                                LOWORD(buf.__r_.__value_.__l.__data_) = 0;
                                _os_log_impl(&dword_297476000, v166, OS_LOG_TYPE_DEFAULT, "#N Soft reset detected while Cellular Logging is running. Cellular Logging will be paused.", &buf, 2u);
                              }

                              v269 = xpc_null_create();
                              v268 = 0;
                              v264[0] = MEMORY[0x29EDCA5F8];
                              v264[1] = 1174405120;
                              v264[2] = ___ZZZN12TraceManager26registerEventHandlers_syncEvENK3__0clEN8dispatch13group_sessionEN3xpc4dictEENKUlvE_clEv_block_invoke_149;
                              v264[3] = &__block_descriptor_tmp_150;
                              v264[4] = v2;
                              v167 = v283;
                              if (v283)
                              {
                                v167 = _Block_copy(v283);
                              }

                              v265 = v167;
                              v266 = v284;
                              if (v284)
                              {
                                dispatch_retain(v284);
                              }

                              v168 = _Block_copy(v264);
                              v169 = *MEMORY[0x29EDBD470];
                              v170 = *(v2 + 88);
                              if (v170)
                              {
                                dispatch_retain(*(v2 + 88));
                              }

                              v267[0] = v168;
                              v267[1] = v170;
                              TraceManager::runOnHelper_sync(v2, 0xA, v169, 0x1388u, 1, &v269, &v268, v267);
                              if (v170)
                              {
                                dispatch_release(v170);
                              }

                              if (v168)
                              {
                                _Block_release(v168);
                              }

                              xpc_release(v269);
                              v269 = 0;
                              if (v266)
                              {
                                dispatch_release(v266);
                              }

                              if (v265)
                              {
                                _Block_release(v265);
                              }

LABEL_458:
                              v174 = strlen(v55);
                              if (v174 > 0x7FFFFFFFFFFFFFF7)
                              {
                                std::string::__throw_length_error[abi:ne200100]();
                              }

                              v175 = v174;
                              if (v174 >= 0x17)
                              {
                                if ((v174 | 7) == 0x17)
                                {
                                  v177 = 25;
                                }

                                else
                                {
                                  v177 = (v174 | 7) + 1;
                                }

                                v176 = operator new(v177);
                                v260 = v177 | 0x8000000000000000;
                                v259[0] = v176;
                                v259[1] = v175;
                              }

                              else
                              {
                                HIBYTE(v260) = v174;
                                v176 = v259;
                                if (!v174)
                                {
LABEL_467:
                                  *(v175 + v176) = 0;
                                  if (SHIBYTE(v290.__r_.__value_.__r.__words[2]) < 0)
                                  {
                                    std::string::__init_copy_ctor_external(&v258, v290.__r_.__value_.__l.__data_, v290.__r_.__value_.__l.__size_);
                                  }

                                  else
                                  {
                                    v258 = v290;
                                  }

                                  TraceManager::submitTraceMetric_sync(v2, v259, &v258);
                                  if (SHIBYTE(v258.__r_.__value_.__r.__words[2]) < 0)
                                  {
                                    operator delete(v258.__r_.__value_.__l.__data_);
                                    if ((SHIBYTE(v260) & 0x80000000) == 0)
                                    {
LABEL_472:
                                      v178 = v284;
                                      if (!v284)
                                      {
LABEL_474:
                                        if (v283)
                                        {
                                          _Block_release(v283);
                                        }

                                        if (v273)
                                        {
                                          std::__shared_weak_count::__release_weak(v273);
                                        }

                                        if (v271)
                                        {
                                          dispatch_group_leave(v271);
                                          if (v271)
                                          {
                                            dispatch_release(v271);
                                          }
                                        }

                                        goto LABEL_558;
                                      }

LABEL_473:
                                      dispatch_release(v178);
                                      goto LABEL_474;
                                    }
                                  }

                                  else if ((SHIBYTE(v260) & 0x80000000) == 0)
                                  {
                                    goto LABEL_472;
                                  }

                                  operator delete(v259[0]);
                                  v178 = v284;
                                  if (!v284)
                                  {
                                    goto LABEL_474;
                                  }

                                  goto LABEL_473;
                                }
                              }

                              memmove(v176, v55, v175);
                              goto LABEL_467;
                            }

LABEL_453:
                            v171 = v152 ^ 1;
                            if (v145 | v139)
                            {
                              v171 = 1;
                            }

                            if (v171)
                            {
                              v172 = xpc_null_create();
                              v173 = *MEMORY[0x29EDBD360];
                              v263 = v172;
                              v262 = 0;
                              dispatch::callback<void({block_pointer})(TelephonyXPC::Result,xpc::dict)>::callback(v261, &v283);
                              TraceManager::runOnHelper_sync(v2, 9, v173, 0x1388u, 0, &v263, &v262, v261);
                              dispatch::callback<void({block_pointer})(TelephonyXPC::Result,xpc::dict)>::~callback(v261);
                              xpc_release(v263);
                              v263 = 0;
                            }

                            else
                            {
                              notify_post("com.apple.cellularlogging.bbreset");
                            }

                            goto LABEL_458;
                          }
                        }

                        else if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
                        {
                          goto LABEL_404;
                        }

                        operator delete(__p[0]);
                        if (v139 != 4)
                        {
                          goto LABEL_453;
                        }

                        goto LABEL_436;
                      }
                    }

                    memmove(v149, v146, v148);
                    goto LABEL_397;
                  }
                }

                memmove(v143, v140, v142);
                goto LABEL_380;
              }
            }

            memmove(v65, v62, v64);
            goto LABEL_363;
          }
        }

        memmove(p_buf, v32, v34);
        goto LABEL_96;
      }
    }
  }

  else if (v15 == __s1[23] && !memcmp(__s1, v14, v15))
  {
    goto LABEL_65;
  }

  v17 = *MEMORY[0x29EDBEDF0];
  v18 = strlen(*MEMORY[0x29EDBEDF0]);
  if ((v16 & 0x80000000) != 0)
  {
    if (v18 == *&__s1[8])
    {
      if (v18 == -1)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      if (!memcmp(*__s1, v17, v18))
      {
LABEL_71:
        memset(&buf, 170, 16);
        v254[0] = MEMORY[0x29EDCA5F8];
        v254[1] = 1174405120;
        v254[2] = ___ZZZN12TraceManager26registerEventHandlers_syncEvENK3__0clEN8dispatch13group_sessionEN3xpc4dictEENKUlvE_clEv_block_invoke_151;
        v254[3] = &__block_descriptor_tmp_154;
        v36 = a1[3];
        v254[4] = v2;
        v255 = v36;
        if (v36)
        {
          dispatch_retain(v36);
          dispatch_group_enter(v255);
        }

        v37 = a1[2];
        v256 = a1[1];
        v257 = v37;
        if (v37)
        {
          atomic_fetch_add_explicit(&v37->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        v38 = _Block_copy(v254);
        v39 = *(v2 + 88);
        if (v39)
        {
          dispatch_retain(*(v2 + 88));
        }

        buf.__r_.__value_.__r.__words[0] = v38;
        buf.__r_.__value_.__l.__size_ = v39;
        v40 = xpc_dictionary_create(0, 0, 0);
        if (v40 || (v40 = xpc_null_create()) != 0)
        {
          if (MEMORY[0x29C272BA0](v40) == MEMORY[0x29EDCAA00])
          {
            xpc_retain(v40);
            v41 = v40;
          }

          else
          {
            v41 = xpc_null_create();
          }
        }

        else
        {
          v41 = xpc_null_create();
          v40 = 0;
        }

        xpc_release(v40);
        v85 = xpc_string_create(v17);
        if (!v85)
        {
          v85 = xpc_null_create();
        }

        xpc_dictionary_set_value(v41, v8, v85);
        v86 = xpc_null_create();
        xpc_release(v85);
        xpc_release(v86);
        object = v41;
        if (v41)
        {
          xpc_retain(v41);
          v252 = 0;
          v87 = buf.__r_.__value_.__r.__words[0];
          if (buf.__r_.__value_.__r.__words[0])
          {
            goto LABEL_183;
          }
        }

        else
        {
          v252 = 0;
          object = xpc_null_create();
          v87 = buf.__r_.__value_.__r.__words[0];
          if (buf.__r_.__value_.__r.__words[0])
          {
LABEL_183:
            v88 = _Block_copy(v87);
            v89 = *MEMORY[0x29EDBD3C0];
            v90 = buf.__r_.__value_.__l.__size_;
            v250 = v88;
            v251 = buf.__r_.__value_.__l.__size_;
            if (!buf.__r_.__value_.__l.__size_)
            {
              goto LABEL_185;
            }

            goto LABEL_184;
          }
        }

        v88 = 0;
        v89 = *MEMORY[0x29EDBD3C0];
        v90 = buf.__r_.__value_.__l.__size_;
        v250 = 0;
        v251 = buf.__r_.__value_.__l.__size_;
        if (!buf.__r_.__value_.__l.__size_)
        {
LABEL_185:
          TraceManager::runOnHelper_sync(v2, 9, v89, 0x1388u, 0, &object, &v252, &v250);
          if (v90)
          {
            dispatch_release(v90);
          }

          if (v88)
          {
            _Block_release(v88);
          }

          xpc_release(object);
          object = 0;
          xpc_release(v41);
          if (buf.__r_.__value_.__l.__size_)
          {
            dispatch_release(buf.__r_.__value_.__l.__size_);
          }

          if (buf.__r_.__value_.__r.__words[0])
          {
            _Block_release(buf.__r_.__value_.__l.__data_);
          }

          if (v257)
          {
            std::__shared_weak_count::__release_weak(v257);
          }

          if (!v255)
          {
            goto LABEL_562;
          }

          dispatch_group_leave(v255);
          v91 = v255;
          if (!v255)
          {
            goto LABEL_562;
          }

          goto LABEL_357;
        }

LABEL_184:
        dispatch_retain(v90);
        goto LABEL_185;
      }
    }
  }

  else if (v18 == v16 && !memcmp(__s1, v17, v18))
  {
    goto LABEL_71;
  }

  v19 = *MEMORY[0x29EDBEFB8];
  v20 = strlen(*MEMORY[0x29EDBEFB8]);
  if ((v16 & 0x80000000) != 0)
  {
    if (v20 == *&__s1[8])
    {
      if (v20 == -1)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      if (!memcmp(*__s1, v19, v20))
      {
LABEL_81:
        TraceManager::updateBasebandFWInfo(v2);
        v290.__r_.__value_.__r.__words[0] = 0xAAAAAAAAAAAAAAAALL;
        v290.__r_.__value_.__l.__size_ = 0xAAAAAAAAAAAAAAAALL;
        v246[0] = MEMORY[0x29EDCA5F8];
        v246[1] = 1174405120;
        v246[2] = ___ZZZN12TraceManager26registerEventHandlers_syncEvENK3__0clEN8dispatch13group_sessionEN3xpc4dictEENKUlvE_clEv_block_invoke_155;
        v246[3] = &__block_descriptor_tmp_158;
        v42 = a1[3];
        v246[4] = v2;
        v247 = v42;
        if (v42)
        {
          dispatch_retain(v42);
          dispatch_group_enter(v247);
        }

        v43 = a1[2];
        v248 = a1[1];
        v249 = v43;
        if (v43)
        {
          atomic_fetch_add_explicit(&v43->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        v44 = _Block_copy(v246);
        v45 = *(v2 + 88);
        if (v45)
        {
          dispatch_retain(*(v2 + 88));
        }

        v290.__r_.__value_.__r.__words[0] = v44;
        v290.__r_.__value_.__l.__size_ = v45;
        v46 = xpc_dictionary_create(0, 0, 0);
        if (v46 || (v46 = xpc_null_create()) != 0)
        {
          if (MEMORY[0x29C272BA0](v46) == MEMORY[0x29EDCAA00])
          {
            xpc_retain(v46);
            v47 = v46;
          }

          else
          {
            v47 = xpc_null_create();
          }
        }

        else
        {
          v47 = xpc_null_create();
          v46 = 0;
        }

        xpc_release(v46);
        v112 = xpc_string_create(v19);
        if (!v112)
        {
          v112 = xpc_null_create();
        }

        xpc_dictionary_set_value(v47, v8, v112);
        v113 = xpc_null_create();
        xpc_release(v112);
        xpc_release(v113);
        v114 = *MEMORY[0x29EDBE590];
        v115 = strlen(*MEMORY[0x29EDBE590]);
        if (v115 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v116 = v115;
        if (v115 >= 0x17)
        {
          if ((v115 | 7) == 0x17)
          {
            v118 = 25;
          }

          else
          {
            v118 = (v115 | 7) + 1;
          }

          v117 = operator new(v118);
          __dst[1] = v116;
          __dst[2] = (v118 | 0x8000000000000000);
          __dst[0] = v117;
        }

        else
        {
          HIBYTE(__dst[2]) = v115;
          v117 = __dst;
          if (!v115)
          {
LABEL_291:
            *(v116 + v117) = 0;
            memset(&buf, 0, sizeof(buf));
            if (prop::bbtrace::get(__dst, &buf))
            {
              LODWORD(__p[0]) = -1431655766;
              v119 = util::convert<int>(&buf, __p, 0);
              if (LODWORD(__p[0]) == 4)
              {
                v120 = v119;
              }

              else
              {
                v120 = 0;
              }

              if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
LABEL_299:
                if (SHIBYTE(__dst[2]) < 0)
                {
                  operator delete(__dst[0]);
                }

                v121 = *MEMORY[0x29EDBE880];
                v122 = strlen(*MEMORY[0x29EDBE880]);
                if (v122 > 0x7FFFFFFFFFFFFFF7)
                {
                  std::string::__throw_length_error[abi:ne200100]();
                }

                v123 = v122;
                if (v122 >= 0x17)
                {
                  if ((v122 | 7) == 0x17)
                  {
                    v125 = 25;
                  }

                  else
                  {
                    v125 = (v122 | 7) + 1;
                  }

                  v124 = operator new(v125);
                  __dst[1] = v123;
                  __dst[2] = (v125 | 0x8000000000000000);
                  __dst[0] = v124;
                }

                else
                {
                  HIBYTE(__dst[2]) = v122;
                  v124 = __dst;
                  if (!v122)
                  {
LABEL_310:
                    *(v123 + v124) = 0;
                    memset(&buf, 0, sizeof(buf));
                    v126 = prop::bbtrace::get(__dst, &buf);
                    if (v126)
                    {
                      LODWORD(__p[0]) = -1431655766;
                      v126 = util::convert<int>(&buf, __p, 0);
                      if (LODWORD(__p[0]) == 1)
                      {
                        v127 = v126;
                      }

                      else
                      {
                        v127 = 0;
                      }

                      if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                      {
LABEL_318:
                        if (SHIBYTE(__dst[2]) < 0)
                        {
                          operator delete(__dst[0]);
                          if ((v120 & v127) == 1)
                          {
                            goto LABEL_320;
                          }
                        }

                        else if ((v120 & v127) == 1)
                        {
LABEL_320:
                          v128 = *(v2 + 104);
                          if (os_log_type_enabled(v128, OS_LOG_TYPE_DEFAULT))
                          {
                            LOWORD(buf.__r_.__value_.__l.__data_) = 0;
                            _os_log_impl(&dword_297476000, v128, OS_LOG_TYPE_DEFAULT, "#N Resume notification will be sent to cellular logging after all traces are started.", &buf, 2u);
                          }

                          v244 = 0;
                          v245 = xpc_null_create();
                          v240[0] = MEMORY[0x29EDCA5F8];
                          v240[1] = 1174405120;
                          v240[2] = ___ZZZN12TraceManager26registerEventHandlers_syncEvENK3__0clEN8dispatch13group_sessionEN3xpc4dictEENKUlvE_clEv_block_invoke_159;
                          v240[3] = &__block_descriptor_tmp_162;
                          v240[4] = v2;
                          v129 = v290.__r_.__value_.__r.__words[0];
                          if (v290.__r_.__value_.__r.__words[0])
                          {
                            v129 = _Block_copy(v290.__r_.__value_.__l.__data_);
                          }

                          v241 = v129;
                          v242 = v290.__r_.__value_.__l.__size_;
                          if (v290.__r_.__value_.__l.__size_)
                          {
                            dispatch_retain(v290.__r_.__value_.__l.__size_);
                          }

                          v130 = _Block_copy(v240);
                          v131 = *MEMORY[0x29EDBD370];
                          v132 = *(v2 + 88);
                          if (v132)
                          {
                            dispatch_retain(*(v2 + 88));
                          }

                          v243[0] = v130;
                          v243[1] = v132;
                          TraceManager::runOnHelper_sync(v2, 9, v131, 0x1388u, 0, &v245, &v244, v243);
                          if (v132)
                          {
                            dispatch_release(v132);
                          }

                          if (v130)
                          {
                            _Block_release(v130);
                          }

                          xpc_release(v245);
                          v245 = 0;
                          if (v242)
                          {
                            dispatch_release(v242);
                          }

                          if (v241)
                          {
                            _Block_release(v241);
                          }

                          goto LABEL_349;
                        }

                        v133 = capabilities::radio::initium(v126);
                        v239 = v47;
                        if (v47)
                        {
                          xpc_retain(v47);
                          v238 = 0;
                          v134 = v290.__r_.__value_.__r.__words[0];
                          if (v290.__r_.__value_.__r.__words[0])
                          {
LABEL_339:
                            v135 = _Block_copy(v134);
LABEL_342:
                            v136 = *MEMORY[0x29EDBD370];
                            v137 = v290.__r_.__value_.__l.__size_;
                            v237[0] = v135;
                            v237[1] = v290.__r_.__value_.__l.__size_;
                            if (v290.__r_.__value_.__l.__size_)
                            {
                              dispatch_retain(v290.__r_.__value_.__l.__size_);
                            }

                            TraceManager::runOnHelper_sync(v2, 9, v136, 0x1388u, v133, &v239, &v238, v237);
                            if (v137)
                            {
                              dispatch_release(v137);
                            }

                            if (v135)
                            {
                              _Block_release(v135);
                            }

                            xpc_release(v239);
                            v239 = 0;
LABEL_349:
                            TraceManager::setupDumpLogsIndication_sync(v2);
                            xpc_release(v47);
                            if (v290.__r_.__value_.__l.__size_)
                            {
                              dispatch_release(v290.__r_.__value_.__l.__size_);
                            }

                            if (v290.__r_.__value_.__r.__words[0])
                            {
                              _Block_release(v290.__r_.__value_.__l.__data_);
                            }

                            if (v249)
                            {
                              std::__shared_weak_count::__release_weak(v249);
                            }

                            if (!v247)
                            {
                              goto LABEL_562;
                            }

                            dispatch_group_leave(v247);
                            v91 = v247;
                            if (!v247)
                            {
                              goto LABEL_562;
                            }

                            goto LABEL_357;
                          }
                        }

                        else
                        {
                          v238 = 0;
                          v239 = xpc_null_create();
                          v134 = v290.__r_.__value_.__r.__words[0];
                          if (v290.__r_.__value_.__r.__words[0])
                          {
                            goto LABEL_339;
                          }
                        }

                        v135 = 0;
                        goto LABEL_342;
                      }
                    }

                    else
                    {
                      v127 = 0;
                      if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                      {
                        goto LABEL_318;
                      }
                    }

                    operator delete(buf.__r_.__value_.__l.__data_);
                    goto LABEL_318;
                  }
                }

                memmove(v124, v121, v123);
                goto LABEL_310;
              }
            }

            else
            {
              v120 = 0;
              if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_299;
              }
            }

            operator delete(buf.__r_.__value_.__l.__data_);
            goto LABEL_299;
          }
        }

        memmove(v117, v114, v116);
        goto LABEL_291;
      }
    }
  }

  else if (v20 == v16 && !memcmp(__s1, v19, v20))
  {
    goto LABEL_81;
  }

  v21 = *MEMORY[0x29EDBEB58];
  v22 = strlen(*MEMORY[0x29EDBEB58]);
  if ((v16 & 0x80000000) != 0)
  {
    if (v22 != *&__s1[8])
    {
      goto LABEL_562;
    }

    if (v22 == -1)
    {
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    if (memcmp(*__s1, v21, v22))
    {
      goto LABEL_562;
    }
  }

  else if (v22 != v16 || memcmp(__s1, v21, v22))
  {
    goto LABEL_562;
  }

  v290.__r_.__value_.__r.__words[0] = 0xAAAAAAAAAAAAAAAALL;
  v290.__r_.__value_.__l.__size_ = 0xAAAAAAAAAAAAAAAALL;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZZZN12TraceManager26registerEventHandlers_syncEvENK3__0clEN8dispatch13group_sessionEN3xpc4dictEENKUlvE_clEv_block_invoke_163;
  aBlock[3] = &__block_descriptor_tmp_166;
  v23 = a1[3];
  aBlock[4] = v2;
  group = v23;
  if (v23)
  {
    dispatch_retain(v23);
    dispatch_group_enter(group);
  }

  v24 = a1[2];
  v235 = a1[1];
  v236 = v24;
  if (v24)
  {
    atomic_fetch_add_explicit(&v24->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v25 = _Block_copy(aBlock);
  v26 = *(v2 + 88);
  if (v26)
  {
    dispatch_retain(*(v2 + 88));
  }

  v290.__r_.__value_.__r.__words[0] = v25;
  v290.__r_.__value_.__l.__size_ = v26;
  v27 = *MEMORY[0x29EDBE590];
  v28 = strlen(*MEMORY[0x29EDBE590]);
  if (v28 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v29 = v28;
  if (v28 >= 0x17)
  {
    if ((v28 | 7) == 0x17)
    {
      v66 = 25;
    }

    else
    {
      v66 = (v28 | 7) + 1;
    }

    v30 = operator new(v66);
    __dst[1] = v29;
    __dst[2] = (v66 | 0x8000000000000000);
    __dst[0] = v30;
    goto LABEL_132;
  }

  HIBYTE(__dst[2]) = v28;
  v30 = __dst;
  if (v28)
  {
LABEL_132:
    memmove(v30, v27, v29);
  }

  *(v29 + v30) = 0;
  memset(&buf, 0, sizeof(buf));
  if (prop::bbtrace::get(__dst, &buf))
  {
    LODWORD(__p[0]) = -1431655766;
    v67 = util::convert<int>(&buf, __p, 0);
    if (LODWORD(__p[0]) == 4)
    {
      v68 = v67;
    }

    else
    {
      v68 = 0;
    }
  }

  else
  {
    v68 = 0;
  }

  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__dst[2]) < 0)
  {
    operator delete(__dst[0]);
  }

  v69 = *MEMORY[0x29EDBE880];
  v70 = strlen(*MEMORY[0x29EDBE880]);
  if (v70 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v71 = v70;
  if (v70 >= 0x17)
  {
    if ((v70 | 7) == 0x17)
    {
      v73 = 25;
    }

    else
    {
      v73 = (v70 | 7) + 1;
    }

    v72 = operator new(v73);
    __dst[1] = v71;
    __dst[2] = (v73 | 0x8000000000000000);
    __dst[0] = v72;
    goto LABEL_150;
  }

  HIBYTE(__dst[2]) = v70;
  v72 = __dst;
  if (v70)
  {
LABEL_150:
    memmove(v72, v69, v71);
  }

  *(v71 + v72) = 0;
  memset(&buf, 0, sizeof(buf));
  if (prop::bbtrace::get(__dst, &buf))
  {
    LODWORD(__p[0]) = -1431655766;
    v74 = util::convert<int>(&buf, __p, 0);
    if (LODWORD(__p[0]) == 1)
    {
      v75 = v74;
    }

    else
    {
      v75 = 0;
    }

    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_156:
      operator delete(buf.__r_.__value_.__l.__data_);
      if (SHIBYTE(__dst[2]) < 0)
      {
        goto LABEL_157;
      }

LABEL_162:
      if ((v68 & v75) != 1)
      {
        goto LABEL_158;
      }

      goto LABEL_163;
    }
  }

  else
  {
    v75 = 0;
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_156;
    }
  }

  if ((SHIBYTE(__dst[2]) & 0x80000000) == 0)
  {
    goto LABEL_162;
  }

LABEL_157:
  operator delete(__dst[0]);
  if ((v68 & v75) != 1)
  {
LABEL_158:
    v225 = 0;
    v226 = xpc_null_create();
    v76 = v290.__r_.__value_.__r.__words[0];
    if (v290.__r_.__value_.__r.__words[0])
    {
      v77 = _Block_copy(v290.__r_.__value_.__l.__data_);
    }

    else
    {
      v77 = 0;
    }

    v92 = *MEMORY[0x29EDBD360];
    v93 = v290.__r_.__value_.__l.__size_;
    v224[0] = v77;
    v224[1] = v290.__r_.__value_.__l.__size_;
    if (v290.__r_.__value_.__l.__size_)
    {
      dispatch_retain(v290.__r_.__value_.__l.__size_);
    }

    TraceManager::runOnHelper_sync(v2, 9, v92, 0x7D0u, 0, &v226, &v225, v224);
    if (v93)
    {
      dispatch_release(v93);
    }

    if (v77)
    {
      _Block_release(v77);
    }

    xpc_release(v226);
    v226 = 0;
    goto LABEL_222;
  }

LABEL_163:
  v78 = *(v2 + 104);
  if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&dword_297476000, v78, OS_LOG_TYPE_DEFAULT, "#N Baseband is dead while Cellular Logging is running. Cellular Logging will be stopped.", &buf, 2u);
  }

  v231 = 0;
  v232 = xpc_null_create();
  v227[0] = MEMORY[0x29EDCA5F8];
  v227[1] = 1174405120;
  v227[2] = ___ZZZN12TraceManager26registerEventHandlers_syncEvENK3__0clEN8dispatch13group_sessionEN3xpc4dictEENKUlvE_clEv_block_invoke_167;
  v227[3] = &__block_descriptor_tmp_170_0;
  v227[4] = v2;
  v76 = v290.__r_.__value_.__r.__words[0];
  if (v290.__r_.__value_.__r.__words[0])
  {
    v79 = _Block_copy(v290.__r_.__value_.__l.__data_);
  }

  else
  {
    v79 = 0;
  }

  v93 = v290.__r_.__value_.__l.__size_;
  v228 = v79;
  v229 = v290.__r_.__value_.__l.__size_;
  if (v290.__r_.__value_.__l.__size_)
  {
    dispatch_retain(v290.__r_.__value_.__l.__size_);
  }

  v94 = _Block_copy(v227);
  v95 = *MEMORY[0x29EDBD450];
  v96 = *(v2 + 88);
  if (v96)
  {
    dispatch_retain(*(v2 + 88));
  }

  v230[0] = v94;
  v230[1] = v96;
  TraceManager::runOnHelper_sync(v2, 0xA, v95, 0x1388u, 1, &v232, &v231, v230);
  if (v96)
  {
    dispatch_release(v96);
  }

  if (v94)
  {
    _Block_release(v94);
  }

  xpc_release(v232);
  v232 = 0;
  if (v229)
  {
    dispatch_release(v229);
  }

  if (v228)
  {
    _Block_release(v228);
  }

LABEL_222:
  if (v93)
  {
    dispatch_release(v93);
  }

  if (v76)
  {
    _Block_release(v76);
  }

  if (v236)
  {
    std::__shared_weak_count::__release_weak(v236);
  }

  if (!group)
  {
    goto LABEL_562;
  }

  dispatch_group_leave(group);
  v91 = group;
  if (!group)
  {
    goto LABEL_562;
  }

LABEL_357:
  dispatch_release(v91);
LABEL_562:
  if ((__s1[23] & 0x80000000) == 0)
  {
    MEMORY[0x29C270ED0](v293);
    v220 = v294;
    if (!v294)
    {
      goto LABEL_567;
    }

    goto LABEL_566;
  }

  operator delete(*__s1);
  MEMORY[0x29C270ED0](v293);
  v220 = v294;
  if (v294)
  {
LABEL_566:
    CFRelease(v220);
  }

LABEL_567:
  v221 = *MEMORY[0x29EDCA608];
}

void sub_2974EDDD0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void *std::unique_ptr<TraceManager::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},std::default_delete<TraceManager::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](void *result)
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

void ___ZZZN12TraceManager26registerEventHandlers_syncEvENK3__0clEN8dispatch13group_sessionEN3xpc4dictEENKUlvE_clEv_block_invoke(void *a1, int a2, xpc_object_t *a3)
{
  v4 = a1[7];
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

  v9 = v8;
  v10 = a1[6];
  if (v10)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    v11 = *a3;
    if (*a3)
    {
      xpc_retain(*a3);
      v12 = a1[5];
      if (!v12)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v11 = xpc_null_create();
      v12 = a1[5];
      if (!v12)
      {
LABEL_7:
        v13 = v7[10];
        if (!v13 || (v14 = v7[9], (v15 = std::__shared_weak_count::lock(v13)) == 0))
        {
          std::__throw_bad_weak_ptr[abi:ne200100]();
        }

        v16 = v15;
        v17 = operator new(0x30uLL);
        *v17 = v7;
        v17[1] = v10;
        v17[2] = v9;
        *(v17 + 6) = a2;
        v17[4] = v11;
        v18 = xpc_null_create();
        v17[5] = v12;
        if (v12)
        {
          dispatch_retain(v12);
          dispatch_group_enter(v12);
        }

        v19 = v7[11];
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        v20 = operator new(0x18uLL);
        *v20 = v17;
        v20[1] = v14;
        v20[2] = v16;
        dispatch_async_f(v19, v20, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI12TraceManagerE15execute_wrappedIZZZZNS3_26registerEventHandlers_syncEvENK3__0clENS_13group_sessionEN3xpc4dictEENKUlvE_clEvEUb_EUlvE_EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrISC_NSH_14default_deleteISC_EEEEENUlPvE_8__invokeESM_);
        if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v16->__on_zero_shared)(v16);
          std::__shared_weak_count::__release_weak(v16);
        }

        if (v12)
        {
          dispatch_group_leave(v12);
          dispatch_release(v12);
        }

        xpc_release(v18);
        goto LABEL_16;
      }
    }

    dispatch_retain(v12);
    dispatch_group_enter(v12);
    goto LABEL_7;
  }

LABEL_16:
  if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);

    std::__shared_weak_count::__release_weak(v9);
  }
}

void __copy_helper_block_e8_40c30_ZTSN8dispatch13group_sessionE48c37_ZTSNSt3__18weak_ptrI12TraceManagerEE(void *a1, void *a2)
{
  v4 = a2[5];
  a1[5] = v4;
  if (v4)
  {
    dispatch_retain(v4);
    v5 = a1[5];
    if (v5)
    {
      dispatch_group_enter(v5);
    }
  }

  v6 = a2[7];
  a1[6] = a2[6];
  a1[7] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
  }
}

void __destroy_helper_block_e8_40c30_ZTSN8dispatch13group_sessionE48c37_ZTSNSt3__18weak_ptrI12TraceManagerEE(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    dispatch_group_leave(v3);
    v4 = *(a1 + 40);
    if (v4)
    {

      dispatch_release(v4);
    }
  }
}

void ___ZZZN12TraceManager26registerEventHandlers_syncEvENK3__0clEN8dispatch13group_sessionEN3xpc4dictEENKUlvE_clEv_block_invoke_145(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[6])
      {
        v6 = *(v3 + 104);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *v7 = 0;
          _os_log_impl(&dword_297476000, v6, OS_LOG_TYPE_DEFAULT, "#I Abort complete", v7, 2u);
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

void ___ZZZN12TraceManager26registerEventHandlers_syncEvENK3__0clEN8dispatch13group_sessionEN3xpc4dictEENKUlvE_clEv_block_invoke_149(void *a1)
{
  v2 = a1[4];
  v9 = 0;
  object = xpc_null_create();
  v3 = a1[5];
  if (v3)
  {
    v4 = _Block_copy(v3);
    v5 = *MEMORY[0x29EDBD360];
    v6 = a1[6];
    v7 = v4;
    v8 = v6;
    if (!v6)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v4 = 0;
  v5 = *MEMORY[0x29EDBD360];
  v6 = a1[6];
  v7 = 0;
  v8 = v6;
  if (v6)
  {
LABEL_3:
    dispatch_retain(v6);
  }

LABEL_4:
  TraceManager::runOnHelper_sync(v2, 9, v5, 0x1388u, 0, &object, &v9, &v7);
  if (v6)
  {
    dispatch_release(v6);
  }

  if (v4)
  {
    _Block_release(v4);
  }

  xpc_release(object);
}

void sub_2974EEAA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object)
{
  dispatch::callback<void({block_pointer})(TelephonyXPC::Result,xpc::dict)>::~callback(&a9);
  xpc_release(object);
  _Unwind_Resume(a1);
}

void __copy_helper_block_e8_40c79_ZTSN8dispatch8callbackIU13block_pointerFvN12TelephonyXPC6ResultEN3xpc4dictEEEE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  if (v4)
  {
    v4 = _Block_copy(v4);
  }

  v5 = *(a2 + 48);
  *(a1 + 40) = v4;
  *(a1 + 48) = v5;
  if (v5)
  {

    dispatch_retain(v5);
  }
}

void __destroy_helper_block_e8_40c79_ZTSN8dispatch8callbackIU13block_pointerFvN12TelephonyXPC6ResultEN3xpc4dictEEEE(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    _Block_release(v3);
  }
}

void ___ZZZN12TraceManager26registerEventHandlers_syncEvENK3__0clEN8dispatch13group_sessionEN3xpc4dictEENKUlvE_clEv_block_invoke_151(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[6])
      {
        v6 = *(v3 + 104);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *v7 = 0;
          _os_log_impl(&dword_297476000, v6, OS_LOG_TYPE_DEFAULT, "#I Prepare complete", v7, 2u);
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

void ___ZZZN12TraceManager26registerEventHandlers_syncEvENK3__0clEN8dispatch13group_sessionEN3xpc4dictEENKUlvE_clEv_block_invoke_155(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[6])
      {
        v6 = *(v3 + 104);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *v7 = 0;
          _os_log_impl(&dword_297476000, v6, OS_LOG_TYPE_DEFAULT, "#I Start complete", v7, 2u);
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

void ___ZZZN12TraceManager26registerEventHandlers_syncEvENK3__0clEN8dispatch13group_sessionEN3xpc4dictEENKUlvE_clEv_block_invoke_159(void *a1)
{
  v2 = a1[4];
  v9 = 0;
  object = xpc_null_create();
  v3 = a1[5];
  if (v3)
  {
    v4 = _Block_copy(v3);
    v5 = *MEMORY[0x29EDBD480];
    v6 = a1[6];
    v7 = v4;
    v8 = v6;
    if (!v6)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v4 = 0;
  v5 = *MEMORY[0x29EDBD480];
  v6 = a1[6];
  v7 = 0;
  v8 = v6;
  if (v6)
  {
LABEL_3:
    dispatch_retain(v6);
  }

LABEL_4:
  TraceManager::runOnHelper_sync(v2, 0xA, v5, 0x1388u, 1, &object, &v9, &v7);
  if (v6)
  {
    dispatch_release(v6);
  }

  if (v4)
  {
    _Block_release(v4);
  }

  xpc_release(object);
}

void sub_2974EEDFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object)
{
  dispatch::callback<void({block_pointer})(TelephonyXPC::Result,xpc::dict)>::~callback(&a9);
  xpc_release(object);
  _Unwind_Resume(a1);
}

void ___ZZZN12TraceManager26registerEventHandlers_syncEvENK3__0clEN8dispatch13group_sessionEN3xpc4dictEENKUlvE_clEv_block_invoke_163(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[6])
      {
        v6 = *(v3 + 104);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *v7 = 0;
          _os_log_impl(&dword_297476000, v6, OS_LOG_TYPE_DEFAULT, "#I Abort complete", v7, 2u);
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

void ___ZZZN12TraceManager26registerEventHandlers_syncEvENK3__0clEN8dispatch13group_sessionEN3xpc4dictEENKUlvE_clEv_block_invoke_167(void *a1)
{
  v2 = a1[4];
  v9 = 0;
  object = xpc_null_create();
  v3 = a1[5];
  if (v3)
  {
    v4 = _Block_copy(v3);
    v5 = *MEMORY[0x29EDBD360];
    v6 = a1[6];
    v7 = v4;
    v8 = v6;
    if (!v6)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v4 = 0;
  v5 = *MEMORY[0x29EDBD360];
  v6 = a1[6];
  v7 = 0;
  v8 = v6;
  if (v6)
  {
LABEL_3:
    dispatch_retain(v6);
  }

LABEL_4:
  TraceManager::runOnHelper_sync(v2, 9, v5, 0x7D0u, 0, &object, &v9, &v7);
  if (v6)
  {
    dispatch_release(v6);
  }

  if (v4)
  {
    _Block_release(v4);
  }

  xpc_release(object);
}

void sub_2974EEFDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object)
{
  dispatch::callback<void({block_pointer})(TelephonyXPC::Result,xpc::dict)>::~callback(&a9);
  xpc_release(object);
  _Unwind_Resume(a1);
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI12TraceManagerE15execute_wrappedIZZZZNS3_26registerEventHandlers_syncEvENK3__0clENS_13group_sessionEN3xpc4dictEENKUlvE_clEvEUb_EUlvE_EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrISC_NSH_14default_deleteISC_EEEEENUlPvE_8__invokeESM_(void *a1)
{
  v12 = *MEMORY[0x29EDCA608];
  v2 = *a1;
  v7 = v2;
  if (v2[6])
  {
    v3 = *(*v2 + 104);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      xpc::object::to_string(__p, (v2 + 8));
      v6 = v9 >= 0 ? __p : __p[0];
      *buf = 136315138;
      v11 = v6;
      _os_log_error_impl(&dword_297476000, v3, OS_LOG_TYPE_ERROR, "Dump state failed: %s", buf, 0xCu);
      if (v9 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  _ZNSt3__110unique_ptrIZZZZN12TraceManager26registerEventHandlers_syncEvENK3__0clEN8dispatch13group_sessionEN3xpc4dictEENKUlvE_clEvEUb_EUlvE_NS_14default_deleteIS8_EEED1B8ne200100Ev(&v7);
  v4 = a1[2];
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  operator delete(a1);
  v5 = *MEMORY[0x29EDCA608];
}

void sub_2974EF148(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void *);
  _ZNSt3__110unique_ptrIZZZZN12TraceManager26registerEventHandlers_syncEvENK3__0clEN8dispatch13group_sessionEN3xpc4dictEENKUlvE_clEvEUb_EUlvE_NS_14default_deleteIS8_EEED1B8ne200100Ev(va1);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(va);
  _Unwind_Resume(a1);
}

void *_ZNSt3__110unique_ptrIZZZZN12TraceManager26registerEventHandlers_syncEvENK3__0clEN8dispatch13group_sessionEN3xpc4dictEENKUlvE_clEvEUb_EUlvE_NS_14default_deleteIS8_EEED1B8ne200100Ev(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = *(v1 + 40);
    if (v3)
    {
      dispatch_group_leave(v3);
      v4 = *(v1 + 40);
      if (v4)
      {
        dispatch_release(v4);
      }
    }

    xpc_release(*(v1 + 32));
    *(v1 + 32) = 0;
    v5 = *(v1 + 16);
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

uint64_t std::__function::__func<TraceManager::registerEventHandlers_sync(void)::$_1,std::allocator<TraceManager::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::~__func(uint64_t result)
{
  *result = &unk_2A1E45030;
  if (*(result + 24))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 24));
    return v1;
  }

  return result;
}

void std::__function::__func<TraceManager::registerEventHandlers_sync(void)::$_1,std::allocator<TraceManager::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::~__func(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E45030;
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

char *std::__function::__func<TraceManager::registerEventHandlers_sync(void)::$_1,std::allocator<TraceManager::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t a1)
{
  result = operator new(0x20uLL);
  *result = &unk_2A1E45030;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<TraceManager::registerEventHandlers_sync(void)::$_1,std::allocator<TraceManager::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A1E45030;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<TraceManager::registerEventHandlers_sync(void)::$_1,std::allocator<TraceManager::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<TraceManager::registerEventHandlers_sync(void)::$_1,std::allocator<TraceManager::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::destroy_deallocate(std::__shared_weak_count **a1)
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

void std::__function::__func<TraceManager::registerEventHandlers_sync(void)::$_1,std::allocator<TraceManager::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::operator()(void *a1, NSObject **a2, void **a3)
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
    v20 = v8;
    if (v8)
    {
      v9 = v8;
      v10 = a1[2];
      if (!v10 || MEMORY[0x29C272BA0](v5) != MEMORY[0x29EDCAA00])
      {
        goto LABEL_25;
      }

      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      if (v4)
      {
        dispatch_retain(v4);
        dispatch_group_enter(v4);
      }

      if (v5)
      {
        xpc_retain(v5);
        v11 = v5;
        v12 = v7[10];
        if (!v12)
        {
LABEL_22:
          std::__throw_bad_weak_ptr[abi:ne200100]();
        }
      }

      else
      {
        v11 = xpc_null_create();
        v12 = v7[10];
        if (!v12)
        {
          goto LABEL_22;
        }
      }

      v13 = v7[9];
      v14 = std::__shared_weak_count::lock(v12);
      if (!v14)
      {
        goto LABEL_22;
      }

      v15 = v14;
      v16 = operator new(0x28uLL);
      *v16 = v7;
      v16[1] = v10;
      v16[2] = v9;
      v16[3] = v4;
      v16[4] = v11;
      v17 = xpc_null_create();
      v18 = v7[11];
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      v19 = operator new(0x18uLL);
      *v19 = v16;
      v19[1] = v13;
      v19[2] = v15;
      dispatch_async_f(v18, v19, dispatch::async<void ctu::SharedSynchronizable<TraceManager>::execute_wrapped<TraceManager::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(TraceManager::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<TraceManager::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<TraceManager::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
      if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v15->__on_zero_shared)(v15);
        std::__shared_weak_count::__release_weak(v15);
      }

      xpc_release(v17);
      v9 = v20;
      if (v20)
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

void sub_2974EF604(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
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

uint64_t std::__function::__func<TraceManager::registerEventHandlers_sync(void)::$_1,std::allocator<TraceManager::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN12TraceManager26registerEventHandlers_syncEvE3$_1")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN12TraceManager26registerEventHandlers_syncEvE3$_1" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN12TraceManager26registerEventHandlers_syncEvE3$_1"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN12TraceManager26registerEventHandlers_syncEvE3$_1" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void dispatch::async<void ctu::SharedSynchronizable<TraceManager>::execute_wrapped<TraceManager::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(TraceManager::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<TraceManager::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<TraceManager::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(void **a1)
{
  v1 = a1;
  v38 = *MEMORY[0x29EDCA608];
  v2 = *a1;
  v26 = v2;
  v3 = *v2;
  if (!(*(**v2 + 96))(*v2))
  {
    v36 = 0xAAAAAAAAAAAAAAAALL;
    v6 = v2[4];
    object = v6;
    if (v6)
    {
      xpc_retain(v6);
    }

    else
    {
      object = xpc_null_create();
    }

    xpc::bridge(buf, &object, v7);
    v8 = *buf;
    if (*buf && (v9 = CFGetTypeID(*buf), v9 == CFDictionaryGetTypeID()))
    {
      v36 = v8;
      CFRetain(v8);
      v10 = *buf;
      if (!*buf)
      {
LABEL_14:
        xpc_release(object);
        if (!v8)
        {
          goto LABEL_49;
        }

        memset(buf, 170, 16);
        aBlock[0] = MEMORY[0x29EDCA5F8];
        aBlock[1] = 1174405120;
        aBlock[2] = ___ZZZN12TraceManager26registerEventHandlers_syncEvENK3__1clEN8dispatch13group_sessionEN3xpc4dictEENKUlvE_clEv_block_invoke;
        aBlock[3] = &__block_descriptor_tmp_171;
        aBlock[4] = v3;
        v11 = v2[3];
        group = v11;
        if (v11)
        {
          dispatch_retain(v11);
          dispatch_group_enter(group);
        }

        v33 = v2[1];
        v12 = v2[2];
        v34 = v12;
        if (v12)
        {
          atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v14 = _Block_copy(aBlock);
        v15 = *(v3 + 88);
        if (v15)
        {
          dispatch_retain(*(v3 + 88));
        }

        *buf = v14;
        *&buf[8] = v15;
        ctu::cf_to_xpc(&object, v8, v13);
        v16 = object;
        if (object && MEMORY[0x29C272BA0](object) == MEMORY[0x29EDCAA00])
        {
          xpc_retain(v16);
        }

        else
        {
          v16 = xpc_null_create();
        }

        xpc_release(object);
        v17 = (v3 + 112);
        if (*(v3 + 135) < 0)
        {
          v17 = *v17;
        }

        v18 = xpc_string_create(v17);
        if (!v18)
        {
          v18 = xpc_null_create();
        }

        xpc_dictionary_set_value(v16, *MEMORY[0x29EDBE8F0], v18);
        v19 = xpc_null_create();
        xpc_release(v18);
        xpc_release(v19);
        v30 = v16;
        if (v16)
        {
          xpc_retain(v16);
          v29 = 0;
          if (v14)
          {
            goto LABEL_31;
          }
        }

        else
        {
          v29 = 0;
          v30 = xpc_null_create();
          if (v14)
          {
LABEL_31:
            v20 = _Block_copy(v14);
            v21 = *MEMORY[0x29EDBD378];
            v27 = v20;
            v28 = v15;
            if (!v15)
            {
LABEL_33:
              TraceManager::runOnHelper_sync(v3, 9, v21, 0x1388u, 1, &v30, &v29, &v27);
              if (v15)
              {
                dispatch_release(v15);
              }

              if (v20)
              {
                _Block_release(v20);
              }

              xpc_release(v30);
              v30 = 0;
              xpc_release(v16);
              if (v15)
              {
                dispatch_release(v15);
              }

              if (v14)
              {
                _Block_release(v14);
              }

              v22 = v34;
              if (v34 && !atomic_fetch_add(&v34->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v22->__on_zero_shared)(v22);
                std::__shared_weak_count::__release_weak(v22);
              }

              if (group)
              {
                dispatch_group_leave(group);
                if (group)
                {
                  dispatch_release(group);
                }
              }

              if (v36)
              {
                CFRelease(v36);
              }

LABEL_49:
              v1 = a1;
              std::unique_ptr<TraceManager::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},std::default_delete<TraceManager::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&v26);
              if (!a1)
              {
                goto LABEL_54;
              }

              goto LABEL_50;
            }

LABEL_32:
            dispatch_retain(v15);
            goto LABEL_33;
          }
        }

        v20 = 0;
        v21 = *MEMORY[0x29EDBD378];
        v27 = 0;
        v28 = v15;
        if (!v15)
        {
          goto LABEL_33;
        }

        goto LABEL_32;
      }
    }

    else
    {
      v8 = 0;
      v36 = 0;
      v10 = *buf;
      if (!*buf)
      {
        goto LABEL_14;
      }
    }

    CFRelease(v10);
    goto LABEL_14;
  }

  v4 = *(v3 + 104);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *MEMORY[0x29EDBEFF0];
    *buf = 136315138;
    *&buf[4] = v5;
    _os_log_impl(&dword_297476000, v4, OS_LOG_TYPE_DEFAULT, "#I Server going down. Skipping event %s", buf, 0xCu);
  }

  std::unique_ptr<TraceManager::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},std::default_delete<TraceManager::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&v26);
LABEL_50:
  v23 = v1[2];
  if (v23 && !atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v23->__on_zero_shared)(v23);
    std::__shared_weak_count::__release_weak(v23);
  }

  operator delete(v1);
LABEL_54:
  v24 = *MEMORY[0x29EDCA608];
}

void sub_2974EFB34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, xpc_object_t object, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, dispatch_group_t group, uint64_t a24, uint64_t a25, xpc_object_t a26)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *std::unique_ptr<TraceManager::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},std::default_delete<TraceManager::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](void *result)
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

void ___ZZZN12TraceManager26registerEventHandlers_syncEvENK3__1clEN8dispatch13group_sessionEN3xpc4dictEENKUlvE_clEv_block_invoke(uint64_t a1, _DWORD *a2)
{
  v7 = *MEMORY[0x29EDCA608];
  v3 = *(*(a1 + 32) + 104);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *a2 == 0;
    v6[0] = 67109120;
    v6[1] = v4;
    _os_log_impl(&dword_297476000, v3, OS_LOG_TYPE_DEFAULT, "#I Snapshot : Snapshot complete. Success = %d", v6, 8u);
  }

  v5 = *MEMORY[0x29EDCA608];
}

void __copy_helper_block_e8_40c30_ZTSN8dispatch13group_sessionE48c40_ZTSNSt3__110shared_ptrI12TraceManagerEE(void *a1, void *a2)
{
  v4 = a2[5];
  a1[5] = v4;
  if (v4)
  {
    dispatch_retain(v4);
    v5 = a1[5];
    if (v5)
    {
      dispatch_group_enter(v5);
    }
  }

  v6 = a2[7];
  a1[6] = a2[6];
  a1[7] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }
}

void __destroy_helper_block_e8_40c30_ZTSN8dispatch13group_sessionE48c40_ZTSNSt3__110shared_ptrI12TraceManagerEE(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(a1 + 40);
    if (!v3)
    {
      return;
    }
  }

  else
  {
    v3 = *(a1 + 40);
    if (!v3)
    {
      return;
    }
  }

  dispatch_group_leave(v3);
  v4 = *(a1 + 40);
  if (v4)
  {

    dispatch_release(v4);
  }
}

uint64_t std::__function::__func<TraceManager::registerEventHandlers_sync(void)::$_2,std::allocator<TraceManager::registerEventHandlers_sync(void)::$_2>,void ()(dispatch::group_session,xpc::dict)>::~__func(uint64_t result)
{
  *result = &unk_2A1E450E0;
  if (*(result + 24))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 24));
    return v1;
  }

  return result;
}

void std::__function::__func<TraceManager::registerEventHandlers_sync(void)::$_2,std::allocator<TraceManager::registerEventHandlers_sync(void)::$_2>,void ()(dispatch::group_session,xpc::dict)>::~__func(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E450E0;
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

char *std::__function::__func<TraceManager::registerEventHandlers_sync(void)::$_2,std::allocator<TraceManager::registerEventHandlers_sync(void)::$_2>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t a1)
{
  result = operator new(0x20uLL);
  *result = &unk_2A1E450E0;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<TraceManager::registerEventHandlers_sync(void)::$_2,std::allocator<TraceManager::registerEventHandlers_sync(void)::$_2>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A1E450E0;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<TraceManager::registerEventHandlers_sync(void)::$_2,std::allocator<TraceManager::registerEventHandlers_sync(void)::$_2>,void ()(dispatch::group_session,xpc::dict)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<TraceManager::registerEventHandlers_sync(void)::$_2,std::allocator<TraceManager::registerEventHandlers_sync(void)::$_2>,void ()(dispatch::group_session,xpc::dict)>::destroy_deallocate(std::__shared_weak_count **a1)
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

void std::__function::__func<TraceManager::registerEventHandlers_sync(void)::$_2,std::allocator<TraceManager::registerEventHandlers_sync(void)::$_2>,void ()(dispatch::group_session,xpc::dict)>::operator()(void *a1, NSObject **a2, void **a3)
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
        dispatch_async_f(v17, v18, dispatch::async<void ctu::SharedSynchronizable<TraceManager>::execute_wrapped<TraceManager::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(TraceManager::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<TraceManager::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<TraceManager::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
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

uint64_t std::__function::__func<TraceManager::registerEventHandlers_sync(void)::$_2,std::allocator<TraceManager::registerEventHandlers_sync(void)::$_2>,void ()(dispatch::group_session,xpc::dict)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN12TraceManager26registerEventHandlers_syncEvE3$_2")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN12TraceManager26registerEventHandlers_syncEvE3$_2" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN12TraceManager26registerEventHandlers_syncEvE3$_2"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN12TraceManager26registerEventHandlers_syncEvE3$_2" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void dispatch::async<void ctu::SharedSynchronizable<TraceManager>::execute_wrapped<TraceManager::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(TraceManager::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<TraceManager::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<TraceManager::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(std::__shared_weak_count **a1)
{
  v12 = *a1;
  v1 = (*a1)->__vftable;
  v2 = xpc_dictionary_create(0, 0, 0);
  if (v2 || (v2 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C272BA0](v2) == MEMORY[0x29EDCAA00])
    {
      xpc_retain(v2);
      v3 = v2;
    }

    else
    {
      v3 = xpc_null_create();
    }
  }

  else
  {
    v3 = xpc_null_create();
    v2 = 0;
  }

  xpc_release(v2);
  v4 = xpc_string_create("Trace state for sysdiagnose");
  if (!v4)
  {
    v4 = xpc_null_create();
  }

  xpc_dictionary_set_value(v3, *MEMORY[0x29EDBD398], v4);
  v5 = xpc_null_create();
  xpc_release(v4);
  xpc_release(v5);
  object = v3;
  if (v3)
  {
    xpc_retain(v3);
  }

  else
  {
    object = xpc_null_create();
  }

  v6 = *MEMORY[0x29EDBD348];
  v13[1] = 0;
  v14 = 0;
  v13[0] = 0;
  TraceManager::runOnHelper_sync(v1, 9, v6, 0x1388u, 1, &object, &v14, v13);
  xpc_release(object);
  object = 0;
  xpc_release(v3);
  if (v12)
  {
    xpc_release(v12->__shared_weak_owners_);
    v12->__shared_weak_owners_ = 0;
    shared_owners = v12->__shared_owners_;
    if (shared_owners)
    {
      dispatch_group_leave(shared_owners);
      v8 = v12->__shared_owners_;
      if (v8)
      {
        dispatch_release(v8);
      }
    }

    operator delete(v12);
  }

  v9 = a1;
  if (a1)
  {
    v10 = a1[2];
    if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
      v9 = a1;
    }

    operator delete(v9);
  }
}

void sub_2974F04F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, xpc_object_t object)
{
  dispatch::callback<void({block_pointer})(TelephonyXPC::Result,xpc::dict)>::~callback(&a11);
  xpc_release(object);
  object = 0;
  xpc_release(v16);
  std::unique_ptr<TraceManager::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},std::default_delete<TraceManager::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&a10);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a9);
  _Unwind_Resume(a1);
}

void *std::unique_ptr<TraceManager::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},std::default_delete<TraceManager::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](void *result)
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

void dispatch::async<void ctu::SharedSynchronizable<TraceManager>::execute_wrapped<TraceManager::sleep(dispatch::group_session)::$_0>(TraceManager::sleep(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<TraceManager::sleep(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<TraceManager::sleep(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke(std::__shared_weak_count **a1)
{
  v1 = *a1;
  __p = *a1;
  v2 = (*a1)->__vftable;
  get_deleter = v2[2].__get_deleter;
  if (os_log_type_enabled(get_deleter, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&dword_297476000, get_deleter, OS_LOG_TYPE_DEFAULT, "#I Helper sleep requested", &buf, 2u);
  }

  v4 = *MEMORY[0x29EDBE590];
  v5 = strlen(*MEMORY[0x29EDBE590]);
  if (v5 > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_77:
    std::string::__throw_length_error[abi:ne200100]();
  }

  v6 = v5;
  if (v5 >= 0x17)
  {
    if ((v5 | 7) == 0x17)
    {
      v8 = 25;
    }

    else
    {
      v8 = (v5 | 7) + 1;
    }

    p_dst = operator new(v8);
    v41 = v6;
    v42 = v8 | 0x8000000000000000;
    __dst = p_dst;
    goto LABEL_11;
  }

  HIBYTE(v42) = v5;
  p_dst = &__dst;
  if (v5)
  {
LABEL_11:
    memmove(p_dst, v4, v6);
  }

  *(p_dst + v6) = 0;
  memset(&buf, 0, sizeof(buf));
  if (!prop::bbtrace::get(&__dst, &buf))
  {
    v10 = 0;
    if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  LODWORD(object) = -1431655766;
  v9 = util::convert<int>(&buf, &object, 0);
  if (object == 4)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_19:
    operator delete(buf.__r_.__value_.__l.__data_);
  }

LABEL_20:
  if (SHIBYTE(v42) < 0)
  {
    operator delete(__dst);
  }

  v11 = *MEMORY[0x29EDBE880];
  v12 = strlen(*MEMORY[0x29EDBE880]);
  if (v12 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_77;
  }

  v13 = v12;
  if (v12 >= 0x17)
  {
    if ((v12 | 7) == 0x17)
    {
      v15 = 25;
    }

    else
    {
      v15 = (v12 | 7) + 1;
    }

    v14 = operator new(v15);
    v41 = v13;
    v42 = v15 | 0x8000000000000000;
    __dst = v14;
    goto LABEL_30;
  }

  HIBYTE(v42) = v12;
  v14 = &__dst;
  if (v12)
  {
LABEL_30:
    memmove(v14, v11, v13);
  }

  *(v14 + v13) = 0;
  memset(&buf, 0, sizeof(buf));
  if (!prop::bbtrace::get(&__dst, &buf))
  {
    v17 = 0;
    if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

  LODWORD(object) = -1431655766;
  v16 = util::convert<int>(&buf, &object, 0);
  if (object == 1)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_38:
    operator delete(buf.__r_.__value_.__l.__data_);
  }

LABEL_39:
  if (SHIBYTE(v42) < 0)
  {
    operator delete(__dst);
    if ((v10 & v17) == 1)
    {
      goto LABEL_41;
    }
  }

  else if ((v10 & v17) == 1)
  {
LABEL_41:
    v18 = v2[2].__get_deleter;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&dword_297476000, v18, OS_LOG_TYPE_DEFAULT, "#I Cellular Logging should be paused and the other traces will hanlde enter low power.", &buf, 2u);
    }

    v19 = xpc_null_create();
    shared_owners = v1->__shared_owners_;
    v38 = shared_owners;
    object = v19;
    if (shared_owners)
    {
      dispatch_retain(shared_owners);
      dispatch_group_enter(shared_owners);
      v21 = v1->__shared_owners_;
    }

    else
    {
      v21 = 0;
    }

    buf.__r_.__value_.__r.__words[0] = MEMORY[0x29EDCA5F8];
    buf.__r_.__value_.__l.__size_ = 1174405120;
    buf.__r_.__value_.__r.__words[2] = ___ZZN12TraceManager5sleepEN8dispatch13group_sessionEENK3__0clEv_block_invoke;
    v35 = &__block_descriptor_tmp_175;
    v36 = v2;
    group = v21;
    if (v21)
    {
      dispatch_retain(v21);
      if (group)
      {
        dispatch_group_enter(group);
      }
    }

    v25 = _Block_copy(&buf);
    v26 = *MEMORY[0x29EDBD470];
    v27 = v2[2].~__shared_weak_count_0;
    if (v27)
    {
      dispatch_retain(v2[2].~__shared_weak_count_0);
    }

    __dst = v25;
    v41 = v27;
    TraceManager::runOnHelper_sync(v2, 0xA, v26, 0x1388u, 1, &object, &v38, &__dst);
    if (v27)
    {
      dispatch_release(v27);
    }

    if (v25)
    {
      _Block_release(v25);
    }

    if (shared_owners)
    {
      dispatch_group_leave(shared_owners);
      dispatch_release(shared_owners);
    }

    xpc_release(object);
    if (group)
    {
      dispatch_group_leave(group);
      if (group)
      {
        dispatch_release(group);
      }
    }

    goto LABEL_66;
  }

  v22 = xpc_null_create();
  v23 = *MEMORY[0x29EDBD448];
  v24 = v1->__shared_owners_;
  object = v24;
  __dst = v22;
  if (v24)
  {
    dispatch_retain(v24);
    dispatch_group_enter(v24);
  }

  *&buf.__r_.__value_.__l.__data_ = 0uLL;
  TraceManager::runOnHelper_sync(v2, 9, v23, 0x61A8u, 0, &__dst, &object, &buf.__r_.__value_.__l.__data_);
  if (v24)
  {
    dispatch_group_leave(v24);
    dispatch_release(v24);
  }

  xpc_release(__dst);
LABEL_66:
  if (__p)
  {
    v28 = __p->__shared_owners_;
    if (v28)
    {
      dispatch_group_leave(v28);
      v29 = __p->__shared_owners_;
      if (v29)
      {
        dispatch_release(v29);
      }
    }

    operator delete(__p);
  }

  v30 = a1;
  if (a1)
  {
    v31 = a1[2];
    if (v31)
    {
      if (!atomic_fetch_add(&v31->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v31->__on_zero_shared)(v31);
        std::__shared_weak_count::__release_weak(v31);
        v30 = a1;
      }
    }

    operator delete(v30);
  }
}

void sub_2974F0A8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, dispatch_group_t group, uint64_t a20, uint64_t a21, xpc_object_t object, xpc_object_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  dispatch::callback<void({block_pointer})(TelephonyXPC::Result,xpc::dict)>::~callback(&a23);
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  if (v28)
  {
    dispatch_group_leave(v28);
    dispatch_release(v28);
  }

  xpc_release(object);
  std::unique_ptr<TransportModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,std::default_delete<TransportModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a9);
  _Unwind_Resume(a1);
}

void ___ZZN12TraceManager5sleepEN8dispatch13group_sessionEENK3__0clEv_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = xpc_null_create();
  v4 = *MEMORY[0x29EDBD448];
  v5 = *(a1 + 40);
  v7 = v5;
  object = v3;
  if (v5)
  {
    dispatch_retain(v5);
    dispatch_group_enter(v5);
  }

  v6[0] = 0;
  v6[1] = 0;
  TraceManager::runOnHelper_sync(v2, 9, v4, 0x61A8u, 0, &object, &v7, v6);
  if (v5)
  {
    dispatch_group_leave(v5);
    dispatch_release(v5);
  }

  xpc_release(object);
}

void sub_2974F0C18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object)
{
  dispatch::callback<void({block_pointer})(TelephonyXPC::Result,xpc::dict)>::~callback(&a9);
  if (v12)
  {
    dispatch_group_leave(v12);
    dispatch_release(v12);
  }

  xpc_release(object);
  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<TraceManager>::execute_wrapped<TraceManager::wake(dispatch::group_session)::$_0>(TraceManager::wake(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<TraceManager::wake(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<TraceManager::wake(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke(std::__shared_weak_count **a1)
{
  v1 = *a1;
  __p = *a1;
  v2 = (*a1)->__vftable;
  get_deleter = v2[2].__get_deleter;
  if (os_log_type_enabled(get_deleter, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&dword_297476000, get_deleter, OS_LOG_TYPE_DEFAULT, "#I Helper wake requested", &buf, 2u);
  }

  v4 = *MEMORY[0x29EDBE590];
  v5 = strlen(*MEMORY[0x29EDBE590]);
  if (v5 > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_68:
    std::string::__throw_length_error[abi:ne200100]();
  }

  v6 = v5;
  if (v5 >= 0x17)
  {
    if ((v5 | 7) == 0x17)
    {
      v8 = 25;
    }

    else
    {
      v8 = (v5 | 7) + 1;
    }

    p_dst = operator new(v8);
    v39 = v6;
    v40 = v8 | 0x8000000000000000;
    __dst = p_dst;
    goto LABEL_11;
  }

  HIBYTE(v40) = v5;
  p_dst = &__dst;
  if (v5)
  {
LABEL_11:
    memmove(p_dst, v4, v6);
  }

  *(p_dst + v6) = 0;
  memset(&buf, 0, sizeof(buf));
  if (!prop::bbtrace::get(&__dst, &buf))
  {
    v10 = 0;
    if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  LODWORD(object) = -1431655766;
  v9 = util::convert<int>(&buf, &object, 0);
  if (object == 4)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_19:
    operator delete(buf.__r_.__value_.__l.__data_);
  }

LABEL_20:
  if (SHIBYTE(v40) < 0)
  {
    operator delete(__dst);
  }

  v11 = *MEMORY[0x29EDBE880];
  v12 = strlen(*MEMORY[0x29EDBE880]);
  if (v12 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_68;
  }

  v13 = v12;
  if (v12 >= 0x17)
  {
    if ((v12 | 7) == 0x17)
    {
      v15 = 25;
    }

    else
    {
      v15 = (v12 | 7) + 1;
    }

    v14 = operator new(v15);
    v39 = v13;
    v40 = v15 | 0x8000000000000000;
    __dst = v14;
    goto LABEL_30;
  }

  HIBYTE(v40) = v12;
  v14 = &__dst;
  if (v12)
  {
LABEL_30:
    memmove(v14, v11, v13);
  }

  *(v14 + v13) = 0;
  memset(&buf, 0, sizeof(buf));
  if (!prop::bbtrace::get(&__dst, &buf))
  {
    v17 = 0;
    if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

  LODWORD(object) = -1431655766;
  v16 = util::convert<int>(&buf, &object, 0);
  if (object == 1)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_38:
    operator delete(buf.__r_.__value_.__l.__data_);
  }

LABEL_39:
  if (SHIBYTE(v40) < 0)
  {
    operator delete(__dst);
    if ((v10 & v17) == 1)
    {
      goto LABEL_41;
    }

LABEL_56:
    v24 = xpc_null_create();
    v25 = *MEMORY[0x29EDBD428];
    object = 0;
    __dst = v24;
    *&buf.__r_.__value_.__l.__data_ = 0uLL;
    TraceManager::runOnHelper_sync(v2, 9, v25, 0x1388u, 0, &__dst, &object, &buf.__r_.__value_.__l.__data_);
    xpc_release(__dst);
    goto LABEL_57;
  }

  if ((v10 & v17) != 1)
  {
    goto LABEL_56;
  }

LABEL_41:
  v18 = v2[2].__get_deleter;
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&dword_297476000, v18, OS_LOG_TYPE_DEFAULT, "#I The other traces will handle exit low power first, then the Cellular Logging should be resumed.", &buf, 2u);
  }

  v19 = xpc_null_create();
  v36 = 0;
  object = v19;
  buf.__r_.__value_.__r.__words[0] = MEMORY[0x29EDCA5F8];
  buf.__r_.__value_.__l.__size_ = 1174405120;
  buf.__r_.__value_.__r.__words[2] = ___ZZN12TraceManager4wakeEN8dispatch13group_sessionEENK3__0clEv_block_invoke;
  v33 = &__block_descriptor_tmp_178;
  v34 = v2;
  shared_owners = v1->__shared_owners_;
  group = shared_owners;
  if (shared_owners)
  {
    dispatch_retain(shared_owners);
    if (group)
    {
      dispatch_group_enter(group);
    }
  }

  v21 = _Block_copy(&buf);
  v22 = *MEMORY[0x29EDBD428];
  v23 = v2[2].~__shared_weak_count_0;
  if (v23)
  {
    dispatch_retain(v2[2].~__shared_weak_count_0);
  }

  __dst = v21;
  v39 = v23;
  TraceManager::runOnHelper_sync(v2, 9, v22, 0x1388u, 0, &object, &v36, &__dst);
  if (v23)
  {
    dispatch_release(v23);
  }

  if (v21)
  {
    _Block_release(v21);
  }

  xpc_release(object);
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

LABEL_57:
  if (__p)
  {
    v26 = __p->__shared_owners_;
    if (v26)
    {
      dispatch_group_leave(v26);
      v27 = __p->__shared_owners_;
      if (v27)
      {
        dispatch_release(v27);
      }
    }

    operator delete(__p);
  }

  v28 = a1;
  if (a1)
  {
    v29 = a1[2];
    if (v29)
    {
      if (!atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v29->__on_zero_shared)(v29);
        std::__shared_weak_count::__release_weak(v29);
        v28 = a1;
      }
    }

    operator delete(v28);
  }
}

void sub_2974F10C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, dispatch_group_t group, uint64_t a20, uint64_t a21, xpc_object_t object, xpc_object_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  dispatch::callback<void({block_pointer})(TelephonyXPC::Result,xpc::dict)>::~callback(&a23);
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  xpc_release(object);
  std::unique_ptr<TransportModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,std::default_delete<TransportModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a9);
  _Unwind_Resume(a1);
}

void ___ZZN12TraceManager4wakeEN8dispatch13group_sessionEENK3__0clEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = xpc_null_create();
  v3 = *MEMORY[0x29EDBD480];
  v5 = 0;
  object = v2;
  v4[0] = 0;
  v4[1] = 0;
  TraceManager::runOnHelper_sync(v1, 0xA, v3, 0x1388u, 1, &object, &v5, v4);
  xpc_release(object);
}

void sub_2974F11E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object)
{
  dispatch::callback<void({block_pointer})(TelephonyXPC::Result,xpc::dict)>::~callback(&a9);
  xpc_release(object);
  _Unwind_Resume(a1);
}

uint64_t __cxx_global_var_init_67()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<CommandDriverFactory>::~PthreadMutexGuardPolicy, &ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance, &dword_297476000);
  }

  return result;
}

void LogDumpDB::LogDumpDB(LogDumpDB *this)
{
  ctu::OsLogLogger::OsLogLogger((this + 8), "com.apple.telephony.abm", *MEMORY[0x29EDBE868]);
  *this = &unk_2A1E451C0;
  *(this + 4) = 20;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  LogDumpDB::init(this);
}

{
  ctu::OsLogLogger::OsLogLogger((this + 8), "com.apple.telephony.abm", *MEMORY[0x29EDBE868]);
  *this = &unk_2A1E451C0;
  *(this + 4) = 20;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  LogDumpDB::init(this);
}

void sub_2974F12CC(_Unwind_Exception *a1)
{
  std::vector<ResetInfo>::~vector[abi:ne200100](v2);
  MEMORY[0x29C270D60](v1 + 8);
  _Unwind_Resume(a1);
}

void LogDumpDB::init(LogDumpDB *this)
{
  v43 = 0;
  pthread_mutex_lock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  v2 = off_2A18CAFB8;
  if (!off_2A18CAFB8)
  {
    SharedData::create_default_global(&__dst);
    v3 = __dst;
    __dst = 0uLL;
    v4 = *(&off_2A18CAFB8 + 1);
    off_2A18CAFB8 = v3;
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

    v2 = off_2A18CAFB8;
  }

  *(&v39[1] + 1) = v2;
  *&v39[2] = *(&off_2A18CAFB8 + 1);
  if (*(&off_2A18CAFB8 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18CAFB8 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  v6 = *MEMORY[0x29EDBE868];
  v7 = strlen(*MEMORY[0x29EDBE868]);
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
    *&v30 = v10 | 0x8000000000000000;
    *&__dst = p_dst;
    goto LABEL_19;
  }

  BYTE7(v30) = v7;
  p_dst = &__dst;
  if (v7)
  {
LABEL_19:
    memmove(p_dst, v6, v8);
  }

  *(p_dst + v8) = 0;
  os_unfair_lock_lock((v2 + 40));
  Preferences::getPreference<__CFArray const*>(v2, &__dst, &v43);
  os_unfair_lock_unlock((v2 + 40));
  if (SBYTE7(v30) < 0)
  {
    operator delete(__dst);
  }

  v11 = *&v39[2];
  if (*&v39[2] && !atomic_fetch_add((*&v39[2] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
    v12 = v43;
    v42 = v43;
    if (!v43)
    {
      return;
    }
  }

  else
  {
    v12 = v43;
    v42 = v43;
    if (!v43)
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
    v25 = *MEMORY[0x29EDBEF60];
    v16 = *MEMORY[0x29EDBEB00];
    v17 = *MEMORY[0x29EDBEEE0];
    v18 = *MEMORY[0x29EDBED78];
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v12, v15);
      v20 = ValueAtIndex;
      if (ValueAtIndex && (v21 = CFGetTypeID(ValueAtIndex), v21 == CFDictionaryGetTypeID()))
      {
        v41 = v20;
        CFRetain(v20);
      }

      else
      {
        v20 = 0;
        v41 = 0;
      }

      v40[0] = 0xAAAAAAAAAAAAAAAALL;
      v40[1] = 0xAAAAAAAAAAAAAAAALL;
      ctu::cf::dict_adapter::dict_adapter(v40, v20);
      memset(&v39[1] + 8, 170, 24);
      __dst = 0uLL;
      *&v30 = 0;
      ctu::cf::MakeCFString::MakeCFString(v39, v26);
      ctu::cf::map_adapter::getString();
      MEMORY[0x29C270E70](v39);
      if (SBYTE7(v30) < 0)
      {
        operator delete(__dst);
      }

      memset(v39, 170, 24);
      __dst = 0uLL;
      *&v30 = 0;
      ctu::cf::MakeCFString::MakeCFString(v38, v25);
      ctu::cf::map_adapter::getString();
      MEMORY[0x29C270E70](v38);
      if (SBYTE7(v30) < 0)
      {
        operator delete(__dst);
      }

      memset(v38, 170, sizeof(v38));
      __dst = 0uLL;
      *&v30 = 0;
      ctu::cf::MakeCFString::MakeCFString(v37, v16);
      ctu::cf::map_adapter::getString();
      MEMORY[0x29C270E70](v37);
      if (SBYTE7(v30) < 0)
      {
        operator delete(__dst);
      }

      memset(v37, 170, sizeof(v37));
      __dst = 0uLL;
      *&v30 = 0;
      ctu::cf::MakeCFString::MakeCFString(&v36, v17);
      ctu::cf::map_adapter::getString();
      MEMORY[0x29C270E70](&v36);
      if (SBYTE7(v30) < 0)
      {
        operator delete(__dst);
      }

      memset(&v36, 170, sizeof(v36));
      __dst = 0uLL;
      *&v30 = 0;
      ctu::cf::MakeCFString::MakeCFString(v44, v18);
      ctu::cf::map_adapter::getString();
      MEMORY[0x29C270E70](v44);
      if (SBYTE7(v30) < 0)
      {
        operator delete(__dst);
      }

      *&v22 = 0xAAAAAAAAAAAAAAAALL;
      *(&v22 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *__p = v22;
      v35 = v22;
      *v32 = v22;
      v33 = v22;
      v30 = v22;
      v31 = v22;
      __dst = v22;
      if (SHIBYTE(v39[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v28, *(&v39[1] + 1), *&v39[2]);
      }

      else
      {
        v28 = *(&v39[1] + 8);
      }

      if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v27, v36.__r_.__value_.__l.__data_, v36.__r_.__value_.__l.__size_);
      }

      else
      {
        v27 = v36;
      }

      ResetInfo::ResetInfo(&__dst, v38, v37, v39, &v28, 7, &v27);
      if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v27.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_50:
          v23 = *(this + 4);
          if (v23 < *(this + 5))
          {
            goto LABEL_51;
          }

          goto LABEL_54;
        }
      }

      else if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_50;
      }

      operator delete(v28.__r_.__value_.__l.__data_);
      v23 = *(this + 4);
      if (v23 < *(this + 5))
      {
LABEL_51:
        ResetInfo::ResetInfo(v23, &__dst);
        v24 = &v23[4].__r_.__value_.__s.__data_[16];
        *(this + 4) = v23 + 112;
        goto LABEL_55;
      }

LABEL_54:
      v24 = std::vector<ResetInfo>::__emplace_back_slow_path<ResetInfo const&>(this + 3, &__dst);
LABEL_55:
      *(this + 4) = v24;
      if (SHIBYTE(v35) < 0)
      {
        operator delete(__p[1]);
        if ((SBYTE7(v33) & 0x80000000) == 0)
        {
LABEL_57:
          if ((SHIBYTE(v31) & 0x80000000) == 0)
          {
            goto LABEL_58;
          }

          goto LABEL_68;
        }
      }

      else if ((SBYTE7(v33) & 0x80000000) == 0)
      {
        goto LABEL_57;
      }

      operator delete(v32[0]);
      if ((SHIBYTE(v31) & 0x80000000) == 0)
      {
LABEL_58:
        if ((SBYTE7(v30) & 0x80000000) == 0)
        {
          goto LABEL_59;
        }

        goto LABEL_69;
      }

LABEL_68:
      operator delete(*(&v30 + 1));
      if ((SBYTE7(v30) & 0x80000000) == 0)
      {
LABEL_59:
        if ((SHIBYTE(v36.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_60;
        }

        goto LABEL_70;
      }

LABEL_69:
      operator delete(__dst);
      if ((SHIBYTE(v36.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_60:
        if ((SHIBYTE(v37[2]) & 0x80000000) == 0)
        {
          goto LABEL_61;
        }

        goto LABEL_71;
      }

LABEL_70:
      operator delete(v36.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v37[2]) & 0x80000000) == 0)
      {
LABEL_61:
        if ((v38[23] & 0x80000000) == 0)
        {
          goto LABEL_62;
        }

        goto LABEL_72;
      }

LABEL_71:
      operator delete(v37[0]);
      if ((v38[23] & 0x80000000) == 0)
      {
LABEL_62:
        if ((SBYTE7(v39[1]) & 0x80000000) == 0)
        {
          goto LABEL_63;
        }

        goto LABEL_73;
      }

LABEL_72:
      operator delete(*v38);
      if ((SBYTE7(v39[1]) & 0x80000000) == 0)
      {
LABEL_63:
        if ((SHIBYTE(v39[2]) & 0x80000000) == 0)
        {
          goto LABEL_64;
        }

        goto LABEL_74;
      }

LABEL_73:
      operator delete(*&v39[0]);
      if ((SHIBYTE(v39[2]) & 0x80000000) == 0)
      {
LABEL_64:
        MEMORY[0x29C270ED0](v40);
        if (!v20)
        {
          goto LABEL_27;
        }

LABEL_75:
        CFRelease(v20);
        goto LABEL_27;
      }

LABEL_74:
      operator delete(*(&v39[1] + 1));
      MEMORY[0x29C270ED0](v40);
      if (v20)
      {
        goto LABEL_75;
      }

LABEL_27:
      ++v15;
    }

    while (v14 != v15);
  }

  CFRelease(v12);
}

void sub_2974F19AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  if (a23 < 0)
  {
    operator delete(__p);
    if ((a48 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((a48 & 0x80000000) == 0)
  {
LABEL_6:
    if (a54 < 0)
    {
      operator delete(a49);
    }

    if (*(v54 - 193) < 0)
    {
      operator delete(*(v54 - 216));
    }

    if (*(v54 - 169) < 0)
    {
      operator delete(*(v54 - 192));
    }

    if (*(v54 - 145) < 0)
    {
      operator delete(*(v54 - 168));
    }

    MEMORY[0x29C270ED0](v54 - 144);
    ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef((v54 - 128));
    ctu::cf::CFSharedRef<__CFArray const>::~CFSharedRef((v54 - 120));
    _Unwind_Resume(a1);
  }

  operator delete(a43);
  goto LABEL_6;
}

void sub_2974F1C00(_Unwind_Exception *a1)
{
  std::vector<ResetInfo>::~vector[abi:ne200100](v2);
  MEMORY[0x29C270D60](v1 + 8);
  _Unwind_Resume(a1);
}

void LogDumpDB::commitToDisk(LogDumpDB *this)
{
  v40 = *MEMORY[0x29EDCA608];
  cf = 0;
  v2 = *MEMORY[0x29EDB8ED8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9000]);
  v4 = Mutable;
  if (Mutable)
  {
    cf = Mutable;
  }

  v5 = *(this + 3);
  v6 = *(this + 4);
  v32 = this;
  if (v5 != v6)
  {
    v35 = *MEMORY[0x29EDBE930];
    v34 = *MEMORY[0x29EDBEB00];
    v33 = *MEMORY[0x29EDBEEE0];
    v7 = *MEMORY[0x29EDBEF60];
    v8 = *MEMORY[0x29EDBED78];
    do
    {
      v38 = 0;
      v9 = CFDictionaryCreateMutable(v2, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
      v10 = v9;
      if (v9)
      {
        v38 = v9;
      }

      v11 = *(v5 + 9);
      v12 = operator new(0x38uLL);
      v12[8] = 0;
      *v12 = 0;
      *(v12 + 1) = 0;
      *(v12 + 2) = &__dst.__r_.__value_.__l.__size_;
      __dst.__r_.__value_.__r.__words[0] = v12;
      __dst.__r_.__value_.__l.__size_ = v12;
      *(v12 + 24) = 1;
      __dst.__r_.__value_.__r.__words[2] = 1;
      *(v12 + 5) = v11;
      *(v12 + 6) = 0xAAAAAAAA00000000;
      Timestamp::asString(&__dst, 0, 9, &__p);
      std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(&__dst, __dst.__r_.__value_.__l.__size_);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&__dst, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
      }

      else
      {
        __dst = __p;
      }

      ctu::cf::insert<char const*,std::string>(v10, v35, &__dst, v2, v13);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_13:
          if ((*(v5 + 23) & 0x80000000) == 0)
          {
            goto LABEL_14;
          }

          goto LABEL_17;
        }
      }

      else if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_13;
      }

      operator delete(__p.__r_.__value_.__l.__data_);
      if ((*(v5 + 23) & 0x80000000) == 0)
      {
LABEL_14:
        v15 = *v5;
        __p.__r_.__value_.__r.__words[2] = *(v5 + 2);
        *&__p.__r_.__value_.__l.__data_ = v15;
        goto LABEL_18;
      }

LABEL_17:
      std::string::__init_copy_ctor_external(&__p, *v5, *(v5 + 1));
LABEL_18:
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&__dst, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
      }

      else
      {
        __dst = __p;
      }

      ctu::cf::insert<char const*,std::string>(v10, v34, &__dst, v2, v14);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_23:
          if ((*(v5 + 47) & 0x80000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }

      else if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_23;
      }

      operator delete(__p.__r_.__value_.__l.__data_);
      if ((*(v5 + 47) & 0x80000000) == 0)
      {
LABEL_24:
        __p = *(v5 + 1);
        goto LABEL_28;
      }

LABEL_27:
      std::string::__init_copy_ctor_external(&__p, *(v5 + 3), *(v5 + 4));
LABEL_28:
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&__dst, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
      }

      else
      {
        __dst = __p;
      }

      ctu::cf::insert<char const*,std::string>(v10, v33, &__dst, v2, v16);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_33:
          if ((*(v5 + 71) & 0x80000000) == 0)
          {
            goto LABEL_34;
          }

          goto LABEL_37;
        }
      }

      else if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_33;
      }

      operator delete(__p.__r_.__value_.__l.__data_);
      if ((*(v5 + 71) & 0x80000000) == 0)
      {
LABEL_34:
        __p = *(v5 + 2);
        goto LABEL_38;
      }

LABEL_37:
      std::string::__init_copy_ctor_external(&__p, *(v5 + 6), *(v5 + 7));
LABEL_38:
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&__dst, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
      }

      else
      {
        __dst = __p;
      }

      ctu::cf::insert<char const*,std::string>(v10, v7, &__dst, v2, v17);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_43:
          if ((*(v5 + 111) & 0x80000000) == 0)
          {
            goto LABEL_44;
          }

          goto LABEL_47;
        }
      }

      else if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_43;
      }

      operator delete(__p.__r_.__value_.__l.__data_);
      if ((*(v5 + 111) & 0x80000000) == 0)
      {
LABEL_44:
        __p = *(v5 + 88);
        goto LABEL_48;
      }

LABEL_47:
      std::string::__init_copy_ctor_external(&__p, *(v5 + 11), *(v5 + 12));
LABEL_48:
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&__dst, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
      }

      else
      {
        __dst = __p;
      }

      ctu::cf::insert<char const*,std::string>(v10, v8, &__dst, v2, v18);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
LABEL_56:
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      else if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_56;
      }

      CFArrayAppendValue(v4, v10);
      if (v10)
      {
        CFRelease(v10);
      }

      v5 += 7;
    }

    while (v5 != v6);
  }

  v19 = *(v32 + 1);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(__dst.__r_.__value_.__l.__data_) = 138412290;
    *(__dst.__r_.__value_.__r.__words + 4) = v4;
    _os_log_debug_impl(&dword_297476000, v19, OS_LOG_TYPE_DEBUG, "#D Current tracking list: %@", &__dst, 0xCu);
  }

  pthread_mutex_lock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  v20 = off_2A18CAFB8;
  if (!off_2A18CAFB8)
  {
    SharedData::create_default_global(&__dst);
    v21 = *&__dst.__r_.__value_.__l.__data_;
    *&__dst.__r_.__value_.__l.__data_ = 0uLL;
    v22 = *(&off_2A18CAFB8 + 1);
    off_2A18CAFB8 = v21;
    if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v22->__on_zero_shared)(v22);
      std::__shared_weak_count::__release_weak(v22);
    }

    size = __dst.__r_.__value_.__l.__size_;
    if (__dst.__r_.__value_.__l.__size_ && !atomic_fetch_add((__dst.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (size->__on_zero_shared)(size);
      std::__shared_weak_count::__release_weak(size);
    }

    v20 = off_2A18CAFB8;
  }

  __p.__r_.__value_.__r.__words[0] = v20;
  __p.__r_.__value_.__l.__size_ = *(&off_2A18CAFB8 + 1);
  if (*(&off_2A18CAFB8 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18CAFB8 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  v24 = *MEMORY[0x29EDBE868];
  v25 = strlen(*MEMORY[0x29EDBE868]);
  if (v25 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v26 = v25;
  if (v25 >= 0x17)
  {
    if ((v25 | 7) == 0x17)
    {
      v28 = 25;
    }

    else
    {
      v28 = (v25 | 7) + 1;
    }

    p_dst = operator new(v28);
    __dst.__r_.__value_.__l.__size_ = v26;
    __dst.__r_.__value_.__r.__words[2] = v28 | 0x8000000000000000;
    __dst.__r_.__value_.__r.__words[0] = p_dst;
    goto LABEL_77;
  }

  *(&__dst.__r_.__value_.__s + 23) = v25;
  p_dst = &__dst;
  if (v25)
  {
LABEL_77:
    memmove(p_dst, v24, v26);
  }

  *(p_dst + v26) = 0;
  SharedData::setPreference<__CFArray *>(v20, &__dst, cf);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
    v29 = __p.__r_.__value_.__l.__size_;
    if (!__p.__r_.__value_.__l.__size_)
    {
      goto LABEL_83;
    }
  }

  else
  {
    v29 = __p.__r_.__value_.__l.__size_;
    if (!__p.__r_.__value_.__l.__size_)
    {
      goto LABEL_83;
    }
  }

  if (!atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v29->__on_zero_shared)(v29);
    std::__shared_weak_count::__release_weak(v29);
    v30 = cf;
    if (!cf)
    {
      goto LABEL_85;
    }

    goto LABEL_84;
  }

LABEL_83:
  v30 = cf;
  if (cf)
  {
LABEL_84:
    CFRelease(v30);
  }

LABEL_85:
  v31 = *MEMORY[0x29EDCA608];
}

void sub_2974F22C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, const void *a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  ctu::cf::CFSharedRef<__CFArray>::~CFSharedRef(&a14);
  _Unwind_Resume(a1);
}

void SharedData::setPreference<__CFArray *>(os_unfair_lock_s *a1, uint64_t a2, const void *a3)
{
  os_unfair_lock_lock(a1 + 10);
  if (*(a2 + 23) >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  ctu::cf::MakeCFString::MakeCFString(&v7, v6);
  ctu::cf::plist_adapter::set<__CFArray *>(a1, a3, v7, 1);
  MEMORY[0x29C270E70](&v7);
  os_unfair_lock_unlock(a1 + 10);
}

BOOL LogDumpDB::checkIfDuplicatedSignature(LogDumpDB *this, const ResetInfo *a2, const ResetInfo *a3)
{
  v93 = *MEMORY[0x29EDCA608];
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v90, *a3, *(a3 + 1));
  }

  else
  {
    v90 = *a3;
  }

  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v92, *a2, *(a2 + 1));
  }

  else
  {
    v92 = *a2;
  }

  v6 = SHIBYTE(v92.__r_.__value_.__r.__words[2]);
  size = v92.__r_.__value_.__l.__size_;
  v8 = v92.__r_.__value_.__r.__words[0];
  v9 = HIBYTE(v90.__r_.__value_.__r.__words[2]);
  v10 = HIBYTE(v90.__r_.__value_.__r.__words[2]);
  if ((v90.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = &v90;
  }

  else
  {
    v9 = v90.__r_.__value_.__l.__size_;
    v11 = v90.__r_.__value_.__r.__words[0];
  }

  if ((v92.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v12 = v92.__r_.__value_.__r.__words[0];
  }

  else
  {
    size = SHIBYTE(v92.__r_.__value_.__r.__words[2]);
    v12 = &v92;
  }

  if (size >= v9)
  {
    v13 = v9;
  }

  else
  {
    v13 = size;
  }

  v14 = size == v9;
  if (memcmp(v11, v12, v13))
  {
    v14 = 0;
  }

  if (v6 < 0)
  {
    operator delete(v8);
    if ((*(&v90.__r_.__value_.__s + 23) & 0x80) == 0)
    {
LABEL_20:
      if (v14)
      {
        goto LABEL_21;
      }

LABEL_25:
      v15 = *(this + 1);
      result = os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG);
      if (!result)
      {
        goto LABEL_239;
      }

      LOWORD(v90.__r_.__value_.__l.__data_) = 0;
      v17 = "#D Two reset types are not same. No need to check duplicated signature";
LABEL_27:
      _os_log_debug_impl(&dword_297476000, v15, OS_LOG_TYPE_DEBUG, v17, &v90, 2u);
      goto LABEL_238;
    }
  }

  else if ((v10 & 0x80) == 0)
  {
    goto LABEL_20;
  }

  operator delete(v90.__r_.__value_.__l.__data_);
  if (!v14)
  {
    goto LABEL_25;
  }

LABEL_21:
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v90, *a3, *(a3 + 1));
  }

  else
  {
    v90 = *a3;
  }

  v18 = strlen(*MEMORY[0x29EDBEB60]);
  v19 = v18;
  v20 = SHIBYTE(v90.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(v90.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
  {
    if (v18 != -1)
    {
      v21 = &v90;
      v22 = SHIBYTE(v90.__r_.__value_.__r.__words[2]);
      goto LABEL_34;
    }

LABEL_241:
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  if (v18 == -1)
  {
    goto LABEL_241;
  }

  v22 = v90.__r_.__value_.__l.__size_;
  v21 = v90.__r_.__value_.__r.__words[0];
LABEL_34:
  if (v22 >= v19)
  {
    v23 = v19;
  }

  else
  {
    v23 = v22;
  }

  v24 = memcmp(v21, *MEMORY[0x29EDBEB60], v23) == 0;
  v25 = v22 == v19 && v24;
  if ((v20 & 0x80000000) == 0)
  {
    if (v25)
    {
      goto LABEL_42;
    }

LABEL_46:
    if (*(a2 + 71) < 0)
    {
      std::string::__init_copy_ctor_external(&v90, *(a2 + 6), *(a2 + 7));
    }

    else
    {
      v90 = *(a2 + 2);
    }

    if (*(a3 + 71) < 0)
    {
      std::string::__init_copy_ctor_external(&v92, *(a3 + 6), *(a3 + 7));
    }

    else
    {
      v92 = *(a3 + 2);
    }

    *__dst = operator new(0x68uLL);
    *&__dst[8] = xmmword_29769DC70;
    strcpy(*__dst, "(Power assertion watchdog fired for 'com.apple.AppleBasebandManager.RadioNotReady.Bootup'; Timeout =).*");
    v27 = util::compareTwoStringsWithPattern(&v90, &v92, __dst);
    if ((__dst[23] & 0x80000000) != 0)
    {
      operator delete(*__dst);
      if ((SHIBYTE(v92.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_54:
        if ((SHIBYTE(v90.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_55;
        }

        goto LABEL_108;
      }
    }

    else if ((SHIBYTE(v92.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_54;
    }

    operator delete(v92.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v90.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_55:
      if (!v27)
      {
        goto LABEL_238;
      }

      goto LABEL_109;
    }

LABEL_108:
    operator delete(v90.__r_.__value_.__l.__data_);
    if (!v27)
    {
      goto LABEL_238;
    }

LABEL_109:
    v44 = *(this + 1);
    if (!os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_113;
    }

    if (*(a3 + 71) < 0)
    {
      std::string::__init_copy_ctor_external(&v90, *(a3 + 6), *(a3 + 7));
    }

    else
    {
      v90 = *(a3 + 2);
    }

    v85 = &v90;
    if ((v90.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v85 = v90.__r_.__value_.__r.__words[0];
    }

    LODWORD(v92.__r_.__value_.__l.__data_) = 136315138;
    *(v92.__r_.__value_.__r.__words + 4) = v85;
LABEL_231:
    _os_log_debug_impl(&dword_297476000, v44, OS_LOG_TYPE_DEBUG, "#D This is duplicated signature based on the dump reason: %s", &v92, 0xCu);
    if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v90.__r_.__value_.__l.__data_);
      result = 1;
    }

    else
    {
LABEL_113:
      result = 1;
    }

    goto LABEL_239;
  }

  operator delete(v90.__r_.__value_.__l.__data_);
  if (!v25)
  {
    goto LABEL_46;
  }

LABEL_42:
  v26 = *(this + 1);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    if (*(a3 + 111) < 0)
    {
      std::string::__init_copy_ctor_external(&v90, *(a3 + 11), *(a3 + 12));
    }

    else
    {
      v90 = *(a3 + 88);
    }

    v69 = SHIBYTE(v90.__r_.__value_.__r.__words[2]);
    v70 = v90.__r_.__value_.__r.__words[0];
    if (*(a2 + 111) < 0)
    {
      std::string::__init_copy_ctor_external(&v92, *(a2 + 11), *(a2 + 12));
    }

    else
    {
      v92 = *(a2 + 88);
    }

    v71 = &v90;
    if (v69 < 0)
    {
      v71 = v70;
    }

    v72 = &v92;
    if ((v92.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v72 = v92.__r_.__value_.__r.__words[0];
    }

    *__dst = 136315394;
    *&__dst[4] = v71;
    *&__dst[12] = 2080;
    *&__dst[14] = v72;
    _os_log_debug_impl(&dword_297476000, v26, OS_LOG_TYPE_DEBUG, "#D Comparing current reason, %s, and the recorded reason, %s", __dst, 0x16u);
    if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v92.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v90.__r_.__value_.__l.__data_);
    }
  }

  if (*(a3 + 111) < 0)
  {
    std::string::__init_copy_ctor_external(&v90, *(a3 + 11), *(a3 + 12));
  }

  else
  {
    v90 = *(a3 + 88);
  }

  if (*(a2 + 111) < 0)
  {
    std::string::__init_copy_ctor_external(&v92, *(a2 + 11), *(a2 + 12));
  }

  else
  {
    v92 = *(a2 + 88);
  }

  v28 = SHIBYTE(v92.__r_.__value_.__r.__words[2]);
  v29 = v92.__r_.__value_.__l.__size_;
  v30 = v92.__r_.__value_.__r.__words[0];
  v31 = HIBYTE(v90.__r_.__value_.__r.__words[2]);
  v32 = HIBYTE(v90.__r_.__value_.__r.__words[2]);
  if ((v90.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v33 = &v90;
  }

  else
  {
    v31 = v90.__r_.__value_.__l.__size_;
    v33 = v90.__r_.__value_.__r.__words[0];
  }

  if ((v92.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v34 = v92.__r_.__value_.__r.__words[0];
  }

  else
  {
    v29 = SHIBYTE(v92.__r_.__value_.__r.__words[2]);
    v34 = &v92;
  }

  if (v29 >= v31)
  {
    v35 = v31;
  }

  else
  {
    v35 = v29;
  }

  v36 = v29 == v31;
  if (memcmp(v33, v34, v35))
  {
    v36 = 0;
  }

  if ((v28 & 0x8000000000000000) == 0)
  {
    if ((v32 & 0x80) == 0)
    {
      goto LABEL_74;
    }

LABEL_103:
    operator delete(v90.__r_.__value_.__l.__data_);
    if (v36)
    {
      goto LABEL_75;
    }

    goto LABEL_104;
  }

  operator delete(v30);
  if ((*(&v90.__r_.__value_.__s + 23) & 0x80) != 0)
  {
    goto LABEL_103;
  }

LABEL_74:
  if (!v36)
  {
LABEL_104:
    v15 = *(this + 1);
    result = os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG);
    if (!result)
    {
      goto LABEL_239;
    }

    LOWORD(v90.__r_.__value_.__l.__data_) = 0;
    v17 = "#D Two crash reasons are not identical. No need to check duplicated signature";
    goto LABEL_27;
  }

LABEL_75:
  v89 = this;
  for (i = 0; i != 8; ++i)
  {
    if (*(a2 + 71) < 0)
    {
      std::string::__init_copy_ctor_external(&v90, *(a2 + 6), *(a2 + 7));
    }

    else
    {
      v90 = *(a2 + 2);
    }

    if (*(a3 + 71) < 0)
    {
      std::string::__init_copy_ctor_external(&v92, *(a3 + 6), *(a3 + 7));
    }

    else
    {
      v92 = *(a3 + 2);
    }

    v38 = abm::kInterestingHardResetReasonSignatures[i];
    v39 = strlen(v38);
    if (v39 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v40 = v39;
    if (v39 >= 0x17)
    {
      if ((v39 | 7) == 0x17)
      {
        v42 = 25;
      }

      else
      {
        v42 = (v39 | 7) + 1;
      }

      v41 = operator new(v42);
      *&__dst[8] = v40;
      *&__dst[16] = v42 | 0x8000000000000000;
      *__dst = v41;
LABEL_90:
      memmove(v41, v38, v40);
      goto LABEL_91;
    }

    __dst[23] = v39;
    v41 = __dst;
    if (v39)
    {
      goto LABEL_90;
    }

LABEL_91:
    v41[v40] = 0;
    v43 = util::compareTwoStringsWithPattern(&v90, &v92, __dst);
    if ((__dst[23] & 0x80000000) != 0)
    {
      operator delete(*__dst);
      if ((SHIBYTE(v92.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_93:
        if ((SHIBYTE(v90.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_94;
        }

        goto LABEL_98;
      }
    }

    else if ((SHIBYTE(v92.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_93;
    }

    operator delete(v92.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v90.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_94:
      if (v43)
      {
        goto LABEL_112;
      }

      continue;
    }

LABEL_98:
    operator delete(v90.__r_.__value_.__l.__data_);
    if (v43)
    {
LABEL_112:
      v44 = *(v89 + 1);
      if (!os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_113;
      }

      if (*(a3 + 71) < 0)
      {
        std::string::__init_copy_ctor_external(&v90, *(a3 + 6), *(a3 + 7));
      }

      else
      {
        v90 = *(a3 + 2);
      }

      v86 = &v90;
      if ((v90.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v86 = v90.__r_.__value_.__r.__words[0];
      }

      LODWORD(v92.__r_.__value_.__l.__data_) = 136315138;
      *(v92.__r_.__value_.__r.__words + 4) = v86;
      goto LABEL_231;
    }
  }

  if (*(a3 + 111) < 0)
  {
    std::string::__init_copy_ctor_external(&v90, *(a3 + 11), *(a3 + 12));
  }

  else
  {
    v90 = *(a3 + 88);
  }

  v45 = HIBYTE(v90.__r_.__value_.__r.__words[2]);
  v46 = SHIBYTE(v90.__r_.__value_.__r.__words[2]);
  v47 = v90.__r_.__value_.__r.__words[0];
  if ((v90.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v48 = &v90;
  }

  else
  {
    v48 = v90.__r_.__value_.__r.__words[0];
  }

  if ((v90.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v45 = v90.__r_.__value_.__l.__size_;
  }

  v49 = v48 + v45;
  if (v45 >= 17)
  {
    v52 = v48;
    v51 = v89;
    do
    {
      v50 = memchr(v52, 67, v45 - 16);
      if (!v50)
      {
        break;
      }

      if (*v50 == 0x63206D6F74737543 && *(v50 + 1) == 0x7079742068736172 && v50[16] == 101)
      {
        goto LABEL_133;
      }

      v52 = (v50 + 1);
      v45 = v49 - v52;
    }

    while (v49 - v52 > 16);
    v50 = v49;
  }

  else
  {
    v50 = v48 + v45;
    v51 = v89;
  }

LABEL_133:
  v56 = v50 == v49 || v50 - v48 == -1;
  if (v46 < 0)
  {
    operator delete(v47);
  }

  if (v56)
  {
    if (*(a3 + 111) < 0)
    {
      std::string::__init_copy_ctor_external(&v90, *(a3 + 11), *(a3 + 12));
    }

    else
    {
      v90 = *(a3 + 88);
    }

    v58 = HIBYTE(v90.__r_.__value_.__r.__words[2]);
    v59 = SHIBYTE(v90.__r_.__value_.__r.__words[2]);
    v60 = v90.__r_.__value_.__r.__words[0];
    if ((v90.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v61 = &v90;
    }

    else
    {
      v61 = v90.__r_.__value_.__r.__words[0];
    }

    if ((v90.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v58 = v90.__r_.__value_.__l.__size_;
    }

    v62 = v61 + v58;
    if (v58 >= 18)
    {
      v64 = v61;
      v51 = v89;
      do
      {
        v63 = memchr(v64, 67, v58 - 17);
        if (!v63)
        {
          break;
        }

        if (*v63 == 0x7274206873617243 && *(v63 + 1) == 0x2064657265676769 && *(v63 + 8) == 31074)
        {
          goto LABEL_166;
        }

        v64 = (v63 + 1);
        v58 = v62 - v64;
      }

      while (v62 - v64 >= 18);
      v63 = v62;
    }

    else
    {
      v63 = v61 + v58;
      v51 = v89;
    }

LABEL_166:
    v68 = v63 == v62 || v63 - v61 == -1;
    if (v59 < 0)
    {
      operator delete(v60);
    }

    if (v68)
    {
      if (*(a3 + 111) < 0)
      {
        std::string::__init_copy_ctor_external(&v90, *(a3 + 11), *(a3 + 12));
      }

      else
      {
        v90 = *(a3 + 88);
      }

      v73 = HIBYTE(v90.__r_.__value_.__r.__words[2]);
      v74 = SHIBYTE(v90.__r_.__value_.__r.__words[2]);
      v75 = v90.__r_.__value_.__r.__words[0];
      if ((v90.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v76 = &v90;
      }

      else
      {
        v76 = v90.__r_.__value_.__r.__words[0];
      }

      if ((v90.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v73 = v90.__r_.__value_.__l.__size_;
      }

      v77 = v76 + v73;
      if (v73 >= 14)
      {
        v79 = v76;
        v51 = v89;
        do
        {
          v78 = memchr(v79, 67, v73 - 13);
          if (!v78)
          {
            break;
          }

          if (*v78 == 0x6E69206873617243 && *(v78 + 6) == 0x64657463656A6E69)
          {
            goto LABEL_206;
          }

          v79 = (v78 + 1);
          v73 = v77 - v79;
        }

        while (v77 - v79 >= 14);
        v78 = v77;
      }

      else
      {
        v78 = v76 + v73;
        v51 = v89;
      }

LABEL_206:
      v82 = v78 == v77 || v78 - v76 == -1;
      if (v74 < 0)
      {
        operator delete(v75);
      }

      if (v82)
      {
        v83 = *(v51 + 1);
        if (os_log_type_enabled(v83, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(v90.__r_.__value_.__l.__data_) = 0;
          _os_log_debug_impl(&dword_297476000, v83, OS_LOG_TYPE_DEBUG, "#D The crash reason has duplicated signature", &v90, 2u);
        }

        goto LABEL_113;
      }

      v57 = "Crash injected";
    }

    else
    {
      v57 = "Crash triggered by";
    }
  }

  else
  {
    v57 = "Custom crash type";
  }

  v84 = *(v51 + 1);
  result = os_log_type_enabled(v84, OS_LOG_TYPE_DEBUG);
  if (!result)
  {
    goto LABEL_239;
  }

  if (*(a3 + 111) < 0)
  {
    std::string::__init_copy_ctor_external(&v90, *(a3 + 11), *(a3 + 12));
  }

  else
  {
    v90 = *(a3 + 88);
  }

  v87 = &v90;
  if ((v90.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v87 = v90.__r_.__value_.__r.__words[0];
  }

  LODWORD(v92.__r_.__value_.__l.__data_) = 136315394;
  *(v92.__r_.__value_.__r.__words + 4) = v87;
  WORD2(v92.__r_.__value_.__r.__words[1]) = 2080;
  *(&v92.__r_.__value_.__r.__words[1] + 6) = v57;
  _os_log_debug_impl(&dword_297476000, v84, OS_LOG_TYPE_DEBUG, "#D This is NOT duplicated signature based on the crash reason: %s has %s", &v92, 0x16u);
  if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v90.__r_.__value_.__l.__data_);
  }

LABEL_238:
  result = 0;
LABEL_239:
  v88 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2974F2F4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a16 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void LogDumpDB::clearDB(LogDumpDB *this)
{
  cf = 0;
  Mutable = CFArrayCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9000]);
  if (Mutable)
  {
    cf = Mutable;
  }

  pthread_mutex_lock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  v3 = off_2A18CAFB8;
  if (!off_2A18CAFB8)
  {
    SharedData::create_default_global(__p);
    v4 = *__p;
    __p[0] = 0;
    __p[1] = 0;
    v5 = *(&off_2A18CAFB8 + 1);
    off_2A18CAFB8 = v4;
    if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    v6 = __p[1];
    if (__p[1] && !atomic_fetch_add(__p[1] + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }

    v3 = off_2A18CAFB8;
  }

  v19 = v3;
  v20 = *(&off_2A18CAFB8 + 1);
  if (*(&off_2A18CAFB8 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18CAFB8 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  v7 = *MEMORY[0x29EDBE868];
  v8 = strlen(*MEMORY[0x29EDBE868]);
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
    __p[1] = v9;
    v18 = v11 | 0x8000000000000000;
    __p[0] = v10;
    goto LABEL_21;
  }

  HIBYTE(v18) = v8;
  v10 = __p;
  if (v8)
  {
LABEL_21:
    memmove(v10, v7, v9);
  }

  *(v9 + v10) = 0;
  SharedData::setPreference<__CFArray *>(v3, __p, cf);
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p[0]);
  }

  v12 = v20;
  if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  v13 = *(this + 3);
  v14 = *(this + 4);
  if (v14 != v13)
  {
    do
    {
      if (*(v14 - 1) < 0)
      {
        operator delete(*(v14 - 3));
        if ((*(v14 - 41) & 0x80000000) == 0)
        {
LABEL_36:
          if ((*(v14 - 65) & 0x80000000) == 0)
          {
            goto LABEL_37;
          }

          goto LABEL_41;
        }
      }

      else if ((*(v14 - 41) & 0x80000000) == 0)
      {
        goto LABEL_36;
      }

      operator delete(*(v14 - 8));
      if ((*(v14 - 65) & 0x80000000) == 0)
      {
LABEL_37:
        v16 = v14 - 14;
        if (*(v14 - 89) < 0)
        {
          goto LABEL_42;
        }

        goto LABEL_33;
      }

LABEL_41:
      operator delete(*(v14 - 11));
      v16 = v14 - 14;
      if (*(v14 - 89) < 0)
      {
LABEL_42:
        operator delete(*v16);
      }

LABEL_33:
      v14 = v16;
    }

    while (v16 != v13);
  }

  *(this + 4) = v13;
  v15 = *(this + 1);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__p[0]) = 0;
    _os_log_impl(&dword_297476000, v15, OS_LOG_TYPE_DEFAULT, "#I Log Dump DB is cleared", __p, 2u);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_2974F3300(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  ctu::cf::CFSharedRef<__CFArray>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

uint64_t LogDumpDB::writeToDB(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&__s1, *(a2 + 24), *(a2 + 32));
  }

  else
  {
    __s1 = *(a2 + 24);
  }

  v6 = *MEMORY[0x29EDBF6E0];
  v7 = strlen(*MEMORY[0x29EDBF6E0]);
  if ((SHIBYTE(__s1.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (v7 != __s1.__r_.__value_.__l.__size_)
    {
      operator delete(__s1.__r_.__value_.__l.__data_);
      v8 = *(a1 + 8);
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_8;
      }

      goto LABEL_67;
    }

    if (v7 == -1)
    {
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    v11 = __s1.__r_.__value_.__r.__words[0];
    v12 = memcmp(__s1.__r_.__value_.__l.__data_, v6, v7);
    operator delete(v11);
    if (v12)
    {
LABEL_7:
      v8 = *(a1 + 8);
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_8;
      }

LABEL_67:
      LOWORD(__s1.__r_.__value_.__l.__data_) = 0;
      _os_log_debug_impl(&dword_297476000, v8, OS_LOG_TYPE_DEBUG, "#D Checking if log dump is duplicated", &__s1, 2u);
LABEL_8:
      v9 = *(a1 + 24);
      __s1.__r_.__value_.__s.__data_[0] = 0;
      v10 = *(a1 + 32);
      v23[0] = a1;
      v23[1] = &__s1;
      ResetInfo::ResetInfo(&v24, a2);
      v31 = a3;
      if (v9 != v10)
      {
        while (!LogDumpDB::writeToDB(ResetInfo const&,std::chrono::duration<long long,std::ratio<1l,1l>>)::$_0::operator()(v23, v9))
        {
          v9 = (v9 + 112);
          if (v9 == v10)
          {
            v9 = v10;
            goto LABEL_22;
          }
        }

        if (v9 != v10)
        {
          for (i = (v9 + 112); i != v10; i = (i + 112))
          {
            if (!LogDumpDB::writeToDB(ResetInfo const&,std::chrono::duration<long long,std::ratio<1l,1l>>)::$_0::operator()(v23, i))
            {
              ResetInfo::operator=(v9, i);
              v9 = (v9 + 112);
            }
          }
        }
      }

LABEL_22:
      if (v30 < 0)
      {
        operator delete(__p);
        if ((v28 & 0x80000000) == 0)
        {
LABEL_24:
          if ((v26 & 0x80000000) == 0)
          {
            goto LABEL_25;
          }

          goto LABEL_43;
        }
      }

      else if ((v28 & 0x80000000) == 0)
      {
        goto LABEL_24;
      }

      operator delete(v27);
      if ((v26 & 0x80000000) == 0)
      {
LABEL_25:
        if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_26;
        }

        goto LABEL_44;
      }

LABEL_43:
      operator delete(v25);
      if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_26:
        v15 = *(a1 + 32);
        if (v9 != v15)
        {
          goto LABEL_27;
        }

        goto LABEL_45;
      }

LABEL_44:
      operator delete(v24.__r_.__value_.__l.__data_);
      v15 = *(a1 + 32);
      if (v9 != v15)
      {
LABEL_27:
        if (v15 == v9)
        {
LABEL_39:
          *(a1 + 32) = v9;
          if (v9 < *(a1 + 40))
          {
LABEL_40:
            ResetInfo::ResetInfo(v9, a2);
            v17 = v9 + 112;
            *(a1 + 32) = v9 + 112;
LABEL_47:
            *(a1 + 32) = v17;
            v18 = *(a1 + 24);
            if (0x6DB6DB6DB6DB6DB7 * (&v17[-v18] >> 4) <= *(a1 + 16))
            {
LABEL_64:
              LogDumpDB::commitToDisk(a1);
              v13 = __s1.__r_.__value_.__s.__data_[0];
              return v13 & 1;
            }

            if ((v18 + 112) != v17)
            {
              do
              {
                v19 = v18 + 112;
                ResetInfo::operator=(v18, (v18 + 112));
                v20 = (v18 + 224);
                v18 += 112;
              }

              while (v20 != v17);
              v17 = *(a1 + 32);
              v18 = v19;
            }

            if (v17 == v18)
            {
LABEL_63:
              *(a1 + 32) = v18;
              goto LABEL_64;
            }

            while (1)
            {
              if (*(v17 - 1) < 0)
              {
                operator delete(*(v17 - 3));
                if (*(v17 - 41) < 0)
                {
                  goto LABEL_60;
                }

LABEL_57:
                if ((*(v17 - 65) & 0x80000000) == 0)
                {
                  goto LABEL_61;
                }

LABEL_53:
                operator delete(*(v17 - 11));
                v21 = (v17 - 112);
                if (*(v17 - 89) < 0)
                {
                  goto LABEL_62;
                }

LABEL_54:
                v17 = v21;
                if (v21 == v18)
                {
                  goto LABEL_63;
                }
              }

              else
              {
                if ((*(v17 - 41) & 0x80000000) == 0)
                {
                  goto LABEL_57;
                }

LABEL_60:
                operator delete(*(v17 - 8));
                if (*(v17 - 65) < 0)
                {
                  goto LABEL_53;
                }

LABEL_61:
                v21 = (v17 - 112);
                if ((*(v17 - 89) & 0x80000000) == 0)
                {
                  goto LABEL_54;
                }

LABEL_62:
                operator delete(*v21);
                v17 = v21;
                if (v21 == v18)
                {
                  goto LABEL_63;
                }
              }
            }
          }

LABEL_46:
          v17 = std::vector<ResetInfo>::__emplace_back_slow_path<ResetInfo const&>((a1 + 24), a2);
          goto LABEL_47;
        }

        while (1)
        {
          if (*(v15 - 1) < 0)
          {
            operator delete(*(v15 - 3));
            if (*(v15 - 41) < 0)
            {
              goto LABEL_36;
            }

LABEL_33:
            if ((*(v15 - 65) & 0x80000000) == 0)
            {
              goto LABEL_37;
            }

LABEL_29:
            operator delete(*(v15 - 11));
            v16 = v15 - 14;
            if (*(v15 - 89) < 0)
            {
              goto LABEL_38;
            }

LABEL_30:
            v15 = v16;
            if (v16 == v9)
            {
              goto LABEL_39;
            }
          }

          else
          {
            if ((*(v15 - 41) & 0x80000000) == 0)
            {
              goto LABEL_33;
            }

LABEL_36:
            operator delete(*(v15 - 8));
            if (*(v15 - 65) < 0)
            {
              goto LABEL_29;
            }

LABEL_37:
            v16 = v15 - 14;
            if ((*(v15 - 89) & 0x80000000) == 0)
            {
              goto LABEL_30;
            }

LABEL_38:
            operator delete(*v16);
            v15 = v16;
            if (v16 == v9)
            {
              goto LABEL_39;
            }
          }
        }
      }

LABEL_45:
      v9 = v15;
      if (v15 < *(a1 + 40))
      {
        goto LABEL_40;
      }

      goto LABEL_46;
    }
  }

  else if (v7 != SHIBYTE(__s1.__r_.__value_.__r.__words[2]) || memcmp(&__s1, v6, v7))
  {
    goto LABEL_7;
  }

  v13 = 0;
  return v13 & 1;
}

void LogDumpDB::writeToDB(LogDumpDB *this, const ResetInfo *a2)
{
  v3 = *(this + 4);
  if (v3 >= *(this + 5))
  {
    v4 = std::vector<ResetInfo>::__emplace_back_slow_path<ResetInfo const&>(this + 3, a2);
  }

  else
  {
    ResetInfo::ResetInfo(*(this + 4), a2);
    v4 = (v3 + 112);
    *(this + 4) = v4;
  }

  *(this + 4) = v4;
  v5 = *(this + 3);
  if (0x6DB6DB6DB6DB6DB7 * (&v4[-v5] >> 4) > *(this + 4))
  {
    if ((v5 + 112) != v4)
    {
      do
      {
        v6 = v5 + 112;
        ResetInfo::operator=(v5, (v5 + 112));
        v7 = (v5 + 224);
        v5 += 112;
      }

      while (v7 != v4);
      v4 = *(this + 4);
      v5 = v6;
    }

    if (v4 == v5)
    {
LABEL_9:
      *(this + 4) = v5;
      goto LABEL_10;
    }

    while (1)
    {
      if (*(v4 - 1) < 0)
      {
        operator delete(*(v4 - 3));
        if ((*(v4 - 41) & 0x80000000) == 0)
        {
LABEL_16:
          if ((*(v4 - 65) & 0x80000000) == 0)
          {
            goto LABEL_17;
          }

          goto LABEL_21;
        }
      }

      else if ((*(v4 - 41) & 0x80000000) == 0)
      {
        goto LABEL_16;
      }

      operator delete(*(v4 - 8));
      if ((*(v4 - 65) & 0x80000000) == 0)
      {
LABEL_17:
        v8 = (v4 - 112);
        if (*(v4 - 89) < 0)
        {
          goto LABEL_22;
        }

        goto LABEL_13;
      }

LABEL_21:
      operator delete(*(v4 - 11));
      v8 = (v4 - 112);
      if (*(v4 - 89) < 0)
      {
LABEL_22:
        operator delete(*v8);
      }

LABEL_13:
      v4 = v8;
      if (v8 == v5)
      {
        goto LABEL_9;
      }
    }
  }

LABEL_10:

  LogDumpDB::commitToDisk(this);
}

void LogDumpDB::queryLogDumpDB(LogDumpDB *this, xpc_object_t *a2)
{
  if (*(this + 4) != *(this + 3))
  {
    v3 = xpc_dictionary_create(0, 0, 0);
    v4 = MEMORY[0x29EDCAA00];
    if (v3 || (v3 = xpc_null_create()) != 0)
    {
      if (MEMORY[0x29C272BA0](v3) == v4)
      {
        xpc_retain(v3);
        v5 = v3;
      }

      else
      {
        v5 = xpc_null_create();
      }
    }

    else
    {
      v5 = xpc_null_create();
      v3 = 0;
    }

    xpc_release(v3);
    v6 = xpc_null_create();
    v7 = *a2;
    *a2 = v5;
    xpc_release(v7);
    xpc_release(v6);
    v8 = xpc_array_create(0, 0);
    v9 = MEMORY[0x29EDCA9E0];
    if (v8 || (v8 = xpc_null_create()) != 0)
    {
      if (MEMORY[0x29C272BA0](v8) == v9)
      {
        xpc_retain(v8);
        v10 = v8;
      }

      else
      {
        v10 = xpc_null_create();
      }
    }

    else
    {
      v10 = xpc_null_create();
      v8 = 0;
    }

    xpc_release(v8);
    if (MEMORY[0x29C272BA0](v10) != v9)
    {
      v11 = *(this + 1);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf.__r_.__value_.__l.__data_) = 0;
        _os_log_error_impl(&dword_297476000, v11, OS_LOG_TYPE_ERROR, "Failed to create xpc array for querying logdump DB", &buf, 2u);
      }

LABEL_81:
      xpc_release(v10);
      return;
    }

    v12 = *(this + 3);
    if (v12 == *(this + 4))
    {
LABEL_77:
      if (v10)
      {
        xpc_retain(v10);
        v35 = v10;
      }

      else
      {
        v35 = xpc_null_create();
      }

      xpc_dictionary_set_value(*a2, *MEMORY[0x29EDBE868], v35);
      v36 = xpc_null_create();
      xpc_release(v35);
      xpc_release(v36);
      goto LABEL_81;
    }

    key = *MEMORY[0x29EDBEC80];
    v40 = *MEMORY[0x29EDBEEE0];
    v39 = *MEMORY[0x29EDBED78];
    v38 = *MEMORY[0x29EDBEB00];
    v13 = *MEMORY[0x29EDBEF60];
    while (1)
    {
      v14 = xpc_dictionary_create(0, 0, 0);
      if (v14 || (v14 = xpc_null_create()) != 0)
      {
        if (MEMORY[0x29C272BA0](v14) == v4)
        {
          xpc_retain(v14);
          v15 = v14;
        }

        else
        {
          v15 = xpc_null_create();
        }
      }

      else
      {
        v15 = xpc_null_create();
        v14 = 0;
      }

      xpc_release(v14);
      if (MEMORY[0x29C272BA0](v15) == v4)
      {
        break;
      }

      v16 = *(this + 1);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf.__r_.__value_.__l.__data_) = 0;
        _os_log_error_impl(&dword_297476000, v16, OS_LOG_TYPE_ERROR, "Failed to create xpc dictionary for querying logdump DB", &buf, 2u);
      }

LABEL_76:
      xpc_release(v15);
      v12 += 7;
      if (v12 == *(this + 4))
      {
        goto LABEL_77;
      }
    }

    v17 = *(v12 + 9);
    v18 = operator new(0x38uLL);
    v18[8] = 0;
    *v18 = 0;
    *(v18 + 1) = 0;
    *(v18 + 2) = &buf.__r_.__value_.__l.__size_;
    buf.__r_.__value_.__r.__words[0] = v18;
    buf.__r_.__value_.__l.__size_ = v18;
    *(v18 + 24) = 1;
    buf.__r_.__value_.__r.__words[2] = 1;
    *(v18 + 5) = v17;
    *(v18 + 6) = 0xAAAAAAAA00000000;
    Timestamp::asString(&buf, 0, 9, __p);
    std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(&buf, buf.__r_.__value_.__l.__size_);
    if (v43 >= 0)
    {
      v19 = __p;
    }

    else
    {
      v19 = __p[0];
    }

    v20 = xpc_string_create(v19);
    if (!v20)
    {
      v20 = xpc_null_create();
    }

    xpc_dictionary_set_value(v15, key, v20);
    v21 = xpc_null_create();
    xpc_release(v20);
    xpc_release(v21);
    if (v43 < 0)
    {
      operator delete(__p[0]);
      if ((*(v12 + 47) & 0x80000000) == 0)
      {
        goto LABEL_35;
      }
    }

    else if ((*(v12 + 47) & 0x80000000) == 0)
    {
LABEL_35:
      buf = *(v12 + 1);
      goto LABEL_38;
    }

    std::string::__init_copy_ctor_external(&buf, *(v12 + 3), *(v12 + 4));
LABEL_38:
    if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_buf = &buf;
    }

    else
    {
      p_buf = buf.__r_.__value_.__r.__words[0];
    }

    v23 = xpc_string_create(p_buf);
    if (!v23)
    {
      v23 = xpc_null_create();
    }

    xpc_dictionary_set_value(v15, v40, v23);
    v24 = xpc_null_create();
    xpc_release(v23);
    xpc_release(v24);
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
      if ((*(v12 + 111) & 0x80000000) == 0)
      {
        goto LABEL_45;
      }
    }

    else if ((*(v12 + 111) & 0x80000000) == 0)
    {
LABEL_45:
      buf = *(v12 + 88);
      goto LABEL_48;
    }

    std::string::__init_copy_ctor_external(&buf, *(v12 + 11), *(v12 + 12));
LABEL_48:
    if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v25 = &buf;
    }

    else
    {
      v25 = buf.__r_.__value_.__r.__words[0];
    }

    v26 = xpc_string_create(v25);
    if (!v26)
    {
      v26 = xpc_null_create();
    }

    xpc_dictionary_set_value(v15, v39, v26);
    v27 = xpc_null_create();
    xpc_release(v26);
    xpc_release(v27);
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
      if ((*(v12 + 23) & 0x80000000) == 0)
      {
        goto LABEL_55;
      }
    }

    else if ((*(v12 + 23) & 0x80000000) == 0)
    {
LABEL_55:
      v28 = *v12;
      buf.__r_.__value_.__r.__words[2] = *(v12 + 2);
      *&buf.__r_.__value_.__l.__data_ = v28;
      goto LABEL_58;
    }

    std::string::__init_copy_ctor_external(&buf, *v12, *(v12 + 1));
LABEL_58:
    if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v29 = &buf;
    }

    else
    {
      v29 = buf.__r_.__value_.__r.__words[0];
    }

    v30 = xpc_string_create(v29);
    if (!v30)
    {
      v30 = xpc_null_create();
    }

    xpc_dictionary_set_value(v15, v38, v30);
    v31 = xpc_null_create();
    xpc_release(v30);
    xpc_release(v31);
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
      if ((*(v12 + 71) & 0x80000000) == 0)
      {
        goto LABEL_65;
      }
    }

    else if ((*(v12 + 71) & 0x80000000) == 0)
    {
LABEL_65:
      buf = *(v12 + 2);
LABEL_68:
      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v32 = &buf;
      }

      else
      {
        v32 = buf.__r_.__value_.__r.__words[0];
      }

      v33 = xpc_string_create(v32);
      if (!v33)
      {
        v33 = xpc_null_create();
      }

      xpc_dictionary_set_value(v15, v13, v33);
      v34 = xpc_null_create();
      xpc_release(v33);
      xpc_release(v34);
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }

      xpc_array_append_value(v10, v15);
      goto LABEL_76;
    }

    std::string::__init_copy_ctor_external(&buf, *(v12 + 6), *(v12 + 7));
    goto LABEL_68;
  }
}

void ***std::vector<ResetInfo>::~vector[abi:ne200100](void ***a1)
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
        if ((*(v3 - 41) & 0x80000000) == 0)
        {
LABEL_7:
          if ((*(v3 - 65) & 0x80000000) == 0)
          {
            goto LABEL_8;
          }

          goto LABEL_12;
        }
      }

      else if ((*(v3 - 41) & 0x80000000) == 0)
      {
        goto LABEL_7;
      }

      operator delete(*(v3 - 8));
      if ((*(v3 - 65) & 0x80000000) == 0)
      {
LABEL_8:
        v5 = v3 - 14;
        if (*(v3 - 89) < 0)
        {
          goto LABEL_13;
        }

        goto LABEL_4;
      }

LABEL_12:
      operator delete(*(v3 - 11));
      v5 = v3 - 14;
      if (*(v3 - 89) < 0)
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

std::string::value_type *std::vector<ResetInfo>::__emplace_back_slow_path<ResetInfo const&>(const ResetInfo **a1, const ResetInfo *a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x249249249249249)
  {
    std::vector<dispatch::callback<void({block_pointer})(sar::OBDState,sar::TunerState)>>::__throw_length_error[abi:ne200100]();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 4);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 4)) >= 0x124924924924924)
  {
    v5 = 0x249249249249249;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 > 0x249249249249249)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v6 = a2;
    v7 = operator new(112 * v5);
    a2 = v6;
  }

  else
  {
    v7 = 0;
  }

  v16 = &v7[112 * v2];
  v17 = &v7[112 * v5];
  ResetInfo::ResetInfo(v16, a2);
  v8 = *a1;
  v9 = a1[1];
  v10 = *a1 - v9;
  v11 = (v16 + v10);
  if (*a1 != v9)
  {
    v12 = 0;
    v13 = *a1;
    v14 = (v16 + v10);
    do
    {
      ResetInfo::ResetInfo(v14, v13);
      v13 = (v13 + 112);
      v14 = (v14 + 112);
      v12 -= 112;
    }

    while (v13 != v9);
    while (1)
    {
      if (*(v8 + 111) < 0)
      {
        operator delete(*(v8 + 11));
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

      operator delete(*(v8 + 6));
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
      operator delete(*(v8 + 3));
      if (*(v8 + 23) < 0)
      {
LABEL_24:
        operator delete(*v8);
      }

LABEL_15:
      v8 = (v8 + 112);
      if (v8 == v9)
      {
        v8 = *a1;
        break;
      }
    }
  }

  *a1 = v11;
  a1[1] = &v16[4].__r_.__value_.__r.__words[2];
  a1[2] = v17;
  if (v8)
  {
    operator delete(v8);
  }

  return &v16[4].__r_.__value_.__s.__data_[16];
}

void sub_2974F42FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<ResetInfo>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void sub_2974F4310(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (v3)
  {
    v5 = (v2 - 112);
    do
    {
      ResetInfo::~ResetInfo(v5);
      v5 = (v6 - 112);
      v3 += 112;
    }

    while (v3);
  }

  std::__split_buffer<ResetInfo>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<ResetInfo>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 112;
    if (*(i - 1) < 0)
    {
      operator delete(*(i - 24));
      if ((*(i - 41) & 0x80000000) == 0)
      {
LABEL_6:
        if (*(i - 65) < 0)
        {
          goto LABEL_11;
        }

        goto LABEL_7;
      }
    }

    else if ((*(i - 41) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    operator delete(*(i - 64));
    if (*(i - 65) < 0)
    {
LABEL_11:
      operator delete(*(i - 88));
      if ((*(i - 89) & 0x80000000) == 0)
      {
        continue;
      }

      goto LABEL_12;
    }

LABEL_7:
    if ((*(i - 89) & 0x80000000) == 0)
    {
      continue;
    }

LABEL_12:
    operator delete(*(i - 112));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

BOOL LogDumpDB::writeToDB(ResetInfo const&,std::chrono::duration<long long,std::ratio<1l,1l>>)::$_0::operator()(uint64_t a1, const ResetInfo *a2)
{
  v37 = *MEMORY[0x29EDCA608];
  v4 = *a1;
  result = LogDumpDB::checkIfDuplicatedSignature(*a1, a2, (a1 + 16));
  if (result)
  {
    v6 = *(a2 + 9);
    if (*(a1 + 88) - v6 < *(a1 + 128))
    {
      v7 = *(v4 + 1);
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
LABEL_24:
        result = 1;
        **(a1 + 8) = 1;
        goto LABEL_25;
      }

      v8 = operator new(0x38uLL);
      v8[8] = 0;
      *v8 = 0;
      *(v8 + 1) = 0;
      *(v8 + 2) = &v24.__r_.__value_.__l.__size_;
      v24.__r_.__value_.__r.__words[0] = v8;
      v24.__r_.__value_.__l.__size_ = v8;
      *(v8 + 24) = 1;
      v24.__r_.__value_.__r.__words[2] = 1;
      *(v8 + 5) = v6;
      *(v8 + 6) = 0xAAAAAAAA00000000;
      v9 = v22;
      Timestamp::asString(&v24, 0, 9, v22);
      std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(&v24, v24.__r_.__value_.__l.__size_);
      if (v23 < 0)
      {
        v9 = v22[0];
      }

      v10 = *(a1 + 88);
      v11 = operator new(0x38uLL);
      v11[8] = 0;
      *v11 = 0;
      *(v11 + 1) = 0;
      *(v11 + 2) = &v24.__r_.__value_.__l.__size_;
      v24.__r_.__value_.__r.__words[0] = v11;
      v24.__r_.__value_.__l.__size_ = v11;
      *(v11 + 24) = 1;
      v24.__r_.__value_.__r.__words[2] = 1;
      *(v11 + 5) = v10;
      *(v11 + 6) = 0xAAAAAAAA00000000;
      Timestamp::asString(&v24, 0, 9, v20);
      std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(&v24, v24.__r_.__value_.__l.__size_);
      if (v21 >= 0)
      {
        v12 = v20;
      }

      else
      {
        v12 = v20[0];
      }

      v13 = *(a1 + 88);
      if (*(a1 + 87) < 0)
      {
        std::string::__init_copy_ctor_external(&v24, *(a1 + 64), *(a1 + 72));
      }

      else
      {
        v24 = *(a1 + 64);
      }

      v14 = SHIBYTE(v24.__r_.__value_.__r.__words[2]);
      v15 = v24.__r_.__value_.__r.__words[0];
      if (*(a1 + 127) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *(a1 + 104), *(a1 + 112));
      }

      else
      {
        __p = *(a1 + 104);
      }

      v16 = &v24;
      if (v14 < 0)
      {
        v16 = v15;
      }

      p_p = &__p;
      *buf = 136316418;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      v26 = v9;
      v27 = 2050;
      v28 = v6;
      v29 = 2080;
      v30 = v12;
      v31 = 2050;
      v32 = v13;
      v33 = 2082;
      v34 = v16;
      v35 = 2082;
      v36 = p_p;
      _os_log_impl(&dword_297476000, v7, OS_LOG_TYPE_DEFAULT, "#I Found duplicated log at timestamp: %s[%{public}llu], new log timestamp: %s[%{public}llu], dump reason: %{public}s, crash reason: %{public}s", buf, 0x3Eu);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_22:
          if ((v21 & 0x80000000) == 0)
          {
            goto LABEL_23;
          }

          goto LABEL_28;
        }
      }

      else if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_22;
      }

      operator delete(v24.__r_.__value_.__l.__data_);
      if ((v21 & 0x80000000) == 0)
      {
LABEL_23:
        if ((v23 & 0x80000000) == 0)
        {
          goto LABEL_24;
        }

LABEL_29:
        operator delete(v22[0]);
        goto LABEL_24;
      }

LABEL_28:
      operator delete(v20[0]);
      if ((v23 & 0x80000000) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_29;
    }

    result = 0;
  }

LABEL_25:
  v18 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2974F4708(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
    if ((a18 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a24 & 0x80000000) == 0)
      {
LABEL_8:
        _Unwind_Resume(exception_object);
      }

LABEL_7:
      operator delete(a19);
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a18 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a13);
  if ((a24 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

_OWORD *ResetInfo::operator=(_OWORD *result, void *a2)
{
  v2 = a2;
  v3 = result;
  if (result == a2)
  {
    v7 = a2[9];
    *(result + 20) = *(a2 + 20);
    *(result + 9) = v7;
    return result;
  }

  if (*(result + 23) < 0)
  {
    if (*(a2 + 23) >= 0)
    {
      v8 = *(a2 + 23);
    }

    else
    {
      a2 = *a2;
      v8 = v2[1];
    }

    std::string::__assign_no_alias<false>(result, a2, v8);
    v5 = v2 + 3;
    v6 = *(v2 + 47);
    if (*(v3 + 47) < 0)
    {
LABEL_15:
      if ((v6 & 0x80u) == 0)
      {
        v12 = v5;
      }

      else
      {
        v12 = v2[3];
      }

      if ((v6 & 0x80u) == 0)
      {
        v13 = v6;
      }

      else
      {
        v13 = v2[4];
      }

      std::string::__assign_no_alias<false>((v3 + 24), v12, v13);
      v10 = v2 + 6;
      v11 = *(v2 + 71);
      if ((*(v3 + 71) & 0x80000000) == 0)
      {
        goto LABEL_22;
      }

LABEL_25:
      if ((v11 & 0x80u) == 0)
      {
        v15 = v10;
      }

      else
      {
        v15 = v2[6];
      }

      if ((v11 & 0x80u) == 0)
      {
        v16 = v11;
      }

      else
      {
        v16 = v2[7];
      }

      std::string::__assign_no_alias<false>((v3 + 48), v15, v16);
      goto LABEL_33;
    }
  }

  else if ((*(a2 + 23) & 0x80) != 0)
  {
    std::string::__assign_no_alias<true>(result, *a2, a2[1]);
    v5 = v2 + 3;
    v6 = *(v2 + 47);
    if (*(v3 + 47) < 0)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v4 = *a2;
    *(result + 2) = a2[2];
    *result = v4;
    v5 = a2 + 3;
    v6 = *(a2 + 47);
    if (*(result + 47) < 0)
    {
      goto LABEL_15;
    }
  }

  if ((v6 & 0x80) != 0)
  {
    std::string::__assign_no_alias<true>((v3 + 24), v2[3], v2[4]);
    v10 = v2 + 6;
    v11 = *(v2 + 71);
    if (*(v3 + 71) < 0)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v9 = *v5;
    *(v3 + 40) = v5[2];
    *(v3 + 24) = v9;
    v10 = v2 + 6;
    v11 = *(v2 + 71);
    if (*(v3 + 71) < 0)
    {
      goto LABEL_25;
    }
  }

LABEL_22:
  if ((v11 & 0x80) != 0)
  {
    std::string::__assign_no_alias<true>((v3 + 48), v2[6], v2[7]);
  }

  else
  {
    v14 = *v10;
    *(v3 + 64) = v10[2];
    *(v3 + 48) = v14;
  }

LABEL_33:
  v17 = v2[9];
  *(v3 + 80) = *(v2 + 20);
  *(v3 + 72) = v17;
  v18 = *(v2 + 111);
  if (*(v3 + 111) < 0)
  {
    if (v18 >= 0)
    {
      v20 = v2 + 11;
    }

    else
    {
      v20 = v2[11];
    }

    if (v18 >= 0)
    {
      v21 = *(v2 + 111);
    }

    else
    {
      v21 = v2[12];
    }

    std::string::__assign_no_alias<false>((v3 + 88), v20, v21);
    return v3;
  }

  else
  {
    if ((*(v2 + 111) & 0x80) != 0)
    {
      std::string::__assign_no_alias<true>((v3 + 88), v2[11], v2[12]);
    }

    else
    {
      v19 = *(v2 + 11);
      *(v3 + 104) = v2[13];
      *(v3 + 88) = v19;
    }

    return v3;
  }
}

void ResetInfo::ResetInfo(std::string *this, const ResetInfo *a2)
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
    v6 = *(a2 + 3);
    this[2].__r_.__value_.__r.__words[2] = *(a2 + 8);
    *&this[2].__r_.__value_.__l.__data_ = v6;
  }

  v7 = *(a2 + 9);
  LODWORD(this[3].__r_.__value_.__r.__words[1]) = *(a2 + 20);
  this[3].__r_.__value_.__r.__words[0] = v7;
  if (*(a2 + 111) < 0)
  {
    std::string::__init_copy_ctor_external((this + 88), *(a2 + 11), *(a2 + 12));
  }

  else
  {
    v8 = *(a2 + 88);
    this[4].__r_.__value_.__l.__size_ = *(a2 + 13);
    *&this[3].__r_.__value_.__r.__words[2] = v8;
  }
}

void sub_2974F4A90(_Unwind_Exception *exception_object)
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

BOOL ctu::cf::plist_adapter::set<__CFArray *>(uint64_t a1, CFTypeRef cf, const __CFString *a3, int a4)
{
  if (!cf)
  {
    return 0;
  }

  CFRetain(cf);
  v8 = *MEMORY[0x29EDB8FA8];
  CFPreferencesSetValue(a3, cf, *(a1 + 8), *(a1 + 16), *MEMORY[0x29EDB8FA8]);
  if (a4)
  {
    v9 = CFPreferencesSynchronize(*(a1 + 8), *(a1 + 16), v8) != 0;
  }

  else
  {
    v9 = 1;
  }

  CFRelease(cf);
  return v9;
}

void sub_2974F4BB0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  _Unwind_Resume(a1);
}

uint64_t __cxx_global_var_init_1()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<SharedData>::~PthreadMutexGuardPolicy, &ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance, &dword_297476000);
  }

  return result;
}

void coex::XpcClient::create(uint64_t a1@<X0>, atomic_ullong *a2@<X8>)
{
  memset(&__p, 170, sizeof(__p));
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a1, *(a1 + 8));
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    if (!size)
    {
      goto LABEL_9;
    }
  }

  else
  {
    __p = *a1;
    v3 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v3 = __p.__r_.__value_.__l.__size_;
    }

    if (!v3)
    {
LABEL_9:
      std::string::__assign_external(&__p, "com.apple.WirelessCoexManager", 0x1DuLL);
    }
  }

  *a2 = 0xAAAAAAAAAAAAAAAALL;
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  v5 = operator new(0x80uLL);
  coex::XpcClient::XpcClient(v5, &__p);
  std::shared_ptr<coex::XpcClient>::shared_ptr[abi:ne200100]<coex::XpcClient,std::shared_ptr<coex::XpcClient> ctu::SharedSynchronizable<ctu::XpcClient>::make_shared_ptr<coex::XpcClient>(coex::XpcClient*)::{lambda(coex::XpcClient*)#1},0>(a2, v5);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_2974F4CEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  operator delete(v14);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t coex::XpcClient::XpcClient(uint64_t a1, __int128 *a2)
{
  v14 = *MEMORY[0x29EDCA608];
  v11 = 8;
  strcpy(__p, "coex.xpc");
  ctu::XpcClient::XpcClient();
  ctu::OsLogContext::OsLogContext(buf, "com.apple.telephony.abm", "coex.xpc");
  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x29C270D50](a1 + 72, &v9);
  MEMORY[0x29C270D60](&v9);
  ctu::OsLogContext::~OsLogContext(buf);
  *a1 = &unk_2A1E45230;
  v4 = (a1 + 80);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 80), *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(a1 + 96) = *(a2 + 2);
    *v4 = v5;
  }

  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 104) = a1 + 112;
  v6 = *(a1 + 72);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 103) < 0)
    {
      v4 = *v4;
    }

    *buf = 136315138;
    v13 = v4;
    _os_log_impl(&dword_297476000, v6, OS_LOG_TYPE_DEFAULT, "#I Created with name %s", buf, 0xCu);
  }

  v7 = *MEMORY[0x29EDCA608];
  return a1;
}

void coex::XpcClient::~XpcClient(coex::XpcClient *this)
{
  *this = &unk_2A1E45230;
  std::__tree<std::__value_type<WCMSendMessageId,dispatch::block<void({block_pointer})(xpc::object,coex::SubId)>>,std::__map_value_compare<WCMSendMessageId,std::__value_type<WCMSendMessageId,dispatch::block<void({block_pointer})(xpc::object,coex::SubId)>>,std::less<WCMSendMessageId>,true>,std::allocator<std::__value_type<WCMSendMessageId,dispatch::block<void({block_pointer})(xpc::object,coex::SubId)>>>>::destroy(*(this + 14));
  if (*(this + 103) < 0)
  {
    operator delete(*(this + 10));
  }

  MEMORY[0x29C270D60](this + 72);

  ctu::XpcClient::~XpcClient(this);
}

{
  *this = &unk_2A1E45230;
  std::__tree<std::__value_type<WCMSendMessageId,dispatch::block<void({block_pointer})(xpc::object,coex::SubId)>>,std::__map_value_compare<WCMSendMessageId,std::__value_type<WCMSendMessageId,dispatch::block<void({block_pointer})(xpc::object,coex::SubId)>>,std::less<WCMSendMessageId>,true>,std::allocator<std::__value_type<WCMSendMessageId,dispatch::block<void({block_pointer})(xpc::object,coex::SubId)>>>>::destroy(*(this + 14));
  if (*(this + 103) < 0)
  {
    operator delete(*(this + 10));
  }

  MEMORY[0x29C270D60](this + 72);

  ctu::XpcClient::~XpcClient(this);
}

{
  *this = &unk_2A1E45230;
  std::__tree<std::__value_type<WCMSendMessageId,dispatch::block<void({block_pointer})(xpc::object,coex::SubId)>>,std::__map_value_compare<WCMSendMessageId,std::__value_type<WCMSendMessageId,dispatch::block<void({block_pointer})(xpc::object,coex::SubId)>>,std::less<WCMSendMessageId>,true>,std::allocator<std::__value_type<WCMSendMessageId,dispatch::block<void({block_pointer})(xpc::object,coex::SubId)>>>>::destroy(*(this + 14));
  if (*(this + 103) < 0)
  {
    operator delete(*(this + 10));
  }

  MEMORY[0x29C270D60](this + 72);
  ctu::XpcClient::~XpcClient(this);

  operator delete(v2);
}

void coex::XpcClient::start(coex::XpcClient *this)
{
  v3[0] = MEMORY[0x29EDCA5F8];
  v3[1] = 0x40000000;
  v3[2] = ___ZN4coex9XpcClient5startEv_block_invoke;
  v3[3] = &__block_descriptor_tmp_4;
  v3[4] = this;
  v4 = v3;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableINS_9XpcClientEE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  block[3] = &__block_descriptor_tmp_14;
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

void ___ZN4coex9XpcClient5startEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = (v1 + 80);
  if (*(v1 + 103) < 0)
  {
    mach_service = xpc_connection_create_mach_service(*v2, *(v1 + 24), 2uLL);
    if (mach_service)
    {
      goto LABEL_3;
    }
  }

  else
  {
    mach_service = xpc_connection_create_mach_service(v2, *(v1 + 24), 2uLL);
    if (mach_service)
    {
LABEL_3:
      v4 = mach_service;
      object = mach_service;
      goto LABEL_6;
    }
  }

  v4 = xpc_null_create();
  object = v4;
  if (!v4)
  {
    v4 = 0;
    object = xpc_null_create();
    goto LABEL_7;
  }

LABEL_6:
  xpc_retain(v4);
LABEL_7:
  ctu::XpcClient::setServer_sync();
  xpc_release(object);
  coex::XpcClient::register_sync(v1);
  xpc_release(v4);
}

void sub_2974F51F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(v10);
  _Unwind_Resume(a1);
}

void coex::XpcClient::register_sync(coex::XpcClient *this)
{
  v2 = *(this + 9);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_297476000, v2, OS_LOG_TYPE_DEFAULT, "#I Registering", buf, 2u);
  }

  v3 = xpc_dictionary_create(0, 0, 0);
  if (v3 || (v3 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C272BA0](v3) == MEMORY[0x29EDCAA00])
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
  v5 = xpc_int64_create(3);
  if (!v5)
  {
    v5 = xpc_null_create();
  }

  xpc_dictionary_set_value(v4, "kWCMRegisterProcess_ProcessId", v5);
  v6 = xpc_null_create();
  xpc_release(v5);
  xpc_release(v6);
  v8 = v4;
  if (v4)
  {
    xpc_retain(v4);
    v7 = v8;
  }

  else
  {
    v7 = xpc_null_create();
    v8 = v7;
  }

  coex::XpcClient::sendMessage(this, 1, &v8, 0);
  xpc_release(v7);
  v8 = 0;
  xpc_release(v4);
}

void coex::XpcClient::sendMessage(uint64_t a1, int a2, void **a3, int a4)
{
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 1174405120;
  v7[2] = ___ZN4coex9XpcClient11sendMessageE19WCMReceiveMessageIdN3xpc6objectENS_5SubIdE_block_invoke;
  v7[3] = &__block_descriptor_tmp_7_1;
  v9 = a2;
  v6 = *a3;
  v7[4] = a1;
  object = v6;
  if (v6)
  {
    xpc_retain(v6);
  }

  else
  {
    object = xpc_null_create();
  }

  v10 = a4;
  ctu::SharedSynchronizable<ctu::XpcClient>::execute_wrapped((a1 + 8), v7);
  xpc_release(object);
}

void coex::XpcClient::registerCommandHandler(uint64_t a1, int a2, void **a3)
{
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 1174405120;
  v5[2] = ___ZN4coex9XpcClient22registerCommandHandlerE16WCMSendMessageIdN8dispatch5blockIU13block_pointerFvN3xpc6objectENS_5SubIdEEEE_block_invoke;
  v5[3] = &__block_descriptor_tmp_5_6;
  v5[4] = a1;
  v7 = a2;
  v4 = *a3;
  if (*a3)
  {
    v4 = _Block_copy(v4);
  }

  aBlock = v4;
  ctu::SharedSynchronizable<ctu::XpcClient>::execute_wrapped((a1 + 8), v5);
  if (aBlock)
  {
    _Block_release(aBlock);
  }
}

void ___ZN4coex9XpcClient22registerCommandHandlerE16WCMSendMessageIdN8dispatch5blockIU13block_pointerFvN3xpc6objectENS_5SubIdEEEE_block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v2)
  {
    v4 = _Block_copy(v2);
    v6 = (v3 + 112);
    v5 = *(v3 + 112);
    v7 = *(a1 + 48);
    if (v5)
    {
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  v4 = 0;
  v6 = (v3 + 112);
  v5 = *(v3 + 112);
  v7 = *(a1 + 48);
  if (!v5)
  {
LABEL_5:
    v8 = v6;
LABEL_11:
    v10 = operator new(0x30uLL);
    v10[8] = v7;
    *(v10 + 5) = 0;
    *v10 = 0;
    *(v10 + 1) = 0;
    *(v10 + 2) = v8;
    *v6 = v10;
    v11 = **(v3 + 104);
    if (v11)
    {
      *(v3 + 104) = v11;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v3 + 112), v10);
    ++*(v3 + 120);
    v12 = *(v10 + 5);
    *(v10 + 5) = v4;
    if (!v12)
    {
      return;
    }

LABEL_16:
    _Block_release(v12);
    return;
  }

  while (1)
  {
LABEL_7:
    while (1)
    {
      v8 = v5;
      v9 = *(v5 + 32);
      if (v7 >= v9)
      {
        break;
      }

      v5 = *v8;
      v6 = v8;
      if (!*v8)
      {
        goto LABEL_11;
      }
    }

    if (v9 >= v7)
    {
      break;
    }

    v5 = v8[1];
    if (!v5)
    {
      v6 = v8 + 1;
      goto LABEL_11;
    }
  }

  v12 = v8[5];
  v8[5] = v4;
  if (v12)
  {
    goto LABEL_16;
  }
}

void sub_2974F561C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    _Block_release(v1);
  }

  _Unwind_Resume(exception_object);
}

void *__copy_helper_block_e8_40c68_ZTSN8dispatch5blockIU13block_pointerFvN3xpc6objectEN4coex5SubIdEEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 40) = result;
  return result;
}

void __destroy_helper_block_e8_40c68_ZTSN8dispatch5blockIU13block_pointerFvN3xpc6objectEN4coex5SubIdEEEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    _Block_release(v1);
  }
}

void ___ZN4coex9XpcClient11sendMessageE19WCMReceiveMessageIdN3xpc6objectENS_5SubIdE_block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  v3 = xpc_dictionary_create(0, 0, 0);
  v4 = v3;
  if (v3)
  {
    xdict = v3;
  }

  else
  {
    v4 = xpc_null_create();
    xdict = v4;
    if (!v4)
    {
      v5 = xpc_null_create();
      v4 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x29C272BA0](v4) == MEMORY[0x29EDCAA00])
  {
    xpc_retain(v4);
    goto LABEL_9;
  }

  v5 = xpc_null_create();
LABEL_8:
  xdict = v5;
LABEL_9:
  xpc_release(v4);
  v6 = xpc_uint64_create(*(a1 + 48));
  if (!v6)
  {
    v6 = xpc_null_create();
  }

  v7 = xdict;
  xpc_dictionary_set_value(xdict, "kMessageId", v6);
  v8 = xpc_null_create();
  xpc_release(v6);
  xpc_release(v8);
  v9 = *(a1 + 40);
  if (v9)
  {
    xpc_retain(*(a1 + 40));
  }

  else
  {
    v9 = xpc_null_create();
  }

  xpc_dictionary_set_value(xdict, "kMessageArgs", v9);
  v10 = xpc_null_create();
  xpc_release(v9);
  xpc_release(v10);
  v11 = xpc_uint64_create(*(a1 + 52));
  if (!v11)
  {
    v11 = xpc_null_create();
  }

  xpc_dictionary_set_value(xdict, "kSubId", v11);
  v12 = xpc_null_create();
  xpc_release(v11);
  xpc_release(v12);
  xpc_connection_send_message(*(v2 + 40), xdict);
  v13 = *(v2 + 72);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    xpc::object::to_string(__p, &xdict);
    if (v17 >= 0)
    {
      v15 = __p;
    }

    else
    {
      v15 = __p[0];
    }

    *buf = 136315138;
    v20 = v15;
    _os_log_debug_impl(&dword_297476000, v13, OS_LOG_TYPE_DEBUG, "#D Sending Message: \n\t%s\n", buf, 0xCu);
    if (v17 < 0)
    {
      operator delete(__p[0]);
    }

    v7 = xdict;
  }

  xpc_release(v7);
  v14 = *MEMORY[0x29EDCA608];
}

void sub_2974F58D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

xpc_object_t __copy_helper_block_e8_40c17_ZTSN3xpc6objectE(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  *(a1 + 40) = v3;
  if (v3)
  {
    return xpc_retain(v3);
  }

  result = xpc_null_create();
  *(a1 + 40) = result;
  return result;
}

void coex::XpcClient::handleServerError_sync(coex::XpcClient *a1, xpc::object *a2)
{
  v11 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 9);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    xpc::object::to_string(__p, a2);
    v6 = v8 >= 0 ? __p : __p[0];
    *buf = 136315138;
    v10 = v6;
    _os_log_error_impl(&dword_297476000, v4, OS_LOG_TYPE_ERROR, "Server Error: %s", buf, 0xCu);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (*a2 == MEMORY[0x29EDCA9B8])
  {
    coex::XpcClient::register_sync(a1);
  }

  v5 = *MEMORY[0x29EDCA608];
}

void coex::XpcClient::handleMessage_sync(uint64_t a1, xpc::object *a2)
{
  v27 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 72);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    xpc::object::to_string(buf, a2);
    v16 = v26 >= 0 ? buf : *buf;
    *v22 = 136315138;
    *&v22[4] = v16;
    _os_log_debug_impl(&dword_297476000, v4, OS_LOG_TYPE_DEBUG, "#D Got Message:\n%s", v22, 0xCu);
    if (v26 < 0)
    {
      operator delete(*buf);
    }
  }

  value = xpc_dictionary_get_value(*a2, "kMessageId");
  object = value;
  if (value)
  {
    v6 = value;
    xpc_retain(value);
    v7 = v6;
  }

  else
  {
    v7 = xpc_null_create();
    object = v7;
  }

  if (MEMORY[0x29C272BA0](v7) == MEMORY[0x29EDCAA40])
  {
    v13 = *(a1 + 72);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      xpc::object::to_string(buf, a2);
      v14 = v26 >= 0 ? buf : *buf;
      *v22 = 136315394;
      *&v22[4] = "kMessageId";
      v23 = 2080;
      v24 = v14;
      _os_log_error_impl(&dword_297476000, v13, OS_LOG_TYPE_ERROR, "Message was missing key %s from: %s", v22, 0x16u);
      if (v26 < 0)
      {
        operator delete(*buf);
      }
    }
  }

  else
  {
    v8 = xpc::dyn_cast_or_default(&object, 0);
    v9 = v8;
    v10 = *(a1 + 112);
    if (!v10)
    {
      goto LABEL_13;
    }

    v11 = a1 + 112;
    do
    {
      if (*(v10 + 32) >= v8)
      {
        v11 = v10;
      }

      v10 = *(v10 + 8 * (*(v10 + 32) < v8));
    }

    while (v10);
    if (v11 != a1 + 112 && *(v11 + 32) <= v8)
    {
      v15 = xpc_dictionary_get_value(*a2, "kSubId");
      *v22 = v15;
      if (v15)
      {
        xpc_retain(v15);
      }

      else
      {
        *v22 = xpc_null_create();
      }

      v17 = xpc::dyn_cast_or_default(v22, 0);
      v18 = *(v11 + 40);
      v19 = xpc_dictionary_get_value(*a2, "kMessageArgs");
      *buf = v19;
      if (v19)
      {
        xpc_retain(v19);
      }

      else
      {
        *buf = xpc_null_create();
      }

      (*(v18 + 16))(v18, buf, v17);
      xpc_release(*buf);
      xpc_release(*v22);
    }

    else
    {
LABEL_13:
      v12 = *(a1 + 72);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        *&buf[4] = v9;
        _os_log_error_impl(&dword_297476000, v12, OS_LOG_TYPE_ERROR, "Unrecognized command %d", buf, 8u);
      }
    }
  }

  xpc_release(object);
  v20 = *MEMORY[0x29EDCA608];
}

void sub_2974F5DA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t a10, xpc_object_t a11, uint64_t a12, uint64_t a13, uint64_t a14, xpc_object_t object)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

atomic_ullong *std::shared_ptr<coex::XpcClient>::shared_ptr[abi:ne200100]<coex::XpcClient,std::shared_ptr<coex::XpcClient> ctu::SharedSynchronizable<ctu::XpcClient>::make_shared_ptr<coex::XpcClient>(coex::XpcClient*)::{lambda(coex::XpcClient*)#1},0>(atomic_ullong *a1, atomic_ullong a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_2A1E45308;
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

void sub_2974F5F3C(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, std::shared_ptr<coex::XpcClient> ctu::SharedSynchronizable<ctu::XpcClient>::make_shared_ptr<coex::XpcClient>(coex::XpcClient*)::{lambda(coex::XpcClient*)#1}::operator() const(coex::XpcClient*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<coex::XpcClient *,std::shared_ptr<coex::XpcClient> ctu::SharedSynchronizable<ctu::XpcClient>::make_shared_ptr<coex::XpcClient>(coex::XpcClient*)::{lambda(coex::XpcClient *)#1},std::allocator<coex::XpcClient>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<coex::XpcClient *,std::shared_ptr<coex::XpcClient> ctu::SharedSynchronizable<ctu::XpcClient>::make_shared_ptr<coex::XpcClient>(coex::XpcClient*)::{lambda(coex::XpcClient *)#1},std::allocator<coex::XpcClient>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableINS_9XpcClientEE15make_shared_ptrIN4coex9XpcClientEEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableINS_9XpcClientEE15make_shared_ptrIN4coex9XpcClientEEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableINS_9XpcClientEE15make_shared_ptrIN4coex9XpcClientEEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableINS_9XpcClientEE15make_shared_ptrIN4coex9XpcClientEEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::shared_ptr<coex::XpcClient> ctu::SharedSynchronizable<ctu::XpcClient>::make_shared_ptr<coex::XpcClient>(coex::XpcClient*)::{lambda(coex::XpcClient*)#1}::operator() const(coex::XpcClient*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

void std::__tree<std::__value_type<WCMSendMessageId,dispatch::block<void({block_pointer})(xpc::object,coex::SubId)>>,std::__map_value_compare<WCMSendMessageId,std::__value_type<WCMSendMessageId,dispatch::block<void({block_pointer})(xpc::object,coex::SubId)>>,std::less<WCMSendMessageId>,true>,std::allocator<std::__value_type<WCMSendMessageId,dispatch::block<void({block_pointer})(xpc::object,coex::SubId)>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<WCMSendMessageId,dispatch::block<void({block_pointer})(xpc::object,coex::SubId)>>,std::__map_value_compare<WCMSendMessageId,std::__value_type<WCMSendMessageId,dispatch::block<void({block_pointer})(xpc::object,coex::SubId)>>,std::less<WCMSendMessageId>,true>,std::allocator<std::__value_type<WCMSendMessageId,dispatch::block<void({block_pointer})(xpc::object,coex::SubId)>>>>::destroy(*a1);
    std::__tree<std::__value_type<WCMSendMessageId,dispatch::block<void({block_pointer})(xpc::object,coex::SubId)>>,std::__map_value_compare<WCMSendMessageId,std::__value_type<WCMSendMessageId,dispatch::block<void({block_pointer})(xpc::object,coex::SubId)>>,std::less<WCMSendMessageId>,true>,std::allocator<std::__value_type<WCMSendMessageId,dispatch::block<void({block_pointer})(xpc::object,coex::SubId)>>>>::destroy(a1[1]);
    v2 = a1[5];
    if (v2)
    {
      _Block_release(v2);
    }

    operator delete(a1);
  }
}

void ctu::SharedSynchronizable<ctu::XpcClient>::execute_wrapped(uint64_t *a1, uint64_t a2)
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
  block[2] = ___ZNK3ctu20SharedSynchronizableINS_9XpcClientEE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_2A1E45350;
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

uint64_t __copy_helper_block_e8_40c43_ZTSNSt3__110shared_ptrIKN3ctu9XpcClientEEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c43_ZTSNSt3__110shared_ptrIKN3ctu9XpcClientEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

const char *asString(int a1)
{
  v1 = "???";
  if (a1 == 1)
  {
    v1 = "kEventHandlers";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return "kCommandHandlers";
  }
}

const char *asString(unsigned int a1)
{
  if (a1 > 3)
  {
    return "???";
  }

  else
  {
    return off_29EE6B8F8[a1];
  }
}

uint64_t ABMServiceManager::getScaledTimeoutSec(Registry **this, uint64_t a2)
{
  ScaledTime = 1000000 * a2;
  v5 = 0xAAAAAAAAAAAAAAAALL;
  v6 = 0xAAAAAAAAAAAAAAAALL;
  Registry::getAdaptiveTimerService(&v5, this[18]);
  if (v5)
  {
    ScaledTime = ctu::AdaptiveTimerService::getScaledTime();
  }

  v3 = v6;
  if (v6 && !atomic_fetch_add((v6 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  return ScaledTime / 1000000;
}

uint64_t ABMServiceManager::getBootstrapTimeoutSec(Registry **this)
{
  v5 = 0xAAAAAAAAAAAAAAAALL;
  v6 = 0xAAAAAAAAAAAAAAAALL;
  Registry::getAdaptiveTimerService(&v5, this[18]);
  if (v5)
  {
    ScaledTime = ctu::AdaptiveTimerService::getScaledTime();
    v2 = v6;
    if (!v6)
    {
      return ScaledTime / 1000000;
    }
  }

  else
  {
    ScaledTime = 12000000;
    v2 = v6;
    if (!v6)
    {
      return ScaledTime / 1000000;
    }
  }

  if (!atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v3 = ScaledTime;
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    ScaledTime = v3;
  }

  return ScaledTime / 1000000;
}

uint64_t ABMServiceManager::getStartTimeoutSec(Registry **this)
{
  v5 = 0xAAAAAAAAAAAAAAAALL;
  v6 = 0xAAAAAAAAAAAAAAAALL;
  Registry::getAdaptiveTimerService(&v5, this[18]);
  if (v5)
  {
    ScaledTime = ctu::AdaptiveTimerService::getScaledTime();
    v2 = v6;
    if (!v6)
    {
      return ScaledTime / 1000000;
    }
  }

  else
  {
    ScaledTime = 30000000;
    v2 = v6;
    if (!v6)
    {
      return ScaledTime / 1000000;
    }
  }

  if (!atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v3 = ScaledTime;
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    ScaledTime = v3;
  }

  return ScaledTime / 1000000;
}

uint64_t ABMServiceManager::getSleepTimeoutSec(Registry **this)
{
  v5 = 0xAAAAAAAAAAAAAAAALL;
  v6 = 0xAAAAAAAAAAAAAAAALL;
  Registry::getAdaptiveTimerService(&v5, this[18]);
  if (v5)
  {
    ScaledTime = ctu::AdaptiveTimerService::getScaledTime();
    v2 = v6;
    if (!v6)
    {
      return ScaledTime / 1000000;
    }
  }

  else
  {
    ScaledTime = 29000000;
    v2 = v6;
    if (!v6)
    {
      return ScaledTime / 1000000;
    }
  }

  if (!atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v3 = ScaledTime;
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    ScaledTime = v3;
  }

  return ScaledTime / 1000000;
}

uint64_t ABMServiceManager::getDefaultShutdownTimeoutSec(Registry **this)
{
  v5 = 0xAAAAAAAAAAAAAAAALL;
  v6 = 0xAAAAAAAAAAAAAAAALL;
  Registry::getAdaptiveTimerService(&v5, this[18]);
  if (v5)
  {
    ScaledTime = ctu::AdaptiveTimerService::getScaledTime();
    v2 = v6;
    if (!v6)
    {
      return ScaledTime / 1000000;
    }
  }

  else
  {
    ScaledTime = 5000000;
    v2 = v6;
    if (!v6)
    {
      return ScaledTime / 1000000;
    }
  }

  if (!atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v3 = ScaledTime;
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    ScaledTime = v3;
  }

  return ScaledTime / 1000000;
}

uint64_t ABMServiceManager::getShutdownTimeoutSec(Registry **a1, int a2)
{
  if (a2 == 1)
  {
    v10 = 0xAAAAAAAAAAAAAAAALL;
    v11 = 0xAAAAAAAAAAAAAAAALL;
    Registry::getAdaptiveTimerService(&v10, a1[18]);
    if (v10)
    {
      ScaledTime = ctu::AdaptiveTimerService::getScaledTime();
      v7 = v11;
      if (!v11)
      {
        return ScaledTime / 1000000;
      }
    }

    else
    {
      ScaledTime = 15000000;
      v7 = v11;
      if (!v11)
      {
        return ScaledTime / 1000000;
      }
    }

    if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v9 = ScaledTime;
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
      ScaledTime = v9;
    }

    return ScaledTime / 1000000;
  }

  if (a2)
  {
    v8 = *(*a1 + 10);

    return v8();
  }

  else
  {
    v3 = 30000000;
    if (config::hw::watch(a1) && ((TelephonyUtilIsInternalBuild() & 1) != 0 || TelephonyUtilIsCarrierBuild()))
    {
      v3 = 120000000;
    }

    v10 = 0xAAAAAAAAAAAAAAAALL;
    v11 = 0xAAAAAAAAAAAAAAAALL;
    Registry::getAdaptiveTimerService(&v10, a1[18]);
    if (v10)
    {
      v3 = ctu::AdaptiveTimerService::getScaledTime();
    }

    v4 = v11;
    if (v11)
    {
      if (!atomic_fetch_add((v11 + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v4->__on_zero_shared)(v4);
        std::__shared_weak_count::__release_weak(v4);
      }
    }

    return v3 / 1000000;
  }
}