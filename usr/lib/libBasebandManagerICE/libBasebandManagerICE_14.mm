void sub_297526DA4(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[11], v1, std::shared_ptr<BootModuleICE> ctu::SharedSynchronizable<BootModule>::make_shared_ptr<BootModuleICE>(BootModuleICE*)::{lambda(BootModuleICE*)#1}::operator() const(BootModuleICE*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<BootModuleICE *,std::shared_ptr<BootModuleICE> ctu::SharedSynchronizable<BootModule>::make_shared_ptr<BootModuleICE>(BootModuleICE*)::{lambda(BootModuleICE *)#1},std::allocator<BootModuleICE>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<BootModuleICE *,std::shared_ptr<BootModuleICE> ctu::SharedSynchronizable<BootModule>::make_shared_ptr<BootModuleICE>(BootModuleICE*)::{lambda(BootModuleICE *)#1},std::allocator<BootModuleICE>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableI10BootModuleE15make_shared_ptrI13BootModuleICEEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableI10BootModuleE15make_shared_ptrI13BootModuleICEEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableI10BootModuleE15make_shared_ptrI13BootModuleICEEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableI10BootModuleE15make_shared_ptrI13BootModuleICEEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::shared_ptr<BootModuleICE> ctu::SharedSynchronizable<BootModule>::make_shared_ptr<BootModuleICE>(BootModuleICE*)::{lambda(BootModuleICE*)#1}::operator() const(BootModuleICE*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void _ZNSt3__115allocate_sharedB8ne200100I20BootControllerLegacyNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_(uint64_t *a1@<X8>)
{
  v2 = operator new(0x68uLL);
  v2->__shared_owners_ = 0;
  v2->__shared_weak_owners_ = 0;
  v2->__vftable = &unk_2A1E461C0;
  BootController::BootController(&v2[1]);
  v2[1].__vftable = &unk_2A1E4E3E8;
  LOBYTE(v2[4].__vftable) = 1;
  *a1 = v3;
  a1[1] = v2;
  atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v2[3].__shared_owners_ = v3;
  v2[3].__shared_weak_owners_ = v2;
  if (!atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);

    std::__shared_weak_count::__release_weak(v2);
  }
}

void sub_297526F94(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<BootControllerLegacy>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E461C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<BootControllerLegacy>::__on_zero_shared(void *a1)
{
  v2 = a1[11];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  a1[3] = &unk_2A1E4FC00;
  v3 = a1[7];
  if (v3)
  {
    a1[8] = v3;
    operator delete(v3);
  }

  v4 = a1[5];
  if (v4)
  {
    CFRelease(v4);
  }

  JUMPOUT(0x29C270D60);
}

void _ZNSt3__115allocate_sharedB8ne200100I17BootControllerINTNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_(uint64_t *a1@<X8>)
{
  v2 = operator new(0x60uLL);
  v2->__shared_owners_ = 0;
  v2->__shared_weak_owners_ = 0;
  v2->__vftable = &unk_2A1E46210;
  v2[1].std::__shared_count = 0u;
  *&v2[1].__shared_weak_owners_ = 0u;
  *&v2[2].__shared_owners_ = 0u;
  v2[3].std::__shared_count = 0u;
  v2[3].__shared_weak_owners_ = 0;
  BootController::BootController(&v2[1]);
  v2[1].__vftable = &unk_2A1E49D40;
  *a1 = v3;
  a1[1] = v2;
  atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v2[3].__shared_owners_ = v3;
  v2[3].__shared_weak_owners_ = v2;
  if (!atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);

    std::__shared_weak_count::__release_weak(v2);
  }
}

void sub_297527188(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<BootControllerINT>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E46210;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<BootControllerINT>::__on_zero_shared(void *a1)
{
  v2 = a1[11];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  a1[3] = &unk_2A1E4FC00;
  v3 = a1[7];
  if (v3)
  {
    a1[8] = v3;
    operator delete(v3);
  }

  v4 = a1[5];
  if (v4)
  {
    CFRelease(v4);
  }

  JUMPOUT(0x29C270D60);
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI10BootModuleE15execute_wrappedIZZN13BootModuleICE18requestFSSync_syncENS_8callbackIU13block_pointerFviNS1_2cf11CFSharedRefIK14__CFDictionaryEEEEEEUb_E3__0EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrISH_NSM_14default_deleteISH_EEEEENUlPvE_8__invokeESR_(uint64_t *a1)
{
  v2 = *a1;
  v12 = v2;
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  object = v4;
  if (v4)
  {
    xpc_retain(v4);
  }

  else
  {
    object = xpc_null_create();
  }

  xpc::bridge(&cf, &object, v5);
  v6 = *(v2 + 32);
  if (v6)
  {
    v7 = _Block_copy(v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = *(v2 + 40);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZNK8dispatch8callbackIU13block_pointerFviN3ctu2cf11CFSharedRefIK14__CFDictionaryEEEEclIJiNS3_IKvEEEEEvDpT__block_invoke;
  block[3] = &__block_descriptor_tmp_53_1;
  if (!v7)
  {
    v18 = v3;
    v10 = cf;
    aBlock = 0;
    v17 = cf;
    if (!cf)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v9 = _Block_copy(v7);
  v18 = v3;
  v10 = cf;
  aBlock = v9;
  v17 = cf;
  if (cf)
  {
LABEL_11:
    CFRetain(v10);
  }

LABEL_12:
  dispatch_async(v8, block);
  if (v17)
  {
    CFRelease(v17);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v7)
  {
    _Block_release(v7);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  xpc_release(object);
  _ZNSt3__110unique_ptrIZZN13BootModuleICE18requestFSSync_syncEN8dispatch8callbackIU13block_pointerFviN3ctu2cf11CFSharedRefIK14__CFDictionaryEEEEEEUb_E3__0NS_14default_deleteISD_EEED1B8ne200100Ev(&v12);
  v11 = a1[2];
  if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  operator delete(a1);
}

void sub_297527448(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, xpc_object_t object)
{
  xpc_release(object);
  _ZNSt3__110unique_ptrIZZN13BootModuleICE18requestFSSync_syncEN8dispatch8callbackIU13block_pointerFviN3ctu2cf11CFSharedRefIK14__CFDictionaryEEEEEEUb_E3__0NS_14default_deleteISD_EEED1B8ne200100Ev(&a11);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a10);
  _Unwind_Resume(a1);
}

uint64_t *_ZNSt3__110unique_ptrIZZN13BootModuleICE18requestFSSync_syncEN8dispatch8callbackIU13block_pointerFviN3ctu2cf11CFSharedRefIK14__CFDictionaryEEEEEEUb_E3__0NS_14default_deleteISD_EEED1B8ne200100Ev(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 40);
    if (v3)
    {
      dispatch_release(v3);
    }

    v4 = *(v2 + 32);
    if (v4)
    {
      _Block_release(v4);
    }

    xpc_release(*(v2 + 24));
    *(v2 + 24) = 0;
    v5 = *(v2 + 8);
    if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    operator delete(v2);
  }

  return a1;
}

void ___ZNK8dispatch8callbackIU13block_pointerFviN3ctu2cf11CFSharedRefIK14__CFDictionaryEEEEclIJiNS3_IKvEEEEEvDpT__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3 && (v4 = CFGetTypeID(*(a1 + 40)), v4 == CFDictionaryGetTypeID()))
  {
    cf = v3;
    CFRetain(v3);
  }

  else
  {
    cf = 0;
  }

  (*(v2 + 16))(v2, v1, &cf);
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_2975275B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

CFTypeRef __copy_helper_block_e8_32c84_ZTSN8dispatch5blockIU13block_pointerFviN3ctu2cf11CFSharedRefIK14__CFDictionaryEEEEE40c30_ZTSN3ctu2cf11CFSharedRefIKvEE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (!v4)
  {
    result = *(a2 + 40);
    *(a1 + 32) = 0;
    *(a1 + 40) = result;
    if (!result)
    {
      return result;
    }

    return CFRetain(result);
  }

  v5 = _Block_copy(v4);
  result = *(a2 + 40);
  *(a1 + 32) = v5;
  *(a1 + 40) = result;
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

void __destroy_helper_block_e8_32c84_ZTSN8dispatch5blockIU13block_pointerFviN3ctu2cf11CFSharedRefIK14__CFDictionaryEEEEE40c30_ZTSN3ctu2cf11CFSharedRefIKvEE(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    _Block_release(v3);
  }
}

void ___ZNK8dispatch8callbackIU13block_pointerFviN3ctu2cf11CFSharedRefIK14__CFDictionaryEEEEclIJiNS3_IS4_EEEEEvDpT__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3 && (v4 = CFGetTypeID(*(a1 + 40)), v4 == CFDictionaryGetTypeID()))
  {
    cf = v3;
    CFRetain(v3);
  }

  else
  {
    cf = 0;
  }

  (*(v2 + 16))(v2, v1, &cf);
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_2975276FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

CFTypeRef __copy_helper_block_e8_32c84_ZTSN8dispatch5blockIU13block_pointerFviN3ctu2cf11CFSharedRefIK14__CFDictionaryEEEEE40c44_ZTSN3ctu2cf11CFSharedRefI14__CFDictionaryEE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (!v4)
  {
    result = *(a2 + 40);
    *(a1 + 32) = 0;
    *(a1 + 40) = result;
    if (!result)
    {
      return result;
    }

    return CFRetain(result);
  }

  v5 = _Block_copy(v4);
  result = *(a2 + 40);
  *(a1 + 32) = v5;
  *(a1 + 40) = result;
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

void __destroy_helper_block_e8_32c84_ZTSN8dispatch5blockIU13block_pointerFviN3ctu2cf11CFSharedRefIK14__CFDictionaryEEEEE40c44_ZTSN3ctu2cf11CFSharedRefI14__CFDictionaryEE(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    _Block_release(v3);
  }
}

uint64_t __cxx_global_var_init_34()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ctu::power::assertion>::~PthreadMutexGuardPolicy, &ctu::Singleton<ctu::power::assertion,ctu::power::assertion,ctu::PthreadMutexGuardPolicy<ctu::power::assertion>>::sInstance, &dword_297476000);
  }

  return result;
}

uint64_t __cxx_global_var_init_35()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>::~PthreadMutexGuardPolicy, &ctu::Singleton<support::log::shared_stdio,support::log::shared_stdio,ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>>::sInstance, &dword_297476000);
  }

  return result;
}

uint64_t __cxx_global_var_init_36_0()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<CommandDriverFactory>::~PthreadMutexGuardPolicy, &ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance, &dword_297476000);
  }

  return result;
}

uint64_t abm::ParseWakeDataIP(xpc_object_t *a1, xpc_object_t *a2)
{
  v70 = *MEMORY[0x29EDCA608];
  v4 = MEMORY[0x29C272BA0](*a1);
  v5 = MEMORY[0x29EDCAA00];
  if (v4 != MEMORY[0x29EDCAA00] || MEMORY[0x29C272BA0](*a2) != v5)
  {
    result = 0;
    v7 = *MEMORY[0x29EDCA608];
    return result;
  }

  v8 = xpc_string_create(*MEMORY[0x29EDBEA88]);
  if (!v8)
  {
    v8 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a2, *MEMORY[0x29EDBE9D8], v8);
  v9 = xpc_null_create();
  xpc_release(v8);
  xpc_release(v9);
  v10 = xpc_string_create(*MEMORY[0x29EDBEB78]);
  if (!v10)
  {
    v10 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a2, *MEMORY[0x29EDBEDB0], v10);
  v11 = xpc_null_create();
  xpc_release(v10);
  xpc_release(v11);
  v12 = xpc_dictionary_create(0, 0, 0);
  v13 = v12;
  if (v12)
  {
    xdict = v12;
  }

  else
  {
    v13 = xpc_null_create();
    xdict = v13;
    if (!v13)
    {
      v14 = xpc_null_create();
      v13 = 0;
      goto LABEL_15;
    }
  }

  if (MEMORY[0x29C272BA0](v13) == v5)
  {
    xpc_retain(v13);
    goto LABEL_16;
  }

  v14 = xpc_null_create();
LABEL_15:
  xdict = v14;
LABEL_16:
  xpc_release(v13);
  memset(v64, 170, sizeof(v64));
  value = xpc_dictionary_get_value(*a1, *MEMORY[0x29EDBE9D0]);
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
  if (v64[1] == v64[0])
  {
    v34 = xpc_BOOL_create(1);
    if (!v34)
    {
      v34 = xpc_null_create();
    }

    goto LABEL_39;
  }

  v16 = *v64[0] >> 4;
  if (v16 == 6)
  {
    v36 = xpc_string_create(*MEMORY[0x29EDBF230]);
    if (!v36)
    {
      v36 = xpc_null_create();
    }

    v18 = xdict;
    xpc_dictionary_set_value(xdict, *MEMORY[0x29EDBF040], v36);
    v37 = xpc_null_create();
    xpc_release(v36);
    xpc_release(v37);
    if ((v64[1] - v64[0]) < 0x28)
    {
      v50 = xpc_BOOL_create(1);
      if (!v50)
      {
        v50 = xpc_null_create();
      }

      goto LABEL_60;
    }

    memset(__p, 0, 47);
    *object = 0u;
    memset(v68, 0, sizeof(v68));
    inet_ntop(30, v64[0] + 8, __p, 0x2Eu);
    inet_ntop(30, v64[0] + 24, object, 0x2Eu);
    v38 = xpc_string_create(__p);
    if (!v38)
    {
      v38 = xpc_null_create();
    }

    xpc_dictionary_set_value(xdict, *MEMORY[0x29EDBF580], v38);
    v39 = xpc_null_create();
    xpc_release(v38);
    xpc_release(v39);
    v40 = xpc_string_create(object);
    if (!v40)
    {
      v40 = xpc_null_create();
    }

    xpc_dictionary_set_value(xdict, *MEMORY[0x29EDBF7A0], v40);
    v41 = xpc_null_create();
    xpc_release(v40);
    xpc_release(v41);
    v42 = *(v64[0] + 6);
    memset(&__s1, 170, sizeof(__s1));
    abm::_ProtocolAsString(&__s1, v42);
    if ((__s1.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_s1 = &__s1;
    }

    else
    {
      p_s1 = __s1.__r_.__value_.__r.__words[0];
    }

    v44 = xpc_string_create(p_s1);
    if (!v44)
    {
      v44 = xpc_null_create();
    }

    xpc_dictionary_set_value(xdict, *MEMORY[0x29EDBF198], v44);
    v45 = xpc_null_create();
    xpc_release(v44);
    xpc_release(v45);
    v46 = strlen(*MEMORY[0x29EDBF218]);
    v47 = v46;
    v48 = SHIBYTE(__s1.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(__s1.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      if (v46 == __s1.__r_.__value_.__l.__size_)
      {
        if (v46 == -1)
        {
          std::string::__throw_out_of_range[abi:ne200100]();
        }

        v49 = __s1.__r_.__value_.__r.__words[0];
LABEL_74:
        if (!memcmp(v49, *MEMORY[0x29EDBF218], v47))
        {
          goto LABEL_90;
        }
      }
    }

    else if (v46 == SHIBYTE(__s1.__r_.__value_.__r.__words[2]))
    {
      v49 = &__s1;
      goto LABEL_74;
    }

    v57 = strlen(*MEMORY[0x29EDBF220]);
    v58 = v57;
    if ((v48 & 0x80000000) != 0)
    {
      if (v57 != __s1.__r_.__value_.__l.__size_)
      {
        goto LABEL_93;
      }

      if (v57 == -1)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      v59 = __s1.__r_.__value_.__r.__words[0];
    }

    else
    {
      if (v57 != v48)
      {
        goto LABEL_95;
      }

      v59 = &__s1;
    }

    if (memcmp(v59, *MEMORY[0x29EDBF220], v58))
    {
LABEL_92:
      if ((v48 & 0x80) == 0)
      {
        goto LABEL_95;
      }

LABEL_93:
      v61 = __s1.__r_.__value_.__r.__words[0];
      goto LABEL_94;
    }

LABEL_90:
    if ((v64[1] - v64[0]) >= 0x2C)
    {
      abm::_ParsePortData(v64[0], 0x28, &xdict, v56);
      LOBYTE(v48) = *(&__s1.__r_.__value_.__s + 23);
    }

    goto LABEL_92;
  }

  if (v16 != 4)
  {
    v34 = xpc_BOOL_create(1);
    if (!v34)
    {
      v34 = xpc_null_create();
    }

LABEL_39:
    v18 = xdict;
    xpc_dictionary_set_value(xdict, *MEMORY[0x29EDBF6B8], v34);
    v35 = xpc_null_create();
    xpc_release(v34);
    xpc_release(v35);
    goto LABEL_95;
  }

  v17 = xpc_string_create(*MEMORY[0x29EDBF228]);
  if (!v17)
  {
    v17 = xpc_null_create();
  }

  v18 = xdict;
  xpc_dictionary_set_value(xdict, *MEMORY[0x29EDBF040], v17);
  v19 = xpc_null_create();
  xpc_release(v17);
  xpc_release(v19);
  if ((v64[1] - v64[0]) < 0x14)
  {
    v50 = xpc_BOOL_create(1);
    if (!v50)
    {
      v50 = xpc_null_create();
    }

LABEL_60:
    xpc_dictionary_set_value(v18, *MEMORY[0x29EDBF6B8], v50);
    v51 = xpc_null_create();
    xpc_release(v50);
    xpc_release(v51);
    goto LABEL_95;
  }

  memset(__p, 170, 24);
  abm::_ProtocolAsString(__p, *(v64[0] + 9));
  v21 = *(v64[0] + 3);
  v20 = *(v64[0] + 4);
  v22 = *v64[0];
  if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v23 = __p;
  }

  else
  {
    v23 = __p[0].__r_.__value_.__r.__words[0];
  }

  v24 = xpc_string_create(v23);
  if (!v24)
  {
    v24 = xpc_null_create();
  }

  xpc_dictionary_set_value(xdict, *MEMORY[0x29EDBF198], v24);
  v25 = xpc_null_create();
  xpc_release(v24);
  xpc_release(v25);
  v26 = xpc_int64_create(bswap32(v21));
  if (!v26)
  {
    v26 = xpc_null_create();
  }

  xpc_dictionary_set_value(xdict, *MEMORY[0x29EDBF580], v26);
  v27 = xpc_null_create();
  xpc_release(v26);
  xpc_release(v27);
  v28 = xpc_int64_create(bswap32(v20));
  if (!v28)
  {
    v28 = xpc_null_create();
  }

  xpc_dictionary_set_value(xdict, *MEMORY[0x29EDBF7A0], v28);
  v29 = xpc_null_create();
  xpc_release(v28);
  xpc_release(v29);
  v30 = strlen(*MEMORY[0x29EDBF218]);
  v31 = v30;
  v32 = SHIBYTE(__p[0].__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (v30 != __p[0].__r_.__value_.__l.__size_)
    {
      goto LABEL_68;
    }

    if (v30 == -1)
    {
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    v33 = __p[0].__r_.__value_.__r.__words[0];
  }

  else
  {
    if (v30 != SHIBYTE(__p[0].__r_.__value_.__r.__words[2]))
    {
      goto LABEL_68;
    }

    v33 = __p;
  }

  if (memcmp(v33, *MEMORY[0x29EDBF218], v31))
  {
LABEL_68:
    v53 = strlen(*MEMORY[0x29EDBF220]);
    v54 = v53;
    if ((v32 & 0x80000000) != 0)
    {
      if (v53 != __p[0].__r_.__value_.__l.__size_)
      {
LABEL_85:
        v61 = __p[0].__r_.__value_.__r.__words[0];
LABEL_94:
        operator delete(v61);
        goto LABEL_95;
      }

      if (v53 == -1)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      v55 = __p[0].__r_.__value_.__r.__words[0];
    }

    else
    {
      if (v53 != v32)
      {
        goto LABEL_95;
      }

      v55 = __p;
    }

    if (memcmp(v55, *MEMORY[0x29EDBF220], v54))
    {
      goto LABEL_84;
    }
  }

  v60 = (4 * (v22 & 0xF));
  if ((v64[1] - v64[0]) >= v60 + 4)
  {
    abm::_ParsePortData(v64[0], v60, &xdict, v52);
    LOBYTE(v32) = *(&__p[0].__r_.__value_.__s + 23);
  }

LABEL_84:
  if ((v32 & 0x80) != 0)
  {
    goto LABEL_85;
  }

LABEL_95:
  if (v18)
  {
    xpc_retain(v18);
  }

  else
  {
    v18 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a2, *MEMORY[0x29EDBF190], v18);
  v62 = xpc_null_create();
  xpc_release(v18);
  xpc_release(v62);
  if (v64[0])
  {
    v64[1] = v64[0];
    operator delete(v64[0]);
  }

  xpc_release(xdict);
  result = 1;
  v63 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_297528134(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, xpc_object_t object, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

std::string *abm::_ProtocolAsString(std::string *this, uint64_t a2)
{
  *&this->__r_.__value_.__l.__data_ = 0uLL;
  this->__r_.__value_.__r.__words[2] = 0;
  if (a2 > 16)
  {
    if (a2 == 17)
    {
      v4 = MEMORY[0x29EDBF220];
      return std::string::__assign_external(this, *v4);
    }

    if (a2 == 58)
    {
      v4 = MEMORY[0x29EDBF660];
      return std::string::__assign_external(this, *v4);
    }
  }

  else
  {
    if (a2 == 1)
    {
      v4 = MEMORY[0x29EDBF2F8];
      return std::string::__assign_external(this, *v4);
    }

    if (a2 == 6)
    {
      v4 = MEMORY[0x29EDBF218];
      return std::string::__assign_external(this, *v4);
    }
  }

  v23 = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v22[7] = v5;
  v22[8] = v5;
  v22[5] = v5;
  v22[6] = v5;
  v22[3] = v5;
  v22[4] = v5;
  v22[1] = v5;
  v22[2] = v5;
  v22[0] = v5;
  v20 = v5;
  v21 = v5;
  v18 = v5;
  *__p = v5;
  v16 = v5;
  v17 = v5;
  v15 = v5;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v15);
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, "Protocol #", 10);
  MEMORY[0x29C271B70](v6, a2);
  if ((BYTE8(v21) & 0x10) != 0)
  {
    v10 = v21;
    if (v21 < *(&v18 + 1))
    {
      *&v21 = *(&v18 + 1);
      v10 = *(&v18 + 1);
    }

    v11 = v18;
    v7 = v10 - v18;
    if ((v10 - v18) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_31;
    }
  }

  else
  {
    if ((BYTE8(v21) & 8) == 0)
    {
      v7 = 0;
      HIBYTE(v14) = 0;
      p_dst = &__dst;
      goto LABEL_25;
    }

    v11 = *(&v16 + 1);
    v7 = *(&v17 + 1) - *(&v16 + 1);
    if (*(&v17 + 1) - *(&v16 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
    {
LABEL_31:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v7 >= 0x17)
  {
    if ((v7 | 7) == 0x17)
    {
      v12 = 25;
    }

    else
    {
      v12 = (v7 | 7) + 1;
    }

    p_dst = operator new(v12);
    *(&__dst + 1) = v7;
    v14 = v12 | 0x8000000000000000;
    *&__dst = p_dst;
  }

  else
  {
    HIBYTE(v14) = v7;
    p_dst = &__dst;
    if (!v7)
    {
      goto LABEL_25;
    }
  }

  memmove(p_dst, v11, v7);
LABEL_25:
  *(p_dst + v7) = 0;
  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(this->__r_.__value_.__l.__data_);
  }

  *&this->__r_.__value_.__l.__data_ = __dst;
  this->__r_.__value_.__r.__words[2] = v14;
  *&v15 = *MEMORY[0x29EDC9538];
  *(&v15 + *(v15 - 24)) = *(MEMORY[0x29EDC9538] + 24);
  *(&v15 + 1) = MEMORY[0x29EDC9570] + 16;
  if (SHIBYTE(v20) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v15 + 1) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(&v16);
  std::ostream::~ostream();
  return MEMORY[0x29C271DA0](v22);
}

void sub_297528620(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (*(v13 + 23) < 0)
  {
    operator delete(*v13);
  }

  _Unwind_Resume(exception_object);
}

void abm::_ParsePortData(abm *this, unsigned __int8 *a2, xpc_object_t *a3, xpc::dict *a4)
{
  v5 = (this + a2);
  v6 = xpc_int64_create(bswap32(*v5) >> 16);
  if (!v6)
  {
    v6 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a3, *MEMORY[0x29EDBF398], v6);
  v7 = xpc_null_create();
  xpc_release(v6);
  xpc_release(v7);
  v8 = xpc_int64_create(bswap32(v5[1]) >> 16);
  if (!v8)
  {
    v8 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a3, *MEMORY[0x29EDBF6C0], v8);
  v9 = xpc_null_create();
  xpc_release(v8);
  xpc_release(v9);
}

void HealthModule::create(uint64_t *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  v4 = operator new(0x88uLL);
  v5 = a1[1];
  v18 = *a1;
  v19 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = pthread_mutex_lock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  v7 = off_2A18CADD8;
  if (!off_2A18CADD8)
  {
    CommandDriverFactory::create_default_global(&v20, v6);
    v8 = v20;
    v20 = 0uLL;
    v9 = *(&off_2A18CADD8 + 1);
    off_2A18CADD8 = v8;
    if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
    }

    v10 = *(&v20 + 1);
    if (*(&v20 + 1) && !atomic_fetch_add((*(&v20 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
    }

    v7 = off_2A18CADD8;
  }

  v11 = *(&off_2A18CADD8 + 1);
  if (*(&off_2A18CADD8 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18CADD8 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  (*(*v7 + 24))(&object, v7);
  HealthModule::HealthModule(v4, &v18, &object);
  *a2 = v4;
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  v12 = operator new(0x20uLL);
  v12[1] = 0;
  v13 = v12 + 1;
  *v12 = &unk_2A1E46500;
  v12[2] = 0;
  v12[3] = v4;
  a2[1] = v12;
  v14 = v4[10];
  if (!v14)
  {
    atomic_fetch_add_explicit(v12 + 1, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(v12 + 2, 1uLL, memory_order_relaxed);
    v4[9] = v4;
    v4[10] = v12;
    if (atomic_fetch_add(v13, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (v14->__shared_owners_ == -1)
  {
    atomic_fetch_add_explicit(v12 + 1, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(v12 + 2, 1uLL, memory_order_relaxed);
    v4[9] = v4;
    v4[10] = v12;
    v15 = v12;
    std::__shared_weak_count::__release_weak(v14);
    v12 = v15;
    if (!atomic_fetch_add(v13, 0xFFFFFFFFFFFFFFFFLL))
    {
LABEL_18:
      v16 = v12;
      (*(*v12 + 16))();
      std::__shared_weak_count::__release_weak(v16);
    }
  }

LABEL_19:
  if (object)
  {
    dispatch_release(object);
  }

  if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  if (v19)
  {
    std::__shared_weak_count::__release_weak(v19);
  }
}

void sub_297528A24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, dispatch_object_t object, uint64_t a13, std::__shared_weak_count *a14)
{
  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  if (v15)
  {
    std::__shared_weak_count::__release_weak(v15);
  }

  operator delete(v14);
  _Unwind_Resume(a1);
}

_WORD *HealthModule::getBootstrapStages@<X0>(void *a1@<X8>)
{
  v3 = operator new(2uLL);
  *a1 = v3;
  *v3 = 256;
  result = v3 + 1;
  a1[1] = result;
  a1[2] = result;
  return result;
}

_BYTE *HealthModule::getShutdownStages@<X0>(void *a1@<X8>)
{
  v3 = operator new(1uLL);
  *a1 = v3;
  *v3 = 3;
  result = v3 + 1;
  a1[1] = result;
  a1[2] = result;
  return result;
}

void HealthModule::bootstrap(void *a1, int a2, dispatch_object_t *a3)
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
    dispatch_async_f(v10, v11, dispatch::async<void ctu::SharedSynchronizable<HealthModule>::execute_wrapped<HealthModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(HealthModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<HealthModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<HealthModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke);
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
  dispatch_async_f(v17, v18, dispatch::async<void ctu::SharedSynchronizable<HealthModule>::execute_wrapped<HealthModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1>(HealthModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<HealthModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1,dispatch_queue_s *::default_delete<HealthModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_14;
  }
}

void HealthModule::registerCommandHandlers_sync(HealthModule *this)
{
  v2 = *(this + 13);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_297476000, v2, OS_LOG_TYPE_DEBUG, "#D Registering command handlers", buf, 2u);
    v3 = *(this + 10);
    if (!v3)
    {
LABEL_94:
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }
  }

  else
  {
    v3 = *(this + 10);
    if (!v3)
    {
      goto LABEL_94;
    }
  }

  v4 = *(this + 9);
  v5 = std::__shared_weak_count::lock(v3);
  if (!v5)
  {
    goto LABEL_94;
  }

  v6 = v5;
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v6);
  }

  pthread_mutex_lock(&ctu::Singleton<HealthEventDB,HealthEventDB,ctu::PthreadMutexGuardPolicy<HealthEventDB>>::sInstance);
  if (!xmmword_2A18CAEC8)
  {
    v9 = operator new(0x68uLL);
    HealthEventDB::HealthEventDB(v9);
    *buf = v9;
    v7 = operator new(0x20uLL);
    v7->__vftable = &unk_2A1E46550;
    v7->__shared_owners_ = 0;
    v7->__shared_weak_owners_ = 0;
    v7[1].__vftable = v9;
    v10 = *(&xmmword_2A18CAEC8 + 1);
    *&xmmword_2A18CAEC8 = v9;
    *(&xmmword_2A18CAEC8 + 1) = v7;
    if (!v10)
    {
      goto LABEL_12;
    }

    if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
    }
  }

  v7 = *(&xmmword_2A18CAEC8 + 1);
  if (*(&xmmword_2A18CAEC8 + 1))
  {
LABEL_12:
    v8 = 0;
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    goto LABEL_13;
  }

  v8 = 1;
LABEL_13:
  v11 = pthread_mutex_unlock(&ctu::Singleton<HealthEventDB,HealthEventDB,ctu::PthreadMutexGuardPolicy<HealthEventDB>>::sInstance);
  if ((v8 & 1) == 0 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  if (sys::isBootSessionChanged(v11))
  {
    v12 = *(this + 13);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_297476000, v12, OS_LOG_TYPE_DEFAULT, "#I AP reboot detected; resetting CommCenter and baseband stats", buf, 2u);
    }

    v13 = xpc_dictionary_create(0, 0, 0);
    v14 = MEMORY[0x29EDCAA00];
    if (v13 || (v13 = xpc_null_create()) != 0)
    {
      if (MEMORY[0x29C272BA0](v13) == v14)
      {
        xpc_retain(v13);
        v15 = v13;
      }

      else
      {
        v15 = xpc_null_create();
      }
    }

    else
    {
      v15 = xpc_null_create();
      v13 = 0;
    }

    xpc_release(v13);
    v16 = xpc_int64_create(1);
    if (!v16)
    {
      v16 = xpc_null_create();
    }

    xpc_dictionary_set_value(v15, "KeyCommCenterStatsLaunchCount", v16);
    v17 = xpc_null_create();
    xpc_release(v16);
    xpc_release(v17);
    v18 = time(0);
    v19 = xpc_int64_create(v18);
    if (!v19)
    {
      v19 = xpc_null_create();
    }

    xpc_dictionary_set_value(v15, "KeyCommCenterStatsFirstLaunchTime", v19);
    v20 = xpc_null_create();
    xpc_release(v19);
    xpc_release(v20);
    v21 = xpc_BOOL_create(0);
    if (!v21)
    {
      v21 = xpc_null_create();
    }

    xpc_dictionary_set_value(v15, "kKeyStatsCommCenterRegistrationMetricSubmitted", v21);
    v22 = xpc_null_create();
    xpc_release(v21);
    xpc_release(v22);
    pthread_mutex_lock(&ctu::Singleton<HealthEventDB,HealthEventDB,ctu::PthreadMutexGuardPolicy<HealthEventDB>>::sInstance);
    if (!xmmword_2A18CAEC8)
    {
      v24 = operator new(0x68uLL);
      HealthEventDB::HealthEventDB(v24);
      v60 = v24;
      v23 = operator new(0x20uLL);
      *v23 = &unk_2A1E46550;
      v23[1] = 0;
      v23[2] = 0;
      v23[3] = v24;
      v25 = *(&xmmword_2A18CAEC8 + 1);
      *&xmmword_2A18CAEC8 = v24;
      *(&xmmword_2A18CAEC8 + 1) = v23;
      if (!v25)
      {
        *buf = v24;
        *&buf[8] = v23;
        goto LABEL_38;
      }

      if (!atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v25->__on_zero_shared)(v25);
        std::__shared_weak_count::__release_weak(v25);
      }
    }

    v23 = *(&xmmword_2A18CAEC8 + 1);
    v24 = xmmword_2A18CAEC8;
    *buf = xmmword_2A18CAEC8;
    if (!*(&xmmword_2A18CAEC8 + 1))
    {
LABEL_39:
      pthread_mutex_unlock(&ctu::Singleton<HealthEventDB,HealthEventDB,ctu::PthreadMutexGuardPolicy<HealthEventDB>>::sInstance);
      v59 = v15;
      if (v15)
      {
        xpc_retain(v15);
      }

      else
      {
        v59 = xpc_null_create();
      }

      HealthEventDB::updateCommCenterStats(v24, &v59);
      xpc_release(v59);
      v59 = 0;
      v26 = *&buf[8];
      if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v26->__on_zero_shared)(v26);
        std::__shared_weak_count::__release_weak(v26);
      }

      xpc_release(v15);
      v58 = 0xAAAAAAAAAAAAAAAALL;
      v27 = xpc_dictionary_create(0, 0, 0);
      v28 = v27;
      if (v27)
      {
        v58 = v27;
      }

      else
      {
        v28 = xpc_null_create();
        v58 = v28;
        if (!v28)
        {
          v29 = xpc_null_create();
          v28 = 0;
          goto LABEL_52;
        }
      }

      if (MEMORY[0x29C272BA0](v28) == v14)
      {
        xpc_retain(v28);
        goto LABEL_53;
      }

      v29 = xpc_null_create();
LABEL_52:
      v58 = v29;
LABEL_53:
      xpc_release(v28);
      v30 = *MEMORY[0x29EDBF2C0];
      *buf = &v58;
      *&buf[8] = v30;
      xpc::dict::object_proxy::operator=(buf, &v57);
      xpc_release(v57);
      v57 = 0;
      v31 = *MEMORY[0x29EDBF2C8];
      *buf = &v58;
      *&buf[8] = v31;
      xpc::dict::object_proxy::operator=(buf, &v56);
      xpc_release(v56);
      v56 = 0;
      v32 = *MEMORY[0x29EDBF408];
      *buf = &v58;
      *&buf[8] = v32;
      xpc::dict::object_proxy::operator=(buf, &v55);
      xpc_release(v55);
      v55 = 0;
      pthread_mutex_lock(&ctu::Singleton<HealthEventDB,HealthEventDB,ctu::PthreadMutexGuardPolicy<HealthEventDB>>::sInstance);
      if (!xmmword_2A18CAEC8)
      {
        v34 = operator new(0x68uLL);
        HealthEventDB::HealthEventDB(v34);
        v60 = v34;
        v33 = operator new(0x20uLL);
        *v33 = &unk_2A1E46550;
        v33[1] = 0;
        v33[2] = 0;
        v33[3] = v34;
        v35 = *(&xmmword_2A18CAEC8 + 1);
        *&xmmword_2A18CAEC8 = v34;
        *(&xmmword_2A18CAEC8 + 1) = v33;
        if (!v35)
        {
          *buf = v34;
          *&buf[8] = v33;
LABEL_60:
          atomic_fetch_add_explicit(v33 + 1, 1uLL, memory_order_relaxed);
LABEL_61:
          pthread_mutex_unlock(&ctu::Singleton<HealthEventDB,HealthEventDB,ctu::PthreadMutexGuardPolicy<HealthEventDB>>::sInstance);
          v54 = v58;
          if (v58)
          {
            xpc_retain(v58);
          }

          else
          {
            v54 = xpc_null_create();
          }

          HealthEventDB::updateBootStats(v34, &v54);
          xpc_release(v54);
          v54 = 0;
          v36 = *&buf[8];
          if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
          {
            (v36->__on_zero_shared)(v36);
            std::__shared_weak_count::__release_weak(v36);
          }

          xpc_release(v58);
          goto LABEL_68;
        }

        if (!atomic_fetch_add(&v35->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v35->__on_zero_shared)(v35);
          std::__shared_weak_count::__release_weak(v35);
        }
      }

      v33 = *(&xmmword_2A18CAEC8 + 1);
      v34 = xmmword_2A18CAEC8;
      *buf = xmmword_2A18CAEC8;
      if (!*(&xmmword_2A18CAEC8 + 1))
      {
        goto LABEL_61;
      }

      goto LABEL_60;
    }

LABEL_38:
    atomic_fetch_add_explicit(v23 + 1, 1uLL, memory_order_relaxed);
    goto LABEL_39;
  }

LABEL_68:
  buf[23] = 21;
  strcpy(buf, "CommandGetHealthStats");
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN12HealthModule28registerCommandHandlers_syncEv_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_28;
  aBlock[4] = v4;
  v51 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v37 = _Block_copy(aBlock);
  v52 = v37;
  Service::registerCommandHandler(this, buf, &v52);
  if (v37)
  {
    _Block_release(v37);
  }

  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  *buf = operator new(0x20uLL);
  *&buf[8] = xmmword_29769DFE0;
  strcpy(*buf, "CommandUpdateBBBootStats");
  v47[0] = MEMORY[0x29EDCA5F8];
  v47[1] = 1174405120;
  v47[2] = ___ZN12HealthModule28registerCommandHandlers_syncEv_block_invoke_2;
  v47[3] = &__block_descriptor_tmp_5_7;
  v47[4] = v4;
  v48 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v38 = _Block_copy(v47);
  v49 = v38;
  Service::registerCommandHandler(this, buf, &v49);
  if (v38)
  {
    _Block_release(v38);
  }

  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  *buf = operator new(0x28uLL);
  *&buf[8] = xmmword_2976A0EA0;
  strcpy(*buf, "CommandSubmitHealthDBBootMetrics");
  v44[0] = MEMORY[0x29EDCA5F8];
  v44[1] = 1174405120;
  v44[2] = ___ZN12HealthModule28registerCommandHandlers_syncEv_block_invoke_6;
  v44[3] = &__block_descriptor_tmp_7_2;
  v44[4] = this;
  v44[5] = v4;
  v45 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v39 = _Block_copy(v44);
  v46 = v39;
  Service::registerCommandHandler(this, buf, &v46);
  if (v39)
  {
    _Block_release(v39);
  }

  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  *buf = operator new(0x20uLL);
  *&buf[8] = xmmword_2976A1080;
  strcpy(*buf, "CommandGetBBDeadHealthCauseCode");
  v41[0] = MEMORY[0x29EDCA5F8];
  v41[1] = 1174405120;
  v41[2] = ___ZN12HealthModule28registerCommandHandlers_syncEv_block_invoke_8;
  v41[3] = &__block_descriptor_tmp_11_1;
  v41[4] = this;
  v41[5] = v4;
  v42 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v40 = _Block_copy(v41);
  v43 = v40;
  Service::registerCommandHandler(this, buf, &v43);
  if (v40)
  {
    _Block_release(v40);
  }

  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  if (v42)
  {
    std::__shared_weak_count::__release_weak(v42);
  }

  if (v45)
  {
    std::__shared_weak_count::__release_weak(v45);
  }

  if (v48)
  {
    std::__shared_weak_count::__release_weak(v48);
  }

  if (v51)
  {
    std::__shared_weak_count::__release_weak(v51);
  }

  std::__shared_weak_count::__release_weak(v6);
}

void sub_29752976C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, std::__shared_weak_count *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, std::__shared_weak_count *a37)
{
  std::unique_ptr<HealthEventDB>::~unique_ptr[abi:ne200100]((v38 - 104));
  pthread_mutex_unlock(&ctu::Singleton<HealthEventDB,HealthEventDB,ctu::PthreadMutexGuardPolicy<HealthEventDB>>::sInstance);
  xpc_release(*(v38 - 120));
  std::__shared_weak_count::__release_weak(v37);
  _Unwind_Resume(a1);
}

void xpc::dict::object_proxy::operator=(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = xpc_null_create();
  xpc_dictionary_set_value(**a1, *(a1 + 8), v4);
  *a2 = v4;
  v5 = xpc_null_create();
  xpc_release(v5);
}

void ___ZN12HealthModule28registerCommandHandlers_syncEv_block_invoke(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *(a1 + 40);
  if (!v4)
  {
    return;
  }

  v6 = std::__shared_weak_count::lock(v4);
  v16 = v6;
  if (!v6)
  {
    return;
  }

  if (!*(a1 + 32))
  {
LABEL_19:
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v11 = v6;
      (v6->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v11);
    }

    return;
  }

  v14 = 0xAAAAAAAAAAAAAAAALL;
  pthread_mutex_lock(&ctu::Singleton<HealthEventDB,HealthEventDB,ctu::PthreadMutexGuardPolicy<HealthEventDB>>::sInstance);
  if (qword_2A18CAEC8)
  {
LABEL_5:
    v8 = qword_2A18CAEC8;
    v7 = off_2A18CAED0;
    object = qword_2A18CAEC8;
    v13 = off_2A18CAED0;
    if (!off_2A18CAED0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v8 = operator new(0x68uLL);
  HealthEventDB::HealthEventDB(v8);
  v17 = v8;
  v7 = operator new(0x20uLL);
  v7->__vftable = &unk_2A1E46550;
  v7->__shared_owners_ = 0;
  v7->__shared_weak_owners_ = 0;
  v7[1].__vftable = v8;
  v9 = off_2A18CAED0;
  qword_2A18CAEC8 = v8;
  off_2A18CAED0 = v7;
  if (v9)
  {
    if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
    }

    goto LABEL_5;
  }

  object = v8;
  v13 = v7;
LABEL_11:
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
LABEL_12:
  pthread_mutex_unlock(&ctu::Singleton<HealthEventDB,HealthEventDB,ctu::PthreadMutexGuardPolicy<HealthEventDB>>::sInstance);
  HealthEventDB::getHealthInfo(v8, &v14);
  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

  if (MEMORY[0x29C272BA0](v14) == MEMORY[0x29EDCAA00])
  {
    LODWORD(object) = 0;
    dispatch::block<void({block_pointer})(int,xpc::dict)>::operator()<int,xpc::dict&>(a3, &object, &v14);
  }

  else
  {
    v10 = *a3;
    object = xpc_null_create();
    (*(v10 + 16))(v10, 3760250880, &object);
    xpc_release(object);
  }

  xpc_release(v14);
  v6 = v16;
  if (v16)
  {
    goto LABEL_19;
  }
}

void sub_297529D30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t a9, uint64_t a10, xpc_object_t object, char a12, uint64_t a13, char a14)
{
  xpc_release(object);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_32c37_ZTSNSt3__18weak_ptrI12HealthModuleEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_32c37_ZTSNSt3__18weak_ptrI12HealthModuleEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZN12HealthModule28registerCommandHandlers_syncEv_block_invoke_2(uint64_t a1, void **a2, uint64_t *a3)
{
  v19 = 0;
  v20 = 0;
  v4 = *(a1 + 40);
  if (!v4)
  {
    goto LABEL_21;
  }

  v20 = std::__shared_weak_count::lock(v4);
  if (!v20)
  {
    return;
  }

  v19 = *(a1 + 32);
  if (!v19)
  {
    goto LABEL_21;
  }

  pthread_mutex_lock(&ctu::Singleton<HealthEventDB,HealthEventDB,ctu::PthreadMutexGuardPolicy<HealthEventDB>>::sInstance);
  if (qword_2A18CAEC8)
  {
LABEL_5:
    v8 = qword_2A18CAEC8;
    v7 = off_2A18CAED0;
    v17 = qword_2A18CAEC8;
    v18 = off_2A18CAED0;
    if (!off_2A18CAED0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v8 = operator new(0x68uLL);
  HealthEventDB::HealthEventDB(v8);
  v21 = v8;
  v7 = operator new(0x20uLL);
  *v7 = &unk_2A1E46550;
  v7[1] = 0;
  v7[2] = 0;
  v7[3] = v8;
  v9 = off_2A18CAED0;
  qword_2A18CAEC8 = v8;
  off_2A18CAED0 = v7;
  if (v9)
  {
    if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
    }

    goto LABEL_5;
  }

  v17 = v8;
  v18 = v7;
LABEL_11:
  atomic_fetch_add_explicit(v7 + 1, 1uLL, memory_order_relaxed);
LABEL_12:
  pthread_mutex_unlock(&ctu::Singleton<HealthEventDB,HealthEventDB,ctu::PthreadMutexGuardPolicy<HealthEventDB>>::sInstance);
  v10 = *a2;
  object = v10;
  if (v10)
  {
    xpc_retain(v10);
  }

  else
  {
    object = xpc_null_create();
  }

  updated = HealthEventDB::updateBootStats(v8, &object);
  xpc_release(object);
  object = 0;
  v12 = v18;
  if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
    if (updated)
    {
      goto LABEL_18;
    }
  }

  else if (updated)
  {
LABEL_18:
    v13 = *a3;
    v17 = xpc_null_create();
    (*(v13 + 16))(v13, 0, &v17);
    xpc_release(v17);
    goto LABEL_21;
  }

  v14 = *a3;
  v17 = xpc_null_create();
  (*(v14 + 16))(v14, 3760250880, &v17);
  xpc_release(v17);
LABEL_21:
  v15 = v20;
  if (v20)
  {
    if (!atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v15->__on_zero_shared)(v15);
      std::__shared_weak_count::__release_weak(v15);
    }
  }
}

void sub_29752A07C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t a9, xpc_object_t object, uint64_t a11, char a12, uint64_t a13, HealthEventDB *a14)
{
  std::unique_ptr<HealthEventDB>::~unique_ptr[abi:ne200100](&a14);
  pthread_mutex_unlock(&ctu::Singleton<HealthEventDB,HealthEventDB,ctu::PthreadMutexGuardPolicy<HealthEventDB>>::sInstance);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void ___ZN12HealthModule28registerCommandHandlers_syncEv_block_invoke_6(void *a1, uint64_t a2, uint64_t *a3)
{
  v4 = a1[6];
  if (v4)
  {
    v6 = a1[4];
    v7 = std::__shared_weak_count::lock(v4);
    v71 = v7;
    if (v7)
    {
      if (!a1[5])
      {
LABEL_111:
        if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v59 = v7;
          (v7->__on_zero_shared)();
          std::__shared_weak_count::__release_weak(v59);
        }

        return;
      }

      xdict = 0xAAAAAAAAAAAAAAAALL;
      pthread_mutex_lock(&ctu::Singleton<HealthEventDB,HealthEventDB,ctu::PthreadMutexGuardPolicy<HealthEventDB>>::sInstance);
      if (!xmmword_2A18CAEC8)
      {
        v9 = operator new(0x68uLL);
        HealthEventDB::HealthEventDB(v9);
        v61 = v9;
        v8 = operator new(0x20uLL);
        *v8 = &unk_2A1E46550;
        v8[1] = 0;
        v8[2] = 0;
        v8[3] = v9;
        v10 = *(&xmmword_2A18CAEC8 + 1);
        *&xmmword_2A18CAEC8 = v9;
        *(&xmmword_2A18CAEC8 + 1) = v8;
        if (!v10)
        {
          *&object = v9;
          *(&object + 1) = v8;
LABEL_11:
          atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
LABEL_12:
          pthread_mutex_unlock(&ctu::Singleton<HealthEventDB,HealthEventDB,ctu::PthreadMutexGuardPolicy<HealthEventDB>>::sInstance);
          HealthEventDB::getHealthInfo(v9, &xdict);
          if (*(&object + 1) && !atomic_fetch_add((*(&object + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
          {
            (*(**(&object + 1) + 16))(*(&object + 1));
            std::__shared_weak_count::__release_weak(*(&object + 1));
          }

          v11 = MEMORY[0x29C272BA0](xdict);
          v12 = MEMORY[0x29EDCAA00];
          if (v11 != MEMORY[0x29EDCAA00])
          {
            v13 = *(v6 + 104);
            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              LOWORD(object) = 0;
              _os_log_error_impl(&dword_297476000, v13, OS_LOG_TYPE_ERROR, "Failed to query health DB for baseband boot related information", &object, 2u);
            }

            v14 = *a3;
            *&object = xpc_null_create();
            (*(v14 + 16))(v14, 3760250880, &object);
            xpc_release(object);
          }

          value = xpc_dictionary_get_value(xdict, "KeyCommCenterStats");
          v16 = value;
          if (value)
          {
            xpc_retain(value);
          }

          else
          {
            v16 = xpc_null_create();
          }

          v17 = xpc_null_create();
          if (v16 && MEMORY[0x29C272BA0](v16) == v12)
          {
            xpc_retain(v16);
            v18 = v16;
          }

          else
          {
            v18 = xpc_null_create();
          }

          if (MEMORY[0x29C272BA0](v18) != v12)
          {
            if (v17)
            {
              xpc_retain(v17);
              v19 = v17;
            }

            else
            {
              v19 = xpc_null_create();
            }

            xpc_release(v18);
            v18 = v19;
          }

          xpc_release(v17);
          xpc_release(v16);
          if (MEMORY[0x29C272BA0](v18) != v12)
          {
            v20 = *(v6 + 104);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              LOWORD(object) = 0;
              _os_log_error_impl(&dword_297476000, v20, OS_LOG_TYPE_ERROR, "Failed to prepare xpc dictionary to update CommCenter stats", &object, 2u);
            }

            v21 = *a3;
            *&object = xpc_null_create();
            (*(v21 + 16))(v21, 3760250880, &object);
            xpc_release(object);
            goto LABEL_110;
          }

          v22 = xpc_dictionary_get_value(v18, "kKeyStatsCommCenterRegistrationMetricSubmitted");
          *&object = v22;
          if (v22)
          {
            xpc_retain(v22);
          }

          else
          {
            *&object = xpc_null_create();
          }

          v23 = xpc::dyn_cast_or_default(&object, 0);
          xpc_release(object);
          if (v23)
          {
            v24 = *(v6 + 104);
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(object) = 0;
              _os_log_impl(&dword_297476000, v24, OS_LOG_TYPE_DEFAULT, "#I Metric has been submitted, skipping submission to Core Analytics", &object, 2u);
            }

            v25 = xpc_null_create();
            v26 = *a3;
            *&object = v25;
            v27 = xpc_null_create();
            (*(v26 + 16))(v26, 0, &object);
            xpc_release(object);
            xpc_release(v27);
LABEL_110:
            xpc_release(v18);
            xpc_release(xdict);
            v7 = v71;
            if (!v71)
            {
              return;
            }

            goto LABEL_111;
          }

          v28 = xdict;
          v67 = xdict;
          v68 = 0xAAAAAAAAAAAAAAAALL;
          if (xdict)
          {
            xpc_retain(xdict);
          }

          else
          {
            v28 = xpc_null_create();
            v67 = v28;
          }

          HealthModule::prepareAnalyticsDataForCommCenterBootupLatency_sync(v6, &v67, &v68);
          xpc_release(v28);
          v67 = 0;
          if (MEMORY[0x29C272BA0](v68) != v12)
          {
            v29 = *a3;
            *&object = xpc_null_create();
            (*(v29 + 16))(v29, 3760250880, &object);
            xpc_release(object);
LABEL_109:
            xpc_release(v68);
            goto LABEL_110;
          }

          v30 = xpc_dictionary_create(0, 0, 0);
          if (v30 || (v30 = xpc_null_create()) != 0)
          {
            if (MEMORY[0x29C272BA0](v30) == v12)
            {
              xpc_retain(v30);
              v31 = v30;
            }

            else
            {
              v31 = xpc_null_create();
            }
          }

          else
          {
            v31 = xpc_null_create();
            v30 = 0;
          }

          xpc_release(v30);
          v32 = xpc_string_create(*MEMORY[0x29EDBE928]);
          if (!v32)
          {
            v32 = xpc_null_create();
          }

          xpc_dictionary_set_value(v31, *MEMORY[0x29EDBE9B0], v32);
          v33 = xpc_null_create();
          xpc_release(v32);
          xpc_release(v33);
          v34 = xpc_string_create(*MEMORY[0x29EDBEB08]);
          if (!v34)
          {
            v34 = xpc_null_create();
          }

          xpc_dictionary_set_value(v31, *MEMORY[0x29EDBE7F8], v34);
          v35 = xpc_null_create();
          xpc_release(v34);
          xpc_release(v35);
          v36 = v68;
          if (v68)
          {
            xpc_retain(v68);
          }

          else
          {
            v36 = xpc_null_create();
          }

          xpc_dictionary_set_value(v31, *MEMORY[0x29EDBF020], v36);
          v37 = xpc_null_create();
          xpc_release(v36);
          xpc_release(v37);
          v38 = xpc_dictionary_create(0, 0, 0);
          if (v38 || (v38 = xpc_null_create()) != 0)
          {
            if (MEMORY[0x29C272BA0](v38) == v12)
            {
              xpc_retain(v38);
              v39 = v38;
            }

            else
            {
              v39 = xpc_null_create();
            }
          }

          else
          {
            v39 = xpc_null_create();
            v38 = 0;
          }

          xpc_release(v38);
          if (MEMORY[0x29C272BA0](v39) != v12)
          {
            v40 = *(v6 + 104);
            if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
            {
              LOWORD(object) = 0;
              _os_log_error_impl(&dword_297476000, v40, OS_LOG_TYPE_ERROR, "Failed to allocate xpc dictionary for stats", &object, 2u);
            }

            v41 = xpc_null_create();
            v42 = *a3;
            *&object = v41;
            v43 = xpc_null_create();
            (*(v42 + 16))(v42, 3760250880, &object);
            xpc_release(object);
            xpc_release(v43);
LABEL_108:
            xpc_release(v39);
            xpc_release(v31);
            goto LABEL_109;
          }

          v44 = xpc_string_create(*MEMORY[0x29EDBE550]);
          if (!v44)
          {
            v44 = xpc_null_create();
          }

          xpc_dictionary_set_value(v39, *MEMORY[0x29EDBE588], v44);
          v45 = xpc_null_create();
          xpc_release(v44);
          xpc_release(v45);
          if (v31)
          {
            xpc_retain(v31);
            v46 = v31;
          }

          else
          {
            v46 = xpc_null_create();
          }

          xpc_dictionary_set_value(v39, *MEMORY[0x29EDBE580], v46);
          v47 = xpc_null_create();
          xpc_release(v46);
          xpc_release(v47);
          v48 = *MEMORY[0x29EDBEBD0];
          v49 = strlen(*MEMORY[0x29EDBEBD0]);
          if (v49 >= 0x7FFFFFFFFFFFFFF8)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          v50 = v49;
          if (v49 >= 0x17)
          {
            if ((v49 | 7) == 0x17)
            {
              v52 = 25;
            }

            else
            {
              v52 = (v49 | 7) + 1;
            }

            p_object = operator new(v52);
            *(&object + 1) = v50;
            v66 = v52 | 0x8000000000000000;
            *&object = p_object;
          }

          else
          {
            HIBYTE(v66) = v49;
            p_object = &object;
            if (!v49)
            {
              goto LABEL_84;
            }
          }

          memmove(p_object, v48, v50);
LABEL_84:
          *(p_object + v50) = 0;
          v64 = v39;
          if (v39)
          {
            xpc_retain(v39);
          }

          else
          {
            v64 = xpc_null_create();
          }

          v63 = 0;
          Service::runCommand(v6, &object, &v64, &v63);
          xpc_release(v64);
          v64 = 0;
          if (SHIBYTE(v66) < 0)
          {
            operator delete(object);
          }

          v53 = xpc_dictionary_create(0, 0, 0);
          if (v53 || (v53 = xpc_null_create()) != 0)
          {
            if (MEMORY[0x29C272BA0](v53) == v12)
            {
              xpc_retain(v53);
              v54 = v53;
            }

            else
            {
              v54 = xpc_null_create();
            }
          }

          else
          {
            v54 = xpc_null_create();
            v53 = 0;
          }

          xpc_release(v53);
          v55 = xpc_BOOL_create(1);
          if (!v55)
          {
            v55 = xpc_null_create();
          }

          xpc_dictionary_set_value(v54, "kKeyStatsCommCenterRegistrationMetricSubmitted", v55);
          v56 = xpc_null_create();
          xpc_release(v55);
          xpc_release(v56);
          pthread_mutex_lock(&ctu::Singleton<HealthEventDB,HealthEventDB,ctu::PthreadMutexGuardPolicy<HealthEventDB>>::sInstance);
          v57 = xmmword_2A18CAEC8;
          if (!xmmword_2A18CAEC8)
          {
            HealthEventDB::create_default_global(&object);
            std::shared_ptr<HealthEventDB>::operator=[abi:ne200100](&object);
            std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&object);
            v57 = xmmword_2A18CAEC8;
          }

          v61 = v57;
          v62 = *(&xmmword_2A18CAEC8 + 1);
          if (*(&xmmword_2A18CAEC8 + 1))
          {
            atomic_fetch_add_explicit((*(&xmmword_2A18CAEC8 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          pthread_mutex_unlock(&ctu::Singleton<HealthEventDB,HealthEventDB,ctu::PthreadMutexGuardPolicy<HealthEventDB>>::sInstance);
          v60 = v54;
          if (v54)
          {
            xpc_retain(v54);
          }

          else
          {
            v60 = xpc_null_create();
          }

          HealthEventDB::updateCommCenterStats(v57, &v60);
          xpc_release(v60);
          v60 = 0;
          v58 = v62;
          if (v62 && !atomic_fetch_add(&v62->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v58->__on_zero_shared)(v58);
            std::__shared_weak_count::__release_weak(v58);
          }

          xpc_release(v54);
          goto LABEL_108;
        }

        if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v10->__on_zero_shared)(v10);
          std::__shared_weak_count::__release_weak(v10);
        }
      }

      v8 = *(&xmmword_2A18CAEC8 + 1);
      v9 = xmmword_2A18CAEC8;
      object = xmmword_2A18CAEC8;
      if (!*(&xmmword_2A18CAEC8 + 1))
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }
}

void sub_29752AB78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t a10, char a11, uint64_t a12, uint64_t a13, xpc_object_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, xpc_object_t object, xpc_object_t a23, char a24)
{
  pthread_mutex_unlock(&ctu::Singleton<HealthEventDB,HealthEventDB,ctu::PthreadMutexGuardPolicy<HealthEventDB>>::sInstance);
  xpc_release(v26);
  xpc_release(v27);
  xpc_release(v25);
  xpc_release(object);
  xpc_release(v24);
  xpc_release(a23);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a24);
  _Unwind_Resume(a1);
}

void HealthModule::prepareAnalyticsDataForCommCenterBootupLatency_sync(uint64_t a1@<X0>, xpc_object_t *a2@<X1>, xpc_object_t *a3@<X8>)
{
  v104 = *MEMORY[0x29EDCA608];
  v6 = xpc_dictionary_get_value(*a2, "KeyCommCenterStats");
  if (v6)
  {
    v7 = v6;
    xpc_retain(v6);
  }

  else
  {
    v7 = xpc_null_create();
  }

  v8 = xpc_null_create();
  v9 = MEMORY[0x29EDCAA00];
  if (v7 && MEMORY[0x29C272BA0](v7) == v9)
  {
    xpc_retain(v7);
    v10 = v7;
  }

  else
  {
    v10 = xpc_null_create();
  }

  if (MEMORY[0x29C272BA0](v10) != v9)
  {
    if (v8)
    {
      xpc_retain(v8);
      v11 = v8;
    }

    else
    {
      v11 = xpc_null_create();
    }

    xpc_release(v10);
    v10 = v11;
  }

  xpc_release(v8);
  xpc_release(v7);
  if (MEMORY[0x29C272BA0](v10) == v9)
  {
    v13 = xpc_dictionary_get_value(v10, "KeyCommCenterStatsFirstLaunchTime");
    object[0] = v13;
    if (v13)
    {
      xpc_retain(v13);
    }

    else
    {
      object[0] = xpc_null_create();
    }

    v14 = xpc::dyn_cast_or_default(object, 0);
    xpc_release(object[0]);
    v15 = xpc_dictionary_get_value(*a2, "KeyBasebandStats");
    v16 = v15;
    if (v15)
    {
      xpc_retain(v15);
    }

    else
    {
      v16 = xpc_null_create();
    }

    v17 = xpc_null_create();
    if (v16 && MEMORY[0x29C272BA0](v16) == v9)
    {
      xpc_retain(v16);
      v18 = v16;
    }

    else
    {
      v18 = xpc_null_create();
    }

    if (MEMORY[0x29C272BA0](v18) != v9)
    {
      if (v17)
      {
        xpc_retain(v17);
        v19 = v17;
      }

      else
      {
        v19 = xpc_null_create();
      }

      xpc_release(v18);
      v18 = v19;
    }

    xpc_release(v17);
    xpc_release(v16);
    if (MEMORY[0x29C272BA0](v18) != v9)
    {
      v20 = *(a1 + 104);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        LOWORD(object[0]) = 0;
        _os_log_error_impl(&dword_297476000, v20, OS_LOG_TYPE_ERROR, "Got empty baseband statistics; something is wrong in HealthDB. Please file a radar", object, 2u);
      }

      *a3 = xpc_null_create();
LABEL_173:
      xpc_release(v18);
      goto LABEL_174;
    }

    v21 = xpc_dictionary_get_value(v18, *MEMORY[0x29EDBF408]);
    object[0] = v21;
    if (v21)
    {
      xpc_retain(v21);
    }

    else
    {
      object[0] = xpc_null_create();
    }

    v96 = xpc::dyn_cast_or_default(object, 0);
    xpc_release(object[0]);
    v22 = xpc_dictionary_get_value(v18, *MEMORY[0x29EDBF490]);
    object[0] = v22;
    if (v22)
    {
      xpc_retain(v22);
    }

    else
    {
      object[0] = xpc_null_create();
    }

    xpc::dyn_cast_or_default(object, 0);
    xpc_release(object[0]);
    v23 = xpc_dictionary_get_value(v18, *MEMORY[0x29EDBEF58]);
    object[0] = v23;
    if (v23)
    {
      xpc_retain(v23);
    }

    else
    {
      object[0] = xpc_null_create();
    }

    v95 = xpc::dyn_cast_or_default(object, 0);
    xpc_release(object[0]);
    v24 = xpc_dictionary_get_value(v18, *MEMORY[0x29EDBF2C0]);
    object[0] = v24;
    if (v24)
    {
      xpc_retain(v24);
    }

    else
    {
      object[0] = xpc_null_create();
    }

    v25 = xpc::dyn_cast_or_default(object, 0);
    xpc_release(object[0]);
    v26 = xpc_dictionary_get_value(v18, *MEMORY[0x29EDBF2C8]);
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
    v28 = xpc_dictionary_get_value(v18, *MEMORY[0x29EDBF640]);
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
    v30 = xpc_dictionary_get_value(v18, *MEMORY[0x29EDBF3F8]);
    object[0] = v30;
    if (v30)
    {
      xpc_retain(v30);
    }

    else
    {
      object[0] = xpc_null_create();
    }

    value = xpc::dyn_cast_or_default(object, 0);
    xpc_release(object[0]);
    memset(object, 170, 24);
    v31 = xpc_dictionary_get_value(v18, *MEMORY[0x29EDBF090]);
    __p = v31;
    if (v31)
    {
      xpc_retain(v31);
    }

    else
    {
      __p = xpc_null_create();
    }

    xpc::dyn_cast_or_default(object, &__p, "", v32);
    xpc_release(__p);
    *a3 = 0xAAAAAAAAAAAAAAAALL;
    v33 = xpc_dictionary_create(0, 0, 0);
    v34 = v33;
    if (v33)
    {
      *a3 = v33;
    }

    else
    {
      v34 = xpc_null_create();
      *a3 = v34;
      if (!v34)
      {
        v35 = xpc_null_create();
        v34 = 0;
        goto LABEL_67;
      }
    }

    if (MEMORY[0x29C272BA0](v34) == v9)
    {
      xpc_retain(v34);
      goto LABEL_68;
    }

    v35 = xpc_null_create();
LABEL_67:
    *a3 = v35;
LABEL_68:
    xpc_release(v34);
    v36 = xpc_int64_create((v27 + v25));
    if (!v36)
    {
      v36 = xpc_null_create();
    }

    xpc_dictionary_set_value(*a3, *MEMORY[0x29EDBE460], v36);
    v37 = xpc_null_create();
    xpc_release(v36);
    xpc_release(v37);
    v38 = difftime(v95, v14);
    v39 = xpc_double_create(v38);
    if (!v39)
    {
      v39 = xpc_null_create();
    }

    xpc_dictionary_set_value(*a3, *MEMORY[0x29EDBEF88], v39);
    v40 = xpc_null_create();
    xpc_release(v39);
    xpc_release(v40);
    v41 = difftime(v96, v14);
    v42 = xpc_double_create(v41);
    if (!v42)
    {
      v42 = xpc_null_create();
    }

    xpc_dictionary_set_value(*a3, *MEMORY[0x29EDBE6F8], v42);
    v43 = xpc_null_create();
    xpc_release(v42);
    xpc_release(v43);
    v44 = difftime(v29, v14);
    v45 = xpc_double_create(v44);
    if (!v45)
    {
      v45 = xpc_null_create();
    }

    xpc_dictionary_set_value(*a3, *MEMORY[0x29EDBEA48], v45);
    v46 = xpc_null_create();
    xpc_release(v45);
    xpc_release(v46);
    if (SHIBYTE(object[2]) >= 0)
    {
      v47 = object;
    }

    else
    {
      v47 = object[0];
    }

    v48 = xpc_string_create(v47);
    if (!v48)
    {
      v48 = xpc_null_create();
    }

    xpc_dictionary_set_value(*a3, *MEMORY[0x29EDBE958], v48);
    v49 = xpc_null_create();
    xpc_release(v48);
    xpc_release(v49);
    __p = 0xAAAAAAAAAAAAAAAALL;
    v98 = 0xAAAAAAAAAAAAAAAALL;
    v101[0] = 16;
    *v103 = 0x1500000001;
    if (sysctl(v103, 2u, &__p, v101, 0, 0) >= 0)
    {
      v50 = __p;
    }

    else
    {
      v50 = 0;
    }

    v51 = difftime(v14, v50);
    v52 = xpc_double_create(v51);
    if (!v52)
    {
      v52 = xpc_null_create();
    }

    xpc_dictionary_set_value(*a3, *MEMORY[0x29EDBE700], v52);
    v53 = xpc_null_create();
    xpc_release(v52);
    xpc_release(v53);
    v54 = xpc_BOOL_create(value);
    if (!v54)
    {
      v54 = xpc_null_create();
    }

    xpc_dictionary_set_value(*a3, *MEMORY[0x29EDBE540], v54);
    v55 = xpc_null_create();
    xpc_release(v54);
    xpc_release(v55);
    pthread_mutex_lock(&ctu::Singleton<DeviceHistoryDB,DeviceHistoryDB,ctu::PthreadMutexGuardPolicy<DeviceHistoryDB>>::sInstance);
    if (!xmmword_2A18CAE28)
    {
      v56 = operator new(0x30uLL);
      DeviceHistoryDB::DeviceHistoryDB(v56);
      __p = v56;
      v57 = operator new(0x20uLL);
      v57->__vftable = &unk_2A1E467C8;
      v57->__shared_owners_ = 0;
      v57->__shared_weak_owners_ = 0;
      v57[1].__vftable = v56;
      v58 = *(&xmmword_2A18CAE28 + 1);
      *&xmmword_2A18CAE28 = v56;
      *(&xmmword_2A18CAE28 + 1) = v57;
      if (!v58)
      {
LABEL_94:
        atomic_fetch_add_explicit(&v57->__shared_owners_, 1uLL, memory_order_relaxed);
LABEL_95:
        v59 = pthread_mutex_unlock(&ctu::Singleton<DeviceHistoryDB,DeviceHistoryDB,ctu::PthreadMutexGuardPolicy<DeviceHistoryDB>>::sInstance);
        v60 = v56[40];
        if (v57 && !atomic_fetch_add(&v57->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v57->__on_zero_shared)(v57);
          std::__shared_weak_count::__release_weak(v57);
          if (v60)
          {
LABEL_98:
            __p = 0;
            v98 = 0;
            v99 = 0;
            pthread_mutex_lock(&ctu::Singleton<DeviceHistoryDB,DeviceHistoryDB,ctu::PthreadMutexGuardPolicy<DeviceHistoryDB>>::sInstance);
            if (!xmmword_2A18CAE28)
            {
              v62 = operator new(0x30uLL);
              DeviceHistoryDB::DeviceHistoryDB(v62);
              *v103 = v62;
              v61 = operator new(0x20uLL);
              *v61 = &unk_2A1E467C8;
              v61[1] = 0;
              v61[2] = 0;
              v61[3] = v62;
              v72 = *(&xmmword_2A18CAE28 + 1);
              *&xmmword_2A18CAE28 = v62;
              *(&xmmword_2A18CAE28 + 1) = v61;
              if (!v72)
              {
                v101[0] = v62;
                v101[1] = v61;
LABEL_123:
                atomic_fetch_add_explicit(v61 + 1, 1uLL, memory_order_relaxed);
LABEL_124:
                v73 = pthread_mutex_unlock(&ctu::Singleton<DeviceHistoryDB,DeviceHistoryDB,ctu::PthreadMutexGuardPolicy<DeviceHistoryDB>>::sInstance);
                if (v62 + 2 != &__p)
                {
                  std::vector<_DeviceHistoryItem>::__assign_with_size[abi:ne200100]<_DeviceHistoryItem*,_DeviceHistoryItem*>(&__p, v62[2], v62[3], 0xAAAAAAAAAAAAAAABLL * ((v62[3] - v62[2]) >> 5));
                }

                v74 = v101[1];
                if (v101[1] && !atomic_fetch_add((v101[1] + 8), 0xFFFFFFFFFFFFFFFFLL))
                {
                  (v74->__on_zero_shared)(v74);
                  std::__shared_weak_count::__release_weak(v74);
                }

                v75 = v98 - __p;
                if (0xAAAAAAAAAAAAAAABLL * ((v98 - __p) >> 5) < 2)
                {
                  config::build::version(v73);
                  if (v102 >= 0)
                  {
                    v81 = v101;
                  }

                  else
                  {
                    v81 = v101[0];
                  }

                  v82 = xpc_string_create(v81);
                  if (!v82)
                  {
                    v82 = xpc_null_create();
                  }

                  xpc_dictionary_set_value(*a3, *MEMORY[0x29EDBE468], v82);
                  v83 = xpc_null_create();
                  xpc_release(v82);
                  xpc_release(v83);
                  if (v102 < 0)
                  {
                    operator delete(v101[0]);
                  }

                  v80 = xpc_string_create("Information not available after a clean restore");
                  if (!v80)
                  {
                    v80 = xpc_null_create();
                  }
                }

                else
                {
                  v76 = (v98 - 9);
                  if (*(v98 - 49) < 0)
                  {
                    v76 = *v76;
                  }

                  v77 = xpc_string_create(v76);
                  if (!v77)
                  {
                    v77 = xpc_null_create();
                  }

                  xpc_dictionary_set_value(*a3, *MEMORY[0x29EDBE468], v77);
                  v78 = xpc_null_create();
                  xpc_release(v77);
                  xpc_release(v78);
                  v79 = __p + v75 - 168;
                  if (*(__p + v75 - 145) < 0)
                  {
                    v79 = *v79;
                  }

                  v80 = xpc_string_create(v79);
                  if (!v80)
                  {
                    v80 = xpc_null_create();
                  }
                }

                xpc_dictionary_set_value(*a3, *MEMORY[0x29EDBE4F8], v80);
                v84 = xpc_null_create();
                xpc_release(v80);
                xpc_release(v84);
                v85 = xpc_BOOL_create(1);
                if (!v85)
                {
                  v85 = xpc_null_create();
                }

                xpc_dictionary_set_value(*a3, *MEMORY[0x29EDBE4B0], v85);
                v86 = xpc_null_create();
                xpc_release(v85);
                xpc_release(v86);
                v87 = __p;
                if (!__p)
                {
                  goto LABEL_165;
                }

                v88 = v98;
                v89 = __p;
                if (v98 == __p)
                {
LABEL_164:
                  v98 = v87;
                  operator delete(v89);
LABEL_165:
                  v91 = *(a1 + 104);
                  if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
                  {
                    xpc::object::to_string(&__p, a3);
                    v92 = v99 >= 0 ? &__p : __p;
                    LODWORD(v101[0]) = 136315138;
                    *(v101 + 4) = v92;
                    _os_log_impl(&dword_297476000, v91, OS_LOG_TYPE_DEFAULT, "#I Sending out AWD metric: %s", v101, 0xCu);
                    if (SHIBYTE(v99) < 0)
                    {
                      operator delete(__p);
                    }
                  }

                  if (SHIBYTE(object[2]) < 0)
                  {
                    operator delete(object[0]);
                  }

                  goto LABEL_173;
                }

                while (1)
                {
                  if (*(v88 - 1) < 0)
                  {
                    operator delete(*(v88 - 3));
                    if (*(v88 - 25) < 0)
                    {
                      goto LABEL_160;
                    }

LABEL_157:
                    if ((*(v88 - 49) & 0x80000000) == 0)
                    {
                      goto LABEL_161;
                    }

LABEL_153:
                    operator delete(*(v88 - 9));
                    v90 = v88 - 12;
                    if (*(v88 - 73) < 0)
                    {
                      goto LABEL_162;
                    }

LABEL_154:
                    v88 = v90;
                    if (v90 == v87)
                    {
                      goto LABEL_163;
                    }
                  }

                  else
                  {
                    if ((*(v88 - 25) & 0x80000000) == 0)
                    {
                      goto LABEL_157;
                    }

LABEL_160:
                    operator delete(*(v88 - 6));
                    if (*(v88 - 49) < 0)
                    {
                      goto LABEL_153;
                    }

LABEL_161:
                    v90 = v88 - 12;
                    if ((*(v88 - 73) & 0x80000000) == 0)
                    {
                      goto LABEL_154;
                    }

LABEL_162:
                    operator delete(*v90);
                    v88 = v90;
                    if (v90 == v87)
                    {
LABEL_163:
                      v89 = __p;
                      goto LABEL_164;
                    }
                  }
                }
              }

              if (!atomic_fetch_add(&v72->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v72->__on_zero_shared)(v72);
                std::__shared_weak_count::__release_weak(v72);
              }
            }

            v61 = *(&xmmword_2A18CAE28 + 1);
            v62 = xmmword_2A18CAE28;
            *v101 = xmmword_2A18CAE28;
            if (!*(&xmmword_2A18CAE28 + 1))
            {
              goto LABEL_124;
            }

            goto LABEL_123;
          }
        }

        else if (v60)
        {
          goto LABEL_98;
        }

        config::build::version(v59);
        if (v99 >= 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        v64 = xpc_string_create(p_p);
        if (!v64)
        {
          v64 = xpc_null_create();
        }

        xpc_dictionary_set_value(*a3, *MEMORY[0x29EDBE468], v64);
        v65 = xpc_null_create();
        xpc_release(v64);
        xpc_release(v65);
        if (SHIBYTE(v99) < 0)
        {
          operator delete(__p);
        }

        config::build::version(v66);
        if (v99 >= 0)
        {
          v67 = &__p;
        }

        else
        {
          v67 = __p;
        }

        v68 = xpc_string_create(v67);
        if (!v68)
        {
          v68 = xpc_null_create();
        }

        xpc_dictionary_set_value(*a3, *MEMORY[0x29EDBE4F8], v68);
        v69 = xpc_null_create();
        xpc_release(v68);
        xpc_release(v69);
        if (SHIBYTE(v99) < 0)
        {
          operator delete(__p);
        }

        v70 = xpc_BOOL_create(0);
        if (!v70)
        {
          v70 = xpc_null_create();
        }

        xpc_dictionary_set_value(*a3, *MEMORY[0x29EDBE4B0], v70);
        v71 = xpc_null_create();
        xpc_release(v70);
        xpc_release(v71);
        goto LABEL_165;
      }

      if (!atomic_fetch_add(&v58->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v58->__on_zero_shared)(v58);
        std::__shared_weak_count::__release_weak(v58);
      }
    }

    v56 = xmmword_2A18CAE28;
    v57 = *(&xmmword_2A18CAE28 + 1);
    if (!*(&xmmword_2A18CAE28 + 1))
    {
      goto LABEL_95;
    }

    goto LABEL_94;
  }

  v12 = *(a1 + 104);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    LOWORD(object[0]) = 0;
    _os_log_error_impl(&dword_297476000, v12, OS_LOG_TYPE_ERROR, "Failed to prepare xpc dictionary to update CommCenter stats", object, 2u);
  }

  *a3 = xpc_null_create();
LABEL_174:
  xpc_release(v10);
  v93 = *MEMORY[0x29EDCA608];
}

void sub_29752BD60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, char a22)
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

  if (MEMORY[0x29C272BA0](v9) == v10)
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
  if (MEMORY[0x29C272BA0](v21) == v10)
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
      _os_log_error_impl(&dword_297476000, v13, OS_LOG_TYPE_ERROR, "Failed to create output dictionary", object, 2u);
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

void sub_29752C410(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, char a11, uint64_t a12, xpc_object_t a13)
{
  xpc_release(object);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

uint64_t HealthModule::getBootFailureCauseCode_sync(HealthModule *this)
{
  v30 = *MEMORY[0x29EDCA608];
  pthread_mutex_lock(&ctu::Singleton<HealthEventDB,HealthEventDB,ctu::PthreadMutexGuardPolicy<HealthEventDB>>::sInstance);
  if (xmmword_2A18CAEC8)
  {
    goto LABEL_2;
  }

  v2 = operator new(0x68uLL);
  HealthEventDB::HealthEventDB(v2);
  *buf = v2;
  v3 = operator new(0x20uLL);
  v3->__vftable = &unk_2A1E46550;
  v3->__shared_owners_ = 0;
  v3->__shared_weak_owners_ = 0;
  v3[1].__vftable = v2;
  v4 = *(&xmmword_2A18CAEC8 + 1);
  *&xmmword_2A18CAEC8 = v2;
  *(&xmmword_2A18CAEC8 + 1) = v3;
  if (v4)
  {
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

LABEL_2:
    v3 = *(&xmmword_2A18CAEC8 + 1);
    v2 = xmmword_2A18CAEC8;
    if (!*(&xmmword_2A18CAEC8 + 1))
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
        _os_log_impl(&dword_297476000, v6, OS_LOG_TYPE_DEFAULT, "#I Current health events size is %lu and we need more events to check boot failure cause", buf, 0xCu);
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
      _os_log_debug_impl(&dword_297476000, v13, OS_LOG_TYPE_DEBUG, "#D %s", v22, 0xCu);
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
        _os_log_impl(&dword_297476000, v13, OS_LOG_TYPE_DEFAULT, "#I Boot failure cause code [%s] - countSwError=%d, totalCount=%d", buf, 0x18u);
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

void sub_29752C884(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
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
    _os_log_debug_impl(&dword_297476000, v2, OS_LOG_TYPE_DEBUG, "#D Registering event handlers", &__p, 2u);
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
  *v12 = &unk_2A1E465A0;
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
  *v18 = &unk_2A1E46650;
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
  v13[3] = &__block_descriptor_tmp_13_4;
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
  block[3] = &unk_2A1E466C8;
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
  *this = &unk_2A1E463B0;
  v2 = this + 104;
  v3 = *(this + 13);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_297476000, v3, OS_LOG_TYPE_DEFAULT, "#I Gone!", v14, 2u);
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

  MEMORY[0x29C270D60](v2);
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

  *this = &unk_2A1E500C0;
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

  *a1 = &unk_2A1E500C0;
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
    *a1 = &unk_2A1E42AA8;
    std::__shared_weak_count::__release_weak(v6);
    v7 = &unk_2A1E463B0;
    *a1 = &unk_2A1E463B0;
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
  *a1 = &unk_2A1E42AA8;
  v7 = &unk_2A1E463B0;
  *a1 = &unk_2A1E463B0;
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
  MEMORY[0x29C270D50](a1 + 13, v19);
  MEMORY[0x29C270D60](v19);
  ctu::OsLogContext::~OsLogContext(v18);
  if (v9)
  {
    dispatch_release(v9);
  }

  *a1 = &unk_2A1E463B0;
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

void sub_29752D3C8(_Unwind_Exception *a1)
{
  v5 = *(v1 + 16);
  *(v1 + 16) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v3);
  MEMORY[0x29C270D60](v1 + 104);
  ctu::SharedSynchronizable<data::TransportService::State>::~SharedSynchronizable(v2);
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
  aBlock[3] = &__block_descriptor_tmp_18_0;
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
  v13 = off_2A18CADD8;
  if (!off_2A18CADD8)
  {
    CommandDriverFactory::create_default_global(&v34, v12);
    v14 = v34;
    v34 = 0uLL;
    v15 = *(&off_2A18CADD8 + 1);
    off_2A18CADD8 = v14;
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

    v13 = off_2A18CADD8;
  }

  v17 = *(&off_2A18CADD8 + 1);
  v23 = v13;
  v24 = *(&off_2A18CADD8 + 1);
  if (*(&off_2A18CADD8 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18CADD8 + 1) + 8), 1uLL, memory_order_relaxed);
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

void sub_29752D81C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23, void *aBlock)
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
      _os_log_error_impl(&dword_297476000, v11, OS_LOG_TYPE_ERROR, "%@", &v23, 0xCu);
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
  MEMORY[0x29C270ED0](v20);
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

void sub_29752DAE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](va);
  operator delete(v7);
  _Unwind_Resume(a1);
}

void sub_29752DB04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, char a18)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x29C270ED0](&a16);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a18);
  _Unwind_Resume(a1);
}

void sub_29752DB38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
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

uint64_t dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>,ctu::cf::CFSharedRef<__CFDictionary const>)>::~callback(uint64_t a1)
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

uint64_t HealthModule::getFailureCountInHealthEventDB_sync(NSObject **this)
{
  v24 = *MEMORY[0x29EDCA608];
  pthread_mutex_lock(&ctu::Singleton<HealthEventDB,HealthEventDB,ctu::PthreadMutexGuardPolicy<HealthEventDB>>::sInstance);
  if (xmmword_2A18CAEC8)
  {
    goto LABEL_2;
  }

  v2 = operator new(0x68uLL);
  HealthEventDB::HealthEventDB(v2);
  *buf = v2;
  v3 = operator new(0x20uLL);
  v3->__vftable = &unk_2A1E46550;
  v3->__shared_owners_ = 0;
  v3->__shared_weak_owners_ = 0;
  v3[1].__vftable = v2;
  v4 = *(&xmmword_2A18CAEC8 + 1);
  *&xmmword_2A18CAEC8 = v2;
  *(&xmmword_2A18CAEC8 + 1) = v3;
  if (v4)
  {
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

LABEL_2:
    v3 = *(&xmmword_2A18CAEC8 + 1);
    v2 = xmmword_2A18CAEC8;
    if (!*(&xmmword_2A18CAEC8 + 1))
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
      *buf = &unk_2A1E46818;
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
      *buf = &unk_2A1E46818;
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
      *buf = &unk_2A1E46818;
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
    _os_log_impl(&dword_297476000, v15, OS_LOG_TYPE_DEFAULT, "#I boot failure count: %ld, baseband crash count: %ld, ping failure count: %ld", buf, 0x20u);
  }

  v16 = *MEMORY[0x29EDCA608];
  return v7 + v13 + v14;
}

void sub_29752DFB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
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
  *a2 = &unk_2A1E46818;
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
  if (!xmmword_2A18CAEC8)
  {
    v6 = operator new(0x68uLL);
    HealthEventDB::HealthEventDB(v6);
    v38.__vftable = v6;
    v5 = operator new(0x20uLL);
    *v5 = &unk_2A1E46550;
    v5[1] = 0;
    v5[2] = 0;
    v5[3] = v6;
    v7 = *(&xmmword_2A18CAEC8 + 1);
    *&xmmword_2A18CAEC8 = v6;
    *(&xmmword_2A18CAEC8 + 1) = v5;
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

  v5 = *(&xmmword_2A18CAEC8 + 1);
  v6 = xmmword_2A18CAEC8;
  buf = xmmword_2A18CAEC8;
  if (*(&xmmword_2A18CAEC8 + 1))
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
      *v14 = &unk_2A1E46818;
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
    _os_log_impl(&dword_297476000, v30, OS_LOG_TYPE_DEFAULT, "#I Found preliminary barrier event: %s", &buf, 0xCu);
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

void sub_29752E4FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, HealthEventDB *a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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
      _os_log_impl(&dword_297476000, v4, OS_LOG_TYPE_DEFAULT, "#I Total health failure count reached EFS erase threshold (%d)%s", buf, 0x12u);
    }

    if (v3)
    {
      v6 = xpc_dictionary_create(0, 0, 0);
      if (v6 || (v6 = xpc_null_create()) != 0)
      {
        if (MEMORY[0x29C272BA0](v6) == MEMORY[0x29EDCAA00])
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

void sub_29752E8C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
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
  if (xmmword_2A18CAEC8)
  {
    goto LABEL_2;
  }

  v7 = operator new(0x68uLL);
  HealthEventDB::HealthEventDB(v7);
  v6 = operator new(0x20uLL);
  v6->__vftable = &unk_2A1E46550;
  v6->__shared_owners_ = 0;
  v6->__shared_weak_owners_ = 0;
  v6[1].__vftable = v7;
  v9 = *(&xmmword_2A18CAEC8 + 1);
  *&xmmword_2A18CAEC8 = v7;
  *(&xmmword_2A18CAEC8 + 1) = v6;
  if (v9)
  {
    if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
    }

LABEL_2:
    v6 = *(&xmmword_2A18CAEC8 + 1);
    v8 = xmmword_2A18CAEC8;
    v10 = (v8 >> 64);
    v7 = v8;
    if (!*(&xmmword_2A18CAEC8 + 1))
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

void sub_29752EACC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::unique_ptr<HealthEventDB>::~unique_ptr[abi:ne200100](va);
  pthread_mutex_unlock(&ctu::Singleton<HealthEventDB,HealthEventDB,ctu::PthreadMutexGuardPolicy<HealthEventDB>>::sInstance);
  _Unwind_Resume(a1);
}

void sub_29752EB08(_Unwind_Exception *a1, uint64_t a2, ...)
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
        if (MEMORY[0x29C272BA0](v5) == MEMORY[0x29EDCAA00])
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
      v18 = xmmword_2976A1090;
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
        if (MEMORY[0x29C272BA0](v7) == MEMORY[0x29EDCAA00])
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
      v18 = xmmword_2976A1090;
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

void sub_29752EE18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, uint64_t a12, xpc_object_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
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

void sub_29752F0A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25)
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

void sub_29752F100(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19)
{
  support::ui::NotificationInfo::~NotificationInfo(&a9);
  support::ui::NotificationInfo::~NotificationInfo(&a19);
  _Unwind_Resume(a1);
}

void sub_29752F11C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  support::ui::NotificationInfo::~NotificationInfo(va);
  _Unwind_Resume(a1);
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

uint64_t HealthModule::classifyFailureCauseCode(uint64_t a1, int a2, uint64_t a3)
{
  if (a2 == 1)
  {
    v56[1] = 0xAAAAAAAAAAAAAAAALL;
    v56[2] = 0x9AAAAAAAAAAAAAALL;
    v48[22] = -86;
    v47[2] = 0x12AAAAAAAAAAAAAALL;
    *buf = operator new(0x30uLL);
    v32 = xmmword_2976A10A0;
    strcpy(*buf, "Failed to create BasebandUpdater instance");
    v33 = operator new(0x20uLL);
    v34 = xmmword_29769DFF0;
    strcpy(v33, "Copied data size mismatch");
    v35 = operator new(0x20uLL);
    v36 = xmmword_2976A10B0;
    strcpy(v35, "Failed to load the NVM image");
    v37 = operator new(0x28uLL);
    v38 = xmmword_2976A0EA0;
    strcpy(v37, "Failed to copy NVM image payload");
    v39 = operator new(0x20uLL);
    v40 = xmmword_2976A10B0;
    strcpy(v39, "Failed to copy image payload");
    v41 = operator new(0x20uLL);
    v42 = xmmword_2976A10B0;
    strcpy(v41, "Failed to copy MI Image data");
    v43 = operator new(0x20uLL);
    v44 = xmmword_2976A10C0;
    strcpy(v43, "Failed to copy from ELF image");
    v45 = operator new(0x38uLL);
    strcpy(v45, "Copied data size does not match root manifest size");
    v46 = xmmword_2976A10D0;
    strcpy(v47, "BBUpdater error 4.");
    v48[23] = 21;
    strcpy(v48, "kBBUReturnBadArgument");
    v49 = operator new(0x20uLL);
    v50 = xmmword_2976A10B0;
    strcpy(v49, "Failed to create data source");
    v51 = operator new(0x20uLL);
    v52 = xmmword_2976A10E0;
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
      _os_log_impl(&dword_297476000, v4, OS_LOG_TYPE_DEFAULT, "#I HealthEvent cause analysis is supported only for BootFailure", buf, 2u);
      return 0;
    }
  }

  return v5;
}

void sub_29752F710(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::array<std::string,14ul>::~array(va);
  _Unwind_Resume(a1);
}

void sub_29752F724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
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
      JUMPOUT(0x29752F71CLL);
    }
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

void sub_29752FB54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  std::unique_ptr<TransportModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,std::default_delete<TransportModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a9);
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

void sub_29752FC4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  std::unique_ptr<TransportModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,std::default_delete<TransportModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a9);
  _Unwind_Resume(a1);
}

void *HealthEventDB::create_default_global(HealthEventDB *this)
{
  v2 = operator new(0x68uLL);
  HealthEventDB::HealthEventDB(v2);
  *this = v2;
  result = operator new(0x20uLL);
  *result = &unk_2A1E46550;
  result[1] = 0;
  result[2] = 0;
  result[3] = v2;
  *(this + 1) = result;
  return result;
}

void sub_29752FCD4(_Unwind_Exception *a1, uint64_t a2, ...)
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
  v2 = off_2A18CAED0;
  *&qword_2A18CAEC8 = v1;
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);

    std::__shared_weak_count::__release_weak(v2);
  }
}

void std::__shared_ptr_pointer<HealthEventDB *,std::shared_ptr<HealthEventDB>::__shared_ptr_default_delete<HealthEventDB,HealthEventDB>,std::allocator<HealthEventDB>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<HealthEventDB *,std::shared_ptr<HealthEventDB>::__shared_ptr_default_delete<HealthEventDB,HealthEventDB>,std::allocator<HealthEventDB>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    HealthEventDB::~HealthEventDB(v1);

    operator delete(v2);
  }
}

uint64_t std::__shared_ptr_pointer<HealthEventDB *,std::shared_ptr<HealthEventDB>::__shared_ptr_default_delete<HealthEventDB,HealthEventDB>,std::allocator<HealthEventDB>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x80000002976A1349)
  {
    if (((v2 & 0x80000002976A1349 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000002976A1349))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000002976A1349 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void HealthEventDB::~HealthEventDB(HealthEventDB *this)
{
  *this = &unk_2A1E49DE0;
  v2 = *(this + 10);
  if (v2)
  {
    do
    {
      while (1)
      {
        v3 = *v2;
        v4 = v2[6];
        if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v4->__on_zero_shared)(v4);
          std::__shared_weak_count::__release_weak(v4);
        }

        if (*(v2 + 39) < 0)
        {
          break;
        }

        operator delete(v2);
        v2 = v3;
        if (!v3)
        {
          goto LABEL_9;
        }
      }

      operator delete(v2[2]);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

LABEL_9:
  v5 = *(this + 8);
  *(this + 8) = 0;
  if (v5)
  {
    operator delete(v5);
  }

  if (*(this + 7))
  {
    v6 = 0;
    v7 = *(this + 5);
    do
    {
      (**v7)(v7);
      v8 = *(this + 4);
      v7 = (*(this + 5) + 24);
      *(this + 5) = v7;
      if (v7 == v8)
      {
        v7 = *(this + 3);
        *(this + 5) = v7;
      }

      ++v6;
    }

    while (v6 < *(this + 7));
  }

  v9 = *(this + 3);
  if (v9)
  {
    operator delete(v9);
  }

  MEMORY[0x29C270D60](this + 8);
}

HealthEventDB **std::unique_ptr<HealthEventDB>::~unique_ptr[abi:ne200100](HealthEventDB **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    HealthEventDB::~HealthEventDB(v2);
    operator delete(v4);
    return v3;
  }

  return v1;
}

uint64_t ctu::PthreadMutexGuardPolicy<HealthEventDB>::~PthreadMutexGuardPolicy(uint64_t a1)
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

uint64_t std::__function::__func<HealthModule::registerEventHandlers_sync(void)::$_0,std::allocator<HealthModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::~__func(uint64_t result)
{
  *result = &unk_2A1E465A0;
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
  *a1 = &unk_2A1E465A0;
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
  *result = &unk_2A1E465A0;
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
  *a2 = &unk_2A1E465A0;
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

void sub_2975304DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
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
      _os_log_impl(&dword_297476000, v12, OS_LOG_TYPE_DEFAULT, "#I Baseband ping timer already running", object, 2u);
      v12 = *(v2 + 104);
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(object[0]) = 0;
      _os_log_impl(&dword_297476000, v12, OS_LOG_TYPE_DEFAULT, "#I Canceling baseband ping timer", object, 2u);
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
    _os_log_impl(&dword_297476000, v14, OS_LOG_TYPE_DEFAULT, "#I Starting %u sec timer before pinging baseband", object, 8u);
  }

  v15 = *(v2 + 112);
  __p.__r_.__value_.__r.__words[0] = operator new(0x28uLL);
  *&__p.__r_.__value_.__r.__words[1] = xmmword_2976A0EA0;
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
  object[3] = &__block_descriptor_tmp_55;
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
    if (MEMORY[0x29C272BA0](v21) == MEMORY[0x29EDCAA00])
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
  if (!xmmword_2A18CAEC8)
  {
    v37 = operator new(0x68uLL);
    HealthEventDB::HealthEventDB(v37);
    v58 = v37;
    v36 = operator new(0x20uLL);
    *v36 = &unk_2A1E46550;
    v36[1] = 0;
    v36[2] = 0;
    v36[3] = v37;
    v38 = *(&xmmword_2A18CAEC8 + 1);
    *&xmmword_2A18CAEC8 = v37;
    *(&xmmword_2A18CAEC8 + 1) = v36;
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

  v36 = *(&xmmword_2A18CAEC8 + 1);
  v37 = xmmword_2A18CAEC8;
  *&v55.__r_.__value_.__l.__data_ = xmmword_2A18CAEC8;
  if (*(&xmmword_2A18CAEC8 + 1))
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
    _os_log_error_impl(&dword_297476000, v41, OS_LOG_TYPE_ERROR, "Failed to update health DB", &v55, 2u);
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

void sub_297530F90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *aBlock, dispatch_object_t a12, xpc_object_t object, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, xpc_object_t a31, xpc_object_t a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, std::__shared_weak_count *a41)
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
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a9);
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

void ctu::TimerService::createOneShotTimer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, NSObject **a5, void **a6)
{
  v10 = *(a2 + 16);
  *__p = *a2;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v6 = *a5;
  *a5 = 0;
  aBlock = *a6;
  object = v6;
  *a6 = 0;
  (*(*a1 + 16))(a1, __p, a3, a4, 0, &object, &aBlock);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2975312D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *aBlock, dispatch_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (object)
  {
    dispatch_release(object);
    if ((a16 & 0x80000000) == 0)
    {
LABEL_5:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a16 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
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
          _os_log_impl(&dword_297476000, v6, OS_LOG_TYPE_DEFAULT, "#I Pinging baseband to verify it is healthy", buf, 2u);
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

void sub_297531474(_Unwind_Exception *a1)
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
      _os_log_impl(&dword_297476000, v5, OS_LOG_TYPE_DEFAULT, "#I Successfully received ping response from baseband (firmware version is %s)", &v9, 0xCu);
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
  *result = &unk_2A1E46650;
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
  *a1 = &unk_2A1E46650;
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
  *result = &unk_2A1E46650;
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
  *a2 = &unk_2A1E46650;
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

void sub_29753198C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
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
    _os_log_impl(&dword_297476000, v4, OS_LOG_TYPE_DEFAULT, "#I %s detected", &object, 0xCu);
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
    _os_log_impl(&dword_297476000, v11, OS_LOG_TYPE_DEFAULT, "#I Cleaning up health event db due to change in hardware model", &object, 2u);
  }

  pthread_mutex_lock(&ctu::Singleton<HealthEventDB,HealthEventDB,ctu::PthreadMutexGuardPolicy<HealthEventDB>>::sInstance);
  if (xmmword_2A18CAEC8)
  {
LABEL_21:
    v12 = *(&xmmword_2A18CAEC8 + 1);
    v13 = xmmword_2A18CAEC8;
    object = xmmword_2A18CAEC8;
    if (!*(&xmmword_2A18CAEC8 + 1))
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v13 = operator new(0x68uLL);
  HealthEventDB::HealthEventDB(v13);
  __s1[3] = v13;
  v12 = operator new(0x20uLL);
  *v12 = &unk_2A1E46550;
  v12[1] = 0;
  v12[2] = 0;
  v12[3] = v13;
  v14 = *(&xmmword_2A18CAEC8 + 1);
  *&xmmword_2A18CAEC8 = v13;
  *(&xmmword_2A18CAEC8 + 1) = v12;
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

void sub_297531DE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, HealthEventDB *a17, xpc_object_t object)
{
  std::unique_ptr<HealthEventDB>::~unique_ptr[abi:ne200100](&a17);
  pthread_mutex_unlock(&ctu::Singleton<HealthEventDB,HealthEventDB,ctu::PthreadMutexGuardPolicy<HealthEventDB>>::sInstance);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  std::unique_ptr<HealthModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},std::default_delete<HealthModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&a10);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a9);
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
  *a1 = &unk_2A1E42080;
  std::logic_error::logic_error((a1 + 8), a2);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = -1;
  *a1 = &unk_2A1E46750;
  *(a1 + 8) = &unk_2A1E46780;
  *(a1 + 24) = &unk_2A1E467A8;
  return a1;
}

uint64_t boost::wrapexcept<std::length_error>::~wrapexcept(uint64_t a1)
{
  *(a1 + 24) = &unk_2A1E420D8;
  v2 = *(a1 + 32);
  if (v2 && (*(*v2 + 32))(v2))
  {
    *(a1 + 32) = 0;
  }

  MEMORY[0x29C271940](a1 + 8);
  return a1;
}

char *boost::wrapexcept<std::length_error>::clone(uint64_t a1)
{
  v2 = operator new(0x40uLL);
  *v2 = &unk_2A1E42080;
  std::logic_error::logic_error((v2 + 8), (a1 + 8));
  *(v2 + 1) = MEMORY[0x29EDC95D8] + 16;
  v3 = *(a1 + 32);
  *(v2 + 3) = &unk_2A1E420D8;
  *(v2 + 4) = v3;
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  *(v2 + 40) = *(a1 + 40);
  *(v2 + 14) = *(a1 + 56);
  *v2 = &unk_2A1E46750;
  *(v2 + 1) = &unk_2A1E46780;
  *(v2 + 3) = &unk_2A1E467A8;
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
  a1[3] = &unk_2A1E420D8;
  v2 = a1[4];
  if (v2 && (*(*v2 + 32))(v2))
  {
    a1[4] = 0;
  }

  MEMORY[0x29C271940](a1 + 1);

  operator delete(a1);
}

void non-virtual thunk toboost::wrapexcept<std::length_error>::~wrapexcept(uint64_t a1)
{
  *(a1 + 16) = &unk_2A1E420D8;
  v1 = *(a1 + 24);
  if (v1 && (*(*v1 + 32))(*(a1 + 24)))
  {
    *(a1 + 24) = 0;
  }

  JUMPOUT(0x29C271940);
}

{
  *(a1 + 16) = &unk_2A1E420D8;
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
  MEMORY[0x29C271940]();

  operator delete(v4);
}

void non-virtual thunk toboost::wrapexcept<std::length_error>::~wrapexcept(void *a1)
{
  *a1 = &unk_2A1E420D8;
  v2 = a1[1];
  if (v2 && (*(*v2 + 32))(v2))
  {
    a1[1] = 0;
  }

  JUMPOUT(0x29C271940);
}

{
  *a1 = &unk_2A1E420D8;
  v2 = a1[1];
  if (v2 && (*(*v2 + 32))(v2))
  {
    a1[1] = 0;
  }

  MEMORY[0x29C271940](a1 - 2);

  operator delete(a1 - 3);
}

uint64_t boost::wrapexcept<std::length_error>::wrapexcept(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2A1E42080;
  std::logic_error::logic_error((a1 + 8), (a2 + 8));
  *(a1 + 8) = MEMORY[0x29EDC95D8] + 16;
  v4 = *(a2 + 32);
  *(a1 + 24) = &unk_2A1E420D8;
  *(a1 + 32) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v5;
  *a1 = &unk_2A1E46750;
  *(a1 + 8) = &unk_2A1E46780;
  *(a1 + 24) = &unk_2A1E467A8;
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

void std::__shared_ptr_pointer<DeviceHistoryDB *,std::shared_ptr<DeviceHistoryDB>::__shared_ptr_default_delete<DeviceHistoryDB,DeviceHistoryDB>,std::allocator<DeviceHistoryDB>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<DeviceHistoryDB *,std::shared_ptr<DeviceHistoryDB>::__shared_ptr_default_delete<DeviceHistoryDB,DeviceHistoryDB>,std::allocator<DeviceHistoryDB>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (!v1)
  {
    return;
  }

  *v1 = &unk_2A1E47C28;
  v2 = v1[2];
  if (v2)
  {
    v3 = v1[3];
    v4 = v1[2];
    if (v3 == v2)
    {
LABEL_17:
      v1[3] = v2;
      operator delete(v4);
      goto LABEL_18;
    }

    while (1)
    {
      if (*(v3 - 1) < 0)
      {
        operator delete(*(v3 - 3));
        if ((*(v3 - 25) & 0x80000000) == 0)
        {
LABEL_8:
          if ((*(v3 - 49) & 0x80000000) == 0)
          {
            goto LABEL_9;
          }

          goto LABEL_13;
        }
      }

      else if ((*(v3 - 25) & 0x80000000) == 0)
      {
        goto LABEL_8;
      }

      operator delete(*(v3 - 6));
      if ((*(v3 - 49) & 0x80000000) == 0)
      {
LABEL_9:
        v5 = v3 - 12;
        if (*(v3 - 73) < 0)
        {
          goto LABEL_14;
        }

        goto LABEL_5;
      }

LABEL_13:
      operator delete(*(v3 - 9));
      v5 = v3 - 12;
      if (*(v3 - 73) < 0)
      {
LABEL_14:
        operator delete(*v5);
      }

LABEL_5:
      v3 = v5;
      if (v5 == v2)
      {
        v4 = v1[2];
        goto LABEL_17;
      }
    }
  }

LABEL_18:
  MEMORY[0x29C270D60](v1 + 1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<DeviceHistoryDB *,std::shared_ptr<DeviceHistoryDB>::__shared_ptr_default_delete<DeviceHistoryDB,DeviceHistoryDB>,std::allocator<DeviceHistoryDB>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x80000002976A15BBLL)
  {
    if (((v2 & 0x80000002976A15BBLL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000002976A15BBLL))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000002976A15BBLL & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void **std::unique_ptr<DeviceHistoryDB>::~unique_ptr[abi:ne200100](void **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    *v1 = &unk_2A1E47C28;
    v3 = v1[2];
    if (!v3)
    {
LABEL_17:
      MEMORY[0x29C270D60](v1 + 1);
      operator delete(v1);
      return v2;
    }

    v4 = v1[3];
    v5 = v1[2];
    if (v4 == v3)
    {
LABEL_16:
      v1[3] = v3;
      operator delete(v5);
      goto LABEL_17;
    }

    while (1)
    {
      if (*(v4 - 1) < 0)
      {
        operator delete(*(v4 - 3));
        if ((*(v4 - 25) & 0x80000000) == 0)
        {
LABEL_8:
          if ((*(v4 - 49) & 0x80000000) == 0)
          {
            goto LABEL_9;
          }

          goto LABEL_13;
        }
      }

      else if ((*(v4 - 25) & 0x80000000) == 0)
      {
        goto LABEL_8;
      }

      operator delete(*(v4 - 6));
      if ((*(v4 - 49) & 0x80000000) == 0)
      {
LABEL_9:
        v6 = v4 - 12;
        if (*(v4 - 73) < 0)
        {
          goto LABEL_14;
        }

        goto LABEL_5;
      }

LABEL_13:
      operator delete(*(v4 - 9));
      v6 = v4 - 12;
      if (*(v4 - 73) < 0)
      {
LABEL_14:
        operator delete(*v6);
      }

LABEL_5:
      v4 = v6;
      if (v6 == v3)
      {
        v5 = v1[2];
        goto LABEL_16;
      }
    }
  }

  return result;
}

uint64_t ctu::PthreadMutexGuardPolicy<DeviceHistoryDB>::~PthreadMutexGuardPolicy(uint64_t a1)
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

uint64_t __cxx_global_var_init_24()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<CommandDriverFactory>::~PthreadMutexGuardPolicy, &ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance, &dword_297476000);
  }

  return result;
}

uint64_t __cxx_global_var_init_25()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<HealthEventDB>::~PthreadMutexGuardPolicy, &ctu::Singleton<HealthEventDB,HealthEventDB,ctu::PthreadMutexGuardPolicy<HealthEventDB>>::sInstance, &dword_297476000);
  }

  return result;
}

uint64_t __cxx_global_var_init_26()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<DeviceHistoryDB>::~PthreadMutexGuardPolicy, &ctu::Singleton<DeviceHistoryDB,DeviceHistoryDB,ctu::PthreadMutexGuardPolicy<DeviceHistoryDB>>::sInstance, &dword_297476000);
  }

  return result;
}

void sub_297532DBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
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

void sub_297533BE4(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_2A18CB1E8);

  _Unwind_Resume(a1);
}

void sub_297533C50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
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

void sub_297533CB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::unique_ptr<std::__tree_node<std::__value_type<std::string,CallBackData>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,CallBackData>,void *>>>>::~unique_ptr[abi:ne200100](va);

  _Unwind_Resume(a1);
}

void sub_297533F08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  support::ui::NotificationInfo::~NotificationInfo((v25 + 40));
  _Unwind_Resume(a1);
}

void sub_297533F30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

void sub_297534914(_Unwind_Exception *a1)
{
  v3 = *(v1 + 120);
  if (v3)
  {
    dispatch_release(v3);
  }

  support::ui::NotificationInfo::~NotificationInfo((v1 + 40));
  _Unwind_Resume(a1);
}

void sub_29753493C(_Unwind_Exception *exception_object)
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

void sub_297534E18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  operator delete(v25);
  xpc_release(*(v26 - 72));
  _Unwind_Resume(a1);
}

void sub_2975356F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, dispatch_object_t object, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, dispatch_object_t a32)
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

void sub_297535844(_Unwind_Exception *a1)
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

void sub_297535A44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
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

void sub_297535AA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
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

  if ((atomic_load_explicit(&qword_2A18CB218, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18CB218))
  {
    qword_2A18CB220 = 0;
    qword_2A18CB228 = 0;
    __cxa_guard_release(&qword_2A18CB218);
  }

  if (qword_2A18CB210 == -1)
  {
    v9 = qword_2A18CB228;
    if (!os_log_type_enabled(qword_2A18CB228, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

LABEL_14:
    LOWORD(buf) = 0;
    _os_log_error_impl(&dword_297476000, v9, OS_LOG_TYPE_ERROR, "User notification requires an identifier", &buf, 2u);
    memset(&v45, 0, sizeof(v45));
    if (a1 <= 3)
    {
      goto LABEL_12;
    }

    goto LABEL_15;
  }

  dispatch_once(&qword_2A18CB210, &__block_literal_global_3);
  v9 = qword_2A18CB228;
  if (os_log_type_enabled(qword_2A18CB228, OS_LOG_TYPE_ERROR))
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
  if ((atomic_load_explicit(&qword_2A18CB218, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18CB218))
  {
    qword_2A18CB220 = 0;
    qword_2A18CB228 = 0;
    __cxa_guard_release(&qword_2A18CB218);
  }

  if (qword_2A18CB210 == -1)
  {
    v11 = qword_2A18CB228;
    v10 = os_log_type_enabled(qword_2A18CB228, OS_LOG_TYPE_ERROR);
    if (!v10)
    {
      goto LABEL_18;
    }

LABEL_125:
    LODWORD(buf) = 67109120;
    DWORD1(buf) = a1;
    _os_log_error_impl(&dword_297476000, v11, OS_LOG_TYPE_ERROR, "User notification is not supported for caller %d", &buf, 8u);
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

  dispatch_once(&qword_2A18CB210, &__block_literal_global_3);
  v11 = qword_2A18CB228;
  v10 = os_log_type_enabled(qword_2A18CB228, OS_LOG_TYPE_ERROR);
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

void sub_297536210(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, dispatch_object_t object, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, int a33, __int16 a34, char a35, char a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
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

void ___ZL16sGetOsLogContextv_block_invoke_2()
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

void AWDModule::create(uint64_t *a1@<X0>, atomic_ullong *a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  v4 = operator new(0x98uLL);
  v5 = v4;
  v6 = *a1;
  v7 = a1[1];
  v10[0] = v6;
  v10[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  AWDModule::AWDModule(v4, v10);
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  std::shared_ptr<AWDModule>::shared_ptr[abi:ne200100]<AWDModule,std::shared_ptr<AWDModule> ctu::SharedSynchronizable<AWDModule>::make_shared_ptr<AWDModule>(AWDModule*)::{lambda(AWDModule*)#1},0>(a2, v5);
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  v8 = *a2 + 72;
  v11 = *a2;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI9AWDModuleE20execute_wrapped_syncIZNS1_4initEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS5__block_invoke;
  block[3] = &__block_descriptor_tmp_67;
  block[4] = v8;
  block[5] = &v11;
  v9 = *(v11 + 88);
  if (*(v11 + 96))
  {
    dispatch_async_and_wait(v9, block);
  }

  else
  {
    dispatch_sync(v9, block);
  }
}

void sub_297536584(_Unwind_Exception *exception_object)
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

void AWDModule::init(AWDModule *this)
{
  v3 = this;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI9AWDModuleE20execute_wrapped_syncIZNS1_4initEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS5__block_invoke;
  block[3] = &__block_descriptor_tmp_67;
  block[4] = this + 72;
  block[5] = &v3;
  v2 = this + 88;
  v1 = *(this + 11);
  if (*(v2 + 1))
  {
    dispatch_async_and_wait(v1, block);
  }

  else
  {
    dispatch_sync(v1, block);
  }
}

void AWDModule::~AWDModule(AWDModule *this)
{
  *this = &unk_2A1E46900;
  std::__tree<std::__value_type<awd::AppID,std::shared_ptr<awd::AppContext>>,std::__map_value_compare<awd::AppID,std::__value_type<awd::AppID,std::shared_ptr<awd::AppContext>>,std::less<awd::AppID>,true>,std::allocator<std::__value_type<awd::AppID,std::shared_ptr<awd::AppContext>>>>::destroy(*(this + 17));
  v2 = *(this + 15);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  MEMORY[0x29C270D60](this + 104);
  v3 = *(this + 12);
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = *(this + 11);
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = *(this + 10);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  *this = &unk_2A1E500C0;
  std::__tree<std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>>>::destroy(this + 48, *(this + 7));
  v6 = *(this + 3);
  if (v6)
  {
    v7 = *(this + 4);
    v8 = *(this + 3);
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
      v8 = *(this + 3);
    }

    *(this + 4) = v6;
    operator delete(v8);
  }

  v10 = *(this + 2);
  if (v10)
  {
    std::__shared_weak_count::__release_weak(v10);
  }
}

{
  AWDModule::~AWDModule(this);

  operator delete(v1);
}

void *AWDModule::AWDModule(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = &unk_2A1E500C0;
  a1[1] = v3;
  a1[2] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    a1[3] = 0;
    a1[4] = 0;
    a1[8] = 0;
    a1[7] = 0;
    a1[5] = 0;
    a1[6] = a1 + 7;
    std::__shared_weak_count::__release_weak(v4);
    *a1 = &unk_2A1E42AA8;
    std::__shared_weak_count::__release_weak(v4);
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

  *a1 = &unk_2A1E46900;
  ctu::OsLogContext::OsLogContext(&v15, "com.apple.telephony.abm", "awd.mod");
  initially_inactive = dispatch_queue_attr_make_initially_inactive(0);
  v6 = dispatch_queue_create_with_target_V2("awd.mod", initially_inactive, 0);
  dispatch_set_qos_class_floor(v6, QOS_CLASS_DEFAULT, 0);
  dispatch_activate(v6);
  a1[9] = 0;
  a1[10] = 0;
  a1[11] = v6;
  if (v6)
  {
    dispatch_retain(v6);
    a1[12] = 0;
    dispatch_release(v6);
  }

  else
  {
    a1[12] = 0;
  }

  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x29C270D50](a1 + 13, v14);
  MEMORY[0x29C270D60](v14);
  ctu::OsLogContext::~OsLogContext(&v15);
  *a1 = &unk_2A1E46900;
  v7 = pthread_mutex_lock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  v8 = off_2A18CADD8;
  if (!off_2A18CADD8)
  {
    CommandDriverFactory::create_default_global(&v15, v7);
    v9 = v15;
    v15 = 0uLL;
    v10 = *(&off_2A18CADD8 + 1);
    off_2A18CADD8 = v9;
    if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
    }

    v11 = *(&v15 + 1);
    if (*(&v15 + 1) && !atomic_fetch_add((*(&v15 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
    }

    v8 = off_2A18CADD8;
  }

  v12 = *(&off_2A18CADD8 + 1);
  v14[0] = v8;
  v14[1] = *(&off_2A18CADD8 + 1);
  if (*(&off_2A18CADD8 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18CADD8 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  (*(*v8 + 64))(v8);
  if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  a1[18] = 0;
  a1[17] = 0;
  a1[16] = a1 + 17;
  return a1;
}

void sub_297536AC8(_Unwind_Exception *a1)
{
  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  MEMORY[0x29C270D60](v1 + 104);
  ctu::SharedSynchronizable<data::TransportService::State>::~SharedSynchronizable(v2);
  Service::~Service(v1);
  _Unwind_Resume(a1);
}

_WORD *AWDModule::getBootstrapStages@<X0>(void *a1@<X8>)
{
  v3 = operator new(2uLL);
  *a1 = v3;
  *v3 = 256;
  result = v3 + 1;
  a1[1] = result;
  a1[2] = result;
  return result;
}

_BYTE *AWDModule::getShutdownStages@<X0>(void *a1@<X8>)
{
  v3 = operator new(1uLL);
  *a1 = v3;
  *v3 = 3;
  result = v3 + 1;
  a1[1] = result;
  a1[2] = result;
  return result;
}

void AWDModule::shutdownWithStage(void *a1, char a2, NSObject **a3)
{
  v13[0] = MEMORY[0x29EDCA5F8];
  v13[1] = 1174405120;
  v13[2] = ___ZN9AWDModule17shutdownWithStageE13ShutdownStageN8dispatch13group_sessionE_block_invoke;
  v13[3] = &__block_descriptor_tmp_29;
  v5 = *a3;
  v13[4] = a1;
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
  block[2] = ___ZNK3ctu20SharedSynchronizableI9AWDModuleE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_2A1E46D08;
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

void ___ZN9AWDModule17shutdownWithStageE13ShutdownStageN8dispatch13group_sessionE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 120);
  *(v1 + 112) = 0;
  *(v1 + 120) = 0;
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);

    std::__shared_weak_count::__release_weak(v2);
  }
}

void AWDModule::bootstrap(void *a1, int a2, dispatch_object_t *a3)
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
    dispatch_async_f(v10, v11, dispatch::async<void ctu::SharedSynchronizable<AWDModule>::execute_wrapped<AWDModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(AWDModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<AWDModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<AWDModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke);
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
  dispatch_async_f(v17, v18, dispatch::async<void ctu::SharedSynchronizable<AWDModule>::execute_wrapped<AWDModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1>(AWDModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<AWDModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1,dispatch_queue_s *::default_delete<AWDModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_14;
  }
}

void AWDModule::registerCommandHandlers_sync(AWDModule *this)
{
  v2 = *(this + 13);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(__dst) = 0;
    _os_log_debug_impl(&dword_297476000, v2, OS_LOG_TYPE_DEBUG, "#D Registering command handlers", &__dst, 2u);
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

  v7 = *MEMORY[0x29EDBEE68];
  v8 = strlen(*MEMORY[0x29EDBEE68]);
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
  aBlock[2] = ___ZN9AWDModule28registerCommandHandlers_syncEv_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_5_8;
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

  v13 = *MEMORY[0x29EDBF110];
  v14 = strlen(*MEMORY[0x29EDBF110]);
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
  v37[2] = ___ZN9AWDModule28registerCommandHandlers_syncEv_block_invoke_6;
  v37[3] = &__block_descriptor_tmp_9_5;
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

  v19 = *MEMORY[0x29EDBE8C0];
  v20 = strlen(*MEMORY[0x29EDBE8C0]);
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
  v34[2] = ___ZN9AWDModule28registerCommandHandlers_syncEv_block_invoke_10;
  v34[3] = &__block_descriptor_tmp_13_5;
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

  v25 = *MEMORY[0x29EDBEEB0];
  v26 = strlen(*MEMORY[0x29EDBEEB0]);
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
  v31[2] = ___ZN9AWDModule28registerCommandHandlers_syncEv_block_invoke_14;
  v31[3] = &__block_descriptor_tmp_17_1;
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

void sub_297537560(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, std::__shared_weak_count *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, std::__shared_weak_count *a39)
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