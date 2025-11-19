atomic_ullong *std::shared_ptr<support::transport::PCIMemRegion>::shared_ptr[abi:ne200100]<support::transport::PCIMemRegion,0>(atomic_ullong *a1, atomic_ullong a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_2A1E59AC8;
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

void sub_297964D1C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<support::transport::PCIMemRegion *,std::shared_ptr<support::transport::PCIMemRegion>::__shared_ptr_default_delete<support::transport::PCIMemRegion,support::transport::PCIMemRegion>,std::allocator<support::transport::PCIMemRegion>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<support::transport::PCIMemRegion *,std::shared_ptr<support::transport::PCIMemRegion>::__shared_ptr_default_delete<support::transport::PCIMemRegion,support::transport::PCIMemRegion>,std::allocator<support::transport::PCIMemRegion>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<support::transport::PCIMemRegion *,std::shared_ptr<support::transport::PCIMemRegion>::__shared_ptr_default_delete<support::transport::PCIMemRegion,support::transport::PCIMemRegion>,std::allocator<support::transport::PCIMemRegion>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x800000029797D9FALL)
  {
    if (((v2 & 0x800000029797D9FALL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000029797D9FALL))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000029797D9FALL & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t __cxx_global_var_init_3()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>::~PthreadMutexGuardPolicy, &ctu::Singleton<support::log::shared_stdio,support::log::shared_stdio,ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>>::sInstance, &dword_297948000);
  }

  return result;
}

{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<hsfiler_log_manager>::~PthreadMutexGuardPolicy, &ctu::Singleton<hsfiler_log_manager,hsfiler_log_manager,ctu::PthreadMutexGuardPolicy<hsfiler_log_manager>>::sInstance, &dword_297948000);
  }

  return result;
}

void HSFilerRT::create_default_global(HSFilerRT *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  if (capabilities::radio::vendor(this) == 3)
  {
    v3 = operator new(0x30uLL);
    v3[1] = 0;
    v3[2] = 0;
    *v3 = &unk_2A1E59B60;
    v3[3] = &unk_2A1E59B18;
    v3[4] = 0;
    v3[5] = 0;
    if (capabilities::radio::vendor(v3) == 3)
    {
      _ZNSt3__115allocate_sharedB8ne200100I22HSFilerRT_Internal_INTNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_(v4);
      *(v3 + 2) = *v4;
    }

    *a2 = v3 + 3;
    a2[1] = v3;
  }
}

void sub_297964F1C(_Unwind_Exception *a1)
{
  std::shared_ptr<support::transport::AriSelfHostedRT::initRTServer(void)::syncVars>::~shared_ptr[abi:ne200100](v3);
  std::__shared_weak_count::~__shared_weak_count(v2);
  operator delete(v5);
  std::shared_ptr<support::transport::AriSelfHostedRT::initRTServer(void)::syncVars>::~shared_ptr[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

void HSFilerRT::HSFilerRT(HSFilerRT *this)
{
  *this = &unk_2A1E59B18;
  *(this + 1) = 0;
  v1 = (this + 8);
  *(this + 2) = 0;
  if (capabilities::radio::vendor(this) == 3)
  {
    _ZNSt3__115allocate_sharedB8ne200100I22HSFilerRT_Internal_INTNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_(v2);
    *v1 = *v2;
  }
}

{
  *this = &unk_2A1E59B18;
  *(this + 1) = 0;
  v1 = (this + 8);
  *(this + 2) = 0;
  if (capabilities::radio::vendor(this) == 3)
  {
    _ZNSt3__115allocate_sharedB8ne200100I22HSFilerRT_Internal_INTNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_(v2);
    *v1 = *v2;
  }
}

void HSFilerRT::registerBasebandResetDelegate(uint64_t a1, void **a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  if (*a2)
  {
    v3 = _Block_copy(v3);
  }

  aBlock = v3;
  HSFilerRT_Internal::registerBasebandResetDelegate(v2, &aBlock);
  if (aBlock)
  {
    _Block_release(aBlock);
  }
}

void sub_297965110(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *aBlock)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  _Unwind_Resume(exception_object);
}

void HSFilerRT::dumpState(HSFilerRT *this)
{
  v1 = *(this + 1);
  v2[0] = MEMORY[0x29EDCA5F8];
  v2[1] = 0x40000000;
  v2[2] = ___ZN18HSFilerRT_Internal9dumpStateEv_block_invoke;
  v2[3] = &__block_descriptor_tmp_67;
  v2[4] = v1;
  ctu::SharedSynchronizable<HSFilerRT_Internal>::execute_wrapped((v1 + 8), v2);
}

uint64_t HSFilerRT::createSession(uint64_t a1, uint64_t *a2, int a3, unsigned int a4, NSObject **a5)
{
  v5 = *(a1 + 8);
  v6 = a2[1];
  v14 = *a2;
  v15 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = *a5;
  object = v7;
  if (v7)
  {
    v8 = a4;
    v9 = a3;
    dispatch_retain(v7);
    a3 = v9;
    a4 = v8;
  }

  v10 = HSFilerRT_Internal::createSession(v5, &v14, a3, a4, &object);
  if (object)
  {
    dispatch_release(object);
  }

  v11 = v15;
  if (!v15 || atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return v10;
  }

  (v11->__on_zero_shared)(v11);
  std::__shared_weak_count::__release_weak(v11);
  return v10;
}

void sub_29796528C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, char a11)
{
  if (object)
  {
    dispatch_release(object);
  }

  std::shared_ptr<support::transport::AriSelfHostedRT::initRTServer(void)::syncVars>::~shared_ptr[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

void HSFilerRT::destroySession(uint64_t a1, int a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 0x40000000;
  v4[2] = ___ZN18HSFilerRT_Internal14destroySessionE15HSFilerClientIDy_block_invoke;
  v4[3] = &__block_descriptor_tmp_4;
  v5 = a2;
  v4[4] = v3;
  v4[5] = a3;
  ctu::SharedSynchronizable<HSFilerRT_Internal>::execute_wrapped((v3 + 8), v4);
}

uint64_t HSFilerRT::queueSession(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t *a4, void **a5, int a6)
{
  v10 = *(a1 + 8);
  v11 = *a5;
  if (*a5)
  {
    v11 = _Block_copy(v11);
  }

  aBlock = v11;
  v12 = HSFilerRT_Internal::queueSession(v10, a2, a3, a4, &aBlock, a6);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  return v12;
}

void sub_2979653B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *aBlock)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HSFilerRT::readWithFile(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, void **a6)
{
  v10 = *(a1 + 8);
  if (*(a5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v15, *a5, *(a5 + 8));
    v11 = *a6;
    if (!*a6)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v15 = *a5;
  v11 = *a6;
  if (*a6)
  {
LABEL_5:
    v11 = _Block_copy(v11);
  }

LABEL_6:
  aBlock = v11;
  v12 = HSFilerRT_Internal::readWithFile(v10, a2, a3, a4, &v15, &aBlock);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  return v12;
}

void sub_2979654A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *aBlock, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HSFilerRT::readWithStream(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t *a5, void **a6)
{
  v9 = *(a1 + 8);
  v10 = a5[1];
  v16 = *a5;
  v17 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = *a6;
  if (*a6)
  {
    v11 = _Block_copy(v11);
  }

  aBlock = v11;
  v12 = HSFilerRT_Internal::readWithStream(v9, a2, a3, a4, &v16, &aBlock);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  v13 = v17;
  if (!v17 || atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return v12;
  }

  (v13->__on_zero_shared)(v13);
  std::__shared_weak_count::__release_weak(v13);
  return v12;
}

void sub_2979655D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *aBlock, char a11)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  std::shared_ptr<support::transport::AriSelfHostedRT::initRTServer(void)::syncVars>::~shared_ptr[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

uint64_t HSFilerRT::readWithBuff(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t *a5, void **a6)
{
  v9 = *(a1 + 8);
  v10 = a5[1];
  v16 = *a5;
  v17 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = *a6;
  if (*a6)
  {
    v11 = _Block_copy(v11);
  }

  aBlock = v11;
  v12 = HSFilerRT_Internal::readWithBuff(v9, a2, a3, a4, &v16, &aBlock);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  v13 = v17;
  if (!v17 || atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return v12;
  }

  (v13->__on_zero_shared)(v13);
  std::__shared_weak_count::__release_weak(v13);
  return v12;
}

void sub_2979656F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *aBlock, char a11)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  std::shared_ptr<support::transport::AriSelfHostedRT::initRTServer(void)::syncVars>::~shared_ptr[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

uint64_t HSFilerRT::writeWithFile(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, void **a6)
{
  v10 = *(a1 + 8);
  if (*(a5 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v15, *a5, *(a5 + 8));
    v11 = *a6;
    if (!*a6)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v15 = *a5;
  v11 = *a6;
  if (*a6)
  {
LABEL_5:
    v11 = _Block_copy(v11);
  }

LABEL_6:
  aBlock = v11;
  v12 = HSFilerRT_Internal::writeWithFile(v10, a2, a3, a4, &v15, &aBlock);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  return v12;
}

void sub_2979657E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *aBlock, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HSFilerRT::writeWithStream(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t *a5, void **a6)
{
  v9 = *(a1 + 8);
  v10 = a5[1];
  v16 = *a5;
  v17 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = *a6;
  if (*a6)
  {
    v11 = _Block_copy(v11);
  }

  aBlock = v11;
  v12 = HSFilerRT_Internal::writeWithStream(v9, a2, a3, a4, &v16, &aBlock);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  v13 = v17;
  if (!v17 || atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return v12;
  }

  (v13->__on_zero_shared)(v13);
  std::__shared_weak_count::__release_weak(v13);
  return v12;
}

void sub_29796590C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *aBlock, char a11)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  std::shared_ptr<support::transport::AriSelfHostedRT::initRTServer(void)::syncVars>::~shared_ptr[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

uint64_t HSFilerRT::writeWithBuff(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t *a5, void **a6)
{
  v9 = *(a1 + 8);
  v10 = a5[1];
  v16 = *a5;
  v17 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = *a6;
  if (*a6)
  {
    v11 = _Block_copy(v11);
  }

  aBlock = v11;
  v12 = HSFilerRT_Internal::writeWithBuff(v9, a2, a3, a4, &v16, &aBlock);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  v13 = v17;
  if (!v17 || atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return v12;
  }

  (v13->__on_zero_shared)(v13);
  std::__shared_weak_count::__release_weak(v13);
  return v12;
}

void sub_297965A2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *aBlock, char a11)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  std::shared_ptr<support::transport::AriSelfHostedRT::initRTServer(void)::syncVars>::~shared_ptr[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

void HSFilerRT::~HSFilerRT(HSFilerRT *this)
{
  *this = &unk_2A1E59B18;
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
  *this = &unk_2A1E59B18;
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

void std::__shared_ptr_emplace<HSFilerRT>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E59B60;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t __cxx_global_var_init_4()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>::~PthreadMutexGuardPolicy, &ctu::Singleton<support::log::shared_stdio,support::log::shared_stdio,ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>>::sInstance, &dword_297948000);
  }

  return result;
}

void hsfiler_log_manager::hsfiler_log_manager(hsfiler_log_manager *this)
{
  v9 = 7;
  strcpy(__p, "hsfiler");
  v6 = &unk_2A1E5A588;
  v7 = 3;
  v2 = getprogname();
  if (!strncmp(v2, "bbutil", 6uLL))
  {
    v3 = operator new(0x20uLL);
    *v3 = 0u;
    v3[1] = 0u;
    *v3 = &unk_2A1E5A5D0;
  }

  else
  {
    v3 = 0;
  }

  v5 = v3;
  support::log::manager::manager(this, __p, &v6, &v5);
  v4 = v5;
  v5 = 0;
  if (v4)
  {
    (*(*v4 + 16))(v4);
  }

  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  *this = &unk_2A1E59BB0;
}

void sub_297965D9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a9)
  {
    (*(*a9 + 16))(a9);
    if ((a17 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a17 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void hsfiler_log_manager::set_defaults(hsfiler_log_manager *this)
{
  std::mutex::lock((this + 8));
  *(this + 112) = 3;
  v2 = this + 120;
  if (*(this + 17))
  {
    v3 = *(this + 16);
    v4 = *(*(this + 15) + 8);
    v5 = *v3;
    *(v5 + 8) = v4;
    *v4 = v5;
    *(this + 17) = 0;
    if (v3 != v2)
    {
      do
      {
        v8 = *(v3 + 1);
        v7 = *(v3 + 2);
        *(v3 + 2) = 0;
        if (v7)
        {
          (*(*v7 + 16))(v7);
        }

        operator delete(v3);
        v3 = v8;
      }

      while (v8 != v2);
    }
  }

  std::mutex::unlock((this + 8));
  v6 = getprogname();
  if (!strncmp(v6, "bbutil", 6uLL))
  {
    v9 = operator new(0x20uLL);
    *v9 = 0u;
    v9[1] = 0u;
    *v9 = &unk_2A1E5A5D0;
    std::mutex::lock((this + 8));
    v10 = operator new(0x18uLL);
    v10[1] = v2;
    v10[2] = v9;
    v11 = *(this + 15);
    *v10 = v11;
    *(v11 + 8) = v10;
    *(this + 15) = v10;
    ++*(this + 17);

    std::mutex::unlock((this + 8));
  }
}

void sub_297965F5C(_Unwind_Exception *a1)
{
  std::mutex::unlock((v1 + 8));
  (*(*v2 + 16))(v2);
  _Unwind_Resume(a1);
}

void hsfiler_log_client::hsfiler_log_client(hsfiler_log_client *this, const char *a2)
{
  __p = operator new(0x30uLL);
  v16 = xmmword_29797C930;
  strcpy(__p, "com.apple.telephony.basebandservices.hsfiler");
  v4 = strlen(a2);
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
    __dst[1] = v5;
    v14 = v7 | 0x8000000000000000;
    __dst[0] = v6;
    goto LABEL_9;
  }

  HIBYTE(v14) = v4;
  v6 = __dst;
  if (v4)
  {
LABEL_9:
    memcpy(v6, a2, v5);
  }

  *(v5 + v6) = 0;
  pthread_mutex_lock(&ctu::Singleton<hsfiler_log_manager,hsfiler_log_manager,ctu::PthreadMutexGuardPolicy<hsfiler_log_manager>>::sInstance);
  if (qword_2A13A35D0)
  {
    goto LABEL_11;
  }

  v8 = operator new(0xA8uLL);
  v8->__shared_owners_ = 0;
  v8->__shared_weak_owners_ = 0;
  v8->__vftable = &unk_2A1E59C60;
  v9 = &v8[1];
  hsfiler_log_manager::hsfiler_log_manager(&v8[1]);
  v10 = off_2A13A35D8;
  qword_2A13A35D0 = &v8[1];
  off_2A13A35D8 = v8;
  if (v10)
  {
    if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
    }

LABEL_11:
    v9 = qword_2A13A35D0;
    v8 = off_2A13A35D8;
    v11 = off_2A13A35D8;
    if (!off_2A13A35D8)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v11 = v8;
LABEL_17:
  atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
LABEL_18:
  pthread_mutex_unlock(&ctu::Singleton<hsfiler_log_manager,hsfiler_log_manager,ctu::PthreadMutexGuardPolicy<hsfiler_log_manager>>::sInstance);
  v12[0] = v9;
  v12[1] = v11;
  support::log::client::client(this, &__p, __dst, v12);
  if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  if (SHIBYTE(v14) < 0)
  {
    operator delete(__dst[0]);
    if ((SHIBYTE(v16) & 0x80000000) == 0)
    {
      goto LABEL_23;
    }

LABEL_25:
    operator delete(__p);
    goto LABEL_23;
  }

  if (SHIBYTE(v16) < 0)
  {
    goto LABEL_25;
  }

LABEL_23:
  *this = &unk_2A1E59BE0;
}

void sub_297966250(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  std::__shared_weak_count::~__shared_weak_count(v24);
  operator delete(v26);
  pthread_mutex_unlock(&ctu::Singleton<hsfiler_log_manager,hsfiler_log_manager,ctu::PthreadMutexGuardPolicy<hsfiler_log_manager>>::sInstance);
  if (a18 < 0)
  {
    operator delete(__p);
    if ((a24 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else if ((a24 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a19);
  _Unwind_Resume(a1);
}

void hsfiler_log_manager::~hsfiler_log_manager(hsfiler_log_manager *this)
{
  *this = &unk_2A1E5A5A0;
  if (*(this + 17))
  {
    v2 = this + 120;
    v3 = *(this + 16);
    v4 = *(*(this + 15) + 8);
    v5 = *v3;
    *(v5 + 8) = v4;
    *v4 = v5;
    *(this + 17) = 0;
    if (v3 != this + 120)
    {
      do
      {
        v7 = *(v3 + 1);
        v6 = *(v3 + 2);
        *(v3 + 2) = 0;
        if (v6)
        {
          (*(*v6 + 16))(v6);
        }

        operator delete(v3);
        v3 = v7;
      }

      while (v7 != v2);
    }
  }

  if (*(this + 95) < 0)
  {
    operator delete(*(this + 9));
  }

  std::mutex::~mutex((this + 8));
}

{
  *this = &unk_2A1E5A5A0;
  if (*(this + 17))
  {
    v2 = this + 120;
    v3 = *(this + 16);
    v4 = *(*(this + 15) + 8);
    v5 = *v3;
    *(v5 + 8) = v4;
    *v4 = v5;
    *(this + 17) = 0;
    if (v3 != this + 120)
    {
      do
      {
        v7 = *(v3 + 1);
        v6 = *(v3 + 2);
        *(v3 + 2) = 0;
        if (v6)
        {
          (*(*v6 + 16))(v6);
        }

        operator delete(v3);
        v3 = v7;
      }

      while (v7 != v2);
    }
  }

  if (*(this + 95) < 0)
  {
    operator delete(*(this + 9));
  }

  std::mutex::~mutex((this + 8));

  operator delete(this);
}

void std::__shared_ptr_emplace<hsfiler_log_manager>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E59C60;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t ctu::PthreadMutexGuardPolicy<hsfiler_log_manager>::~PthreadMutexGuardPolicy(uint64_t a1)
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

uint64_t __cxx_global_var_init_5()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>::~PthreadMutexGuardPolicy, &ctu::Singleton<support::log::shared_stdio,support::log::shared_stdio,ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>>::sInstance, &dword_297948000);
  }

  return result;
}

{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<support::log::buffer>::~PthreadMutexGuardPolicy, &ctu::Singleton<support::log::buffer,support::log::buffer,ctu::PthreadMutexGuardPolicy<support::log::buffer>>::sInstance, &dword_297948000);
  }

  return result;
}

void **BasebandTransport::getSupportedProtocols@<X0>(BasebandTransport *this@<X0>, void **a2@<X8>)
{
  *a2 = a2;
  a2[1] = a2;
  a2[2] = 0;
  result = capabilities::radio::vendor(this);
  if (result > 2)
  {
    if (result == 3)
    {
      v53 = &v53;
      v54 = &v53;
      v55 = 0;
      v20 = operator new(0x18uLL);
      v20[4] = 8;
      *v20 = &v53;
      *(v20 + 1) = &v53;
      v53 = v20;
      v54 = v20;
      v55 = 1;
      v42 = operator new(0x18uLL);
      v42[4] = 17;
      *v42 = v20;
      *(v42 + 1) = &v53;
      *(v20 + 1) = v42;
      v53 = v42;
      v55 = 2;
      v43 = operator new(0x18uLL);
      v43[4] = 10;
      *v43 = v42;
      *(v43 + 1) = &v53;
      *(v42 + 1) = v43;
      v53 = v43;
      v55 = 3;
      v44 = operator new(0x18uLL);
      v44[4] = 14;
      *v44 = v43;
      *(v44 + 1) = &v53;
      *(v43 + 1) = v44;
      v53 = v44;
      v55 = 4;
      v45 = operator new(0x18uLL);
      v45[4] = 16;
      *v45 = v44;
      *(v45 + 1) = &v53;
      *(v44 + 1) = v45;
      v53 = v45;
      v55 = 5;
      result = operator new(0x18uLL);
      *(result + 4) = 18;
      v46 = &v53;
      *result = v45;
      result[1] = &v53;
      *(v45 + 1) = result;
      v19 = 6;
      v53 = result;
      v55 = 6;
      if (a2[2])
      {
        result = a2[1];
        v47 = *(*a2 + 1);
        v48 = *result;
        v48[1] = v47;
        *v47 = v48;
        a2[2] = 0;
        if (result == a2)
        {
          v19 = 6;
        }

        else
        {
          do
          {
            v49 = result[1];
            operator delete(result);
            result = v49;
          }

          while (v49 != a2);
          if (!v55)
          {
            return result;
          }

          v19 = a2[2] + v55;
        }

        result = v53;
        v20 = v54;
        v51 = v53[1];
        v46 = *v54;
      }

      else
      {
        v51 = &v53;
      }

      v46[1] = v51;
      *v51 = v46;
LABEL_36:
      v52 = *a2;
      v52[1] = v20;
      *v20 = v52;
      *a2 = result;
      result[1] = a2;
      goto LABEL_37;
    }

    if (result != 4)
    {
      return result;
    }

    v53 = &v53;
    v54 = &v53;
    v55 = 0;
    v20 = operator new(0x18uLL);
    v20[4] = 10;
    *v20 = &v53;
    *(v20 + 1) = &v53;
    v53 = v20;
    v54 = v20;
    v55 = 1;
    v21 = operator new(0x18uLL);
    v21[4] = 19;
    *v21 = v20;
    *(v21 + 1) = &v53;
    *(v20 + 1) = v21;
    v53 = v21;
    v55 = 2;
    v22 = operator new(0x18uLL);
    v22[4] = 20;
    *v22 = v21;
    *(v22 + 1) = &v53;
    *(v21 + 1) = v22;
    v53 = v22;
    v55 = 3;
    v23 = operator new(0x18uLL);
    v23[4] = 21;
    *v23 = v22;
    *(v23 + 1) = &v53;
    *(v22 + 1) = v23;
    v53 = v23;
    v55 = 4;
    v24 = operator new(0x18uLL);
    v24[4] = 22;
    *v24 = v23;
    *(v24 + 1) = &v53;
    *(v23 + 1) = v24;
    v53 = v24;
    v55 = 5;
    v25 = operator new(0x18uLL);
    v25[4] = 23;
    v26 = &v53;
    *v25 = v24;
    *(v25 + 1) = &v53;
    *(v24 + 1) = v25;
    v53 = v25;
    v55 = 6;
    result = operator new(0x18uLL);
    *(result + 4) = 24;
    *result = v25;
    result[1] = &v53;
    *(v25 + 1) = result;
    v19 = 7;
    v53 = result;
    v55 = 7;
    if (a2[2])
    {
      result = a2[1];
      v27 = *(*a2 + 1);
      v28 = *result;
      v28[1] = v27;
      *v27 = v28;
      a2[2] = 0;
      if (result != a2)
      {
        do
        {
          v29 = result[1];
          operator delete(result);
          result = v29;
        }

        while (v29 != a2);
        goto LABEL_20;
      }

      v19 = 7;
LABEL_34:
      result = v53;
      v20 = v54;
      v50 = v53[1];
      v26 = *v54;
      goto LABEL_35;
    }

LABEL_27:
    v50 = &v53;
LABEL_35:
    v26[1] = v50;
    *v50 = v26;
    goto LABEL_36;
  }

  if (result == 1)
  {
    v53 = &v53;
    v54 = &v53;
    v55 = 0;
    v20 = operator new(0x18uLL);
    v20[4] = 0;
    *v20 = &v53;
    *(v20 + 1) = &v53;
    v53 = v20;
    v54 = v20;
    v55 = 1;
    v30 = operator new(0x18uLL);
    v30[4] = 1;
    *v30 = v20;
    *(v30 + 1) = &v53;
    *(v20 + 1) = v30;
    v53 = v30;
    v55 = 2;
    v31 = operator new(0x18uLL);
    v31[4] = 2;
    *v31 = v30;
    *(v31 + 1) = &v53;
    *(v30 + 1) = v31;
    v53 = v31;
    v55 = 3;
    v32 = operator new(0x18uLL);
    v32[4] = 3;
    *v32 = v31;
    *(v32 + 1) = &v53;
    *(v31 + 1) = v32;
    v53 = v32;
    v55 = 4;
    v33 = operator new(0x18uLL);
    v33[4] = 4;
    *v33 = v32;
    *(v33 + 1) = &v53;
    *(v32 + 1) = v33;
    v53 = v33;
    v55 = 5;
    v34 = operator new(0x18uLL);
    v34[4] = 5;
    *v34 = v33;
    *(v34 + 1) = &v53;
    *(v33 + 1) = v34;
    v53 = v34;
    v55 = 6;
    v35 = operator new(0x18uLL);
    v35[4] = 10;
    *v35 = v34;
    *(v35 + 1) = &v53;
    *(v34 + 1) = v35;
    v53 = v35;
    v55 = 7;
    v36 = operator new(0x18uLL);
    v36[4] = 12;
    *v36 = v35;
    *(v36 + 1) = &v53;
    *(v35 + 1) = v36;
    v53 = v36;
    v55 = 8;
    v37 = operator new(0x18uLL);
    v37[4] = 14;
    *v37 = v36;
    *(v37 + 1) = &v53;
    *(v36 + 1) = v37;
    v53 = v37;
    v55 = 9;
    v38 = operator new(0x18uLL);
    v38[4] = 11;
    v26 = &v53;
    *v38 = v37;
    *(v38 + 1) = &v53;
    *(v37 + 1) = v38;
    v53 = v38;
    v55 = 10;
    result = operator new(0x18uLL);
    *(result + 4) = 15;
    *result = v38;
    result[1] = &v53;
    *(v38 + 1) = result;
    v19 = 11;
    v53 = result;
    v55 = 11;
    if (a2[2])
    {
      result = a2[1];
      v39 = *(*a2 + 1);
      v40 = *result;
      v40[1] = v39;
      *v39 = v40;
      a2[2] = 0;
      if (result != a2)
      {
        do
        {
          v41 = result[1];
          operator delete(result);
          result = v41;
        }

        while (v41 != a2);
LABEL_20:
        if (!v55)
        {
          return result;
        }

        v19 = a2[2] + v55;
        goto LABEL_34;
      }

      v19 = 11;
      goto LABEL_34;
    }

    goto LABEL_27;
  }

  if (result == 2)
  {
    v53 = &v53;
    v54 = &v53;
    v55 = 0;
    v4 = operator new(0x18uLL);
    v4[4] = 6;
    *v4 = &v53;
    *(v4 + 1) = &v53;
    v53 = v4;
    v54 = v4;
    v55 = 1;
    v5 = operator new(0x18uLL);
    v5[4] = 7;
    *v5 = v4;
    *(v5 + 1) = &v53;
    *(v4 + 1) = v5;
    v53 = v5;
    v55 = 2;
    v6 = operator new(0x18uLL);
    v6[4] = 8;
    *v6 = v5;
    *(v6 + 1) = &v53;
    *(v5 + 1) = v6;
    v53 = v6;
    v55 = 3;
    v7 = operator new(0x18uLL);
    v7[4] = 9;
    *v7 = v6;
    *(v7 + 1) = &v53;
    *(v6 + 1) = v7;
    v53 = v7;
    v55 = 4;
    v8 = operator new(0x18uLL);
    v8[4] = 10;
    *v8 = v7;
    *(v8 + 1) = &v53;
    *(v7 + 1) = v8;
    v53 = v8;
    v55 = 5;
    result = capabilities::abs::supportsETSProtocol(v8);
    if (result)
    {
      result = operator new(0x18uLL);
      *(result + 4) = 13;
      v9 = v53;
      *result = v53;
      result[1] = &v53;
      v9[1] = result;
      v53 = result;
      ++v55;
    }

    if (a2[2])
    {
      result = a2[1];
      v10 = *(*a2 + 1);
      v11 = *result;
      v11[1] = v10;
      *v10 = v11;
      a2[2] = 0;
      if (result != a2)
      {
        do
        {
          v12 = result[1];
          operator delete(result);
          result = v12;
        }

        while (v12 != a2);
      }
    }

    v13 = v55;
    if (v55)
    {
      v15 = v53;
      v14 = v54;
      v16 = v53[1];
      v17 = *v54;
      v17[1] = v16;
      *v16 = v17;
      v18 = *a2;
      v18[1] = v14;
      *v14 = v18;
      *a2 = v15;
      v15[1] = a2;
      v19 = a2[2] + v13;
LABEL_37:
      a2[2] = v19;
    }
  }

  return result;
}

void sub_297966F10(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::list<BasebandTransport::Protocol>::~list(va);
  std::list<BasebandTransport::Protocol>::~list(v2);
  _Unwind_Resume(a1);
}

void sub_297966F30(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__list_imp<BasebandTransport::Protocol>::clear(va);
  std::list<BasebandTransport::Protocol>::~list(v2);
  _Unwind_Resume(a1);
}

uint64_t *std::list<BasebandTransport::Protocol>::~list(uint64_t *a1)
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
        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }

  return a1;
}

void BasebandTransport::getSupportedProtocolsAsStringLowerCase(BasebandTransport *this@<X0>, uint64_t *a2@<X8>)
{
  *a2 = a2;
  a2[1] = a2;
  a2[2] = 0;
  memset(v15, 170, sizeof(v15));
  BasebandTransport::getSupportedProtocols(this, v15);
  for (i = v15[1]; i != v15; i = i[1])
  {
    v4 = *(i + 4);
    memset(__p, 170, sizeof(__p));
    BasebandTransport::asString(v4, __p);
    if (SHIBYTE(__p[2]) >= 0)
    {
      v5 = (__p + HIBYTE(__p[2]));
    }

    else
    {
      v5 = (__p[0] + __p[1]);
    }

    if (SHIBYTE(__p[2]) >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    for (; v6 != v5; v6 = (v6 + 1))
    {
      *v6 = __tolower(*v6);
    }

    v7 = operator new(0x28uLL);
    v8 = v7;
    *v7 = 0;
    *(v7 + 1) = 0;
    if (SHIBYTE(__p[2]) < 0)
    {
      std::string::__init_copy_ctor_external((v7 + 16), __p[0], __p[1]);
    }

    else
    {
      *(v7 + 1) = *__p;
      *(v7 + 4) = __p[2];
    }

    v9 = *a2;
    *v8 = *a2;
    v8[1] = a2;
    *(v9 + 8) = v8;
    *a2 = v8;
    ++a2[2];
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (v15[2])
  {
    v10 = v15[1];
    v11 = *(v15[0] + 1);
    v12 = *v15[1];
    *(v12 + 8) = v11;
    *v11 = v12;
    v15[2] = 0;
    if (v10 != v15)
    {
      do
      {
        v13 = v10[1];
        operator delete(v10);
        v10 = v13;
      }

      while (v13 != v15);
    }
  }
}

void sub_297967160(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  v17 = v16;
  operator delete(v17);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::list<BasebandTransport::Protocol>::~list(&a15);
  std::list<std::string>::~list(v15);
  _Unwind_Resume(a1);
}

uint64_t BasebandTransport::asStringLowerCase@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  memset(a2, 170, 24);
  result = BasebandTransport::asString(a1, a2);
  v4 = *(a2 + 23);
  v5 = v4;
  v6 = a2 + v4;
  if (v5 >= 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = (*a2 + a2[1]);
  }

  if (v5 >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  for (; v8 != v7; ++v8)
  {
    result = __tolower(*v8);
    *v8 = result;
  }

  return result;
}

void sub_29796721C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

char *std::list<std::string>::~list(char *a1)
{
  if (*(a1 + 2))
  {
    v2 = *(a1 + 1);
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    *(a1 + 2) = 0;
    if (v2 != a1)
    {
      do
      {
        v6 = *(v2 + 1);
        if (v2[39] < 0)
        {
          operator delete(*(v2 + 2));
        }

        operator delete(v2);
        v2 = v6;
      }

      while (v6 != a1);
    }
  }

  return a1;
}

void BasebandTransport::getSupportedProtocolsAsString(BasebandTransport *this@<X0>, uint64_t *a2@<X8>)
{
  *a2 = a2;
  a2[1] = a2;
  a2[2] = 0;
  memset(v14, 170, sizeof(v14));
  BasebandTransport::getSupportedProtocols(this, v14);
  for (i = v14[1]; i != v14; i = i[1])
  {
    BasebandTransport::asString(*(i + 4), __p);
    v4 = operator new(0x28uLL);
    v5 = v4;
    *v4 = 0;
    *(v4 + 1) = 0;
    v6 = SHIBYTE(v13);
    if (SHIBYTE(v13) < 0)
    {
      std::string::__init_copy_ctor_external((v4 + 16), __p[0], __p[1]);
    }

    else
    {
      *(v4 + 1) = *__p;
      *(v4 + 4) = v13;
    }

    v7 = *a2;
    *v5 = *a2;
    v5[1] = a2;
    *(v7 + 8) = v5;
    *a2 = v5;
    ++a2[2];
    if (v6 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (v14[2])
  {
    v8 = v14[1];
    v9 = *(v14[0] + 1);
    v10 = *v14[1];
    *(v10 + 8) = v9;
    *v9 = v10;
    v14[2] = 0;
    if (v8 != v14)
    {
      do
      {
        v11 = v8[1];
        operator delete(v8);
        v8 = v11;
      }

      while (v11 != v14);
    }
  }
}

void sub_2979673F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  v18 = v16;
  operator delete(v18);
  operator delete(v17);
  std::list<BasebandTransport::Protocol>::~list(&a15);
  std::list<std::string>::~list(v15);
  _Unwind_Resume(a1);
}

uint64_t BasebandTransport::asString@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  switch(result)
  {
    case 0:
      a2[23] = 3;
      *a2 = 16976;
      a2[2] = 76;
      a2[3] = 0;
      break;
    case 1:
      a2[23] = 3;
      *a2 = 16979;
      a2[2] = 76;
      a2[3] = 0;
      break;
    case 2:
      a2[23] = 4;
      strcpy(a2, "DIAG");
      break;
    case 3:
      a2[23] = 4;
      strcpy(a2, "REFS");
      break;
    case 4:
      a2[23] = 5;
      *a2 = 1481985361;
      a2[4] = 49;
      a2[5] = 0;
      break;
    case 5:
      a2[23] = 5;
      *a2 = 1481985361;
      a2[4] = 50;
      a2[5] = 0;
      break;
    case 6:
      a2[23] = 3;
      *a2 = 20306;
      a2[2] = 77;
      a2[3] = 0;
      break;
    case 7:
      a2[23] = 4;
      strcpy(a2, "BOOT");
      break;
    case 8:
      a2[23] = 3;
      *a2 = 21057;
      a2[2] = 73;
      a2[3] = 0;
      break;
    case 9:
      a2[23] = 3;
      *a2 = 21587;
      a2[2] = 84;
      a2[3] = 0;
      break;
    case 10:
      a2[23] = 2;
      strcpy(a2, "AT");
      break;
    case 11:
      a2[23] = 4;
      strcpy(a2, "ADPL");
      break;
    case 12:
      a2[23] = 8;
      strcpy(a2, "MEDIACTL");
      break;
    case 13:
      a2[23] = 3;
      *a2 = 21573;
      a2[2] = 83;
      a2[3] = 0;
      break;
    case 14:
      a2[23] = 4;
      strcpy(a2, "GNSS");
      break;
    case 15:
      a2[23] = 4;
      strcpy(a2, "QDSS");
      break;
    case 16:
      a2[23] = 5;
      *a2 = 1414808402;
      a2[4] = 72;
      a2[5] = 0;
      break;
    case 17:
      a2[23] = 3;
      *a2 = 17217;
      a2[2] = 80;
      a2[3] = 0;
      break;
    case 18:
      a2[23] = 4;
      strcpy(a2, "VCOM");
      break;
    case 19:
      a2[23] = 4;
      strcpy(a2, "MIPC");
      break;
    case 20:
      a2[23] = 3;
      *a2 = 18500;
      a2[2] = 76;
      a2[3] = 0;
      break;
    case 21:
      a2[23] = 3;
      *a2 = 21837;
      a2[2] = 88;
      a2[3] = 0;
      break;
    case 22:
      a2[23] = 3;
      *a2 = 16710;
      a2[2] = 67;
      a2[3] = 0;
      break;
    case 23:
      a2[23] = 3;
      *a2 = 17734;
      a2[2] = 80;
      a2[3] = 0;
      break;
    case 24:
      a2[23] = 7;
      strcpy(a2, "IQTRACE");
      break;
    default:
      a2[23] = 7;
      strcpy(a2, "Unknown");
      break;
  }

  return result;
}

{
  if (result > 1)
  {
    if (result != 2)
    {
      if (result == 3)
      {
        a2[23] = 7;
        strcpy(a2, "Stalled");
        return result;
      }

      goto LABEL_8;
    }

    a2[23] = 5;
    *a2 = 1869771333;
    a2[4] = 114;
    a2[5] = 0;
  }

  else
  {
    if (result)
    {
      if (result == 1)
      {
        a2[23] = 5;
        *a2 = 1684104530;
        a2[4] = 121;
        a2[5] = 0;
        return result;
      }

LABEL_8:
      a2[23] = 7;
      strcpy(a2, "Unknown");
      return result;
    }

    a2[23] = 8;
    strcpy(a2, "NotReady");
  }

  return result;
}

uint64_t BasebandTransport::asProtocol(char *__s1)
{
  v1 = __s1;
  if ((__s1[23] & 0x80000000) == 0)
  {
    result = strcmp(__s1, "PBL");
    if (!result)
    {
      return result;
    }

    if (!strcmp(v1, "SBL"))
    {
      return 1;
    }

    if (strcasecmp(v1, "DIAG"))
    {
      if (strcasecmp(v1, "REFS"))
      {
        if (strcasecmp(v1, "QMUX1"))
        {
          if (strcasecmp(v1, "QMUX2"))
          {
            if (strcasecmp(v1, "ROM"))
            {
              if (strcasecmp(v1, "BOOT"))
              {
                if (strcasecmp(v1, "ARI"))
                {
                  if (strcasecmp(v1, "STT"))
                  {
                    if (strcasecmp(v1, "AT"))
                    {
                      if (strcasecmp(v1, "ADPL"))
                      {
                        if (strcasecmp(v1, "MEDIACTL"))
                        {
                          if (strcasecmp(v1, "ETS"))
                          {
                            if (strcasecmp(v1, "GNSS"))
                            {
                              if (strcasecmp(v1, "QDSS"))
                              {
                                if (strcasecmp(v1, "RCTTH"))
                                {
                                  if (strcasecmp(v1, "ACP"))
                                  {
                                    if (strcasecmp(v1, "VCOM"))
                                    {
                                      if (strcasecmp(v1, "MIPC"))
                                      {
                                        if (strcasecmp(v1, "DHL"))
                                        {
                                          if (strcasecmp(v1, "MUX"))
                                          {
                                            if (strcasecmp(v1, "FAC"))
                                            {
                                              if (strcasecmp(v1, "FEP"))
                                              {
                                                goto LABEL_26;
                                              }

                                              return 23;
                                            }

                                            return 22;
                                          }

                                          return 21;
                                        }

                                        return 20;
                                      }

                                      return 19;
                                    }

                                    return 18;
                                  }

                                  return 17;
                                }

                                return 16;
                              }

                              return 15;
                            }

                            return 14;
                          }

                          return 13;
                        }

                        return 12;
                      }

                      return 11;
                    }

                    return 10;
                  }

                  return 9;
                }

                return 8;
              }

              return 7;
            }

            return 6;
          }

          return 5;
        }

        return 4;
      }

      return 3;
    }

    return 2;
  }

  v1 = *__s1;
  result = strcmp(*__s1, "PBL");
  if (!result)
  {
    return result;
  }

  if (!strcmp(v1, "SBL"))
  {
    return 1;
  }

  if (!strcasecmp(v1, "DIAG"))
  {
    return 2;
  }

  if (!strcasecmp(v1, "REFS"))
  {
    return 3;
  }

  if (!strcasecmp(v1, "QMUX1"))
  {
    return 4;
  }

  if (!strcasecmp(v1, "QMUX2"))
  {
    return 5;
  }

  if (!strcasecmp(v1, "ROM"))
  {
    return 6;
  }

  if (!strcasecmp(v1, "BOOT"))
  {
    return 7;
  }

  if (!strcasecmp(v1, "ARI"))
  {
    return 8;
  }

  if (!strcasecmp(v1, "STT"))
  {
    return 9;
  }

  if (!strcasecmp(v1, "AT"))
  {
    return 10;
  }

  if (!strcasecmp(v1, "ADPL"))
  {
    return 11;
  }

  if (!strcasecmp(v1, "MEDIACTL"))
  {
    return 12;
  }

  if (!strcasecmp(v1, "ETS"))
  {
    return 13;
  }

  if (!strcasecmp(v1, "GNSS"))
  {
    return 14;
  }

  if (!strcasecmp(v1, "QDSS"))
  {
    return 15;
  }

  if (!strcasecmp(v1, "RCTTH"))
  {
    return 16;
  }

  if (!strcasecmp(v1, "ACP"))
  {
    return 17;
  }

  if (!strcasecmp(v1, "VCOM"))
  {
    return 18;
  }

  if (!strcasecmp(v1, "MIPC"))
  {
    return 19;
  }

  if (!strcasecmp(v1, "DHL"))
  {
    return 20;
  }

  if (!strcasecmp(v1, "MUX"))
  {
    return 21;
  }

  if (!strcasecmp(v1, "FAC"))
  {
    return 22;
  }

  if (!strcasecmp(v1, "FEP"))
  {
    return 23;
  }

LABEL_26:
  if (!strcasecmp(v1, "IQTRACE"))
  {
    return 24;
  }

  else
  {
    return 25;
  }
}

uint64_t BasebandTransport::getDefaultTransportIOReadSize(capabilities::radio *a1)
{
  v1 = a1;
  v2 = capabilities::radio::dal(a1);
  if (v2)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0x4000;
  }

  shouldUseMinBasebandTransportIOReadSize = capabilities::abs::shouldUseMinBasebandTransportIOReadSize(v2);
  if (shouldUseMinBasebandTransportIOReadSize)
  {
    return v3;
  }

  if (v1 == 17)
  {
    return 0x80000;
  }

  if (v1 == 21 || v1 == 20)
  {
    return 61440;
  }

  v6 = capabilities::radio::dal(shouldUseMinBasebandTransportIOReadSize);
  if (v1 == 10 && (v6 & 1) != 0)
  {
    return 3584;
  }

  if ((v1 - 19) > 5)
  {
    return 0x8000;
  }

  return dword_29797E008[v1 - 19];
}

uint64_t BasebandTransport::getDefaultTransportIOReadCount(capabilities::abs *a1)
{
  v1 = a1;
  shouldUseMinBasebandTransportIOReadCount = capabilities::abs::shouldUseMinBasebandTransportIOReadCount(a1);
  if (shouldUseMinBasebandTransportIOReadCount)
  {
    return 4;
  }

  switch(v1)
  {
    case 17:
      return 16;
    case 21:
      return 15;
    case 20:
      return 63;
  }

  v4 = capabilities::radio::dal(shouldUseMinBasebandTransportIOReadCount);
  if (v1 == 10 && (v4 & 1) != 0)
  {
    return 15;
  }

  if (v1 <= 18)
  {
    if (v1 != 2)
    {
      if (v1 == 15 || v1 == 16)
      {
        return 36;
      }

      return 4;
    }

    return 16;
  }

  result = 31;
  if (v1 > 22)
  {
    if (v1 != 23)
    {
      if (v1 == 24)
      {
        return 86;
      }

      return 4;
    }
  }

  else if (v1 != 19)
  {
    return 15;
  }

  return result;
}

double BasebandTransport::Status::Status(BasebandTransport::Status *this)
{
  *this = 0;
  *(this + 4) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

{
  *this = 0;
  *(this + 4) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

double BasebandTransport::Status::init(BasebandTransport::Status *this)
{
  *this = 0;
  *(this + 4) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

uint64_t BasebandTransport::Status::toString@<X0>(BasebandTransport::Status *this@<X0>, _BYTE *a2@<X8>)
{
  v41 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v40[7] = v4;
  v40[8] = v4;
  v40[5] = v4;
  v40[6] = v4;
  v40[3] = v4;
  v40[4] = v4;
  v40[1] = v4;
  v40[2] = v4;
  v39 = v4;
  v40[0] = v4;
  *v37 = v4;
  v38 = v4;
  v35 = v4;
  v36 = v4;
  v33 = v4;
  v34 = v4;
  v32 = v4;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v32);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v33, "State: ", 7);
  v5 = *this;
  if (*this > 1)
  {
    if (v5 == 2)
    {
      v6 = 5;
      v31 = 5;
      LODWORD(__p[0]) = 1869771333;
      v7 = 114;
      goto LABEL_12;
    }

    if (v5 == 3)
    {
      v6 = 7;
      v31 = 7;
      LODWORD(__p[0]) = 1818326099;
      v8 = 1684368492;
LABEL_9:
      *(__p + 3) = v8;
      goto LABEL_13;
    }

LABEL_8:
    v6 = 7;
    v31 = 7;
    LODWORD(__p[0]) = 1852534357;
    v8 = 1853321070;
    goto LABEL_9;
  }

  if (!v5)
  {
    v6 = 8;
    v31 = 8;
    __p[0] = 0x7964616552746F4ELL;
    goto LABEL_13;
  }

  if (v5 != 1)
  {
    goto LABEL_8;
  }

  v6 = 5;
  v31 = 5;
  LODWORD(__p[0]) = 1684104530;
  v7 = 121;
LABEL_12:
  BYTE4(__p[0]) = v7;
LABEL_13:
  *(__p + v6) = 0;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v33, __p, v6);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v33, ", ", 2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v33, "Async: ", 7);
  *(&v33 + *(v33 - 24) + 8) |= 1u;
  v9 = MEMORY[0x29C2768B0](&v33, *(this + 4));
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, ", ", 2);
  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "Total Rx: ", 10);
  v12 = MEMORY[0x29C2768E0](v11, *(this + 1) >> 10);
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " KB, ", 5);
  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "Total Tx: ", 10);
  v15 = MEMORY[0x29C2768E0](v14, *(this + 2) >> 10);
  v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, " KB, ", 5);
  v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "Total RX: ", 10);
  v18 = MEMORY[0x29C2768E0](v17, *(this + 1));
  v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " B, ", 4);
  v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "Total TX: ", 10);
  v21 = MEMORY[0x29C2768E0](v20, *(this + 2));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, " B", 2);
  if ((v31 & 0x80000000) == 0)
  {
    v22 = BYTE8(v39);
    if ((BYTE8(v39) & 0x10) == 0)
    {
      goto LABEL_15;
    }

LABEL_18:
    v24 = v39;
    if (v39 < *(&v36 + 1))
    {
      *&v39 = *(&v36 + 1);
      v24 = *(&v36 + 1);
    }

    v25 = v36;
    v23 = v24 - v36;
    if ((v24 - v36) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_33;
    }

    goto LABEL_21;
  }

  operator delete(__p[0]);
  v22 = BYTE8(v39);
  if ((BYTE8(v39) & 0x10) != 0)
  {
    goto LABEL_18;
  }

LABEL_15:
  if ((v22 & 8) == 0)
  {
    v23 = 0;
    a2[23] = 0;
    goto LABEL_29;
  }

  v25 = *(&v34 + 1);
  v23 = *(&v35 + 1) - *(&v34 + 1);
  if (*(&v35 + 1) - *(&v34 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
  {
LABEL_33:
    std::string::__throw_length_error[abi:ne200100]();
  }

LABEL_21:
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

    v27 = operator new(v26);
    *(a2 + 1) = v23;
    *(a2 + 2) = v26 | 0x8000000000000000;
    *a2 = v27;
    a2 = v27;
    goto LABEL_28;
  }

  a2[23] = v23;
  if (v23)
  {
LABEL_28:
    memmove(a2, v25, v23);
  }

LABEL_29:
  a2[v23] = 0;
  *&v32 = *MEMORY[0x29EDC9528];
  v28 = *(MEMORY[0x29EDC9528] + 72);
  *(&v32 + *(v32 - 24)) = *(MEMORY[0x29EDC9528] + 64);
  *&v33 = v28;
  *(&v33 + 1) = MEMORY[0x29EDC9570] + 16;
  if (SHIBYTE(v38) < 0)
  {
    operator delete(v37[1]);
  }

  *(&v33 + 1) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(&v34);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C276A20](v40);
}

void sub_2979683B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

void sub_2979683C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a16);
  _Unwind_Resume(a1);
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](uint64_t a1)
{
  *(a1 + 176) = 0;
  v2 = MEMORY[0x29EDC9590] + 104;
  *(a1 + 128) = MEMORY[0x29EDC9590] + 104;
  v3 = a1 + 16;
  v4 = MEMORY[0x29EDC9590] + 64;
  *(a1 + 16) = MEMORY[0x29EDC9590] + 64;
  v5 = MEMORY[0x29EDC9528];
  v6 = *(MEMORY[0x29EDC9528] + 24);
  v7 = *(MEMORY[0x29EDC9528] + 16);
  *a1 = v7;
  *(a1 + *(v7 - 24)) = v6;
  *(a1 + 8) = 0;
  v8 = (a1 + *(*a1 - 24));
  std::ios_base::init(v8, (a1 + 24));
  v9 = MEMORY[0x29EDC9590] + 24;
  v8[1].__vftable = 0;
  v8[1].__fmtflags_ = -1;
  v10 = v5[5];
  v11 = v5[4];
  *(a1 + 16) = v11;
  *(v3 + *(v11 - 24)) = v10;
  v12 = v5[1];
  *a1 = v12;
  *(a1 + *(v12 - 24)) = v5[6];
  *a1 = v9;
  *(a1 + 128) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = MEMORY[0x29EDC9568] + 16;
  MEMORY[0x29C2769D0](a1 + 32);
  *(a1 + 88) = 0;
  v13 = a1 + 88;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 24) = MEMORY[0x29EDC9570] + 16;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 120) = 24;
  *(a1 + 40) = a1 + 88;
  *(a1 + 48) = a1 + 88;
  *(a1 + 56) = a1 + 88;
  *(a1 + 112) = a1 + 88;
  std::string::append((a1 + 88), 0x16uLL, 0);
  v14 = *(a1 + 111);
  if (v14 < 0)
  {
    v14 = *(a1 + 96);
  }

  *(a1 + 64) = v13;
  *(a1 + 72) = v13;
  *(a1 + 80) = v13 + v14;
  return a1;
}

void sub_2979686F8(_Unwind_Exception *a1)
{
  if (*(v1 + 111) < 0)
  {
    operator delete(*v3);
  }

  *(v1 + 24) = v4;
  std::locale::~locale((v1 + 32));
  std::iostream::~basic_iostream();
  MEMORY[0x29C276A20](v2);
  _Unwind_Resume(a1);
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1)
{
  v2 = MEMORY[0x29EDC9528];
  v3 = *MEMORY[0x29EDC9528];
  *a1 = *MEMORY[0x29EDC9528];
  v4 = *(v2 + 72);
  *(a1 + *(v3 - 24)) = *(v2 + 64);
  *(a1 + 16) = v4;
  *(a1 + 24) = MEMORY[0x29EDC9570] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale((a1 + 32));
  std::iostream::~basic_iostream();
  MEMORY[0x29C276A20](a1 + 128);
  return a1;
}

uint64_t BasebandTransport::Parameters::toString@<X0>(BasebandTransport::Parameters *this@<X0>, _BYTE *a2@<X8>)
{
  v45 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v44[7] = v4;
  v44[8] = v4;
  v44[5] = v4;
  v44[6] = v4;
  v44[3] = v4;
  v44[4] = v4;
  v44[1] = v4;
  v44[2] = v4;
  v43 = v4;
  v44[0] = v4;
  *v41 = v4;
  v42 = v4;
  v39 = v4;
  v40 = v4;
  v37 = v4;
  v38 = v4;
  v36 = v4;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v36);
  BasebandTransport::asString(*this, v31);
  v5 = v32;
  if ((v32 & 0x80u) == 0)
  {
    v6 = v32;
  }

  else
  {
    v6 = v31[1];
  }

  v7 = v6 + 10;
  if (v6 + 10 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v7 < 0x17)
  {
    v34 = 8250;
    v35 = 0;
    HIBYTE(v35) = v6 + 10;
    __p = *"Protocol: ";
    v10 = &v34 + 2;
    if (!v6)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if ((v7 | 7) == 0x17)
    {
      v8 = 25;
    }

    else
    {
      v8 = (v7 | 7) + 1;
    }

    v9 = operator new(v8);
    v34 = v6 + 10;
    v35 = v8 | 0x8000000000000000;
    __p = v9;
    *(v9 + 4) = 8250;
    *v9 = *"Protocol: ";
    v10 = v9 + 10;
  }

  if (v5 >= 0)
  {
    v11 = v31;
  }

  else
  {
    v11 = v31[0];
  }

  memmove(v10, v11, v6);
LABEL_15:
  v10[v6] = 0;
  if (v35 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if (v35 >= 0)
  {
    v13 = HIBYTE(v35);
  }

  else
  {
    v13 = v34;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v37, p_p, v13);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v37, ", ", 2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v37, "Powersave: ", 11);
  *(&v37 + *(v37 - 24) + 8) |= 1u;
  v14 = MEMORY[0x29C2768B0](&v37, *(this + 4));
  v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, ", ", 2);
  v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "Create Timeout: ", 16);
  v17 = MEMORY[0x29C2768D0](v16, *(this + 1));
  v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, " sec, ", 6);
  v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "IO Size: ", 9);
  v20 = MEMORY[0x29C2768C0](v19, *(this + 4) >> 10);
  v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, " KB, ", 5);
  v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "Num Pending Reads: ", 19);
  MEMORY[0x29C2768C0](v22, *(this + 5));
  if (SHIBYTE(v35) < 0)
  {
    operator delete(__p);
    if ((v5 & 0x80000000) == 0)
    {
LABEL_23:
      v23 = BYTE8(v43);
      if ((BYTE8(v43) & 0x10) == 0)
      {
        goto LABEL_24;
      }

LABEL_28:
      v25 = v43;
      if (v43 < *(&v40 + 1))
      {
        *&v43 = *(&v40 + 1);
        v25 = *(&v40 + 1);
      }

      v26 = v40;
      v24 = v25 - v40;
      if ((v25 - v40) > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_43;
      }

      goto LABEL_31;
    }
  }

  else if ((v5 & 0x80000000) == 0)
  {
    goto LABEL_23;
  }

  operator delete(v31[0]);
  v23 = BYTE8(v43);
  if ((BYTE8(v43) & 0x10) != 0)
  {
    goto LABEL_28;
  }

LABEL_24:
  if ((v23 & 8) == 0)
  {
    v24 = 0;
    a2[23] = 0;
    goto LABEL_39;
  }

  v26 = *(&v38 + 1);
  v24 = *(&v39 + 1) - *(&v38 + 1);
  if (*(&v39 + 1) - *(&v38 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
  {
LABEL_43:
    std::string::__throw_length_error[abi:ne200100]();
  }

LABEL_31:
  if (v24 >= 0x17)
  {
    if ((v24 | 7) == 0x17)
    {
      v27 = 25;
    }

    else
    {
      v27 = (v24 | 7) + 1;
    }

    v28 = operator new(v27);
    *(a2 + 1) = v24;
    *(a2 + 2) = v27 | 0x8000000000000000;
    *a2 = v28;
    a2 = v28;
    goto LABEL_38;
  }

  a2[23] = v24;
  if (v24)
  {
LABEL_38:
    memmove(a2, v26, v24);
  }

LABEL_39:
  a2[v24] = 0;
  *&v36 = *MEMORY[0x29EDC9528];
  v29 = *(MEMORY[0x29EDC9528] + 72);
  *(&v36 + *(v36 - 24)) = *(MEMORY[0x29EDC9528] + 64);
  *&v37 = v29;
  *(&v37 + 1) = MEMORY[0x29EDC9570] + 16;
  if (SHIBYTE(v42) < 0)
  {
    operator delete(v41[1]);
  }

  *(&v37 + 1) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(&v38);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C276A20](v44);
}

void sub_297968DE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(va);
  _Unwind_Resume(a1);
}

void sub_297968DF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  if ((v18 & 0x80000000) == 0)
  {
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a18);
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a18);
  _Unwind_Resume(a1);
}

uint64_t BasebandTransport::BasebandTransport(uint64_t a1, NSObject **a2, dispatch_qos_class_t a3)
{
  *a1 = &unk_2A1E59CB0;
  ctu::OsLogContext::OsLogContext(v19, "com.apple.telephony.abm", "ipc.bb");
  v6 = dispatch_queue_attr_make_with_qos_class(0, a3, 0);
  v7 = dispatch_queue_create("ipc.bb", v6);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = v7;
  if (v7)
  {
    v8 = v7;
    dispatch_retain(v7);
    *(a1 + 32) = 0;
    dispatch_release(v8);
  }

  else
  {
    *(a1 + 32) = 0;
  }

  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x29C2764D0](a1 + 40, v20);
  MEMORY[0x29C2764E0](v20);
  ctu::OsLogContext::~OsLogContext(v19);
  *a1 = &unk_2A1E59CB0;
  *(a1 + 48) = 25;
  *(a1 + 52) = 0;
  *(a1 + 56) = 10;
  v10 = capabilities::radio::dal(v9);
  v11 = v10;
  shouldUseMinBasebandTransportIOReadSize = capabilities::abs::shouldUseMinBasebandTransportIOReadSize(v10);
  if (v11)
  {
    v13 = 1024;
  }

  else
  {
    v13 = 0x4000;
  }

  if ((shouldUseMinBasebandTransportIOReadSize & 1) == 0)
  {
    shouldUseMinBasebandTransportIOReadSize = capabilities::radio::dal(shouldUseMinBasebandTransportIOReadSize);
    v13 = 0x8000;
  }

  *(a1 + 64) = v13;
  shouldUseMinBasebandTransportIOReadCount = capabilities::abs::shouldUseMinBasebandTransportIOReadCount(shouldUseMinBasebandTransportIOReadSize);
  if ((shouldUseMinBasebandTransportIOReadCount & 1) == 0)
  {
    capabilities::radio::dal(shouldUseMinBasebandTransportIOReadCount);
  }

  *(a1 + 68) = 4;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  v15 = *a2;
  *(a1 + 88) = 0;
  *(a1 + 96) = v15;
  if (v15)
  {
    dispatch_retain(v15);
  }

  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  v16 = *MEMORY[0x29EDB8ED8];
  Controller = TelephonyBasebandCreateController();
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 208) = Controller;
  *(a1 + 229) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 240) = 0;
  *(a1 + 264) = dispatch_group_create();
  *(a1 + 272) = 0;
  *(a1 + 276) = 0;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 309) = 0;
  *(a1 + 352) = a3;
  *(a1 + 360) = 0;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0;
  return a1;
}

void sub_297969014(_Unwind_Exception *a1)
{
  v5 = v1[14];
  if (v5)
  {
    _Block_release(v5);
  }

  if (*v3)
  {
    _Block_release(*v3);
  }

  v6 = v1[12];
  if (v6)
  {
    dispatch_release(v6);
  }

  v7 = v1[11];
  if (v7)
  {
    _Block_release(v7);
  }

  MEMORY[0x29C2764E0](v1 + 5);
  ctu::SharedSynchronizable<HSFilerRT_Internal>::~SharedSynchronizable(v2);
  _Unwind_Resume(a1);
}

void BasebandTransport::~BasebandTransport(BasebandTransport *this)
{
  *this = &unk_2A1E59CB0;
  v2 = *(this + 28);
  if (v2)
  {
    dispatch_source_cancel(v2);
    dispatch_release(*(this + 28));
    *(this + 28) = 0;
    v3 = *(this + 5);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&dword_297948000, v3, OS_LOG_TYPE_DEFAULT, "#I Status report disabled", v17, 2u);
    }
  }

  (*(*this + 48))(this);
  v4 = *(this + 26);
  if (v4)
  {
    CFRelease(v4);
    *(this + 26) = 0;
  }

  v5 = *(this + 30);
  if (v5)
  {
    operator delete[](v5);
    *(this + 30) = 0;
  }

  v6 = *(this + 45);
  if (v6)
  {
    dispatch_release(v6);
  }

  v7 = *(this + 33);
  if (v7)
  {
    dispatch_release(v7);
  }

  v8 = *(this + 32);
  if (v8)
  {
    dispatch_release(v8);
  }

  v9 = *(this + 27);
  if (v9)
  {
    _Block_release(v9);
  }

  v10 = *(this + 14);
  if (v10)
  {
    _Block_release(v10);
  }

  v11 = *(this + 13);
  if (v11)
  {
    _Block_release(v11);
  }

  v12 = *(this + 12);
  if (v12)
  {
    dispatch_release(v12);
  }

  v13 = *(this + 11);
  if (v13)
  {
    _Block_release(v13);
  }

  MEMORY[0x29C2764E0](this + 40);
  v14 = *(this + 4);
  if (v14)
  {
    dispatch_release(v14);
  }

  v15 = *(this + 3);
  if (v15)
  {
    dispatch_release(v15);
  }

  v16 = *(this + 2);
  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }
}

{
  BasebandTransport::~BasebandTransport(this);

  operator delete(v1);
}

void BasebandTransport::timerOff_sync(BasebandTransport *this)
{
  v2 = *(this + 28);
  if (v2)
  {
    dispatch_source_cancel(v2);
    dispatch_release(*(this + 28));
    *(this + 28) = 0;
    v3 = *(this + 5);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_297948000, v3, OS_LOG_TYPE_DEFAULT, "#I Status report disabled", v4, 2u);
    }
  }
}

void BasebandTransport::create(capabilities::radio *a1@<X0>, dispatch_qos_class_t a2@<W1>, BasebandTransportICE **a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  v6 = capabilities::radio::vendor(a1);
  if ((v6 - 3) >= 2)
  {
    if (v6 != 2)
    {
      return;
    }

    v7 = operator new(0x1E0uLL);
    v12 = *a1;
    object = v12;
    if (v12)
    {
      dispatch_retain(v12);
    }

    BasebandTransportICE::BasebandTransportICE(v7, &object, a2);
    v13 = operator new(0x20uLL);
    v13->__shared_owners_ = 0;
    p_shared_owners = &v13->__shared_owners_;
    v13->__vftable = &unk_2A1E5A0C8;
    v13->__shared_weak_owners_ = 0;
    v13[1].__vftable = v7;
    v15 = *(v7 + 2);
    if (v15)
    {
      if (v15->__shared_owners_ == -1)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        *(v7 + 1) = v7;
        *(v7 + 2) = v13;
        std::__shared_weak_count::__release_weak(v15);
        if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
        {
LABEL_14:
          (v13->__on_zero_shared)(v13);
          std::__shared_weak_count::__release_weak(v13);
          *a3 = v7;
          a3[1] = v13;
          v8 = object;
          if (!object)
          {
            goto LABEL_20;
          }

          goto LABEL_19;
        }
      }
    }

    else
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      *(v7 + 1) = v7;
      *(v7 + 2) = v13;
      if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
      {
        goto LABEL_14;
      }
    }

    *a3 = v7;
    a3[1] = v13;
    v8 = object;
    if (!object)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v7 = operator new(0x170uLL);
  v8 = *a1;
  v16 = v8;
  if (v8)
  {
    dispatch_retain(v8);
  }

  BasebandTransport::BasebandTransport(v7, &v16, a2);
  v9 = operator new(0x20uLL);
  v9->__shared_owners_ = 0;
  v10 = &v9->__shared_owners_;
  v9->__vftable = &unk_2A1E5A118;
  v9->__shared_weak_owners_ = 0;
  v9[1].__vftable = v7;
  v11 = *(v7 + 2);
  if (!v11)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    *(v7 + 1) = v7;
    *(v7 + 2) = v9;
    if (atomic_fetch_add(v10, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (v11->__shared_owners_ == -1)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    *(v7 + 1) = v7;
    *(v7 + 2) = v9;
    std::__shared_weak_count::__release_weak(v11);
    if (!atomic_fetch_add(v10, 0xFFFFFFFFFFFFFFFFLL))
    {
LABEL_17:
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
    }
  }

LABEL_18:
  *a3 = v7;
  a3[1] = v9;
  if (v8)
  {
LABEL_19:
    dispatch_release(v8);
  }

LABEL_20:
  BasebandTransport::init(v7);
}

void sub_297969570(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, std::shared_ptr<BasebandTransportICE> ctu::SharedSynchronizable<BasebandTransport>::make_shared_ptr<BasebandTransportICE>(BasebandTransportICE*)::{lambda(BasebandTransportICE*)#1}::operator() const(BasebandTransportICE*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void BasebandTransport::init(BasebandTransport *this)
{
  v5 = *(this + 1);
  v3 = *(this + 2);
  v4 = this + 8;
  if (!v3 || (v6 = std::__shared_weak_count::lock(v3)) == 0)
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

  v11[0] = MEMORY[0x29EDCA5F8];
  v11[1] = 1174405120;
  v11[2] = ___ZN17BasebandTransport4initEv_block_invoke;
  v11[3] = &__block_descriptor_tmp_56;
  v11[4] = this;
  v11[5] = v5;
  v12 = v7;
  v13 = v11;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI17BasebandTransportE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  block[3] = &__block_descriptor_tmp_110;
  block[4] = v4;
  block[5] = &v13;
  v9 = *(this + 3);
  if (!*(this + 4))
  {
    dispatch_sync(v9, block);
    v10 = v12;
    if (!v12)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  dispatch_async_and_wait(v9, block);
  v10 = v12;
  if (v12)
  {
LABEL_7:
    std::__shared_weak_count::__release_weak(v10);
  }

LABEL_8:
  std::__shared_weak_count::__release_weak(v7);
}

void ___ZN17BasebandTransport4initEv_block_invoke(capabilities::ipc *a1)
{
  v2 = *(a1 + 4);
  if (capabilities::ipc::supportsPCI(a1))
  {
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1174405120;
    aBlock[2] = ___ZN17BasebandTransport4initEv_block_invoke_2;
    aBlock[3] = &__block_descriptor_tmp_4;
    v4 = *(a1 + 5);
    v3 = *(a1 + 6);
    aBlock[4] = v2;
    aBlock[5] = v4;
    v14 = v3;
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v5 = _Block_copy(aBlock);
    v6 = *(v2 + 104);
    *(v2 + 104) = v5;
    if (v6)
    {
      _Block_release(v6);
    }

    v11[0] = MEMORY[0x29EDCA5F8];
    v11[1] = 1174405120;
    v11[2] = ___ZN17BasebandTransport4initEv_block_invoke_48;
    v11[3] = &__block_descriptor_tmp_52;
    v8 = *(a1 + 5);
    v7 = *(a1 + 6);
    v11[4] = v2;
    v11[5] = v8;
    v12 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v9 = _Block_copy(v11);
    v10 = *(v2 + 112);
    *(v2 + 112) = v9;
    if (v10)
    {
      _Block_release(v10);
    }

    if (v12)
    {
      std::__shared_weak_count::__release_weak(v12);
    }

    if (v14)
    {
      std::__shared_weak_count::__release_weak(v14);
    }
  }
}

void ___ZN17BasebandTransport4initEv_block_invoke_2(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  v29 = *MEMORY[0x29EDCA608];
  v5 = a1[6];
  if (v5)
  {
    v9 = a1[4];
    v10 = std::__shared_weak_count::lock(v5);
    if (v10)
    {
      v11 = v10;
      if (a1[5])
      {
        v12 = *(v9 + 40);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109632;
          v24 = a2;
          v25 = 2048;
          v26 = a3;
          v27 = 2048;
          v28 = a4;
          _os_log_error_impl(&dword_297948000, v12, OS_LOG_TYPE_ERROR, "PCI Transport Status: 0x%x (0x%08lx, 0x%08lx)", buf, 0x1Cu);
        }

        *(v9 + 272) = 2 * (a2 != 0);
        *(v9 + 296) = vsubq_s64(*(v9 + 280), *(v9 + 320));
        v13 = *(v9 + 216);
        if (v13)
        {
          v14 = _Block_copy(v13);
          v15 = v14;
          v20 = *(v9 + 272);
          v21 = *(v9 + 288);
          v22 = *(v9 + 304);
          v16 = *(v9 + 96);
          v17 = v14 ? _Block_copy(v14) : 0;
          v18 = operator new(0x30uLL);
          *v18 = v17;
          *(v18 + 8) = v20;
          *(v18 + 24) = v21;
          *(v18 + 5) = v22;
          dispatch_async_f(v16, v18, _ZZN8dispatch5asyncIZZZN17BasebandTransport4initEvEUb_EUb0_E3__0EEvP16dispatch_queue_sNSt3__110unique_ptrIT_NS5_14default_deleteIS7_EEEEENUlPvE_8__invokeESB_);
          if (v15)
          {
            _Block_release(v15);
          }
        }
      }

      if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v11->__on_zero_shared)(v11);
        std::__shared_weak_count::__release_weak(v11);
      }
    }
  }

  v19 = *MEMORY[0x29EDCA608];
}

void sub_297969ADC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

int64x2_t BasebandTransport::updateDeltas_sync(BasebandTransport *this)
{
  result = vsubq_s64(*(this + 280), *(this + 20));
  *(this + 296) = result;
  return result;
}

uint64_t __copy_helper_block_e8_40c42_ZTSNSt3__18weak_ptrI17BasebandTransportEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c42_ZTSNSt3__18weak_ptrI17BasebandTransportEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZN17BasebandTransport4initEv_block_invoke_48(void *a1, int a2, void *a3, unsigned int a4)
{
  v32 = *MEMORY[0x29EDCA608];
  v6 = a1[4];
  v28 = 0;
  v7 = a1[6];
  if (v7 && (v28 = std::__shared_weak_count::lock(v7)) != 0 && (v10 = a1[5]) != 0)
  {
    v11 = *(v10 + 264);
    if (v11)
    {
      dispatch_retain(*(v10 + 264));
      dispatch_group_enter(v11);
    }

    if (a2)
    {
      v12 = *(v6 + 40);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(__p) = 67109120;
        HIDWORD(__p) = a2;
        _os_log_debug_impl(&dword_297948000, v12, OS_LOG_TYPE_DEBUG, "#D Async read error 0x%08x", &__p, 8u);
      }
    }

    else
    {
      *(v6 + 280) += a4;
      v14 = *(v6 + 88);
      if (v14)
      {
        v15 = _Block_copy(v14);
        v16 = *(v6 + 72);
        if (v16)
        {
          __p = 0;
          v30 = 0;
          v31 = 0;
          (*(*v16 + 8))(v16, a3, a4, &__p);
          v17 = *(v6 + 96);
          if (v15)
          {
            v18 = _Block_copy(v15);
          }

          else
          {
            v18 = 0;
          }

          v22 = __p;
          v23 = v30 - __p;
          if (v30 == __p)
          {
            v25 = 0;
            v24 = 0;
          }

          else
          {
            if ((v23 & 0x8000000000000000) != 0)
            {
              std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
            }

            v24 = operator new(v30 - __p);
            v25 = &v24[v23];
            memcpy(v24, v22, v23);
          }

          v26 = operator new(0x20uLL);
          *v26 = v18;
          v26[1] = v24;
          v26[2] = v25;
          v26[3] = v25;
          dispatch_async_f(v17, v26, _ZZN8dispatch5asyncIZZZN17BasebandTransport4initEvEUb_EUb1_E3__1EEvP16dispatch_queue_sNSt3__110unique_ptrIT_NS5_14default_deleteIS7_EEEEENUlPvE_8__invokeESB_);
          if (__p)
          {
            v30 = __p;
            operator delete(__p);
          }
        }

        else
        {
          v19 = *(v6 + 80);
          v20 = *(v6 + 96);
          if (v15)
          {
            v21 = _Block_copy(v15);
          }

          else
          {
            v21 = 0;
          }

          v27 = operator new(0x18uLL);
          *v27 = v21;
          v27[1] = a3;
          *(v27 + 4) = a4;
          *(v27 + 20) = v19;
          dispatch_async_f(v20, v27, _ZZN8dispatch5asyncIZZZN17BasebandTransport4initEvEUb_EUb1_E3__2EEvP16dispatch_queue_sNSt3__110unique_ptrIT_NS5_14default_deleteIS7_EEEEENUlPvE_8__invokeESB_);
          a3 = 0;
        }

        if (v15)
        {
          _Block_release(v15);
        }
      }
    }

    if (a3 && (*(v6 + 80) & 1) == 0)
    {
      free(a3);
    }

    if (v11)
    {
      dispatch_group_leave(v11);
      dispatch_release(v11);
    }
  }

  else if (a3)
  {
    free(a3);
  }

  if (v28 && !atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v28->__on_zero_shared)(v28);
    std::__shared_weak_count::__release_weak(v28);
  }

  v13 = *MEMORY[0x29EDCA608];
}

void sub_297969E30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t BasebandTransport::open(BasebandTransport *a1, __int128 *a2, void **a3)
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2000000000;
  v20 = 0;
  BasebandTransport::stopReader(a1);
  v12[0] = MEMORY[0x29EDCA5F8];
  v12[1] = 1174405120;
  v12[2] = ___ZN17BasebandTransport4openENS_10ParametersEN8dispatch5blockIU13block_pointerFvPhjEEE_block_invoke;
  v12[3] = &__block_descriptor_tmp_57;
  v12[5] = a1;
  v6 = a2[1];
  v13 = *a2;
  v14 = v6;
  v15 = *(a2 + 4);
  v7 = *a3;
  if (*a3)
  {
    v7 = _Block_copy(v7);
  }

  aBlock = v7;
  v12[4] = &v17;
  v21 = v12;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI17BasebandTransportE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  block[3] = &__block_descriptor_tmp_110;
  block[4] = a1 + 8;
  block[5] = &v21;
  v8 = *(a1 + 3);
  if (*(a1 + 4))
  {
    dispatch_async_and_wait(v8, block);
    v9 = *(v18 + 24);
    v10 = aBlock;
    if (!aBlock)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  dispatch_sync(v8, block);
  v9 = *(v18 + 24);
  v10 = aBlock;
  if (aBlock)
  {
LABEL_7:
    _Block_release(v10);
  }

LABEL_8:
  _Block_object_dispose(&v17, 8);
  return v9;
}

void sub_29796A028(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void BasebandTransport::stopReader(BasebandTransport *this)
{
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2000000000;
  v15 = 0;
  v2 = (this + 8);
  v13[0] = MEMORY[0x29EDCA5F8];
  v13[1] = 1107296256;
  v13[2] = ___ZN17BasebandTransport10stopReaderEv_block_invoke;
  v13[3] = &__block_descriptor_tmp_80;
  v13[4] = v14;
  v13[5] = this;
  v16 = v13;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI17BasebandTransportE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  block[3] = &__block_descriptor_tmp_110;
  block[4] = this + 8;
  block[5] = &v16;
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

  v12[0] = MEMORY[0x29EDCA5F8];
  v12[1] = 1107296256;
  v12[2] = ___ZN17BasebandTransport10stopReaderEv_block_invoke_81;
  v12[3] = &__block_descriptor_tmp_84_0;
  v12[4] = v14;
  v12[5] = this;
  ctu::SharedSynchronizable<BasebandTransport>::execute_wrapped(v2, v12);
  v5 = *(this + 33);
  if (v5)
  {
    v6 = *(this + 5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(block[0]) = 0;
      _os_log_impl(&dword_297948000, v6, OS_LOG_TYPE_DEFAULT, "#I Waiting for reader to be stopped", block, 2u);
      v5 = *(this + 33);
    }

    v7 = dispatch_time(0, 3000000000);
    if (dispatch_group_wait(v5, v7))
    {
      (*(*this + 48))(this);
      v8 = *(this + 5);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        LOWORD(block[0]) = 0;
        _os_log_error_impl(&dword_297948000, v8, OS_LOG_TYPE_ERROR, "Timeout waiting for read to unblock, freed transport to force read unblock", block, 2u);
      }
    }

    else
    {
      v10 = *(this + 30);
      if (v10)
      {
        operator delete[](v10);
        *(this + 30) = 0;
        v11 = *(this + 32);
        *(this + 32) = 0;
        if (v11)
        {
          dispatch_release(v11);
        }
      }
    }

    v9 = *(this + 5);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(block[0]) = 0;
      _os_log_impl(&dword_297948000, v9, OS_LOG_TYPE_DEFAULT, "#I Reader stopped", block, 2u);
    }
  }

  _Block_object_dispose(v14, 8);
}

void sub_29796A2CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___ZN17BasebandTransport4openENS_10ParametersEN8dispatch5blockIU13block_pointerFvPhjEEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(v2 + 224);
  if (v3)
  {
    dispatch_source_cancel(v3);
    dispatch_release(*(v2 + 224));
    *(v2 + 224) = 0;
    v4 = *(v2 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9[0]) = 0;
      _os_log_impl(&dword_297948000, v4, OS_LOG_TYPE_DEFAULT, "#I Status report disabled", v9, 2u);
    }
  }

  (*(*v2 + 48))(v2);
  *(v2 + 272) = 0;
  *(v2 + 276) = 0;
  *(v2 + 320) = 0u;
  *(v2 + 336) = 0u;
  *(v2 + 280) = 0u;
  *(v2 + 296) = 0u;
  *(v2 + 309) = 0;
  v5 = *(a1 + 80);
  v6 = *(a1 + 64);
  *(v2 + 48) = *(a1 + 48);
  *(v2 + 64) = v6;
  *(v2 + 80) = v5;
  v7 = *(a1 + 88);
  if (v7)
  {
    v7 = _Block_copy(v7);
  }

  v8 = *(v2 + 88);
  *(v2 + 88) = v7;
  if (v8)
  {
    _Block_release(v8);
  }

  if (*(v2 + 48) != 25)
  {
    if (capabilities::ipc::supportsPCI(v7))
    {
      *(*(*(a1 + 32) + 8) + 24) = BasebandTransport::openPCI_sync(v2);
    }

    if (*(*(*(a1 + 32) + 8) + 24) == 1)
    {
      BasebandTransport::timerOn_sync(v2);
    }

    else
    {
      (*(*v2 + 48))(v2);
    }

    v9[0] = MEMORY[0x29EDCA5F8];
    v9[1] = 0x40000000;
    v9[2] = ___ZN17BasebandTransport9dumpStateEb_block_invoke;
    v9[3] = &__block_descriptor_tmp_98;
    v9[4] = v2;
    v10 = 0;
    ctu::SharedSynchronizable<BasebandTransport>::execute_wrapped((v2 + 8), v9);
  }
}

uint64_t BasebandTransport::openPCI_sync(BasebandTransport *this)
{
  v50 = *MEMORY[0x29EDCA608];
  v2 = *(this + 2);
  if (!v2 || (v3 = std::__shared_weak_count::lock(v2)) == 0)
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v4 = v3;
  atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v4);
  }

  inited = TelephonyBasebandPCITransportInitParameters();
  v6 = *(this + 14);
  shouldUseMinBasebandTransportIOReadCount = capabilities::abs::traceTransportTimeoutScalingFactor(inited);
  v8 = 1000 * v6;
  if ((((1000 * v6) * shouldUseMinBasebandTransportIOReadCount) & 0xFFFFFFFF00000000) != 0)
  {
    v9 = *(this + 5);
    shouldUseMinBasebandTransportIOReadCount = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (shouldUseMinBasebandTransportIOReadCount)
    {
      *buf = 67109120;
      *&buf[4] = v8;
      _os_log_error_impl(&dword_297948000, v9, OS_LOG_TYPE_ERROR, "Scaled create timeout overflowed, falling back to unscaled value: %u", buf, 8u);
    }
  }

  v36 = *(this + 3);
  v10 = *(this + 17);
  if (!v10)
  {
    v11 = *(this + 12);
    shouldUseMinBasebandTransportIOReadCount = capabilities::abs::shouldUseMinBasebandTransportIOReadCount(shouldUseMinBasebandTransportIOReadCount);
    if (shouldUseMinBasebandTransportIOReadCount)
    {
LABEL_10:
      v10 = 4;
      goto LABEL_29;
    }

    if (v11 != 17)
    {
      if (v11 == 21)
      {
        goto LABEL_19;
      }

      if (v11 == 20)
      {
        v10 = 63;
        goto LABEL_29;
      }

      shouldUseMinBasebandTransportIOReadCount = capabilities::radio::dal(shouldUseMinBasebandTransportIOReadCount);
      v12 = v11 == 10 ? shouldUseMinBasebandTransportIOReadCount : 0;
      if (v12)
      {
        goto LABEL_19;
      }

      if (v11 > 18)
      {
        v10 = 31;
        if (v11 > 22)
        {
          if (v11 == 23)
          {
            goto LABEL_29;
          }

          if (v11 == 24)
          {
            v10 = 86;
            goto LABEL_29;
          }

          goto LABEL_10;
        }

        if (v11 == 19)
        {
          goto LABEL_29;
        }

LABEL_19:
        v10 = 15;
        goto LABEL_29;
      }

      if (v11 != 2)
      {
        if (v11 == 15 || v11 == 16)
        {
          v10 = 36;
          goto LABEL_29;
        }

        goto LABEL_10;
      }
    }

    v10 = 16;
  }

LABEL_29:
  v38 = v10;
  v13 = *(this + 16);
  if (!v13)
  {
    v14 = *(this + 12);
    v15 = capabilities::radio::dal(shouldUseMinBasebandTransportIOReadCount);
    v16 = v15;
    shouldUseMinBasebandTransportIOReadCount = capabilities::abs::shouldUseMinBasebandTransportIOReadSize(v15);
    v13 = v16 ? 1024 : 0x4000;
    if ((shouldUseMinBasebandTransportIOReadCount & 1) == 0)
    {
      if (v14 == 17)
      {
        v13 = 0x80000;
      }

      else if (v14 == 21 || v14 == 20)
      {
        v13 = 61440;
      }

      else
      {
        shouldUseMinBasebandTransportIOReadCount = capabilities::radio::dal(shouldUseMinBasebandTransportIOReadCount);
        if (v14 == 10)
        {
          v17 = shouldUseMinBasebandTransportIOReadCount;
        }

        else
        {
          v17 = 0;
        }

        if (v17)
        {
          v13 = 3584;
        }

        else if ((v14 - 19) > 5)
        {
          v13 = 0x8000;
        }

        else
        {
          v13 = dword_29797E008[v14 - 19];
        }
      }
    }
  }

  v39 = v13;
  v41 = *(this + 88);
  v18 = *(this + 12);
  if (v18 != 20 && v18 != 9)
  {
    goto LABEL_57;
  }

  v48[0] = &unk_2A1E5A198;
  v49 = v48;
  inactive = dispatch_workloop_create_inactive("com.apple.BasebandTransport.workloop");
  *buf = inactive;
  if (!v49)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v49 + 48))(v49, buf);
  dispatch_activate(inactive);
  v20 = *(this + 45);
  *(this + 45) = inactive;
  if (v20)
  {
    dispatch_release(v20);
  }

  shouldUseMinBasebandTransportIOReadCount = v49;
  if (v49 != v48)
  {
    if (v49)
    {
      shouldUseMinBasebandTransportIOReadCount = (*(*v49 + 40))(v49);
    }

    if (*(this + 45))
    {
      goto LABEL_56;
    }

LABEL_59:
    v21 = *(this + 5);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_297948000, v21, OS_LOG_TYPE_ERROR, "Failed to create workloop", buf, 2u);
    }

    goto LABEL_95;
  }

  shouldUseMinBasebandTransportIOReadCount = (*(*v49 + 32))(v49);
  if (!*(this + 45))
  {
    goto LABEL_59;
  }

LABEL_56:
  v18 = *(this + 12);
LABEL_57:
  switch(v18)
  {
    case 0:
    case 1:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 18:
    case 19:
    case 20:
    case 21:
    case 22:
    case 23:
      goto LABEL_70;
    case 2:
      shouldUseMinBasebandTransportIOReadCount = capabilities::diag::supportsQDSS(shouldUseMinBasebandTransportIOReadCount);
      goto LABEL_70;
    case 10:
      shouldUseMinBasebandTransportIOReadCount = capabilities::radio::dal(shouldUseMinBasebandTransportIOReadCount);
LABEL_70:
      v25 = v38;
      if (v38 < 0x41)
      {
        goto LABEL_71;
      }

      goto LABEL_63;
    case 24:
      v25 = v38;
      if (v38 >= 0x57)
      {
LABEL_63:
        v22 = *(this + 5);
        if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_95;
        }

        BasebandTransport::asString(*(this + 12), buf);
        if (v43 >= 0)
        {
          v23 = buf;
        }

        else
        {
          v23 = *buf;
        }

        *v44 = 136315394;
        v45 = v23;
        v46 = 2048;
        v47 = v25;
        v24 = "%s: invalid transport io read count (%lu)";
        goto LABEL_92;
      }

LABEL_71:
      if (capabilities::radio::dal(shouldUseMinBasebandTransportIOReadCount))
      {
        v26 = 1024;
      }

      else
      {
        v26 = 0x4000;
      }

      if (v39 > 0x100000 || v26 > v39)
      {
        v22 = *(this + 5);
        if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_95;
        }

        BasebandTransport::asString(*(this + 12), buf);
        if (v43 >= 0)
        {
          v31 = buf;
        }

        else
        {
          v31 = *buf;
        }

        *v44 = 136315394;
        v45 = v31;
        v46 = 2048;
        v47 = v39;
        v24 = "%s: invalid transport io read size (%lu)";
LABEL_92:
        _os_log_error_impl(&dword_297948000, v22, OS_LOG_TYPE_ERROR, v24, v44, 0x16u);
        if ((v43 & 0x80000000) == 0)
        {
          goto LABEL_95;
        }

        goto LABEL_93;
      }

      v37 = *(this + 13);
      if (*(this + 11))
      {
        *(this + 276) = 1;
        v40 = *(this + 14);
      }

      v27 = *(this + 5);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_297948000, v27, OS_LOG_TYPE_DEFAULT, "#I opening transport", buf, 2u);
      }

      if (!TelephonyBasebandPCITransportCreate())
      {
        *(this + 68) = 2;
        v32 = *(this + 5);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          BasebandTransport::asString(*(this + 12), buf);
          v35 = v43 >= 0 ? buf : *buf;
          *v44 = 136315138;
          v45 = v35;
          _os_log_error_impl(&dword_297948000, v32, OS_LOG_TYPE_ERROR, "%s: transport open failed", v44, 0xCu);
          if (v43 < 0)
          {
LABEL_93:
            operator delete(*buf);
          }
        }

LABEL_95:
        v28 = 0;
        goto LABEL_96;
      }

      v28 = 1;
      *(this + 68) = 1;
      v29 = *(this + 5);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        BasebandTransport::asString(*(this + 12), buf);
        if (v43 >= 0)
        {
          v30 = buf;
        }

        else
        {
          v30 = *buf;
        }

        *v44 = 136315394;
        v45 = v30;
        v46 = 1024;
        LODWORD(v47) = v39;
        _os_log_impl(&dword_297948000, v29, OS_LOG_TYPE_DEFAULT, "#I %s: transport successfully opened with read io size as %u", v44, 0x12u);
        if (v43 < 0)
        {
          operator delete(*buf);
        }
      }

LABEL_96:
      std::__shared_weak_count::__release_weak(v4);
      v33 = *MEMORY[0x29EDCA608];
      return v28;
    default:
      goto LABEL_95;
  }
}

void sub_29796ACE0(_Unwind_Exception *a1)
{
  std::function<void ()(dispatch_workloop_s *)>::~function(v2 - 88);
  std::__shared_weak_count::__release_weak(v1);
  _Unwind_Resume(a1);
}

void BasebandTransport::timerOn_sync(BasebandTransport *this)
{
  v22 = *MEMORY[0x29EDCA608];
  v2 = *(this + 28);
  if (v2)
  {
    dispatch_source_cancel(v2);
    dispatch_release(*(this + 28));
    *(this + 28) = 0;
    v3 = *(this + 5);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_297948000, v3, OS_LOG_TYPE_DEFAULT, "#I Status report disabled", buf, 2u);
    }
  }

  if (*(this + 68) == 1)
  {
    v4 = *(this + 58);
    if (v4 && *(this + 27))
    {
      v5 = 1000000000 * v4;
      v6 = dispatch_source_create(MEMORY[0x29EDCA5D0], 1uLL, 0, *(this + 3));
      *(this + 28) = v6;
      v7 = dispatch_time(0, v5);
      dispatch_source_set_timer(v6, v7, v5, 0xBEBC200uLL);
      v8 = *(this + 2);
      if (!v8 || (v9 = *(this + 1), (v10 = std::__shared_weak_count::lock(v8)) == 0))
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

      v13 = *(this + 28);
      handler[0] = MEMORY[0x29EDCA5F8];
      handler[1] = 1174405120;
      handler[2] = ___ZN17BasebandTransport12timerOn_syncEv_block_invoke;
      handler[3] = &__block_descriptor_tmp_97;
      handler[4] = this;
      handler[5] = v9;
      v19 = v11;
      atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
      dispatch_source_set_event_handler(v13, handler);
      dispatch_activate(*(this + 28));
      v14 = *(this + 5);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *(this + 58);
        *buf = 67109120;
        v21 = v15;
        _os_log_impl(&dword_297948000, v14, OS_LOG_TYPE_DEFAULT, "#I Status report enabled(%d sec)", buf, 8u);
      }

      if (v19)
      {
        std::__shared_weak_count::__release_weak(v19);
      }

      std::__shared_weak_count::__release_weak(v11);
    }
  }

  else
  {
    v16 = *(this + 5);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_297948000, v16, OS_LOG_TYPE_DEFAULT, "#I Invalid state for status report enable.  Ignoring enable request.", buf, 2u);
    }
  }

  v17 = *MEMORY[0x29EDCA608];
}

void BasebandTransport::dumpState(BasebandTransport *this, char a2)
{
  v2[0] = MEMORY[0x29EDCA5F8];
  v2[1] = 0x40000000;
  v2[2] = ___ZN17BasebandTransport9dumpStateEb_block_invoke;
  v2[3] = &__block_descriptor_tmp_98;
  v2[4] = this;
  v3 = a2;
  ctu::SharedSynchronizable<BasebandTransport>::execute_wrapped(this + 1, v2);
}

void *__copy_helper_block_e8_32r88c45_ZTSN8dispatch5blockIU13block_pointerFvPhjEEE(uint64_t a1, uint64_t a2)
{
  _Block_object_assign((a1 + 32), *(a2 + 32), 8);
  result = *(a2 + 88);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 88) = result;
  return result;
}

void __destroy_helper_block_e8_32r88c45_ZTSN8dispatch5blockIU13block_pointerFvPhjEEE(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = *(a1 + 32);

  _Block_object_dispose(v3, 8);
}

uint64_t BasebandTransport::write(BasebandTransport *this, const unsigned __int8 *a2, uint64_t a3, unsigned int *a4)
{
  v39 = 0;
  v40 = &v39;
  v41 = 0x2000000000;
  v42 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2000000000;
  v38 = 0;
  v7 = this + 8;
  v34[0] = MEMORY[0x29EDCA5F8];
  v34[1] = 1107296256;
  v34[2] = ___ZN17BasebandTransport5writeEPKhmPjbj_block_invoke;
  v34[3] = &__block_descriptor_tmp_58;
  v34[5] = &v39;
  v34[6] = this;
  v34[4] = &v35;
  v44 = v34;
  block = MEMORY[0x29EDCA5F8];
  p_block = 0x40000000;
  v28 = ___ZNK3ctu20SharedSynchronizableI17BasebandTransportE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  v29 = &__block_descriptor_tmp_110;
  v30 = (this + 8);
  __p = &v44;
  v9 = this + 24;
  v8 = *(this + 3);
  if (*(v9 + 1))
  {
    dispatch_async_and_wait(v8, &block);
    if (*(v40 + 24) == 1)
    {
      goto LABEL_3;
    }

LABEL_10:
    v14 = 0;
    goto LABEL_19;
  }

  dispatch_sync(v8, &block);
  if (*(v40 + 24) != 1)
  {
    goto LABEL_10;
  }

LABEL_3:
  block = 0;
  p_block = &block;
  v28 = 0x4002000000;
  v29 = __Block_byref_object_copy__0;
  v30 = __Block_byref_object_dispose__0;
  __p = 0;
  v32 = 0;
  v33 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2000000000;
  v25 = a2;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2000000000;
  v21 = a3;
  v17[0] = MEMORY[0x29EDCA5F8];
  v17[1] = 1107296256;
  v17[2] = ___ZN17BasebandTransport5writeEPKhmPjbj_block_invoke_59;
  v17[3] = &__block_descriptor_tmp_60;
  v17[8] = a2;
  v17[9] = a3;
  v17[4] = &block;
  v17[5] = &v22;
  v17[6] = &v18;
  v17[7] = this;
  v43 = v17;
  v44 = MEMORY[0x29EDCA5F8];
  v45 = 0x40000000;
  v46 = ___ZNK3ctu20SharedSynchronizableI17BasebandTransportE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  v47 = &__block_descriptor_tmp_110;
  v48 = v7;
  v49 = &v43;
  v10 = *(this + 3);
  if (*(this + 4))
  {
    dispatch_async_and_wait(v10, &v44);
    if (v19[3])
    {
      goto LABEL_5;
    }
  }

  else
  {
    dispatch_sync(v10, &v44);
    if (v19[3])
    {
LABEL_5:
      v11 = v36[3];
      if (*v11)
      {
        v12 = (*v11)(v11, v23[3]);
        *(v40 + 24) = v12;
        if (v12)
        {
          v16[0] = MEMORY[0x29EDCA5F8];
          v16[1] = 1107296256;
          v16[2] = ___ZN17BasebandTransport5writeEPKhmPjbj_block_invoke_61;
          v16[3] = &__block_descriptor_tmp_62;
          v16[4] = &v18;
          v16[5] = this;
          v43 = v16;
          v44 = MEMORY[0x29EDCA5F8];
          v45 = 0x40000000;
          v46 = ___ZNK3ctu20SharedSynchronizableI17BasebandTransportE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
          v47 = &__block_descriptor_tmp_110;
          v48 = v7;
          v49 = &v43;
          v13 = *(this + 3);
          if (*(this + 4))
          {
            dispatch_async_and_wait(v13, &v44);
          }

          else
          {
            dispatch_sync(v13, &v44);
          }

          v14 = *(v40 + 24);
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        v14 = 0;
        *(v40 + 24) = 0;
      }

      goto LABEL_17;
    }
  }

  v14 = 1;
LABEL_17:
  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&block, 8);
  if (__p)
  {
    v32 = __p;
    operator delete(__p);
  }

LABEL_19:
  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&v39, 8);
  return v14 & 1;
}

void sub_29796B474(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *__p, uint64_t a39)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a33, 8);
  if (__p)
  {
    a39 = __p;
    operator delete(__p);
  }

  _Block_object_dispose((v39 - 232), 8);
  _Block_object_dispose((v39 - 200), 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZN17BasebandTransport5writeEPKhmPjbj_block_invoke(void *a1)
{
  v2 = a1[6];
  *(*(a1[4] + 8) + 24) = v2 + 120;
  v3 = *(v2 + 176);
  if (v3)
  {
    result = v3();
    *(*(a1[5] + 8) + 24) = result;
  }

  else
  {
    result = 0;
    *(*(a1[5] + 8) + 24) = 0;
  }

  return result;
}

__n128 __Block_byref_object_copy__0(void *a1, uint64_t a2)
{
  a1[5] = 0;
  a1[6] = 0;
  a1[7] = 0;
  result = *(a2 + 40);
  *(a1 + 5) = result;
  a1[7] = *(a2 + 56);
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  return result;
}

void __Block_byref_object_dispose__0(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    *(a1 + 48) = v2;
    operator delete(v2);
  }
}

void *___ZN17BasebandTransport5writeEPKhmPjbj_block_invoke_59(void *result)
{
  v1 = *(result[7] + 72);
  if (v1)
  {
    v2 = result;
    result = (**v1)(*(result[7] + 72), result[8], result[9], *(result[4] + 8) + 40);
    *(*(v2[5] + 8) + 24) = *(*(v2[4] + 8) + 40);
    *(*(v2[6] + 8) + 24) = *(*(v2[4] + 8) + 48) - *(*(v2[4] + 8) + 40);
  }

  return result;
}

void __copy_helper_block_e8_32r40r48r(uint64_t a1, uint64_t a2)
{
  _Block_object_assign((a1 + 32), *(a2 + 32), 8);
  _Block_object_assign((a1 + 40), *(a2 + 40), 8);
  v4 = *(a2 + 48);

  _Block_object_assign((a1 + 48), v4, 8);
}

void __destroy_helper_block_e8_32r40r48r(uint64_t a1)
{
  _Block_object_dispose(*(a1 + 48), 8);
  _Block_object_dispose(*(a1 + 40), 8);
  v2 = *(a1 + 32);

  _Block_object_dispose(v2, 8);
}

void ___ZN17BasebandTransport5writeEPKhmPjbj_block_invoke_61(uint64_t a1)
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v3 = *(v2 + 288) + *(*(*(a1 + 32) + 8) + 24);
  *(v2 + 288) = v3;
  v4 = *(v2 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v6 = *(*(*(a1 + 32) + 8) + 24);
    v7 = 134218240;
    v8 = v6;
    v9 = 2048;
    v10 = v3;
    _os_log_debug_impl(&dword_297948000, v4, OS_LOG_TYPE_DEBUG, "#D Written: %zu bytes, for a total of: %llu", &v7, 0x16u);
  }

  v5 = *MEMORY[0x29EDCA608];
}

uint64_t BasebandTransport::read(BasebandTransport *this, unsigned __int8 *a2, unint64_t a3, unsigned int *a4)
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x2000000000;
  v25 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2000000000;
  v21 = 0;
  v6 = (this + 8);
  v17[0] = MEMORY[0x29EDCA5F8];
  v17[1] = 1107296256;
  v17[2] = ___ZN17BasebandTransport4readEPhmPjbj_block_invoke;
  v17[3] = &__block_descriptor_tmp_65_0;
  v17[5] = &v22;
  v17[6] = this;
  v17[4] = &v18;
  v26 = v17;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI17BasebandTransportE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  block[3] = &__block_descriptor_tmp_110;
  block[4] = this + 8;
  block[5] = &v26;
  v8 = this + 24;
  v7 = *(this + 3);
  if (*(v8 + 1))
  {
    dispatch_async_and_wait(v7, block);
    v9 = v23;
    if (*(v23 + 24) != 1)
    {
      goto LABEL_14;
    }
  }

  else
  {
    dispatch_sync(v7, block);
    v9 = v23;
    if (*(v23 + 24) != 1)
    {
      goto LABEL_14;
    }
  }

  v10 = v19[3];
  if (v10 && (v11 = *(v10 + 8)) != 0)
  {
    v12 = v11();
    *(v23 + 24) = v12;
    if (v12)
    {
      v16[0] = MEMORY[0x29EDCA5F8];
      v16[1] = 0x40000000;
      v16[2] = ___ZN17BasebandTransport4readEPhmPjbj_block_invoke_66;
      v16[3] = &__block_descriptor_tmp_67_0;
      v16[4] = this;
      v16[5] = a4;
      ctu::SharedSynchronizable<BasebandTransport>::execute_wrapped(v6, v16);
      goto LABEL_14;
    }

    v10 = v19[3];
    if (!v10)
    {
      goto LABEL_14;
    }
  }

  else
  {
    *(v9 + 24) = 0;
    if (!v10)
    {
      goto LABEL_14;
    }
  }

  v13 = *(v10 + 24);
  if (v13)
  {
    v13();
  }

LABEL_14:
  v14 = *(v23 + 24);
  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v22, 8);
  return v14;
}

void sub_29796B9D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a22, 8);
  _Block_object_dispose(&a26, 8);
  _Unwind_Resume(a1);
}

void ___ZN17BasebandTransport4readEPhmPjbj_block_invoke(void *a1)
{
  v2 = a1[6];
  *(*(a1[4] + 8) + 24) = v2 + 120;
  v3 = *(v2 + 176);
  if (v3)
  {
    if (v3())
    {
      LOBYTE(v3) = *(v2 + 276) ^ 1;
    }

    else
    {
      LOBYTE(v3) = 0;
    }
  }

  *(*(a1[5] + 8) + 24) = v3 & 1;
  if (*(v2 + 276) == 1)
  {
    v4 = *(v2 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_error_impl(&dword_297948000, v4, OS_LOG_TYPE_ERROR, "Explicit reads not allowed in async mode", v5, 2u);
    }
  }
}

uint64_t BasebandTransport::close(BasebandTransport *this)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 1;
  *(this + 58) = 0;
  v2 = this + 8;
  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 0x40000000;
  v9[2] = ___ZN17BasebandTransport5closeEv_block_invoke;
  v9[3] = &__block_descriptor_tmp_68;
  v9[4] = this;
  v14 = v9;
  block = MEMORY[0x29EDCA5F8];
  v16 = 0x40000000;
  v17 = ___ZNK3ctu20SharedSynchronizableI17BasebandTransportE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  v18 = &__block_descriptor_tmp_110;
  v19 = this + 8;
  v20 = &v14;
  v4 = this + 24;
  v3 = *(this + 3);
  if (*(v4 + 1))
  {
    dispatch_async_and_wait(v3, &block);
  }

  else
  {
    dispatch_sync(v3, &block);
  }

  BasebandTransport::stopReader(this);
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 1107296256;
  v8[2] = ___ZN17BasebandTransport5closeEv_block_invoke_2;
  v8[3] = &__block_descriptor_tmp_71;
  v8[4] = &v10;
  v8[5] = this;
  v14 = v8;
  block = MEMORY[0x29EDCA5F8];
  v16 = 0x40000000;
  v17 = ___ZNK3ctu20SharedSynchronizableI17BasebandTransportE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  v18 = &__block_descriptor_tmp_110;
  v19 = v2;
  v20 = &v14;
  v5 = *(this + 3);
  if (*(this + 4))
  {
    dispatch_async_and_wait(v5, &block);
  }

  else
  {
    dispatch_sync(v5, &block);
  }

  v6 = *(v11 + 24);
  _Block_object_dispose(&v10, 8);
  return v6;
}

void sub_29796BC98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___ZN17BasebandTransport5closeEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 224);
  if (v2)
  {
    dispatch_source_cancel(v2);
    dispatch_release(*(v1 + 224));
    *(v1 + 224) = 0;
    v3 = *(v1 + 40);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_297948000, v3, OS_LOG_TYPE_DEFAULT, "#I Status report disabled", v4, 2u);
    }
  }
}

uint64_t ___ZN17BasebandTransport5closeEv_block_invoke_2(uint64_t a1)
{
  result = (*(**(a1 + 40) + 48))(*(a1 + 40));
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t BasebandTransport::operator*(uint64_t a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 1107296256;
  v5[2] = ___ZN17BasebandTransportdeEv_block_invoke;
  v5[3] = &__block_descriptor_tmp_74;
  v5[4] = &v6;
  v5[5] = a1;
  v10 = v5;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI17BasebandTransportE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  block[3] = &__block_descriptor_tmp_110;
  block[4] = a1 + 8;
  block[5] = &v10;
  v2 = a1 + 24;
  v1 = *(a1 + 24);
  if (*(v2 + 8))
  {
    dispatch_async_and_wait(v1, block);
  }

  else
  {
    dispatch_sync(v1, block);
  }

  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t BasebandTransport::close_sync(BasebandTransport *this)
{
  v15 = *MEMORY[0x29EDCA608];
  v2 = *(this + 22);
  if (v2 && v2(this + 120))
  {
    *(this + 68) = 0;
    v3 = TelephonyUtilTransportFree();
    *(this + 120) = 0u;
    *(this + 136) = 0u;
    *(this + 152) = 0u;
    *(this + 168) = 0u;
    *(this + 184) = 0u;
    *(this + 25) = 0;
    v4 = *(this + 5);
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }
  }

  else
  {
    v3 = 1;
    v4 = *(this + 5);
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }
  }

  BasebandTransport::asString(*(this + 12), __p);
  v5 = __p[0];
  v6 = "error";
  if (v10 >= 0)
  {
    v5 = __p;
  }

  if (v3)
  {
    v6 = "success";
  }

  *buf = 136315394;
  v12 = v5;
  v13 = 2080;
  v14 = v6;
  _os_log_impl(&dword_297948000, v4, OS_LOG_TYPE_DEFAULT, "#I Transport close %s: %s", buf, 0x16u);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

LABEL_12:
  v7 = *MEMORY[0x29EDCA608];
  return v3;
}

uint64_t BasebandTransport::startReader_sync(BasebandTransport *this)
{
  if (!*(this + 30))
  {
    v2 = *(this + 12);
    v3 = capabilities::radio::dal(this);
    if (v3)
    {
      v4 = 1024;
    }

    else
    {
      v4 = 0x4000;
    }

    shouldUseMinBasebandTransportIOReadSize = capabilities::abs::shouldUseMinBasebandTransportIOReadSize(v3);
    if ((shouldUseMinBasebandTransportIOReadSize & 1) == 0)
    {
      if (v2 == 17)
      {
        v4 = 0x80000;
      }

      else if (v2 == 21 || v2 == 20)
      {
        v4 = 61440;
      }

      else
      {
        v6 = capabilities::radio::dal(shouldUseMinBasebandTransportIOReadSize);
        if (v2 == 10 && (v6 & 1) != 0)
        {
          v4 = 3584;
        }

        else if ((v2 - 19) > 5)
        {
          v4 = 0x8000;
        }

        else
        {
          v4 = qword_29797DFD8[v2 - 19];
        }
      }
    }

    *(this + 31) = v4;
    *(this + 30) = operator new[](v4);
    v7 = dispatch_queue_create("ipc.bb", 0);
    v8 = *(this + 32);
    *(this + 32) = v7;
    if (v8)
    {
      dispatch_release(v8);
    }
  }

  *(this + 236) = 1;
  *(this + 276) = 1;
  BasebandTransport::queueRead_sync(this);
  return *(this + 236);
}

void BasebandTransport::queueRead_sync(BasebandTransport *this)
{
  v2 = *(this + 2);
  if (!v2 || (v3 = *(this + 1), (v4 = std::__shared_weak_count::lock(v2)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v5 = v4;
  v6 = *(this + 33);
  if (v6)
  {
    dispatch_retain(*(this + 33));
    dispatch_group_enter(v6);
  }

  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 1174405120;
  v8[2] = ___ZN17BasebandTransport14queueRead_syncEv_block_invoke;
  v8[3] = &__block_descriptor_tmp_85;
  v8[4] = this;
  v8[5] = v3;
  v9 = v5;
  atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  group = v6;
  if (v6)
  {
    dispatch_retain(v6);
    dispatch_group_enter(group);
  }

  dispatch_async(*(this + 32), v8);
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  v7 = v9;
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  if (v6)
  {
    dispatch_group_leave(v6);
    dispatch_release(v6);
  }

  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }
}

uint64_t ___ZN17BasebandTransport10stopReaderEv_block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  *(*(*(result + 32) + 8) + 24) = *(v1 + 236);
  *(v1 + 236) = 0;
  *(v1 + 276) = 0;
  return result;
}

uint64_t ___ZN17BasebandTransport10stopReaderEv_block_invoke_81(uint64_t result)
{
  v1 = *(result + 40);
  v2 = *(v1 + 176);
  if (v2)
  {
    v3 = result;
    result = v2(v1 + 120);
    if (result)
    {
      if (*(*(*(v3 + 32) + 8) + 24) == 1)
      {
        v4 = *(v1 + 136);
        if (v4)
        {

          return v4(v1 + 120);
        }
      }
    }
  }

  return result;
}

void ___ZN17BasebandTransport14queueRead_syncEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 56);
  v3 = v2;
  if (v2)
  {
    dispatch_retain(v2);
    dispatch_group_enter(v2);
  }

  BasebandTransport::read_sync(v1, &v3);
  if (v2)
  {
    dispatch_group_leave(v2);

    dispatch_release(v2);
  }
}

void sub_29796C3B8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    dispatch_group_leave(v1);
    dispatch_release(v1);
  }

  _Unwind_Resume(exception_object);
}

void BasebandTransport::read_sync(uint64_t a1, NSObject **a2)
{
  v6 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = (a1 + 8);
  v34 = v6;
  if (!v4 || (v8 = std::__shared_weak_count::lock(v4), (v35 = v8) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v33 = 0;
  v9 = *(a1 + 128);
  if (v9)
  {
    v10 = v8;
    v11 = *(a1 + 240);
    v12 = *(a1 + 48);
    v13 = capabilities::radio::dal(v8);
    v14 = v13;
    shouldUseMinBasebandTransportIOReadSize = capabilities::abs::shouldUseMinBasebandTransportIOReadSize(v13);
    if (v14)
    {
      v16 = 1024;
    }

    else
    {
      v16 = 0x4000;
    }

    if ((shouldUseMinBasebandTransportIOReadSize & 1) == 0)
    {
      if (v12 == 17)
      {
        v16 = 0x80000;
      }

      else if (v12 == 21 || v12 == 20)
      {
        v16 = 61440;
      }

      else
      {
        v17 = capabilities::radio::dal(shouldUseMinBasebandTransportIOReadSize);
        if (v12 == 10)
        {
          v18 = v17;
        }

        else
        {
          v18 = 0;
        }

        if (v18)
        {
          v16 = 3584;
        }

        else if ((v12 - 19) > 5)
        {
          v16 = 0x8000;
        }

        else
        {
          v16 = dword_29797E008[v12 - 19];
        }
      }
    }

    v19 = v9(a1 + 120, v11, v16, &v33, 0, 0xFFFFFFFFLL, 0);
    if (v33)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    if (v20 == 1)
    {
      v31[0] = MEMORY[0x29EDCA5F8];
      v31[1] = 0x40000000;
      v31[2] = ___ZN17BasebandTransport9read_syncEN8dispatch13group_sessionE_block_invoke;
      v31[3] = &__block_descriptor_tmp_86;
      v31[4] = a1;
      v32 = v33;
      ctu::SharedSynchronizable<BasebandTransport>::execute_wrapped(v5, v31);
      block[0] = MEMORY[0x29EDCA5F8];
      block[1] = 1174405120;
      block[2] = ___ZN17BasebandTransport9read_syncEN8dispatch13group_sessionE_block_invoke_2;
      block[3] = &__block_descriptor_tmp_89;
      block[4] = a1;
      block[5] = v6;
      v28 = v10;
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      v21 = *a2;
      group = v21;
      if (v21)
      {
        dispatch_retain(v21);
        dispatch_group_enter(group);
      }

      v30 = v33;
      dispatch_sync(*(a1 + 96), block);
      if (group)
      {
        dispatch_group_leave(group);
        if (group)
        {
          dispatch_release(group);
        }
      }

      v22 = v28;
      if (v28 && !atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v22->__on_zero_shared)(v22);
        std::__shared_weak_count::__release_weak(v22);
      }
    }
  }

  v25[0] = MEMORY[0x29EDCA5F8];
  v25[1] = 1174405120;
  v25[2] = ___ZN17BasebandTransport9read_syncEN8dispatch13group_sessionE_block_invoke_90;
  v25[3] = &__block_descriptor_tmp_91;
  v25[4] = a1;
  v25[5] = v34;
  v26 = v35;
  if (v35)
  {
    atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  ctu::SharedSynchronizable<BasebandTransport>::execute_wrapped(v5, v25);
  v23 = v26;
  if (v26 && !atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v23->__on_zero_shared)(v23);
    std::__shared_weak_count::__release_weak(v23);
  }

  v24 = v35;
  if (v35)
  {
    if (!atomic_fetch_add(&v35->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v24->__on_zero_shared)(v24);
      std::__shared_weak_count::__release_weak(v24);
    }
  }
}

void __copy_helper_block_e8_40c45_ZTSNSt3__110shared_ptrI17BasebandTransportEE56c30_ZTSN8dispatch13group_sessionE(void *a1, void *a2)
{
  v3 = a2[6];
  a1[5] = a2[5];
  a1[6] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = a2[7];
  a1[7] = v4;
  if (v4)
  {
    dispatch_retain(v4);
    v5 = a1[7];
    if (v5)
    {

      dispatch_group_enter(v5);
    }
  }
}

void __destroy_helper_block_e8_40c45_ZTSNSt3__110shared_ptrI17BasebandTransportEE56c30_ZTSN8dispatch13group_sessionE(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = *(a1 + 56);
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  v4 = *(a1 + 48);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);

    std::__shared_weak_count::__release_weak(v4);
  }
}

void ___ZN17BasebandTransport9read_syncEN8dispatch13group_sessionE_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[9];
  if (v3)
  {
    __p = 0;
    v8 = 0;
    v9 = 0;
    (*(*v3 + 8))(v3, v2[30], *(a1 + 64), &__p);
    (*(v2[11] + 16))();
    if (__p)
    {
      v8 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v4 = v2[30];
    v5 = *(a1 + 64);
    v6 = *(v2[11] + 16);

    v6();
  }
}

void sub_29796C940(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BasebandTransport *___ZN17BasebandTransport9read_syncEN8dispatch13group_sessionE_block_invoke_90(uint64_t a1)
{
  result = *(a1 + 32);
  if (*(result + 236) == 1)
  {
    return BasebandTransport::queueRead_sync(result);
  }

  return result;
}

uint64_t __copy_helper_block_e8_40c45_ZTSNSt3__110shared_ptrI17BasebandTransportEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c45_ZTSNSt3__110shared_ptrI17BasebandTransportEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZN17BasebandTransport12timerOn_syncEv_block_invoke(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      v6 = a1[5];
      if (!v6)
      {
LABEL_15:
        if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v5->__on_zero_shared)(v5);
          std::__shared_weak_count::__release_weak(v5);
        }

        return;
      }

      v7 = *(v3 + 280);
      v8 = *(v3 + 320);
      v9 = *(v3 + 288) - *(v3 + 328);
      v11 = *(v3 + 288) == *(v3 + 328);
      *(v3 + 296) = v7 - v8;
      *(v3 + 304) = v9;
      v10 = (v3 + 272);
      v11 = v11 && v7 == v8;
      if (v11)
      {
        v12 = 3;
      }

      else
      {
        if (*v10 != 3)
        {
LABEL_12:
          v13 = *(v3 + 288);
          *(v3 + 312) = *v10;
          *(v3 + 328) = v13;
          *(v3 + 344) = *(v3 + 304);
          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 1174405120;
          block[2] = ___ZN17BasebandTransport12timerOn_syncEv_block_invoke_2;
          block[3] = &__block_descriptor_tmp_94;
          block[4] = v3;
          block[5] = v6;
          v16 = v4;
          atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
          dispatch_async(*(v3 + 96), block);
          v14 = v16;
          if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v14->__on_zero_shared)(v14);
            std::__shared_weak_count::__release_weak(v14);
          }

          goto LABEL_15;
        }

        v12 = 1;
      }

      *v10 = v12;
      goto LABEL_12;
    }
  }
}

uint64_t ___ZN17BasebandTransport12timerOn_syncEv_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 32);
  v6 = *(v5 + 216);
  v10 = *(v5 + 344);
  v7 = *(v5 + 328);
  v9[0] = *(v5 + 312);
  v9[1] = v7;
  return (*(v6 + 16))(v6, v9, a3, a4, a5);
}

void BasebandTransport::getStatus(BasebandTransport *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0xAAAAAA0000000000;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  v4[0] = a2;
  v4[1] = this;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI17BasebandTransportE20execute_wrapped_syncIZNS1_9getStatusEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS5__block_invoke;
  block[3] = &__block_descriptor_tmp_120;
  block[4] = this + 8;
  block[5] = v4;
  v3 = this + 24;
  v2 = *(this + 3);
  if (*(v3 + 1))
  {
    dispatch_async_and_wait(v2, block);
  }

  else
  {
    dispatch_sync(v2, block);
  }
}

void ___ZN17BasebandTransport9dumpStateEb_block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  *(v2 + 296) = vsubq_s64(*(v2 + 280), *(v2 + 320));
  v3 = *(v2 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    BasebandTransport::Parameters::toString((v2 + 48), __p);
    if (v8 >= 0)
    {
      v4 = __p;
    }

    else
    {
      v4 = __p[0];
    }

    *buf = 136315138;
    v10 = v4;
    _os_log_impl(&dword_297948000, v3, OS_LOG_TYPE_DEFAULT, "#I %s", buf, 0xCu);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }

    v3 = *(v2 + 40);
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    BasebandTransport::Status::toString((v2 + 272), __p);
    v5 = v8 >= 0 ? __p : __p[0];
    *buf = 136315138;
    v10 = v5;
    _os_log_impl(&dword_297948000, v3, OS_LOG_TYPE_DEFAULT, "#I %s", buf, 0xCu);
    if (v8 < 0)
    {
      operator delete(__p[0]);
      if (*(a1 + 40) != 1)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  if (*(a1 + 40) == 1)
  {
LABEL_14:
    *(v2 + 272) = 0;
    *(v2 + 276) = 0;
    *(v2 + 320) = 0u;
    *(v2 + 336) = 0u;
    *(v2 + 280) = 0u;
    *(v2 + 296) = 0u;
    *(v2 + 309) = 0;
    BasebandTransport::timerOn_sync(v2);
  }

LABEL_15:
  v6 = *MEMORY[0x29EDCA608];
}

void BasebandTransport::reportStatus(uint64_t a1, int a2, void **a3)
{
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 1174405120;
  v7[2] = ___ZN17BasebandTransport12reportStatusEjN8dispatch5blockIU13block_pointerFvNS_6StatusEEEE_block_invoke;
  v7[3] = &__block_descriptor_tmp_99;
  v7[4] = a1;
  v9 = a2;
  v4 = *a3;
  if (*a3)
  {
    v4 = _Block_copy(v4);
  }

  aBlock = v4;
  v10 = v7;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI17BasebandTransportE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  block[3] = &__block_descriptor_tmp_110;
  block[4] = a1 + 8;
  block[5] = &v10;
  v5 = *(a1 + 24);
  if (!*(a1 + 32))
  {
    dispatch_sync(v5, block);
    v6 = aBlock;
    if (!aBlock)
    {
      return;
    }

    goto LABEL_7;
  }

  dispatch_async_and_wait(v5, block);
  v6 = aBlock;
  if (aBlock)
  {
LABEL_7:
    _Block_release(v6);
  }
}

void ___ZN17BasebandTransport12reportStatusEjN8dispatch5blockIU13block_pointerFvNS_6StatusEEEE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 48);
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  *(v3 + 232) = v1;
  if (v2)
  {
    v2 = _Block_copy(v2);
  }

  v4 = *(v3 + 216);
  *(v3 + 216) = v2;
  if (v4)
  {
    _Block_release(v4);
  }

  BasebandTransport::timerOn_sync(v3);
}

void *__copy_helper_block_e8_40c70_ZTSN8dispatch5blockIU13block_pointerFvN17BasebandTransport6StatusEEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 40) = result;
  return result;
}

void __destroy_helper_block_e8_40c70_ZTSN8dispatch5blockIU13block_pointerFvN17BasebandTransport6StatusEEEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    _Block_release(v1);
  }
}

void *std::__list_imp<BasebandTransport::Protocol>::clear(void *result)
{
  if (result[2])
  {
    v1 = result;
    result = result[1];
    v2 = *(*v1 + 8);
    v3 = *result;
    *(v3 + 8) = v2;
    *v2 = v3;
    v1[2] = 0;
    if (result != v1)
    {
      do
      {
        v4 = result[1];
        operator delete(result);
        result = v4;
      }

      while (v4 != v1);
    }
  }

  return result;
}

uint64_t std::function<void ()(dispatch_workloop_s *)>::~function(uint64_t a1)
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

void *std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(void *a1, uint64_t a2, uint64_t a3)
{
  v23[0] = 0xAAAAAAAAAAAAAAAALL;
  v23[1] = 0xAAAAAAAAAAAAAAAALL;
  MEMORY[0x29C276890](v23, a1);
  if (LOBYTE(v23[0]) == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 5);
    v8 = *(v6 + 2);
    v9 = *(v6 + 36);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v12 = std::locale::use_facet(__b, MEMORY[0x29EDC93D0]);
      v9 = (v12->__vftable[2].~facet_0)(v12, 32);
      std::locale::~locale(__b);
      *(v6 + 36) = v9;
      v10 = a2 + a3;
      if ((v8 & 0xB0) == 0x20)
      {
        v11 = a2 + a3;
      }

      else
      {
        v11 = a2;
      }

      if (!v7)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v10 = a2 + a3;
      if ((*(v6 + 2) & 0xB0) == 0x20)
      {
        v11 = a2 + a3;
      }

      else
      {
        v11 = a2;
      }

      if (!v7)
      {
        goto LABEL_35;
      }
    }

    v13 = *(v6 + 3);
    v14 = v13 <= a3;
    v15 = v13 - a3;
    if (v14)
    {
      v16 = 0;
    }

    else
    {
      v16 = v15;
    }

    if (v11 - a2 < 1 || (*(*v7 + 96))(v7, a2, v11 - a2) == v11 - a2)
    {
      if (v16 >= 1)
      {
        memset(__b, 170, sizeof(__b));
        if (v16 >= 0x7FFFFFFFFFFFFFF8)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v16 >= 0x17)
        {
          if ((v16 | 7) == 0x17)
          {
            v18 = 25;
          }

          else
          {
            v18 = (v16 | 7) + 1;
          }

          v17 = operator new(v18);
          __b[1].__locale_ = v16;
          __b[2].__locale_ = (v18 | 0x8000000000000000);
          __b[0].__locale_ = v17;
        }

        else
        {
          HIBYTE(__b[2].__locale_) = v16;
          v17 = __b;
        }

        memset(v17, v9, v16);
        *(v17 + v16) = 0;
        if (SHIBYTE(__b[2].__locale_) >= 0)
        {
          locale = __b;
        }

        else
        {
          locale = __b[0].__locale_;
        }

        v20 = (*(*v7 + 96))(v7, locale, v16);
        if (SHIBYTE(__b[2].__locale_) < 0)
        {
          v21 = v20;
          operator delete(__b[0].__locale_);
          if (v21 != v16)
          {
            goto LABEL_35;
          }
        }

        else if (v20 != v16)
        {
          goto LABEL_35;
        }
      }

      if (v10 - v11 < 1 || (*(*v7 + 96))(v7, v11, v10 - v11) == v10 - v11)
      {
        *(v6 + 3) = 0;
        goto LABEL_36;
      }
    }

LABEL_35:
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
  }

LABEL_36:
  MEMORY[0x29C2768A0](v23);
  return a1;
}

void sub_29796D3CC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x29C2768A0](&a10);
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v17 + *(*v17 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x29796D3A0);
}

void std::__shared_ptr_pointer<BasebandTransportICE *,std::shared_ptr<BasebandTransportICE> ctu::SharedSynchronizable<BasebandTransport>::make_shared_ptr<BasebandTransportICE>(BasebandTransportICE*)::{lambda(BasebandTransportICE *)#1},std::allocator<BasebandTransportICE>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<BasebandTransportICE *,std::shared_ptr<BasebandTransportICE> ctu::SharedSynchronizable<BasebandTransport>::make_shared_ptr<BasebandTransportICE>(BasebandTransportICE*)::{lambda(BasebandTransportICE *)#1},std::allocator<BasebandTransportICE>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableI17BasebandTransportE15make_shared_ptrI20BasebandTransportICEEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableI17BasebandTransportE15make_shared_ptrI20BasebandTransportICEEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableI17BasebandTransportE15make_shared_ptrI20BasebandTransportICEEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableI17BasebandTransportE15make_shared_ptrI20BasebandTransportICEEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::shared_ptr<BasebandTransportICE> ctu::SharedSynchronizable<BasebandTransport>::make_shared_ptr<BasebandTransportICE>(BasebandTransportICE*)::{lambda(BasebandTransportICE*)#1}::operator() const(BasebandTransportICE*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 32))();
  }

  return result;
}

void std::__shared_ptr_pointer<BasebandTransport *,std::shared_ptr<BasebandTransport> ctu::SharedSynchronizable<BasebandTransport>::make_shared_ptr<BasebandTransport>(BasebandTransport*)::{lambda(BasebandTransport *)#1},std::allocator<BasebandTransport>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<BasebandTransport *,std::shared_ptr<BasebandTransport> ctu::SharedSynchronizable<BasebandTransport>::make_shared_ptr<BasebandTransport>(BasebandTransport*)::{lambda(BasebandTransport *)#1},std::allocator<BasebandTransport>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableI17BasebandTransportE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableI17BasebandTransportE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableI17BasebandTransportE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableI17BasebandTransportE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::shared_ptr<BasebandTransport> ctu::SharedSynchronizable<BasebandTransport>::make_shared_ptr<BasebandTransport>(BasebandTransport*)::{lambda(BasebandTransport*)#1}::operator() const(BasebandTransport*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 32))();
  }

  return result;
}

const void ***_ZNSt3__110unique_ptrIZZZN17BasebandTransport4initEvEUb_EUb0_E3__0NS_14default_deleteIS2_EEED1B8ne200100Ev(const void ***result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*v1)
    {
      _Block_release(*v1);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void _ZZN8dispatch5asyncIZZZN17BasebandTransport4initEvEUb_EUb0_E3__0EEvP16dispatch_queue_sNSt3__110unique_ptrIT_NS5_14default_deleteIS7_EEEEENUlPvE_8__invokeESB_(const void **a1)
{
  v4 = a1[5];
  v2 = *(a1 + 1);
  v3 = *(a1 + 3);
  (*(*a1 + 2))();
  if (*a1)
  {
    _Block_release(*a1);
  }

  operator delete(a1);
}

void sub_29796D6AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  _ZNSt3__110unique_ptrIZZZN17BasebandTransport4initEvEUb_EUb0_E3__0NS_14default_deleteIS2_EEED1B8ne200100Ev(va);
  _Unwind_Resume(a1);
}

void *_ZNSt3__110unique_ptrIZZZN17BasebandTransport4initEvEUb_EUb1_E3__1NS_14default_deleteIS2_EEED1B8ne200100Ev(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = *(v1 + 8);
    if (v3)
    {
      *(v1 + 16) = v3;
      operator delete(v3);
    }

    if (*v1)
    {
      _Block_release(*v1);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void _ZZN8dispatch5asyncIZZZN17BasebandTransport4initEvEUb_EUb1_E3__1EEvP16dispatch_queue_sNSt3__110unique_ptrIT_NS5_14default_deleteIS7_EEEEENUlPvE_8__invokeESB_(const void **a1)
{
  v2 = *(a1 + 4);
  v3 = a1[1];
  (*(*a1 + 2))();
  v4 = a1[1];
  if (v4)
  {
    a1[2] = v4;
    operator delete(v4);
  }

  if (*a1)
  {
    _Block_release(*a1);
  }

  operator delete(a1);
}

void sub_29796D790(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  _ZNSt3__110unique_ptrIZZZN17BasebandTransport4initEvEUb_EUb1_E3__1NS_14default_deleteIS2_EEED1B8ne200100Ev(va);
  _Unwind_Resume(a1);
}

const void ***_ZNSt3__110unique_ptrIZZZN17BasebandTransport4initEvEUb_EUb1_E3__2NS_14default_deleteIS2_EEED1B8ne200100Ev(const void ***result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*v1)
    {
      _Block_release(*v1);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void _ZZN8dispatch5asyncIZZZN17BasebandTransport4initEvEUb_EUb1_E3__2EEvP16dispatch_queue_sNSt3__110unique_ptrIT_NS5_14default_deleteIS7_EEEEENUlPvE_8__invokeESB_(const void **a1)
{
  v2 = a1[1];
  v3 = *(a1 + 4);
  (*(*a1 + 2))();
  if ((*(a1 + 20) & 1) == 0)
  {
    free(a1[1]);
  }

  if (*a1)
  {
    _Block_release(*a1);
  }

  operator delete(a1);
}

void sub_29796D860(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  _ZNSt3__110unique_ptrIZZZN17BasebandTransport4initEvEUb_EUb1_E3__2NS_14default_deleteIS2_EEED1B8ne200100Ev(va);
  _Unwind_Resume(a1);
}

void ctu::SharedSynchronizable<BasebandTransport>::execute_wrapped(uint64_t *a1, uint64_t a2)
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
  block[2] = ___ZNK3ctu20SharedSynchronizableI17BasebandTransportE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &__block_descriptor_tmp_111;
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

void __copy_helper_block_e8_32b40c46_ZTSNSt3__110shared_ptrIK17BasebandTransportEE(void *a1, uint64_t a2)
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

void __destroy_helper_block_e8_32b40c46_ZTSNSt3__110shared_ptrIK17BasebandTransportEE(uint64_t a1)
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

void *std::__function::__func<BasebandTransport::openPCI_sync(void)::$_0,std::allocator<BasebandTransport::openPCI_sync(void)::$_0>,void ()(dispatch_workloop_s *)>::__clone()
{
  result = operator new(0x10uLL);
  *result = &unk_2A1E5A198;
  return result;
}

uint64_t std::__function::__func<BasebandTransport::openPCI_sync(void)::$_0,std::allocator<BasebandTransport::openPCI_sync(void)::$_0>,void ()(dispatch_workloop_s *)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN17BasebandTransport12openPCI_syncEvE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN17BasebandTransport12openPCI_syncEvE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN17BasebandTransport12openPCI_syncEvE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN17BasebandTransport12openPCI_syncEvE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

__n128 ___ZNK3ctu20SharedSynchronizableI17BasebandTransportE20execute_wrapped_syncIZNS1_9getStatusEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS5__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3 = *v1;
  v2 = v1[1];
  result = *(v2 + 272);
  v5 = *(v2 + 288);
  *(v3 + 32) = *(v2 + 304);
  *v3 = result;
  *(v3 + 16) = v5;
  return result;
}

void support::fs::SyncFile::create(uint64_t a1@<X0>, int a2@<W1>, size_t a3@<X2>, void *a4@<X8>)
{
  v26 = *MEMORY[0x29EDCA608];
  if ((a3 & (a3 - 1)) != 0)
  {
    *&v12 = 0xAAAAAAAAAAAAAAAALL;
    *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v22 = v12;
    v23 = v12;
    v21[1] = v12;
    v21[2] = v12;
    v21[0] = v12;
    v19 = operator new(0x30uLL);
    v20 = xmmword_29797C930;
    strcpy(v19, "com.apple.telephony.basebandservices.support");
    v18 = 8;
    strcpy(__p, "syncfile");
    support::log::client::client(v21, &v19, __p);
    if (v18 < 0)
    {
      operator delete(__p[0]);
      if ((SHIBYTE(v20) & 0x80000000) == 0)
      {
LABEL_10:
        v13 = *v22;
        if (!os_log_type_enabled(*v22, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_11;
        }

        goto LABEL_18;
      }
    }

    else if ((SHIBYTE(v20) & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    operator delete(v19);
    v13 = *v22;
    if (!os_log_type_enabled(*v22, OS_LOG_TYPE_ERROR))
    {
LABEL_11:
      *a4 = 0;
      a4[1] = 0;
      *&v21[0] = &unk_2A1E58EF8;
      v14 = v23;
      if (!v23)
      {
        goto LABEL_21;
      }

LABEL_12:
      if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v14->__on_zero_shared)(v14);
        std::__shared_weak_count::__release_weak(v14);
      }

      goto LABEL_21;
    }

LABEL_18:
    *buf = 134217984;
    v25 = a3;
    _os_log_error_impl(&dword_297948000, v13, OS_LOG_TYPE_ERROR, "error: buffer size provided (%lu) must be a power of two", buf, 0xCu);
    *a4 = 0;
    a4[1] = 0;
    *&v21[0] = &unk_2A1E58EF8;
    v14 = v23;
    if (!v23)
    {
      goto LABEL_21;
    }

    goto LABEL_12;
  }

  if ((*(a1 + 23) & 0x8000000000000000) == 0)
  {
    if (*(a1 + 23))
    {
      goto LABEL_4;
    }

LABEL_15:
    *a4 = 0;
    a4[1] = 0;
    goto LABEL_21;
  }

  if (!*(a1 + 8))
  {
    goto LABEL_15;
  }

LABEL_4:
  v8 = operator new(0x2F8uLL);
  support::fs::SyncFile::SyncFile(v8, a1, a2, a3);
  *a4 = v8;
  v9 = operator new(0x20uLL);
  v9->__shared_owners_ = 0;
  p_shared_owners = &v9->__shared_owners_;
  v9->__vftable = &unk_2A1E5A4B8;
  v9->__shared_weak_owners_ = 0;
  v9[1].__vftable = v8;
  a4[1] = v9;
  v11 = *(v8 + 2);
  if (!v11)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    *(v8 + 1) = v8;
    *(v8 + 2) = v9;
    if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_22;
    }

LABEL_21:
    v15 = *MEMORY[0x29EDCA608];
    return;
  }

  if (v11->__shared_owners_ != -1)
  {
    goto LABEL_21;
  }

  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  *(v8 + 1) = v8;
  *(v8 + 2) = v9;
  std::__shared_weak_count::__release_weak(v11);
  if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_21;
  }

LABEL_22:
  (v9->__on_zero_shared)(v9);
  v16 = *MEMORY[0x29EDCA608];

  std::__shared_weak_count::__release_weak(v9);
}

void sub_29796DF5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    dispatch_barrier_async_f(v20[3], v20, std::shared_ptr<support::fs::SyncFile> ctu::SharedSynchronizable<support::fs::SyncFile>::make_shared_ptr<support::fs::SyncFile>(support::fs::SyncFile*)::{lambda(support::fs::SyncFile*)#1}::operator() const(support::fs::SyncFile*)::{lambda(void *)#1}::__invoke);
    __cxa_rethrow();
  }

  _Unwind_Resume(exception_object);
}

uint64_t support::fs::SyncFile::SyncFile(uint64_t a1, __int128 *a2, int a3, size_t a4)
{
  v8 = dispatch_queue_create("SyncFile", 0);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = v8;
  if (v8)
  {
    v9 = v8;
    dispatch_retain(v8);
    *(a1 + 32) = 0;
    dispatch_release(v9);
    *a1 = &unk_2A1E5A250;
    v10 = (a1 + 40);
    if ((*(a2 + 23) & 0x80000000) == 0)
    {
LABEL_3:
      v11 = *a2;
      v10->__r_.__value_.__r.__words[2] = *(a2 + 2);
      *&v10->__r_.__value_.__l.__data_ = v11;
      goto LABEL_6;
    }
  }

  else
  {
    *(a1 + 32) = 0;
    *a1 = &unk_2A1E5A250;
    v10 = (a1 + 40);
    if ((*(a2 + 23) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  std::string::__init_copy_ctor_external(v10, *a2, *(a2 + 1));
LABEL_6:
  *(a1 + 544) = 0;
  *(a1 + 72) = 0;
  *(a1 + 64) = &unk_2A1E5A408;
  *(a1 + 496) = &unk_2A1E5A430;
  std::ios_base::init((a1 + 496), (a1 + 88));
  *(a1 + 632) = 0;
  *(a1 + 640) = -1;
  MEMORY[0x29C276810](a1 + 88);
  *(a1 + 648) = a3;
  *(a1 + 656) = 0;
  *(a1 + 672) = 0;
  *(a1 + 664) = 0;
  if (a4)
  {
    if ((a4 & 0x8000000000000000) != 0)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v12 = operator new(a4);
    *(a1 + 656) = v12;
    v13 = &v12[a4];
    *(a1 + 672) = &v12[a4];
    bzero(v12, a4);
    *(a1 + 664) = v13;
  }

  v17 = operator new(0x30uLL);
  v18 = xmmword_29797C930;
  strcpy(v17, "com.apple.telephony.basebandservices.support");
  v16 = 8;
  strcpy(__p, "syncfile");
  support::log::client::client((a1 + 680), &v17, __p);
  if (v16 < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v18) & 0x80000000) == 0)
    {
LABEL_11:
      if (*(a1 + 664) == *(a1 + 656))
      {
        return a1;
      }

      goto LABEL_15;
    }
  }

  else if ((SHIBYTE(v18) & 0x80000000) == 0)
  {
    goto LABEL_11;
  }

  operator delete(v17);
  if (*(a1 + 664) != *(a1 + 656))
  {
LABEL_15:
    (*(*(a1 + 88) + 24))(a1 + 88);
  }

  return a1;
}

void sub_29796E2E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  support::log::client::~client((v21 + 680));
  v27 = *v25;
  if (*v25)
  {
    *(v21 + 664) = v27;
    operator delete(v27);
  }

  std::fstream::~fstream(v24);
  MEMORY[0x29C276A20](v23);
  if (*(v21 + 63) < 0)
  {
    operator delete(*v22);
  }

  ctu::SharedSynchronizable<HSFilerRT_Internal>::~SharedSynchronizable(v20);
  _Unwind_Resume(a1);
}

void (__cdecl ***std::fstream::~fstream(void (__cdecl ***a1)(std::fstream *__hidden this)))(std::fstream *__hidden this)
{
  v2 = a1 + 54;
  MEMORY[0x29C276820](a1 + 3);
  std::iostream::~basic_iostream();
  MEMORY[0x29C276A20](v2);
  return a1;
}

void support::fs::SyncFile::open(support::fs::SyncFile *this)
{
  v1[0] = MEMORY[0x29EDCA5F8];
  v1[1] = 0x40000000;
  v1[2] = ___ZN7support2fs8SyncFile4openEv_block_invoke;
  v1[3] = &__block_descriptor_tmp_2;
  v1[4] = this;
  ctu::SharedSynchronizable<support::fs::SyncFile>::execute_wrapped(this + 1, v1);
}

void support::fs::SyncFile::open_sync(support::fs::SyncFile *this)
{
  v15 = *MEMORY[0x29EDCA608];
  v2 = **(this + 91);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = (this + 40);
    if (*(this + 63) < 0)
    {
      v3 = *v3;
    }

    v13 = 136315138;
    v14 = v3;
    _os_log_impl(&dword_297948000, v2, OS_LOG_TYPE_INFO, "Opening file '%s'", &v13, 0xCu);
  }

  if (!*(this + 26))
  {
    if (*(this + 63) < 0)
    {
      v7 = *(this + 5);
    }

    v8 = *(this + 162);
    v9 = std::filebuf::open();
    v10 = (this + *(*(this + 8) - 24) + 64);
    if (!v9)
    {
      std::ios_base::clear(v10, v10->__rdstate_ | 4);
      v12 = *MEMORY[0x29EDCA608];
      return;
    }

    std::ios_base::clear(v10, 0);
    goto LABEL_14;
  }

  v4 = **(this + 91);
  if (!os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
LABEL_14:
    v11 = *MEMORY[0x29EDCA608];
    return;
  }

  v5 = (this + 40);
  if (*(this + 63) < 0)
  {
    v5 = *v5;
  }

  v13 = 136315138;
  v14 = v5;
  _os_log_impl(&dword_297948000, v4, OS_LOG_TYPE_INFO, "Skipped open, file '%s' is already open", &v13, 0xCu);
  v6 = *MEMORY[0x29EDCA608];
}

void support::fs::SyncFile::close(support::fs::SyncFile *this)
{
  v3 = this;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableIN7support2fs8SyncFileEE20execute_wrapped_syncIZNS3_5closeEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  block[3] = &__block_descriptor_tmp_17;
  block[4] = this + 8;
  block[5] = &v3;
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

void support::fs::SyncFile::close_sync(support::fs::SyncFile *this)
{
  v10 = *MEMORY[0x29EDCA608];
  v2 = **(this + 91);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = (this + 40);
    if (*(this + 63) < 0)
    {
      v3 = *v3;
    }

    v8 = 136315138;
    v9 = v3;
    _os_log_impl(&dword_297948000, v2, OS_LOG_TYPE_INFO, "Closing file '%s'", &v8, 0xCu);
  }

  if (*(this + 26))
  {
    support::fs::SyncFile::flush_sync(this);
    if (!std::filebuf::close())
    {
      v4 = (this + *(*(this + 8) - 24) + 64);
      std::ios_base::clear(v4, v4->__rdstate_ | 4);
    }
  }

  else
  {
    v5 = **(this + 91);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = (this + 40);
      if (*(this + 63) < 0)
      {
        v6 = *v6;
      }

      v8 = 136315138;
      v9 = v6;
      _os_log_impl(&dword_297948000, v5, OS_LOG_TYPE_INFO, "Skipped close, file '%s' is not open", &v8, 0xCu);
    }
  }

  v7 = *MEMORY[0x29EDCA608];
}

void support::fs::SyncFile::flush_sync(support::fs::SyncFile *this)
{
  v9 = *MEMORY[0x29EDCA608];
  v2 = **(this + 91);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = (this + 40);
    if (*(this + 63) < 0)
    {
      v3 = *v3;
    }

    v7 = 136315138;
    v8 = v3;
    _os_log_impl(&dword_297948000, v2, OS_LOG_TYPE_INFO, "Flushing file '%s'", &v7, 0xCu);
  }

  if (*(this + 26))
  {
    std::ostream::flush();
  }

  else
  {
    v4 = **(this + 91);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = (this + 40);
      if (*(this + 63) < 0)
      {
        v5 = *v5;
      }

      v7 = 136315138;
      v8 = v5;
      _os_log_impl(&dword_297948000, v4, OS_LOG_TYPE_INFO, "Skipped flush, file '%s' is not open", &v7, 0xCu);
    }
  }

  v6 = *MEMORY[0x29EDCA608];
}

uint64_t support::fs::SyncFile::isOpen(support::fs::SyncFile *this)
{
  v4 = this;
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 0x40000000;
  v5[2] = ___ZNK3ctu20SharedSynchronizableIN7support2fs8SyncFileEE20execute_wrapped_syncIZNKS3_6isOpenEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  v5[3] = &__block_descriptor_tmp_19;
  v5[4] = this + 8;
  v5[5] = &v4;
  v6 = v5;
  v2 = this + 24;
  v1 = *(this + 3);
  if (*(v2 + 1))
  {
    v13 = -86;
    block = MEMORY[0x29EDCA5F8];
    v8 = 0x40000000;
    v9 = ___ZN8dispatch19async_and_wait_implIRU13block_pointerFbvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS4_17integral_constantIbLb0EEE_block_invoke;
    v10 = &__block_descriptor_tmp_21;
    v11 = &v13;
    v12 = &v6;
    dispatch_async_and_wait(v1, &block);
  }

  else
  {
    v13 = -86;
    block = MEMORY[0x29EDCA5F8];
    v8 = 0x40000000;
    v9 = ___ZN8dispatch9sync_implIRU13block_pointerFbvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS4_17integral_constantIbLb0EEE_block_invoke;
    v10 = &__block_descriptor_tmp_20;
    v11 = &v13;
    v12 = &v6;
    dispatch_sync(v1, &block);
  }

  return v13 & 1;
}

void support::fs::SyncFile::~SyncFile(void **this)
{
  *this = &unk_2A1E5A250;
  support::fs::SyncFile::close_sync(this);
  this[85] = &unk_2A1E58EF8;
  v2 = this[93];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = this[82];
  if (v3)
  {
    this[83] = v3;
    operator delete(v3);
  }

  MEMORY[0x29C276820](this + 11);
  std::iostream::~basic_iostream();
  MEMORY[0x29C276A20](this + 62);
  if (*(this + 63) < 0)
  {
    operator delete(this[5]);
  }

  v4 = this[4];
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = this[3];
  if (v5)
  {
    dispatch_release(v5);
  }

  v6 = this[2];
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }
}

{
  support::fs::SyncFile::~SyncFile(this);

  operator delete(v1);
}

void support::fs::SyncFile::flush(support::fs::SyncFile *this)
{
  v2 = *(this + 2);
  if (!v2 || (v3 = *(this + 1), (v4 = std::__shared_weak_count::lock(v2)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v5 = v4;
  v6 = operator new(8uLL);
  *v6 = this;
  v7 = *(this + 3);
  atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  v8 = operator new(0x18uLL);
  *v8 = v6;
  v8[1] = v3;
  v8[2] = v5;
  dispatch_async_f(v7, v8, dispatch::async<void ctu::SharedSynchronizable<support::fs::SyncFile>::execute_wrapped<support::fs::SyncFile::flush(void)::$_0>(support::fs::SyncFile::flush(void)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<support::fs::SyncFile::flush(void)::$_0,dispatch_queue_s *::default_delete<support::fs::SyncFile::flush(void)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);

    std::__shared_weak_count::__release_weak(v5);
  }
}

BOOL support::fs::SyncFile::write_sync(support::fs::SyncFile *this, const void *a2)
{
  v10 = *MEMORY[0x29EDCA608];
  v2 = *(this + 26);
  if (v2)
  {
    std::ostream::write();
  }

  else
  {
    v4 = **(this + 91);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v7 = (this + 40);
      if (*(this + 63) < 0)
      {
        v7 = *v7;
      }

      v8 = 136315138;
      v9 = v7;
      _os_log_error_impl(&dword_297948000, v4, OS_LOG_TYPE_ERROR, "error: Failed to write, file '%s' is not open", &v8, 0xCu);
    }
  }

  result = v2 != 0;
  v6 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29796EE38(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t support::fs::SyncFile::write(support::fs::SyncFile *this, const void *a2, uint64_t a3)
{
  v6[0] = this;
  v6[1] = a2;
  v6[2] = a3;
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 0x40000000;
  v7[2] = ___ZNK3ctu20SharedSynchronizableIN7support2fs8SyncFileEE20execute_wrapped_syncIZNS3_5writeEPKvmE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS9__block_invoke;
  v7[3] = &__block_descriptor_tmp_22;
  v7[4] = this + 8;
  v7[5] = v6;
  v8 = v7;
  v4 = this + 24;
  v3 = *(this + 3);
  if (*(v4 + 1))
  {
    v15 = -86;
    block = MEMORY[0x29EDCA5F8];
    v10 = 0x40000000;
    v11 = ___ZN8dispatch19async_and_wait_implIRU13block_pointerFbvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS4_17integral_constantIbLb0EEE_block_invoke;
    v12 = &__block_descriptor_tmp_21;
    v13 = &v15;
    v14 = &v8;
    dispatch_async_and_wait(v3, &block);
  }

  else
  {
    v15 = -86;
    block = MEMORY[0x29EDCA5F8];
    v10 = 0x40000000;
    v11 = ___ZN8dispatch9sync_implIRU13block_pointerFbvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS4_17integral_constantIbLb0EEE_block_invoke;
    v12 = &__block_descriptor_tmp_20;
    v13 = &v15;
    v14 = &v8;
    dispatch_sync(v3, &block);
  }

  return v15 & 1;
}

BOOL support::fs::SyncFile::read_sync(support::fs::SyncFile *this, void *a2)
{
  v10 = *MEMORY[0x29EDCA608];
  v2 = *(this + 26);
  if (v2)
  {
    std::istream::read();
  }

  else
  {
    v4 = **(this + 91);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v7 = (this + 40);
      if (*(this + 63) < 0)
      {
        v7 = *v7;
      }

      v8 = 136315138;
      v9 = v7;
      _os_log_error_impl(&dword_297948000, v4, OS_LOG_TYPE_ERROR, "error: Failed to read, file '%s' is not open", &v8, 0xCu);
    }
  }

  result = v2 != 0;
  v6 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29796F064(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t support::fs::SyncFile::read(support::fs::SyncFile *this, void *a2, uint64_t a3)
{
  v6[0] = this;
  v6[1] = a2;
  v6[2] = a3;
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 0x40000000;
  v7[2] = ___ZNK3ctu20SharedSynchronizableIN7support2fs8SyncFileEE20execute_wrapped_syncIZNS3_4readEPvmE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS8__block_invoke;
  v7[3] = &__block_descriptor_tmp_23;
  v7[4] = this + 8;
  v7[5] = v6;
  v8 = v7;
  v4 = this + 24;
  v3 = *(this + 3);
  if (*(v4 + 1))
  {
    v15 = -86;
    block = MEMORY[0x29EDCA5F8];
    v10 = 0x40000000;
    v11 = ___ZN8dispatch19async_and_wait_implIRU13block_pointerFbvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS4_17integral_constantIbLb0EEE_block_invoke;
    v12 = &__block_descriptor_tmp_21;
    v13 = &v15;
    v14 = &v8;
    dispatch_async_and_wait(v3, &block);
  }

  else
  {
    v15 = -86;
    block = MEMORY[0x29EDCA5F8];
    v10 = 0x40000000;
    v11 = ___ZN8dispatch9sync_implIRU13block_pointerFbvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS4_17integral_constantIbLb0EEE_block_invoke;
    v12 = &__block_descriptor_tmp_20;
    v13 = &v15;
    v14 = &v8;
    dispatch_sync(v3, &block);
  }

  return v15 & 1;
}

uint64_t support::fs::SyncFile::getSize(support::fs::SyncFile *this)
{
  v4[0] = this;
  v4[1] = &v5;
  v5 = 0;
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 0x40000000;
  v6[2] = ___ZNK3ctu20SharedSynchronizableIN7support2fs8SyncFileEE20execute_wrapped_syncIZNS3_7getSizeEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  v6[3] = &__block_descriptor_tmp_24;
  v6[4] = this + 8;
  v6[5] = v4;
  v7 = v6;
  v2 = this + 24;
  v1 = *(this + 3);
  if (*(v2 + 1))
  {
    v14 = -86;
    block = MEMORY[0x29EDCA5F8];
    v9 = 0x40000000;
    v10 = ___ZN8dispatch19async_and_wait_implIRU13block_pointerFbvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS4_17integral_constantIbLb0EEE_block_invoke;
    v11 = &__block_descriptor_tmp_21;
    v12 = &v14;
    v13 = &v7;
    dispatch_async_and_wait(v1, &block);
  }

  else
  {
    v14 = -86;
    block = MEMORY[0x29EDCA5F8];
    v9 = 0x40000000;
    v10 = ___ZN8dispatch9sync_implIRU13block_pointerFbvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS4_17integral_constantIbLb0EEE_block_invoke;
    v11 = &__block_descriptor_tmp_20;
    v12 = &v14;
    v13 = &v7;
    dispatch_sync(v1, &block);
  }

  return v14;
}

uint64_t std::fstream::~fstream(void (__cdecl ***a1)(std::fstream *__hidden this))
{
  MEMORY[0x29C276820](a1 + 3);

  return std::iostream::~basic_iostream();
}

void non-virtual thunk tostd::fstream::~fstream(void (__cdecl ***a1)(std::fstream *__hidden this))
{
  MEMORY[0x29C276820](a1 + 1);
  std::iostream::~basic_iostream();

  JUMPOUT(0x29C276A20);
}

{
  v1 = a1 - 2;
  v2 = a1 + 52;
  MEMORY[0x29C276820](a1 + 1);
  std::iostream::~basic_iostream();
  MEMORY[0x29C276A20](v2);

  operator delete(v1);
}

void virtual thunk tostd::fstream::~fstream(void *a1)
{
  v1 = (a1 + *(*a1 - 24));
  MEMORY[0x29C276820](v1 + 3);
  std::iostream::~basic_iostream();

  JUMPOUT(0x29C276A20);
}

{
  v1 = (a1 + *(*a1 - 24));
  MEMORY[0x29C276820](v1 + 3);
  std::iostream::~basic_iostream();
  MEMORY[0x29C276A20](v1 + 54);

  operator delete(v1);
}

void std::fstream::~fstream(void (__cdecl ***a1)(std::fstream *__hidden this))
{
  v2 = a1 + 54;
  MEMORY[0x29C276820](a1 + 3);
  std::iostream::~basic_iostream();
  MEMORY[0x29C276A20](v2);

  operator delete(a1);
}

void std::__shared_ptr_pointer<support::fs::SyncFile *,std::shared_ptr<support::fs::SyncFile> ctu::SharedSynchronizable<support::fs::SyncFile>::make_shared_ptr<support::fs::SyncFile>(support::fs::SyncFile*)::{lambda(support::fs::SyncFile *)#1},std::allocator<support::fs::SyncFile>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<support::fs::SyncFile *,std::shared_ptr<support::fs::SyncFile> ctu::SharedSynchronizable<support::fs::SyncFile>::make_shared_ptr<support::fs::SyncFile>(support::fs::SyncFile*)::{lambda(support::fs::SyncFile *)#1},std::allocator<support::fs::SyncFile>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableIN7support2fs8SyncFileEE15make_shared_ptrIS3_EENSt3__110shared_ptrIT_EEPS8_EUlPS3_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableIN7support2fs8SyncFileEE15make_shared_ptrIS3_EENSt3__110shared_ptrIT_EEPS8_EUlPS3_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableIN7support2fs8SyncFileEE15make_shared_ptrIS3_EENSt3__110shared_ptrIT_EEPS8_EUlPS3_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableIN7support2fs8SyncFileEE15make_shared_ptrIS3_EENSt3__110shared_ptrIT_EEPS8_EUlPS3_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::shared_ptr<support::fs::SyncFile> ctu::SharedSynchronizable<support::fs::SyncFile>::make_shared_ptr<support::fs::SyncFile>(support::fs::SyncFile*)::{lambda(support::fs::SyncFile*)#1}::operator() const(support::fs::SyncFile*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void ctu::SharedSynchronizable<support::fs::SyncFile>::execute_wrapped(uint64_t *a1, uint64_t a2)
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
  block[2] = ___ZNK3ctu20SharedSynchronizableIN7support2fs8SyncFileEE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &__block_descriptor_tmp_15_2;
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

void __copy_helper_block_e8_32b40c49_ZTSNSt3__110shared_ptrIKN7support2fs8SyncFileEEE(void *a1, uint64_t a2)
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

void __destroy_helper_block_e8_32b40c49_ZTSNSt3__110shared_ptrIKN7support2fs8SyncFileEEE(uint64_t a1)
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

uint64_t ___ZN8dispatch9sync_implIRU13block_pointerFbvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS4_17integral_constantIbLb0EEE_block_invoke(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

uint64_t ___ZN8dispatch19async_and_wait_implIRU13block_pointerFbvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS4_17integral_constantIbLb0EEE_block_invoke(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

void *std::unique_ptr<void ctu::SharedSynchronizable<support::fs::SyncFile>::execute_wrapped<support::fs::SyncFile::flush(void)::$_0>(support::fs::SyncFile::flush(void)::$_0 &&)::{lambda(void)#1},std::default_delete<support::fs::SyncFile::flush(void)::$_0 &&>>::~unique_ptr[abi:ne200100](void **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    v4 = v2[2];
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v5 = v2;
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      v2 = v5;
    }

    operator delete(v2);
    return v3;
  }

  return v1;
}

void dispatch::async<void ctu::SharedSynchronizable<support::fs::SyncFile>::execute_wrapped<support::fs::SyncFile::flush(void)::$_0>(support::fs::SyncFile::flush(void)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<support::fs::SyncFile::flush(void)::$_0,dispatch_queue_s *::default_delete<support::fs::SyncFile::flush(void)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v2 = *a1;
  support::fs::SyncFile::flush_sync(**a1);
  operator delete(v2);
  v3 = *(a1 + 16);
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

void sub_29796FC54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  operator delete(v10);
  std::unique_ptr<void ctu::SharedSynchronizable<support::fs::SyncFile>::execute_wrapped<support::fs::SyncFile::flush(void)::$_0>(support::fs::SyncFile::flush(void)::$_0 &&)::{lambda(void)#1},std::default_delete<support::fs::SyncFile::flush(void)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

BOOL ___ZNK3ctu20SharedSynchronizableIN7support2fs8SyncFileEE20execute_wrapped_syncIZNS3_5writeEPKvmE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS9__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 40);
  v2 = *v1;
  v3 = *(*v1 + 208);
  if (v3)
  {
    v4 = v1[1];
    v5 = v1[2];
    std::ostream::write();
  }

  else
  {
    v6 = **(v2 + 728);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v9 = (v2 + 40);
      if (*(v2 + 63) < 0)
      {
        v9 = *v9;
      }

      v10 = 136315138;
      v11 = v9;
      _os_log_error_impl(&dword_297948000, v6, OS_LOG_TYPE_ERROR, "error: Failed to write, file '%s' is not open", &v10, 0xCu);
    }
  }

  result = v3 != 0;
  v8 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29796FD50(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

BOOL ___ZNK3ctu20SharedSynchronizableIN7support2fs8SyncFileEE20execute_wrapped_syncIZNS3_4readEPvmE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS8__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 40);
  v2 = *v1;
  v3 = *(*v1 + 208);
  if (v3)
  {
    v4 = v1[1];
    v5 = v1[2];
    std::istream::read();
  }

  else
  {
    v6 = **(v2 + 728);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v9 = (v2 + 40);
      if (*(v2 + 63) < 0)
      {
        v9 = *v9;
      }

      v10 = 136315138;
      v11 = v9;
      _os_log_error_impl(&dword_297948000, v6, OS_LOG_TYPE_ERROR, "error: Failed to read, file '%s' is not open", &v10, 0xCu);
    }
  }

  result = v3 != 0;
  v8 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29796FE3C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

BOOL ___ZNK3ctu20SharedSynchronizableIN7support2fs8SyncFileEE20execute_wrapped_syncIZNS3_7getSizeEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 40);
  v2 = *v1;
  v3 = *(*v1 + 208);
  if (v3)
  {
    v17 = 0xAAAAAAAAAAAAAAAALL;
    *&v4 = 0xAAAAAAAAAAAAAAAALL;
    *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v15 = v4;
    v16 = v4;
    v13 = v4;
    v14 = v4;
    v11 = v4;
    v12 = v4;
    *buf = v4;
    v10 = v4;
    std::istream::tellg();
    std::istream::seekg();
    std::istream::tellg();
    std::istream::seekg();
    std::istream::tellg();
    *v1[1] = 0;
    std::istream::seekg();
  }

  else
  {
    v5 = **(v2 + 728);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v8 = (v2 + 40);
      if (*(v2 + 63) < 0)
      {
        v8 = *v8;
      }

      *buf = 136315138;
      *&buf[4] = v8;
      _os_log_error_impl(&dword_297948000, v5, OS_LOG_TYPE_ERROR, "error: Failed to get file size, %s is not open", buf, 0xCu);
    }
  }

  result = v3 != 0;
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t __cxx_global_var_init_6()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>::~PthreadMutexGuardPolicy, &ctu::Singleton<support::log::shared_stdio,support::log::shared_stdio,ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>>::sInstance, &dword_297948000);
  }

  return result;
}

{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<support::log::manager_global>::~PthreadMutexGuardPolicy, &ctu::Singleton<support::log::manager_global,support::log::manager_global,ctu::PthreadMutexGuardPolicy<support::log::manager_global>>::sInstance, &dword_297948000);
  }

  return result;
}

void *support::log::delegate::context::create@<X0>(support::log::delegate::context *this@<X0>, void *a2@<X8>)
{
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  v5 = operator new(0x10uLL);
  *v5 = &unk_2A1E5A538;
  v5[1] = this;
  *a2 = v5;
  result = operator new(0x20uLL);
  *result = &unk_2A1E5A730;
  result[1] = 0;
  result[2] = 0;
  result[3] = v5;
  a2[1] = result;
  return result;
}

void *support::log::delegate::context::context(void *this, void *a2)
{
  *this = &unk_2A1E5A538;
  this[1] = a2;
  return this;
}

{
  *this = &unk_2A1E5A538;
  this[1] = a2;
  return this;
}

uint64_t support::log::delegate::delegate(uint64_t result, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  *result = &unk_2A1E5A558;
  *(result + 8) = v3;
  *(result + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  *(result + 24) = 1;
  return result;
}

uint64_t support::log::delegate::get_context@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 16) = 0;
  if (*(this + 24) == 1)
  {
    v2 = *(this + 16);
    *a2 = *(this + 8);
    *(a2 + 8) = v2;
    if (v2)
    {
      atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
    }

    *(a2 + 16) = 1;
  }

  return this;
}

uint64_t support::log::manager::parameters::parameters(uint64_t result, char a2)
{
  *result = &unk_2A1E5A588;
  *(result + 8) = a2;
  return result;
}

{
  *result = &unk_2A1E5A588;
  *(result + 8) = a2;
  return result;
}

uint64_t support::log::manager::parameters::parameters(uint64_t this)
{
  *this = &unk_2A1E5A588;
  *(this + 8) = 3;
  return this;
}

{
  *this = &unk_2A1E5A588;
  *(this + 8) = 3;
  return this;
}

uint64_t support::log::manager::manager(uint64_t a1, __int128 *a2, uint64_t a3, void *a4)
{
  *a1 = &unk_2A1E5A5A0;
  *(a1 + 8) = 850045863;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0;
  v29 = *(a2 + 2);
  v28 = *a2;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v7 = SHIBYTE(v29);
  if ((SHIBYTE(v29) & 0x8000000000000000) == 0)
  {
    if ((SHIBYTE(v29) - 11) < 0xC)
    {
      v8 = SHIBYTE(v29) + 12;
      v9 = &v28;
      v10 = 22;
LABEL_7:
      v12 = 2 * v10;
      if (v8 > 2 * v10)
      {
        v12 = v8;
      }

      if ((v12 | 7) == 0x17)
      {
        v13 = 25;
      }

      else
      {
        v13 = (v12 | 7) + 1;
      }

      if (v12 >= 0x17)
      {
        v11 = v13;
      }

      else
      {
        v11 = 23;
      }

      v14 = v10 == 22;
      goto LABEL_16;
    }

    v18 = &v28;
LABEL_23:
    qmemcpy(v18 + v7, ".log_manager", 12);
    v19 = v7 + 12;
    if (SHIBYTE(v29) < 0)
    {
      *(&v28 + 1) = v7 + 12;
    }

    else
    {
      HIBYTE(v29) = v19 & 0x7F;
    }

    v17 = v18 + v19;
    goto LABEL_27;
  }

  v7 = *(&v28 + 1);
  v10 = (v29 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v10 - *(&v28 + 1) >= 0xC)
  {
    v18 = v28;
    goto LABEL_23;
  }

  v11 = 0x7FFFFFFFFFFFFFF7;
  v8 = *(&v28 + 1) + 12;
  if (0x7FFFFFFFFFFFFFF7 - (v29 & 0x7FFFFFFFFFFFFFFFLL) < *(&v28 + 1) + 12 - v10)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v9 = v28;
  if (v10 <= 0x3FFFFFFFFFFFFFF2)
  {
    goto LABEL_7;
  }

  v14 = 0;
LABEL_16:
  v15 = operator new(v11);
  v16 = v15;
  if (v7)
  {
    memmove(v15, v9, v7);
  }

  qmemcpy(&v16[v7], ".log_manager", 12);
  if (!v14)
  {
    operator delete(v9);
  }

  *(&v28 + 1) = v8;
  v29 = v11 | 0x8000000000000000;
  *&v28 = v16;
  v17 = &v16[v8];
LABEL_27:
  v20 = (a1 + 72);
  *v17 = 0;
  *(a1 + 88) = v29;
  *(a1 + 72) = v28;
  if (*(a1 + 95) < 0)
  {
    v20 = *v20;
  }

  *(a1 + 96) = os_log_create("com.apple.telephony.basebandservices", v20);
  *(a1 + 104) = &unk_2A1E5A588;
  *(a1 + 112) = *(a3 + 8);
  *(a1 + 120) = a1 + 120;
  *(a1 + 128) = a1 + 120;
  *(a1 + 136) = 0;
  v21 = a4[2];
  if (v21)
  {
    v23 = *a4;
    v22 = a4[1];
    v24 = *(*a4 + 8);
    v25 = *v22;
    *(v25 + 8) = v24;
    *v24 = v25;
    v26 = *(a1 + 120);
    *(v26 + 8) = v22;
    *v22 = v26;
    *(a1 + 120) = v23;
    *(v23 + 8) = a1 + 120;
    *(a1 + 136) = v21;
    a4[2] = 0;
  }

  return a1;
}

void sub_2979704C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p)
{
  if ((a10 & 0x80) != 0)
  {
    operator delete(__p);
  }

  std::mutex::~mutex(v11);
  _Unwind_Resume(a1);
}

uint64_t support::log::manager::manager(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  *__p = *a2;
  v19 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v15 = &v15;
  v16 = &v15;
  v17 = 0;
  support::log::manager::manager(a1, __p, a3, &v15);
  if (v17)
  {
    v6 = v16;
    v7 = *(v15 + 8);
    v8 = *v16;
    *(v8 + 8) = v7;
    *v7 = v8;
    v17 = 0;
    if (v6 != &v15)
    {
      do
      {
        v10 = v6[1];
        v9 = v6[2];
        v6[2] = 0;
        if (v9)
        {
          (*(*v9 + 16))(v9);
        }

        operator delete(v6);
        v6 = v10;
      }

      while (v10 != &v15);
    }
  }

  if ((SHIBYTE(v19) & 0x80000000) == 0)
  {
    if (!*a4)
    {
      return a1;
    }

    goto LABEL_10;
  }

  operator delete(__p[0]);
  if (*a4)
  {
LABEL_10:
    std::mutex::lock((a1 + 8));
    v11 = operator new(0x18uLL);
    v12 = *a4;
    *a4 = 0;
    v13 = *(a1 + 120);
    v11[1] = a1 + 120;
    v11[2] = v12;
    *v11 = v13;
    *(v13 + 8) = v11;
    *(a1 + 120) = v11;
    ++*(a1 + 136);
    std::mutex::unlock((a1 + 8));
  }

  return a1;
}

{
  *__p = *a2;
  v19 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v15 = &v15;
  v16 = &v15;
  v17 = 0;
  support::log::manager::manager(a1, __p, a3, &v15);
  if (v17)
  {
    v6 = v16;
    v7 = *(v15 + 8);
    v8 = *v16;
    *(v8 + 8) = v7;
    *v7 = v8;
    v17 = 0;
    if (v6 != &v15)
    {
      do
      {
        v10 = v6[1];
        v9 = v6[2];
        v6[2] = 0;
        if (v9)
        {
          (*(*v9 + 16))(v9);
        }

        operator delete(v6);
        v6 = v10;
      }

      while (v10 != &v15);
    }
  }

  if ((SHIBYTE(v19) & 0x80000000) == 0)
  {
    if (!*a4)
    {
      return a1;
    }

    goto LABEL_10;
  }

  operator delete(__p[0]);
  if (*a4)
  {
LABEL_10:
    std::mutex::lock((a1 + 8));
    v11 = operator new(0x18uLL);
    v12 = *a4;
    *a4 = 0;
    v13 = *(a1 + 120);
    v11[1] = a1 + 120;
    v11[2] = v12;
    *v11 = v13;
    *(v13 + 8) = v11;
    *(a1 + 120) = v11;
    ++*(a1 + 136);
    std::mutex::unlock((a1 + 8));
  }

  return a1;
}

void sub_297970638(_Unwind_Exception *a1)
{
  std::mutex::unlock((v1 + 8));
  support::log::manager::~manager(v1);
  _Unwind_Resume(a1);
}

void sub_29797065C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  std::list<std::unique_ptr<support::log::delegate>>::~list(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t *std::list<std::unique_ptr<support::log::delegate>>::~list(uint64_t *a1)
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
        v7 = v2[1];
        v6 = v2[2];
        v2[2] = 0;
        if (v6)
        {
          (*(*v6 + 16))(v6);
        }

        operator delete(v2);
        v2 = v7;
      }

      while (v7 != a1);
    }
  }

  return a1;
}

void support::log::manager::add_delegate(uint64_t a1, uint64_t *a2)
{
  v3 = a1;
  std::mutex::lock((a1 + 8));
  v4 = operator new(0x18uLL);
  v5 = *a2;
  *a2 = 0;
  v4[2] = v5;
  v6 = (v3 + 1);
  v7 = v3[15];
  v3 += 15;
  *v4 = v7;
  v4[1] = v3;
  *(v7 + 8) = v4;
  *v3 = v4;
  ++v3[2];

  std::mutex::unlock(v6);
}

void support::log::manager::~manager(support::log::manager *this)
{
  *this = &unk_2A1E5A5A0;
  if (*(this + 17))
  {
    v2 = this + 120;
    v3 = *(this + 16);
    v4 = *(*(this + 15) + 8);
    v5 = *v3;
    *(v5 + 8) = v4;
    *v4 = v5;
    *(this + 17) = 0;
    if (v3 != this + 120)
    {
      do
      {
        v7 = *(v3 + 1);
        v6 = *(v3 + 2);
        *(v3 + 2) = 0;
        if (v6)
        {
          (*(*v6 + 16))(v6);
        }

        operator delete(v3);
        v3 = v7;
      }

      while (v7 != v2);
    }
  }

  if (*(this + 95) < 0)
  {
    operator delete(*(this + 9));
  }

  std::mutex::~mutex((this + 8));
}

{
  *this = &unk_2A1E5A5A0;
  if (*(this + 17))
  {
    v2 = this + 120;
    v3 = *(this + 16);
    v4 = *(*(this + 15) + 8);
    v5 = *v3;
    *(v5 + 8) = v4;
    *v4 = v5;
    *(this + 17) = 0;
    if (v3 != this + 120)
    {
      do
      {
        v7 = *(v3 + 1);
        v6 = *(v3 + 2);
        *(v3 + 2) = 0;
        if (v6)
        {
          (*(*v6 + 16))(v6);
        }

        operator delete(v3);
        v3 = v7;
      }

      while (v7 != v2);
    }
  }

  if (*(this + 95) < 0)
  {
    operator delete(*(this + 9));
  }

  std::mutex::~mutex((this + 8));
}

{
  *this = &unk_2A1E5A5A0;
  if (*(this + 17))
  {
    v2 = this + 120;
    v3 = *(this + 16);
    v4 = *(*(this + 15) + 8);
    v5 = *v3;
    *(v5 + 8) = v4;
    *v4 = v5;
    *(this + 17) = 0;
    if (v3 != this + 120)
    {
      do
      {
        v7 = *(v3 + 1);
        v6 = *(v3 + 2);
        *(v3 + 2) = 0;
        if (v6)
        {
          (*(*v6 + 16))(v6);
        }

        operator delete(v3);
        v3 = v7;
      }

      while (v7 != v2);
    }
  }

  if (*(this + 95) < 0)
  {
    operator delete(*(this + 9));
  }

  std::mutex::~mutex((this + 8));

  operator delete(this);
}

void sub_2979709C4(_Unwind_Exception *a1)
{
  std::mutex::unlock((v1 + 8));
  support::log::manager::~manager(v1);
  _Unwind_Resume(a1);
}

void sub_2979709E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  std::list<std::unique_ptr<support::log::delegate>>::~list(&a10);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void support::log::manager::create(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  *a4 = 0xAAAAAAAAAAAAAAAALL;
  a4[1] = 0xAAAAAAAAAAAAAAAALL;
  v8 = operator new(0x90uLL);
  *__p = *a1;
  v12 = *(a1 + 16);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  support::log::manager::manager(v8, __p, a2, a3);
  *a4 = v8;
  v9 = operator new(0x20uLL);
  *v9 = &unk_2A1E5A818;
  v9[1] = 0;
  v9[2] = 0;
  v9[3] = v8;
  a4[1] = v9;
  if (SHIBYTE(v12) < 0)
  {
    v10 = __p[0];

    operator delete(v10);
  }
}

void sub_297970BC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  (*(*v14 + 8))(v14);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void support::log::manager::create(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  *a4 = 0xAAAAAAAAAAAAAAAALL;
  a4[1] = 0xAAAAAAAAAAAAAAAALL;
  v8 = operator new(0x90uLL);
  *__p = *a1;
  v12 = *(a1 + 16);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  support::log::manager::manager(v8, __p, a2, a3);
  *a4 = v8;
  v9 = operator new(0x20uLL);
  *v9 = &unk_2A1E5A818;
  v9[1] = 0;
  v9[2] = 0;
  v9[3] = v8;
  a4[1] = v9;
  if (SHIBYTE(v12) < 0)
  {
    v10 = __p[0];

    operator delete(v10);
  }
}

void sub_297970D14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  (*(*v14 + 8))(v14);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void support::log::manager::set_level(uint64_t a1, unsigned int a2)
{
  v13 = *MEMORY[0x29EDCA608];
  std::mutex::lock((a1 + 8));
  v4 = *(a1 + 96);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 112);
    if (v5 > 6)
    {
      v6 = "???";
      if (a2 > 6)
      {
        goto LABEL_4;
      }
    }

    else
    {
      if (a2 > 6)
      {
LABEL_4:
        v7 = "???";
LABEL_7:
        v9 = 136315394;
        v10 = v6;
        v11 = 2080;
        v12 = v7;
        _os_log_impl(&dword_297948000, v4, OS_LOG_TYPE_DEFAULT, "setting log level %s -> %s", &v9, 0x16u);
        goto LABEL_8;
      }
    }

    goto LABEL_7;
  }

LABEL_8:
  *(a1 + 112) = a2;
  std::mutex::unlock((a1 + 8));
  v8 = *MEMORY[0x29EDCA608];
}

uint64_t support::log::buffer::borrow(support::log::buffer *this)
{
  pthread_mutex_lock(&ctu::Singleton<support::log::buffer,support::log::buffer,ctu::PthreadMutexGuardPolicy<support::log::buffer>>::sInstance);
  if (!qword_2A13A3620)
  {
    v1 = operator new(0xA8uLL);
    *(v1 + 1) = 0;
    *(v1 + 2) = 0;
    *v1 = &unk_2A1E5A780;
    v2 = (v1 + 24);
    *(v1 + 3) = &unk_2A1E5A7D0;
    *(v1 + 4) = 850045863;
    *(v1 + 40) = 0u;
    *(v1 + 56) = 0u;
    *(v1 + 72) = 0u;
    *(v1 + 14) = 0;
    *(v1 + 13) = 0;
    *(v1 + 11) = 0;
    *(v1 + 12) = v1 + 104;
    *(v1 + 120) = 0u;
    *(v1 + 136) = 0u;
    *(v1 + 152) = 0u;
    v3 = off_2A13A3628;
    qword_2A13A3620 = (v1 + 24);
    off_2A13A3628 = v1;
    if (!v3)
    {
      v18 = v1;
      goto LABEL_8;
    }

    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
    }
  }

  v2 = qword_2A13A3620;
  v1 = off_2A13A3628;
  v18 = off_2A13A3628;
  if (off_2A13A3628)
  {
LABEL_8:
    atomic_fetch_add_explicit(v1 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<support::log::buffer,support::log::buffer,ctu::PthreadMutexGuardPolicy<support::log::buffer>>::sInstance);
  std::mutex::lock((v2 + 8));
  v4 = *(v2 + 136);
  if (v4)
  {
    v5 = (v2 + 128);
    v6 = *(v2 + 104);
    v7 = (*(v6 + ((*(v2 + 128) >> 6) & 0x3FFFFFFFFFFFFF8)))[*(v2 + 128) & 0x1FFLL];
    v8 = *(v2 + 128) + 1;
    *(v2 + 128) = v8;
    *(v2 + 136) = v4 - 1;
    if (v8 >= 0x400)
    {
      operator delete(*v6);
      *(v2 + 104) += 8;
      v9 = -512;
LABEL_23:
      *v5 += v9;
    }
  }

  else
  {
    v10 = malloc(0x400uLL);
    v7 = v10;
    if (v10)
    {
      v12 = (v2 + 80);
      v11 = *(v2 + 80);
      if (!v11)
      {
        v13 = (v2 + 80);
LABEL_20:
        v15 = operator new(0x28uLL);
        v15[4] = v7;
        *v15 = 0;
        v15[1] = 0;
        v15[2] = v13;
        *v12 = v15;
        v16 = **(v2 + 72);
        if (v16)
        {
          *(v2 + 72) = v16;
        }

        std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v2 + 80), v15);
        v5 = (v2 + 88);
        v9 = 1;
        goto LABEL_23;
      }

      while (1)
      {
        while (1)
        {
          v13 = v11;
          v14 = v11[4];
          if (v10 >= v14)
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

        if (v14 >= v10)
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
    }
  }

  std::mutex::unlock((v2 + 8));
  if (!v18 || atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return v7;
  }

  (v18->__on_zero_shared)(v18);
  std::__shared_weak_count::__release_weak(v18);
  return v7;
}

void sub_297971138(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::mutex::unlock((v9 + 8));
  std::shared_ptr<support::transport::AriSelfHostedRT::initRTServer(void)::syncVars>::~shared_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void support::log::manager::release_log_buffer(support::log::manager *this, char *a2)
{
  pthread_mutex_lock(&ctu::Singleton<support::log::buffer,support::log::buffer,ctu::PthreadMutexGuardPolicy<support::log::buffer>>::sInstance);
  if (qword_2A13A3620)
  {
    goto LABEL_2;
  }

  v3 = operator new(0xA8uLL);
  *(v3 + 1) = 0;
  *(v3 + 2) = 0;
  *v3 = &unk_2A1E5A780;
  v4 = (v3 + 24);
  *(v3 + 3) = &unk_2A1E5A7D0;
  *(v3 + 4) = 850045863;
  *(v3 + 40) = 0u;
  *(v3 + 56) = 0u;
  *(v3 + 72) = 0u;
  *(v3 + 14) = 0;
  *(v3 + 13) = 0;
  *(v3 + 11) = 0;
  *(v3 + 12) = v3 + 104;
  *(v3 + 120) = 0u;
  *(v3 + 136) = 0u;
  *(v3 + 152) = 0u;
  v5 = off_2A13A3628;
  qword_2A13A3620 = (v3 + 24);
  off_2A13A3628 = v3;
  if (v5)
  {
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

LABEL_2:
    v4 = qword_2A13A3620;
    v3 = off_2A13A3628;
    if (!off_2A13A3628)
    {
      goto LABEL_8;
    }
  }

  atomic_fetch_add_explicit(v3 + 1, 1uLL, memory_order_relaxed);
LABEL_8:
  pthread_mutex_unlock(&ctu::Singleton<support::log::buffer,support::log::buffer,ctu::PthreadMutexGuardPolicy<support::log::buffer>>::sInstance);
  v8 = *(v4 + 80);
  v7 = v4 + 80;
  v6 = v8;
  if (!v8)
  {
    goto LABEL_16;
  }

  v9 = v7;
  do
  {
    v10 = *(v6 + 32);
    v11 = v10 >= a2;
    v12 = v10 < a2;
    if (v11)
    {
      v9 = v6;
    }

    v6 = *(v6 + 8 * v12);
  }

  while (v6);
  if (v9 == v7 || *(v9 + 32) > a2)
  {
LABEL_16:
    v9 = v7;
  }

  if (!v3 || atomic_fetch_add(v3 + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (v9 != v7)
    {
      goto LABEL_20;
    }

LABEL_24:

    free(a2);
    return;
  }

  (*(*v3 + 16))(v3);
  std::__shared_weak_count::__release_weak(v3);
  if (v9 == v7)
  {
    goto LABEL_24;
  }

LABEL_20:
  pthread_mutex_lock(&ctu::Singleton<support::log::buffer,support::log::buffer,ctu::PthreadMutexGuardPolicy<support::log::buffer>>::sInstance);
  if (!qword_2A13A3620)
  {
    v13 = operator new(0xA8uLL);
    *(v13 + 1) = 0;
    *(v13 + 2) = 0;
    *v13 = &unk_2A1E5A780;
    *(v13 + 3) = &unk_2A1E5A7D0;
    *(v13 + 4) = 850045863;
    *(v13 + 40) = 0u;
    *(v13 + 56) = 0u;
    *(v13 + 72) = 0u;
    *(v13 + 14) = 0;
    *(v13 + 13) = 0;
    *(v13 + 11) = 0;
    *(v13 + 12) = v13 + 104;
    *(v13 + 120) = 0u;
    *(v13 + 136) = 0u;
    *(v13 + 152) = 0u;
    v14 = off_2A13A3628;
    qword_2A13A3620 = (v13 + 24);
    off_2A13A3628 = v13;
    if (!v14)
    {
      v84 = v13;
      goto LABEL_31;
    }

    if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v14->__on_zero_shared)(v14);
      std::__shared_weak_count::__release_weak(v14);
    }
  }

  v13 = off_2A13A3628;
  v84 = off_2A13A3628;
  if (off_2A13A3628)
  {
LABEL_31:
    atomic_fetch_add_explicit(v13 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<support::log::buffer,support::log::buffer,ctu::PthreadMutexGuardPolicy<support::log::buffer>>::sInstance);
  pthread_mutex_lock(&ctu::Singleton<support::log::buffer,support::log::buffer,ctu::PthreadMutexGuardPolicy<support::log::buffer>>::sInstance);
  if (qword_2A13A3620)
  {
    goto LABEL_33;
  }

  v15 = operator new(0xA8uLL);
  *(v15 + 1) = 0;
  *(v15 + 2) = 0;
  *v15 = &unk_2A1E5A780;
  v16 = (v15 + 24);
  *(v15 + 3) = &unk_2A1E5A7D0;
  *(v15 + 4) = 850045863;
  *(v15 + 40) = 0u;
  *(v15 + 56) = 0u;
  *(v15 + 72) = 0u;
  *(v15 + 14) = 0;
  *(v15 + 13) = 0;
  *(v15 + 11) = 0;
  *(v15 + 12) = v15 + 104;
  *(v15 + 120) = 0u;
  *(v15 + 136) = 0u;
  *(v15 + 152) = 0u;
  v17 = off_2A13A3628;
  qword_2A13A3620 = (v15 + 24);
  off_2A13A3628 = v15;
  if (v17)
  {
    if (!atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v17->__on_zero_shared)(v17);
      std::__shared_weak_count::__release_weak(v17);
    }

LABEL_33:
    v16 = qword_2A13A3620;
    v15 = off_2A13A3628;
    v85 = off_2A13A3628;
    if (!off_2A13A3628)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

  v85 = v15;
LABEL_39:
  atomic_fetch_add_explicit(v15 + 1, 1uLL, memory_order_relaxed);
LABEL_40:
  pthread_mutex_unlock(&ctu::Singleton<support::log::buffer,support::log::buffer,ctu::PthreadMutexGuardPolicy<support::log::buffer>>::sInstance);
  std::mutex::lock((v16 + 8));
  v18 = *(v16 + 80);
  if (!v18)
  {
    goto LABEL_120;
  }

  v19 = v16 + 80;
  do
  {
    v20 = *(v18 + 32);
    v11 = v20 >= a2;
    v21 = v20 < a2;
    if (v11)
    {
      v19 = v18;
    }

    v18 = *(v18 + 8 * v21);
  }

  while (v18);
  if (v19 == v16 + 80 || *(v19 + 32) > a2)
  {
LABEL_120:
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x29C276770](exception, "attempting to put back a buffer the instance does not own");
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  v22 = *(v16 + 104);
  v23 = *(v16 + 112);
  v24 = *(v16 + 104);
  v25 = v23 - v24;
  if (v23 == v24)
  {
    v26 = 0;
  }

  else
  {
    v26 = ((v23 - v24) << 6) - 1;
  }

  v28 = *(v16 + 128);
  v27 = *(v16 + 136);
  v29 = v27 + v28;
  if (v26 != v27 + v28)
  {
    goto LABEL_110;
  }

  if (v28 < 0x200)
  {
    v30 = *(v16 + 120);
    v31 = *(v16 + 96);
    if (v25 < (v30 - v31))
    {
      v32 = operator new(0x1000uLL);
      if (v30 != v23)
      {
        *v23 = v32;
        *(v16 + 112) = v23 + 8;
        goto LABEL_109;
      }

      if (v24 != v31)
      {
        v43 = v24;
LABEL_108:
        *(v43 - 1) = v32;
        v86 = v32;
        *(v16 + 104) = v43;
        std::__split_buffer<char **>::emplace_back<char **&>((v16 + 96), &v86);
        goto LABEL_109;
      }

      if (v23 == v24)
      {
        v66 = 1;
      }

      else
      {
        v66 = (v30 - v24) >> 2;
      }

      if (!(v66 >> 61))
      {
        v67 = v32;
        v68 = operator new(8 * v66);
        v32 = v67;
        v69 = (v66 + 3) >> 2;
        v43 = &v68[8 * v69];
        v70 = v43;
        if (v23 != v24)
        {
          v70 = &v43[v25];
          v71 = v23 - v24 - 8;
          v72 = &v68[8 * v69];
          v73 = v24;
          if (v71 < 0x38)
          {
            goto LABEL_126;
          }

          v74 = &v68[8 * v69];
          v72 = v74;
          v73 = v24;
          if ((v74 - v24) < 0x20)
          {
            goto LABEL_126;
          }

          v75 = (v71 >> 3) + 1;
          v76 = 8 * (v75 & 0x3FFFFFFFFFFFFFFCLL);
          v72 = &v43[v76];
          v73 = &v24[v76];
          v77 = (v24 + 16);
          v78 = v74 + 16;
          v79 = v75 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v80 = *v77;
            *(v78 - 1) = *(v77 - 1);
            *v78 = v80;
            v77 += 2;
            v78 += 2;
            v79 -= 4;
          }

          while (v79);
          if (v75 != (v75 & 0x3FFFFFFFFFFFFFFCLL))
          {
LABEL_126:
            do
            {
              v81 = *v73;
              v73 += 8;
              *v72 = v81;
              v72 += 8;
            }

            while (v72 != v70);
          }
        }

        *(v16 + 96) = v68;
        *(v16 + 104) = v43;
        *(v16 + 112) = v70;
        *(v16 + 120) = &v68[8 * v66];
        if (v24)
        {
          operator delete(v31);
          v32 = v67;
          v43 = *(v16 + 104);
        }

        goto LABEL_108;
      }

LABEL_122:
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v33 = (v30 - v31) >> 2;
    if (v30 == v31)
    {
      v33 = 1;
    }

    if (v33 >> 61)
    {
      goto LABEL_122;
    }

    v34 = 8 * v33;
    v35 = operator new(8 * v33);
    v36 = operator new(0x1000uLL);
    v37 = v36;
    v38 = &v35[v25];
    v39 = &v35[v34];
    if (v25 != v34)
    {
      goto LABEL_63;
    }

    if (v25 >= 1)
    {
      v38 -= ((v25 >> 1) + 4) & 0xFFFFFFFFFFFFFFF8;
LABEL_63:
      *v38 = v36;
      v40 = v38 + 8;
      if (v23 != v24)
      {
        goto LABEL_77;
      }

LABEL_64:
      v41 = v38;
LABEL_65:
      v42 = *(v16 + 96);
      *(v16 + 96) = v35;
      *(v16 + 104) = v41;
      *(v16 + 112) = v40;
      *(v16 + 120) = v39;
      if (v42)
      {
        operator delete(v42);
      }

      goto LABEL_109;
    }

    if (v23 == v24)
    {
      v44 = 1;
    }

    else
    {
      v44 = v25 >> 2;
    }

    if (v44 >> 61)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v38 = operator new(8 * v44);
    v39 = &v38[8 * v44];
    operator delete(v35);
    v45 = *(v16 + 104);
    v23 = *(v16 + 112);
    v35 = v38;
    *v38 = v37;
    v40 = v38 + 8;
    if (v23 == v45)
    {
      goto LABEL_64;
    }

LABEL_77:
    while (v38 != v35)
    {
      v46 = v38;
LABEL_76:
      v47 = *(v23 - 1);
      v23 -= 8;
      *(v46 - 1) = v47;
      v41 = v46 - 8;
      v38 = v41;
      if (v23 == *(v16 + 104))
      {
        goto LABEL_65;
      }
    }

    if (v40 < v39)
    {
      v46 = &v35[8 * ((((v39 - v40) >> 3) + 1 + ((((v39 - v40) >> 3) + 1) >> 63)) >> 1)];
      v49 = v40 - v35;
      v48 = v40 == v35;
      v40 += 8 * ((((v39 - v40) >> 3) + 1 + ((((v39 - v40) >> 3) + 1) >> 63)) >> 1);
      if (!v48)
      {
        memmove(v46, v38, v49);
      }

      goto LABEL_76;
    }

    if (v39 == v35)
    {
      v50 = 1;
    }

    else
    {
      v50 = (v39 - v35) >> 2;
    }

    if (v50 >> 61)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v51 = operator new(8 * v50);
    v52 = v51;
    v53 = (v50 + 3) >> 2;
    v46 = &v51[8 * v53];
    v54 = v40 - v35;
    v48 = v40 == v35;
    v40 = v46;
    if (!v48)
    {
      v40 = &v46[v54];
      v55 = v54 - 8;
      if (v55 >= 0x18 && (v56 = 8 * v53, (&v51[8 * v53] - v38) >= 0x20))
      {
        v60 = (v55 >> 3) + 1;
        v61 = 8 * (v60 & 0x3FFFFFFFFFFFFFFCLL);
        v57 = &v46[v61];
        v58 = &v38[v61];
        v62 = (v38 + 16);
        v63 = &v51[v56 + 16];
        v64 = v60 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v65 = *v62;
          *(v63 - 1) = *(v62 - 1);
          *v63 = v65;
          v62 += 2;
          v63 += 32;
          v64 -= 4;
        }

        while (v64);
        if (v60 == (v60 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_90;
        }
      }

      else
      {
        v57 = &v51[8 * v53];
        v58 = v38;
      }

      do
      {
        v59 = *v58;
        v58 += 8;
        *v57 = v59;
        v57 += 8;
      }

      while (v57 != v40);
    }

LABEL_90:
    v39 = &v51[8 * v50];
    operator delete(v35);
    v35 = v52;
    goto LABEL_76;
  }

  *(v16 + 128) = v28 - 512;
  v86 = *v24;
  *(v16 + 104) = v24 + 8;
  std::__split_buffer<char **>::emplace_back<char **&>((v16 + 96), &v86);
LABEL_109:
  v24 = *(v16 + 104);
  v27 = *(v16 + 136);
  v29 = *(v16 + 128) + v27;
LABEL_110:
  *(*&v24[(v29 >> 6) & 0x3FFFFFFFFFFFFF8] + 8 * (v29 & 0x1FF)) = a2;
  *(v16 + 136) = v27 + 1;
  std::mutex::unlock((v16 + 8));
  if (v85 && !atomic_fetch_add(&v85->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v85->__on_zero_shared)(v85);
    std::__shared_weak_count::__release_weak(v85);
    v82 = v84;
    if (!v84)
    {
      return;
    }
  }

  else
  {
    v82 = v84;
    if (!v84)
    {
      return;
    }
  }

  if (!atomic_fetch_add(&v82->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v82->__on_zero_shared)(v82);

    std::__shared_weak_count::__release_weak(v82);
  }
}

void sub_297971AE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12)
{
  operator delete(v13);
  operator delete(v12);
  std::mutex::unlock((v14 + 8));
  std::shared_ptr<support::transport::AriSelfHostedRT::initRTServer(void)::syncVars>::~shared_ptr[abi:ne200100](&a12);
  std::shared_ptr<support::transport::AriSelfHostedRT::initRTServer(void)::syncVars>::~shared_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void support::log::manager::add_delegates(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != a2)
  {
    v5 = a1 + 120;
    do
    {
      std::mutex::lock((a1 + 8));
      v6 = operator new(0x18uLL);
      v7 = *(v2 + 16);
      *(v2 + 16) = 0;
      v6[1] = v5;
      v6[2] = v7;
      v8 = *(a1 + 120);
      *v6 = v8;
      *(v8 + 8) = v6;
      *(a1 + 120) = v6;
      ++*(a1 + 136);
      std::mutex::unlock((a1 + 8));
      v2 = *(v2 + 8);
    }

    while (v2 != a2);
  }
}

void support::log::manager::set_defaults(support::log::manager *this)
{
  std::mutex::lock((this + 8));
  *(this + 112) = 3;
  if (*(this + 17))
  {
    v2 = *(this + 16);
    v3 = *(*(this + 15) + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    *(this + 17) = 0;
    if (v2 != (this + 120))
    {
      do
      {
        v6 = *(v2 + 1);
        v5 = *(v2 + 2);
        *(v2 + 2) = 0;
        if (v5)
        {
          (*(*v5 + 16))(v5);
        }

        operator delete(v2);
        v2 = v6;
      }

      while (v6 != (this + 120));
    }
  }

  std::mutex::unlock((this + 8));
}

void support::log::manager::message_delegates(support::log::manager *this, const support::log::details *a2, char *a3)
{
  v4 = this + 120;
  v5 = *(this + 16);
  if (v5 != (this + 120))
  {
    do
    {
      this = (***(v5 + 16))(*(v5 + 16), a2, a3);
      v5 = *(v5 + 8);
    }

    while (v5 != v4);
  }

  support::log::manager::release_log_buffer(this, a3);
}

void support::log::stdout_delegate::create(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x20uLL);
  v5 = v4;
  v6 = *a1;
  v7 = a1[1];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  *v4 = &unk_2A1E5A558;
  v4[1] = v6;
  v4[2] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    *(v4 + 24) = 1;
    std::__shared_weak_count::__release_weak(v7);
    *v5 = &unk_2A1E5A5D0;
    std::__shared_weak_count::__release_weak(v7);
    *a2 = v5;
  }

  else
  {
    *(v4 + 24) = 1;
    *v4 = &unk_2A1E5A5D0;
    *a2 = v4;
  }
}

uint64_t support::log::stdout_delegate::stdout_delegate(uint64_t result, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  *result = &unk_2A1E5A558;
  *(result + 8) = v3;
  *(result + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    *(result + 24) = 1;
    v4 = result;
    std::__shared_weak_count::__release_weak(v2);
    result = v4;
  }

  else
  {
    *(result + 24) = 1;
  }

  *result = &unk_2A1E5A5D0;
  return result;
}

{
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  *result = &unk_2A1E5A558;
  *(result + 8) = v3;
  *(result + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    *(result + 24) = 1;
    v4 = result;
    std::__shared_weak_count::__release_weak(v2);
    result = v4;
  }

  else
  {
    *(result + 24) = 1;
  }

  *result = &unk_2A1E5A5D0;
  return result;
}

double support::log::stdout_delegate::create@<D0>(void *a1@<X8>)
{
  v3 = operator new(0x20uLL);
  result = 0.0;
  *v3 = 0u;
  v3[1] = 0u;
  *v3 = &unk_2A1E5A5D0;
  *a1 = v3;
  return result;
}

void support::log::stdout_delegate::message(support::log::stdout_delegate *this, const support::log::details *a2, const char *a3)
{
  if (a3)
  {
    memset(v6, 170, sizeof(v6));
    (*(*this + 24))(v6);
    if (v6[2])
    {
      if (v6[1])
      {
        v4 = std::__shared_weak_count::lock(v6[1]);
        if (v4)
        {
          v5 = v4;
          if (v6[0])
          {
            fprintf(*MEMORY[0x29EDCA620], "%s\n", a3);
          }

          if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v5->__on_zero_shared)(v5);
            std::__shared_weak_count::__release_weak(v5);
          }
        }
      }
    }

    else
    {
      fprintf(*MEMORY[0x29EDCA620], "%s\n", a3);
    }

    if (LOBYTE(v6[2]) == 1)
    {
      if (v6[1])
      {
        std::__shared_weak_count::__release_weak(v6[1]);
      }
    }
  }
}

support::log::manager_global *support::log::manager_global::manager_global(support::log::manager_global *this)
{
  v14 = 6;
  strcpy(__p, "global");
  v10 = 0;
  v11 = &unk_2A1E5A588;
  v12 = 3;
  v8 = &v8;
  v9 = &v8;
  support::log::manager::manager(this, __p, &v11, &v8);
  if (v10)
  {
    v2 = v9;
    v3 = *(v8 + 8);
    v4 = *v9;
    *(v4 + 8) = v3;
    *v3 = v4;
    v10 = 0;
    if (v2 != &v8)
    {
      do
      {
        v7 = v2[1];
        v6 = v2[2];
        v2[2] = 0;
        if (v6)
        {
          (*(*v6 + 16))(v6);
        }

        operator delete(v2);
        v2 = v7;
      }

      while (v7 != &v8);
    }
  }

  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  *this = &unk_2A1E5A600;
  return this;
}

void sub_2979722AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  std::list<std::unique_ptr<support::log::delegate>>::~list(&a9);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void *support::log::client::descriptor::descriptor(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = &unk_2A1E5A630;
  descriptor_instance = support::log::global_client_descriptor_manager::get_descriptor_instance(a2, a3);
  a1[1] = descriptor_instance;
  a1[2] = descriptor_instance;
  a1[3] = descriptor_instance + 1;
  a1[4] = descriptor_instance + 4;
  a1[5] = descriptor_instance + 7;
  return a1;
}

{
  *a1 = &unk_2A1E5A630;
  descriptor_instance = support::log::global_client_descriptor_manager::get_descriptor_instance(a2, a3);
  a1[1] = descriptor_instance;
  a1[2] = descriptor_instance;
  a1[3] = descriptor_instance + 1;
  a1[4] = descriptor_instance + 4;
  a1[5] = descriptor_instance + 7;
  return a1;
}

uint64_t *support::log::global_client_descriptor_manager::get_descriptor_instance(uint64_t a1, uint64_t a2)
{
  if ((atomic_load_explicit(&_MergedGlobals_0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_0))
  {
    *&qword_2A13A3798 = 0u;
    *&qword_2A13A3788 = 0u;
    dword_2A13A37A8 = 1065353216;
    __cxa_guard_release(&_MergedGlobals_0);
  }

  std::mutex::lock(&support::log::global_client_descriptor_manager::get_descriptor_instance(std::string const&,std::string const&)::sMutex);
  memset(__p, 170, sizeof(__p));
  v4 = *(a1 + 23);
  if (v4 >= 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    v5 = *(a1 + 8);
  }

  v6 = v5 + 1;
  if (v5 + 1 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v6 < 0x17)
  {
    memset(&v70, 0, sizeof(v70));
    v8 = &v70;
    *(&v70.__r_.__value_.__s + 23) = v5 + 1;
    if (!v5)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if ((v6 | 7) == 0x17)
    {
      v7 = 25;
    }

    else
    {
      v7 = (v6 | 7) + 1;
    }

    v8 = operator new(v7);
    v70.__r_.__value_.__l.__size_ = v5 + 1;
    v70.__r_.__value_.__r.__words[2] = v7 | 0x8000000000000000;
    v70.__r_.__value_.__r.__words[0] = v8;
  }

  v9 = *a1;
  if (v4 >= 0)
  {
    v10 = a1;
  }

  else
  {
    v10 = *a1;
  }

  memmove(v8, v10, v5);
LABEL_16:
  *&v8[v5] = 44;
  v11 = *(a2 + 23);
  if (v11 >= 0)
  {
    v12 = a2;
  }

  else
  {
    v12 = *a2;
  }

  if (v11 >= 0)
  {
    v13 = *(a2 + 23);
  }

  else
  {
    v13 = *(a2 + 8);
  }

  v14 = std::string::append(&v70, v12, v13);
  v15 = *&v14->__r_.__value_.__l.__data_;
  __p[2] = v14->__r_.__value_.__r.__words[2];
  *__p = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v70.__r_.__value_.__l.__data_);
    if (std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<support::log::global_client_descriptor>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<support::log::global_client_descriptor>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<support::log::global_client_descriptor>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<support::log::global_client_descriptor>>>>::find<std::string>(__p))
    {
      goto LABEL_93;
    }
  }

  else if (std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<support::log::global_client_descriptor>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<support::log::global_client_descriptor>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<support::log::global_client_descriptor>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<support::log::global_client_descriptor>>>>::find<std::string>(__p))
  {
    goto LABEL_93;
  }

  v16 = operator new(0x40uLL);
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v68, *a1, *(a1 + 8));
  }

  else
  {
    v68 = *a1;
  }

  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v67, *a2, *(a2 + 8));
  }

  else
  {
    v67 = *a2;
  }

  *v16 = &unk_2A1E5A700;
  v17 = v16 + 8;
  *(v16 + 8) = v68;
  memset(&v68, 0, sizeof(v68));
  *(v16 + 32) = v67;
  memset(&v67, 0, sizeof(v67));
  if (v16[31] < 0)
  {
    v17 = *v17;
    v18 = v16 + 32;
    if ((v16[55] & 0x80000000) == 0)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v18 = v16 + 32;
    if ((v16[55] & 0x80000000) == 0)
    {
      goto LABEL_34;
    }
  }

  v18 = *v18;
LABEL_34:
  *(v16 + 7) = os_log_create(v17, v18);
  if (SHIBYTE(__p[2]) >= 0)
  {
    v19 = __p;
  }

  else
  {
    v19 = __p[0];
  }

  if (SHIBYTE(__p[2]) >= 0)
  {
    v20 = HIBYTE(__p[2]);
  }

  else
  {
    v20 = __p[1];
  }

  v21 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](&v70, v19, v20);
  v22 = v21;
  v23 = qword_2A13A3790;
  if (qword_2A13A3790)
  {
    v24 = vcnt_s8(qword_2A13A3790);
    v24.i16[0] = vaddlv_u8(v24);
    if (v24.u32[0] > 1uLL)
    {
      v25 = v21;
      if (v21 >= qword_2A13A3790)
      {
        v25 = v21 % qword_2A13A3790;
      }
    }

    else
    {
      v25 = (qword_2A13A3790 - 1) & v21;
    }

    v26 = *(qword_2A13A3788 + 8 * v25);
    if (v26)
    {
      v27 = *v26;
      if (*v26)
      {
        if (SHIBYTE(__p[2]) >= 0)
        {
          v28 = HIBYTE(__p[2]);
        }

        else
        {
          v28 = __p[1];
        }

        if (SHIBYTE(__p[2]) >= 0)
        {
          v29 = __p;
        }

        else
        {
          v29 = __p[0];
        }

        if (v24.u32[0] < 2uLL)
        {
          while (1)
          {
            v34 = v27[1];
            if (v34 == v22)
            {
              v35 = *(v27 + 39);
              v36 = v35;
              if (v35 < 0)
              {
                v35 = v27[3];
              }

              if (v35 == v28)
              {
                v37 = v36 >= 0 ? (v27 + 2) : v27[2];
                if (!memcmp(v37, v29, v28))
                {
                  goto LABEL_91;
                }
              }
            }

            else if ((v34 & (v23 - 1)) != v25)
            {
              goto LABEL_82;
            }

            v27 = *v27;
            if (!v27)
            {
              goto LABEL_82;
            }
          }
        }

        do
        {
          v30 = v27[1];
          if (v30 == v22)
          {
            v31 = *(v27 + 39);
            v32 = v31;
            if (v31 < 0)
            {
              v31 = v27[3];
            }

            if (v31 == v28)
            {
              v33 = v32 >= 0 ? (v27 + 2) : v27[2];
              if (!memcmp(v33, v29, v28))
              {
                goto LABEL_91;
              }
            }
          }

          else
          {
            if (v30 >= v23)
            {
              v30 %= v23;
            }

            if (v30 != v25)
            {
              break;
            }
          }

          v27 = *v27;
        }

        while (v27);
      }
    }
  }

  else
  {
    v25 = 0xAAAAAAAAAAAAAAAALL;
  }

LABEL_82:
  v38 = operator new(0x30uLL);
  v70.__r_.__value_.__r.__words[0] = v38;
  v70.__r_.__value_.__l.__size_ = &qword_2A13A3788;
  v70.__r_.__value_.__r.__words[2] = 0;
  *v38 = 0;
  *(v38 + 1) = v22;
  if (SHIBYTE(__p[2]) < 0)
  {
    v39 = v38;
    std::string::__init_copy_ctor_external((v38 + 16), __p[0], __p[1]);
    v38 = v39;
  }

  else
  {
    *(v38 + 1) = *__p;
    *(v38 + 4) = __p[2];
  }

  *(v38 + 5) = v16;
  v70.__r_.__value_.__s.__data_[16] = 1;
  v40 = (qword_2A13A37A0 + 1);
  if (!v23 || (*&dword_2A13A37A8 * v23) < v40)
  {
    v47 = 1;
    if (v23 >= 3)
    {
      v47 = (v23 & (v23 - 1)) != 0;
    }

    v48 = v47 | (2 * v23);
    v49 = vcvtps_u32_f32(v40 / *&dword_2A13A37A8);
    if (v48 <= v49)
    {
      prime = v49;
    }

    else
    {
      prime = v48;
    }

    if (prime == 1)
    {
      prime = 2;
    }

    else if ((prime & (prime - 1)) != 0)
    {
      prime = std::__next_prime(prime);
    }

    v23 = qword_2A13A3790;
    if (prime > qword_2A13A3790)
    {
LABEL_110:
      if (prime >> 61)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v51 = operator new(8 * prime);
      v52 = qword_2A13A3788;
      qword_2A13A3788 = v51;
      if (v52)
      {
        operator delete(v52);
        v51 = qword_2A13A3788;
      }

      qword_2A13A3790 = prime;
      bzero(v51, 8 * prime);
      v53 = qword_2A13A3798;
      if (!qword_2A13A3798)
      {
        goto LABEL_140;
      }

      v54 = *(qword_2A13A3798 + 8);
      v55 = prime - 1;
      if ((prime & (prime - 1)) == 0)
      {
        v56 = v54 & v55;
        *(v51 + v56) = &qword_2A13A3798;
        for (i = *v53; *v53; i = *v53)
        {
          v58 = i[1] & v55;
          if (v58 == v56)
          {
            v53 = i;
          }

          else if (*(v51 + v58))
          {
            *v53 = *i;
            *i = **(v51 + v58);
            **(v51 + v58) = i;
          }

          else
          {
            *(v51 + v58) = v53;
            v53 = i;
            v56 = v58;
          }
        }

        goto LABEL_140;
      }

      if (v54 >= prime)
      {
        v54 %= prime;
      }

      *(v51 + v54) = &qword_2A13A3798;
      v62 = *v53;
      if (!*v53)
      {
LABEL_140:
        v23 = prime;
        v64 = prime - 1;
        if ((prime & (prime - 1)) != 0)
        {
          goto LABEL_141;
        }

        goto LABEL_156;
      }

      while (1)
      {
        v63 = v62[1];
        if (v63 >= prime)
        {
          v63 %= prime;
        }

        if (v63 == v54)
        {
          goto LABEL_134;
        }

        if (*(v51 + v63))
        {
          *v53 = *v62;
          *v62 = **(v51 + v63);
          **(v51 + v63) = v62;
          v62 = v53;
LABEL_134:
          v53 = v62;
          v62 = *v62;
          if (!v62)
          {
            goto LABEL_140;
          }
        }

        else
        {
          *(v51 + v63) = v53;
          v53 = v62;
          v62 = *v62;
          v54 = v63;
          if (!v62)
          {
            goto LABEL_140;
          }
        }
      }
    }

    if (prime < qword_2A13A3790)
    {
      v59 = vcvtps_u32_f32(qword_2A13A37A0 / *&dword_2A13A37A8);
      if (qword_2A13A3790 < 3 || (v60 = vcnt_s8(qword_2A13A3790), v60.i16[0] = vaddlv_u8(v60), v60.u32[0] > 1uLL))
      {
        v59 = std::__next_prime(v59);
      }

      else
      {
        v61 = 1 << -__clz(v59 - 1);
        if (v59 >= 2)
        {
          v59 = v61;
        }
      }

      if (prime <= v59)
      {
        prime = v59;
      }

      if (prime < v23)
      {
        if (!prime)
        {
          v65 = qword_2A13A3788;
          qword_2A13A3788 = 0;
          if (v65)
          {
            operator delete(v65);
          }

          v23 = 0;
          qword_2A13A3790 = 0;
          v64 = -1;
          goto LABEL_156;
        }

        goto LABEL_110;
      }

      v23 = qword_2A13A3790;
    }

    v64 = v23 - 1;
    if ((v23 & (v23 - 1)) != 0)
    {
LABEL_141:
      if (v22 >= v23)
      {
        v25 = v22 % v23;
        v41 = qword_2A13A3788;
        v42 = *(qword_2A13A3788 + 8 * (v22 % v23));
        v43 = v70.__r_.__value_.__r.__words[0];
        if (v42)
        {
          goto LABEL_88;
        }
      }

      else
      {
        v25 = v22;
        v41 = qword_2A13A3788;
        v42 = *(qword_2A13A3788 + 8 * v22);
        v43 = v70.__r_.__value_.__r.__words[0];
        if (v42)
        {
          goto LABEL_88;
        }
      }

      goto LABEL_157;
    }

LABEL_156:
    v25 = v64 & v22;
    v41 = qword_2A13A3788;
    v42 = *(qword_2A13A3788 + 8 * (v64 & v22));
    v43 = v70.__r_.__value_.__r.__words[0];
    if (v42)
    {
      goto LABEL_88;
    }

    goto LABEL_157;
  }

  v41 = qword_2A13A3788;
  v42 = *(qword_2A13A3788 + 8 * v25);
  v43 = v70.__r_.__value_.__r.__words[0];
  if (v42)
  {
LABEL_88:
    *v43 = *v42;
    goto LABEL_89;
  }

LABEL_157:
  *v43 = qword_2A13A3798;
  qword_2A13A3798 = v43;
  *(v41 + 8 * v25) = &qword_2A13A3798;
  if (!*v43)
  {
    goto LABEL_90;
  }

  v66 = *(*v43 + 8);
  if ((v23 & (v23 - 1)) != 0)
  {
    if (v66 >= v23)
    {
      v66 %= v23;
    }

    v42 = (v41 + 8 * v66);
  }

  else
  {
    v42 = (v41 + 8 * (v66 & (v23 - 1)));
  }

LABEL_89:
  *v42 = v43;
LABEL_90:
  ++qword_2A13A37A0;
LABEL_91:
  if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v67.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v68.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_93:
      v44 = std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<support::log::global_client_descriptor>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<support::log::global_client_descriptor>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<support::log::global_client_descriptor>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<support::log::global_client_descriptor>>>>::find<std::string>(__p);
      if (v44)
      {
        goto LABEL_94;
      }

LABEL_106:
      std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
    }
  }

  else if ((SHIBYTE(v68.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_93;
  }

  operator delete(v68.__r_.__value_.__l.__data_);
  v44 = std::__hash_table<std::__hash_value_type<std::string,std::unique_ptr<support::log::global_client_descriptor>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::unique_ptr<support::log::global_client_descriptor>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::unique_ptr<support::log::global_client_descriptor>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::unique_ptr<support::log::global_client_descriptor>>>>::find<std::string>(__p);
  if (!v44)
  {
    goto LABEL_106;
  }

LABEL_94:
  v45 = v44[5];
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  std::mutex::unlock(&support::log::global_client_descriptor_manager::get_descriptor_instance(std::string const&,std::string const&)::sMutex);
  return v45;
}