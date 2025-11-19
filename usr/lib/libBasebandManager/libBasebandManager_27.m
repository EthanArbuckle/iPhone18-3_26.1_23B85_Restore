void sub_297156144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v9 = va_arg(va1, void *);
  __cxa_end_catch();
  pthread_mutex_unlock(&ctu::Singleton<ctu::power::assertion,ctu::power::assertion,ctu::PthreadMutexGuardPolicy<ctu::power::assertion>>::sInstance);
  std::unique_ptr<PowerManager::State::createPowerAssertion(std::string,std::chrono::duration<long long,std::ratio<1l,1000l>>)::{lambda(void)#1},std::default_delete<PowerManager::State::createPowerAssertion(std::string,std::chrono::duration<long long,std::ratio<1l,1000l>>)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](va1);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](va);
  JUMPOUT(0x2971561E0);
}

void sub_297156178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va2, a9);
  va_start(va1, a9);
  va_start(va, a9);
  v9 = va_arg(va1, void *);
  va_copy(va2, va1);
  v11 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  v16 = va_arg(va2, void);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](va2);
  std::unique_ptr<PowerManager::State::createPowerAssertion(std::string,std::chrono::duration<long long,std::ratio<1l,1000l>>)::{lambda(void)#1},std::default_delete<PowerManager::State::createPowerAssertion(std::string,std::chrono::duration<long long,std::ratio<1l,1000l>>)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](va1);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](va);
  JUMPOUT(0x2971561E0);
}

void sub_297156184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](va);
  JUMPOUT(0x2971561D0);
}

void sub_29715618C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a27);
  JUMPOUT(0x2971561D0);
}

void sub_2971561AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a29);
  std::unique_ptr<PowerManager::State::createPowerAssertion(std::string,std::chrono::duration<long long,std::ratio<1l,1000l>>)::{lambda(void)#1},std::default_delete<PowerManager::State::createPowerAssertion(std::string,std::chrono::duration<long long,std::ratio<1l,1000l>>)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&a19);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a18);
  JUMPOUT(0x2971561E0);
}

void sub_2971561BC(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ___ZZN12PowerManager5State20createPowerAssertionENSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEENS1_6chrono8durationIxNS1_5ratioILl1ELl1000EEEEEENKUlvE_clEv_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = std::__shared_weak_count::lock(v2);
    v19 = v4;
    if (v4)
    {
      v5 = *(a1 + 40);
      v18 = v5;
      if (!v5)
      {
LABEL_18:
        if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v14 = v4;
          (v4->__on_zero_shared)();
          std::__shared_weak_count::__release_weak(v14);
        }

        return;
      }

      v15 = v3;
      if (*(a1 + 79) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *(a1 + 56), *(a1 + 64));
      }

      else
      {
        __p = *(a1 + 56);
      }

      v17 = *(a1 + 80);
      v6 = v5[1];
      if (!v6 || (v7 = *v5, (v8 = std::__shared_weak_count::lock(v6)) == 0))
      {
        std::__throw_bad_weak_ptr[abi:ne200100]();
      }

      v9 = v8;
      v10 = operator new(0x28uLL);
      *v10 = v15;
      v11 = (v10 + 1);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(v11, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
      }

      else
      {
        *&v11->__r_.__value_.__l.__data_ = *&__p.__r_.__value_.__l.__data_;
        v10[3] = *(&__p.__r_.__value_.__l + 2);
      }

      v10[4] = v17;
      v12 = v5[2];
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      v13 = operator new(0x18uLL);
      *v13 = v10;
      v13[1] = v7;
      v13[2] = v9;
      dispatch_async_f(v12, v13, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableIN12PowerManager5StateEE15execute_wrappedIZZZNS4_20createPowerAssertionENSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEENS7_6chrono8durationIxNS7_5ratioILl1ELl1000EEEEEENKUlvE_clEvEUb_EUlvE_EEvOT_EUlvE_EEvP16dispatch_queue_sNS7_10unique_ptrISL_NS7_14default_deleteISL_EEEEENUlPvE_8__invokeESU_);
      if (atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_14:
          v4 = v19;
          if (!v19)
          {
            return;
          }

          goto LABEL_18;
        }
      }

      operator delete(__p.__r_.__value_.__l.__data_);
      v4 = v19;
      if (!v19)
      {
        return;
      }

      goto LABEL_18;
    }
  }
}

void sub_2971563D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void __copy_helper_block_e8_40c45_ZTSNSt3__18weak_ptrIN12PowerManager5StateEEE56c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 79) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 56), *(a2 + 56), *(a2 + 64));
  }

  else
  {
    v3 = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 56) = v3;
  }
}

void sub_29715645C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_40c45_ZTSNSt3__18weak_ptrIN12PowerManager5StateEEE56c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1)
{
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
    v2 = *(a1 + 48);
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = *(a1 + 48);
    if (!v2)
    {
      return;
    }
  }

  std::__shared_weak_count::__release_weak(v2);
}

void std::__shared_ptr_pointer<ctu::power::assertion *,std::shared_ptr<ctu::power::assertion> ctu::SharedSynchronizable<ctu::power::assertion>::make_shared_ptr<ctu::power::assertion>(ctu::power::assertion*)::{lambda(ctu::power::assertion *)#1},std::allocator<ctu::power::assertion>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<ctu::power::assertion *,std::shared_ptr<ctu::power::assertion> ctu::SharedSynchronizable<ctu::power::assertion>::make_shared_ptr<ctu::power::assertion>(ctu::power::assertion*)::{lambda(ctu::power::assertion *)#1},std::allocator<ctu::power::assertion>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableINS_5power9assertionEE15make_shared_ptrIS2_EENSt3__110shared_ptrIT_EEPS7_EUlPS2_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableINS_5power9assertionEE15make_shared_ptrIS2_EENSt3__110shared_ptrIT_EEPS7_EUlPS2_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableINS_5power9assertionEE15make_shared_ptrIS2_EENSt3__110shared_ptrIT_EEPS7_EUlPS2_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableINS_5power9assertionEE15make_shared_ptrIS2_EENSt3__110shared_ptrIT_EEPS7_EUlPS2_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void std::shared_ptr<ctu::power::assertion> ctu::SharedSynchronizable<ctu::power::assertion>::make_shared_ptr<ctu::power::assertion>(ctu::power::assertion*)::{lambda(ctu::power::assertion*)#1}::operator() const(ctu::power::assertion*)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,std::weak_ptr<ctu::power::assertion::HandleRaw>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::weak_ptr<ctu::power::assertion::HandleRaw>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::weak_ptr<ctu::power::assertion::HandleRaw>>>>::destroy(*(a1 + 40));
    v2 = *(a1 + 24);
    if (v2)
    {
      dispatch_release(v2);
    }

    v3 = *(a1 + 16);
    if (v3)
    {
      dispatch_release(v3);
    }

    v4 = *(a1 + 8);
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
    }

    operator delete(a1);
  }
}

void std::__tree<std::__value_type<std::string,std::weak_ptr<ctu::power::assertion::HandleRaw>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::weak_ptr<ctu::power::assertion::HandleRaw>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::weak_ptr<ctu::power::assertion::HandleRaw>>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,std::weak_ptr<ctu::power::assertion::HandleRaw>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::weak_ptr<ctu::power::assertion::HandleRaw>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::weak_ptr<ctu::power::assertion::HandleRaw>>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,std::weak_ptr<ctu::power::assertion::HandleRaw>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::weak_ptr<ctu::power::assertion::HandleRaw>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::weak_ptr<ctu::power::assertion::HandleRaw>>>>::destroy(*(a1 + 1));
    v2 = *(a1 + 8);
    if (v2)
    {
      std::__shared_weak_count::__release_weak(v2);
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

uint64_t *std::unique_ptr<std::__tree_node<std::__value_type<std::string,dispatch::group_session>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,dispatch::group_session>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*(result + 16) == 1)
    {
      v3 = *(v1 + 56);
      if (v3)
      {
        dispatch_group_leave(v3);
        v4 = *(v1 + 56);
        if (v4)
        {
          dispatch_release(v4);
        }
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

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableIN12PowerManager5StateEE15execute_wrappedIZZZNS4_20createPowerAssertionENSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEENS7_6chrono8durationIxNS7_5ratioILl1ELl1000EEEEEENKUlvE_clEvEUb_EUlvE_EEvOT_EUlvE_EEvP16dispatch_queue_sNS7_10unique_ptrISL_NS7_14default_deleteISL_EEEEENUlPvE_8__invokeESU_(std::__shared_weak_count **a1)
{
  v68 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  v50 = *a1;
  v2 = (*a1)->__vftable;
  v66 = 0xAAAAAAAAAAAAAAAALL;
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v65[7] = v3;
  v65[8] = v3;
  v65[5] = v3;
  v65[6] = v3;
  v65[3] = v3;
  v65[4] = v3;
  v65[1] = v3;
  v65[2] = v3;
  v64 = v3;
  v65[0] = v3;
  *__p = v3;
  v63 = v3;
  v60 = v3;
  v61 = v3;
  v58 = v3;
  v59 = v3;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v58);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v58, "Power assertion watchdog fired for '", 36);
  shared_owners = v1->__shared_owners_;
  v6 = SHIBYTE(v1[1].__vftable);
  if (v6 >= 0)
  {
    p_shared_owners = &v1->__shared_owners_;
  }

  else
  {
    p_shared_owners = v1->__shared_owners_;
  }

  if (v6 >= 0)
  {
    shared_weak_owners = HIBYTE(v1[1].__vftable);
  }

  else
  {
    shared_weak_owners = v1->__shared_weak_owners_;
  }

  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, p_shared_owners, shared_weak_owners);
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "'; Timeout (millisec): ", 23);
  MEMORY[0x29C26BE30](v10, v1[1].__shared_owners_);
  if (SHIBYTE(v1[1].__vftable) < 0)
  {
    std::string::__init_copy_ctor_external(&v57, v1->__shared_owners_, v1->__shared_weak_owners_);
  }

  else
  {
    v11 = *&v1->__shared_owners_;
    v57.__r_.__value_.__r.__words[2] = v1[1].__vftable;
    *&v57.__r_.__value_.__l.__data_ = v11;
  }

  PowerManager::State::releasePowerAssertion_sync(v2, &v57.__r_.__value_.__l.__data_);
  if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v57.__r_.__value_.__l.__data_);
  }

  if (!TelephonyUtilIsInternalBuild())
  {
    on_zero_shared_weak = v2->__on_zero_shared_weak;
    if (!os_log_type_enabled(on_zero_shared_weak, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_21;
    }

    if ((BYTE8(v64) & 0x10) != 0)
    {
      v44 = v64;
      if (v64 < *(&v61 + 1))
      {
        *&v64 = *(&v61 + 1);
        v44 = *(&v61 + 1);
      }

      v45 = &v61;
    }

    else
    {
      if ((BYTE8(v64) & 8) == 0)
      {
        v22 = 0;
        HIBYTE(v54) = 0;
        p_dst = &__dst;
        goto LABEL_103;
      }

      v45 = &v59 + 1;
      v44 = *(&v60 + 1);
    }

    v46 = *v45;
    v22 = v44 - *v45;
    if (v22 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v22 >= 0x17)
    {
      if ((v22 | 7) == 0x17)
      {
        v47 = 25;
      }

      else
      {
        v47 = (v22 | 7) + 1;
      }

      p_dst = operator new(v47);
      v53 = v22;
      v54 = v47 | 0x8000000000000000;
      __dst = p_dst;
    }

    else
    {
      HIBYTE(v54) = v44 - *v45;
      p_dst = &__dst;
      if (!v22)
      {
        goto LABEL_103;
      }
    }

    memmove(p_dst, v46, v22);
LABEL_103:
    *(p_dst + v22) = 0;
    v48 = &__dst;
    if (v54 < 0)
    {
      v48 = __dst;
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = v48;
    _os_log_fault_impl(&dword_296FF7000, on_zero_shared_weak, OS_LOG_TYPE_FAULT, "%s", &buf, 0xCu);
    if (SHIBYTE(v54) < 0)
    {
      operator delete(__dst);
    }

    goto LABEL_21;
  }

  on_zero_shared = v2[5].__on_zero_shared;
  if (!on_zero_shared)
  {
    goto LABEL_21;
  }

  v13 = std::__shared_weak_count::lock(on_zero_shared);
  v56 = v13;
  if (!v13)
  {
    goto LABEL_21;
  }

  v55 = v2[5].~__shared_weak_count_0;
  if (!v55)
  {
    if (atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_21;
    }

    v21 = v13;
    (v13->__on_zero_shared)(v13);
    goto LABEL_87;
  }

  v14 = xpc_dictionary_create(0, 0, 0);
  if (v14 || (v14 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C26CE60](v14) == MEMORY[0x29EDCAA00])
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
  if ((BYTE8(v64) & 0x10) != 0)
  {
    v26 = v64;
    if (v64 < *(&v61 + 1))
    {
      *&v64 = *(&v61 + 1);
      v26 = *(&v61 + 1);
    }

    v27 = v61;
    v24 = v26 - v61;
    if ((v26 - v61) > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_89;
    }
  }

  else
  {
    if ((BYTE8(v64) & 8) == 0)
    {
      v24 = 0;
      HIBYTE(v54) = 0;
      v25 = &__dst;
      goto LABEL_54;
    }

    v27 = *(&v59 + 1);
    v24 = *(&v60 + 1) - *(&v59 + 1);
    if (*(&v60 + 1) - *(&v59 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
    {
LABEL_89:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v24 >= 0x17)
  {
    if ((v24 | 7) == 0x17)
    {
      v28 = 25;
    }

    else
    {
      v28 = (v24 | 7) + 1;
    }

    v25 = operator new(v28);
    v53 = v24;
    v54 = v28 | 0x8000000000000000;
    __dst = v25;
    goto LABEL_53;
  }

  HIBYTE(v54) = v24;
  v25 = &__dst;
  if (v24)
  {
LABEL_53:
    memmove(v25, v27, v24);
  }

LABEL_54:
  *(v25 + v24) = 0;
  if (v54 >= 0)
  {
    v29 = &__dst;
  }

  else
  {
    v29 = __dst;
  }

  v30 = xpc_string_create(v29);
  if (!v30)
  {
    v30 = xpc_null_create();
  }

  xpc_dictionary_set_value(v15, *MEMORY[0x29EDBEF60], v30);
  v31 = xpc_null_create();
  xpc_release(v30);
  xpc_release(v31);
  if (SHIBYTE(v54) < 0)
  {
    operator delete(__dst);
  }

  v32 = xpc_int64_create(0);
  if (!v32)
  {
    v32 = xpc_null_create();
  }

  xpc_dictionary_set_value(v15, *MEMORY[0x29EDBE578], v32);
  v33 = xpc_null_create();
  xpc_release(v32);
  xpc_release(v33);
  Timestamp::Timestamp(&buf);
  Timestamp::asString(v34, 0, 9, &__dst);
  if (v54 >= 0)
  {
    v35 = &__dst;
  }

  else
  {
    v35 = __dst;
  }

  v36 = xpc_string_create(v35);
  if (!v36)
  {
    v36 = xpc_null_create();
  }

  xpc_dictionary_set_value(v15, *MEMORY[0x29EDBE930], v36);
  v37 = xpc_null_create();
  xpc_release(v36);
  xpc_release(v37);
  if (SHIBYTE(v54) < 0)
  {
    operator delete(__dst);
  }

  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(&buf, *(&buf + 1));
  v38 = v55;
  v39 = *MEMORY[0x29EDBEBE0];
  v40 = strlen(*MEMORY[0x29EDBEBE0]);
  if (v40 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v41 = v40;
  if (v40 >= 0x17)
  {
    if ((v40 | 7) == 0x17)
    {
      v43 = 25;
    }

    else
    {
      v43 = (v40 | 7) + 1;
    }

    v42 = operator new(v43);
    v53 = v41;
    v54 = v43 | 0x8000000000000000;
    __dst = v42;
    goto LABEL_78;
  }

  HIBYTE(v54) = v40;
  v42 = &__dst;
  if (v40)
  {
LABEL_78:
    memmove(v42, v39, v41);
  }

  *(v42 + v41) = 0;
  *&buf = v15;
  if (v15)
  {
    xpc_retain(v15);
  }

  else
  {
    *&buf = xpc_null_create();
  }

  v51 = 0;
  ServiceManager::runCommand(v38, &__dst, &buf, &v51);
  xpc_release(buf);
  *&buf = 0;
  if (SHIBYTE(v54) < 0)
  {
    operator delete(__dst);
  }

  xpc_release(v15);
  v21 = v56;
  if (v56 && !atomic_fetch_add(&v56->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v21->__on_zero_shared)(v21);
LABEL_87:
    std::__shared_weak_count::__release_weak(v21);
  }

LABEL_21:
  *&v58 = *MEMORY[0x29EDC9538];
  *(&v58 + *(v58 - 24)) = *(MEMORY[0x29EDC9538] + 24);
  *(&v58 + 1) = MEMORY[0x29EDC9570] + 16;
  if (SHIBYTE(v63) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v58 + 1) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(&v59);
  std::ostream::~ostream();
  MEMORY[0x29C26C030](v65);
  v17 = v50;
  if (v50)
  {
    if (SHIBYTE(v50[1].__vftable) < 0)
    {
      operator delete(v50->__shared_owners_);
      v17 = v50;
    }

    operator delete(v17);
  }

  v18 = a1;
  if (a1)
  {
    v19 = a1[2];
    if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v19->__on_zero_shared)(v19);
      std::__shared_weak_count::__release_weak(v19);
      v18 = a1;
    }

    operator delete(v18);
  }

  v20 = *MEMORY[0x29EDCA608];
}

void sub_297156EAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, char a27)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void PowerManager::State::releasePowerAssertion_sync(void *a1, const void **a2)
{
  v2 = a2;
  v59 = *MEMORY[0x29EDCA608];
  v5 = a1 + 18;
  v4 = a1[18];
  if (!v4)
  {
    goto LABEL_40;
  }

  v6 = *(a2 + 23);
  if (v6 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = *(a2 + 23);
  }

  else
  {
    v8 = a2[1];
  }

  v9 = a1 + 18;
  v10 = a1[18];
  do
  {
    while (1)
    {
      v11 = *(v10 + 55);
      v12 = v11 >= 0 ? v10 + 4 : v10[4];
      v13 = v11 >= 0 ? *(v10 + 55) : v10[5];
      v14 = v8 >= v13 ? v13 : v8;
      v15 = memcmp(v12, v7, v14);
      if (v15)
      {
        break;
      }

      if (v13 >= v8)
      {
        goto LABEL_23;
      }

LABEL_9:
      v10 = v10[1];
      if (!v10)
      {
        goto LABEL_24;
      }
    }

    if (v15 < 0)
    {
      goto LABEL_9;
    }

LABEL_23:
    v9 = v10;
    v10 = *v10;
  }

  while (v10);
LABEL_24:
  if (v9 == v5)
  {
    goto LABEL_40;
  }

  v16 = v9[4];
  v17 = *(v9 + 55);
  if (v17 >= 0)
  {
    v18 = v9 + 4;
  }

  else
  {
    v18 = v9[4];
  }

  if (v17 >= 0)
  {
    v19 = *(v9 + 55);
  }

  else
  {
    v19 = v9[5];
  }

  if (v19 >= v8)
  {
    v20 = v8;
  }

  else
  {
    v20 = v19;
  }

  v21 = memcmp(v7, v18, v20);
  if (v21)
  {
    if ((v21 & 0x80000000) == 0)
    {
      goto LABEL_36;
    }

LABEL_40:
    v24 = a1[4];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = v2;
      if (*(v2 + 23) < 0)
      {
        v25 = *v2;
      }

      v57 = 136315138;
      v58 = v25;
      v26 = "#I Attempt to release non-existent power assertion '%s'";
LABEL_58:
      _os_log_impl(&dword_296FF7000, v24, OS_LOG_TYPE_DEFAULT, v26, &v57, 0xCu);
    }
  }

  else
  {
    if (v8 < v19)
    {
      goto LABEL_40;
    }

LABEL_36:
    v22 = v9[1];
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
      v27 = v9;
      do
      {
        v23 = v27[2];
        v28 = *v23 == v27;
        v27 = v23;
      }

      while (!v28);
    }

    if (a1[17] == v9)
    {
      a1[17] = v23;
    }

    --a1[19];
    std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v4, v9);
    v29 = v9[8];
    if (v29 && !atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v29->__on_zero_shared)(v29);
      std::__shared_weak_count::__release_weak(v29);
    }

    if (*(v9 + 55) < 0)
    {
      operator delete(v9[4]);
    }

    operator delete(v9);
    v24 = a1[4];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v30 = v2;
      if (*(v2 + 23) < 0)
      {
        v30 = *v2;
      }

      v57 = 136315138;
      v58 = v30;
      v26 = "#I Released power assertion '%s'";
      goto LABEL_58;
    }
  }

  v31 = a1[21];
  if (!v31)
  {
    goto LABEL_113;
  }

  v32 = *(v2 + 23);
  if (v32 >= 0)
  {
    v33 = v2;
  }

  else
  {
    v33 = *v2;
  }

  if (v32 >= 0)
  {
    v34 = *(v2 + 23);
  }

  else
  {
    v34 = v2[1];
  }

  v35 = a1 + 21;
  v36 = a1[21];
  while (2)
  {
    while (2)
    {
      v37 = *(v36 + 55);
      if (v37 >= 0)
      {
        v38 = v36 + 4;
      }

      else
      {
        v38 = v36[4];
      }

      if (v37 >= 0)
      {
        v39 = *(v36 + 55);
      }

      else
      {
        v39 = v36[5];
      }

      if (v34 >= v39)
      {
        v40 = v39;
      }

      else
      {
        v40 = v34;
      }

      v41 = memcmp(v38, v33, v40);
      if (v41)
      {
        if ((v41 & 0x80000000) == 0)
        {
          break;
        }

        goto LABEL_67;
      }

      if (v39 < v34)
      {
LABEL_67:
        v36 = v36[1];
        if (!v36)
        {
          goto LABEL_82;
        }

        continue;
      }

      break;
    }

    v35 = v36;
    v36 = *v36;
    if (v36)
    {
      continue;
    }

    break;
  }

LABEL_82:
  if (v35 != a1 + 21)
  {
    v42 = v35[4];
    v43 = *(v35 + 55);
    if (v43 >= 0)
    {
      v44 = v35 + 4;
    }

    else
    {
      v44 = v35[4];
    }

    if (v43 >= 0)
    {
      v45 = *(v35 + 55);
    }

    else
    {
      v45 = v35[5];
    }

    if (v45 >= v34)
    {
      v46 = v34;
    }

    else
    {
      v46 = v45;
    }

    v47 = memcmp(v33, v44, v46);
    if (v47)
    {
      if (v47 < 0)
      {
        goto LABEL_113;
      }

LABEL_96:
      v48 = v35[1];
      if (v48)
      {
        do
        {
          v49 = v48;
          v48 = *v48;
        }

        while (v48);
      }

      else
      {
        v50 = v35;
        do
        {
          v49 = v50[2];
          v28 = *v49 == v50;
          v50 = v49;
        }

        while (!v28);
      }

      if (a1[20] == v35)
      {
        a1[20] = v49;
      }

      --a1[22];
      std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v31, v35);
      v51 = v35[8];
      if (v51 && !atomic_fetch_add(&v51->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v51->__on_zero_shared)(v51);
        std::__shared_weak_count::__release_weak(v51);
      }

      if (*(v35 + 55) < 0)
      {
        operator delete(v35[4]);
      }

      operator delete(v35);
      v52 = a1[4];
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
      {
        if (*(v2 + 23) < 0)
        {
          v2 = *v2;
        }

        v57 = 136315138;
        v58 = v2;
        _os_log_impl(&dword_296FF7000, v52, OS_LOG_TYPE_DEFAULT, "#I Clear watchdog timer for power assertion '%s'", &v57, 0xCu);
      }
    }

    else if (v34 >= v45)
    {
      goto LABEL_96;
    }
  }

LABEL_113:
  if (!a1[19])
  {
    *(a1[9] + 88) = 0;
    v54 = a1[12];
    if (v54)
    {
      v55 = a1[4];
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v57) = 0;
        _os_log_impl(&dword_296FF7000, v55, OS_LOG_TYPE_DEFAULT, "#I No more assertions held, acknowledging previous notification", &v57, 2u);
        v54 = a1[12];
      }

      (*(v54 + 16))(v54, 1);
      v56 = a1[12];
      a1[12] = 0;
      if (v56)
      {
        _Block_release(v56);
      }
    }
  }

  v53 = *MEMORY[0x29EDCA608];
}

void sub_2971574E0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void std::__shared_ptr_pointer<support::misc::Watchdog  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<support::misc::Watchdog  *>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    TelephonyBasebandWatchdogStop();

    operator delete(v1);
  }
}

uint64_t std::__shared_ptr_pointer<support::misc::Watchdog  *>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x800000029722D023)
  {
    if (((v2 & 0x800000029722D023 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000029722D023))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000029722D023 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void **std::unique_ptr<support::misc::Watchdog>::~unique_ptr[abi:ne200100](void **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    TelephonyBasebandWatchdogStop();
    operator delete(v2);
  }

  return a1;
}

void *std::unique_ptr<PowerManager::State::createPowerAssertion(std::string,std::chrono::duration<long long,std::ratio<1l,1000l>>)::{lambda(void)#1},std::default_delete<PowerManager::State::createPowerAssertion(std::string,std::chrono::duration<long long,std::ratio<1l,1000l>>)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](void *result)
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

    if (*(v1 + 31) < 0)
    {
      operator delete(*(v1 + 8));
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void dispatch::async<void ctu::SharedSynchronizable<PowerManager::State>::execute_wrapped<PowerManager::State::releasePowerAssertion(std::string)::{lambda(void)#1}>(PowerManager::State::releasePowerAssertion(std::string)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<PowerManager::State::releasePowerAssertion(std::string)::{lambda(void)#1},std::default_delete<PowerManager::State::releasePowerAssertion(std::string)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v2 = *a1;
  v3 = **a1;
  if (*(*a1 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v6, v2[1], v2[2]);
  }

  else
  {
    v4 = *(v2 + 1);
    v6.__r_.__value_.__r.__words[2] = v2[3];
    *&v6.__r_.__value_.__l.__data_ = v4;
  }

  PowerManager::State::releasePowerAssertion_sync(v3, &v6.__r_.__value_.__l.__data_);
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
    if ((*(v2 + 31) & 0x80000000) == 0)
    {
LABEL_6:
      operator delete(v2);
      v5 = *(a1 + 2);
      if (!v5)
      {
        goto LABEL_12;
      }

      goto LABEL_10;
    }
  }

  else if ((*(v2 + 31) & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  operator delete(v2[1]);
  operator delete(v2);
  v5 = *(a1 + 2);
  if (!v5)
  {
    goto LABEL_12;
  }

LABEL_10:
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

LABEL_12:

  operator delete(a1);
}

void sub_297157794(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10)
{
  std::unique_ptr<AntennaModule::initializeProperty(void)::$_0,std::default_delete<AntennaModule::initializeProperty(void)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void sub_2971577B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  std::unique_ptr<AntennaModule::initializeProperty(void)::$_0,std::default_delete<AntennaModule::initializeProperty(void)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void ___ZN12PowerManager5State10initializeEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1[1];
  if (!v2 || (v3 = *v1, (v4 = std::__shared_weak_count::lock(v2)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v5 = v4;
  atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v66 = 0;
    v67 = 0;
    v6 = v1[27];
    if (!v6)
    {
      goto LABEL_93;
    }
  }

  else
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v5);
    v66 = 0;
    v67 = 0;
    v6 = v1[27];
    if (!v6)
    {
      goto LABEL_93;
    }
  }

  v67 = std::__shared_weak_count::lock(v6);
  if (!v67)
  {
    goto LABEL_96;
  }

  v7 = v1[26];
  v66 = v7;
  if (v7)
  {
    v8 = abm::kCommandSetPowerDownMessageList[0];
    v9 = strlen(abm::kCommandSetPowerDownMessageList[0]);
    if (v9 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v10 = v9;
    if (v9 >= 0x17)
    {
      if ((v9 | 7) == 0x17)
      {
        v12 = 25;
      }

      else
      {
        v12 = (v9 | 7) + 1;
      }

      p_dst = operator new(v12);
      *(&__dst + 1) = v10;
      v65 = v12 | 0x8000000000000000;
      *&__dst = p_dst;
    }

    else
    {
      HIBYTE(v65) = v9;
      p_dst = &__dst;
      if (!v9)
      {
LABEL_18:
        *(p_dst + v10) = 0;
        aBlock[0] = MEMORY[0x29EDCA5F8];
        aBlock[1] = 1174405120;
        aBlock[2] = ___ZN12PowerManager5State10initializeEv_block_invoke_2;
        aBlock[3] = &__block_descriptor_tmp_39;
        aBlock[4] = v1;
        aBlock[5] = v3;
        v62 = v5;
        atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v13 = _Block_copy(aBlock);
        v63 = v13;
        ServiceManager::registerCommandHandler(v7, &__dst, &v63);
        if (v13)
        {
          _Block_release(v13);
        }

        if (SHIBYTE(v65) < 0)
        {
          operator delete(__dst);
        }

        v60 = 9;
        v58 = 0;
        strcpy(v59, "power.mgr");
        AppleBasebandManager::create();
        v14 = __dst;
        __dst = 0uLL;
        v15 = v1[6];
        *(v1 + 5) = v14;
        if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v15->__on_zero_shared)(v15);
          std::__shared_weak_count::__release_weak(v15);
        }

        v16 = *(&__dst + 1);
        if (*(&__dst + 1) && !atomic_fetch_add((*(&__dst + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          (v16->__on_zero_shared)(v16);
          std::__shared_weak_count::__release_weak(v16);
          v17 = v58;
          if (!v58)
          {
LABEL_29:
            if (v60 < 0)
            {
              operator delete(v59[0]);
            }

            v18 = v1[5];
            v19 = *MEMORY[0x29EDBEFF0];
            v20 = strlen(*MEMORY[0x29EDBEFF0]);
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
              __p[1] = v21;
              v57 = v23 | 0x8000000000000000;
              __p[0] = v22;
            }

            else
            {
              HIBYTE(v57) = v20;
              v22 = __p;
              if (!v20)
              {
LABEL_40:
                *(v21 + v22) = 0;
                v52[0] = MEMORY[0x29EDCA5F8];
                v52[1] = 1174405120;
                v52[2] = ___ZN12PowerManager5State10initializeEv_block_invoke_40;
                v52[3] = &__block_descriptor_tmp_44_2;
                v52[4] = v1;
                v52[5] = v3;
                v53 = v5;
                atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                v24 = _Block_copy(v52);
                v25 = v1[2];
                if (v25)
                {
                  dispatch_retain(v1[2]);
                }

                v54 = v24;
                object = v25;
                AppleBasebandManager::setEventHandler();
                if (object)
                {
                  dispatch_release(object);
                }

                if (v54)
                {
                  _Block_release(v54);
                }

                if (SHIBYTE(v57) < 0)
                {
                  operator delete(__p[0]);
                }

                v26 = v1[5];
                v27 = *MEMORY[0x29EDBEFF8];
                v28 = strlen(*MEMORY[0x29EDBEFF8]);
                if (v28 > 0x7FFFFFFFFFFFFFF7)
                {
                  std::string::__throw_length_error[abi:ne200100]();
                }

                v29 = v28;
                if (v28 >= 0x17)
                {
                  if ((v28 | 7) == 0x17)
                  {
                    v31 = 25;
                  }

                  else
                  {
                    v31 = (v28 | 7) + 1;
                  }

                  v30 = operator new(v31);
                  v50[1] = v29;
                  v51 = v31 | 0x8000000000000000;
                  v50[0] = v30;
                }

                else
                {
                  HIBYTE(v51) = v28;
                  v30 = v50;
                  if (!v28)
                  {
LABEL_57:
                    *(v29 + v30) = 0;
                    v46[0] = MEMORY[0x29EDCA5F8];
                    v46[1] = 1174405120;
                    v46[2] = ___ZN12PowerManager5State10initializeEv_block_invoke_45;
                    v46[3] = &__block_descriptor_tmp_48_4;
                    v46[4] = v1;
                    v46[5] = v3;
                    v47 = v5;
                    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                    v32 = _Block_copy(v46);
                    v33 = v1[2];
                    if (v33)
                    {
                      dispatch_retain(v1[2]);
                    }

                    v48 = v32;
                    v49 = v33;
                    AppleBasebandManager::setEventHandler();
                    if (v49)
                    {
                      dispatch_release(v49);
                    }

                    if (v48)
                    {
                      _Block_release(v48);
                    }

                    if (SHIBYTE(v51) < 0)
                    {
                      operator delete(v50[0]);
                    }

                    AppleBasebandManager::eventsOn(v1[5]);
                    v34 = v1[9];
                    v42[0] = MEMORY[0x29EDCA5F8];
                    v42[1] = 1174405120;
                    v42[2] = ___ZN12PowerManager5State10initializeEv_block_invoke_49;
                    v42[3] = &__block_descriptor_tmp_51_0;
                    v42[4] = v3;
                    v43 = v5;
                    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                    v44 = v66;
                    v45 = v67;
                    if (v67)
                    {
                      atomic_fetch_add_explicit(&v67->__shared_owners_, 1uLL, memory_order_relaxed);
                    }

                    v35 = _Block_copy(v42);
                    v36 = v1[2];
                    if (v36)
                    {
                      dispatch_retain(v1[2]);
                    }

                    if (v35)
                    {
                      v37 = _Block_copy(v35);
                      v38 = *(v34 + 104);
                      *(v34 + 104) = v37;
                      if (!v38)
                      {
                        goto LABEL_74;
                      }
                    }

                    else
                    {
                      v38 = *(v34 + 104);
                      *(v34 + 104) = 0;
                      if (!v38)
                      {
LABEL_74:
                        if (v36)
                        {
                          dispatch_retain(v36);
                        }

                        v39 = *(v34 + 112);
                        *(v34 + 112) = v36;
                        if (v39)
                        {
                          dispatch_release(v39);
                        }

                        if (v36)
                        {
                          dispatch_release(v36);
                        }

                        if (v35)
                        {
                          _Block_release(v35);
                        }

                        v40 = v45;
                        if (v45 && !atomic_fetch_add(&v45->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                        {
                          (v40->__on_zero_shared)(v40);
                          std::__shared_weak_count::__release_weak(v40);
                        }

                        if (v43)
                        {
                          std::__shared_weak_count::__release_weak(v43);
                        }

                        if (v47)
                        {
                          std::__shared_weak_count::__release_weak(v47);
                        }

                        if (v53)
                        {
                          std::__shared_weak_count::__release_weak(v53);
                        }

                        if (v62)
                        {
                          std::__shared_weak_count::__release_weak(v62);
                        }

                        goto LABEL_93;
                      }
                    }

                    _Block_release(v38);
                    goto LABEL_74;
                  }
                }

                memmove(v30, v27, v29);
                goto LABEL_57;
              }
            }

            memmove(v22, v19, v21);
            goto LABEL_40;
          }
        }

        else
        {
          v17 = v58;
          if (!v58)
          {
            goto LABEL_29;
          }
        }

        CFRelease(v17);
        goto LABEL_29;
      }
    }

    memmove(p_dst, v8, v10);
    goto LABEL_18;
  }

LABEL_93:
  v41 = v67;
  if (v67 && !atomic_fetch_add(&v67->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v41->__on_zero_shared)(v41);
    std::__shared_weak_count::__release_weak(v41);
  }

LABEL_96:
  std::__shared_weak_count::__release_weak(v5);
}

void sub_297157F00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23, char a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, std::__shared_weak_count *a38, char a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if (a23)
  {
    std::__shared_weak_count::__release_weak(a23);
  }

  if (a38)
  {
    std::__shared_weak_count::__release_weak(a38);
  }

  v49 = *(v47 - 160);
  if (v49)
  {
    std::__shared_weak_count::__release_weak(v49);
    std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v47 - 112);
    std::__shared_weak_count::__release_weak(v46);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v47 - 112);
  std::__shared_weak_count::__release_weak(v46);
  _Unwind_Resume(a1);
}

void ___ZN12PowerManager5State10initializeEv_block_invoke_40(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[5])
      {
        PowerStats::dumpState(*(v3 + 72));
      }

      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);

        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }
}

uint64_t dispatch::callback<void({block_pointer})(std::shared_ptr<abm::client::Event>)>::~callback(uint64_t a1)
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

void ___ZN12PowerManager5State10initializeEv_block_invoke_45(void *a1)
{
  v22 = *MEMORY[0x29EDCA608];
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = a1[5];
      if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v6 = v4;
        (v4->__on_zero_shared)();
        std::__shared_weak_count::__release_weak(v6);
      }

      if (v5)
      {
        v7 = v3[9];
        if (v7)
        {
          PowerStats::dumpState(v7);
        }

        v8 = v3[17];
        if (v8 != v3 + 18)
        {
          do
          {
            v9 = v3[4];
            if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
            {
              v10 = v8 + 4;
              if (*(v8 + 55) < 0)
              {
                v10 = *v10;
              }

              *buf = 136315138;
              v21 = v10;
              _os_log_impl(&dword_296FF7000, v9, OS_LOG_TYPE_DEFAULT, "#I Pending power assertion '%s'", buf, 0xCu);
            }

            v11 = v8[1];
            if (v11)
            {
              do
              {
                v12 = v11;
                v11 = *v11;
              }

              while (v11);
            }

            else
            {
              do
              {
                v12 = v8[2];
                v13 = *v12 == v8;
                v8 = v12;
              }

              while (!v13);
            }

            v8 = v12;
          }

          while (v12 != v3 + 18);
        }

        v14 = v3[23];
        if (v14 != v3 + 24)
        {
          do
          {
            v15 = v3[4];
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              v16 = v14 + 4;
              if (*(v14 + 55) < 0)
              {
                v16 = *v16;
              }

              *buf = 136315138;
              v21 = v16;
              _os_log_impl(&dword_296FF7000, v15, OS_LOG_TYPE_DEFAULT, "#I Deferred work due to sleep '%s'", buf, 0xCu);
            }

            v17 = v14[1];
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
                v18 = v14[2];
                v13 = *v18 == v14;
                v14 = v18;
              }

              while (!v13);
            }

            v14 = v18;
          }

          while (v18 != v3 + 24);
        }
      }
    }
  }

  v19 = *MEMORY[0x29EDCA608];
}

void *__copy_helper_block_e8_32c45_ZTSNSt3__18weak_ptrIN12PowerManager5StateEEE48c42_ZTSNSt3__110shared_ptrI14ServiceManagerEE(void *result, void *a2)
{
  v2 = a2[5];
  result[4] = a2[4];
  result[5] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v3 = a2[7];
  result[6] = a2[6];
  result[7] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c45_ZTSNSt3__18weak_ptrIN12PowerManager5StateEEE48c42_ZTSNSt3__110shared_ptrI14ServiceManagerEE(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    v2 = *(a1 + 40);
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = *(a1 + 40);
    if (!v2)
    {
      return;
    }
  }

  std::__shared_weak_count::__release_weak(v2);
}

void ___ZN12PowerManager5State8shutdownEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1[1];
  if (!v2 || (v3 = *v1, (v4 = std::__shared_weak_count::lock(v2)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v5 = v4;
  v6 = operator new(8uLL);
  *v6 = v1;
  v7 = v1[2];
  atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  v8 = operator new(0x18uLL);
  *v8 = v6;
  v8[1] = v3;
  v8[2] = v5;
  dispatch_async_f(v7, v8, dispatch::async<void ctu::SharedSynchronizable<PowerManager::State>::execute_wrapped<PowerManager::State::releasePendingPowerAssertions(void)::{lambda(void)#1}>(PowerManager::State::releasePendingPowerAssertions(void)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<PowerManager::State::releasePendingPowerAssertions(void)::{lambda(void)#1},dispatch_queue_s *::default_delete<PowerManager::State::releasePendingPowerAssertions(void)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
  if (atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v9 = v1[6];
    v1[5] = 0;
    v1[6] = 0;
    if (!v9)
    {
      return;
    }
  }

  else
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    v9 = v1[6];
    v1[5] = 0;
    v1[6] = 0;
    if (!v9)
    {
      return;
    }
  }

  if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);

    std::__shared_weak_count::__release_weak(v9);
  }
}

void dispatch::async<void ctu::SharedSynchronizable<PowerManager::State>::execute_wrapped<PowerManager::State::releasePendingPowerAssertions(void)::{lambda(void)#1}>(PowerManager::State::releasePendingPowerAssertions(void)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<PowerManager::State::releasePendingPowerAssertions(void)::{lambda(void)#1},dispatch_queue_s *::default_delete<PowerManager::State::releasePendingPowerAssertions(void)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v19 = *MEMORY[0x29EDCA608];
  v2 = *a1;
  v3 = **a1;
  v4 = v3[17];
  v5 = v3 + 18;
  if (v4 != v3 + 18)
  {
    do
    {
      v6 = v3[4];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = v4 + 4;
        if (*(v4 + 55) < 0)
        {
          v7 = *v7;
        }

        *buf = 136315138;
        v18 = v7;
        _os_log_impl(&dword_296FF7000, v6, OS_LOG_TYPE_DEFAULT, "#I Forcefully releasing power assertion '%s'", buf, 0xCu);
      }

      v8 = v4[1];
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = v4[2];
          v10 = *v9 == v4;
          v4 = v9;
        }

        while (!v10);
      }

      v4 = v9;
    }

    while (v9 != v5);
  }

  std::__tree<std::__value_type<std::string,std::shared_ptr<support::misc::Watchdog>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<support::misc::Watchdog>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<support::misc::Watchdog>>>>::destroy(v3[18]);
  v11 = v3[21];
  v3[17] = v5;
  v3[18] = 0;
  v3[19] = 0;
  std::__tree<std::__value_type<std::string,std::shared_ptr<support::misc::Watchdog>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<support::misc::Watchdog>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<support::misc::Watchdog>>>>::destroy(v11);
  v3[21] = 0;
  v3[22] = 0;
  v3[20] = v3 + 21;
  *(v3[9] + 88) = 0;
  v12 = v3[12];
  if (v12)
  {
    v13 = v3[4];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_296FF7000, v13, OS_LOG_TYPE_DEFAULT, "#I No more assertions held, acknowledging previous notification", buf, 2u);
      v12 = v3[12];
    }

    (*(v12 + 16))(v12, 1);
    v14 = v3[12];
    v3[12] = 0;
    if (v14)
    {
      _Block_release(v14);
    }
  }

  operator delete(v2);
  v15 = a1[2];
  if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v15->__on_zero_shared)(v15);
    std::__shared_weak_count::__release_weak(v15);
  }

  v16 = *MEMORY[0x29EDCA608];

  operator delete(a1);
}

void sub_297158820(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<PowerManager *,std::shared_ptr<PowerManager>::__shared_ptr_default_delete<PowerManager,PowerManager>,std::allocator<PowerManager>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<PowerManager *,std::shared_ptr<PowerManager>::__shared_ptr_default_delete<PowerManager,PowerManager>,std::allocator<PowerManager>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 48))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<PowerManager *,std::shared_ptr<PowerManager>::__shared_ptr_default_delete<PowerManager,PowerManager>,std::allocator<PowerManager>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x800000029722D0D3)
  {
    if (((v2 & 0x800000029722D0D3 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000029722D0D3))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000029722D0D3 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t __cxx_global_var_init_17()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ctu::power::assertion>::~PthreadMutexGuardPolicy, &ctu::Singleton<ctu::power::assertion,ctu::power::assertion,ctu::PthreadMutexGuardPolicy<ctu::power::assertion>>::sInstance, &dword_296FF7000);
  }

  return result;
}

void LogDumpDB::LogDumpDB(LogDumpDB *this)
{
  ctu::OsLogLogger::OsLogLogger((this + 8), "com.apple.telephony.abm", *MEMORY[0x29EDBE868]);
  *this = &unk_2A1E2CA58;
  *(this + 4) = 20;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  LogDumpDB::init(this);
}

{
  ctu::OsLogLogger::OsLogLogger((this + 8), "com.apple.telephony.abm", *MEMORY[0x29EDBE868]);
  *this = &unk_2A1E2CA58;
  *(this + 4) = 20;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  LogDumpDB::init(this);
}

void sub_2971589D8(_Unwind_Exception *a1)
{
  std::vector<ResetInfo>::~vector[abi:ne200100](v2);
  MEMORY[0x29C26B020](v1 + 8);
  _Unwind_Resume(a1);
}

void LogDumpDB::init(LogDumpDB *this)
{
  v43 = 0;
  pthread_mutex_lock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  v2 = off_2A18B75C0;
  if (!off_2A18B75C0)
  {
    SharedData::create_default_global(&__dst);
    v3 = __dst;
    __dst = 0uLL;
    v4 = *(&off_2A18B75C0 + 1);
    off_2A18B75C0 = v3;
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

    v2 = off_2A18B75C0;
  }

  *(&v39[1] + 1) = v2;
  *&v39[2] = *(&off_2A18B75C0 + 1);
  if (*(&off_2A18B75C0 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18B75C0 + 1) + 8), 1uLL, memory_order_relaxed);
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
      MEMORY[0x29C26B130](v39);
      if (SBYTE7(v30) < 0)
      {
        operator delete(__dst);
      }

      memset(v39, 170, 24);
      __dst = 0uLL;
      *&v30 = 0;
      ctu::cf::MakeCFString::MakeCFString(v38, v25);
      ctu::cf::map_adapter::getString();
      MEMORY[0x29C26B130](v38);
      if (SBYTE7(v30) < 0)
      {
        operator delete(__dst);
      }

      memset(v38, 170, sizeof(v38));
      __dst = 0uLL;
      *&v30 = 0;
      ctu::cf::MakeCFString::MakeCFString(v37, v16);
      ctu::cf::map_adapter::getString();
      MEMORY[0x29C26B130](v37);
      if (SBYTE7(v30) < 0)
      {
        operator delete(__dst);
      }

      memset(v37, 170, sizeof(v37));
      __dst = 0uLL;
      *&v30 = 0;
      ctu::cf::MakeCFString::MakeCFString(&v36, v17);
      ctu::cf::map_adapter::getString();
      MEMORY[0x29C26B130](&v36);
      if (SBYTE7(v30) < 0)
      {
        operator delete(__dst);
      }

      memset(&v36, 170, sizeof(v36));
      __dst = 0uLL;
      *&v30 = 0;
      ctu::cf::MakeCFString::MakeCFString(v44, v18);
      ctu::cf::map_adapter::getString();
      MEMORY[0x29C26B130](v44);
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
        MEMORY[0x29C26B180](v40);
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
      MEMORY[0x29C26B180](v40);
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

void sub_2971590B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54)
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

    MEMORY[0x29C26B180](v54 - 144);
    ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef((v54 - 128));
    ctu::cf::CFSharedRef<__CFArray const>::~CFSharedRef((v54 - 120));
    _Unwind_Resume(a1);
  }

  operator delete(a43);
  goto LABEL_6;
}

void sub_29715930C(_Unwind_Exception *a1)
{
  std::vector<ResetInfo>::~vector[abi:ne200100](v2);
  MEMORY[0x29C26B020](v1 + 8);
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
    _os_log_debug_impl(&dword_296FF7000, v19, OS_LOG_TYPE_DEBUG, "#D Current tracking list: %@", &__dst, 0xCu);
  }

  pthread_mutex_lock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  v20 = off_2A18B75C0;
  if (!off_2A18B75C0)
  {
    SharedData::create_default_global(&__dst);
    v21 = *&__dst.__r_.__value_.__l.__data_;
    *&__dst.__r_.__value_.__l.__data_ = 0uLL;
    v22 = *(&off_2A18B75C0 + 1);
    off_2A18B75C0 = v21;
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

    v20 = off_2A18B75C0;
  }

  __p.__r_.__value_.__r.__words[0] = v20;
  __p.__r_.__value_.__l.__size_ = *(&off_2A18B75C0 + 1);
  if (*(&off_2A18B75C0 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18B75C0 + 1) + 8), 1uLL, memory_order_relaxed);
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

void sub_2971599D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, const void *a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
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
  MEMORY[0x29C26B130](&v7);
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
      _os_log_debug_impl(&dword_296FF7000, v15, OS_LOG_TYPE_DEBUG, v17, &v90, 2u);
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
    *&__dst[8] = xmmword_29722D120;
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
    _os_log_debug_impl(&dword_296FF7000, v44, OS_LOG_TYPE_DEBUG, "#D This is duplicated signature based on the dump reason: %s", &v92, 0xCu);
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
    _os_log_debug_impl(&dword_296FF7000, v26, OS_LOG_TYPE_DEBUG, "#D Comparing current reason, %s, and the recorded reason, %s", __dst, 0x16u);
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
          _os_log_debug_impl(&dword_296FF7000, v83, OS_LOG_TYPE_DEBUG, "#D The crash reason has duplicated signature", &v90, 2u);
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
  _os_log_debug_impl(&dword_296FF7000, v84, OS_LOG_TYPE_DEBUG, "#D This is NOT duplicated signature based on the crash reason: %s has %s", &v92, 0x16u);
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

void sub_29715A658(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
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
  v3 = off_2A18B75C0;
  if (!off_2A18B75C0)
  {
    SharedData::create_default_global(__p);
    v4 = *__p;
    __p[0] = 0;
    __p[1] = 0;
    v5 = *(&off_2A18B75C0 + 1);
    off_2A18B75C0 = v4;
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

    v3 = off_2A18B75C0;
  }

  v19 = v3;
  v20 = *(&off_2A18B75C0 + 1);
  if (*(&off_2A18B75C0 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18B75C0 + 1) + 8), 1uLL, memory_order_relaxed);
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
    _os_log_impl(&dword_296FF7000, v15, OS_LOG_TYPE_DEFAULT, "#I Log Dump DB is cleared", __p, 2u);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_29715AA0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
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
      _os_log_debug_impl(&dword_296FF7000, v8, OS_LOG_TYPE_DEBUG, "#D Checking if log dump is duplicated", &__s1, 2u);
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
      if (MEMORY[0x29C26CE60](v3) == v4)
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
      if (MEMORY[0x29C26CE60](v8) == v9)
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
    if (MEMORY[0x29C26CE60](v10) != v9)
    {
      v11 = *(this + 1);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf.__r_.__value_.__l.__data_) = 0;
        _os_log_error_impl(&dword_296FF7000, v11, OS_LOG_TYPE_ERROR, "Failed to create xpc array for querying logdump DB", &buf, 2u);
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
        if (MEMORY[0x29C26CE60](v14) == v4)
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
      if (MEMORY[0x29C26CE60](v15) == v4)
      {
        break;
      }

      v16 = *(this + 1);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf.__r_.__value_.__l.__data_) = 0;
        _os_log_error_impl(&dword_296FF7000, v16, OS_LOG_TYPE_ERROR, "Failed to create xpc dictionary for querying logdump DB", &buf, 2u);
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

std::string::value_type *std::vector<ResetInfo>::__emplace_back_slow_path<ResetInfo const&>(__int128 **a1, __int128 *a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * (a1[1] - *a1);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x249249249249249)
  {
    std::vector<std::shared_ptr<Service>>::__throw_length_error[abi:ne200100]();
  }

  if (0xDB6DB6DB6DB6DB6ELL * (a1[2] - *a1) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * (a1[2] - *a1);
  }

  if ((0x6DB6DB6DB6DB6DB7 * (a1[2] - *a1)) >= 0x124924924924924)
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
      v13 += 7;
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
      v8 += 7;
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

void sub_29715BA08(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<ResetInfo>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void sub_29715BA1C(_Unwind_Exception *a1, uint64_t a2, ...)
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
      _os_log_impl(&dword_296FF7000, v7, OS_LOG_TYPE_DEFAULT, "#I Found duplicated log at timestamp: %s[%{public}llu], new log timestamp: %s[%{public}llu], dump reason: %{public}s, crash reason: %{public}s", buf, 0x3Eu);
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

void sub_29715BDE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
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

uint64_t __cxx_global_var_init_18()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<SharedData>::~PthreadMutexGuardPolicy, &ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance, &dword_296FF7000);
  }

  return result;
}

void SARModule::create(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  *(a2 + 8) = 0xAAAAAAAAAAAAAAAALL;
  v4 = operator new(0x160uLL);
  v5 = v4;
  v6 = *a1;
  v7 = a1[1];
  v15[0] = v6;
  v15[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  SARModule::SARModule(v4, v15);
  *a2 = v5;
  *(a2 + 8) = 0xAAAAAAAAAAAAAAAALL;
  v8 = operator new(0x20uLL);
  v8[1] = 0;
  v9 = v8 + 1;
  *v8 = &unk_2A1E2CD98;
  v8[2] = 0;
  v8[3] = v5;
  *(a2 + 8) = v8;
  v10 = *(v5 + 80);
  if (!v10)
  {
    atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(v8 + 2, 1uLL, memory_order_relaxed);
    *(v5 + 72) = v5;
    *(v5 + 80) = v8;
    if (atomic_fetch_add(v9, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (v10->__shared_owners_ == -1)
  {
    atomic_fetch_add_explicit(v8 + 1, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(v8 + 2, 1uLL, memory_order_relaxed);
    *(v5 + 72) = v5;
    *(v5 + 80) = v8;
    v11 = v8;
    std::__shared_weak_count::__release_weak(v10);
    v8 = v11;
    if (!atomic_fetch_add(v9, 0xFFFFFFFFFFFFFFFFLL))
    {
LABEL_8:
      v12 = v8;
      (*(*v8 + 16))();
      std::__shared_weak_count::__release_weak(v12);
    }
  }

LABEL_9:
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  if (!*a2)
  {
    {
      GetOsLogContext(void)::sOsLogContext = 0;
      qword_2A18B7680 = 0;
    }

    if (GetOsLogContext(void)::onceToken == -1)
    {
      v13 = qword_2A18B7680;
      if (!os_log_type_enabled(qword_2A18B7680, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_15;
      }
    }

    else
    {
      dispatch_once(&GetOsLogContext(void)::onceToken, &__block_literal_global_16);
      v13 = qword_2A18B7680;
      if (!os_log_type_enabled(qword_2A18B7680, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_15;
      }
    }

    v14[0] = 0;
    _os_log_error_impl(&dword_296FF7000, v13, OS_LOG_TYPE_ERROR, "Failed to create SAR Module!", v14, 2u);
  }

LABEL_15:
  SARModule::init(*a2);
}

void sub_29715C2F4(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[11], v1, std::shared_ptr<SARModule> ctu::SharedSynchronizable<SARModule>::make_shared_ptr<SARModule>(SARModule*)::{lambda(SARModule*)#1}::operator() const(SARModule*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void sub_29715C31C(_Unwind_Exception *a1)
{
  __cxa_end_catch();
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(a1);
}

void SARModule::init(SARModule *this)
{
  v104 = *MEMORY[0x29EDCA608];
  v2 = pthread_mutex_lock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  v3 = off_2A18B7390;
  if (!off_2A18B7390)
  {
    CommandDriverFactory::create_default_global(&buf, v2);
    v4 = *&buf.__r_.__value_.__l.__data_;
    *&buf.__r_.__value_.__l.__data_ = 0uLL;
    v5 = *(&off_2A18B7390 + 1);
    off_2A18B7390 = v4;
    if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    size = buf.__r_.__value_.__l.__size_;
    if (buf.__r_.__value_.__l.__size_ && !atomic_fetch_add((buf.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (size->__on_zero_shared)(size);
      std::__shared_weak_count::__release_weak(size);
    }

    v3 = off_2A18B7390;
  }

  __dst.__r_.__value_.__r.__words[0] = v3;
  __dst.__r_.__value_.__l.__size_ = *(&off_2A18B7390 + 1);
  if (*(&off_2A18B7390 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18B7390 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  v7 = *(this + 12);
  object = v7;
  if (v7)
  {
    dispatch_retain(v7);
  }

  (*(*v3 + 56))(&v97, v3, &object);
  v8 = v97;
  v97 = 0uLL;
  v9 = *(this + 32);
  *(this + 248) = v8;
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  v10 = *(&v97 + 1);
  if (*(&v97 + 1) && !atomic_fetch_add((*(&v97 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  v11 = object;
  if (object)
  {
    dispatch_release(object);
  }

  v12 = __dst.__r_.__value_.__l.__size_;
  if (!__dst.__r_.__value_.__l.__size_ || atomic_fetch_add((__dst.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if (*(this + 31))
    {
      goto LABEL_24;
    }

LABEL_34:
    v21 = *(this + 13);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_error_impl(&dword_296FF7000, v21, OS_LOG_TYPE_ERROR, "Failed to create antenna command driver", &buf, 2u);
    }

    goto LABEL_160;
  }

  (v12->__on_zero_shared)(v12);
  std::__shared_weak_count::__release_weak(v12);
  if (!*(this + 31))
  {
    goto LABEL_34;
  }

LABEL_24:
  if (capabilities::radio::maverick(v11))
  {
    memset(&buf, 170, 16);
    v14 = *(this + 9);
    v13 = *(this + 10);
    v100 = v14;
    if (!v13 || (v15 = std::__shared_weak_count::lock(v13), (v101 = v15) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v16 = v15;
    v17 = operator new(0x30uLL);
    v17[1] = 0;
    v17[2] = 0;
    *v17 = &unk_2A1E2CDE8;
    v18 = (v17 + 3);
    v100 = 0;
    v101 = 0;
    v17[3] = &unk_2A1E2CE90;
    v17[4] = v14;
    v17[5] = v16;
    atomic_fetch_add_explicit(&v16->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    if (atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v17[3] = &unk_2A1E2CE38;
      buf.__r_.__value_.__r.__words[0] = (v17 + 3);
      buf.__r_.__value_.__l.__size_ = v17;
      v19 = v101;
      if (v101)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v22 = v17;
      (v16->__on_zero_shared)(v16);
      std::__shared_weak_count::__release_weak(v16);
      v17 = v22;
      *(v22 + 24) = &unk_2A1E2CE38;
      buf.__r_.__value_.__r.__words[0] = v18;
      buf.__r_.__value_.__l.__size_ = v22;
      v19 = v101;
      if (v101)
      {
LABEL_29:
        if (!atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v19->__on_zero_shared)(v19);
          std::__shared_weak_count::__release_weak(v19);
        }

        v20 = *(this + 31);
        v17 = buf.__r_.__value_.__l.__size_;
        v99 = *&buf.__r_.__value_.__l.__data_;
        if (!buf.__r_.__value_.__l.__size_)
        {
          goto LABEL_39;
        }

        goto LABEL_38;
      }
    }

    v23 = *(this + 31);
    *&v99 = v18;
    *(&v99 + 1) = v17;
LABEL_38:
    atomic_fetch_add_explicit(v17 + 1, 1uLL, memory_order_relaxed);
LABEL_39:
    antenna::CommandDriver::registerHandler();
    v24 = *(&v99 + 1);
    if (*(&v99 + 1) && !atomic_fetch_add((*(&v99 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v24->__on_zero_shared)(v24);
      std::__shared_weak_count::__release_weak(v24);
    }

    v25 = buf.__r_.__value_.__l.__size_;
    if (buf.__r_.__value_.__l.__size_ && !atomic_fetch_add((buf.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v25->__on_zero_shared)(v25);
      std::__shared_weak_count::__release_weak(v25);
    }
  }

  v26 = operator new(8uLL);
  *v26 = 0x3000200010000;
  v27 = v26 + 1;
  v28 = *(this + 38);
  if (v28)
  {
    *(this + 39) = v28;
    operator delete(v28);
    *(this + 38) = 0;
    *(this + 39) = 0;
    *(this + 40) = 0;
  }

  *(this + 38) = v26;
  *(this + 39) = v27;
  *(this + 40) = v27;
  memset(&buf, 170, sizeof(buf));
  config::hw::getBootArgs(&buf);
  ctu::split_any();
  v30 = *(&v97 + 1);
  v29 = v97;
  if (v97 != *(&v97 + 1))
  {
    v31 = *MEMORY[0x29EDC91C0];
    v95 = *MEMORY[0x29EDC91C0];
    while (1)
    {
      v96 = *v29;
      if (v29[1] >= 0x13)
      {
        break;
      }

      if (*(&v96 + 1) >= 0x11uLL)
      {
        v33 = *v29;
LABEL_62:
        v36 = *v33;
        v37 = v33[1];
        v38 = *(v33 + 16);
        if (v36 == 0x696D70732D726173 && v37 == 0x6D756465726F632DLL && v38 == 112)
        {
          *(this + 328) = 1;
        }
      }

LABEL_51:
      v29 += 2;
      if (v29 == v30)
      {
        v29 = v97;
        goto LABEL_156;
      }
    }

    v33 = *v29;
    if (*v96 == 0x7272652D72617368 && *(v96 + 8) == 0x76616865622D726FLL && *(v96 + 11) == 0x726F697661686562)
    {
      *(this + 39) = *(this + 38);
      v41 = ctu::llvm::StringRef::find();
      if (v41 == v31)
      {
        goto LABEL_85;
      }

      v42 = *(&v96 + 1);
      if ((v41 + 1) < *(&v96 + 1))
      {
        v43 = v41 + 1;
      }

      else
      {
        v43 = *(&v96 + 1);
      }

      if (v43 <= v31)
      {
        v44 = v31;
      }

      else
      {
        v44 = v43;
      }

      if (v44 < *(&v96 + 1))
      {
        v42 = v44;
      }

      if (!v96)
      {
LABEL_85:
        memset(&__dst, 0, sizeof(__dst));
        goto LABEL_92;
      }

      v45 = v42 - v43;
      if (v42 - v43 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v45 >= 0x17)
      {
        if ((v45 | 7) == 0x17)
        {
          v47 = 25;
        }

        else
        {
          v47 = (v45 | 7) + 1;
        }

        p_dst = operator new(v47);
        __dst.__r_.__value_.__l.__size_ = v45;
        __dst.__r_.__value_.__r.__words[2] = v47 | 0x8000000000000000;
        __dst.__r_.__value_.__r.__words[0] = p_dst;
      }

      else
      {
        *(&__dst.__r_.__value_.__s + 23) = v42 - v43;
        p_dst = &__dst;
        if (v42 == v43)
        {
LABEL_91:
          p_dst->__r_.__value_.__s.__data_[v45] = 0;
LABEL_92:
          v48 = std::stoi(&__dst, 0, 16);
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
            v49 = *(this + 13);
            if (!os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_106;
            }

LABEL_94:
            LODWORD(__dst.__r_.__value_.__l.__data_) = 136315394;
            *(__dst.__r_.__value_.__r.__words + 4) = "hsar-error-behavior";
            WORD2(__dst.__r_.__value_.__r.__words[1]) = 1024;
            *(&__dst.__r_.__value_.__r.__words[1] + 6) = v48;
            _os_log_impl(&dword_296FF7000, v49, OS_LOG_TYPE_DEFAULT, "#I Found %s = 0x%x", &__dst, 0x12u);
            v50 = v48 & 3;
            v52 = *(this + 39);
            v51 = *(this + 40);
            if (v52 >= v51)
            {
              goto LABEL_95;
            }

LABEL_107:
            *v52 = v50 << 8;
            v60 = v52 + 2;
          }

          else
          {
            v49 = *(this + 13);
            if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_94;
            }

LABEL_106:
            v50 = v48 & 3;
            v52 = *(this + 39);
            v51 = *(this + 40);
            if (v52 < v51)
            {
              goto LABEL_107;
            }

LABEL_95:
            v53 = *(this + 38);
            v54 = v52 - v53;
            v55 = (v52 - v53) >> 1;
            if (v55 <= -2)
            {
              goto LABEL_161;
            }

            v56 = v51 - v53;
            if (v56 <= v55 + 1)
            {
              v57 = v55 + 1;
            }

            else
            {
              v57 = v56;
            }

            if (v56 >= 0x7FFFFFFFFFFFFFFELL)
            {
              v58 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v58 = v57;
            }

            if (v58)
            {
              if (v58 < 0)
              {
                goto LABEL_162;
              }

              v59 = operator new(2 * v58);
            }

            else
            {
              v59 = 0;
            }

            v61 = &v59[2 * v55];
            *v61 = v50 << 8;
            v60 = v61 + 2;
            memcpy(v59, v53, v54);
            *(this + 38) = v59;
            *(this + 39) = v60;
            *(this + 40) = &v59[2 * v58];
            if (v53)
            {
              operator delete(v53);
            }
          }

          *(this + 39) = v60;
          v62 = (v48 >> 2) & 3;
          v63 = *(this + 40);
          if (v60 >= v63)
          {
            v65 = *(this + 38);
            v66 = v60 - v65;
            v67 = (v60 - v65) >> 1;
            if (v67 < -1)
            {
              goto LABEL_161;
            }

            v68 = v63 - v65;
            if (v68 <= v67 + 1)
            {
              v69 = v67 + 1;
            }

            else
            {
              v69 = v68;
            }

            if (v68 >= 0x7FFFFFFFFFFFFFFELL)
            {
              v70 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v70 = v69;
            }

            if (v70)
            {
              if (v70 < 0)
              {
                goto LABEL_162;
              }

              v71 = operator new(2 * v70);
            }

            else
            {
              v71 = 0;
            }

            v72 = &v71[2 * v67];
            *v72 = (v62 << 8) | 1;
            v64 = v72 + 2;
            memcpy(v71, v65, v66);
            *(this + 38) = v71;
            *(this + 39) = v64;
            *(this + 40) = &v71[2 * v70];
            if (v65)
            {
              operator delete(v65);
            }
          }

          else
          {
            *v60 = (v62 << 8) | 1;
            v64 = v60 + 2;
          }

          *(this + 39) = v64;
          v73 = (v48 >> 4) & 3;
          v74 = *(this + 40);
          if (v64 >= v74)
          {
            v76 = *(this + 38);
            v77 = v64 - v76;
            v78 = (v64 - v76) >> 1;
            if (v78 < -1)
            {
              goto LABEL_161;
            }

            v79 = v74 - v76;
            if (v79 <= v78 + 1)
            {
              v80 = v78 + 1;
            }

            else
            {
              v80 = v79;
            }

            if (v79 >= 0x7FFFFFFFFFFFFFFELL)
            {
              v81 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v81 = v80;
            }

            if (v81)
            {
              if (v81 < 0)
              {
                goto LABEL_162;
              }

              v82 = operator new(2 * v81);
            }

            else
            {
              v82 = 0;
            }

            v83 = &v82[2 * v78];
            *v83 = (v73 << 8) | 2;
            v75 = v83 + 2;
            memcpy(v82, v76, v77);
            *(this + 38) = v82;
            *(this + 39) = v75;
            *(this + 40) = &v82[2 * v81];
            if (v76)
            {
              operator delete(v76);
            }
          }

          else
          {
            *v64 = (v73 << 8) | 2;
            v75 = v64 + 2;
          }

          *(this + 39) = v75;
          v84 = v48 >> 6;
          v85 = *(this + 40);
          if (v75 < v85)
          {
            *v75 = (v84 << 8) | 3;
            v32 = v75 + 2;
          }

          else
          {
            v86 = *(this + 38);
            v87 = v75 - v86;
            v88 = (v75 - v86) >> 1;
            if (v88 < -1)
            {
LABEL_161:
              std::vector<std::shared_ptr<Service>>::__throw_length_error[abi:ne200100]();
            }

            v89 = v85 - v86;
            if (v89 <= v88 + 1)
            {
              v90 = v88 + 1;
            }

            else
            {
              v90 = v89;
            }

            if (v89 >= 0x7FFFFFFFFFFFFFFELL)
            {
              v91 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v91 = v90;
            }

            if (v91)
            {
              if (v91 < 0)
              {
LABEL_162:
                std::__throw_bad_array_new_length[abi:ne200100]();
              }

              v92 = operator new(2 * v91);
            }

            else
            {
              v92 = 0;
            }

            v93 = &v92[2 * v88];
            *v93 = (v84 << 8) | 3;
            v32 = v93 + 2;
            memcpy(v92, v86, v87);
            *(this + 38) = v92;
            *(this + 39) = v32;
            *(this + 40) = &v92[2 * v91];
            if (v86)
            {
              operator delete(v86);
            }
          }

          v31 = v95;
          *(this + 39) = v32;
          goto LABEL_51;
        }
      }

      memmove(p_dst, (v96 + v43), v45);
      goto LABEL_91;
    }

    goto LABEL_62;
  }

LABEL_156:
  if (v29)
  {
    *(&v97 + 1) = v29;
    operator delete(v29);
  }

  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

LABEL_160:
  v94 = *MEMORY[0x29EDCA608];
}

void sub_29715CE74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](va1);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_29715CE90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_29715CEA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, dispatch_object_t object)
{
  if (__p)
  {
    operator delete(__p);
    if ((a24 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((a24 & 0x80000000) == 0)
  {
LABEL_7:
    _Unwind_Resume(exception_object);
  }

  operator delete(a19);
  goto LABEL_7;
}

uint64_t SARModule::SARModule(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = &unk_2A1E2E7E8;
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
    *a1 = &unk_2A1E23A28;
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
    *a1 = &unk_2A1E23A28;
  }

  *a1 = &unk_2A1E2CAC8;
  initially_inactive = dispatch_queue_attr_make_initially_inactive(0);
  v6 = dispatch_queue_create_with_target_V2("sar.mod", initially_inactive, 0);
  dispatch_set_qos_class_floor(v6, QOS_CLASS_USER_INITIATED, 0);
  dispatch_activate(v6);
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = v6;
  if (v6)
  {
    dispatch_retain(v6);
    *(a1 + 96) = 0;
    dispatch_release(v6);
  }

  else
  {
    *(a1 + 96) = 0;
  }

  ctu::OsLogLogger::OsLogLogger((a1 + 104), "com.apple.telephony.abm", "sar.mod");
  *a1 = &unk_2A1E2CAC8;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 132) = 514;
  *(a1 + 236) = 0;
  *(a1 + 240) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 134) = 0;
  *(a1 + 138) = 0;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 313) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 329) = 1;
  *(a1 + 330) = 0;
  *(a1 + 338) = 0;
  *(a1 + 346) = 0;
  *(a1 + 348) = 1;
  return a1;
}

void sub_29715D160(_Unwind_Exception *a1)
{
  ctu::SharedSynchronizable<StatsModule>::~SharedSynchronizable(v2);
  Service::~Service(v1);
  _Unwind_Resume(a1);
}

void SARModule::~SARModule(SARModule *this)
{
  *this = &unk_2A1E2CAC8;
  v2 = this + 104;
  v3 = *(this + 13);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v21 = 0;
    _os_log_impl(&dword_296FF7000, v3, OS_LOG_TYPE_DEFAULT, "#I Gone!", v21, 2u);
  }

  v4 = *(this + 38);
  if (v4)
  {
    *(this + 39) = v4;
    operator delete(v4);
  }

  v5 = *(this + 37);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  v6 = *(this + 32);
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = *(this + 28);
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  v8 = *(this + 25);
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  v9 = *(this + 23);
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  v10 = *(this + 21);
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  v11 = *(this + 19);
  if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  v12 = *(this + 15);
  if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  MEMORY[0x29C26B020](v2);
  v13 = *(this + 12);
  if (v13)
  {
    dispatch_release(v13);
  }

  v14 = *(this + 11);
  if (v14)
  {
    dispatch_release(v14);
  }

  v15 = *(this + 10);
  if (v15)
  {
    std::__shared_weak_count::__release_weak(v15);
  }

  *this = &unk_2A1E2E7E8;
  std::__tree<std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>>>::destroy(this + 48, *(this + 7));
  v16 = *(this + 3);
  if (v16)
  {
    v17 = *(this + 4);
    v18 = *(this + 3);
    if (v17 != v16)
    {
      do
      {
        v19 = *(v17 - 1);
        v17 -= 3;
        if (v19 < 0)
        {
          operator delete(*v17);
        }
      }

      while (v17 != v16);
      v18 = *(this + 3);
    }

    *(this + 4) = v16;
    operator delete(v18);
  }

  v20 = *(this + 2);
  if (v20)
  {
    std::__shared_weak_count::__release_weak(v20);
  }
}

{
  SARModule::~SARModule(this);

  operator delete(v1);
}

void SARModule::shutdownWithStage(void *a1, uint64_t a2, dispatch_object_t *a3)
{
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
  dispatch_async_f(v10, v11, dispatch::async<void ctu::SharedSynchronizable<SARModule>::execute_wrapped<SARModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>(SARModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<SARModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<SARModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);

    std::__shared_weak_count::__release_weak(v8);
  }
}

_WORD *SARModule::getBootstrapStages@<X0>(void *a1@<X8>)
{
  v3 = operator new(2uLL);
  *a1 = v3;
  *v3 = 256;
  result = v3 + 1;
  a1[1] = result;
  a1[2] = result;
  return result;
}

_BYTE *SARModule::getShutdownStages@<X0>(void *a1@<X8>)
{
  v3 = operator new(1uLL);
  *a1 = v3;
  *v3 = 3;
  result = v3 + 1;
  a1[1] = result;
  a1[2] = result;
  return result;
}

void SARModule::bootstrap(void *a1, int a2, dispatch_object_t *a3)
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
    dispatch_async_f(v10, v11, dispatch::async<void ctu::SharedSynchronizable<SARModule>::execute_wrapped<SARModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(SARModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<SARModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<SARModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke);
    if (atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }

LABEL_18:
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

  v16 = v15;
  v17 = operator new(0x10uLL);
  *v17 = a1;
  v17[1] = v12;
  v18 = a1[11];
  atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  v19 = operator new(0x18uLL);
  *v19 = v17;
  v19[1] = v14;
  v19[2] = v16;
  dispatch_async_f(v18, v19, dispatch::async<void ctu::SharedSynchronizable<SARModule>::execute_wrapped<SARModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1>(SARModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<SARModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1,dispatch_queue_s *::default_delete<SARModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
  }

  v20 = a1[10];
  if (!v20 || (v21 = a1[9], (v22 = std::__shared_weak_count::lock(v20)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v8 = v22;
  v23 = operator new(8uLL);
  *v23 = a1;
  v24 = a1[11];
  atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  v25 = operator new(0x18uLL);
  *v25 = v23;
  v25[1] = v21;
  v25[2] = v8;
  dispatch_async_f(v24, v25, dispatch::async<void ctu::SharedSynchronizable<SARModule>::execute_wrapped<SARModule::bootstrap(BootstrapStage,dispatch::group_session)::$_2>(SARModule::bootstrap(BootstrapStage,dispatch::group_session)::$_2 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<SARModule::bootstrap(BootstrapStage,dispatch::group_session)::$_2,dispatch_queue_s *::default_delete<SARModule::bootstrap(BootstrapStage,dispatch::group_session)::$_2>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_18;
  }
}

void SARModule::registerCommandHandlers_sync(SARModule *this)
{
  v2 = *(this + 13);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(__dst) = 0;
    _os_log_debug_impl(&dword_296FF7000, v2, OS_LOG_TYPE_DEBUG, "#D Registering command handlers", &__dst, 2u);
    v3 = *(this + 10);
    if (!v3)
    {
LABEL_88:
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }
  }

  else
  {
    v3 = *(this + 10);
    if (!v3)
    {
      goto LABEL_88;
    }
  }

  v4 = *(this + 9);
  v5 = std::__shared_weak_count::lock(v3);
  if (!v5)
  {
    goto LABEL_88;
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
    v57 = v9;
    v58 = v11 | 0x8000000000000000;
    __dst = p_dst;
    goto LABEL_14;
  }

  HIBYTE(v58) = v8;
  p_dst = &__dst;
  if (v8)
  {
LABEL_14:
    memmove(p_dst, v7, v9);
  }

  *(p_dst + v9) = 0;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 3321888768;
  aBlock[2] = ___ZN9SARModule28registerCommandHandlers_syncEv_block_invoke;
  aBlock[3] = &__block_descriptor_56_e8_40c33_ZTSNSt3__18weak_ptrI9SARModuleEE_e63_v24__0_dict__object__v__8_block_void_____int__xpc::dict______16l;
  aBlock[4] = this;
  aBlock[5] = v4;
  v54 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v12 = _Block_copy(aBlock);
  v55 = v12;
  Service::registerCommandHandler(this, &__dst, &v55);
  if (v12)
  {
    _Block_release(v12);
  }

  if (SHIBYTE(v58) < 0)
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
    v57 = v15;
    v58 = v17 | 0x8000000000000000;
    __dst = v16;
    goto LABEL_27;
  }

  HIBYTE(v58) = v14;
  v16 = &__dst;
  if (v14)
  {
LABEL_27:
    memmove(v16, v13, v15);
  }

  *(v16 + v15) = 0;
  v51[0] = MEMORY[0x29EDCA5F8];
  v51[1] = 3221225472;
  v51[2] = ___ZN9SARModule28registerCommandHandlers_syncEv_block_invoke_8;
  v51[3] = &__block_descriptor_40_e63_v24__0_dict__object__v__8_block_void_____int__xpc::dict______16l;
  v51[4] = this;
  v18 = _Block_copy(v51);
  v52 = v18;
  Service::registerCommandHandler(this, &__dst, &v52);
  if (v18)
  {
    _Block_release(v18);
  }

  if (SHIBYTE(v58) < 0)
  {
    operator delete(__dst);
  }

  v19 = *MEMORY[0x29EDBEFD8];
  v20 = strlen(*MEMORY[0x29EDBEFD8]);
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
    v57 = v21;
    v58 = v23 | 0x8000000000000000;
    __dst = v22;
    goto LABEL_40;
  }

  HIBYTE(v58) = v20;
  v22 = &__dst;
  if (v20)
  {
LABEL_40:
    memmove(v22, v19, v21);
  }

  *(v22 + v21) = 0;
  v49[0] = MEMORY[0x29EDCA5F8];
  v49[1] = 3221225472;
  v49[2] = ___ZN9SARModule28registerCommandHandlers_syncEv_block_invoke_2;
  v49[3] = &__block_descriptor_40_e63_v24__0_dict__object__v__8_block_void_____int__xpc::dict______16l;
  v49[4] = this;
  v24 = _Block_copy(v49);
  v50 = v24;
  Service::registerCommandHandler(this, &__dst, &v50);
  if (v24)
  {
    _Block_release(v24);
  }

  if (SHIBYTE(v58) < 0)
  {
    operator delete(__dst);
  }

  v25 = *MEMORY[0x29EDBEE78];
  v26 = strlen(*MEMORY[0x29EDBEE78]);
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
    v57 = v27;
    v58 = v29 | 0x8000000000000000;
    __dst = v28;
    goto LABEL_53;
  }

  HIBYTE(v58) = v26;
  v28 = &__dst;
  if (v26)
  {
LABEL_53:
    memmove(v28, v25, v27);
  }

  *(v28 + v27) = 0;
  v47[0] = MEMORY[0x29EDCA5F8];
  v47[1] = 3221225472;
  v47[2] = ___ZN9SARModule28registerCommandHandlers_syncEv_block_invoke_3;
  v47[3] = &__block_descriptor_40_e63_v24__0_dict__object__v__8_block_void_____int__xpc::dict______16l;
  v47[4] = this;
  v30 = _Block_copy(v47);
  v48 = v30;
  Service::registerCommandHandler(this, &__dst, &v48);
  if (v30)
  {
    _Block_release(v30);
  }

  if (SHIBYTE(v58) < 0)
  {
    operator delete(__dst);
  }

  v31 = *MEMORY[0x29EDBF130];
  v32 = strlen(*MEMORY[0x29EDBF130]);
  if (v32 > 0x7FFFFFFFFFFFFFF7)
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
    v57 = v33;
    v58 = v35 | 0x8000000000000000;
    __dst = v34;
    goto LABEL_66;
  }

  HIBYTE(v58) = v32;
  v34 = &__dst;
  if (v32)
  {
LABEL_66:
    memmove(v34, v31, v33);
  }

  *(v34 + v33) = 0;
  v45[0] = MEMORY[0x29EDCA5F8];
  v45[1] = 3221225472;
  v45[2] = ___ZN9SARModule28registerCommandHandlers_syncEv_block_invoke_4;
  v45[3] = &__block_descriptor_40_e63_v24__0_dict__object__v__8_block_void_____int__xpc::dict______16l;
  v45[4] = this;
  v36 = _Block_copy(v45);
  v46 = v36;
  Service::registerCommandHandler(this, &__dst, &v46);
  if (v36)
  {
    _Block_release(v36);
  }

  if (SHIBYTE(v58) < 0)
  {
    operator delete(__dst);
  }

  v37 = *MEMORY[0x29EDBF118];
  v38 = strlen(*MEMORY[0x29EDBF118]);
  if (v38 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v39 = v38;
  if (v38 >= 0x17)
  {
    if ((v38 | 7) == 0x17)
    {
      v41 = 25;
    }

    else
    {
      v41 = (v38 | 7) + 1;
    }

    v40 = operator new(v41);
    v57 = v39;
    v58 = v41 | 0x8000000000000000;
    __dst = v40;
    goto LABEL_79;
  }

  HIBYTE(v58) = v38;
  v40 = &__dst;
  if (v38)
  {
LABEL_79:
    memmove(v40, v37, v39);
  }

  *(v40 + v39) = 0;
  v43[0] = MEMORY[0x29EDCA5F8];
  v43[1] = 3221225472;
  v43[2] = ___ZN9SARModule28registerCommandHandlers_syncEv_block_invoke_5;
  v43[3] = &__block_descriptor_40_e63_v24__0_dict__object__v__8_block_void_____int__xpc::dict______16l;
  v43[4] = this;
  v42 = _Block_copy(v43);
  v44 = v42;
  Service::registerCommandHandler(this, &__dst, &v44);
  if (v42)
  {
    _Block_release(v42);
  }

  if (SHIBYTE(v58) < 0)
  {
    operator delete(__dst);
  }

  if (v54)
  {
    std::__shared_weak_count::__release_weak(v54);
  }

  std::__shared_weak_count::__release_weak(v6);
}

void sub_29715E028(_Unwind_Exception *a1)
{
  if (v2)
  {
    _Block_release(v2);
  }

  if (*(v3 - 105) < 0)
  {
    operator delete(*(v3 - 128));
  }

  v5 = *(v3 - 144);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
    std::__shared_weak_count::__release_weak(v1);
    _Unwind_Resume(a1);
  }

  std::__shared_weak_count::__release_weak(v1);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_40c33_ZTSNSt3__18weak_ptrI9SARModuleEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c33_ZTSNSt3__18weak_ptrI9SARModuleEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZN9SARModule28registerCommandHandlers_syncEv_block_invoke_8(uint64_t a1, xpc_object_t *a2, const void **a3)
{
  v4 = *(a1 + 32);
  v5 = *a2;
  if (*a2)
  {
    xpc_retain(*a2);
    v6 = *a3;
    if (*a3)
    {
      goto LABEL_3;
    }

LABEL_6:
    v7 = 0;
    v8 = v4[10];
    if (!v8)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

  v5 = xpc_null_create();
  v6 = *a3;
  if (!*a3)
  {
    goto LABEL_6;
  }

LABEL_3:
  v7 = _Block_copy(v6);
  v8 = v4[10];
  if (!v8)
  {
LABEL_11:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

LABEL_7:
  v9 = v4[9];
  v10 = std::__shared_weak_count::lock(v8);
  if (!v10)
  {
    goto LABEL_11;
  }

  v11 = v10;
  v12 = operator new(0x18uLL);
  *v12 = v4;
  v12[1] = v5;
  v13 = xpc_null_create();
  v12[2] = v7;
  v14 = v4[11];
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  v15 = operator new(0x18uLL);
  *v15 = v12;
  v15[1] = v9;
  v15[2] = v11;
  dispatch_async_f(v14, v15, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI9SARModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb0_E3__5EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_);
  if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  xpc_release(v13);
}

void ___ZN9SARModule28registerCommandHandlers_syncEv_block_invoke_2(uint64_t a1, xpc_object_t *a2, const void **a3)
{
  v4 = *(a1 + 32);
  v5 = *a2;
  if (*a2)
  {
    xpc_retain(*a2);
    v6 = *a3;
    if (*a3)
    {
      goto LABEL_3;
    }

LABEL_6:
    v7 = 0;
    v8 = v4[10];
    if (!v8)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

  v5 = xpc_null_create();
  v6 = *a3;
  if (!*a3)
  {
    goto LABEL_6;
  }

LABEL_3:
  v7 = _Block_copy(v6);
  v8 = v4[10];
  if (!v8)
  {
LABEL_11:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

LABEL_7:
  v9 = v4[9];
  v10 = std::__shared_weak_count::lock(v8);
  if (!v10)
  {
    goto LABEL_11;
  }

  v11 = v10;
  v12 = operator new(0x18uLL);
  *v12 = v4;
  v12[1] = v5;
  v13 = xpc_null_create();
  v12[2] = v7;
  v14 = v4[11];
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  v15 = operator new(0x18uLL);
  *v15 = v12;
  v15[1] = v9;
  v15[2] = v11;
  dispatch_async_f(v14, v15, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI9SARModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb1_E3__6EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_);
  if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  xpc_release(v13);
}

void ___ZN9SARModule28registerCommandHandlers_syncEv_block_invoke_3(uint64_t a1, uint64_t a2, const void **a3)
{
  v3 = *(a1 + 32);
  if (*a3)
  {
    v4 = _Block_copy(*a3);
    v5 = v3[10];
    if (!v5)
    {
LABEL_10:
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }
  }

  else
  {
    v4 = 0;
    v5 = v3[10];
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  v6 = v3[9];
  v7 = std::__shared_weak_count::lock(v5);
  if (!v7)
  {
    goto LABEL_10;
  }

  v8 = v7;
  v9 = operator new(0x10uLL);
  *v9 = v3;
  v9[1] = v4;
  v10 = v3[11];
  atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  v11 = operator new(0x18uLL);
  *v11 = v9;
  v11[1] = v6;
  v11[2] = v8;
  dispatch_async_f(v10, v11, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI9SARModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb2_E3__7EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_);
  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);

    std::__shared_weak_count::__release_weak(v8);
  }
}

void ___ZN9SARModule28registerCommandHandlers_syncEv_block_invoke_4(uint64_t a1, uint64_t a2, const void **a3)
{
  v3 = *(a1 + 32);
  if (*a3)
  {
    v4 = _Block_copy(*a3);
    v5 = v3[10];
    if (!v5)
    {
LABEL_10:
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }
  }

  else
  {
    v4 = 0;
    v5 = v3[10];
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  v6 = v3[9];
  v7 = std::__shared_weak_count::lock(v5);
  if (!v7)
  {
    goto LABEL_10;
  }

  v8 = v7;
  v9 = operator new(0x10uLL);
  *v9 = v3;
  v9[1] = v4;
  v10 = v3[11];
  atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  v11 = operator new(0x18uLL);
  *v11 = v9;
  v11[1] = v6;
  v11[2] = v8;
  dispatch_async_f(v10, v11, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI9SARModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb3_E3__8EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_);
  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);

    std::__shared_weak_count::__release_weak(v8);
  }
}

void ___ZN9SARModule28registerCommandHandlers_syncEv_block_invoke_5(uint64_t a1, xpc_object_t *a2, const void **a3)
{
  v4 = *(a1 + 32);
  v5 = *a2;
  if (*a2)
  {
    xpc_retain(*a2);
    v6 = *a3;
    if (*a3)
    {
      goto LABEL_3;
    }

LABEL_6:
    v7 = 0;
    v8 = v4[10];
    if (!v8)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

  v5 = xpc_null_create();
  v6 = *a3;
  if (!*a3)
  {
    goto LABEL_6;
  }

LABEL_3:
  v7 = _Block_copy(v6);
  v8 = v4[10];
  if (!v8)
  {
LABEL_11:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

LABEL_7:
  v9 = v4[9];
  v10 = std::__shared_weak_count::lock(v8);
  if (!v10)
  {
    goto LABEL_11;
  }

  v11 = v10;
  v12 = operator new(0x18uLL);
  *v12 = v4;
  v12[1] = v5;
  v13 = xpc_null_create();
  v12[2] = v7;
  v14 = v4[11];
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  v15 = operator new(0x18uLL);
  *v15 = v12;
  v15[1] = v9;
  v15[2] = v11;
  dispatch_async_f(v14, v15, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI9SARModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb4_E3__9EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_);
  if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  xpc_release(v13);
}

void SARModule::registerEventHandlers_sync(SARModule *this)
{
  v34 = *MEMORY[0x29EDCA608];
  v2 = *(this + 13);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(__p) = 0;
    _os_log_debug_impl(&dword_296FF7000, v2, OS_LOG_TYPE_DEBUG, "#D Registering event handlers", &__p, 2u);
    v3 = *(this + 10);
    if (!v3)
    {
LABEL_53:
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }
  }

  else
  {
    v3 = *(this + 10);
    if (!v3)
    {
      goto LABEL_53;
    }
  }

  v4 = *(this + 9);
  v5 = std::__shared_weak_count::lock(v3);
  if (!v5)
  {
    goto LABEL_53;
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
    v27 = v11 | 0x8000000000000000;
    *&__p = p_p;
    goto LABEL_14;
  }

  HIBYTE(v27) = v8;
  p_p = &__p;
  if (v8)
  {
LABEL_14:
    memmove(p_p, v7, v9);
  }

  *(p_p + v9) = 0;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v33 = 0;
  v12 = operator new(0x20uLL);
  *v12 = &unk_2A1E2CEB8;
  v12[1] = this;
  v12[2] = v4;
  v12[3] = v6;
  v33 = v12;
  Service::registerEventHandler(this, &__p, v32);
  if (v33 == v32)
  {
    (*(*v33 + 32))(v33);
    if ((SHIBYTE(v27) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_47;
  }

  if (v33)
  {
    (*(*v33 + 40))();
  }

  if (SHIBYTE(v27) < 0)
  {
LABEL_47:
    operator delete(__p);
  }

LABEL_19:
  v13 = *MEMORY[0x29EDBEFF0];
  v14 = strlen(*MEMORY[0x29EDBEFF0]);
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
    v27 = v17 | 0x8000000000000000;
    *&__p = v16;
    goto LABEL_27;
  }

  HIBYTE(v27) = v14;
  v16 = &__p;
  if (v14)
  {
LABEL_27:
    memmove(v16, v13, v15);
  }

  *(v16 + v15) = 0;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v31 = 0;
  v18 = operator new(0x20uLL);
  *v18 = &unk_2A1E2CF68;
  v18[1] = this;
  v18[2] = v4;
  v18[3] = v6;
  v31 = v18;
  Service::registerEventHandler(this, &__p, v30);
  if (v31 == v30)
  {
    (*(*v31 + 32))(v31);
    if ((SHIBYTE(v27) & 0x80000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_49;
  }

  if (v31)
  {
    (*(*v31 + 40))();
  }

  if (SHIBYTE(v27) < 0)
  {
LABEL_49:
    operator delete(__p);
  }

LABEL_32:
  v19 = *MEMORY[0x29EDBE618];
  v20 = strlen(*MEMORY[0x29EDBE618]);
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
    v27 = v23 | 0x8000000000000000;
    *&__p = v22;
    goto LABEL_40;
  }

  HIBYTE(v27) = v20;
  v22 = &__p;
  if (v20)
  {
LABEL_40:
    memmove(v22, v19, v21);
  }

  *(v22 + v21) = 0;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v29 = 0;
  v24 = operator new(0x20uLL);
  *v24 = &unk_2A1E2CFE8;
  v24[1] = this;
  v24[2] = v4;
  v24[3] = v6;
  v29 = v24;
  Service::registerEventHandler(this, &__p, v28);
  if (v29 == v28)
  {
    (*(*v29 + 32))(v29);
    if ((SHIBYTE(v27) & 0x80000000) == 0)
    {
      goto LABEL_45;
    }

LABEL_51:
    operator delete(__p);
    goto LABEL_45;
  }

  if (v29)
  {
    (*(*v29 + 40))();
  }

  if (SHIBYTE(v27) < 0)
  {
    goto LABEL_51;
  }

LABEL_45:
  Service::eventsOn(this);
  std::__shared_weak_count::__release_weak(v6);
  v25 = *MEMORY[0x29EDCA608];
}

void SARModule::initializeHelpers_sync(dispatch_object_t *this)
{
  v121[1] = *MEMORY[0x29EDCA608];
  capabilities::abs::supportedSARFeatures(this);
  v2 = capabilities::abs::operator&();
  if (!v2)
  {
    goto LABEL_54;
  }

  v3 = this[13];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_296FF7000, v3, OS_LOG_TYPE_DEFAULT, "#I Getting HSAR Config from kernel", buf, 2u);
  }

  v4 = pthread_mutex_lock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
  v5 = off_2A18B7430;
  if (!off_2A18B7430)
  {
    AppleSARHelper::create_default_global(buf, v4);
    v6 = *buf;
    memset(buf, 0, sizeof(buf));
    v7 = *(&off_2A18B7430 + 1);
    off_2A18B7430 = v6;
    if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }

    v8 = *&buf[8];
    if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }

    v5 = off_2A18B7430;
  }

  v9 = *(&off_2A18B7430 + 1);
  v117 = v5;
  v118 = *(&off_2A18B7430 + 1);
  if (*(&off_2A18B7430 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18B7430 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
  if (*(v5 + 1))
  {
    *buf = 3;
    v121[0] = 0;
    v119 = 1;
    v10 = AppleSARHelper::callUserClientMethod(v5, 25, buf, 1, this + 329, 20, v121, &v119, this + 329, 0x14uLL);
    if (!v9)
    {
LABEL_19:
      v11 = this[13];
      if (v10)
      {
        goto LABEL_20;
      }

LABEL_27:
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_296FF7000, v11, OS_LOG_TYPE_ERROR, "Failed to get HSAR configuration!", buf, 2u);
        v13 = this[13];
        if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_30;
        }

LABEL_29:
        *buf = 0;
        _os_log_impl(&dword_296FF7000, v13, OS_LOG_TYPE_DEFAULT, "#I Getting call state", buf, 2u);
        goto LABEL_30;
      }

LABEL_28:
      v13 = this[13];
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_30;
      }

      goto LABEL_29;
    }
  }

  else
  {
    v10 = 0;
    if (!v9)
    {
      goto LABEL_19;
    }
  }

  if (atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_19;
  }

  v14 = v10;
  (v9->__on_zero_shared)(v9);
  std::__shared_weak_count::__release_weak(v9);
  v11 = this[13];
  if ((v14 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_20:
  if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_28;
  }

  if (*(this + 329))
  {
    v12 = "Enabled";
  }

  else
  {
    v12 = "Disabled";
  }

  *buf = 136315138;
  *&buf[4] = v12;
  _os_log_impl(&dword_296FF7000, v11, OS_LOG_TYPE_DEFAULT, "#I Succeeded getting HSAR Configuration: HSAR is %s", buf, 0xCu);
  v13 = this[13];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_29;
  }

LABEL_30:
  v15 = pthread_mutex_lock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
  v16 = off_2A18B7430;
  if (!off_2A18B7430)
  {
    AppleSARHelper::create_default_global(buf, v15);
    v17 = *buf;
    memset(buf, 0, sizeof(buf));
    v18 = *(&off_2A18B7430 + 1);
    off_2A18B7430 = v17;
    if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v18->__on_zero_shared)(v18);
      std::__shared_weak_count::__release_weak(v18);
    }

    v19 = *&buf[8];
    if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v19->__on_zero_shared)(v19);
      std::__shared_weak_count::__release_weak(v19);
    }

    v16 = off_2A18B7430;
  }

  v20 = *(&off_2A18B7430 + 1);
  v117 = v16;
  v118 = *(&off_2A18B7430 + 1);
  if (*(&off_2A18B7430 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18B7430 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
  if (*(v16 + 1))
  {
    *buf = 3;
    v121[0] = 0;
    v119 = 1;
    v21 = AppleSARHelper::callUserClientMethod(v16, 35, buf, 1, this + 35, 1, v121, &v119, this + 35, 1uLL);
    if (!v20)
    {
LABEL_45:
      v22 = this[13];
      if (v21)
      {
        goto LABEL_46;
      }

      goto LABEL_52;
    }
  }

  else
  {
    v21 = 0;
    if (!v20)
    {
      goto LABEL_45;
    }
  }

  if (atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_45;
  }

  v24 = v21;
  (v20->__on_zero_shared)(v20);
  std::__shared_weak_count::__release_weak(v20);
  v22 = this[13];
  if (v24)
  {
LABEL_46:
    v2 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
    if (v2)
    {
      if (*(this + 280))
      {
        v23 = "On";
      }

      else
      {
        v23 = "Off";
      }

      *buf = 136315138;
      *&buf[4] = v23;
      _os_log_impl(&dword_296FF7000, v22, OS_LOG_TYPE_DEFAULT, "#I Succeeded getting call state: %s", buf, 0xCu);
    }

    goto LABEL_54;
  }

LABEL_52:
  v2 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
  if (v2)
  {
    *buf = 0;
    _os_log_error_impl(&dword_296FF7000, v22, OS_LOG_TYPE_ERROR, "Failed to get call state!", buf, 2u);
  }

LABEL_54:
  capabilities::abs::supportedSARFeatures(v2);
  if (!capabilities::abs::operator&())
  {
    goto LABEL_183;
  }

  v25 = this[13];
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_296FF7000, v25, OS_LOG_TYPE_DEFAULT, "#I Getting SAR Fusion Status from kernel", buf, 2u);
  }

  v26 = pthread_mutex_lock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
  v27 = off_2A18B7430;
  if (!off_2A18B7430)
  {
    AppleSARHelper::create_default_global(buf, v26);
    v28 = *buf;
    memset(buf, 0, sizeof(buf));
    v29 = *(&off_2A18B7430 + 1);
    off_2A18B7430 = v28;
    if (v29 && !atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v29->__on_zero_shared)(v29);
      std::__shared_weak_count::__release_weak(v29);
    }

    v30 = *&buf[8];
    if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v30->__on_zero_shared)(v30);
      std::__shared_weak_count::__release_weak(v30);
    }

    v27 = off_2A18B7430;
  }

  v31 = *(&off_2A18B7430 + 1);
  v117 = v27;
  v118 = *(&off_2A18B7430 + 1);
  if (*(&off_2A18B7430 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18B7430 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
  if (*(v27 + 1))
  {
    *buf = 3;
    v121[0] = 0;
    v119 = 1;
    v32 = AppleSARHelper::callUserClientMethod(v27, 3, buf, 1, this + 16, 4, v121, &v119, this + 16, 4uLL);
    if (!v31)
    {
      goto LABEL_72;
    }
  }

  else
  {
    v32 = 0;
    if (!v31)
    {
      goto LABEL_72;
    }
  }

  if (!atomic_fetch_add(&v31->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v105 = v32;
    (v31->__on_zero_shared)(v31);
    std::__shared_weak_count::__release_weak(v31);
    if (v105)
    {
      goto LABEL_75;
    }

    goto LABEL_73;
  }

LABEL_72:
  if (v32)
  {
    goto LABEL_75;
  }

LABEL_73:
  v33 = this[13];
  if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_296FF7000, v33, OS_LOG_TYPE_ERROR, "Failed to get Accessory State!", buf, 2u);
  }

LABEL_75:
  v34 = pthread_mutex_lock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
  v35 = off_2A18B7430;
  if (!off_2A18B7430)
  {
    AppleSARHelper::create_default_global(buf, v34);
    v36 = *buf;
    memset(buf, 0, sizeof(buf));
    v37 = *(&off_2A18B7430 + 1);
    off_2A18B7430 = v36;
    if (v37 && !atomic_fetch_add(&v37->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v37->__on_zero_shared)(v37);
      std::__shared_weak_count::__release_weak(v37);
    }

    v38 = *&buf[8];
    if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v38->__on_zero_shared)(v38);
      std::__shared_weak_count::__release_weak(v38);
    }

    v35 = off_2A18B7430;
  }

  v39 = *(&off_2A18B7430 + 1);
  v117 = v35;
  v118 = *(&off_2A18B7430 + 1);
  if (*(&off_2A18B7430 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18B7430 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
  if (*(v35 + 1))
  {
    *buf = 3;
    v121[0] = 0;
    v119 = 1;
    v40 = AppleSARHelper::callUserClientMethod(v35, 4, buf, 1, this + 132, 1, v121, &v119, this + 132, 1uLL);
    if (!v39)
    {
      goto LABEL_90;
    }
  }

  else
  {
    v40 = 0;
    if (!v39)
    {
      goto LABEL_90;
    }
  }

  if (!atomic_fetch_add(&v39->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v106 = v40;
    (v39->__on_zero_shared)(v39);
    std::__shared_weak_count::__release_weak(v39);
    if (v106)
    {
      goto LABEL_93;
    }

    goto LABEL_91;
  }

LABEL_90:
  if (v40)
  {
    goto LABEL_93;
  }

LABEL_91:
  v41 = this[13];
  if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_296FF7000, v41, OS_LOG_TYPE_ERROR, "Failed to get OBD and Tuner State!", buf, 2u);
  }

LABEL_93:
  *(this + 133) = *(this + 132);
  v42 = pthread_mutex_lock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
  v43 = off_2A18B7430;
  if (!off_2A18B7430)
  {
    AppleSARHelper::create_default_global(buf, v42);
    v44 = *buf;
    memset(buf, 0, sizeof(buf));
    v45 = *(&off_2A18B7430 + 1);
    off_2A18B7430 = v44;
    if (v45 && !atomic_fetch_add(&v45->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v45->__on_zero_shared)(v45);
      std::__shared_weak_count::__release_weak(v45);
    }

    v46 = *&buf[8];
    if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v46->__on_zero_shared)(v46);
      std::__shared_weak_count::__release_weak(v46);
    }

    v43 = off_2A18B7430;
  }

  v47 = *(&off_2A18B7430 + 1);
  v117 = v43;
  v118 = *(&off_2A18B7430 + 1);
  if (*(&off_2A18B7430 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18B7430 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
  if (*(v43 + 1))
  {
    *buf = 3;
    v121[0] = 0;
    v119 = 1;
    v48 = AppleSARHelper::callUserClientMethod(v43, 6, buf, 1, this + 134, 1, v121, &v119, this + 134, 1uLL);
    if (!v47)
    {
      goto LABEL_108;
    }
  }

  else
  {
    v48 = 0;
    if (!v47)
    {
      goto LABEL_108;
    }
  }

  if (!atomic_fetch_add(&v47->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v107 = v48;
    (v47->__on_zero_shared)(v47);
    std::__shared_weak_count::__release_weak(v47);
    if (v107)
    {
      goto LABEL_111;
    }

    goto LABEL_109;
  }

LABEL_108:
  if (v48)
  {
    goto LABEL_111;
  }

LABEL_109:
  v49 = this[13];
  if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_296FF7000, v49, OS_LOG_TYPE_ERROR, "Failed to get Voice state!", buf, 2u);
  }

LABEL_111:
  v50 = pthread_mutex_lock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
  v51 = off_2A18B7430;
  if (!off_2A18B7430)
  {
    AppleSARHelper::create_default_global(buf, v50);
    v52 = *buf;
    memset(buf, 0, sizeof(buf));
    v53 = *(&off_2A18B7430 + 1);
    off_2A18B7430 = v52;
    if (v53 && !atomic_fetch_add(&v53->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v53->__on_zero_shared)(v53);
      std::__shared_weak_count::__release_weak(v53);
    }

    v54 = *&buf[8];
    if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v54->__on_zero_shared)(v54);
      std::__shared_weak_count::__release_weak(v54);
    }

    v51 = off_2A18B7430;
  }

  v55 = *(&off_2A18B7430 + 1);
  v117 = v51;
  v118 = *(&off_2A18B7430 + 1);
  if (*(&off_2A18B7430 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18B7430 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
  if (*(v51 + 1))
  {
    *buf = 3;
    v121[0] = 0;
    v119 = 1;
    v56 = AppleSARHelper::callUserClientMethod(v51, 8, buf, 1, this + 135, 1, v121, &v119, this + 135, 1uLL);
    if (!v55)
    {
      goto LABEL_126;
    }
  }

  else
  {
    v56 = 0;
    if (!v55)
    {
      goto LABEL_126;
    }
  }

  if (!atomic_fetch_add(&v55->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v108 = v56;
    (v55->__on_zero_shared)(v55);
    std::__shared_weak_count::__release_weak(v55);
    if (v108)
    {
      goto LABEL_129;
    }

    goto LABEL_127;
  }

LABEL_126:
  if (v56)
  {
    goto LABEL_129;
  }

LABEL_127:
  v57 = this[13];
  if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_296FF7000, v57, OS_LOG_TYPE_ERROR, "Failed to get Speaker State!", buf, 2u);
  }

LABEL_129:
  v58 = pthread_mutex_lock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
  v59 = off_2A18B7430;
  if (!off_2A18B7430)
  {
    AppleSARHelper::create_default_global(buf, v58);
    v60 = *buf;
    memset(buf, 0, sizeof(buf));
    v61 = *(&off_2A18B7430 + 1);
    off_2A18B7430 = v60;
    if (v61 && !atomic_fetch_add(&v61->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v61->__on_zero_shared)(v61);
      std::__shared_weak_count::__release_weak(v61);
    }

    v62 = *&buf[8];
    if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v62->__on_zero_shared)(v62);
      std::__shared_weak_count::__release_weak(v62);
    }

    v59 = off_2A18B7430;
  }

  v63 = *(&off_2A18B7430 + 1);
  v117 = v59;
  v118 = *(&off_2A18B7430 + 1);
  if (*(&off_2A18B7430 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18B7430 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
  if (*(v59 + 1))
  {
    *buf = 3;
    v121[0] = 0;
    v119 = 1;
    v64 = AppleSARHelper::callUserClientMethod(v59, 9, buf, 1, this + 17, 1, v121, &v119, this + 17, 1uLL);
    if (!v63)
    {
      goto LABEL_144;
    }
  }

  else
  {
    v64 = 0;
    if (!v63)
    {
      goto LABEL_144;
    }
  }

  if (!atomic_fetch_add(&v63->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v109 = v64;
    (v63->__on_zero_shared)(v63);
    std::__shared_weak_count::__release_weak(v63);
    if (v109)
    {
      goto LABEL_147;
    }

    goto LABEL_145;
  }

LABEL_144:
  if (v64)
  {
    goto LABEL_147;
  }

LABEL_145:
  v65 = this[13];
  if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_296FF7000, v65, OS_LOG_TYPE_ERROR, "Failed to get Grip State!", buf, 2u);
  }

LABEL_147:
  *(this + 137) = *(this + 136);
  v66 = pthread_mutex_lock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
  v67 = off_2A18B7430;
  if (!off_2A18B7430)
  {
    AppleSARHelper::create_default_global(buf, v66);
    v68 = *buf;
    memset(buf, 0, sizeof(buf));
    v69 = *(&off_2A18B7430 + 1);
    off_2A18B7430 = v68;
    if (v69 && !atomic_fetch_add(&v69->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v69->__on_zero_shared)(v69);
      std::__shared_weak_count::__release_weak(v69);
    }

    v70 = *&buf[8];
    if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v70->__on_zero_shared)(v70);
      std::__shared_weak_count::__release_weak(v70);
    }

    v67 = off_2A18B7430;
  }

  v71 = *(&off_2A18B7430 + 1);
  v117 = v67;
  v118 = *(&off_2A18B7430 + 1);
  if (*(&off_2A18B7430 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18B7430 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
  if (*(v67 + 1))
  {
    *buf = 3;
    v121[0] = 0;
    v119 = 1;
    v72 = AppleSARHelper::callUserClientMethod(v67, 10, buf, 1, this + 138, 1, v121, &v119, this + 138, 1uLL);
    if (!v71)
    {
      goto LABEL_162;
    }
  }

  else
  {
    v72 = 0;
    if (!v71)
    {
      goto LABEL_162;
    }
  }

  if (!atomic_fetch_add(&v71->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v110 = v72;
    (v71->__on_zero_shared)(v71);
    std::__shared_weak_count::__release_weak(v71);
    if (v110)
    {
      goto LABEL_165;
    }

    goto LABEL_163;
  }

LABEL_162:
  if (v72)
  {
    goto LABEL_165;
  }

LABEL_163:
  v73 = this[13];
  if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_296FF7000, v73, OS_LOG_TYPE_ERROR, "Failed to get Power State!", buf, 2u);
  }

LABEL_165:
  v74 = pthread_mutex_lock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
  v75 = off_2A18B7430;
  if (!off_2A18B7430)
  {
    AppleSARHelper::create_default_global(buf, v74);
    v76 = *buf;
    memset(buf, 0, sizeof(buf));
    v77 = *(&off_2A18B7430 + 1);
    off_2A18B7430 = v76;
    if (v77 && !atomic_fetch_add(&v77->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v77->__on_zero_shared)(v77);
      std::__shared_weak_count::__release_weak(v77);
    }

    v78 = *&buf[8];
    if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v78->__on_zero_shared)(v78);
      std::__shared_weak_count::__release_weak(v78);
    }

    v75 = off_2A18B7430;
  }

  v79 = *(&off_2A18B7430 + 1);
  v117 = v75;
  v118 = *(&off_2A18B7430 + 1);
  if (*(&off_2A18B7430 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18B7430 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
  if (*(v75 + 1))
  {
    *buf = 3;
    v121[0] = 0;
    v119 = 1;
    v80 = AppleSARHelper::callUserClientMethod(v75, 11, buf, 1, this + 139, 1, v121, &v119, this + 139, 1uLL);
    if (!v79)
    {
      goto LABEL_180;
    }
  }

  else
  {
    v80 = 0;
    if (!v79)
    {
      goto LABEL_180;
    }
  }

  if (!atomic_fetch_add(&v79->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v111 = v80;
    (v79->__on_zero_shared)(v79);
    std::__shared_weak_count::__release_weak(v79);
    if (v111)
    {
      goto LABEL_183;
    }

    goto LABEL_181;
  }

LABEL_180:
  if (v80)
  {
    goto LABEL_183;
  }

LABEL_181:
  v81 = this[13];
  if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_296FF7000, v81, OS_LOG_TYPE_ERROR, "Failed to get Wrist State!", buf, 2u);
  }

LABEL_183:
  v82 = this[13];
  if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_296FF7000, v82, OS_LOG_TYPE_DEFAULT, "#I Set up SAR Helpers", buf, 2u);
  }

  SARModule::initializeSARLimitTable_sync(this);
  v84 = this[11];
  object = v84;
  if (v84)
  {
    dispatch_retain(v84);
  }

  CMOnBodyDelegate::create(&object, v83, buf);
  v85 = *buf;
  memset(buf, 0, sizeof(buf));
  v86 = this[15];
  *(this + 7) = v85;
  if (v86 && !atomic_fetch_add(&v86->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v86->__on_zero_shared)(v86);
    std::__shared_weak_count::__release_weak(v86);
  }

  v87 = *&buf[8];
  if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v87->__on_zero_shared)(v87);
    std::__shared_weak_count::__release_weak(v87);
  }

  v88 = object;
  if (object)
  {
    dispatch_release(object);
  }

  if (!this[14])
  {
    v89 = this[13];
    v88 = os_log_type_enabled(v89, OS_LOG_TYPE_ERROR);
    if (v88)
    {
      *buf = 0;
      _os_log_error_impl(&dword_296FF7000, v89, OS_LOG_TYPE_ERROR, "Failed to create core motion on-body manager", buf, 2u);
    }
  }

  capabilities::abs::supportedSARFeatures(v88);
  if (capabilities::abs::operator&())
  {
    SARModule::initializeVoIPCallDetection_sync(this);
  }

  SARModule::initializeAudio_sync(this);
  if (CMHandDetectionDelegate::isSupported(v90))
  {
    SARModule::initializeHandDetection_sync(this);
  }

  SARModule::initializeOBD_sync(this);
  SARModule::initializeAccessory_sync(this);
  SARModule::initializePowerSource_sync(this);
  v91 = this[10];
  if (!v91 || (v92 = this[9], (v93 = std::__shared_weak_count::lock(v91)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v94 = v93;
  atomic_fetch_add_explicit(&v93->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v93->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v93->__on_zero_shared)(v93);
    std::__shared_weak_count::__release_weak(v94);
  }

  v95 = pthread_mutex_lock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
  v96 = off_2A18B7430;
  if (!off_2A18B7430)
  {
    AppleSARHelper::create_default_global(buf, v95);
    v97 = *buf;
    memset(buf, 0, sizeof(buf));
    v98 = *(&off_2A18B7430 + 1);
    off_2A18B7430 = v97;
    if (v98 && !atomic_fetch_add(&v98->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v98->__on_zero_shared)(v98);
      std::__shared_weak_count::__release_weak(v98);
    }

    v99 = *&buf[8];
    if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v99->__on_zero_shared)(v99);
      std::__shared_weak_count::__release_weak(v99);
    }

    v96 = off_2A18B7430;
  }

  v100 = *(&off_2A18B7430 + 1);
  v117 = v96;
  v118 = *(&off_2A18B7430 + 1);
  if (*(&off_2A18B7430 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18B7430 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 3321888768;
  aBlock[2] = ___ZN9SARModule22initializeHelpers_syncEv_block_invoke;
  aBlock[3] = &__block_descriptor_56_e8_40c33_ZTSNSt3__18weak_ptrI9SARModuleEE_e12_v20__0i8_v12l;
  aBlock[4] = this;
  aBlock[5] = v92;
  v113 = v94;
  atomic_fetch_add_explicit(&v94->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v101 = _Block_copy(aBlock);
  v102 = this[11];
  if (v102)
  {
    dispatch_retain(this[11]);
  }

  v114 = v101;
  v115 = v102;
  AppleSARHelper::registerSARServiceCallback();
  if (v115)
  {
    dispatch_release(v115);
  }

  if (v114)
  {
    _Block_release(v114);
  }

  if (!v100 || atomic_fetch_add(&v100->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v103 = this[13];
    if (!os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_226;
    }

    goto LABEL_225;
  }

  (v100->__on_zero_shared)(v100);
  std::__shared_weak_count::__release_weak(v100);
  v103 = this[13];
  if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
  {
LABEL_225:
    *buf = 0;
    _os_log_impl(&dword_296FF7000, v103, OS_LOG_TYPE_DEFAULT, "#I Finished Initialization", buf, 2u);
  }

LABEL_226:
  if (v113)
  {
    std::__shared_weak_count::__release_weak(v113);
  }

  std::__shared_weak_count::__release_weak(v94);
  v104 = *MEMORY[0x29EDCA608];
}

void SARModule::initializeSARLimitTable_sync(SARModule *this)
{
  v19[1] = *MEMORY[0x29EDCA608];
  v2 = capabilities::abs::supportedHSARType(this);
  if (v2 >= 4)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  *(this + 348) = v3;
  v4 = *(this + 13);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = sar::toString();
    _os_log_impl(&dword_296FF7000, v4, OS_LOG_TYPE_DEFAULT, "#I SAR Limit Table Type: %s", buf, 0xCu);
  }

  v5 = pthread_mutex_lock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
  v6 = off_2A18B7430;
  if (!off_2A18B7430)
  {
    AppleSARHelper::create_default_global(buf, v5);
    v7 = *buf;
    memset(buf, 0, sizeof(buf));
    v8 = *(&off_2A18B7430 + 1);
    off_2A18B7430 = v7;
    if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }

    v9 = *&buf[8];
    if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
    }

    v6 = off_2A18B7430;
  }

  v10 = *(&off_2A18B7430 + 1);
  if (*(&off_2A18B7430 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18B7430 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
  *buf = *(this + 329);
  v17 = *(this + 345);
  if (*(v6 + 1))
  {
    v18 = 0;
    v19[0] = 0;
    v15 = 1;
    v11 = AppleSARHelper::callUserClientMethod(v6, 25, v19, 1, buf, 20, &v18, &v15, buf, 0x14uLL);
    if (!v10)
    {
LABEL_21:
      if (v11)
      {
        goto LABEL_24;
      }

      goto LABEL_22;
    }
  }

  else
  {
    v11 = 0;
    if (!v10)
    {
      goto LABEL_21;
    }
  }

  if (atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_21;
  }

  v14 = v11;
  (v10->__on_zero_shared)(v10);
  std::__shared_weak_count::__release_weak(v10);
  if (v14)
  {
    goto LABEL_24;
  }

LABEL_22:
  v12 = *(this + 13);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_296FF7000, v12, OS_LOG_TYPE_ERROR, "Failed to set SAR Limit Table!", buf, 2u);
  }

LABEL_24:
  v13 = *MEMORY[0x29EDCA608];
}

void SARModule::initializeVoIPCallDetection_sync(SARModule *this)
{
  v20 = *MEMORY[0x29EDCA608];
  v2 = *(this + 13);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_296FF7000, v2, OS_LOG_TYPE_DEFAULT, "#I Initializing FT Call Detection", buf, 2u);
  }

  v3 = *(this + 10);
  if (!v3 || (v4 = *(this + 9), (v5 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v6 = v5;
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = *(this + 11);
  object = v7;
  if (v7)
  {
    dispatch_retain(v7);
  }

  v13[0] = MEMORY[0x29EDCA5F8];
  v13[1] = 3321888768;
  v13[2] = ___ZN9SARModule32initializeVoIPCallDetection_syncEv_block_invoke;
  v13[3] = &__block_descriptor_56_e8_40c33_ZTSNSt3__18weak_ptrI9SARModuleEE_e15_v24__0B8B12r_16l;
  v13[4] = this;
  v13[5] = v4;
  v14 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v19 = 0;
  v17 = &unk_2A1E2D068;
  v18 = _Block_copy(v13);
  v19 = &v17;
  capabilities::abs::supportedSARFeatures(v18);
  if (capabilities::abs::operator&())
  {
    v8 = operator new(0x28uLL);
    *(v8 + 1) = 0;
    *(v8 + 2) = 0;
    *v8 = &unk_2A1E28298;
    std::construct_at[abi:ne200100]<VoIPCallDelegate,dispatch::queue &,std::function<void ()(BOOL,BOOL,char const*)> &,VoIPCallDelegate*>(v8 + 3, &object, &v17);
    v9 = *(this + 37);
    *(this + 36) = v8 + 24;
    *(this + 37) = v8;
    if (!v9)
    {
LABEL_14:
      v10 = v19;
      if (v19 != &v17)
      {
        goto LABEL_15;
      }

      goto LABEL_23;
    }
  }

  else
  {
    v9 = *(this + 37);
    *(this + 36) = 0;
    *(this + 37) = 0;
    if (!v9)
    {
      goto LABEL_14;
    }
  }

  if (atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_14;
  }

  (v9->__on_zero_shared)(v9);
  std::__shared_weak_count::__release_weak(v9);
  v10 = v19;
  if (v19 != &v17)
  {
LABEL_15:
    if (v10)
    {
      (*(*v10 + 5))(v10);
    }

    v11 = object;
    if (object)
    {
      goto LABEL_18;
    }

    goto LABEL_19;
  }

LABEL_23:
  (*(*v10 + 4))(v10);
  v11 = object;
  if (object)
  {
LABEL_18:
    dispatch_release(v11);
  }

LABEL_19:
  if (v14)
  {
    std::__shared_weak_count::__release_weak(v14);
  }

  std::__shared_weak_count::__release_weak(v6);
  v12 = *MEMORY[0x29EDCA608];
}

void sub_297160BE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, dispatch_object_t object, uint64_t a17, char a18)
{
  std::__shared_weak_count::~__shared_weak_count(v19);
  operator delete(v21);
  std::function<void ()(BOOL,BOOL,char const*)>::~function(&a18);
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
    v22 = object;
    if (!object)
    {
LABEL_3:
      std::__shared_weak_count::__release_weak(v18);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v22 = object;
    if (!object)
    {
      goto LABEL_3;
    }
  }

  dispatch_release(v22);
  std::__shared_weak_count::__release_weak(v18);
  _Unwind_Resume(a1);
}

void SARModule::initializeAudio_sync(SARModule *this)
{
  v30 = *MEMORY[0x29EDCA608];
  v2 = *(this + 13);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_296FF7000, v2, OS_LOG_TYPE_DEFAULT, "#I Initializing Audio", buf, 2u);
  }

  v3 = (*(*this + 16))(this);
  AudioManager::create(v3, buf);
  v5 = *buf;
  memset(buf, 0, sizeof(buf));
  v6 = *(this + 19);
  *(this + 9) = v5;
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = *&buf[8];
  if (!*&buf[8] || atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if (*(this + 18))
    {
      goto LABEL_9;
    }

LABEL_32:
    v21 = *(this + 13);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_296FF7000, v21, OS_LOG_TYPE_ERROR, "Failed to create Audio Manager", buf, 2u);
      v24 = *MEMORY[0x29EDCA608];
      return;
    }

LABEL_33:
    v22 = *MEMORY[0x29EDCA608];
    return;
  }

  (v7->__on_zero_shared)(v7);
  std::__shared_weak_count::__release_weak(v7);
  if (!*(this + 18))
  {
    goto LABEL_32;
  }

LABEL_9:
  if (!capabilities::radio::dal(v4))
  {
    goto LABEL_33;
  }

  v8 = *(this + 10);
  if (!v8 || (v9 = *(this + 9), (v10 = std::__shared_weak_count::lock(v8)) == 0))
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

  v13 = *(this + 18);
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 3321888768;
  aBlock[2] = ___ZN9SARModule20initializeAudio_syncEv_block_invoke;
  aBlock[3] = &__block_descriptor_56_e8_40c33_ZTSNSt3__18weak_ptrI9SARModuleEE_e8_v12__0B8l;
  aBlock[4] = this;
  aBlock[5] = v9;
  v26 = v11;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  v14 = _Block_copy(aBlock);
  v15 = *(this + 11);
  if (v15)
  {
    dispatch_retain(*(this + 11));
  }

  v27 = v14;
  v28 = v15;
  v16 = v13[13];
  if (v16 >= v13[14])
  {
    v23 = std::vector<dispatch::callback<void({block_pointer})(BOOL)>>::__emplace_back_slow_path<dispatch::callback<void({block_pointer})(BOOL)> const&>(v13 + 12, &v27);
    v15 = v28;
    v13[13] = v23;
    if (!v15)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  if (v14)
  {
    *v16 = _Block_copy(v14);
    v16[1] = v15;
    if (!v15)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  *v16 = 0;
  v16[1] = v15;
  if (v15)
  {
LABEL_19:
    dispatch_retain(v15);
  }

LABEL_20:
  v13[13] = (v16 + 2);
  if (v15)
  {
LABEL_21:
    dispatch_release(v15);
  }

LABEL_22:
  if (v27)
  {
    _Block_release(v27);
  }

  v17 = *(*(this + 18) + 56);
  *(this + 135) = v17 == 2;
  v18 = *(this + 13);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = "OFF";
    if (v17 == 2)
    {
      v19 = "ON";
    }

    *buf = 136315138;
    *&buf[4] = v19;
    _os_log_impl(&dword_296FF7000, v18, OS_LOG_TYPE_DEFAULT, "#I Sending speaker state to driver: %s", buf, 0xCu);
  }

  SARModule::sendSpeakerState_sync(this);
  if (v26)
  {
    std::__shared_weak_count::__release_weak(v26);
  }

  std::__shared_weak_count::__release_weak(v11);
  v20 = *MEMORY[0x29EDCA608];
}

void sub_29716102C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, char a17)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void SARModule::initializeHandDetection_sync(SARModule *this)
{
  v2 = *(this + 13);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_296FF7000, v2, OS_LOG_TYPE_DEFAULT, "#I Initializing Hand Detection", buf, 2u);
  }

  v3 = (*(*this + 16))(this);
  v4 = *(this + 11);
  v36 = v4;
  if (v4)
  {
    dispatch_retain(v4);
  }

  v5 = *(this + 12);
  v35 = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  v6 = *(this + 19);
  v33 = *(this + 18);
  v34 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v31 = 0;
  v32 = 0;
  v7 = *(this + 15);
  v29 = *(this + 14);
  v30 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  HandDetectionManager::create(v3, &v36, &v35, &v33, &v31, &v29, buf);
  v8 = *buf;
  memset(buf, 0, sizeof(buf));
  v9 = *(this + 28);
  *(this + 216) = v8;
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

  v11 = v30;
  if (v30 && !atomic_fetch_add(&v30->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  v12 = v32;
  if (v32 && !atomic_fetch_add(&v32->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  v13 = v34;
  if (v34 && !atomic_fetch_add(&v34->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

  if (v35)
  {
    dispatch_release(v35);
  }

  if (v36)
  {
    dispatch_release(v36);
  }

  if (*(this + 27))
  {
    v14 = *(this + 10);
    if (!v14 || (v15 = *(this + 9), (v16 = std::__shared_weak_count::lock(v14)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v17 = v16;
    p_shared_weak_owners = &v16->__shared_weak_owners_;
    atomic_fetch_add_explicit(&v16->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v16->__on_zero_shared)(v16);
      std::__shared_weak_count::__release_weak(v17);
    }

    v19 = *(this + 27);
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 3321888768;
    aBlock[2] = ___ZN9SARModule28initializeHandDetection_syncEv_block_invoke;
    aBlock[3] = &__block_descriptor_56_e8_40c33_ZTSNSt3__18weak_ptrI9SARModuleEE_e8_v12__0i8l;
    aBlock[4] = this;
    aBlock[5] = v15;
    v26 = v17;
    atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
    v20 = _Block_copy(aBlock);
    v21 = *(this + 11);
    if (v21)
    {
      dispatch_retain(v21);
    }

    v27 = v20;
    v28 = v21;
    v22 = v19[4];
    if (v22 >= v19[5])
    {
      v24 = std::vector<dispatch::callback<void({block_pointer})(CMHandDetectionDelegate::CMHandDetectionResult)>>::__emplace_back_slow_path<dispatch::callback<void({block_pointer})(CMHandDetectionDelegate::CMHandDetectionResult)> const&>(v19 + 3, &v27);
      v21 = v28;
      v19[4] = v24;
      if (!v21)
      {
        goto LABEL_43;
      }

      goto LABEL_42;
    }

    if (v20)
    {
      *v22 = _Block_copy(v20);
      v22[1] = v21;
      if (!v21)
      {
        goto LABEL_41;
      }
    }

    else
    {
      *v22 = 0;
      v22[1] = v21;
      if (!v21)
      {
LABEL_41:
        v19[4] = (v22 + 2);
        if (!v21)
        {
LABEL_43:
          if (v27)
          {
            _Block_release(v27);
          }

          if (v26)
          {
            std::__shared_weak_count::__release_weak(v26);
          }

          std::__shared_weak_count::__release_weak(v17);
          return;
        }

LABEL_42:
        dispatch_release(v21);
        goto LABEL_43;
      }
    }

    dispatch_retain(v21);
    goto LABEL_41;
  }

  v23 = *(this + 13);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_296FF7000, v23, OS_LOG_TYPE_ERROR, "Failed to create hand detection manager!", buf, 2u);
  }
}

void sub_2971614E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, char a17)
{
  dispatch::callback<void({block_pointer})(CMHandDetectionDelegate::CMHandDetectionResult)>::~callback(&a17);
  if (a16)
  {
    std::__shared_weak_count::__release_weak(a16);
  }

  std::__shared_weak_count::__release_weak(v17);
  _Unwind_Resume(a1);
}

void sub_297161518(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v15 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](va);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](va1);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v11 - 96);
  v13 = *(v11 - 80);
  if (v13)
  {
    dispatch_release(v13);
  }

  v14 = *(v11 - 72);
  if (!v14)
  {
    _Unwind_Resume(a1);
  }

  dispatch_release(v14);
  _Unwind_Resume(a1);
}

void SARModule::initializeOBD_sync(SARModule *this)
{
  v2 = *(this + 13);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_296FF7000, v2, OS_LOG_TYPE_DEFAULT, "#I Initializing OBD", buf, 2u);
  }

  v3 = *(this + 10);
  if (!v3 || (v4 = *(this + 9), (v5 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v6 = v5;
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = (*(*this + 16))(this);
  v8 = *(this + 11);
  v31 = v8;
  if (v8)
  {
    v9 = v7;
    dispatch_retain(v8);
    v7 = v9;
  }

  v10 = *(this + 19);
  v29 = *(this + 18);
  v30 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = *(this + 15);
  v27 = *(this + 14);
  v28 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  OBDManager::create(v7, &v31, &v29, &v27, buf);
  v12 = *buf;
  memset(buf, 0, sizeof(buf));
  v13 = *(this + 21);
  *(this + 10) = v12;
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
  }

  v15 = v28;
  if (v28 && !atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v15->__on_zero_shared)(v15);
    std::__shared_weak_count::__release_weak(v15);
  }

  v16 = v30;
  if (v30 && !atomic_fetch_add(&v30->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
  }

  if (v31)
  {
    dispatch_release(v31);
  }

  v17 = *(this + 20);
  if (v17)
  {
    v23[0] = MEMORY[0x29EDCA5F8];
    v23[1] = 3321888768;
    v23[2] = ___ZN9SARModule18initializeOBD_syncEv_block_invoke;
    v23[3] = &__block_descriptor_56_e8_40c33_ZTSNSt3__18weak_ptrI9SARModuleEE_e11_v16__0C8C12l;
    v23[4] = this;
    v23[5] = v4;
    v24 = v6;
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v18 = _Block_copy(v23);
    v19 = *(this + 11);
    if (v19)
    {
      dispatch_retain(v19);
    }

    aBlock = v18;
    v26 = v19;
    v20 = v17[6];
    if (v20 >= v17[7])
    {
      v22 = std::vector<dispatch::callback<void({block_pointer})(sar::OBDState,sar::TunerState)>>::__emplace_back_slow_path<dispatch::callback<void({block_pointer})(sar::OBDState,sar::TunerState)> const&>(v17 + 5, &aBlock);
      v19 = v26;
      v17[6] = v22;
      if (!v19)
      {
        goto LABEL_36;
      }

      goto LABEL_35;
    }

    if (v18)
    {
      *v20 = _Block_copy(v18);
      v20[1] = v19;
      if (!v19)
      {
        goto LABEL_34;
      }
    }

    else
    {
      *v20 = 0;
      v20[1] = v19;
      if (!v19)
      {
LABEL_34:
        v17[6] = (v20 + 2);
        if (!v19)
        {
LABEL_36:
          if (aBlock)
          {
            _Block_release(aBlock);
          }

          if (v24)
          {
            std::__shared_weak_count::__release_weak(v24);
          }

          goto LABEL_42;
        }

LABEL_35:
        dispatch_release(v19);
        goto LABEL_36;
      }
    }

    dispatch_retain(v19);
    goto LABEL_34;
  }

  v21 = *(this + 13);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_296FF7000, v21, OS_LOG_TYPE_ERROR, "Failed to create OBD Manager", buf, 2u);
  }

LABEL_42:
  std::__shared_weak_count::__release_weak(v6);
}

void sub_297161948(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, char a16, uint64_t a17, char a18, uint64_t a19, char a20)
{
  dispatch::callback<void({block_pointer})(sar::OBDState,sar::TunerState)>::~callback(&a16);
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
    std::__shared_weak_count::__release_weak(v20);
    _Unwind_Resume(a1);
  }

  std::__shared_weak_count::__release_weak(v20);
  _Unwind_Resume(a1);
}

void SARModule::initializeAccessory_sync(SARModule *this)
{
  v2 = *(this + 13);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_296FF7000, v2, OS_LOG_TYPE_DEFAULT, "#I Initializing Accessory", buf, 2u);
  }

  v3 = *(this + 10);
  if (!v3 || (v4 = *(this + 9), (v5 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v6 = v5;
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = (*(*this + 16))(this);
  v9 = *(this + 11);
  object = v9;
  if (v9)
  {
    v10 = v7;
    dispatch_retain(v9);
    v7 = v10;
  }

  LegacyAccessoryManager::create(v7, &object, v8, buf);
  v11 = *buf;
  memset(buf, 0, sizeof(buf));
  v12 = *(this + 23);
  *(this + 11) = v11;
  if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  v13 = *&buf[8];
  if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

  if (object)
  {
    dispatch_release(object);
  }

  v14 = *(this + 22);
  if (v14)
  {
    v20[0] = MEMORY[0x29EDCA5F8];
    v20[1] = 3321888768;
    v20[2] = ___ZN9SARModule24initializeAccessory_syncEv_block_invoke;
    v20[3] = &__block_descriptor_56_e8_40c33_ZTSNSt3__18weak_ptrI9SARModuleEE_e8_v12__0I8l;
    v20[4] = this;
    v20[5] = v4;
    v21 = v6;
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v15 = _Block_copy(v20);
    v16 = *(this + 11);
    if (v16)
    {
      dispatch_retain(v16);
    }

    aBlock = v15;
    v23 = v16;
    v17 = v14[5];
    if (v17 >= v14[6])
    {
      v19 = std::vector<dispatch::callback<void({block_pointer})>>::__emplace_back_slow_path<dispatch::callback<void({block_pointer})> const&>(v14 + 4, &aBlock);
      v16 = v23;
      v14[5] = v19;
      if (!v16)
      {
        goto LABEL_26;
      }

      goto LABEL_25;
    }

    if (v15)
    {
      *v17 = _Block_copy(v15);
      v17[1] = v16;
      if (!v16)
      {
        goto LABEL_24;
      }
    }

    else
    {
      *v17 = 0;
      v17[1] = v16;
      if (!v16)
      {
LABEL_24:
        v14[5] = (v17 + 2);
        if (!v16)
        {
LABEL_26:
          if (aBlock)
          {
            _Block_release(aBlock);
          }

          if (v21)
          {
            std::__shared_weak_count::__release_weak(v21);
          }

          goto LABEL_32;
        }

LABEL_25:
        dispatch_release(v16);
        goto LABEL_26;
      }
    }

    dispatch_retain(v16);
    goto LABEL_24;
  }

  v18 = *(this + 13);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_296FF7000, v18, OS_LOG_TYPE_ERROR, "Failed to create Legacy Accessory Manager", buf, 2u);
  }

LABEL_32:
  std::__shared_weak_count::__release_weak(v6);
}

void sub_297161CE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, char a16, uint64_t a17, dispatch_object_t object)
{
  dispatch::callback<void({block_pointer})>::~callback(&a16);
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
    std::__shared_weak_count::__release_weak(v18);
    _Unwind_Resume(a1);
  }

  std::__shared_weak_count::__release_weak(v18);
  _Unwind_Resume(a1);
}

void SARModule::initializePowerSource_sync(SARModule *this)
{
  v2 = *(this + 13);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_296FF7000, v2, OS_LOG_TYPE_DEFAULT, "#I Initializing Power Source", buf, 2u);
  }

  pthread_mutex_lock(&ctu::Singleton<ABMServer,ABMServer,ctu::PthreadMutexGuardPolicy<ABMServer>>::sInstance);
  v3 = off_2A18B7340;
  if (!off_2A18B7340)
  {
    ABMServer::create_default_global(buf);
    v4 = *buf;
    memset(buf, 0, sizeof(buf));
    v5 = *(&off_2A18B7340 + 1);
    off_2A18B7340 = v4;
    if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    v6 = *&buf[8];
    if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }

    v3 = off_2A18B7340;
  }

  v27 = v3;
  v28 = *(&off_2A18B7340 + 1);
  if (*(&off_2A18B7340 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18B7340 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ABMServer,ABMServer,ctu::PthreadMutexGuardPolicy<ABMServer>>::sInstance);
  v7 = *(*v3 + 144);
  v8 = operator new(0x88uLL);
  v8[1] = 0;
  v8[2] = 0;
  *v8 = &unk_2A1E26468;
  ctu::OsLogLogger::OsLogLogger((v8 + 3), "com.apple.telephony", "iokit.event");
  ctu::iokit::Controller::create(v7, v9);
  *(v8 + 6) = 0u;
  *(v8 + 7) = 0u;
  *(v8 + 4) = 0u;
  *(v8 + 5) = 0u;
  *(v8 + 3) = 0u;
  v8[16] = v7;
  v10 = *(this + 25);
  *(this + 24) = v8 + 3;
  *(this + 25) = v8;
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  if (v28 && !atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v28->__on_zero_shared)(v28);
    std::__shared_weak_count::__release_weak(v28);
    if (*(this + 24))
    {
      goto LABEL_19;
    }
  }

  else if (*(this + 24))
  {
LABEL_19:
    v11 = *(this + 10);
    if (!v11 || (v12 = *(this + 9), (v13 = std::__shared_weak_count::lock(v11)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v14 = v13;
    p_shared_weak_owners = &v13->__shared_weak_owners_;
    atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v13->__on_zero_shared)(v13);
      std::__shared_weak_count::__release_weak(v14);
    }

    v16 = *(this + 24);
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 3321888768;
    aBlock[2] = ___ZN9SARModule26initializePowerSource_syncEv_block_invoke;
    aBlock[3] = &__block_descriptor_56_e8_40c33_ZTSNSt3__18weak_ptrI9SARModuleEE_e8_v12__0I8l;
    aBlock[4] = this;
    aBlock[5] = v12;
    v26 = v14;
    atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
    v17 = _Block_copy(aBlock);
    v18 = *(this + 11);
    if (v18)
    {
      dispatch_retain(*(this + 11));
    }

    if (v17)
    {
      v19 = _Block_copy(v17);
      v20 = *(v16 + 56);
      *(v16 + 56) = v19;
      if (!v20)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v20 = *(v16 + 56);
      *(v16 + 56) = 0;
      if (!v20)
      {
LABEL_33:
        if (v18)
        {
          dispatch_retain(v18);
        }

        v22 = *(v16 + 64);
        *(v16 + 64) = v18;
        if (v22)
        {
          dispatch_release(v22);
        }

        if (v18)
        {
          dispatch_release(v18);
        }

        if (v17)
        {
          _Block_release(v17);
        }

        v23 = *(*(this + 24) + 8);
        if (v23)
        {
          PowerSource = ctu::iokit::Controller::queryPowerSource(v23);
        }

        else
        {
          PowerSource = 1;
        }

        *(this + 52) = PowerSource;
        SARModule::sendPowerSource_sync(this);
        IOKitEventNotifier::start(*(this + 24));
        if (v26)
        {
          std::__shared_weak_count::__release_weak(v26);
        }

        std::__shared_weak_count::__release_weak(v14);
        return;
      }
    }

    _Block_release(v20);
    goto LABEL_33;
  }

  v21 = *(this + 13);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_296FF7000, v21, OS_LOG_TYPE_ERROR, "Failed to create Power Source Notifier", buf, 2u);
  }
}