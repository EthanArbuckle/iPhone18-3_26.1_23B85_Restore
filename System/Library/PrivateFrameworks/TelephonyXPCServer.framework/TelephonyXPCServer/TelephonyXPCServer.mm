const char *TelephonyXPC::ServerPowerObserver::asString(unsigned int a1)
{
  if (a1 > 2)
  {
    return "Unknown";
  }

  else
  {
    return off_279D973A8[a1];
  }
}

{
  if (a1 > 3)
  {
    return "Unknown";
  }

  else
  {
    return off_279D973C0[a1];
  }
}

void TelephonyXPC::ServerPowerObserver::create(uint64_t a1@<X0>, TelephonyXPC::ServerPowerObserver **a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  v4 = operator new(0x50uLL);
  v5 = *a1;
  if (*a1)
  {
    v5 = _Block_copy(v5);
  }

  v6 = *(a1 + 8);
  aBlock = v5;
  object = v6;
  if (v6)
  {
    dispatch_retain(v6);
  }

  TelephonyXPC::ServerPowerObserver::ServerPowerObserver(v4, &aBlock);
  std::shared_ptr<TelephonyXPC::ServerPowerObserver>::shared_ptr[abi:ne200100]<TelephonyXPC::ServerPowerObserver,0>(a2, v4);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  TelephonyXPC::ServerPowerObserver::init(*a2);
}

void sub_26D2A28D8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void TelephonyXPC::ServerPowerObserver::init(TelephonyXPC::ServerPowerObserver *this)
{
  v2 = *(this + 1);
  if (!v2 || (v3 = *this, (v4 = std::__shared_weak_count::lock(v2)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v5 = v4;
  p_shared_weak_owners = &v4->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1174405120;
  v8[2] = ___ZN12TelephonyXPC19ServerPowerObserver4initEv_block_invoke;
  v8[3] = &__block_descriptor_tmp_13;
  v8[4] = this;
  v8[5] = v3;
  v9 = v5;
  v10 = v8;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableIN12TelephonyXPC19ServerPowerObserverEE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS8__block_invoke;
  block[3] = &__block_descriptor_tmp_20;
  block[4] = this;
  block[5] = &v10;
  v7 = *(this + 2);
  if (*(this + 3))
  {
    dispatch_async_and_wait(v7, block);
  }

  else
  {
    dispatch_sync(v7, block);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }

  std::__shared_weak_count::__release_weak(v5);
}

uint64_t TelephonyXPC::ServerPowerObserver::ServerPowerObserver(uint64_t a1, uint64_t a2)
{
  ctu::OsLogContext::OsLogContext(v7, "com.apple.telephony", "ServerPowerObserver");
  ctu::SharedLoggable<TelephonyXPC::ServerPowerObserver,ctu::OsLogLogger>::SharedLoggable<ctu::OsLogContext>(a1, "ServerPowerObserver", QOS_CLASS_DEFAULT);
  ctu::OsLogContext::~OsLogContext(v7);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 2;
  v4 = *a2;
  if (*a2)
  {
    v4 = _Block_copy(v4);
  }

  v5 = *(a2 + 8);
  *(a1 + 64) = v4;
  *(a1 + 72) = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  return a1;
}

void *ctu::SharedLoggable<TelephonyXPC::ServerPowerObserver,ctu::OsLogLogger>::SharedLoggable<ctu::OsLogContext>(void *a1, const char *a2, dispatch_qos_class_t a3)
{
  object = 0;
  ctu::SharedSynchronizable<TelephonyXPC::ServerPowerObserver>::SharedSynchronizable(a1, a2, a3, &object);
  if (object)
  {
    dispatch_release(object);
  }

  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x26D6B9A60](a1 + 4, &object);
  MEMORY[0x26D6B9A70](&object);
  return a1;
}

void TelephonyXPC::ServerPowerObserver::~ServerPowerObserver(TelephonyXPC::ServerPowerObserver *this)
{
  v2 = *(this + 9);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(this + 8);
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = *(this + 6);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  MEMORY[0x26D6B9A70](this + 32);

  ctu::SharedSynchronizable<TelephonyXPC::ServerPowerObserver>::~SharedSynchronizable(this);
}

void ___ZN12TelephonyXPC19ServerPowerObserver4initEv_block_invoke(uint64_t a1)
{
  *&v21[2] = 0xAAAAAAAAAAAAAAAALL;
  *&v1 = 0xAAAAAAAAAAAAAAAALL;
  *(&v1 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v21[0] = v1;
  v21[1] = v1;
  v20 = v1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN12TelephonyXPC19ServerPowerObserver4initEv_block_invoke_2;
  aBlock[3] = &__block_descriptor_tmp;
  v9 = *(a1 + 32);
  v18 = v9;
  v2 = *(a1 + 48);
  v19 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v3 = _Block_copy(aBlock);
  v4 = *(v9 + 16);
  *&v20 = 1;
  *(&v20 + 1) = v4;
  if (v4)
  {
    dispatch_retain(v4);
  }

  *&v21[0] = 0;
  if (v3)
  {
    *(&v21[0] + 1) = _Block_copy(v3);
    memset(&v21[1], 0, 24);
    _Block_release(v3);
  }

  else
  {
    memset(v21 + 8, 0, 32);
  }

  *(v9 + 56) = 2;
  ctu::power::manager::get(&v14, v4);
  v10 = v20;
  if (*(&v20 + 1))
  {
    dispatch_retain(*(&v20 + 1));
  }

  v5 = *&v21[0];
  if (*&v21[0])
  {
    v5 = _Block_copy(*&v21[0]);
  }

  v11 = v5;
  v6 = *(&v21[0] + 1);
  if (*(&v21[0] + 1))
  {
    v6 = _Block_copy(*(&v21[0] + 1));
  }

  v12 = v6;
  if (SBYTE7(v21[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v13, *&v21[1], *(&v21[1] + 1));
  }

  else
  {
    v13 = *&v21[1];
  }

  ctu::power::manager::registerListener();
  v7 = v16;
  v16 = 0uLL;
  v8 = *(v9 + 48);
  *(v9 + 40) = v7;
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    if (*(&v16 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v16 + 1));
    }
  }

  ctu::power::manager::parameters::~parameters(&v10);
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  ctu::power::manager::parameters::~parameters(&v20);
  if (v19)
  {
    std::__shared_weak_count::__release_weak(v19);
  }
}

void sub_26D2A2DF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, dispatch_object_t object, void *a14, void *aBlock, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, std::__shared_weak_count *a30)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (a14)
  {
    _Block_release(a14);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  ctu::power::manager::parameters::~parameters((v30 - 96));
  if (a30)
  {
    std::__shared_weak_count::__release_weak(a30);
  }

  _Unwind_Resume(a1);
}

void ___ZN12TelephonyXPC19ServerPowerObserver4initEv_block_invoke_2(void *a1, int a2, int a3, const void **a4)
{
  v6 = a1[6];
  if (!v6)
  {
    v10 = 0;
    goto LABEL_7;
  }

  v9 = a1[4];
  v10 = std::__shared_weak_count::lock(v6);
  if (!v10 || !a1[5])
  {
LABEL_7:
    (*(*a4 + 2))();
    if (!v10)
    {
      return;
    }

    goto LABEL_12;
  }

  if (*a4)
  {
    v11 = _Block_copy(*a4);
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;
  TelephonyXPC::ServerPowerObserver::handlePowerNotification_sync(v9, &v12, a2, a3);
  if (v11)
  {
    _Block_release(v11);
  }

LABEL_12:

  std::__shared_weak_count::__release_shared[abi:ne200100](v10);
}

void sub_26D2A2F64(_Unwind_Exception *a1)
{
  if (v2)
  {
    _Block_release(v2);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

void TelephonyXPC::ServerPowerObserver::handlePowerNotification_sync(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v31 = *MEMORY[0x277D85DE8];
  if (a3 <= -536870273)
  {
    if (a3 == -536870320 || a3 == -536870315)
    {
      goto LABEL_12;
    }

    if (a3 == -536870288)
    {
      v10 = 0;
      *(a1 + 56) = 0;
LABEL_14:
      v9 = 4;
      v8 = 1;
      goto LABEL_20;
    }

    goto LABEL_13;
  }

  if (a3 > -536870129)
  {
    if (a3 == -536870112)
    {
      v8 = 0;
      v10 = 2;
      *(a1 + 56) = 2;
      v9 = 3;
      goto LABEL_20;
    }

    if (a3 == -536870128)
    {
LABEL_12:
      v8 = 0;
      v10 = 2;
      *(a1 + 56) = 2;
      v9 = 1;
      goto LABEL_20;
    }

LABEL_13:
    v10 = 2;
    *(a1 + 56) = 2;
    goto LABEL_14;
  }

  if (a3 != -536870272)
  {
    if (a3 == -536870144)
    {
      v8 = 0;
      v9 = 0;
      v10 = 2;
      *(a1 + 56) = 2;
      goto LABEL_20;
    }

    goto LABEL_13;
  }

  if (*(a1 + 56))
  {
    v8 = 0;
    v10 = 1;
    *(a1 + 56) = 1;
  }

  else
  {
    v10 = 0;
    v8 = 0;
  }

  v9 = 2;
LABEL_20:
  v11 = *(a1 + 32);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    block = __PAIR64__(a3, 67109888);
    LOWORD(v25) = 1024;
    *(&v25 + 2) = v9;
    HIWORD(v25) = 1024;
    LODWORD(v26) = v10;
    WORD2(v26) = 1024;
    *(&v26 + 6) = a4;
    _os_log_debug_impl(&dword_26D2A2000, v11, OS_LOG_TYPE_DEBUG, "#D Power Notification [%x] Event [%d] PowerState [%d] Forced Sleep [%d]", &block, 0x1Au);
    if ((v8 & 1) == 0)
    {
      goto LABEL_22;
    }

LABEL_52:
    (*(*a2 + 16))();
    goto LABEL_53;
  }

  if (v8)
  {
    goto LABEL_52;
  }

LABEL_22:
  if (!*(a1 + 64) || !*(a1 + 72))
  {
    goto LABEL_52;
  }

  v12 = dispatch_group_create();
  v13 = v12;
  if (v12)
  {
    dispatch_retain(v12);
    dispatch_group_enter(v13);
    v14 = *(a1 + 56);
    dispatch_retain(v13);
    dispatch_group_enter(v13);
  }

  else
  {
    v14 = *(a1 + 56);
  }

  v15 = *(a1 + 64);
  if (v15)
  {
    v16 = _Block_copy(v15);
  }

  else
  {
    v16 = 0;
  }

  v17 = *(a1 + 72);
  block = MEMORY[0x277D85DD0];
  v25 = 1174405120;
  *&v26 = ___ZNK8dispatch8callbackIU13block_pointerFvN12TelephonyXPC19ServerPowerObserver10PowerEventENS2_10PowerStateENS_13group_sessionEEEclIJS3_S4_S5_EEEvDpT__block_invoke;
  *(&v26 + 1) = &__block_descriptor_tmp_21;
  if (v16)
  {
    v18 = _Block_copy(v16);
  }

  else
  {
    v18 = 0;
  }

  v29 = v9;
  v30 = v14;
  aBlock = v18;
  group = v13;
  if (v13)
  {
    dispatch_retain(v13);
    if (group)
    {
      dispatch_group_enter(group);
    }
  }

  dispatch_async(v17, &block);
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v16)
  {
    _Block_release(v16);
  }

  if (v13)
  {
    dispatch_group_leave(v13);
    dispatch_release(v13);
  }

  v19 = *(a1 + 16);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 1174405120;
  v22[2] = ___ZN12TelephonyXPC19ServerPowerObserver28handlePowerNotification_syncEN8dispatch5blockIU13block_pointerFvbEEEjb_block_invoke;
  v22[3] = &__block_descriptor_tmp_14;
  v22[4] = a1;
  v20 = *a2;
  if (*a2)
  {
    v20 = _Block_copy(v20);
  }

  v23 = v20;
  dispatch_group_notify(v13, v19, v22);
  if (v23)
  {
    _Block_release(v23);
  }

  if (v13)
  {
    dispatch_group_leave(v13);
    dispatch_release(v13);
    dispatch_release(v13);
  }

LABEL_53:
  v21 = *MEMORY[0x277D85DE8];
}

void sub_26D2A335C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_40c60_ZTSNSt3__18weak_ptrIN12TelephonyXPC19ServerPowerObserverEEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c60_ZTSNSt3__18weak_ptrIN12TelephonyXPC19ServerPowerObserverEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t ___ZN12TelephonyXPC19ServerPowerObserver28handlePowerNotification_syncEN8dispatch5blockIU13block_pointerFvbEEEjb_block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_debug_impl(&dword_26D2A2000, v2, OS_LOG_TYPE_DEBUG, "#D All clients acknowledged the power notification", v4, 2u);
  }

  return (*(*(a1 + 40) + 16))();
}

void *__copy_helper_block_e8_40c43_ZTSN8dispatch5blockIU13block_pointerFvbEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 40) = result;
  return result;
}

void __destroy_helper_block_e8_40c43_ZTSN8dispatch5blockIU13block_pointerFvbEEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    _Block_release(v1);
  }
}

uint64_t dispatch::callback<void({block_pointer})(TelephonyXPC::ServerPowerObserver::PowerEvent,TelephonyXPC::ServerPowerObserver::PowerState,dispatch::group_session)>::~callback(uint64_t a1)
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

void *ctu::SharedSynchronizable<TelephonyXPC::ServerPowerObserver>::~SharedSynchronizable(void *a1)
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

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  v5 = this;
  if (__sz > 0x16)
  {
    if (__sz >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if ((__sz | 7) == 0x17)
    {
      v6 = 25;
    }

    else
    {
      v6 = (__sz | 7) + 1;
    }

    v7 = operator new(v6);
    v5->__r_.__value_.__l.__size_ = __sz;
    v5->__r_.__value_.__r.__words[2] = v6 | 0x8000000000000000;
    v5->__r_.__value_.__r.__words[0] = v7;
    v5 = v7;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = __sz;
  }

  memmove(v5, __s, __sz + 1);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_279D97380, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void ctu::power::manager::parameters::~parameters(void **this)
{
  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  v2 = this[3];
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = this[2];
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = this[1];
  if (v4)
  {
    dispatch_release(v4);
  }
}

void *std::shared_ptr<TelephonyXPC::ServerPowerObserver>::shared_ptr[abi:ne200100]<TelephonyXPC::ServerPowerObserver,0>(void *a1, void *a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_287EA7EC8;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  std::shared_ptr<TelephonyXPC::ServerPowerObserver>::__enable_weak_this[abi:ne200100]<TelephonyXPC::ServerPowerObserver,TelephonyXPC::ServerPowerObserver,0>(a1, a2, a2);
  return a1;
}

void sub_26D2A3734(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    TelephonyXPC::ServerPowerObserver::~ServerPowerObserver(v1);
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::shared_ptr<TelephonyXPC::ServerPowerObserver>::__enable_weak_this[abi:ne200100]<TelephonyXPC::ServerPowerObserver,TelephonyXPC::ServerPowerObserver,0>(uint64_t a1, void *a2, uint64_t a3)
{
  if (a2)
  {
    v4 = a2[1];
    if (!v4 || v4->__shared_owners_ == -1)
    {
      v5 = *(a1 + 8);
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v4 = a2[1];
      }

      *a2 = a3;
      a2[1] = v5;
      if (v4)
      {
        std::__shared_weak_count::__release_weak(v4);
      }

      if (v5)
      {

        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
      }
    }
  }
}

void std::__shared_ptr_pointer<TelephonyXPC::ServerPowerObserver *,std::shared_ptr<TelephonyXPC::ServerPowerObserver>::__shared_ptr_default_delete<TelephonyXPC::ServerPowerObserver,TelephonyXPC::ServerPowerObserver>,std::allocator<TelephonyXPC::ServerPowerObserver>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<TelephonyXPC::ServerPowerObserver *,std::shared_ptr<TelephonyXPC::ServerPowerObserver>::__shared_ptr_default_delete<TelephonyXPC::ServerPowerObserver,TelephonyXPC::ServerPowerObserver>,std::allocator<TelephonyXPC::ServerPowerObserver>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    TelephonyXPC::ServerPowerObserver::~ServerPowerObserver(v1);

    operator delete(v2);
  }
}

uint64_t std::__shared_ptr_pointer<TelephonyXPC::ServerPowerObserver *,std::shared_ptr<TelephonyXPC::ServerPowerObserver>::__shared_ptr_default_delete<TelephonyXPC::ServerPowerObserver,TelephonyXPC::ServerPowerObserver>,std::allocator<TelephonyXPC::ServerPowerObserver>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

BOOL std::type_info::operator==[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void *ctu::SharedSynchronizable<TelephonyXPC::ServerPowerObserver>::SharedSynchronizable(void *a1, const char *a2, dispatch_qos_class_t a3, dispatch_object_t *a4)
{
  v8 = *a4;
  if (*a4)
  {
    dispatch_retain(*a4);
  }

  initially_inactive = dispatch_queue_attr_make_initially_inactive(0);
  v10 = dispatch_queue_create_with_target_V2(a2, initially_inactive, v8);
  dispatch_set_qos_class_floor(v10, a3, 0);
  dispatch_activate(v10);
  *a1 = 0;
  a1[1] = 0;
  a1[2] = v10;
  if (v10)
  {
    dispatch_retain(v10);
  }

  v11 = *a4;
  a1[3] = *a4;
  if (v11)
  {
    dispatch_retain(v11);
  }

  if (v10)
  {
    dispatch_release(v10);
  }

  if (v8)
  {
    dispatch_release(v8);
  }

  return a1;
}

void std::__throw_bad_weak_ptr[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82830] + 16;
  __cxa_throw(exception, MEMORY[0x277D82708], MEMORY[0x277D82630]);
}

void ___ZNK8dispatch8callbackIU13block_pointerFvN12TelephonyXPC19ServerPowerObserver10PowerEventENS2_10PowerStateENS_13group_sessionEEEclIJS3_S4_S5_EEEvDpT__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(a1 + 52);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  group = v4;
  if (v4)
  {
    dispatch_retain(v4);
    dispatch_group_enter(v4);
  }

  (*(v3 + 16))(v3, v1, v2, &group);
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }
}

void sub_26D2A3ADC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_group_t group)
{
  if (group)
  {
    dispatch_group_leave(group);
    dispatch_release(group);
  }

  _Unwind_Resume(exception_object);
}

void __copy_helper_block_e8_32c127_ZTSN8dispatch5blockIU13block_pointerFvN12TelephonyXPC19ServerPowerObserver10PowerEventENS2_10PowerStateENS_13group_sessionEEEE40c30_ZTSN8dispatch13group_sessionE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v4 = _Block_copy(v4);
  }

  v5 = *(a2 + 40);
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  if (v5)
  {
    dispatch_retain(v5);
    v6 = *(a1 + 40);
    if (v6)
    {

      dispatch_group_enter(v6);
    }
  }
}

void __destroy_helper_block_e8_32c127_ZTSN8dispatch5blockIU13block_pointerFvN12TelephonyXPC19ServerPowerObserver10PowerEventENS2_10PowerStateENS_13group_sessionEEEE40c30_ZTSN8dispatch13group_sessionE(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = *(a1 + 40);
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    _Block_release(v4);
  }
}

void TelephonyXPC::Server::State::~State(TelephonyXPC::Server::State *this)
{
  *this = &unk_287EA7F70;
  v2 = *(this + 26);
  if (v2)
  {
    dispatch_source_cancel(v2);
    dispatch_release(*(this + 26));
    *(this + 26) = 0;
  }

  std::__tree<std::__value_type<std::string,dispatch::callback<void({block_pointer})(TelephonyXPC::ServerClientState,xpc::dict,dispatch::callback<void({block_pointer})(int,xpc::dict)>)>>,std::__map_value_compare<std::string,std::__value_type<std::string,dispatch::callback<void({block_pointer})(TelephonyXPC::ServerClientState,xpc::dict,dispatch::callback<void({block_pointer})(int,xpc::dict)>)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dispatch::callback<void({block_pointer})(TelephonyXPC::ServerClientState,xpc::dict,dispatch::callback<void({block_pointer})(int,xpc::dict)>)>>>>::destroy(*(this + 31));
  std::__tree<std::__value_type<xpc::connection,TelephonyXPC::ServerClientState>,std::__map_value_compare<xpc::connection,std::__value_type<xpc::connection,TelephonyXPC::ServerClientState>,std::less<xpc::connection>,true>,std::allocator<std::__value_type<xpc::connection,TelephonyXPC::ServerClientState>>>::destroy(*(this + 28));
  v3 = *(this + 25);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 23);
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = *(this + 22);
  if (v5)
  {
    _Block_release(v5);
  }

  xpc_release(*(this + 19));
  *(this + 19) = 0;
  if (*(this + 151) < 0)
  {
    operator delete(*(this + 16));
  }

  if (*(this + 127) < 0)
  {
    operator delete(*(this + 13));
  }

  if (*(this + 103) < 0)
  {
    operator delete(*(this + 10));
  }

  MEMORY[0x26D6B9A70](this + 72);

  ctu::XpcServer::~XpcServer(this);
}

{
  TelephonyXPC::Server::State::~State(this);

  operator delete(v1);
}

uint64_t dispatch::callback<void({block_pointer})(TelephonyXPC::Server::ServerStatus)>::~callback(uint64_t a1)
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

void TelephonyXPC::Server::State::Parameters::~Parameters(xpc_object_t *this)
{
  xpc_release(this[9]);
  this[9] = 0;
  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  if (*(this + 47) < 0)
  {
    operator delete(this[3]);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void *TelephonyXPC::Server::Server(void *result, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  *result = &unk_287EA7FA8;
  result[1] = v3;
  result[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

{
  v3 = *a2;
  v2 = a2[1];
  *result = &unk_287EA7FA8;
  result[1] = v3;
  result[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void TelephonyXPC::Server::~Server(TelephonyXPC::Server *this)
{
  *this = &unk_287EA7FA8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_287EA7FA8;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

{
  *this = &unk_287EA7FA8;
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(this);
}

void TelephonyXPC::Server::create(xpc_object_t *a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v5 = *a1;
  v9 = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    v5 = xpc_null_create();
    v9 = v5;
  }

  if (*a2)
  {
    v6 = _Block_copy(*a2);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a2 + 8);
  v8[0] = v6;
  v8[1] = v7;
  if (v7)
  {
    dispatch_retain(v7);
  }

  TelephonyXPC::Server::create(&v9, v8, a3);
  if (v7)
  {
    dispatch_release(v7);
  }

  if (v6)
  {
    _Block_release(v6);
  }

  xpc_release(v5);
}

void sub_26D2A3F94(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  dispatch::callback<void({block_pointer})(TelephonyXPC::Server::ServerStatus)>::~callback(va);
  xpc_release(v2);
  _Unwind_Resume(a1);
}

void TelephonyXPC::Server::create(void **a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v39[0] = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    v39[0] = xpc_null_create();
  }

  v6 = *a2;
  if (*a2)
  {
    v6 = _Block_copy(v6);
  }

  v7 = *(a2 + 8);
  aBlock = v6;
  v38 = v7;
  if (v7)
  {
    dispatch_retain(v7);
  }

  if (MEMORY[0x26D6B9FB0](v39[0]) != MEMORY[0x277D86468])
  {
    v8 = 0;
LABEL_10:
    syslog(3, "Could not create TelephonyXPCServer, verify parameters\n", aBlock);
    v9 = 0;
    goto LABEL_92;
  }

  *v46 = 0u;
  memset(v47, 0, sizeof(v47));
  v49 = 0xAAAAAAAAAAAAAAAALL;
  v10 = xpc_null_create();
  object = v10;
  block = v39;
  v52 = "ServiceXPCName";
  xpc::dict::object_proxy::operator xpc::object(&block, v50);
  xpc::dyn_cast_or_default();
  *v46 = *&__dst.__r_.__value_.__l.__data_;
  *v47 = *(&__dst.__r_.__value_.__l + 2);
  *(&__dst.__r_.__value_.__s + 23) = 0;
  __dst.__r_.__value_.__s.__data_[0] = 0;
  xpc_release(v50[0]);
  block = v39;
  v52 = "ServiceNotificationName";
  xpc::dict::object_proxy::operator xpc::object(&block, v50);
  xpc::dyn_cast_or_default();
  *&v47[8] = __dst;
  *(&__dst.__r_.__value_.__s + 23) = 0;
  __dst.__r_.__value_.__s.__data_[0] = 0;
  xpc_release(v50[0]);
  block = v39;
  v52 = "ServerHostName";
  xpc::dict::object_proxy::operator xpc::object(&block, v50);
  xpc::dyn_cast_or_default();
  *&v47[32] = __dst;
  *(&__dst.__r_.__value_.__s + 23) = 0;
  __dst.__r_.__value_.__s.__data_[0] = 0;
  xpc_release(v50[0]);
  __dst.__r_.__value_.__r.__words[0] = v39;
  __dst.__r_.__value_.__l.__size_ = "ServerEnablePowerObserver";
  xpc::dict::object_proxy::operator xpc::object(&__dst, &block);
  LOBYTE(v49) = xpc::dyn_cast_or_default();
  xpc_release(block);
  __dst.__r_.__value_.__r.__words[0] = v39;
  __dst.__r_.__value_.__l.__size_ = "ServerEnableSignalHandler";
  xpc::dict::object_proxy::operator xpc::object(&__dst, &block);
  BYTE1(v49) = xpc::dyn_cast_or_default();
  xpc_release(block);
  __dst.__r_.__value_.__r.__words[0] = v39;
  __dst.__r_.__value_.__l.__size_ = "ServiceXPCEntitlements";
  xpc::dict::object_proxy::operator xpc::array(&__dst, &block);
  v11 = block;
  block = xpc_null_create();
  object = v11;
  xpc_release(v10);
  xpc_release(block);
  v12 = MEMORY[0x26D6B9FB0](v11);
  v13 = MEMORY[0x277D86440];
  if (v12 != MEMORY[0x277D86440])
  {
    v14 = xpc_array_create(0, 0);
    if (v14 || (v14 = xpc_null_create()) != 0)
    {
      if (MEMORY[0x26D6B9FB0](v14) == v13)
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
    v16 = xpc_null_create();
    v17 = object;
    object = v15;
    xpc_release(v17);
    xpc_release(v16);
    v18 = v47[7];
    if (v47[7] >= 0)
    {
      v19 = v47[7];
    }

    else
    {
      v19 = v46[1];
    }

    v20 = v19 + 6;
    memset(&__dst, 170, sizeof(__dst));
    if (v19 + 6 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v20 >= 0x17)
    {
      if ((v20 | 7) == 0x17)
      {
        v22 = 25;
      }

      else
      {
        v22 = (v20 | 7) + 1;
      }

      p_dst = operator new(v22);
      __dst.__r_.__value_.__l.__size_ = v19 + 6;
      __dst.__r_.__value_.__r.__words[2] = v22 | 0x8000000000000000;
      __dst.__r_.__value_.__r.__words[0] = p_dst;
    }

    else
    {
      memset(&__dst, 0, sizeof(__dst));
      p_dst = &__dst;
      *(&__dst.__r_.__value_.__s + 23) = v19 + 6;
      if (!v19)
      {
LABEL_33:
        strcpy(p_dst + v19, ".allow");
        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v24 = &__dst;
        }

        else
        {
          v24 = __dst.__r_.__value_.__r.__words[0];
        }

        v25 = xpc_string_create(v24);
        if (!v25)
        {
          v25 = xpc_null_create();
        }

        v11 = object;
        xpc_array_append_value(object, v25);
        xpc_release(v25);
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        goto LABEL_40;
      }
    }

    if (v18 >= 0)
    {
      v23 = v46;
    }

    else
    {
      v23 = v46[0];
    }

    memmove(p_dst, v23, v19);
    goto LABEL_33;
  }

LABEL_40:
  v26 = v47[7];
  v27 = v47[7];
  if (v47[7] < 0)
  {
    v26 = v46[1];
  }

  if (!v26)
  {
    goto LABEL_48;
  }

  v28 = v47[31];
  if (v47[31] < 0)
  {
    v28 = *&v47[16];
  }

  if (!v28)
  {
LABEL_48:
    v9 = 0;
    v8 = 0;
    goto LABEL_84;
  }

  v9 = operator new(0x108uLL);
  TelephonyXPC::Server::State::Parameters::Parameters(&__dst, v46);
  if (aBlock)
  {
    v29 = _Block_copy(aBlock);
  }

  else
  {
    v29 = 0;
  }

  v39[1] = v29;
  v39[2] = v38;
  if (v38)
  {
    dispatch_retain(v38);
  }

  std::string::basic_string[abi:ne200100]<0>(&block, "Server");
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v30 = &__dst;
  }

  else
  {
    v30 = __dst.__r_.__value_.__r.__words[0];
  }

  v50[0] = xpc_connection_create_mach_service(v30, 0, 1uLL);
  if (!v50[0])
  {
    v50[0] = xpc_null_create();
  }

  v57 = 0;
  ctu::XpcServer::XpcServer();
  if (v57)
  {
    dispatch_release(v57);
  }

  xpc_release(v50[0]);
  v50[0] = 0;
  if (SHIBYTE(v53) < 0)
  {
    operator delete(block);
  }

  ctu::OsLogContext::OsLogContext(&block, "com.apple.telephony.xpc", "server");
  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x26D6B9A60](v9 + 9, &v57);
  MEMORY[0x26D6B9A70](&v57);
  ctu::OsLogContext::~OsLogContext(&block);
  *v9 = &unk_287EA7F70;
  TelephonyXPC::Server::State::Parameters::Parameters((v9 + 10), &__dst);
  *(v9 + 42) = 0;
  if (v29)
  {
    v31 = _Block_copy(v29);
  }

  else
  {
    v31 = 0;
  }

  v9[22] = v31;
  v9[23] = v38;
  if (v38)
  {
    dispatch_retain(v38);
  }

  v9[28] = 0;
  v9[24] = 0;
  v9[25] = 0;
  v9[26] = 0;
  v9[27] = v9 + 28;
  v9[32] = 0;
  v9[31] = 0;
  v9[29] = 0;
  v9[30] = v9 + 31;
  v8 = operator new(0x20uLL);
  v8->__vftable = &unk_287EA8020;
  v8->__shared_owners_ = 0;
  v8->__shared_weak_owners_ = 0;
  v8[1].__vftable = v9;
  v32 = v9[2];
  if (!v32)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v9[1] = v9;
    v9[2] = v8;
    goto LABEL_70;
  }

  if (v32->__shared_owners_ == -1)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v9[1] = v9;
    v9[2] = v8;
    std::__shared_weak_count::__release_weak(v32);
LABEL_70:
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }

  if (v38)
  {
    dispatch_release(v38);
  }

  if (v29)
  {
    _Block_release(v29);
  }

  xpc_release(v45);
  v45 = 0;
  if (v44 < 0)
  {
    operator delete(__p);
  }

  if (v42 < 0)
  {
    operator delete(v41);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 0x40000000;
  v50[2] = ___ZN12TelephonyXPC6Server5State4initEv_block_invoke;
  v50[3] = &__block_descriptor_tmp_23;
  v57 = v50;
  v50[4] = v9;
  block = MEMORY[0x277D85DD0];
  v52 = 0x40000000;
  v53 = ___ZNK3ctu20SharedSynchronizableINS_9XpcServerEE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  v54 = &__block_descriptor_tmp_24;
  v55 = v9 + 1;
  v56 = &v57;
  v33 = v9[3];
  if (v9[4])
  {
    dispatch_async_and_wait(v33, &block);
  }

  else
  {
    dispatch_sync(v33, &block);
  }

LABEL_84:
  xpc_release(v11);
  if ((v47[55] & 0x80000000) != 0)
  {
    operator delete(*&v47[32]);
  }

  if ((v47[31] & 0x80000000) != 0)
  {
    operator delete(*&v47[8]);
    if ((v27 & 0x80000000) == 0)
    {
LABEL_88:
      if (!v9)
      {
        goto LABEL_10;
      }

      goto LABEL_92;
    }
  }

  else if ((v27 & 0x80000000) == 0)
  {
    goto LABEL_88;
  }

  operator delete(v46[0]);
  if (!v9)
  {
    goto LABEL_10;
  }

LABEL_92:
  if (v38)
  {
    dispatch_release(v38);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  xpc_release(v39[0]);
  v39[0] = 0;
  v34 = operator new(0x18uLL);
  v35 = v34;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    *v34 = &unk_287EA7FA8;
    v34[1] = v9;
    v34[2] = v8;
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    *v34 = &unk_287EA7FA8;
    v34[1] = v9;
    v34[2] = 0;
  }

  *a3 = v34;
  v36 = operator new(0x20uLL);
  *v36 = &unk_287EA8398;
  v36[1] = 0;
  v36[2] = 0;
  v36[3] = v35;
  a3[1] = v36;
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

void sub_26D2A4818(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, char a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, xpc_object_t a28)
{
  (*(*v28 + 32))(v28);
  dispatch::callback<void({block_pointer})(TelephonyXPC::Server::ServerStatus)>::~callback(&a12);
  TelephonyXPC::Server::State::Parameters::~Parameters(&a14);
  TelephonyXPC::Server::State::Parameters::~Parameters(&a28);
  dispatch::callback<void({block_pointer})(TelephonyXPC::Server::ServerStatus)>::~callback(&a9);
  xpc_release(object);
  _Unwind_Resume(a1);
}

uint64_t TelephonyXPC::Server::start(TelephonyXPC::Server *this)
{
  v1 = *(this + 1);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___ZN12TelephonyXPC6Server5State5startEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_30;
  v4[4] = v1;
  v5 = v4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableINS_9XpcServerEE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  block[3] = &__block_descriptor_tmp_24;
  block[4] = v1 + 8;
  block[5] = &v5;
  v2 = *(v1 + 24);
  if (*(v1 + 32))
  {
    dispatch_async_and_wait(v2, block);
  }

  else
  {
    dispatch_sync(v2, block);
  }

  return *(v1 + 168);
}

void TelephonyXPC::Server::broadcastEvent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v8, *a2, *(a2 + 8));
  }

  else
  {
    v8 = *a2;
  }

  if (*a3)
  {
    v5 = _Block_copy(*a3);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a3 + 8);
  v7[0] = v5;
  v7[1] = v6;
  if (v6)
  {
    dispatch_retain(v6);
  }

  TelephonyXPC::Server::State::broadcast(v4, &v8, v7);
  if (v6)
  {
    dispatch_release(v6);
  }

  if (v5)
  {
    _Block_release(v5);
  }

  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }
}

void sub_26D2A4C60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  dispatch::callback<void({block_pointer})(void)>::~callback(&a9);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void TelephonyXPC::Server::State::broadcast(void *a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v9, *a2, *(a2 + 8));
  }

  else
  {
    v9 = *a2;
  }

  v5 = xpc_null_create();
  if (*a3)
  {
    v6 = _Block_copy(*a3);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a3 + 8);
  v8[0] = v6;
  v8[1] = v7;
  if (v7)
  {
    dispatch_retain(v7);
  }

  TelephonyXPC::Server::State::broadcast(a1, &v9, v5, v8);
  if (v7)
  {
    dispatch_release(v7);
  }

  if (v6)
  {
    _Block_release(v6);
  }

  xpc_release(v5);
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

void sub_26D2A4D68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  dispatch::callback<void({block_pointer})(void)>::~callback(&a9);
  xpc_release(v16);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t dispatch::callback<void({block_pointer})(void)>::~callback(uint64_t a1)
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

void TelephonyXPC::Server::broadcastEvent(uint64_t a1, uint64_t a2, xpc_object_t *a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v11, *a2, *(a2 + 8));
  }

  else
  {
    v11 = *a2;
  }

  v7 = *a3;
  if (v7)
  {
    xpc_retain(v7);
  }

  else
  {
    v7 = xpc_null_create();
  }

  if (*a4)
  {
    v8 = _Block_copy(*a4);
  }

  else
  {
    v8 = 0;
  }

  v9 = *(a4 + 8);
  v10[0] = v8;
  v10[1] = v9;
  if (v9)
  {
    dispatch_retain(v9);
  }

  TelephonyXPC::Server::State::broadcast(v6, &v11, v7, v10);
  if (v9)
  {
    dispatch_release(v9);
  }

  if (v8)
  {
    _Block_release(v8);
  }

  xpc_release(v7);
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }
}

void sub_26D2A4ED8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  dispatch::callback<void({block_pointer})(void)>::~callback(&a9);
  xpc_release(v16);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void TelephonyXPC::Server::State::broadcast(void *a1, uint64_t a2, xpc_object_t object, uint64_t a4)
{
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1174405120;
  v14[2] = ___ZN12TelephonyXPC6Server5State9broadcastENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEN3xpc4dictEN8dispatch8callbackIU13block_pointerFvvEEE_block_invoke;
  v14[3] = &__block_descriptor_tmp_36;
  v14[4] = a1;
  v15 = object;
  if (object)
  {
    xpc_retain(object);
  }

  else
  {
    v15 = xpc_null_create();
  }

  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  v7 = *a4;
  if (*a4)
  {
    v7 = _Block_copy(v7);
  }

  v8 = *(a4 + 8);
  aBlock = v7;
  objecta = v8;
  if (v8)
  {
    dispatch_retain(v8);
  }

  v9 = a1[2];
  if (!v9 || (v10 = a1[1], (v11 = std::__shared_weak_count::lock(v9)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v12 = v11;
  v13 = a1[3];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 1174405120;
  block[2] = ___ZNK3ctu20SharedSynchronizableINS_9XpcServerEE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &__block_descriptor_tmp_37;
  block[5] = v10;
  v20 = v12;
  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  block[4] = v14;
  dispatch_async(v13, block);
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  if (objecta)
  {
    dispatch_release(objecta);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  xpc_release(v15);
}

uint64_t TelephonyXPC::Server::setCommandHandler(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v10, *a2, *(a2 + 8));
  }

  else
  {
    v10 = *a2;
  }

  if (*a3)
  {
    v5 = _Block_copy(*a3);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a3 + 8);
  if (v6)
  {
    dispatch_retain(v6);
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1174405120;
  v11[2] = ___ZN12TelephonyXPC6Server5State17setCommandHandlerENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEN8dispatch8callbackIU13block_pointerFvNS_17ServerClientStateEN3xpc4dictENSA_IU13block_pointerFviSD_EEEEEE_block_invoke;
  v11[3] = &__block_descriptor_tmp_39;
  v11[4] = v4;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v10.__r_.__value_.__l.__data_, v10.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v10;
  }

  if (v5)
  {
    v7 = _Block_copy(v5);
  }

  else
  {
    v7 = 0;
  }

  aBlock = v7;
  object = v6;
  if (v6)
  {
    dispatch_retain(v6);
  }

  v15 = v11;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableINS_9XpcServerEE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  block[3] = &__block_descriptor_tmp_24;
  block[4] = v4 + 8;
  block[5] = &v15;
  v8 = *(v4 + 24);
  if (*(v4 + 32))
  {
    dispatch_async_and_wait(v8, block);
  }

  else
  {
    dispatch_sync(v8, block);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v6)
  {
    dispatch_release(v6);
  }

  if (v5)
  {
    _Block_release(v5);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_26D2A52CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  dispatch::callback<void({block_pointer})(TelephonyXPC::ServerClientState,xpc::dict,dispatch::callback<void({block_pointer})(int,xpc::dict)>)>::~callback(&a9);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *TelephonyXPC::Server::statusToString@<X0>(unsigned int a1@<W0>, void *a2@<X8>)
{
  if (a1 > 3)
  {
    v2 = "Unknown";
  }

  else
  {
    v2 = (&off_279D974B8)[a1];
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v2);
}

const char *TelephonyXPC::Server::asString(unsigned int a1)
{
  if (a1 > 3)
  {
    return "Unknown";
  }

  else
  {
    return (&off_279D974B8)[a1];
  }
}

void *std::string::basic_string[abi:ne200100]<0>(void *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
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
    a1[1] = v5;
    a1[2] = v7 | 0x8000000000000000;
    *a1 = v6;
  }

  else
  {
    *(a1 + 23) = v4;
    v6 = a1;
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  memmove(v6, __s, v5);
LABEL_10:
  *(v6 + v5) = 0;
  return a1;
}

void TelephonyXPC::Server::State::handleServerError_sync(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 72);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = MEMORY[0x26D6B9F30](*a2);
    memset(__p, 170, 24);
    std::string::basic_string[abi:ne200100]<0>(__p, v5);
    free(v5);
    v6 = SHIBYTE(__p[2]) >= 0 ? __p : __p[0];
    *buf = 136315138;
    v18 = v6;
    _os_log_impl(&dword_26D2A2000, v4, OS_LOG_TYPE_DEFAULT, "#I Server error: %s", buf, 0xCu);
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }
  }

  *(a1 + 168) = 3;
  v7 = *(a1 + 176);
  if (v7)
  {
    v8 = _Block_copy(v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = *(a1 + 184);
  __p[0] = MEMORY[0x277D85DD0];
  __p[1] = 1174405120;
  __p[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN12TelephonyXPC6Server12ServerStatusEEEclIJS3_EEEvDpT__block_invoke;
  __p[3] = &__block_descriptor_tmp_29;
  if (v8)
  {
    v10 = _Block_copy(v8);
  }

  else
  {
    v10 = 0;
  }

  aBlock = v10;
  v16 = 3;
  dispatch_async(v9, __p);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v8)
  {
    _Block_release(v8);
  }

  std::string::basic_string[abi:ne200100]<0>(v12, "ServerStateError");
  TelephonyXPC::Server::State::broadcastServerState(a1, v12);
  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void sub_26D2A55C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void TelephonyXPC::Server::State::handleNewClient_sync(uint64_t a1@<X0>, xpc_object_t *a2@<X1>, void **a3@<X8>)
{
  v3 = a2;
  v57 = *MEMORY[0x277D85DE8];
  v46[0] = 0;
  v46[1] = 0;
  v45 = v46;
  v6 = *a2;
  if (*a2)
  {
    xpc_retain(*a2);
  }

  else
  {
    v6 = xpc_null_create();
  }

  if (MEMORY[0x26D6B9FB0](v6) == MEMORY[0x277D86450])
  {
    pid = xpc_connection_get_pid(v6);
    if (getpid() == pid)
    {
      goto LABEL_55;
    }

    *&v10 = 0xAAAAAAAAAAAAAAAALL;
    *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v55 = v10;
    v56 = v10;
    xpc_connection_get_audit_token();
    v52 = 0xAAAAAAAAAAAAAAAALL;
    v11 = xpc_copy_entitlement_for_token();
    v12 = v11;
    v13 = MEMORY[0x277D86468];
    if (v11)
    {
      v52 = v11;
    }

    else
    {
      v12 = xpc_null_create();
      v52 = v12;
      if (!v12)
      {
        v14 = xpc_null_create();
        v12 = 0;
        goto LABEL_20;
      }
    }

    if (MEMORY[0x26D6B9FB0](v12) == v13)
    {
      xpc_retain(v12);
      goto LABEL_21;
    }

    v14 = xpc_null_create();
LABEL_20:
    v52 = v14;
LABEL_21:
    xpc_release(v12);
    if (MEMORY[0x26D6B9FB0](v52) == v13)
    {
      v17 = *(a1 + 152);
      *buf = v17;
      if (v17)
      {
        xpc_retain(v17);
      }

      else
      {
        *buf = xpc_null_create();
      }

      xpc::array::iterator::iterator(&v50, buf, 0);
      xpc_release(*buf);
      v18 = *(a1 + 152);
      *buf = v18;
      if (v18)
      {
        xpc_retain(v18);
      }

      else
      {
        *buf = xpc_null_create();
      }

      if (MEMORY[0x26D6B9FB0](*(a1 + 152)) == MEMORY[0x277D86440])
      {
        count = xpc_array_get_count(*(a1 + 152));
      }

      else
      {
        count = 0;
      }

      v42 = v3;
      xpc::array::iterator::iterator(v49, buf, count);
      xpc_release(*buf);
      v16 = 0;
      v20 = v51;
      v21 = MEMORY[0x277D864B0];
      while (v20 != v49[1] || v50 != v49[0])
      {
        v48[0] = &v50;
        v48[1] = v20;
        memset(buf, 170, 24);
        xpc::array::object_proxy::operator xpc::object(v48, &object);
        xpc::dyn_cast_or_default();
        xpc_release(object);
        v22 = buf[23];
        v23 = buf[23];
        if ((buf[23] & 0x80u) != 0)
        {
          v22 = *&buf[8];
        }

        if (v22)
        {
          v24 = *(a1 + 72);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
          {
            v27 = *buf;
            if (v23 >= 0)
            {
              v27 = buf;
            }

            LODWORD(object) = 136315138;
            *(&object + 4) = v27;
            _os_log_debug_impl(&dword_26D2A2000, v24, OS_LOG_TYPE_DEBUG, "#D Searching for entitlement: %s", &object, 0xCu);
            LOBYTE(v23) = buf[23];
          }

          v47 = 0xAAAAAAAAAAAAAAAALL;
          v25 = buf;
          if ((v23 & 0x80u) != 0)
          {
            v25 = *buf;
          }

          *&object = &v52;
          *(&object + 1) = v25;
          xpc::dict::object_proxy::operator xpc::object(&object, &v47);
          if (MEMORY[0x26D6B9FB0](v47) != v21)
          {
            v26 = MEMORY[0x26D6B9FB0](v47);
            if (v26 == MEMORY[0x277D86448])
            {
              v16 = xpc::dyn_cast_or_default();
              std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(&v45, buf, buf);
            }

            else if (v26 == MEMORY[0x277D86440])
            {
              std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(&v45, buf, buf);
              v16 = 1;
            }
          }

          xpc_release(v47);
          LOBYTE(v23) = buf[23];
        }

        if ((v23 & 0x80) != 0)
        {
          operator delete(*buf);
        }

        v20 = ++v51;
      }

      xpc_release(v49[0]);
      xpc_release(v50);
      v3 = v42;
    }

    else
    {
      v16 = 0;
    }

    xpc_release(v52);
    if ((v16 & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_55:
    v8 = 1;
    goto LABEL_56;
  }

LABEL_5:
  v7 = *(a1 + 72);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    xpc::connection::to_debug_string(&v55, v6);
    v15 = (SBYTE7(v56) & 0x80u) == 0 ? &v55 : v55;
    *buf = 136315138;
    *&buf[4] = v15;
    _os_log_error_impl(&dword_26D2A2000, v7, OS_LOG_TYPE_ERROR, "Connection not allowed:\n %s", buf, 0xCu);
    if (SBYTE7(v56) < 0)
    {
      operator delete(v55);
    }
  }

  v8 = 0;
LABEL_56:
  xpc_release(v6);
  if (v8)
  {
    memset(buf, 170, 16);
    xpc::connection::to_debug_string(&v55, *v3);
    TelephonyXPC::ServerClientState::ServerClientState(buf, &v55);
    if (SBYTE7(v56) < 0)
    {
      operator delete(v55);
    }

    std::set<std::string>::set[abi:ne200100](v44, &v45);
    TelephonyXPC::ServerClientState::setClientEntitlements(buf, v44);
    std::__tree<std::string>::destroy(v44, v44[1]);
    v28 = *(a1 + 72);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      v41 = *v3;
      LODWORD(v55) = 134217984;
      *(&v55 + 4) = v41;
      _os_log_debug_impl(&dword_26D2A2000, v28, OS_LOG_TYPE_DEBUG, "#D New client %p", &v55, 0xCu);
    }

    v29 = *v3;
    v31 = (a1 + 224);
    v30 = *(a1 + 224);
    if (v30)
    {
      while (1)
      {
        while (1)
        {
          v32 = v30;
          v33 = v30[4];
          if (v33 <= v29)
          {
            break;
          }

          v30 = *v32;
          v31 = v32;
          if (!*v32)
          {
            goto LABEL_70;
          }
        }

        if (v33 >= v29)
        {
          break;
        }

        v30 = v32[1];
        if (!v30)
        {
          v31 = v32 + 1;
          goto LABEL_70;
        }
      }

      v34 = v32;
    }

    else
    {
      v32 = (a1 + 224);
LABEL_70:
      v34 = operator new(0x38uLL);
      v34[4] = v29;
      if (v29)
      {
        xpc_retain(v29);
      }

      else
      {
        v34[4] = xpc_null_create();
      }

      v34[5] = 0;
      v34[6] = 0;
      *v34 = 0;
      v34[1] = 0;
      v34[2] = v32;
      *v31 = v34;
      v35 = **(a1 + 216);
      v36 = v34;
      if (v35)
      {
        *(a1 + 216) = v35;
        v36 = *v31;
      }

      std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(a1 + 224), v36);
      ++*(a1 + 232);
    }

    v38 = *buf;
    v37 = *&buf[8];
    if (*&buf[8])
    {
      atomic_fetch_add_explicit((*&buf[8] + 8), 1uLL, memory_order_relaxed);
    }

    v39 = v34[6];
    v34[5] = v38;
    v34[6] = v37;
    if (v39)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v39);
    }

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 0x40000000;
    aBlock[2] = ___ZN12TelephonyXPC6Server5State20handleNewClient_syncEN3xpc10connectionE_block_invoke;
    aBlock[3] = &__block_descriptor_tmp_41;
    aBlock[4] = a1;
    *a3 = _Block_copy(aBlock);
    if (*&buf[8])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
    }
  }

  else
  {
    *a3 = 0;
  }

  std::__tree<std::string>::destroy(&v45, v46[0]);
  v40 = *MEMORY[0x277D85DE8];
}

void sub_26D2A5C70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, xpc_object_t a25, uint64_t a26, uint64_t a27, xpc_object_t a28, uint64_t a29, xpc_object_t object, uint64_t a31, xpc_object_t a32, xpc_object_t a33)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void TelephonyXPC::Server::State::handleClientError_sync(void *a1, xpc_object_t *a2, xpc::object *a3)
{
  v42 = *MEMORY[0x277D85DE8];
  v38 = 0xAAAAAAAAAAAAAAAALL;
  v39 = 0xAAAAAAAAAAAAAAAALL;
  v6 = *a2;
  if (*a2)
  {
    xpc_retain(*a2);
  }

  else
  {
    v6 = xpc_null_create();
  }

  TelephonyXPC::Server::State::getClientState_sync(&v38, a1, v6);
  xpc_release(v6);
  if (!v38)
  {
    goto LABEL_53;
  }

  if (*(v38 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v40, *v38, *(v38 + 8));
  }

  else
  {
    v7 = *v38;
    v40.__r_.__value_.__r.__words[2] = *(v38 + 16);
    *&v40.__r_.__value_.__l.__data_ = v7;
  }

  v8 = std::string::insert(&v40, 0, "Client '", 8uLL);
  v9 = *&v8->__r_.__value_.__l.__data_;
  v41.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v41.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  v10 = std::string::append(&v41, "' ", 2uLL);
  v11 = *&v10->__r_.__value_.__l.__data_;
  v37 = v10->__r_.__value_.__r.__words[2];
  *__p = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }

  v12 = *a3;
  if (*a3 != MEMORY[0x277D863F8])
  {
    if (v12 == MEMORY[0x277D863F0])
    {
      v14 = a1[9];
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_51;
      }

      v29 = __p;
      if (v37 < 0)
      {
        v29 = __p[0];
      }

      LODWORD(v41.__r_.__value_.__l.__data_) = 136315138;
      *(v41.__r_.__value_.__r.__words + 4) = v29;
      v30 = "#D %s connection interrupted";
    }

    else
    {
      v13 = MEMORY[0x277D86420];
      v14 = a1[9];
      v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG);
      if (v12 != v13)
      {
        if (!v15)
        {
          goto LABEL_51;
        }

        xpc::object::to_string(&v41, a3);
        v16 = __p;
        if (v37 < 0)
        {
          v16 = __p[0];
        }

        v17 = (v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v41 : v41.__r_.__value_.__r.__words[0];
        LODWORD(v40.__r_.__value_.__l.__data_) = 136315394;
        *(v40.__r_.__value_.__r.__words + 4) = v16;
        WORD2(v40.__r_.__value_.__r.__words[1]) = 2080;
        *(&v40.__r_.__value_.__r.__words[1] + 6) = v17;
        _os_log_debug_impl(&dword_26D2A2000, v14, OS_LOG_TYPE_DEBUG, "#D %s %s", &v40, 0x16u);
        if ((SHIBYTE(v41.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_51;
        }

        v18 = v41.__r_.__value_.__r.__words[0];
        goto LABEL_50;
      }

      if (!v15)
      {
        goto LABEL_51;
      }

      v31 = __p;
      if (v37 < 0)
      {
        v31 = __p[0];
      }

      LODWORD(v41.__r_.__value_.__l.__data_) = 136315138;
      *(v41.__r_.__value_.__r.__words + 4) = v31;
      v30 = "#D %s will be terminated";
    }

    _os_log_debug_impl(&dword_26D2A2000, v14, OS_LOG_TYPE_DEBUG, v30, &v41, 0xCu);
    goto LABEL_51;
  }

  v19 = a1[9];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    v35 = __p;
    if (v37 < 0)
    {
      v35 = __p[0];
    }

    LODWORD(v41.__r_.__value_.__l.__data_) = 136315138;
    *(v41.__r_.__value_.__r.__words + 4) = v35;
    _os_log_debug_impl(&dword_26D2A2000, v19, OS_LOG_TYPE_DEBUG, "#D %s disappeared", &v41, 0xCu);
  }

  v20 = a1[28];
  if (!v20)
  {
    goto LABEL_51;
  }

  v21 = *a2;
  v22 = a1 + 28;
  v23 = a1[28];
  do
  {
    v24 = v23[4];
    v25 = v24 >= v21;
    v26 = v24 < v21;
    if (v25)
    {
      v22 = v23;
    }

    v23 = v23[v26];
  }

  while (v23);
  if (v22 == a1 + 28 || v22[4] > v21)
  {
    goto LABEL_51;
  }

  v27 = v22[1];
  if (v27)
  {
    do
    {
      v28 = v27;
      v27 = *v27;
    }

    while (v27);
  }

  else
  {
    v32 = v22;
    do
    {
      v28 = v32[2];
      v33 = *v28 == v32;
      v32 = v28;
    }

    while (!v33);
  }

  if (a1[27] == v22)
  {
    a1[27] = v28;
  }

  --a1[29];
  std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v20, v22);
  std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<xpc::connection,TelephonyXPC::ServerClientState>,void *>>>::destroy[abi:ne200100]<std::pair<xpc::connection const,TelephonyXPC::ServerClientState>,void,0>((v22 + 4));
  v18 = v22;
LABEL_50:
  operator delete(v18);
LABEL_51:
  if (SHIBYTE(v37) < 0)
  {
    operator delete(__p[0]);
  }

LABEL_53:
  if (v39)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v39);
  }

  v34 = *MEMORY[0x277D85DE8];
}

void sub_26D2A61A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

xpc_object_t xpc::dict::object_proxy::operator xpc::object@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  value = xpc_dictionary_get_value(**a1, *(a1 + 8));
  *a2 = value;
  if (value)
  {
    return xpc_retain(value);
  }

  result = xpc_null_create();
  *a2 = result;
  return result;
}

void xpc::dict::object_proxy::operator xpc::array(uint64_t a1@<X0>, void *a2@<X8>)
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

  if (MEMORY[0x26D6B9FB0](v4) != MEMORY[0x277D86440])
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

std::string *TelephonyXPC::Server::State::Parameters::Parameters(std::string *this, const TelephonyXPC::Server::State::Parameters *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    this[1].__r_.__value_.__r.__words[2] = *(a2 + 5);
    *&this[1].__r_.__value_.__l.__data_ = v5;
  }

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
  this[3].__r_.__value_.__r.__words[0] = v7;
  if (v7)
  {
    xpc_retain(v7);
  }

  else
  {
    this[3].__r_.__value_.__r.__words[0] = xpc_null_create();
  }

  LOWORD(this[3].__r_.__value_.__r.__words[1]) = *(a2 + 40);
  return this;
}

void sub_26D2A63C0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<TelephonyXPC::Server::State *,std::shared_ptr<TelephonyXPC::Server::State>::__shared_ptr_default_delete<TelephonyXPC::Server::State,TelephonyXPC::Server::State>,std::allocator<TelephonyXPC::Server::State>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<TelephonyXPC::Server::State *,std::shared_ptr<TelephonyXPC::Server::State>::__shared_ptr_default_delete<TelephonyXPC::Server::State,TelephonyXPC::Server::State>,std::allocator<TelephonyXPC::Server::State>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 32))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<TelephonyXPC::Server::State *,std::shared_ptr<TelephonyXPC::Server::State>::__shared_ptr_default_delete<TelephonyXPC::Server::State,TelephonyXPC::Server::State>,std::allocator<TelephonyXPC::Server::State>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void ___ZN12TelephonyXPC6Server5State4initEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 161) == 1)
  {
    *(v1 + 208) = dispatch_source_create(MEMORY[0x277D85D30], 0xFuLL, 0, *(v1 + 24));
    v2 = *(v1 + 16);
    if (!v2 || (v3 = *(v1 + 8), (v4 = std::__shared_weak_count::lock(v2)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v5 = v4;
    p_shared_weak_owners = &v4->__shared_weak_owners_;
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    v7 = *(v1 + 208);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 1174405120;
    handler[2] = ___ZN12TelephonyXPC6Server5State4initEv_block_invoke_2;
    handler[3] = &__block_descriptor_tmp_0;
    handler[4] = v1;
    handler[5] = v3;
    v17 = v5;
    atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
    dispatch_source_set_event_handler(v7, handler);
    dispatch_activate(*(v1 + 208));
    signal(15, 1);
    if (v17)
    {
      std::__shared_weak_count::__release_weak(v17);
    }

    std::__shared_weak_count::__release_weak(v5);
  }

  if (*(v1 + 160) == 1)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 0x40000000;
    aBlock[2] = ___ZN12TelephonyXPC6Server5State4initEv_block_invoke_18;
    aBlock[3] = &__block_descriptor_tmp_22;
    aBlock[4] = v1;
    v8 = _Block_copy(aBlock);
    v9 = *(v1 + 24);
    if (v9)
    {
      dispatch_retain(*(v1 + 24));
    }

    v14[0] = v8;
    v14[1] = v9;
    TelephonyXPC::ServerPowerObserver::create(v14, buf);
    v10 = *buf;
    memset(buf, 0, sizeof(buf));
    v11 = *(v1 + 200);
    *(v1 + 192) = v10;
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      if (*&buf[8])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
      }
    }

    if (v9)
    {
      dispatch_release(v9);
    }

    if (v8)
    {
      _Block_release(v8);
    }

    v12 = *(v1 + 72);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_26D2A2000, v12, OS_LOG_TYPE_DEBUG, "#D Server power observer enabled", buf, 2u);
    }
  }
}

void ___ZN12TelephonyXPC6Server5State4initEv_block_invoke_2(void *a1)
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
        v6 = *(v3 + 72);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v14[0]) = 0;
          _os_log_impl(&dword_26D2A2000, v6, OS_LOG_TYPE_DEFAULT, "#I SIGTERM received", v14, 2u);
        }

        v7 = *(v3 + 16);
        if (!v7 || (v8 = *(v3 + 8), (v9 = std::__shared_weak_count::lock(v7)) == 0))
        {
          std::__throw_bad_weak_ptr[abi:ne200100]();
        }

        v10 = v9;
        p_shared_weak_owners = &v9->__shared_weak_owners_;
        atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
        std::string::basic_string[abi:ne200100]<0>(__p, "EventServerSIGTERM");
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 1174405120;
        v14[2] = ___ZN12TelephonyXPC6Server5State13handleSIGTERMEv_block_invoke;
        v14[3] = &__block_descriptor_tmp_28;
        v14[4] = v3;
        v14[5] = v8;
        v15 = v10;
        atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
        v12 = _Block_copy(v14);
        v13 = *(v3 + 24);
        if (v13)
        {
          dispatch_retain(*(v3 + 24));
        }

        v16[0] = v12;
        v16[1] = v13;
        TelephonyXPC::Server::State::broadcast(v3, __p, v16);
        if (v13)
        {
          dispatch_release(v13);
        }

        if (v12)
        {
          _Block_release(v12);
        }

        if (v18 < 0)
        {
          operator delete(__p[0]);
        }

        if (v15)
        {
          std::__shared_weak_count::__release_weak(v15);
        }

        std::__shared_weak_count::__release_weak(v10);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }
}

void sub_26D2A68D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  dispatch::callback<void({block_pointer})(void)>::~callback(&a16);
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
  }

  if (a23 < 0)
  {
    operator delete(__p);
  }

  std::__shared_weak_count::__release_weak(v24);
  std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_40c39_ZTSNSt3__18weak_ptrIN3ctu9XpcServerEEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c39_ZTSNSt3__18weak_ptrIN3ctu9XpcServerEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZN12TelephonyXPC6Server5State4initEv_block_invoke_18(uint64_t a1, int a2, unsigned int a3, NSObject **a4)
{
  v28 = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 32);
  memset(&v25, 0, sizeof(v25));
  v8 = *(v7 + 72);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    if (a3 > 2)
    {
      v9 = "Unknown";
    }

    else
    {
      v9 = (&off_279D97480)[a3];
    }

    *buf = 136315138;
    v27 = v9;
    _os_log_impl(&dword_26D2A2000, v8, OS_LOG_TYPE_DEFAULT, "#I Power state: %s", buf, 0xCu);
  }

  if (a2 > 1)
  {
    if (a2 == 2)
    {
      v10 = "EventSystemEnteringLowPower";
      v11 = 27;
    }

    else
    {
      if (a2 != 3)
      {
        goto LABEL_19;
      }

      v10 = "EventSystemExitingLowPower";
      v11 = 26;
    }

    goto LABEL_16;
  }

  if (a2)
  {
    if (a2 != 1)
    {
      goto LABEL_19;
    }

    v10 = "EventSystemShuttingDown";
    v11 = 23;
LABEL_16:
    std::string::__assign_external(&v25, v10, v11);
    goto LABEL_19;
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    v25.__r_.__value_.__l.__size_ = 20;
    v12 = v25.__r_.__value_.__r.__words[0];
  }

  else
  {
    *(&v25.__r_.__value_.__s + 23) = 20;
    v12 = &v25;
  }

  strcpy(v12, "EventSystemPoweredOn");
LABEL_19:
  size = HIBYTE(v25.__r_.__value_.__r.__words[2]);
  v14 = HIBYTE(v25.__r_.__value_.__r.__words[2]);
  if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v25.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    v15 = *(v7 + 72);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      if (a2 > 3)
      {
        v16 = "Unknown";
      }

      else
      {
        v16 = (&off_279D97498)[a2];
      }

      *buf = 136315138;
      v27 = v16;
      _os_log_impl(&dword_26D2A2000, v15, OS_LOG_TYPE_DEFAULT, "#I Sending server power event: %s", buf, 0xCu);
      v14 = HIBYTE(v25.__r_.__value_.__r.__words[2]);
    }

    if (v14 < 0)
    {
      std::string::__init_copy_ctor_external(&v24, v25.__r_.__value_.__l.__data_, v25.__r_.__value_.__l.__size_);
    }

    else
    {
      v24 = v25;
    }

    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1174405120;
    aBlock[2] = ___ZN12TelephonyXPC6Server5State4initEv_block_invoke_19;
    aBlock[3] = &__block_descriptor_tmp_20_0;
    v17 = *a4;
    group = v17;
    if (v17)
    {
      dispatch_retain(v17);
      dispatch_group_enter(group);
    }

    v18 = _Block_copy(aBlock);
    v19 = *(v7 + 24);
    if (v19)
    {
      dispatch_retain(*(v7 + 24));
    }

    v23[0] = v18;
    v23[1] = v19;
    TelephonyXPC::Server::State::broadcast(v7, &v24, v23);
    if (v19)
    {
      dispatch_release(v19);
    }

    if (v18)
    {
      _Block_release(v18);
    }

    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
    }

    if (group)
    {
      dispatch_group_leave(group);
      if (group)
      {
        dispatch_release(group);
      }
    }
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  v20 = *MEMORY[0x277D85DE8];
}

void sub_26D2A6C54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, dispatch_group_t group, char a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void __copy_helper_block_e8_32c30_ZTSN8dispatch13group_sessionE(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  *(a1 + 32) = v3;
  if (v3)
  {
    dispatch_retain(v3);
    v4 = *(a1 + 32);
    if (v4)
    {

      dispatch_group_enter(v4);
    }
  }
}

void __destroy_helper_block_e8_32c30_ZTSN8dispatch13group_sessionE(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = *(a1 + 32);
    if (v3)
    {

      dispatch_release(v3);
    }
  }
}

void ___ZN12TelephonyXPC6Server5State13handleSIGTERMEv_block_invoke(void *a1)
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
        v6 = *(v3 + 176);
        if (v6)
        {
          v7 = _Block_copy(v6);
        }

        else
        {
          v7 = 0;
        }

        v8 = *(v3 + 184);
        v10[0] = MEMORY[0x277D85DD0];
        v10[1] = 1174405120;
        v10[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN12TelephonyXPC6Server12ServerStatusEEEclIJS3_EEEvDpT__block_invoke;
        v10[3] = &__block_descriptor_tmp_29;
        if (v7)
        {
          v9 = _Block_copy(v7);
        }

        else
        {
          v9 = 0;
        }

        aBlock = v9;
        v12 = 2;
        dispatch_async(v8, v10);
        if (aBlock)
        {
          _Block_release(aBlock);
        }

        if (v7)
        {
          _Block_release(v7);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }
}

void *__copy_helper_block_e8_32c79_ZTSN8dispatch5blockIU13block_pointerFvN12TelephonyXPC6Server12ServerStatusEEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 32) = result;
  return result;
}

void __destroy_helper_block_e8_32c79_ZTSN8dispatch5blockIU13block_pointerFvN12TelephonyXPC6Server12ServerStatusEEEE(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    _Block_release(v1);
  }
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s, std::string::size_type __n)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) == 0)
  {
    v7 = 22;
LABEL_5:
    std::string::__grow_by_and_replace(this, v7, __n - v7, size, 0, size, __n, __s);
    return this;
  }

  v7 = (this->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v7 < __n)
  {
    size = this->__r_.__value_.__l.__size_;
    goto LABEL_5;
  }

  v9 = this->__r_.__value_.__r.__words[0];
  memmove(this->__r_.__value_.__l.__data_, __s, __n);
  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    this->__r_.__value_.__l.__size_ = __n;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = __n & 0x7F;
  }

  *(v9 + __n) = 0;
  return this;
}

void ___ZN12TelephonyXPC6Server5State5startEv_block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if (!*(v1 + 168))
  {
    ctu::XpcServer::startListener_sync(*(a1 + 32));
    v2 = (v1 + 104);
    if (*(v1 + 127) < 0)
    {
      v2 = *v2;
    }

    v3 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], v2, 0x600u);
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, v3, 0, 0, 1u);
    CFRelease(v3);
    *(v1 + 168) = 1;
    v5 = *(v1 + 176);
    if (v5)
    {
      v6 = _Block_copy(v5);
    }

    else
    {
      v6 = 0;
    }

    v7 = *(v1 + 184);
    __p[0] = MEMORY[0x277D85DD0];
    __p[1] = 1174405120;
    v14 = ___ZNK8dispatch8callbackIU13block_pointerFvN12TelephonyXPC6Server12ServerStatusEEEclIJS3_EEEvDpT__block_invoke;
    v15 = &__block_descriptor_tmp_29;
    if (v6)
    {
      v8 = _Block_copy(v6);
    }

    else
    {
      v8 = 0;
    }

    aBlock = v8;
    v17 = 1;
    dispatch_async(v7, __p);
    if (aBlock)
    {
      _Block_release(aBlock);
    }

    if (v6)
    {
      _Block_release(v6);
    }

    std::string::basic_string[abi:ne200100]<0>(__p, "ServerStateStarted");
    TelephonyXPC::Server::State::broadcastServerState(v1, __p);
    if (SHIBYTE(v14) < 0)
    {
      operator delete(__p[0]);
    }

    v9 = *(v1 + 72);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(v1 + 168);
      if (v10 > 3)
      {
        v11 = "Unknown";
      }

      else
      {
        v11 = (&off_279D974B8)[v10];
      }

      *buf = 136315138;
      v19 = v11;
      _os_log_impl(&dword_26D2A2000, v9, OS_LOG_TYPE_DEFAULT, "#I %s", buf, 0xCu);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

void sub_26D2A7194(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void TelephonyXPC::Server::State::broadcastServerState(void *a1, const char *a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  if (v4 || (v4 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x26D6B9FB0](v4) == MEMORY[0x277D86468])
    {
      xpc_retain(v4);
      v5 = v4;
    }

    else
    {
      v5 = xpc_null_create();
    }
  }

  else
  {
    v5 = xpc_null_create();
    v4 = 0;
  }

  xpc_release(v4);
  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  object = xpc_string_create(a2);
  if (!object)
  {
    object = xpc_null_create();
  }

  xpc::dict::object_proxy::operator=(&v12, v5, "KeyServerState", &object);
  xpc_release(v12);
  v12 = 0;
  xpc_release(object);
  object = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, "EventServerStateChange");
  if (v5)
  {
    xpc_retain(v5);
    v6 = v5;
  }

  else
  {
    v6 = xpc_null_create();
  }

  aBlock = 0;
  v8 = 0;
  TelephonyXPC::Server::State::broadcast(a1, __p, v6, &aBlock);
  if (v8)
  {
    dispatch_release(v8);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  xpc_release(v6);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  xpc_release(v5);
}

void sub_26D2A7358(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  dispatch::callback<void({block_pointer})(void)>::~callback(&a10);
  xpc_release(v18);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v17);
  _Unwind_Resume(a1);
}

xpc_object_t xpc::dict::object_proxy::operator=(xpc_object_t *a1, xpc_object_t xdict, char *key, xpc_object_t *a4)
{
  xpc_dictionary_set_value(xdict, key, *a4);
  *a1 = *a4;
  result = xpc_null_create();
  *a4 = result;
  return result;
}

{
  xpc_dictionary_set_value(xdict, key, *a4);
  *a1 = *a4;
  result = xpc_null_create();
  *a4 = result;
  return result;
}

void ___ZN12TelephonyXPC6Server5State9broadcastENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEN3xpc4dictEN8dispatch8callbackIU13block_pointerFvvEEE_block_invoke(uint64_t a1)
{
  v66 = *MEMORY[0x277D85DE8];
  v33 = *(a1 + 32);
  v2 = xpc_dictionary_create(0, 0, 0);
  v3 = MEMORY[0x277D86468];
  if (v2 || (v2 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x26D6B9FB0](v2) == v3)
    {
      xpc_retain(v2);
      message = v2;
    }

    else
    {
      message = xpc_null_create();
    }
  }

  else
  {
    message = xpc_null_create();
    v2 = 0;
  }

  xpc_release(v2);
  v4 = MEMORY[0x26D6B9FB0](*(a1 + 40)) == v3;
  v5 = v33;
  if (v4)
  {
    v6 = *(a1 + 40);
    v58 = v6;
    if (v6)
    {
      xpc_retain(v6);
    }

    else
    {
      v58 = xpc_null_create();
    }

    xpc::dict::object_proxy::operator=(&v59, message, "eventData", &v58);
    xpc_release(v59);
    v59 = 0;
    xpc_release(v58);
    v58 = 0;
  }

  v56 = xpc_string_create("eventNotification");
  if (!v56)
  {
    v56 = xpc_null_create();
  }

  xpc::dict::object_proxy::operator=(&v57, message, "command", &v56);
  xpc_release(v57);
  v57 = 0;
  xpc_release(v56);
  v56 = 0;
  v7 = (a1 + 48);
  v8 = (a1 + 48);
  if (*(a1 + 71) < 0)
  {
    v8 = *v7;
  }

  v54 = xpc_string_create(v8);
  if (!v54)
  {
    v54 = xpc_null_create();
  }

  xpc::dict::object_proxy::operator=(&v55, message, "event", &v54);
  xpc_release(v55);
  v55 = 0;
  xpc_release(v54);
  v54 = 0;
  group = dispatch_group_create();
  v9 = v33[2];
  if (!v9 || (v31 = v33[1], (v10 = std::__shared_weak_count::lock(v9)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v32 = v10;
  std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  v11 = v33[27];
  if (v11 != v33 + 28)
  {
    do
    {
      v52 = 0xAAAAAAAAAAAAAAAALL;
      v53 = 0xAAAAAAAAAAAAAAAALL;
      v12 = v11[4];
      v51 = v12;
      if (v12)
      {
        xpc_retain(v12);
      }

      else
      {
        v12 = xpc_null_create();
        v51 = v12;
      }

      v13 = v11[5];
      v14 = v11[6];
      v52 = v13;
      v53 = v14;
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v12)
      {
        xpc_retain(v12);
      }

      else
      {
        v12 = xpc_null_create();
      }

      v50[0] = v13;
      v50[1] = v14;
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (*(a1 + 71) < 0)
      {
        std::string::__init_copy_ctor_external(&v49, *(a1 + 48), *(a1 + 56));
      }

      else
      {
        *&v49.__r_.__value_.__l.__data_ = *v7;
        v49.__r_.__value_.__r.__words[2] = *(a1 + 64);
      }

      v15 = *(a1 + 40);
      v48 = v15;
      if (v15)
      {
        xpc_retain(v15);
      }

      else
      {
        v15 = xpc_null_create();
        v48 = v15;
      }

      isNotificationRegistered_sync = TelephonyXPC::ServerClientState::isNotificationRegistered_sync(v50, &v49, &v48);
      xpc_release(v15);
      v48 = 0;
      if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v49.__r_.__value_.__l.__data_);
        if (isNotificationRegistered_sync)
        {
LABEL_42:
          v17 = v5[9];
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            v18 = (a1 + 48);
            if (*(a1 + 71) < 0)
            {
              v18 = *v7;
            }

            if (*(v13 + 23) < 0)
            {
              std::string::__init_copy_ctor_external(&v47, *v13, *(v13 + 8));
            }

            else
            {
              v19 = *v13;
              v47.__r_.__value_.__r.__words[2] = *(v13 + 16);
              *&v47.__r_.__value_.__l.__data_ = v19;
            }

            v20 = SHIBYTE(v47.__r_.__value_.__r.__words[2]);
            v21 = v47.__r_.__value_.__r.__words[0];
            SystemTime = TelephonyUtilGetSystemTime();
            *buf = 136315650;
            v23 = &v47;
            if (v20 < 0)
            {
              v23 = v21;
            }

            v61 = v18;
            v62 = 2080;
            v63 = v23;
            v64 = 2048;
            v65 = SystemTime;
            _os_log_impl(&dword_26D2A2000, v17, OS_LOG_TYPE_DEFAULT, "#I Sending %s to %s at %llu", buf, 0x20u);
            if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v47.__r_.__value_.__l.__data_);
            }

            v5 = v33;
          }

          if (*(a1 + 72) && *(a1 + 80))
          {
            dispatch_group_enter(group);
            v24 = v5[3];
            handler[0] = MEMORY[0x277D85DD0];
            handler[1] = 1174405120;
            handler[2] = ___ZN12TelephonyXPC6Server5State9broadcastENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEN3xpc4dictEN8dispatch8callbackIU13block_pointerFvvEEE_block_invoke_31;
            handler[3] = &__block_descriptor_tmp_33;
            handler[4] = v5;
            handler[5] = v31;
            v42 = v32;
            atomic_fetch_add_explicit(&v32->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            v43 = v13;
            v44 = v14;
            if (v14)
            {
              atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (*(a1 + 71) < 0)
            {
              std::string::__init_copy_ctor_external(&__p, *(a1 + 48), *(a1 + 56));
            }

            else
            {
              *&__p.__r_.__value_.__l.__data_ = *v7;
              __p.__r_.__value_.__r.__words[2] = *(a1 + 64);
            }

            v46 = group;
            xpc_connection_send_message_with_reply(v12, message, v24, handler);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            if (v44)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v44);
            }

            if (v42)
            {
              std::__shared_weak_count::__release_weak(v42);
            }
          }

          else
          {
            xpc_connection_send_message(v12, message);
          }
        }
      }

      else if (isNotificationRegistered_sync)
      {
        goto LABEL_42;
      }

      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      }

      xpc_release(v12);
      if (v53)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v53);
      }

      xpc_release(v51);
      v25 = v11[1];
      if (v25)
      {
        do
        {
          v26 = v25;
          v25 = *v25;
        }

        while (v25);
      }

      else
      {
        do
        {
          v26 = v11[2];
          v4 = *v26 == v11;
          v11 = v26;
        }

        while (!v4);
      }

      v11 = v26;
    }

    while (v26 != v33 + 28);
  }

  if (*(a1 + 72) && *(a1 + 80))
  {
    v27 = v5[3];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 1174405120;
    block[2] = ___ZN12TelephonyXPC6Server5State9broadcastENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEN3xpc4dictEN8dispatch8callbackIU13block_pointerFvvEEE_block_invoke_34;
    block[3] = &__block_descriptor_tmp_35;
    block[4] = v5;
    block[5] = v31;
    v37 = v32;
    atomic_fetch_add_explicit(&v32->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    if (*(a1 + 71) < 0)
    {
      std::string::__init_copy_ctor_external(&v38, *(a1 + 48), *(a1 + 56));
    }

    else
    {
      *&v38.__r_.__value_.__l.__data_ = *v7;
      v38.__r_.__value_.__r.__words[2] = *(a1 + 64);
    }

    v28 = *(a1 + 72);
    if (v28)
    {
      v28 = _Block_copy(v28);
    }

    v29 = *(a1 + 80);
    aBlock = v28;
    object = v29;
    if (v29)
    {
      dispatch_retain(v29);
    }

    dispatch_group_notify(group, v27, block);
    if (object)
    {
      dispatch_release(object);
    }

    if (aBlock)
    {
      _Block_release(aBlock);
    }

    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v38.__r_.__value_.__l.__data_);
    }

    if (v37)
    {
      std::__shared_weak_count::__release_weak(v37);
    }
  }

  dispatch_release(group);
  std::__shared_weak_count::__release_weak(v32);
  xpc_release(message);
  v30 = *MEMORY[0x277D85DE8];
}

void sub_26D2A7AB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, xpc_object_t object, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, std::__shared_weak_count *a36, uint64_t a37, uint64_t a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, int a55, __int16 a56, char a57, char a58)
{
  if (a24)
  {
    std::__shared_weak_count::__release_weak(a24);
  }

  std::__shared_weak_count::__release_weak(a13);
  xpc_release(object);
  _Unwind_Resume(a1);
}

void ___ZN12TelephonyXPC6Server5State9broadcastENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEN3xpc4dictEN8dispatch8callbackIU13block_pointerFvvEEE_block_invoke_31(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  if (v2 && (v3 = *(a1 + 32), (v4 = std::__shared_weak_count::lock(v2)) != 0))
  {
    v5 = v4;
    if (*(a1 + 40))
    {
      v6 = *(v3 + 72);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 56);
        if (*(v7 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, *v7, *(v7 + 1));
        }

        else
        {
          v8 = *v7;
          __p.__r_.__value_.__r.__words[2] = *(v7 + 2);
          *&__p.__r_.__value_.__l.__data_ = v8;
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        v12 = (a1 + 72);
        if (*(a1 + 95) < 0)
        {
          v12 = *v12;
        }

        SystemTime = TelephonyUtilGetSystemTime();
        *buf = 136315650;
        v17 = p_p;
        v18 = 2080;
        v19 = v12;
        v20 = 2048;
        v21 = SystemTime;
        _os_log_impl(&dword_26D2A2000, v6, OS_LOG_TYPE_DEFAULT, "#I %s responded to %s at %llu", buf, 0x20u);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }
    }

    dispatch_group_leave(*(a1 + 96));
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    v14 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v9 = *(a1 + 96);
    v10 = *MEMORY[0x277D85DE8];

    dispatch_group_leave(v9);
  }
}

void __copy_helper_block_e8_40c39_ZTSNSt3__18weak_ptrIN3ctu9XpcServerEEE56c39_ZTSN12TelephonyXPC17ServerClientStateE72c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(std::string *a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  a1[1].__r_.__value_.__r.__words[2] = *(a2 + 40);
  a1[2].__r_.__value_.__r.__words[0] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v3 = *(a2 + 64);
  a1[2].__r_.__value_.__l.__size_ = *(a2 + 56);
  a1[2].__r_.__value_.__r.__words[2] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 95) < 0)
  {
    std::string::__init_copy_ctor_external(a1 + 3, *(a2 + 72), *(a2 + 80));
  }

  else
  {
    v4 = *(a2 + 72);
    a1[3].__r_.__value_.__r.__words[2] = *(a2 + 88);
    *&a1[3].__r_.__value_.__l.__data_ = v4;
  }
}

void sub_26D2A7E90(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 64);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(v1 + 48);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_40c39_ZTSNSt3__18weak_ptrIN3ctu9XpcServerEEE56c39_ZTSN12TelephonyXPC17ServerClientStateE72c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1)
{
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  v2 = *(a1 + 64);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void ___ZN12TelephonyXPC6Server5State9broadcastENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEN3xpc4dictEN8dispatch8callbackIU13block_pointerFvvEEE_block_invoke_34(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      if (*(a1 + 40))
      {
        v5 = *(v3 + 72);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          v6 = (a1 + 56);
          if (*(a1 + 79) < 0)
          {
            v6 = *v6;
          }

          LODWORD(v12) = 136315138;
          *(&v12 + 4) = v6;
          _os_log_impl(&dword_26D2A2000, v5, OS_LOG_TYPE_DEFAULT, "#I All clients responded to %s", &v12, 0xCu);
        }
      }
    }
  }

  else
  {
    v4 = 0;
  }

  v7 = *(a1 + 80);
  if (v7)
  {
    v8 = _Block_copy(v7);
  }

  else
  {
    v8 = 0;
  }

  v9 = *(a1 + 88);
  *&v12 = MEMORY[0x277D85DD0];
  *(&v12 + 1) = 1174405120;
  v13 = ___ZNK8dispatch8callbackIU13block_pointerFvvEEclIJEEEvDpT__block_invoke;
  v14 = &__block_descriptor_tmp_38;
  if (v8)
  {
    v10 = _Block_copy(v8);
  }

  else
  {
    v10 = 0;
  }

  aBlock = v10;
  dispatch_async(v9, &v12);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v8)
  {
    _Block_release(v8);
  }

  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void sub_26D2A8098(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void __copy_helper_block_e8_40c39_ZTSNSt3__18weak_ptrIN3ctu9XpcServerEEE56c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE80c46_ZTSN8dispatch8callbackIU13block_pointerFvvEEE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 79) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 56), *(a2 + 56), *(a2 + 64));
  }

  else
  {
    v5 = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 56) = v5;
  }

  v6 = *(a2 + 80);
  if (v6)
  {
    v6 = _Block_copy(v6);
  }

  v7 = *(a2 + 88);
  *(a1 + 80) = v6;
  *(a1 + 88) = v7;
  if (v7)
  {

    dispatch_retain(v7);
  }
}

void sub_26D2A8154(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_40c39_ZTSNSt3__18weak_ptrIN3ctu9XpcServerEEE56c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE80c46_ZTSN8dispatch8callbackIU13block_pointerFvvEEE(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 80);
  if (v3)
  {
    _Block_release(v3);
  }

  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  v4 = *(a1 + 48);
  if (v4)
  {

    std::__shared_weak_count::__release_weak(v4);
  }
}

void __copy_helper_block_e8_40c15_ZTSN3xpc4dictE48c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE72c46_ZTSN8dispatch8callbackIU13block_pointerFvvEEE(std::string *a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  a1[1].__r_.__value_.__r.__words[2] = v4;
  if (v4)
  {
    xpc_retain(v4);
  }

  else
  {
    a1[1].__r_.__value_.__r.__words[2] = xpc_null_create();
  }

  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(a1 + 2, *(a2 + 48), *(a2 + 56));
  }

  else
  {
    v5 = *(a2 + 48);
    a1[2].__r_.__value_.__r.__words[2] = *(a2 + 64);
    *&a1[2].__r_.__value_.__l.__data_ = v5;
  }

  v6 = *(a2 + 72);
  if (v6)
  {
    v6 = _Block_copy(v6);
  }

  v7 = *(a2 + 80);
  a1[3].__r_.__value_.__r.__words[0] = v6;
  a1[3].__r_.__value_.__l.__size_ = v7;
  if (v7)
  {

    dispatch_retain(v7);
  }
}

void __destroy_helper_block_e8_40c15_ZTSN3xpc4dictE48c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE72c46_ZTSN8dispatch8callbackIU13block_pointerFvvEEE(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 72);
  if (v3)
  {
    _Block_release(v3);
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  xpc_release(*(a1 + 40));
  *(a1 + 40) = 0;
}

void __copy_helper_block_e8_32b40c43_ZTSNSt3__110shared_ptrIKN3ctu9XpcServerEEE(void *a1, uint64_t a2)
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

void __destroy_helper_block_e8_32b40c43_ZTSNSt3__110shared_ptrIKN3ctu9XpcServerEEE(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 32);

  _Block_object_dispose(v3, 7);
}

uint64_t std::pair<xpc::connection const,TelephonyXPC::ServerClientState>::~pair(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  xpc_release(*a1);
  *a1 = 0;
  return a1;
}

void *__copy_helper_block_e8_32c43_ZTSN8dispatch5blockIU13block_pointerFvvEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 32) = result;
  return result;
}

void __destroy_helper_block_e8_32c43_ZTSN8dispatch5blockIU13block_pointerFvvEEE(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    _Block_release(v1);
  }
}

void ___ZN12TelephonyXPC6Server5State17setCommandHandlerENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEN8dispatch8callbackIU13block_pointerFvNS_17ServerClientStateEN3xpc4dictENSA_IU13block_pointerFviSD_EEEEEE_block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = *(v2 + 72);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = (a1 + 40);
    if (*(a1 + 63) < 0)
    {
      v4 = *v4;
    }

    v17 = 136315138;
    v18 = v4;
    _os_log_impl(&dword_26D2A2000, v3, OS_LOG_TYPE_DEFAULT, "#I Registered command %s", &v17, 0xCu);
  }

  v6 = (v2 + 248);
  v5 = *(v2 + 248);
  if (!v5)
  {
    v7 = (v2 + 248);
LABEL_13:
    v8 = operator new(0x48uLL);
    v9 = v8;
    if (*(a1 + 63) < 0)
    {
      std::string::__init_copy_ctor_external((v8 + 32), *(a1 + 40), *(a1 + 48));
    }

    else
    {
      *(v8 + 2) = *(a1 + 40);
      *(v8 + 6) = *(a1 + 56);
    }

    v9[7] = 0;
    v9[8] = 0;
    *v9 = 0;
    v9[1] = 0;
    v9[2] = v7;
    *v6 = v9;
    v10 = **(v2 + 240);
    v11 = v9;
    if (v10)
    {
      *(v2 + 240) = v10;
      v11 = *v6;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v2 + 248), v11);
    ++*(v2 + 256);
    goto LABEL_19;
  }

  while (1)
  {
    while (1)
    {
      v7 = v5;
      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a1 + 40), v5 + 4) & 0x80) == 0)
      {
        break;
      }

      v5 = *v7;
      v6 = v7;
      if (!*v7)
      {
        goto LABEL_13;
      }
    }

    if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v7 + 4, (a1 + 40)) & 0x80) == 0)
    {
      break;
    }

    v6 = v7 + 1;
    v5 = v7[1];
    if (!v5)
    {
      goto LABEL_13;
    }
  }

  v9 = *v6;
  if (!*v6)
  {
    goto LABEL_13;
  }

LABEL_19:
  v12 = *(a1 + 64);
  if (v12)
  {
    v12 = _Block_copy(v12);
  }

  v13 = v9[7];
  v9[7] = v12;
  if (v13)
  {
    _Block_release(v13);
  }

  v14 = *(a1 + 72);
  if (v14)
  {
    dispatch_retain(v14);
  }

  v15 = v9[8];
  v9[8] = v14;
  if (v15)
  {
    dispatch_release(v15);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __copy_helper_block_e8_40c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE64c121_ZTSN8dispatch8callbackIU13block_pointerFvN12TelephonyXPC17ServerClientStateEN3xpc4dictENS0_IU13block_pointerFviS4_EEEEEE(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 63) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 40), *(a2 + 40), *(a2 + 48));
  }

  else
  {
    v4 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v4;
  }

  v5 = *(a2 + 64);
  if (v5)
  {
    v5 = _Block_copy(v5);
  }

  v6 = *(a2 + 72);
  *(a1 + 64) = v5;
  *(a1 + 72) = v6;
  if (v6)
  {

    dispatch_retain(v6);
  }
}

void __destroy_helper_block_e8_40c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE64c121_ZTSN8dispatch8callbackIU13block_pointerFvN12TelephonyXPC17ServerClientStateEN3xpc4dictENS0_IU13block_pointerFviS4_EEEEEE(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    _Block_release(v3);
  }

  if (*(a1 + 63) < 0)
  {
    v4 = *(a1 + 40);

    operator delete(v4);
  }
}

uint64_t std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, void **a2)
{
  v2 = *(a1 + 23);
  v3 = a1[1];
  if ((v2 & 0x80u) != 0)
  {
    a1 = *a1;
    v2 = v3;
  }

  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  return std::operator<=>[abi:ne200100]<char,std::char_traits<char>>(a1, v2, v5, v6);
}

uint64_t std::operator<=>[abi:ne200100]<char,std::char_traits<char>>(const void *a1, size_t a2, void *__s2, size_t a4)
{
  if (a4 >= a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = a4;
  }

  v8 = memcmp(a1, __s2, v7);
  if (v8)
  {
    if ((v8 & 0x80000000) == 0)
    {
      return 1;
    }
  }

  else
  {
    if (a2 == a4)
    {
      return 0;
    }

    if (a2 >= a4)
    {
      return 1;
    }
  }

  return 255;
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

uint64_t dispatch::callback<void({block_pointer})(TelephonyXPC::ServerClientState,xpc::dict,dispatch::callback<void({block_pointer})(int,xpc::dict)>)>::~callback(uint64_t a1)
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

void ___ZN12TelephonyXPC6Server5State20handleNewClient_syncEN3xpc10connectionE_block_invoke(uint64_t a1, void **a2, void **a3)
{
  v106 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = *a2;
  object = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    object = xpc_null_create();
  }

  v6 = *a3;
  v80 = v6;
  if (v6)
  {
    xpc_retain(v6);
  }

  else
  {
    v80 = xpc_null_create();
  }

  v83 = 0xAAAAAAAAAAAAAAAALL;
  v84 = 0xAAAAAAAAAAAAAAAALL;
  v7 = object;
  if (object)
  {
    xpc_retain(object);
  }

  else
  {
    v7 = xpc_null_create();
  }

  TelephonyXPC::Server::State::getClientState_sync(&v83, v4, v7);
  xpc_release(v7);
  v8 = v83;
  v9 = *(v4 + 72);
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);
  if (v8)
  {
    if (!v10)
    {
      goto LABEL_15;
    }

    if (*(v8 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&block, *v8, *(v8 + 8));
    }

    else
    {
      v25 = *v8;
      block.__r_.__value_.__r.__words[2] = *(v8 + 16);
      *&block.__r_.__value_.__l.__data_ = v25;
    }

    v26 = SHIBYTE(block.__r_.__value_.__r.__words[2]);
    v27 = block.__r_.__value_.__r.__words[0];
    xpc::object::to_string(&__p, &v80);
    p_block = &block;
    if (v26 < 0)
    {
      p_block = v27;
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }
  }

  else
  {
    if (!v10)
    {
      goto LABEL_15;
    }

    xpc::object::to_string(&block, &object);
    v21 = SHIBYTE(block.__r_.__value_.__r.__words[2]);
    v22 = block.__r_.__value_.__r.__words[0];
    xpc::object::to_string(&__p, &v80);
    p_block = &block;
    if (v21 < 0)
    {
      p_block = v22;
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }
  }

  *buf = 136315394;
  *&buf[4] = p_block;
  *&buf[12] = 2080;
  *&buf[14] = p_p;
  _os_log_debug_impl(&dword_26D2A2000, v9, OS_LOG_TYPE_DEBUG, "#D Got message from %s of %s", buf, 0x16u);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(block.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(block.__r_.__value_.__l.__data_);
  }

LABEL_15:
  original = v80;
  if (v80)
  {
    xpc_retain(v80);
    v11 = original;
  }

  else
  {
    v11 = xpc_null_create();
    original = v11;
  }

  v12 = MEMORY[0x26D6B9FB0](v11);
  v13 = MEMORY[0x277D86468];
  if (v12 != MEMORY[0x277D86468])
  {
    goto LABEL_114;
  }

  v14 = object;
  if (object)
  {
    xpc_retain(object);
  }

  else
  {
    v14 = xpc_null_create();
  }

  memset(buf, 170, 24);
  __p.__r_.__value_.__r.__words[0] = &original;
  __p.__r_.__value_.__l.__size_ = "command";
  xpc::dict::object_proxy::operator xpc::object(&__p, &v87);
  memset(&block, 0, sizeof(block));
  xpc::dyn_cast_or_default();
  if (SHIBYTE(block.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(block.__r_.__value_.__l.__data_);
  }

  xpc_release(v87.__r_.__value_.__l.__data_);
  v15 = *(v4 + 248);
  if (v15)
  {
    v16 = v4 + 248;
    do
    {
      v17 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((v15 + 32), buf);
      if ((v17 & 0x80u) == 0)
      {
        v16 = v15;
      }

      v15 = *(v15 + ((v17 >> 4) & 8));
    }

    while (v15);
    if (v16 != v4 + 248 && (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(buf, (v16 + 32)) & 0x80) == 0)
    {
      v87.__r_.__value_.__r.__words[0] = 0xAAAAAAAAAAAAAAAALL;
      v87.__r_.__value_.__l.__size_ = 0xAAAAAAAAAAAAAAAALL;
      if (v14)
      {
        xpc_retain(v14);
        v18 = v14;
      }

      else
      {
        v18 = xpc_null_create();
      }

      TelephonyXPC::Server::State::getClientState_sync(&v87, v4, v18);
      xpc_release(v18);
      reply = xpc_dictionary_create_reply(original);
      if (reply || (reply = xpc_null_create()) != 0)
      {
        if (MEMORY[0x26D6B9FB0](reply) == v13)
        {
          xpc_retain(reply);
          v20 = reply;
        }

        else
        {
          v20 = xpc_null_create();
        }
      }

      else
      {
        v20 = xpc_null_create();
        reply = 0;
      }

      xpc_release(reply);
      v85 = 0xAAAAAAAAAAAAAAAALL;
      v86 = 0xAAAAAAAAAAAAAAAALL;
      __p.__r_.__value_.__r.__words[0] = MEMORY[0x277D85DD0];
      __p.__r_.__value_.__l.__size_ = 1174405120;
      __p.__r_.__value_.__r.__words[2] = ___ZN12TelephonyXPC6Server5State24handlePublicMessage_syncEN3xpc10connectionERNS2_4dictE_block_invoke;
      v94 = &__block_descriptor_tmp_43;
      v95 = v20;
      if (v20)
      {
        xpc_retain(v20);
      }

      else
      {
        v95 = xpc_null_create();
      }

      v96 = v14;
      if (v14)
      {
        xpc_retain(v14);
      }

      else
      {
        v96 = xpc_null_create();
      }

      v28 = _Block_copy(&__p);
      v29 = *(v4 + 24);
      if (v29)
      {
        dispatch_retain(*(v4 + 24));
      }

      v78 = v20;
      v85 = v28;
      v86 = v29;
      qos_class = qos_class_self();
      v30 = *&v87.__r_.__value_.__l.__data_;
      if (v87.__r_.__value_.__l.__size_)
      {
        atomic_fetch_add_explicit((v87.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
      }

      v31 = original;
      if (original)
      {
        xpc_retain(original);
        if (v28)
        {
          goto LABEL_67;
        }
      }

      else
      {
        v31 = xpc_null_create();
        if (v28)
        {
LABEL_67:
          v32 = _Block_copy(v28);
          if (!v29)
          {
            goto LABEL_69;
          }

          goto LABEL_68;
        }
      }

      v32 = 0;
      if (!v29)
      {
LABEL_69:
        v33 = *(v16 + 56);
        if (v33)
        {
          v34 = _Block_copy(v33);
        }

        else
        {
          v34 = 0;
        }

        block.__r_.__value_.__r.__words[0] = MEMORY[0x277D85DD0];
        block.__r_.__value_.__l.__size_ = 1174405120;
        block.__r_.__value_.__r.__words[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN12TelephonyXPC17ServerClientStateEN3xpc4dictENS0_IU13block_pointerFviS4_EEEEEclIJS2_S4_S7_EEEv11qos_class_tDpT__block_invoke;
        v100 = &__block_descriptor_tmp_44;
        if (v34)
        {
          v35 = _Block_copy(v34);
        }

        else
        {
          v35 = 0;
        }

        v101 = v35;
        *v102 = v30;
        if (*(&v30 + 1))
        {
          atomic_fetch_add_explicit((*(&v30 + 1) + 8), 1uLL, memory_order_relaxed);
        }

        *&v102[16] = v31;
        if (v31)
        {
          xpc_retain(v31);
          if (v32)
          {
LABEL_82:
            v36 = _Block_copy(v32);
LABEL_85:
            *&v102[24] = v36;
            v103 = v29;
            if (v29)
            {
              dispatch_retain(v29);
            }

            v37 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, qos_class, 0, &block);
            dispatch_async(*(v16 + 64), v37);
            if (v37)
            {
              _Block_release(v37);
            }

            if (v103)
            {
              dispatch_release(v103);
            }

            if (*&v102[24])
            {
              _Block_release(*&v102[24]);
            }

            xpc_release(*&v102[16]);
            *&v102[16] = 0;
            if (*&v102[8])
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](*&v102[8]);
            }

            if (v101)
            {
              _Block_release(v101);
            }

            if (v34)
            {
              _Block_release(v34);
            }

            if (v29)
            {
              dispatch_release(v29);
            }

            if (v32)
            {
              _Block_release(v32);
            }

            xpc_release(v31);
            if (*(&v30 + 1))
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](*(&v30 + 1));
            }

            v38 = xpc_null_create();
            v39 = xpc_null_create();
            v40 = original;
            original = v38;
            xpc_release(v40);
            xpc_release(v39);
            v13 = MEMORY[0x277D86468];
            if (v29)
            {
              dispatch_release(v29);
            }

            if (v28)
            {
              _Block_release(v28);
            }

            xpc_release(v96);
            v96 = 0;
            xpc_release(v95);
            v95 = 0;
            xpc_release(v78);
            if (v87.__r_.__value_.__l.__size_)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v87.__r_.__value_.__l.__size_);
            }

            goto LABEL_111;
          }
        }

        else
        {
          *&v102[16] = xpc_null_create();
          if (v32)
          {
            goto LABEL_82;
          }
        }

        v36 = 0;
        goto LABEL_85;
      }

LABEL_68:
      dispatch_retain(v29);
      goto LABEL_69;
    }
  }

LABEL_111:
  if (buf[23] < 0)
  {
    operator delete(*buf);
  }

  xpc_release(v14);
LABEL_114:
  if (MEMORY[0x26D6B9FB0](original) != v13)
  {
    goto LABEL_247;
  }

  v41 = object;
  if (object)
  {
    xpc_retain(object);
  }

  else
  {
    v41 = xpc_null_create();
  }

  memset(buf, 170, 24);
  __p.__r_.__value_.__r.__words[0] = &original;
  __p.__r_.__value_.__l.__size_ = "command";
  xpc::dict::object_proxy::operator xpc::object(&__p, &v87);
  memset(&block, 0, sizeof(block));
  xpc::dyn_cast_or_default();
  if (SHIBYTE(block.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(block.__r_.__value_.__l.__data_);
  }

  xpc_release(v87.__r_.__value_.__l.__data_);
  v42 = buf[23];
  v43 = buf[23];
  if ((buf[23] & 0x80u) != 0)
  {
    v42 = *&buf[8];
  }

  if (v42)
  {
    v44 = xpc_dictionary_create_reply(original);
    if (v44 || (v44 = xpc_null_create()) != 0)
    {
      if (MEMORY[0x26D6B9FB0](v44) == v13)
      {
        xpc_retain(v44);
        v45 = v44;
      }

      else
      {
        v45 = xpc_null_create();
      }
    }

    else
    {
      v45 = xpc_null_create();
      v44 = 0;
    }

    xpc_release(v44);
    if (buf[23] < 0)
    {
      if (*&buf[8] != 7)
      {
        if (*&buf[8] != 8)
        {
          if (*&buf[8] != 9)
          {
            goto LABEL_243;
          }

          v46 = *buf;
          goto LABEL_138;
        }

        v51 = **buf;
        v52 = *"eventsOn";
LABEL_154:
        if (v51 != v52)
        {
          goto LABEL_243;
        }

        __p.__r_.__value_.__r.__words[0] = 0xAAAAAAAAAAAAAAAALL;
        block.__r_.__value_.__r.__words[0] = &original;
        block.__r_.__value_.__l.__size_ = "eventList";
        xpc::dict::object_proxy::operator xpc::object(&block, &v85);
        xpc::bridge();
        ctu::cf::CFSharedRef<__CFArray const>::CFSharedRef<void const,void>(&__p, v87.__r_.__value_.__l.__data_);
        ctu::SharedRef<void const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,void const>::~SharedRef(&v87.__r_.__value_.__l.__data_);
        xpc_release(v85);
        if (__p.__r_.__value_.__r.__words[0])
        {
          if (v41)
          {
            xpc_retain(v41);
            v54 = v41;
          }

          else
          {
            v54 = xpc_null_create();
          }

          v92 = __p.__r_.__value_.__r.__words[0];
          if (__p.__r_.__value_.__r.__words[0])
          {
            CFRetain(__p.__r_.__value_.__l.__data_);
          }

          TelephonyXPC::Server::State::registerNotification(v4, v54, 1, &v92);
          ctu::SharedRef<__CFArray const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFArray const>::~SharedRef(&v92);
          xpc_release(v54);
          v57 = 0;
          goto LABEL_184;
        }

        goto LABEL_167;
      }

      if (**buf != *"checkIn" || *(*buf + 3) != *"ckIn")
      {
        goto LABEL_243;
      }
    }

    else
    {
      if (buf[23] != 7)
      {
        if (buf[23] != 8)
        {
          if (buf[23] != 9)
          {
            goto LABEL_243;
          }

          v46 = buf;
LABEL_138:
          v47 = *v46;
          v48 = v46[8];
          if (v47 != *"eventsOff" || v48 != str_14[8])
          {
            goto LABEL_243;
          }

          __p.__r_.__value_.__r.__words[0] = 0xAAAAAAAAAAAAAAAALL;
          block.__r_.__value_.__r.__words[0] = &original;
          block.__r_.__value_.__l.__size_ = "eventList";
          xpc::dict::object_proxy::operator xpc::object(&block, &v85);
          xpc::bridge();
          ctu::cf::CFSharedRef<__CFArray const>::CFSharedRef<void const,void>(&__p, v87.__r_.__value_.__l.__data_);
          ctu::SharedRef<void const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,void const>::~SharedRef(&v87.__r_.__value_.__l.__data_);
          xpc_release(v85);
          if (__p.__r_.__value_.__r.__words[0])
          {
            if (v41)
            {
              xpc_retain(v41);
              v50 = v41;
            }

            else
            {
              v50 = xpc_null_create();
            }

            v92 = __p.__r_.__value_.__r.__words[0];
            if (__p.__r_.__value_.__r.__words[0])
            {
              CFRetain(__p.__r_.__value_.__l.__data_);
            }

            TelephonyXPC::Server::State::registerNotification(v4, v50, 0, &v92);
            ctu::SharedRef<__CFArray const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFArray const>::~SharedRef(&v92);
            xpc_release(v50);
            v57 = 0;
            goto LABEL_184;
          }

LABEL_167:
          v57 = -534716414;
LABEL_184:
          ctu::SharedRef<__CFArray const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFArray const>::~SharedRef(&__p.__r_.__value_.__l.__data_);
          goto LABEL_185;
        }

        v51 = *buf;
        v52 = 0x6E4F73746E657665;
        goto LABEL_154;
      }

      if (*buf != *"checkIn" || *&buf[3] != *"ckIn")
      {
        goto LABEL_243;
      }
    }

    memset(&__p, 170, sizeof(__p));
    v87.__r_.__value_.__r.__words[0] = &original;
    v87.__r_.__value_.__l.__size_ = "clientName";
    xpc::dict::object_proxy::operator xpc::object(&v87, &v85);
    memset(&block, 0, sizeof(block));
    xpc::dyn_cast_or_default();
    if (SHIBYTE(block.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(block.__r_.__value_.__l.__data_);
    }

    xpc_release(v85);
    block.__r_.__value_.__r.__words[0] = 0xAAAAAAAAAAAAAAAALL;
    block.__r_.__value_.__l.__size_ = 0xAAAAAAAAAAAAAAAALL;
    if (v41)
    {
      xpc_retain(v41);
      v56 = v41;
    }

    else
    {
      v56 = xpc_null_create();
    }

    TelephonyXPC::Server::State::getClientState_sync(&block, v4, v56);
    xpc_release(v56);
    v58 = block.__r_.__value_.__r.__words[0];
    if (block.__r_.__value_.__r.__words[0])
    {
      std::string::operator=(block.__r_.__value_.__l.__data_, &__p);
      *(v58 + 24) = 1;
    }

    if (block.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](block.__r_.__value_.__l.__size_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v57 = 0;
LABEL_185:
    v90 = xpc_int64_create(v57);
    if (!v90)
    {
      v90 = xpc_null_create();
    }

    xpc::dict::object_proxy::operator=(&v91, v45, "commandResult", &v90);
    xpc_release(v91);
    v91 = 0;
    xpc_release(v90);
    v90 = 0;
    v59 = *(v4 + 72);
    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
    {
      v66 = buf;
      if ((buf[23] & 0x80u) != 0)
      {
        v66 = *buf;
      }

      LODWORD(block.__r_.__value_.__l.__data_) = 136315394;
      *(block.__r_.__value_.__r.__words + 4) = v66;
      WORD2(block.__r_.__value_.__r.__words[1]) = 1024;
      *(&block.__r_.__value_.__r.__words[1] + 6) = v57;
      _os_log_debug_impl(&dword_26D2A2000, v59, OS_LOG_TYPE_DEBUG, "#D Replying to client's command: %s, with return code: %d", &block, 0x12u);
    }

    xpc_connection_send_message(v41, v45);
    v60 = xpc_null_create();
    v61 = xpc_null_create();
    v62 = original;
    original = v60;
    xpc_release(v62);
    xpc_release(v61);
    if (buf[23] < 0)
    {
      if (*&buf[8] == 8)
      {
        v63 = *buf;
        goto LABEL_193;
      }
    }

    else if (buf[23] == 8)
    {
      v63 = buf;
LABEL_193:
      if (*v63 == *"eventsOn" && *(v4 + 168) == 1)
      {
        v64 = xpc_dictionary_create(0, 0, 0);
        if (v64 || (v64 = xpc_null_create()) != 0)
        {
          if (MEMORY[0x26D6B9FB0](v64) == v13)
          {
            xpc_retain(v64);
            v65 = v64;
          }

          else
          {
            v65 = xpc_null_create();
          }
        }

        else
        {
          v65 = xpc_null_create();
          v64 = 0;
        }

        xpc_release(v64);
        v88 = xpc_string_create("ServerStateStarted");
        if (!v88)
        {
          v88 = xpc_null_create();
        }

        xpc::dict::object_proxy::operator=(&v89, v65, "KeyServerState", &v88);
        xpc_release(v89);
        v89 = 0;
        xpc_release(v88);
        v88 = 0;
        if (v41)
        {
          xpc_retain(v41);
          v67 = v41;
        }

        else
        {
          v67 = xpc_null_create();
        }

        std::string::basic_string[abi:ne200100]<0>(&v87, "EventServerStateChange");
        if (v65)
        {
          xpc_retain(v65);
          v68 = v65;
        }

        else
        {
          v68 = xpc_null_create();
        }

        v85 = 0;
        v86 = 0;
        block.__r_.__value_.__r.__words[0] = MEMORY[0x277D85DD0];
        block.__r_.__value_.__l.__size_ = 1174405120;
        block.__r_.__value_.__r.__words[2] = ___ZN12TelephonyXPC6Server5State7unicastEN3xpc10connectionENSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEENS2_4dictEN8dispatch8callbackIU13block_pointerFvvEEE_block_invoke;
        v100 = &__block_descriptor_tmp_54;
        v101 = v4;
        *v102 = v68;
        if (v68)
        {
          xpc_retain(v68);
        }

        else
        {
          *v102 = xpc_null_create();
        }

        if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v102[8], v87.__r_.__value_.__l.__data_, v87.__r_.__value_.__l.__size_);
        }

        else
        {
          *&v102[8] = v87;
        }

        v103 = v67;
        if (v67)
        {
          xpc_retain(v67);
        }

        else
        {
          v103 = xpc_null_create();
        }

        v69 = v85;
        if (v85)
        {
          v70 = _Block_copy(v85);
        }

        else
        {
          v70 = 0;
        }

        v71 = v86;
        v104 = v70;
        v105 = v86;
        if (v86)
        {
          dispatch_retain(v86);
        }

        v72 = *(v4 + 16);
        if (!v72 || (v73 = *(v4 + 8), (v74 = std::__shared_weak_count::lock(v72)) == 0))
        {
          std::__throw_bad_weak_ptr[abi:ne200100]();
        }

        v75 = v74;
        v76 = *(v4 + 24);
        __p.__r_.__value_.__r.__words[0] = MEMORY[0x277D85DD0];
        __p.__r_.__value_.__l.__size_ = 1174405120;
        __p.__r_.__value_.__r.__words[2] = ___ZNK3ctu20SharedSynchronizableINS_9XpcServerEE15execute_wrappedEU13block_pointerFvvE_block_invoke;
        v94 = &__block_descriptor_tmp_37;
        v96 = v73;
        v97 = v75;
        atomic_fetch_add_explicit(&v75->__shared_owners_, 1uLL, memory_order_relaxed);
        v95 = &block;
        dispatch_async(v76, &__p);
        if (v97)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v97);
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v75);
        if (v105)
        {
          dispatch_release(v105);
        }

        if (v104)
        {
          _Block_release(v104);
        }

        xpc_release(v103);
        v103 = 0;
        if ((v102[31] & 0x80000000) != 0)
        {
          operator delete(*&v102[8]);
        }

        xpc_release(*v102);
        if (v71)
        {
          dispatch_release(v71);
        }

        if (v69)
        {
          _Block_release(v69);
        }

        xpc_release(v68);
        if (SHIBYTE(v87.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v87.__r_.__value_.__l.__data_);
        }

        xpc_release(v67);
        xpc_release(v65);
      }
    }

LABEL_243:
    xpc_release(v45);
    v43 = buf[23];
  }

  if ((v43 & 0x80) != 0)
  {
    operator delete(*buf);
  }

  xpc_release(v41);
LABEL_247:
  xpc_release(original);
  if (v84)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v84);
  }

  xpc_release(v80);
  v80 = 0;
  xpc_release(object);
  v77 = *MEMORY[0x277D85DE8];
}

void sub_26D2A9900(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t a9, uint64_t a10, xpc_object_t a11, xpc_object_t a12, xpc_object_t a13, uint64_t a14, std::__shared_weak_count *a15, xpc_object_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, xpc_object_t a36, xpc_object_t a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, uint64_t a52, uint64_t a53, xpc_object_t object)
{
  xpc_release(object);
  dispatch::callback<void({block_pointer})(void)>::~callback(&a16);
  xpc_release(v58);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v57);
  xpc_release(v56);
  xpc_release(v55);
  if (a44 < 0)
  {
    operator delete(a39);
  }

  xpc_release(v54);
  xpc_release(a13);
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  xpc_release(a11);
  xpc_release(a12);
  _Unwind_Resume(a1);
}

xpc_object_t xpc::array::object_proxy::operator xpc::object@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  value = xpc_array_get_value(**a1, *(a1 + 8));
  *a2 = value;
  if (value)
  {
    return xpc_retain(value);
  }

  result = xpc_null_create();
  *a2 = result;
  return result;
}

void xpc::connection::to_debug_string(xpc::connection *this, uint64_t a2)
{
  v3 = MEMORY[0x26D6B9F30](a2);
  memset(this, 170, 24);
  std::string::basic_string[abi:ne200100]<0>(this, v3);

  free(v3);
}

void **xpc::array::iterator::iterator(void **a1, void **a2, void *a3)
{
  v5 = *a2;
  *a1 = *a2;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    *a1 = xpc_null_create();
  }

  a1[1] = a3;
  return a1;
}

uint64_t *std::__tree<std::string>::__emplace_unique_key_args<std::string,std::string const&>(uint64_t **a1, void **a2, uint64_t a3)
{
  v8 = 0xAAAAAAAAAAAAAAAALL;
  result = std::__tree<std::string>::__find_equal<std::string>(a1, &v8, a2);
  if (!*result)
  {
    v6 = result;
    memset(v7, 170, sizeof(v7));
    std::__tree<std::string>::__construct_node<std::string const&>(a1, a3, v7);
    return std::__tree<std::string>::__insert_node_at(a1, v8, v6, v7[0]);
  }

  return result;
}

void *std::__tree<std::string>::__find_equal<std::string>(uint64_t a1, void *a2, void **a3)
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

void std::__tree<std::string>::__construct_node<std::string const&>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = operator new(0x38uLL);
  a3[1] = a1;
  *a3 = v6;
  a3[2] = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((v6 + 32), *a2, *(a2 + 8));
  }

  else
  {
    *(v6 + 2) = *a2;
    *(v6 + 6) = *(a2 + 16);
  }

  *(a3 + 16) = 1;
}

void sub_26D2A9F3C(_Unwind_Exception *a1)
{
  *v1 = 0;
  std::__tree_node_destructor<std::allocator<std::__tree_node<std::string,void *>>>::operator()[abi:ne200100](v3, v2);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<std::string>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
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

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::string,void *>>>::operator()[abi:ne200100](uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 55) < 0)
    {
      operator delete(__p[4]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t *std::set<std::string>::set[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = (a1 + 1);
  std::set<std::string>::insert[abi:ne200100]<std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>>(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t *std::set<std::string>::insert[abi:ne200100]<std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>>(uint64_t *result, void **a2, void **a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::string>::__emplace_hint_unique_key_args<std::string,std::string const&>(v5, (v5 + 1), v4 + 4, (v4 + 4));
      v6 = v4[1];
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
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t *std::__tree<std::string>::__emplace_hint_unique_key_args<std::string,std::string const&>(uint64_t **a1, uint64_t a2, void **a3, uint64_t a4)
{
  v9 = 0xAAAAAAAAAAAAAAAALL;
  v10 = 0xAAAAAAAAAAAAAAAALL;
  v6 = std::__tree<std::string>::__find_equal<std::string>(a1, a2, &v10, &v9, a3);
  result = *v6;
  if (!*v6)
  {
    memset(v8, 170, sizeof(v8));
    std::__tree<std::string>::__construct_node<std::string const&>(a1, a4, v8);
    std::__tree<std::string>::__insert_node_at(a1, v10, v6, v8[0]);
    return v8[0];
  }

  return result;
}

void **std::__tree<std::string>::__find_equal<std::string>(void *a1, uint64_t a2, void ***a3, uint64_t *a4, void **a5)
{
  v9 = (a1 + 1);
  if (a1 + 1 == a2 || (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a5, (a2 + 32)) & 0x80) != 0)
  {
    if (*a1 == a2)
    {
      v12 = a2;
    }

    else
    {
      v11 = *a2;
      if (*a2)
      {
        do
        {
          v12 = v11;
          v11 = v11[1];
        }

        while (v11);
      }

      else
      {
        v16 = a2;
        do
        {
          v12 = v16[2];
          v17 = *v12 == v16;
          v16 = v12;
        }

        while (v17);
      }

      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v12 + 4, a5) & 0x80) == 0)
      {
        goto LABEL_17;
      }
    }

    if (*a2)
    {
      *a3 = v12;
      return (v12 + 1);
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((a2 + 32), a5) & 0x80) == 0)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  a4 = (a2 + 8);
  v13 = *(a2 + 8);
  if (v13)
  {
    v14 = *(a2 + 8);
    do
    {
      v15 = v14;
      v14 = *v14;
    }

    while (v14);
  }

  else
  {
    v19 = a2;
    do
    {
      v15 = v19[2];
      v17 = *v15 == v19;
      v19 = v15;
    }

    while (!v17);
  }

  if (v15 == v9)
  {
LABEL_29:
    if (v13)
    {
      *a3 = v15;
      return v15;
    }

    else
    {
      *a3 = a2;
    }

    return a4;
  }

  if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a5, v15 + 4) & 0x80) != 0)
  {
    v13 = *a4;
    goto LABEL_29;
  }

LABEL_17:

  return std::__tree<std::string>::__find_equal<std::string>(a1, a3, a5);
}

void std::__tree<std::string>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::string>::destroy(a1, *a2);
    std::__tree<std::string>::destroy(a1, *(a2 + 1));
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

void std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<xpc::connection,TelephonyXPC::ServerClientState>,void *>>>::destroy[abi:ne200100]<std::pair<xpc::connection const,TelephonyXPC::ServerClientState>,void,0>(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  xpc_release(*a1);
  *a1 = 0;
}

void *TelephonyXPC::Server::State::getClientState_sync(void *result, uint64_t a2, unint64_t a3)
{
  *result = 0;
  result[1] = 0;
  v5 = *(a2 + 224);
  v3 = (a2 + 224);
  v4 = v5;
  if (v5)
  {
    v6 = v3;
    do
    {
      v7 = v4[4];
      v8 = v7 >= a3;
      v9 = v7 < a3;
      if (v8)
      {
        v6 = v4;
      }

      v4 = v4[v9];
    }

    while (v4);
    if (v6 != v3 && v6[4] <= a3)
    {
      v11 = v6[5];
      v10 = v6[6];
      if (v10)
      {
        atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
      }

      *result = v11;
      result[1] = v10;
    }
  }

  return result;
}

void ___ZN12TelephonyXPC6Server5State24handlePublicMessage_syncEN3xpc10connectionERNS2_4dictE_block_invoke(uint64_t a1, int a2, void *a3)
{
  v6 = MEMORY[0x26D6B9FB0](*(a1 + 32));
  v7 = MEMORY[0x277D86468];
  if (v6 == MEMORY[0x277D86468])
  {
    v13 = xpc_int64_create(a2);
    if (!v13)
    {
      v13 = xpc_null_create();
    }

    xpc::dict::object_proxy::operator=(&object, *(a1 + 32), "commandResult", &v13);
    xpc_release(object);
    xpc_release(v13);
    if (MEMORY[0x26D6B9FB0](*a3) == v7)
    {
      v8 = *a3;
      v11 = v8;
      if (v8)
      {
        xpc_retain(v8);
      }

      else
      {
        v11 = xpc_null_create();
      }

      xpc::dict::object_proxy::operator=(&v12, *(a1 + 32), "commandData", &v11);
      xpc_release(v12);
      xpc_release(v11);
    }

    v10 = *(a1 + 32);
    v9 = *(a1 + 40);

    xpc_connection_send_message(v9, v10);
  }
}

xpc_object_t __copy_helper_block_e8_32c15_ZTSN3xpc4dictE40c22_ZTSN3xpc10connectionE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  *(a1 + 32) = v4;
  if (v4)
  {
    xpc_retain(v4);
  }

  else
  {
    *(a1 + 32) = xpc_null_create();
  }

  v5 = *(a2 + 40);
  *(a1 + 40) = v5;
  if (v5)
  {
    return xpc_retain(v5);
  }

  result = xpc_null_create();
  *(a1 + 40) = result;
  return result;
}

void __destroy_helper_block_e8_32c15_ZTSN3xpc4dictE40c22_ZTSN3xpc10connectionE(uint64_t a1)
{
  xpc_release(*(a1 + 40));
  *(a1 + 40) = 0;
  xpc_release(*(a1 + 32));
  *(a1 + 32) = 0;
}

uint64_t dispatch::callback<void({block_pointer})(int,xpc::dict)>::~callback(uint64_t a1)
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

void ___ZNK8dispatch8callbackIU13block_pointerFvN12TelephonyXPC17ServerClientStateEN3xpc4dictENS0_IU13block_pointerFviS4_EEEEEclIJS2_S4_S7_EEEv11qos_class_tDpT__block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[6];
  v10 = a1[5];
  v11 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = a1[7];
  v9 = v4;
  if (v4)
  {
    xpc_retain(v4);
  }

  else
  {
    v9 = xpc_null_create();
  }

  v5 = a1[8];
  if (v5)
  {
    v5 = _Block_copy(v5);
  }

  v6 = a1[9];
  aBlock = v5;
  object = v6;
  if (v6)
  {
    dispatch_retain(v6);
  }

  (*(v2 + 16))(v2, &v10, &v9, &aBlock);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  xpc_release(v9);
  v9 = 0;
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }
}

void sub_26D2AA700(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, xpc_object_t object, uint64_t a13, std::__shared_weak_count *a14)
{
  dispatch::callback<void({block_pointer})(int,xpc::dict)>::~callback(&a10);
  xpc_release(object);
  object = 0;
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(a1);
}

void __copy_helper_block_e8_32c126_ZTSN8dispatch5blockIU13block_pointerFvN12TelephonyXPC17ServerClientStateEN3xpc4dictENS_8callbackIU13block_pointerFviS4_EEEEEE40c39_ZTSN12TelephonyXPC17ServerClientStateE56c15_ZTSN3xpc4dictE64c57_ZTSN8dispatch8callbackIU13block_pointerFviN3xpc4dictEEEE(void *a1, void *a2)
{
  v4 = a2[4];
  if (v4)
  {
    v4 = _Block_copy(v4);
  }

  v6 = a2[5];
  v5 = a2[6];
  a1[4] = v4;
  a1[5] = v6;
  a1[6] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = a2[7];
  a1[7] = v7;
  if (v7)
  {
    xpc_retain(v7);
  }

  else
  {
    a1[7] = xpc_null_create();
  }

  v8 = a2[8];
  if (v8)
  {
    v8 = _Block_copy(v8);
  }

  v9 = a2[9];
  a1[8] = v8;
  a1[9] = v9;
  if (v9)
  {

    dispatch_retain(v9);
  }
}

void __destroy_helper_block_e8_32c126_ZTSN8dispatch5blockIU13block_pointerFvN12TelephonyXPC17ServerClientStateEN3xpc4dictENS_8callbackIU13block_pointerFviS4_EEEEEE40c39_ZTSN12TelephonyXPC17ServerClientStateE56c15_ZTSN3xpc4dictE64c57_ZTSN8dispatch8callbackIU13block_pointerFviN3xpc4dictEEEE(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    _Block_release(v3);
  }

  xpc_release(*(a1 + 56));
  *(a1 + 56) = 0;
  v4 = *(a1 + 48);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    _Block_release(v5);
  }
}

void TelephonyXPC::Server::State::registerNotification(void *a1, xpc_object_t object, char a3, const void **a4)
{
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1174405120;
  v12[2] = ___ZN12TelephonyXPC6Server5State20registerNotificationEN3xpc10connectionEbN3ctu2cf11CFSharedRefIK9__CFArrayEE_block_invoke;
  v12[3] = &__block_descriptor_tmp_47;
  v12[4] = a1;
  objecta = object;
  if (object)
  {
    xpc_retain(object);
  }

  else
  {
    objecta = xpc_null_create();
  }

  v15 = a3;
  ctu::SharedRef<__CFArray const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFArray const>::SharedRef(&v14, a4);
  v7 = a1[2];
  if (!v7 || (v8 = a1[1], (v9 = std::__shared_weak_count::lock(v7)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v10 = v9;
  v11 = a1[3];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 1174405120;
  block[2] = ___ZNK3ctu20SharedSynchronizableINS_9XpcServerEE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &__block_descriptor_tmp_37;
  block[5] = v8;
  v17 = v10;
  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  block[4] = v12;
  dispatch_async(v11, block);
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  ctu::SharedRef<__CFArray const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFArray const>::~SharedRef(&v14);
  xpc_release(objecta);
}

void *ctu::cf::CFSharedRef<__CFArray const>::CFSharedRef<void const,void>(void *a1, CFTypeRef cf)
{
  if (cf && (v4 = CFGetTypeID(cf), v4 == CFArrayGetTypeID()))
  {
    *a1 = cf;
    CFRetain(cf);
  }

  else
  {
    *a1 = 0;
  }

  return a1;
}

const void **ctu::SharedRef<void const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,void const>::~SharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void ___ZN12TelephonyXPC6Server5State20registerNotificationEN3xpc10connectionEbN3ctu2cf11CFSharedRefIK9__CFArrayEE_block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = (a1 + 40);
  v4 = *(a1 + 40);
  v12 = 0xAAAAAAAAAAAAAAAALL;
  v13 = 0xAAAAAAAAAAAAAAAALL;
  if (v4)
  {
    xpc_retain(v4);
  }

  else
  {
    v4 = xpc_null_create();
  }

  TelephonyXPC::Server::State::getClientState_sync(&v12, v2, v4);
  xpc_release(v4);
  if (v12)
  {
    v5 = *(a1 + 56);
    ctu::SharedRef<__CFArray const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFArray const>::SharedRef(&v11, (a1 + 48));
    TelephonyXPC::ServerClientState::registerNotification_sync(&v12, v5, &v11);
    ctu::SharedRef<__CFArray const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFArray const>::~SharedRef(&v11);
  }

  else if (MEMORY[0x26D6B9FB0](*v3) == MEMORY[0x277D86450])
  {
    v6 = *(v2 + 72);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      xpc::object::to_string(__p, v3);
      v8 = v10 >= 0 ? __p : __p[0];
      *buf = 136315138;
      v15 = v8;
      _os_log_debug_impl(&dword_26D2A2000, v6, OS_LOG_TYPE_DEBUG, "#D %s is not in client list", buf, 0xCu);
      if (v10 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void sub_26D2AABB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(exception_object);
}

const void **__copy_helper_block_e8_40c22_ZTSN3xpc10connectionE48c39_ZTSN3ctu2cf11CFSharedRefIK9__CFArrayEE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  *(a1 + 40) = v4;
  if (v4)
  {
    xpc_retain(v4);
  }

  else
  {
    *(a1 + 40) = xpc_null_create();
  }

  return ctu::SharedRef<__CFArray const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFArray const>::SharedRef((a1 + 48), (a2 + 48));
}

void __destroy_helper_block_e8_40c22_ZTSN3xpc10connectionE48c39_ZTSN3ctu2cf11CFSharedRefIK9__CFArrayEE(uint64_t a1)
{
  ctu::SharedRef<__CFArray const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFArray const>::~SharedRef((a1 + 48));
  xpc_release(*(a1 + 40));
  *(a1 + 40) = 0;
}

const void **ctu::SharedRef<__CFArray const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFArray const>::SharedRef(const void **a1, const void **a2)
{
  v3 = *a2;
  *a1 = *a2;
  if (v3)
  {
    CFRetain(v3);
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

void ___ZN12TelephonyXPC6Server5State7unicastEN3xpc10connectionENSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEENS2_4dictEN8dispatch8callbackIU13block_pointerFvvEEE_block_invoke(uint64_t a1)
{
  v63 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = xpc_dictionary_create(0, 0, 0);
  v4 = MEMORY[0x277D86468];
  if (v3 || (v3 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x26D6B9FB0](v3) == v4)
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
  if (MEMORY[0x26D6B9FB0](*(a1 + 40)) == v4)
  {
    v6 = *(a1 + 40);
    v55 = v6;
    if (v6)
    {
      xpc_retain(v6);
    }

    else
    {
      v55 = xpc_null_create();
    }

    xpc::dict::object_proxy::operator=(&v56, v5, "eventData", &v55);
    xpc_release(v56);
    v56 = 0;
    xpc_release(v55);
    v55 = 0;
  }

  v53 = xpc_string_create("eventNotification");
  if (!v53)
  {
    v53 = xpc_null_create();
  }

  xpc::dict::object_proxy::operator=(&v54, v5, "command", &v53);
  xpc_release(v54);
  v54 = 0;
  xpc_release(v53);
  v53 = 0;
  v7 = (a1 + 48);
  v8 = (a1 + 48);
  if (*(a1 + 71) < 0)
  {
    v8 = *v7;
  }

  v51 = xpc_string_create(v8);
  if (!v51)
  {
    v51 = xpc_null_create();
  }

  xpc::dict::object_proxy::operator=(&v52, v5, "event", &v51);
  xpc_release(v52);
  v52 = 0;
  xpc_release(v51);
  v51 = 0;
  v9 = dispatch_group_create();
  v10 = v2[2];
  if (!v10 || (v11 = v2[1], (v12 = std::__shared_weak_count::lock(v10)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v13 = v12;
  atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  v49 = 0xAAAAAAAAAAAAAAAALL;
  v50 = 0xAAAAAAAAAAAAAAAALL;
  v14 = *(a1 + 72);
  if (v14)
  {
    xpc_retain(*(a1 + 72));
  }

  else
  {
    v14 = xpc_null_create();
  }

  TelephonyXPC::Server::State::getClientState_sync(&v49, v2, v14);
  xpc_release(v14);
  if (*(a1 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(&v48, *(a1 + 48), *(a1 + 56));
  }

  else
  {
    *&v48.__r_.__value_.__l.__data_ = *v7;
    v48.__r_.__value_.__r.__words[2] = *(a1 + 64);
  }

  v15 = *(a1 + 40);
  v47 = v15;
  if (v15)
  {
    xpc_retain(v15);
  }

  else
  {
    v15 = xpc_null_create();
    v47 = v15;
  }

  isNotificationRegistered_sync = TelephonyXPC::ServerClientState::isNotificationRegistered_sync(&v49, &v48, &v47);
  xpc_release(v15);
  v47 = 0;
  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v48.__r_.__value_.__l.__data_);
    if (!isNotificationRegistered_sync)
    {
      goto LABEL_58;
    }
  }

  else if (!isNotificationRegistered_sync)
  {
    goto LABEL_58;
  }

  v17 = v2[9];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = (a1 + 48);
    if (*(a1 + 71) < 0)
    {
      v18 = *v7;
    }

    v33 = v5;
    v19 = v9;
    v20 = v11;
    if (*(v49 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v46, *v49, *(v49 + 1));
    }

    else
    {
      v21 = *v49;
      v46.__r_.__value_.__r.__words[2] = *(v49 + 2);
      *&v46.__r_.__value_.__l.__data_ = v21;
    }

    v22 = SHIBYTE(v46.__r_.__value_.__r.__words[2]);
    v23 = v46.__r_.__value_.__r.__words[0];
    SystemTime = TelephonyUtilGetSystemTime();
    *buf = 136315650;
    v25 = &v46;
    if (v22 < 0)
    {
      v25 = v23;
    }

    v58 = v18;
    v59 = 2080;
    v60 = v25;
    v61 = 2048;
    v62 = SystemTime;
    _os_log_impl(&dword_26D2A2000, v17, OS_LOG_TYPE_DEFAULT, "#I Sending %s to %s at %llu", buf, 0x20u);
    if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v46.__r_.__value_.__l.__data_);
    }

    v11 = v20;
    v9 = v19;
    v5 = v33;
  }

  if (*(a1 + 80) && *(a1 + 88))
  {
    dispatch_group_enter(v9);
    v26 = *(a1 + 72);
    v27 = v2[3];
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 1174405120;
    handler[2] = ___ZN12TelephonyXPC6Server5State7unicastEN3xpc10connectionENSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEENS2_4dictEN8dispatch8callbackIU13block_pointerFvvEEE_block_invoke_48;
    handler[3] = &__block_descriptor_tmp_51;
    handler[4] = v2;
    handler[5] = v11;
    v41 = v13;
    atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v42 = v49;
    v43 = v50;
    if (v50)
    {
      atomic_fetch_add_explicit(&v50->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (*(a1 + 71) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *(a1 + 48), *(a1 + 56));
    }

    else
    {
      *&__p.__r_.__value_.__l.__data_ = *v7;
      __p.__r_.__value_.__r.__words[2] = *(a1 + 64);
    }

    v45 = v9;
    xpc_connection_send_message_with_reply(v26, v5, v27, handler);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (v43)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v43);
    }

    if (v41)
    {
      std::__shared_weak_count::__release_weak(v41);
    }
  }

  else
  {
    xpc_connection_send_message(*(a1 + 72), v5);
  }

LABEL_58:
  if (*(a1 + 80) && *(a1 + 88))
  {
    v28 = v2[3];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 1174405120;
    block[2] = ___ZN12TelephonyXPC6Server5State7unicastEN3xpc10connectionENSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEENS2_4dictEN8dispatch8callbackIU13block_pointerFvvEEE_block_invoke_52;
    block[3] = &__block_descriptor_tmp_53;
    block[4] = v2;
    block[5] = v11;
    v35 = v13;
    atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v29 = *(a1 + 72);
    v36 = v29;
    if (v29)
    {
      xpc_retain(v29);
    }

    else
    {
      v36 = xpc_null_create();
    }

    if (*(a1 + 71) < 0)
    {
      std::string::__init_copy_ctor_external(&v37, *(a1 + 48), *(a1 + 56));
    }

    else
    {
      *&v37.__r_.__value_.__l.__data_ = *v7;
      v37.__r_.__value_.__r.__words[2] = *(a1 + 64);
    }

    v30 = *(a1 + 80);
    if (v30)
    {
      v30 = _Block_copy(v30);
    }

    v31 = *(a1 + 88);
    aBlock = v30;
    object = v31;
    if (v31)
    {
      dispatch_retain(v31);
    }

    dispatch_group_notify(v9, v28, block);
    if (object)
    {
      dispatch_release(object);
    }

    if (aBlock)
    {
      _Block_release(aBlock);
    }

    if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v37.__r_.__value_.__l.__data_);
    }

    xpc_release(v36);
    v36 = 0;
    if (v35)
    {
      std::__shared_weak_count::__release_weak(v35);
    }
  }

  dispatch_release(v9);
  if (v50)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v50);
  }

  std::__shared_weak_count::__release_weak(v13);
  xpc_release(v5);
  v32 = *MEMORY[0x277D85DE8];
}

void sub_26D2AB310(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, xpc_object_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, std::__shared_weak_count *a30, uint64_t a31, std::__shared_weak_count *a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46)
{
  if (a32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a32);
  }

  if (a30)
  {
    std::__shared_weak_count::__release_weak(a30);
  }

  v50 = *(v48 - 200);
  if (v50)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v50);
  }

  std::__shared_weak_count::__release_weak(v47);
  xpc_release(v46);
  _Unwind_Resume(a1);
}

void ___ZN12TelephonyXPC6Server5State7unicastEN3xpc10connectionENSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEENS2_4dictEN8dispatch8callbackIU13block_pointerFvvEEE_block_invoke_48(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  if (v2 && (v3 = *(a1 + 32), (v4 = std::__shared_weak_count::lock(v2)) != 0))
  {
    v5 = v4;
    if (*(a1 + 40))
    {
      v6 = *(v3 + 72);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 56);
        if (*(v7 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, *v7, *(v7 + 1));
        }

        else
        {
          v8 = *v7;
          __p.__r_.__value_.__r.__words[2] = *(v7 + 2);
          *&__p.__r_.__value_.__l.__data_ = v8;
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        v12 = (a1 + 72);
        if (*(a1 + 95) < 0)
        {
          v12 = *v12;
        }

        SystemTime = TelephonyUtilGetSystemTime();
        *buf = 136315650;
        v17 = p_p;
        v18 = 2080;
        v19 = v12;
        v20 = 2048;
        v21 = SystemTime;
        _os_log_impl(&dword_26D2A2000, v6, OS_LOG_TYPE_DEFAULT, "#I %s responded to %s at %llu", buf, 0x20u);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }
    }

    dispatch_group_leave(*(a1 + 96));
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    v14 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v9 = *(a1 + 96);
    v10 = *MEMORY[0x277D85DE8];

    dispatch_group_leave(v9);
  }
}

void ___ZN12TelephonyXPC6Server5State7unicastEN3xpc10connectionENSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEENS2_4dictEN8dispatch8callbackIU13block_pointerFvvEEE_block_invoke_52(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      if (*(a1 + 40))
      {
        v5 = *(v3 + 72);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          xpc::object::to_string(__p, (a1 + 56));
          v6 = __p[0];
          if (SHIBYTE(v14) >= 0)
          {
            v6 = __p;
          }

          v7 = (a1 + 64);
          if (*(a1 + 87) < 0)
          {
            v7 = *v7;
          }

          *buf = 136315394;
          v18 = v6;
          v19 = 2080;
          v20 = v7;
          _os_log_impl(&dword_26D2A2000, v5, OS_LOG_TYPE_DEFAULT, "#I Client %s responded to %s", buf, 0x16u);
          if (SHIBYTE(v14) < 0)
          {
            operator delete(__p[0]);
          }
        }
      }
    }
  }

  else
  {
    v4 = 0;
  }

  v8 = *(a1 + 88);
  if (v8)
  {
    v9 = _Block_copy(v8);
  }

  else
  {
    v9 = 0;
  }

  v10 = *(a1 + 96);
  __p[0] = MEMORY[0x277D85DD0];
  __p[1] = 1174405120;
  v14 = ___ZNK8dispatch8callbackIU13block_pointerFvvEEclIJEEEvDpT__block_invoke;
  v15 = &__block_descriptor_tmp_38;
  if (v9)
  {
    v11 = _Block_copy(v9);
  }

  else
  {
    v11 = 0;
  }

  aBlock = v11;
  dispatch_async(v10, __p);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v9)
  {
    _Block_release(v9);
  }

  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __copy_helper_block_e8_40c39_ZTSNSt3__18weak_ptrIN3ctu9XpcServerEEE56c23_ZTSKN3xpc10connectionE64c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE88c46_ZTSN8dispatch8callbackIU13block_pointerFvvEEE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  v5 = *(a2 + 56);
  *(a1 + 56) = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    *(a1 + 56) = xpc_null_create();
  }

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

  v7 = *(a2 + 88);
  if (v7)
  {
    v7 = _Block_copy(v7);
  }

  v8 = *(a2 + 96);
  *(a1 + 88) = v7;
  *(a1 + 96) = v8;
  if (v8)
  {

    dispatch_retain(v8);
  }
}

void sub_26D2AB8EC(_Unwind_Exception *a1)
{
  xpc::connection::~connection(v2);
  v4 = *(v1 + 48);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  _Unwind_Resume(a1);
}

void __destroy_helper_block_e8_40c39_ZTSNSt3__18weak_ptrIN3ctu9XpcServerEEE56c23_ZTSKN3xpc10connectionE64c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE88c46_ZTSN8dispatch8callbackIU13block_pointerFvvEEE(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 88);
  if (v3)
  {
    _Block_release(v3);
  }

  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  xpc_release(*(a1 + 56));
  *(a1 + 56) = 0;
  v4 = *(a1 + 48);
  if (v4)
  {

    std::__shared_weak_count::__release_weak(v4);
  }
}

void __copy_helper_block_e8_40c15_ZTSN3xpc4dictE48c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE72c23_ZTSKN3xpc10connectionE80c46_ZTSN8dispatch8callbackIU13block_pointerFvvEEE(std::string *a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  a1[1].__r_.__value_.__r.__words[2] = v4;
  if (v4)
  {
    xpc_retain(v4);
  }

  else
  {
    a1[1].__r_.__value_.__r.__words[2] = xpc_null_create();
  }

  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(a1 + 2, *(a2 + 48), *(a2 + 56));
  }

  else
  {
    v5 = *(a2 + 48);
    a1[2].__r_.__value_.__r.__words[2] = *(a2 + 64);
    *&a1[2].__r_.__value_.__l.__data_ = v5;
  }

  v6 = *(a2 + 72);
  a1[3].__r_.__value_.__r.__words[0] = v6;
  if (v6)
  {
    xpc_retain(v6);
  }

  else
  {
    a1[3].__r_.__value_.__r.__words[0] = xpc_null_create();
  }

  v7 = *(a2 + 80);
  if (v7)
  {
    v7 = _Block_copy(v7);
  }

  v8 = *(a2 + 88);
  a1[3].__r_.__value_.__l.__size_ = v7;
  a1[3].__r_.__value_.__r.__words[2] = v8;
  if (v8)
  {

    dispatch_retain(v8);
  }
}

void __destroy_helper_block_e8_40c15_ZTSN3xpc4dictE48c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE72c23_ZTSKN3xpc10connectionE80c46_ZTSN8dispatch8callbackIU13block_pointerFvvEEE(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 80);
  if (v3)
  {
    _Block_release(v3);
  }

  xpc_release(*(a1 + 72));
  *(a1 + 72) = 0;
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  xpc_release(*(a1 + 40));
  *(a1 + 40) = 0;
}

uint64_t *std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = v7[2];
    v13 = *v12;
    v14 = *(v7 + 24);
    if (*v12 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v15 = v12[1];
      v16 = *v15;
      v12[1] = *v15;
      if (v16)
      {
        *(v16 + 16) = v12;
      }

      v17 = v12[2];
      v15[2] = v17;
      v17[*v17 != v12] = v15;
      *v15 = v12;
      v12[2] = v15;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v18 = *v7;
    if (*v7 && *(v18 + 24) != 1)
    {
      v19 = v7[1];
      if (v19 && (v19[3] & 1) == 0)
      {
LABEL_58:
        v18 = v7;
      }

      else
      {
        *(v18 + 24) = 1;
        *(v7 + 24) = 0;
        v27 = v18[1];
        *v7 = v27;
        if (v27)
        {
          *(v27 + 16) = v7;
        }

        v28 = v7[2];
        v18[2] = v28;
        v28[*v28 != v7] = v18;
        v18[1] = v7;
        v7[2] = v18;
        v19 = v7;
      }

      v29 = v18[2];
      *(v18 + 24) = *(v29 + 24);
      *(v29 + 24) = 1;
      *(v19 + 24) = 1;
      v30 = *(v29 + 8);
      v31 = *v30;
      *(v29 + 8) = *v30;
      if (v31)
      {
        *(v31 + 16) = v29;
      }

      v32 = *(v29 + 16);
      v30[2] = v32;
      v32[*v32 != v29] = v30;
      *v30 = v29;
      goto LABEL_71;
    }

    v19 = v7[1];
    if (v19 && *(v19 + 24) != 1)
    {
      goto LABEL_58;
    }

    *(v7 + 24) = 0;
    v20 = v7[2];
    if (v20 == result || (v20[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v20[2] + 8 * (*v20[2] == v20));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v21 = v13[1];
    *v12 = v21;
    if (v21)
    {
      *(v21 + 16) = v12;
    }

    v22 = v12[2];
    v13[2] = v22;
    v22[*v22 != v12] = v13;
    v13[1] = v12;
    v12[2] = v13;
    v23 = v7[1];
    if (result == v23)
    {
      result = v7;
    }

    v7 = *v23;
  }

  v24 = *v7;
  if (*v7 && *(v24 + 24) != 1)
  {
    goto LABEL_67;
  }

  v25 = v7[1];
  if (!v25 || *(v25 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v20 = v7[2];
    if (*(v20 + 24) != 1 || v20 == result)
    {
LABEL_52:
      *(v20 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (v24 && (v24[3] & 1) == 0)
  {
LABEL_67:
    v25 = v7;
    goto LABEL_68;
  }

  *(v25 + 24) = 1;
  *(v7 + 24) = 0;
  v33 = *v25;
  v7[1] = *v25;
  if (v33)
  {
    *(v33 + 16) = v7;
  }

  v34 = v7[2];
  v25[2] = v34;
  v34[*v34 != v7] = v25;
  *v25 = v7;
  v7[2] = v25;
  v24 = v7;
LABEL_68:
  v29 = v25[2];
  *(v25 + 24) = *(v29 + 24);
  *(v29 + 24) = 1;
  *(v24 + 24) = 1;
  v30 = *v29;
  v35 = *(*v29 + 8);
  *v29 = v35;
  if (v35)
  {
    *(v35 + 16) = v29;
  }

  v36 = *(v29 + 16);
  v30[2] = v36;
  v36[*v36 != v29] = v30;
  v30[1] = v29;
LABEL_71:
  *(v29 + 16) = v30;
  return result;
}

void std::__tree<std::__value_type<xpc::connection,TelephonyXPC::ServerClientState>,std::__map_value_compare<xpc::connection,std::__value_type<xpc::connection,TelephonyXPC::ServerClientState>,std::less<xpc::connection>,true>,std::allocator<std::__value_type<xpc::connection,TelephonyXPC::ServerClientState>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<xpc::connection,TelephonyXPC::ServerClientState>,std::__map_value_compare<xpc::connection,std::__value_type<xpc::connection,TelephonyXPC::ServerClientState>,std::less<xpc::connection>,true>,std::allocator<std::__value_type<xpc::connection,TelephonyXPC::ServerClientState>>>::destroy(*a1);
    std::__tree<std::__value_type<xpc::connection,TelephonyXPC::ServerClientState>,std::__map_value_compare<xpc::connection,std::__value_type<xpc::connection,TelephonyXPC::ServerClientState>,std::less<xpc::connection>,true>,std::allocator<std::__value_type<xpc::connection,TelephonyXPC::ServerClientState>>>::destroy(a1[1]);
    std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<xpc::connection,TelephonyXPC::ServerClientState>,void *>>>::destroy[abi:ne200100]<std::pair<xpc::connection const,TelephonyXPC::ServerClientState>,void,0>((a1 + 4));

    operator delete(a1);
  }
}

void std::__tree<std::__value_type<std::string,dispatch::callback<void({block_pointer})(TelephonyXPC::ServerClientState,xpc::dict,dispatch::callback<void({block_pointer})(int,xpc::dict)>)>>,std::__map_value_compare<std::string,std::__value_type<std::string,dispatch::callback<void({block_pointer})(TelephonyXPC::ServerClientState,xpc::dict,dispatch::callback<void({block_pointer})(int,xpc::dict)>)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dispatch::callback<void({block_pointer})(TelephonyXPC::ServerClientState,xpc::dict,dispatch::callback<void({block_pointer})(int,xpc::dict)>)>>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,dispatch::callback<void({block_pointer})(TelephonyXPC::ServerClientState,xpc::dict,dispatch::callback<void({block_pointer})(int,xpc::dict)>)>>,std::__map_value_compare<std::string,std::__value_type<std::string,dispatch::callback<void({block_pointer})(TelephonyXPC::ServerClientState,xpc::dict,dispatch::callback<void({block_pointer})(int,xpc::dict)>)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dispatch::callback<void({block_pointer})(TelephonyXPC::ServerClientState,xpc::dict,dispatch::callback<void({block_pointer})(int,xpc::dict)>)>>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,dispatch::callback<void({block_pointer})(TelephonyXPC::ServerClientState,xpc::dict,dispatch::callback<void({block_pointer})(int,xpc::dict)>)>>,std::__map_value_compare<std::string,std::__value_type<std::string,dispatch::callback<void({block_pointer})(TelephonyXPC::ServerClientState,xpc::dict,dispatch::callback<void({block_pointer})(int,xpc::dict)>)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dispatch::callback<void({block_pointer})(TelephonyXPC::ServerClientState,xpc::dict,dispatch::callback<void({block_pointer})(int,xpc::dict)>)>>>>::destroy(*(a1 + 1));
    v2 = *(a1 + 8);
    if (v2)
    {
      dispatch_release(v2);
    }

    v3 = *(a1 + 7);
    if (v3)
    {
      _Block_release(v3);
    }

    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
    }

    operator delete(a1);
  }
}

void std::__shared_ptr_pointer<TelephonyXPC::Server *,std::shared_ptr<TelephonyXPC::Server>::__shared_ptr_default_delete<TelephonyXPC::Server,TelephonyXPC::Server>,std::allocator<TelephonyXPC::Server>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<TelephonyXPC::Server *,std::shared_ptr<TelephonyXPC::Server>::__shared_ptr_default_delete<TelephonyXPC::Server,TelephonyXPC::Server>,std::allocator<TelephonyXPC::Server>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<TelephonyXPC::Server *,std::shared_ptr<TelephonyXPC::Server>::__shared_ptr_default_delete<TelephonyXPC::Server,TelephonyXPC::Server>,std::allocator<TelephonyXPC::Server>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *TelephonyXPC::ServerClientState::ServerClientState(void *a1, __int128 *a2)
{
  v4 = operator new(0x50uLL);
  TelephonyXPC::ServerClientState::State::State(v4, a2);

  return std::shared_ptr<TelephonyXPC::ServerClientState::State>::shared_ptr[abi:ne200100]<TelephonyXPC::ServerClientState::State,0>(a1, v4);
}

void *TelephonyXPC::ServerClientState::ServerClientState(void *result, void *a2)
{
  v2 = a2[1];
  *result = *a2;
  result[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

{
  v2 = a2[1];
  *result = *a2;
  result[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

std::string *TelephonyXPC::ServerClientState::setCheckedIn(std::string **a1, const std::string *a2)
{
  v2 = *a1;
  result = std::string::operator=(*a1, a2);
  v2[1].__r_.__value_.__s.__data_[0] = 1;
  return result;
}

uint64_t TelephonyXPC::ServerClientState::isNotificationRegistered_sync(uint64_t *a1, uint64_t a2, void **a3)
{
  v4 = *a1;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v9, *a2, *(a2 + 8));
  }

  else
  {
    v9 = *a2;
  }

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

  isNotificationRegistered = TelephonyXPC::ServerClientState::State::isNotificationRegistered(v4, &v9.__r_.__value_.__l.__data_, &object);
  xpc_release(object);
  object = 0;
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  return isNotificationRegistered;
}

void sub_26D2AC158(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t TelephonyXPC::ServerClientState::State::isNotificationRegistered(uint64_t a1, void **a2, void *a3)
{
  v5 = std::__tree<std::__value_type<std::string,xpc::dict>,std::__map_value_compare<std::string,std::__value_type<std::string,xpc::dict>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xpc::dict>>>::find<std::string>(a1 + 32, a2);
  if (a1 + 40 == v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = MEMORY[0x26D6B9FB0](*a3);
  v8 = MEMORY[0x277D86468];
  if (v7 != MEMORY[0x277D86468])
  {
    return 1;
  }

  v10 = *(v6 + 56);
  if (v10)
  {
    xpc_retain(v10);
  }

  else
  {
    v10 = xpc_null_create();
  }

  if (MEMORY[0x26D6B9FB0](v10) == v8)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x2000000000;
    v18 = 0;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 1174405120;
    v13[2] = ___ZN12TelephonyXPC17ServerClientState5State24isNotificationRegisteredENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEN3xpc4dictE_block_invoke;
    v13[3] = &__block_descriptor_tmp_1;
    v11 = *a3;
    object = v11;
    if (v11)
    {
      xpc_retain(v11);
    }

    else
    {
      object = xpc_null_create();
    }

    v13[4] = &v15;
    xpc_dictionary_apply(v10, v13);
    v9 = *(v16 + 24);
    xpc_release(object);
    object = 0;
    _Block_object_dispose(&v15, 8);
  }

  else
  {
    v9 = 1;
  }

  xpc_release(v10);
  return v9;
}

void sub_26D2AC2EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, xpc_object_t object, char a15)
{
  xpc_release(object);
  _Block_object_dispose(&a15, 8);
  xpc_release(v15);
  _Unwind_Resume(a1);
}

const void **TelephonyXPC::ServerClientState::registerNotification_sync(void **a1, int a2, const void **a3)
{
  v4 = *a1;
  ctu::SharedRef<__CFArray const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFArray const>::SharedRef(&theArray, a3);
  v5 = theArray;
  v6.length = CFArrayGetCount(theArray);
  if (a2)
  {
    v7 = TelephonyXPC::ServerClientState::State::registerNotificationApplier;
  }

  else
  {
    v7 = TelephonyXPC::ServerClientState::State::unregisterNotificationApplier;
  }

  v6.location = 0;
  CFArrayApplyFunction(v5, v6, v7, v4);
  return ctu::SharedRef<__CFArray const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFArray const>::~SharedRef(&theArray);
}

void sub_26D2AC3C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::SharedRef<__CFArray const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFArray const>::~SharedRef(va);
  _Unwind_Resume(a1);
}

void TelephonyXPC::ServerClientState::getName(TelephonyXPC::ServerClientState *this@<X0>, std::string *a2@<X8>)
{
  v2 = *this;
  if (*(*this + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *v2, *(v2 + 1));
  }

  else
  {
    v3 = *v2;
    a2->__r_.__value_.__r.__words[2] = *(v2 + 2);
    *&a2->__r_.__value_.__l.__data_ = v3;
  }
}

void TelephonyXPC::ServerClientState::setClientEntitlements(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  std::set<std::string>::set[abi:ne200100](&v3, a2);
  if ((v2 + 56) != &v3)
  {
    std::__tree<std::string>::__assign_multi<std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>>((v2 + 56), v3, &v4);
  }

  std::__tree<std::string>::destroy(&v3, v4);
}

BOOL TelephonyXPC::ServerClientState::isClientEntitled(void *a1, void **a2)
{
  v2 = (*a1 + 64);
  v3 = *v2;
  if (!*v2)
  {
    goto LABEL_8;
  }

  v5 = *a1 + 64;
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
LABEL_8:
    v5 = v2;
  }

  return v2 != v5;
}

std::string *TelephonyXPC::ServerClientState::State::State(std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v3 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v3;
  }

  this[1].__r_.__value_.__s.__data_[0] = 0;
  this[1].__r_.__value_.__r.__words[2] = 0;
  this[1].__r_.__value_.__l.__size_ = &this[1].__r_.__value_.__r.__words[2];
  this[3].__r_.__value_.__r.__words[0] = 0;
  this[2].__r_.__value_.__r.__words[2] = 0;
  this[2].__r_.__value_.__r.__words[0] = 0;
  this[2].__r_.__value_.__l.__size_ = &this[2].__r_.__value_.__r.__words[2];
  return this;
}

uint64_t ___ZN12TelephonyXPC17ServerClientState5State24isNotificationRegisteredENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEN3xpc4dictE_block_invoke(uint64_t a1, const char *a2, void *a3)
{
  if (a3 && (v6 = MEMORY[0x26D6B9FB0](a3), v7 = MEMORY[0x277D86468], v6 == MEMORY[0x277D86468]))
  {
    xpc_retain(a3);
    v25 = a3;
    if (MEMORY[0x26D6B9FB0](a3) == v7)
    {
      xpc_retain(a3);
    }

    else
    {
      v25 = xpc_null_create();
    }

    xpc_release(a3);
    v24 = 0xAAAAAAAAAAAAAAAALL;
    v22 = &v25;
    v23 = "eventFilterAllowList";
    xpc::dict::object_proxy::operator xpc::array(&v22, &v24);
    v9 = MEMORY[0x26D6B9FB0](v24);
    v10 = MEMORY[0x277D86440];
    if (v9 == MEMORY[0x277D86440] && (v11 = *(a1 + 40), v22 = (a1 + 40), v23 = a2, xpc_dictionary_get_value(v11, a2)))
    {
      object[0] = v24;
      if (v24)
      {
        xpc_retain(v24);
      }

      else
      {
        object[0] = xpc_null_create();
      }

      xpc::array::iterator::iterator(&v20, object, 0);
      xpc_release(object[0]);
      object1[0] = v24;
      if (v24)
      {
        xpc_retain(v24);
      }

      else
      {
        object1[0] = xpc_null_create();
      }

      if (MEMORY[0x26D6B9FB0](v24) == v10)
      {
        count = xpc_array_get_count(v24);
      }

      else
      {
        count = 0;
      }

      xpc::array::iterator::iterator(object, object1, count);
      xpc_release(object1[0]);
      for (i = v21; ; i = ++v21)
      {
        if (i == object[1])
        {
          v14 = object[0];
          if (v20 == object[0])
          {
            break;
          }
        }

        object1[1] = i;
        object2 = 0xAAAAAAAAAAAAAAAALL;
        object1[0] = &v20;
        xpc::array::object_proxy::operator xpc::object(object1, &object2);
        object1[0] = 0xAAAAAAAAAAAAAAAALL;
        xpc::dict::object_proxy::operator xpc::object(&v22, object1);
        v15 = xpc_equal(object1[0], object2);
        xpc_release(object1[0]);
        if (v15)
        {
          *(*(*(a1 + 32) + 8) + 24) = 1;
          xpc_release(object2);
          v14 = object[0];
          break;
        }

        xpc_release(object2);
      }

      xpc_release(v14);
      xpc_release(v20);
      v8 = *(*(*(a1 + 32) + 8) + 24) ^ 1;
    }

    else
    {
      v8 = 1;
    }

    xpc_release(v24);
    xpc_release(v25);
  }

  else
  {
    v8 = 1;
  }

  return v8 & 1;
}

void sub_26D2AC7CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, uint64_t a11, xpc_object_t a12, xpc_object_t a13, uint64_t a14, xpc_object_t a15)
{
  xpc_release(object);
  xpc_release(a15);
  xpc_release(*(v15 - 48));
  xpc_release(*(v15 - 40));
  _Unwind_Resume(a1);
}

xpc_object_t __copy_helper_block_e8_32r40c15_ZTSN3xpc4dictE(uint64_t a1, uint64_t a2)
{
  _Block_object_assign((a1 + 32), *(a2 + 32), 8);
  v4 = *(a2 + 40);
  *(a1 + 40) = v4;
  if (v4)
  {
    return xpc_retain(v4);
  }

  result = xpc_null_create();
  *(a1 + 40) = result;
  return result;
}

void __destroy_helper_block_e8_32r40c15_ZTSN3xpc4dictE(uint64_t a1)
{
  xpc_release(*(a1 + 40));
  *(a1 + 40) = 0;
  v2 = *(a1 + 32);

  _Block_object_dispose(v2, 8);
}

uint64_t std::__tree<std::__value_type<std::string,xpc::dict>,std::__map_value_compare<std::string,std::__value_type<std::string,xpc::dict>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xpc::dict>>>::find<std::string>(uint64_t a1, void **a2)
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

uint64_t TelephonyXPC::ServerClientState::State::registerNotificationApplier(TelephonyXPC::ServerClientState::State *this, char *a2, void *a3)
{
  v17[0] = 0xAAAAAAAAAAAAAAAALL;
  v17[1] = 0xAAAAAAAAAAAAAAAALL;
  ctu::cf::dict_adapter::dict_adapter(v17, this);
  memset(&v16, 170, sizeof(v16));
  memset(&__p, 0, sizeof(__p));
  ctu::cf::MakeCFString::MakeCFString(&v18, "event");
  ctu::cf::map_adapter::getString();
  MEMORY[0x26D6B9AB0](&v18);
  v18 = 0xAAAAAAAAAAAAAAAALL;
  ctu::cf::MakeCFString::MakeCFString(&__p, "eventFilter");
  v4 = ctu::cf::map_adapter::copyCFDictionaryRef(v17, __p.__r_.__value_.__l.__data_);
  MEMORY[0x26D6B9AB0](&__p);
  v18 = v4;
  ctu::cf_to_xpc(&__p, v4, v5);
  v6 = __p.__r_.__value_.__r.__words[0];
  if (__p.__r_.__value_.__r.__words[0] && MEMORY[0x26D6B9FB0](__p.__r_.__value_.__r.__words[0]) == MEMORY[0x277D86468])
  {
    xpc_retain(v6);
  }

  else
  {
    v6 = xpc_null_create();
  }

  xpc_release(__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v16.__r_.__value_.__l.__data_, v16.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v16;
  }

  object = v6;
  if (v6)
  {
    xpc_retain(v6);
  }

  else
  {
    object = xpc_null_create();
  }

  v8 = (a2 + 40);
  v7 = *(a2 + 5);
  if (!v7)
  {
    v9 = (a2 + 40);
LABEL_19:
    v10 = operator new(0x40uLL);
    v11 = v10;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external((v10 + 32), __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      *(v10 + 32) = __p;
    }

    v11[7] = object;
    object = xpc_null_create();
    *v11 = 0;
    v11[1] = 0;
    v11[2] = v9;
    *v8 = v11;
    v12 = **(a2 + 4);
    if (v12)
    {
      *(a2 + 4) = v12;
      v11 = *v8;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(a2 + 5), v11);
    ++*(a2 + 6);
    goto LABEL_25;
  }

  while (1)
  {
    while (1)
    {
      v9 = v7;
      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&__p, v7 + 4) & 0x80) == 0)
      {
        break;
      }

      v7 = *v9;
      v8 = v9;
      if (!*v9)
      {
        goto LABEL_19;
      }
    }

    if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v9 + 4, &__p.__r_.__value_.__l.__data_) & 0x80) == 0)
    {
      break;
    }

    v8 = v9 + 1;
    v7 = v9[1];
    if (!v7)
    {
      goto LABEL_19;
    }
  }

  if (!*v8)
  {
    goto LABEL_19;
  }

LABEL_25:
  xpc_release(object);
  object = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  xpc_release(v6);
  ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(&v18);
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  return MEMORY[0x26D6B9AD0](v17);
}

void sub_26D2ACC10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  operator delete(v23);
  std::pair<std::string const,xpc::dict>::~pair(&a9);
  xpc_release(v22);
  ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef((v24 - 56));
  if (a21 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x26D6B9AD0](&a22);
  _Unwind_Resume(a1);
}

void TelephonyXPC::ServerClientState::State::unregisterNotificationApplier(TelephonyXPC::ServerClientState::State *this, void *a2, void *a3)
{
  v13 = 0uLL;
  v14 = 0;
  ctu::cf::assign();
  *__p = 0uLL;
  v12 = 0;
  v4 = std::__tree<std::__value_type<std::string,xpc::dict>,std::__map_value_compare<std::string,std::__value_type<std::string,xpc::dict>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xpc::dict>>>::find<std::string>((a2 + 4), __p);
  if (a2 + 5 != v4)
  {
    v5 = v4;
    v6 = v4[1];
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
      v8 = v4;
      do
      {
        v7 = v8[2];
        v9 = *v7 == v8;
        v8 = v7;
      }

      while (!v9);
    }

    if (a2[4] == v4)
    {
      a2[4] = v7;
    }

    v10 = a2[5];
    --a2[6];
    std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v10, v5);
    std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<std::string,xpc::dict>,void *>>>::destroy[abi:ne200100]<std::pair<std::string const,xpc::dict>,void,0>((a2 + 4), (v5 + 4));
    operator delete(v5);
  }

  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_26D2ACDA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<std::string,xpc::dict>,void *>>>::destroy[abi:ne200100]<std::pair<std::string const,xpc::dict>,void,0>(uint64_t a1, uint64_t a2)
{
  xpc_release(*(a2 + 24));
  *(a2 + 24) = 0;
  if (*(a2 + 23) < 0)
  {
    v3 = *a2;

    operator delete(v3);
  }
}

uint64_t std::pair<std::string const,xpc::dict>::~pair(uint64_t a1)
{
  xpc_release(*(a1 + 24));
  *(a1 + 24) = 0;
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

const void **ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t *std::__tree<std::string>::__assign_multi<std::__tree_const_iterator<std::string,std::__tree_node<std::string,void *> *,long>>(uint64_t *result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    *(v7 + 16) = 0;
    result[1] = 0;
    result[2] = 0;
    if (*(v6 + 8))
    {
      v8 = *(v6 + 8);
    }

    else
    {
      v8 = v6;
    }

    v18[0] = result;
    v18[1] = v8;
    v18[2] = v8;
    if (v8)
    {
      v18[1] = std::__tree<std::string>::_DetachedTreeCache::__detach_next(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          std::string::operator=((v8 + 4), (v9 + 4));
          v10 = v18[2];
          v17 = 0xAAAAAAAAAAAAAAAALL;
          leaf_high = std::__tree<std::string>::__find_leaf_high(v5, &v17, v18[2] + 4);
          std::__tree<std::string>::__insert_node_at(v5, v17, leaf_high, v10);
          v8 = v18[1];
          v18[2] = v18[1];
          if (v18[1])
          {
            v18[1] = std::__tree<std::string>::_DetachedTreeCache::__detach_next(v18[1]);
          }

          v12 = v9[1];
          if (v12)
          {
            do
            {
              a2 = v12;
              v12 = *v12;
            }

            while (v12);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v13 = *a2 == v9;
              v9 = a2;
            }

            while (!v13);
          }

          if (!v8)
          {
            break;
          }

          v9 = a2;
        }

        while (a2 != a3);
      }
    }

    result = std::__tree<std::string>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](v18);
  }

  if (a2 != a3)
  {
    do
    {
      memset(v18, 170, sizeof(v18));
      std::__tree<std::string>::__construct_node<std::string const&>(v5, (a2 + 4), v18);
      v17 = 0xAAAAAAAAAAAAAAAALL;
      v14 = std::__tree<std::string>::__find_leaf_high(v5, &v17, v18[0] + 4);
      result = std::__tree<std::string>::__insert_node_at(v5, v17, v14, v18[0]);
      v15 = a2[1];
      if (v15)
      {
        do
        {
          v16 = v15;
          v15 = *v15;
        }

        while (v15);
      }

      else
      {
        do
        {
          v16 = a2[2];
          v13 = *v16 == a2;
          a2 = v16;
        }

        while (!v13);
      }

      a2 = v16;
    }

    while (v16 != a3);
  }

  return result;
}

void sub_26D2AD054(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__tree<std::string>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::__tree<std::string>::__find_leaf_high(uint64_t a1, void *a2, void *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v5 = v4;
        if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a3, (v4 + 32)) & 0x80) == 0)
        {
          break;
        }

        v4 = *v5;
        result = v5;
        if (!*v5)
        {
          goto LABEL_8;
        }
      }

      v4 = v5[1];
    }

    while (v4);
    result = v5 + 1;
  }

  else
  {
    result = (a1 + 8);
  }

LABEL_8:
  *a2 = v5;
  return result;
}

void *std::__tree<std::string>::_DetachedTreeCache::__detach_next(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    v3 = *result;
    if (*result == a1)
    {
      *result = 0;
      while (1)
      {
        v4 = result[1];
        if (!v4)
        {
          break;
        }

        do
        {
          result = v4;
          v4 = *v4;
        }

        while (v4);
      }
    }

    else
    {
      for (result[1] = 0; v3; v3 = result[1])
      {
        do
        {
          result = v3;
          v3 = *v3;
        }

        while (v3);
      }
    }
  }

  return result;
}

uint64_t std::__tree<std::string>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](uint64_t a1)
{
  std::__tree<std::string>::destroy(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = *(v3 + 16);
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    std::__tree<std::string>::destroy(*a1, v2);
  }

  return a1;
}

void *std::shared_ptr<TelephonyXPC::ServerClientState::State>::shared_ptr[abi:ne200100]<TelephonyXPC::ServerClientState::State,0>(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_287EA8440;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  return a1;
}

void sub_26D2AD1EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  a10 = 0;
  if (v10)
  {
    std::default_delete<TelephonyXPC::ServerClientState::State>::operator()[abi:ne200100](&a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<TelephonyXPC::ServerClientState::State *,std::shared_ptr<TelephonyXPC::ServerClientState::State>::__shared_ptr_default_delete<TelephonyXPC::ServerClientState::State,TelephonyXPC::ServerClientState::State>,std::allocator<TelephonyXPC::ServerClientState::State>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<TelephonyXPC::ServerClientState::State *,std::shared_ptr<TelephonyXPC::ServerClientState::State>::__shared_ptr_default_delete<TelephonyXPC::ServerClientState::State,TelephonyXPC::ServerClientState::State>,std::allocator<TelephonyXPC::ServerClientState::State>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::default_delete<TelephonyXPC::ServerClientState::State>::operator()[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    std::__tree<std::string>::destroy(a2 + 56, *(a2 + 64));
    std::__tree<std::__value_type<std::string,xpc::dict>,std::__map_value_compare<std::string,std::__value_type<std::string,xpc::dict>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xpc::dict>>>::destroy(a2 + 32, *(a2 + 40));
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    operator delete(a2);
  }
}

void std::__tree<std::__value_type<std::string,xpc::dict>,std::__map_value_compare<std::string,std::__value_type<std::string,xpc::dict>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xpc::dict>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,xpc::dict>,std::__map_value_compare<std::string,std::__value_type<std::string,xpc::dict>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xpc::dict>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,xpc::dict>,std::__map_value_compare<std::string,std::__value_type<std::string,xpc::dict>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,xpc::dict>>>::destroy(a1, a2[1]);
    std::allocator_traits<std::allocator<std::__tree_node<std::__value_type<std::string,xpc::dict>,void *>>>::destroy[abi:ne200100]<std::pair<std::string const,xpc::dict>,void,0>(a1, (a2 + 4));

    operator delete(a2);
  }
}

uint64_t ctu::OsLogLogger::OsLogLogger()
{
  return MEMORY[0x2821F6658]();
}

{
  return MEMORY[0x2821F6660]();
}

uint64_t xpc::dyn_cast_or_default()
{
  return MEMORY[0x2821F6A58]();
}

{
  return MEMORY[0x2821F6A60]();
}

{
  return MEMORY[0x2821F6A70]();
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