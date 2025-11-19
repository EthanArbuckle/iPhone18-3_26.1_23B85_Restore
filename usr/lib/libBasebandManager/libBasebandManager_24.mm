void LegacyAccessoryManager::notifyClients(NSObject **this)
{
  v19 = *MEMORY[0x29EDCA608];
  v2 = *this;
  if (os_log_type_enabled(*this, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(this + 22);
    LODWORD(v13) = 67109120;
    HIDWORD(v13) = v3;
    _os_log_impl(&dword_296FF7000, v2, OS_LOG_TYPE_DEFAULT, "#I Notifying Accessory State: 0x%x\n", &v13, 8u);
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

void sub_29712E538(_Unwind_Exception *a1, int a2)
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

char *std::vector<dispatch::callback<void({block_pointer})(unsigned int)>>::__emplace_back_slow_path<dispatch::callback<void({block_pointer})(unsigned int)> const&>(unint64_t *a1, uint64_t a2)
{
  v2 = a1[1] - *a1;
  v3 = v2 >> 4;
  v4 = (v2 >> 4) + 1;
  if (v4 >> 60)
  {
    std::vector<std::shared_ptr<Service>>::__throw_length_error[abi:ne200100]();
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
  if (v2 != 0x800000029722BBB7)
  {
    if (((v2 & 0x800000029722BBB7 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000029722BBB7))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000029722BBB7 & 0x7FFFFFFFFFFFFFFFLL));
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

uint64_t __cxx_global_var_init_13()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ABMServer>::~PthreadMutexGuardPolicy, &ctu::Singleton<ABMServer,ABMServer,ctu::PthreadMutexGuardPolicy<ABMServer>>::sInstance, &dword_296FF7000);
  }

  return result;
}

{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ServerLogging>::~PthreadMutexGuardPolicy, &ctu::Singleton<ServerLogging,ServerLogging,ctu::PthreadMutexGuardPolicy<ServerLogging>>::sInstance, &dword_296FF7000);
  }

  return result;
}

uint64_t IOPortUSBCAccessoriesDelegate::create@<X0>(uint64_t a1@<X0>, NSObject **a2@<X1>, std::__shared_weak_count_vtbl **a3@<X8>)
{
  v21 = *MEMORY[0x29EDCA608];
  v17 = 0;
  v18 = 0;
  v6 = operator new(0x70uLL);
  v7 = *(a1 + 24);
  if (!v7)
  {
    goto LABEL_4;
  }

  if (v7 != a1)
  {
    v7 = (*(*v7 + 16))(v7);
LABEL_4:
    v20 = v7;
    goto LABEL_6;
  }

  v20 = v19;
  (*(*v7 + 24))(v7, v19);
LABEL_6:
  v8 = *a2;
  v16 = v8;
  if (v8)
  {
    dispatch_retain(v8);
  }

  IOPortUSBCAccessoriesDelegate::IOPortUSBCAccessoriesDelegate(v6, v19, &v16);
  v11 = operator new(0x20uLL);
  v11->__shared_owners_ = 0;
  p_shared_owners = &v11->__shared_owners_;
  v11->__vftable = &unk_2A1E2B7D8;
  v11->__shared_weak_owners_ = 0;
  v11[1].__vftable = v6;
  on_zero_shared = v6->__on_zero_shared;
  if (!on_zero_shared)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v6->~__shared_weak_count_0 = v6;
    v6->__on_zero_shared = v11;
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (on_zero_shared->__shared_owners_ == -1)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v6->~__shared_weak_count_0 = v6;
    v6->__on_zero_shared = v11;
    std::__shared_weak_count::__release_weak(on_zero_shared);
    if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
LABEL_13:
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
    }
  }

LABEL_14:
  v17 = v6;
  v18 = v11;
  if (v8)
  {
    dispatch_release(v8);
  }

  if (v20 == v19)
  {
    (*(*v20 + 32))(v20);
  }

  else if (v20)
  {
    (*(*v20 + 40))(v20, v9, v10);
  }

  result = (*(v6->~__shared_weak_count + 7))(v6);
  *a3 = v6;
  a3[1] = v11;
  v15 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29712ECD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12)
{
  operator delete(v12);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void *IOPortUSBCAccessoriesDelegate::IOPortUSBCAccessoriesDelegate(void *a1, uint64_t a2, NSObject **a3)
{
  v13 = *MEMORY[0x29EDCA608];
  *a1 = &unk_2A1E2B740;
  v5 = *(a2 + 24);
  if (v5)
  {
    if (v5 == a2)
    {
      v12 = v11;
      (*(*v5 + 24))(v5, v11);
    }

    else
    {
      v12 = (*(*v5 + 16))(v5);
    }
  }

  else
  {
    v12 = 0;
  }

  v6 = *a3;
  v10 = v6;
  if (v6)
  {
    dispatch_retain(v6);
  }

  v7 = (*(*a1 + 16))(a1);
  AccessoriesDelegateBase::AccessoriesDelegateBase(a1, v11, &v10, v7);
  if (v6)
  {
    dispatch_release(v6);
  }

  if (v12 == v11)
  {
    (*(*v12 + 32))(v12);
  }

  else if (v12)
  {
    (*(*v12 + 40))(v12);
  }

  *a1 = &unk_2A1E2B740;
  a1[11] = 0;
  a1[12] = 0;
  v8 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_29712EF34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (v10)
  {
    dispatch_release(v10);
  }

  std::function<void ()(ctu::cf::CFSharedRef<__CFError>,std::vector<abm::AccessoryInfo>)>::~function(&a10);
  _Unwind_Resume(a1);
}

void IOPortUSBCAccessoriesDelegate::~IOPortUSBCAccessoriesDelegate(IOPortUSBCAccessoriesDelegate *this)
{
  *this = &unk_2A1E2B740;
  v1 = *(this + 12);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = this;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    this = v2;
  }

  AccessoriesDelegateBase::~AccessoriesDelegateBase(this);
}

{
  *this = &unk_2A1E2B740;
  v1 = *(this + 12);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = this;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    this = v2;
  }

  AccessoriesDelegateBase::~AccessoriesDelegateBase(this);
}

{
  *this = &unk_2A1E2B740;
  v1 = *(this + 12);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    AccessoriesDelegateBase::~AccessoriesDelegateBase(this);
  }

  else
  {
    AccessoriesDelegateBase::~AccessoriesDelegateBase(this);
  }

  operator delete(v2);
}

void IOPortUSBCAccessoriesDelegate::start(IOPortUSBCAccessoriesDelegate *this)
{
  v1[0] = MEMORY[0x29EDCA5F8];
  v1[1] = 0x40000000;
  v1[2] = ___ZN29IOPortUSBCAccessoriesDelegate5startEv_block_invoke;
  v1[3] = &__block_descriptor_tmp_5_0;
  v1[4] = this;
  ctu::SharedSynchronizable<AccessoriesDelegateBase>::execute_wrapped(this + 1, v1);
}

void ___ZN29IOPortUSBCAccessoriesDelegate5startEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(v1 + 80) & 1) == 0)
  {
    v2 = *(v1 + 40);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_296FF7000, v2, OS_LOG_TYPE_DEFAULT, "#I Starting", buf, 2u);
    }

    *(v1 + 80) = 1;
    v3 = *(v1 + 16);
    if (!v3 || (v4 = *(v1 + 8), (v5 = std::__shared_weak_count::lock(v3)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v7 = v5;
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v7);
    }

    v8 = *(v1 + 24);
    v20 = v8;
    if (v8)
    {
      dispatch_retain(v8);
    }

    v9.fObj.fObj = "com.apple.telephony.abm";
    ctu::iokit::IOPortUSBCController::create(buf, &v20, v9, "IOPortUSBCAccessories.delegate", v6);
    v10 = *buf;
    memset(buf, 0, sizeof(buf));
    v11 = *(v1 + 96);
    *(v1 + 88) = v10;
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

    if (v20)
    {
      dispatch_release(v20);
    }

    if (*(v1 + 88))
    {
      v16[0] = MEMORY[0x29EDCA5F8];
      v16[1] = 1174405120;
      v16[2] = ___ZN29IOPortUSBCAccessoriesDelegate5startEv_block_invoke_2;
      v16[3] = &__block_descriptor_tmp_37;
      v16[4] = v1;
      v16[5] = v4;
      v17 = v7;
      atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v13 = _Block_copy(v16);
      v14 = *(v1 + 24);
      if (v14)
      {
        dispatch_retain(v14);
      }

      aBlock = v13;
      object = v14;
      ctu::iokit::IOPortUSBCController::registerCallback();
      if (object)
      {
        dispatch_release(object);
      }

      if (aBlock)
      {
        _Block_release(aBlock);
      }

      if (v17)
      {
        std::__shared_weak_count::__release_weak(v17);
      }
    }

    else
    {
      v15 = *(v1 + 40);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_296FF7000, v15, OS_LOG_TYPE_ERROR, "Failed to create IOPort Controller!", buf, 2u);
      }
    }

    std::__shared_weak_count::__release_weak(v7);
  }
}

void sub_29712F4A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, char a16)
{
  dispatch::callback<void({block_pointer})(ctu::iokit::USBCAccessory)>::~callback(&a16);
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
    std::__shared_weak_count::__release_weak(v16);
    _Unwind_Resume(a1);
  }

  std::__shared_weak_count::__release_weak(v16);
  _Unwind_Resume(a1);
}

void ___ZN29IOPortUSBCAccessoriesDelegate5startEv_block_invoke_2(void *a1, int a2)
{
  v69 = *MEMORY[0x29EDCA608];
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = a1[5];
      if (atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        if (!v7)
        {
          goto LABEL_117;
        }
      }

      else
      {
        v8 = v6;
        (v6->__on_zero_shared)();
        std::__shared_weak_count::__release_weak(v8);
        if (!v7)
        {
          goto LABEL_117;
        }
      }

      v9 = *(v5 + 40);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        ctu::iokit::IOPortUSBCController::asString();
        v10 = v66 >= 0 ? &__p : __p;
        *buf = 136315138;
        v68 = v10;
        _os_log_impl(&dword_296FF7000, v9, OS_LOG_TYPE_DEFAULT, "#I Detected Accessory: %s\n", buf, 0xCu);
        if (v66 < 0)
        {
          operator delete(__p);
        }
      }

      if (*(v5 + 72))
      {
        if (ctu::iokit::operator&())
        {
          v11 = 2;
        }

        else
        {
          v12 = *(v5 + 104);
          if (!ctu::iokit::operator&())
          {
            v13 = 0;
            v14 = 0;
            v15 = 0;
LABEL_19:
            if (ctu::iokit::operator&())
            {
              v16 = v14 - v13;
              v17 = 0xAAAAAAAAAAAAAAABLL * ((v14 - v13) >> 2);
              v18 = v17 + 1;
              if (v17 + 1 > 0x1555555555555555)
              {
                std::vector<std::shared_ptr<Service>>::__throw_length_error[abi:ne200100]();
              }

              if (0x5555555555555556 * ((v14 - v13) >> 2) > v18)
              {
                v18 = 0x5555555555555556 * ((v14 - v13) >> 2);
              }

              if (v17 >= 0xAAAAAAAAAAAAAAALL)
              {
                v19 = 0x1555555555555555;
              }

              else
              {
                v19 = v18;
              }

              if (v19)
              {
                if (v19 > 0x1555555555555555)
                {
                  std::__throw_bad_array_new_length[abi:ne200100]();
                }

                v20 = operator new(12 * v19);
              }

              else
              {
                v20 = 0;
              }

              v26 = &v20[12 * v17];
              v27 = &v20[12 * v19];
              v28 = 131090;
            }

            else
            {
              v21 = *(v5 + 104);
              if (!ctu::iokit::operator&())
              {
                v27 = v14;
                goto LABEL_48;
              }

              v16 = v14 - v13;
              v22 = 0xAAAAAAAAAAAAAAABLL * ((v14 - v13) >> 2);
              v23 = v22 + 1;
              if (v22 + 1 > 0x1555555555555555)
              {
                std::vector<std::shared_ptr<Service>>::__throw_length_error[abi:ne200100]();
              }

              if (0x5555555555555556 * ((v14 - v13) >> 2) > v23)
              {
                v23 = 0x5555555555555556 * ((v14 - v13) >> 2);
              }

              if (v22 >= 0xAAAAAAAAAAAAAAALL)
              {
                v24 = 0x1555555555555555;
              }

              else
              {
                v24 = v23;
              }

              if (v24)
              {
                if (v24 > 0x1555555555555555)
                {
                  std::__throw_bad_array_new_length[abi:ne200100]();
                }

                v25 = operator new(12 * v24);
              }

              else
              {
                v25 = 0;
              }

              v26 = &v25[12 * v22];
              v27 = &v25[12 * v24];
              v28 = 65554;
            }

            *v26 = v28;
            *(v26 + 2) = 0x20000;
            v14 = v26 + 12;
            v29 = &v26[-v16];
            memcpy(&v26[-v16], v13, v16);
            if (v13)
            {
              operator delete(v13);
            }

            v15 = 1;
            v13 = v29;
LABEL_48:
            if (ctu::iokit::operator&())
            {
              if (v14 < v27)
              {
                v30 = 131091;
LABEL_54:
                *v14 = v30;
                *(v14 + 2) = 0x20000;
                v14 += 12;
                v15 = 1;
                goto LABEL_80;
              }

              v32 = v14 - v13;
              v33 = 0xAAAAAAAAAAAAAAABLL * ((v14 - v13) >> 2);
              v34 = v33 + 1;
              if (v33 + 1 > 0x1555555555555555)
              {
                std::vector<std::shared_ptr<Service>>::__throw_length_error[abi:ne200100]();
              }

              if (0x5555555555555556 * ((v27 - v13) >> 2) > v34)
              {
                v34 = 0x5555555555555556 * ((v27 - v13) >> 2);
              }

              if (0xAAAAAAAAAAAAAAABLL * ((v27 - v13) >> 2) >= 0xAAAAAAAAAAAAAAALL)
              {
                v35 = 0x1555555555555555;
              }

              else
              {
                v35 = v34;
              }

              if (v35)
              {
                if (v35 > 0x1555555555555555)
                {
                  std::__throw_bad_array_new_length[abi:ne200100]();
                }

                v36 = operator new(12 * v35);
              }

              else
              {
                v36 = 0;
              }

              v41 = &v36[12 * v33];
              v27 = &v36[12 * v35];
              v42 = 131091;
            }

            else
            {
              v31 = *(v5 + 104);
              if (!ctu::iokit::operator&())
              {
                goto LABEL_80;
              }

              if (v14 < v27)
              {
                v30 = 65555;
                goto LABEL_54;
              }

              v32 = v14 - v13;
              v37 = 0xAAAAAAAAAAAAAAABLL * ((v14 - v13) >> 2);
              v38 = v37 + 1;
              if (v37 + 1 > 0x1555555555555555)
              {
                std::vector<std::shared_ptr<Service>>::__throw_length_error[abi:ne200100]();
              }

              if (0x5555555555555556 * ((v27 - v13) >> 2) > v38)
              {
                v38 = 0x5555555555555556 * ((v27 - v13) >> 2);
              }

              if (0xAAAAAAAAAAAAAAABLL * ((v27 - v13) >> 2) >= 0xAAAAAAAAAAAAAAALL)
              {
                v39 = 0x1555555555555555;
              }

              else
              {
                v39 = v38;
              }

              if (v39)
              {
                if (v39 > 0x1555555555555555)
                {
                  std::__throw_bad_array_new_length[abi:ne200100]();
                }

                v40 = operator new(12 * v39);
              }

              else
              {
                v40 = 0;
              }

              v41 = &v40[12 * v37];
              v27 = &v40[12 * v39];
              v42 = 65555;
            }

            *v41 = v42;
            *(v41 + 2) = 0x20000;
            v14 = v41 + 12;
            v43 = &v41[-v32];
            memcpy(&v41[-v32], v13, v32);
            if (v13)
            {
              operator delete(v13);
            }

            v15 = 1;
            v13 = v43;
LABEL_80:
            if (ctu::iokit::operator&())
            {
              if (v14 < v27)
              {
                v44 = 131092;
                goto LABEL_86;
              }

              v48 = v14 - v13;
              v49 = 0xAAAAAAAAAAAAAAABLL * ((v14 - v13) >> 2) + 1;
              if (v49 > 0x1555555555555555)
              {
                std::vector<std::shared_ptr<Service>>::__throw_length_error[abi:ne200100]();
              }

              if (0x5555555555555556 * ((v27 - v13) >> 2) > v49)
              {
                v49 = 0x5555555555555556 * ((v27 - v13) >> 2);
              }

              if (0xAAAAAAAAAAAAAAABLL * ((v27 - v13) >> 2) >= 0xAAAAAAAAAAAAAAALL)
              {
                v49 = 0x1555555555555555;
              }

              if (v49 > 0x1555555555555555)
              {
                std::__throw_bad_array_new_length[abi:ne200100]();
              }

              v50 = operator new(12 * v49);
              v51 = v50;
              v52 = &v50[v48];
              v53 = 131092;
            }

            else
            {
              v45 = *(v5 + 104);
              if (!ctu::iokit::operator&())
              {
                if (!v15)
                {
                  v54 = *(v5 + 40);
                  if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
                  {
                    v55 = *(v5 + 104);
                    LODWORD(__p) = 67109376;
                    HIDWORD(__p) = v55;
                    v64 = 1024;
                    v65 = a2;
                    _os_log_error_impl(&dword_296FF7000, v54, OS_LOG_TYPE_ERROR, "Failed to parse bitmask (current: 0x%x, received: 0x%x)", &__p, 0xEu);
                  }

                  goto LABEL_115;
                }

LABEL_107:
                *(v5 + 104) = a2;
                v61 = 0;
                cf = 0;
                v59 = 0;
                v60 = 0;
                v47 = v14 - v13;
                if (v14 == v13)
                {
LABEL_110:
                  v57 = *(v5 + 72);
                  if (!v57)
                  {
                    std::__throw_bad_function_call[abi:ne200100]();
                  }

                  (*(*v57 + 48))(v57, &cf, &v59);
                  if (v59)
                  {
                    v60 = v59;
                    operator delete(v59);
                  }

                  if (cf)
                  {
                    CFRelease(cf);
                  }

LABEL_115:
                  if (v13)
                  {
                    operator delete(v13);
                  }

                  goto LABEL_117;
                }

LABEL_108:
                if (0xAAAAAAAAAAAAAAABLL * (v47 >> 2) > 0x1555555555555555)
                {
                  std::vector<std::shared_ptr<Service>>::__throw_length_error[abi:ne200100]();
                }

                v59 = operator new(v47);
                v61 = v59 + v47;
                memcpy(v59, v13, v47);
                v60 = v59 + v47;
                goto LABEL_110;
              }

              if (v14 < v27)
              {
                v44 = 65556;
LABEL_86:
                *v14 = v44;
                *(v14 + 2) = 0x20000;
                v46 = v14 + 12;
                *(v5 + 104) = a2;
                v61 = 0;
                cf = 0;
                v59 = 0;
                v60 = 0;
                v47 = v46 - v13;
                if (v46 == v13)
                {
                  goto LABEL_110;
                }

                goto LABEL_108;
              }

              v48 = v14 - v13;
              v56 = 0xAAAAAAAAAAAAAAABLL * ((v14 - v13) >> 2) + 1;
              if (v56 > 0x1555555555555555)
              {
                std::vector<std::shared_ptr<Service>>::__throw_length_error[abi:ne200100]();
              }

              if (0x5555555555555556 * ((v27 - v13) >> 2) > v56)
              {
                v56 = 0x5555555555555556 * ((v27 - v13) >> 2);
              }

              if (0xAAAAAAAAAAAAAAABLL * ((v27 - v13) >> 2) >= 0xAAAAAAAAAAAAAAALL)
              {
                v56 = 0x1555555555555555;
              }

              if (v56 > 0x1555555555555555)
              {
                std::__throw_bad_array_new_length[abi:ne200100]();
              }

              v50 = operator new(12 * v56);
              v51 = v50;
              v52 = &v50[v48];
              v53 = 65556;
            }

            *v52 = v53;
            *(v52 + 2) = 0x20000;
            v14 = v52 + 12;
            memcpy(v50, v13, v48);
            if (!v13)
            {
              v13 = v51;
              *(v5 + 104) = a2;
              v61 = 0;
              cf = 0;
              v59 = 0;
              v60 = 0;
              v47 = v14 - v51;
              if (v14 == v51)
              {
                goto LABEL_110;
              }

              goto LABEL_108;
            }

            operator delete(v13);
            v13 = v51;
            goto LABEL_107;
          }

          v11 = 1;
        }

        v13 = operator new(0xCuLL);
        v14 = v13 + 12;
        *v13 = 17;
        *(v13 + 1) = v11;
        *(v13 + 4) = 0x2000000000000;
        v15 = 1;
        goto LABEL_19;
      }
    }
  }

LABEL_117:
  v58 = *MEMORY[0x29EDCA608];
}

void sub_29712FC7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, char a12)
{
  if (!v12)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(v12);
  _Unwind_Resume(exception_object);
}

void IOPortUSBCAccessoriesDelegate::stop(IOPortUSBCAccessoriesDelegate *this)
{
  v1[0] = MEMORY[0x29EDCA5F8];
  v1[1] = 0x40000000;
  v1[2] = ___ZN29IOPortUSBCAccessoriesDelegate4stopEv_block_invoke;
  v1[3] = &__block_descriptor_tmp_6_1;
  v1[4] = this;
  ctu::SharedSynchronizable<AccessoriesDelegateBase>::execute_wrapped(this + 1, v1);
}

void ___ZN29IOPortUSBCAccessoriesDelegate4stopEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 80);
  v3 = *(v1 + 40);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2 == 1)
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&dword_296FF7000, v3, OS_LOG_TYPE_DEFAULT, "#I Stopping", buf, 2u);
    }

    v6 = (v1 + 88);
    v5 = *(v1 + 88);
    *(v1 + 80) = 0;
    if (v5)
    {
      v7 = *(v1 + 96);
      *(v1 + 88) = 0;
      *(v1 + 96) = 0;
      if (v7)
      {
        if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v7->__on_zero_shared)(v7);
          std::__shared_weak_count::__release_weak(v7);
        }

        v8 = *(v1 + 96);
        *v6 = 0;
        *(v1 + 96) = 0;
        if (v8)
        {
          if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v8->__on_zero_shared)(v8);
            std::__shared_weak_count::__release_weak(v8);
          }
        }
      }

      else
      {
        *v6 = 0;
        *(v1 + 96) = 0;
      }
    }
  }

  else if (v4)
  {
    *v9 = 0;
    _os_log_impl(&dword_296FF7000, v3, OS_LOG_TYPE_DEFAULT, "#I Already stopped", v9, 2u);
  }
}

uint64_t dispatch::callback<void({block_pointer})(ctu::iokit::USBCAccessory)>::~callback(uint64_t a1)
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

void std::__shared_ptr_pointer<IOPortUSBCAccessoriesDelegate *,std::shared_ptr<IOPortUSBCAccessoriesDelegate> ctu::SharedSynchronizable<AccessoriesDelegateBase>::make_shared_ptr<IOPortUSBCAccessoriesDelegate>(IOPortUSBCAccessoriesDelegate*)::{lambda(IOPortUSBCAccessoriesDelegate *)#1},std::allocator<IOPortUSBCAccessoriesDelegate>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<IOPortUSBCAccessoriesDelegate *,std::shared_ptr<IOPortUSBCAccessoriesDelegate> ctu::SharedSynchronizable<AccessoriesDelegateBase>::make_shared_ptr<IOPortUSBCAccessoriesDelegate>(IOPortUSBCAccessoriesDelegate*)::{lambda(IOPortUSBCAccessoriesDelegate *)#1},std::allocator<IOPortUSBCAccessoriesDelegate>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableI23AccessoriesDelegateBaseE15make_shared_ptrI29IOPortUSBCAccessoriesDelegateEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableI23AccessoriesDelegateBaseE15make_shared_ptrI29IOPortUSBCAccessoriesDelegateEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableI23AccessoriesDelegateBaseE15make_shared_ptrI29IOPortUSBCAccessoriesDelegateEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableI23AccessoriesDelegateBaseE15make_shared_ptrI29IOPortUSBCAccessoriesDelegateEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::shared_ptr<IOPortUSBCAccessoriesDelegate> ctu::SharedSynchronizable<AccessoriesDelegateBase>::make_shared_ptr<IOPortUSBCAccessoriesDelegate>(IOPortUSBCAccessoriesDelegate*)::{lambda(IOPortUSBCAccessoriesDelegate*)#1}::operator() const(IOPortUSBCAccessoriesDelegate*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void BootStats::BootStats(BootStats *this)
{
  v3 = 16;
  strcpy(__p, "Stats::BootStats");
  ctu::OsLogContext::OsLogContext(v4, "com.apple.telephony.abm", __p);
  ctu::SharedLoggable<Stats,ctu::OsLogLogger>::SharedLoggable<ctu::OsLogContext>(this + 1, __p, QOS_CLASS_DEFAULT);
  ctu::OsLogContext::~OsLogContext(v4);
  *this = &unk_2A1E2BF50;
  if (v3 < 0)
  {
    operator delete(*__p);
  }

  *this = &unk_2A1E2B828;
}

{
  v3 = 16;
  strcpy(__p, "Stats::BootStats");
  ctu::OsLogContext::OsLogContext(v4, "com.apple.telephony.abm", __p);
  ctu::SharedLoggable<Stats,ctu::OsLogLogger>::SharedLoggable<ctu::OsLogContext>(this + 1, __p, QOS_CLASS_DEFAULT);
  ctu::OsLogContext::~OsLogContext(v4);
  *this = &unk_2A1E2BF50;
  if (v3 < 0)
  {
    operator delete(*__p);
  }

  *this = &unk_2A1E2B828;
}

void sub_2971300C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  ctu::OsLogContext::~OsLogContext(&a16);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_2971301AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  ctu::OsLogContext::~OsLogContext(&a16);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void BootStats::~BootStats(BootStats *this)
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

  operator delete(this);
}

double BootStats::createInternal@<D0>(void *a1@<X8>)
{
  *a1 = 0xAAAAAAAAAAAAAAAALL;
  a1[1] = 0xAAAAAAAAAAAAAAAALL;
  v3 = operator new(0x40uLL);
  v7 = 16;
  strcpy(__p, "Stats::BootStats");
  ctu::OsLogContext::OsLogContext(v8, "com.apple.telephony.abm", __p);
  ctu::SharedLoggable<Stats,ctu::OsLogLogger>::SharedLoggable<ctu::OsLogContext>(v3 + 1, __p, QOS_CLASS_DEFAULT);
  ctu::OsLogContext::~OsLogContext(v8);
  *v3 = &unk_2A1E2BF50;
  if (v7 < 0)
  {
    operator delete(*__p);
  }

  *v3 = &unk_2A1E2B828;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  std::shared_ptr<BootStats>::shared_ptr[abi:ne200100]<BootStats,std::shared_ptr<BootStats> ctu::SharedSynchronizable<Stats>::make_shared_ptr<BootStats>(BootStats*)::{lambda(BootStats*)#1},0>(&v5, v3);
  result = *&v5;
  *a1 = v5;
  return result;
}

void sub_2971303C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  ctu::OsLogContext::~OsLogContext((v17 - 32));
  if (a16 < 0)
  {
    operator delete(__p);
  }

  operator delete(v16);
  _Unwind_Resume(a1);
}

uint64_t BootStats::init(uint64_t a1, int a2)
{
  *(a1 + 48) = a2;
  *(a1 + 56) = 0;
  return 1;
}

void BootStats::updateData(uint64_t a1@<X0>, CFDictionaryRef *a2@<X1>, xpc_object_t *a3@<X2>, __CFDictionary **a4@<X8>)
{
  v25 = 0;
  v8 = *MEMORY[0x29EDB8ED8];
  if (*a2)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x29EDB8ED8], 0, *a2);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    if (!MutableCopy)
    {
      goto LABEL_5;
    }
  }

  v25 = MutableCopy;
LABEL_5:
  v10 = *MEMORY[0x29EDBF490];
  if (xpc_dictionary_get_value(*a3, *MEMORY[0x29EDBF490]))
  {
    value = xpc_dictionary_get_value(*a3, v10);
    object[0] = value;
    if (value)
    {
      xpc_retain(value);
    }

    else
    {
      object[0] = xpc_null_create();
    }

    v12 = xpc::dyn_cast_or_default(object, 0);
    xpc_release(object[0]);
  }

  else
  {
    ctu::cf::dict_adapter::dict_adapter(object, *a2);
    ctu::cf::MakeCFString::MakeCFString(&v26, v10);
    LODWORD(v12) = ctu::cf::map_adapter::getInt(object, v26);
    MEMORY[0x29C26B130](&v26);
    v12 = v12;
    MEMORY[0x29C26B180](object);
  }

  v13 = *MEMORY[0x29EDBF4F0];
  if (xpc_dictionary_get_value(*a3, *MEMORY[0x29EDBF4F0]))
  {
    v14 = xpc_dictionary_get_value(*a3, v13);
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
  }

  else
  {
    ctu::cf::dict_adapter::dict_adapter(object, *a2);
    ctu::cf::MakeCFString::MakeCFString(&v26, v13);
    LODWORD(v15) = ctu::cf::map_adapter::getInt(object, v26);
    MEMORY[0x29C26B130](&v26);
    v15 = v15;
    MEMORY[0x29C26B180](object);
  }

  v16 = MEMORY[0x29EDBE920];
  if (v12 && v15 && v15 >= v12)
  {
    v18 = difftime(v15, v12);
    v19 = *(a1 + 56);
    if (v19)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  ctu::cf::dict_adapter::dict_adapter(object, *a2);
  ctu::cf::MakeCFString::MakeCFString(&v26, *v16);
  LODWORD(v18) = ctu::cf::map_adapter::getInt(object, v26);
  MEMORY[0x29C26B130](&v26);
  v18 = v18;
  MEMORY[0x29C26B180](object);
  v19 = *(a1 + 56);
  if (!v19)
  {
LABEL_21:
    v18 = 0;
    v15 = 0;
    *(a1 + 56) = v12;
    v19 = v12;
  }

LABEL_22:
  ctu::cf::update<char const*,long>(MutableCopy, *MEMORY[0x29EDBF408], v19, v8, v17);
  ctu::cf::update<char const*,long>(MutableCopy, v10, v12, v8, v20);
  ctu::cf::update<char const*,long>(MutableCopy, v13, v15, v8, v21);
  ctu::cf::update<char const*,long>(MutableCopy, *v16, v18, v8, v22);
  if (MutableCopy)
  {
    v23 = CFGetTypeID(MutableCopy);
    if (v23 == CFDictionaryGetTypeID())
    {
      *a4 = MutableCopy;
      CFRetain(MutableCopy);
    }

    else
    {
      *a4 = 0;
    }

    CFRelease(MutableCopy);
  }

  else
  {
    *a4 = 0;
  }
}

void sub_297130718(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, const void *a11, char a12)
{
  MEMORY[0x29C26B130](&a12);
  MEMORY[0x29C26B180](&a9);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(&a11);
  _Unwind_Resume(a1);
}

void sub_2971307B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

atomic_ullong *std::shared_ptr<BootStats>::shared_ptr[abi:ne200100]<BootStats,std::shared_ptr<BootStats> ctu::SharedSynchronizable<Stats>::make_shared_ptr<BootStats>(BootStats*)::{lambda(BootStats*)#1},0>(atomic_ullong *a1, atomic_ullong a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_2A1E2B870;
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

void sub_2971308E8(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, std::shared_ptr<BootStats> ctu::SharedSynchronizable<Stats>::make_shared_ptr<BootStats>(BootStats*)::{lambda(BootStats*)#1}::operator() const(BootStats*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<BootStats *,std::shared_ptr<BootStats> ctu::SharedSynchronizable<Stats>::make_shared_ptr<BootStats>(BootStats*)::{lambda(BootStats *)#1},std::allocator<BootStats>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<BootStats *,std::shared_ptr<BootStats> ctu::SharedSynchronizable<Stats>::make_shared_ptr<BootStats>(BootStats*)::{lambda(BootStats *)#1},std::allocator<BootStats>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableI5StatsE15make_shared_ptrI9BootStatsEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableI5StatsE15make_shared_ptrI9BootStatsEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableI5StatsE15make_shared_ptrI9BootStatsEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableI5StatsE15make_shared_ptrI9BootStatsEENSt3__110shared_ptrIT_EEPS7_EUlPS4_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::shared_ptr<BootStats> ctu::SharedSynchronizable<Stats>::make_shared_ptr<BootStats>(BootStats*)::{lambda(BootStats*)#1}::operator() const(BootStats*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

BOOL prop::coredump::get(char *a1, uint64_t a2)
{
  v4 = *MEMORY[0x29EDBE5F8];
  v5 = strlen(*MEMORY[0x29EDBE5F8]);
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
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

    v7 = operator new(v8);
    __dst[1] = v6;
    v12 = v8 | 0x8000000000000000;
    __dst[0] = v7;
    goto LABEL_9;
  }

  HIBYTE(v12) = v5;
  v7 = __dst;
  if (v5)
  {
LABEL_9:
    memmove(v7, v4, v6);
  }

  *(v6 + v7) = 0;
  memset(&__p, 0, sizeof(__p));
  v9 = defaults::get(__dst, a1, &__p);
  if (v9)
  {
    prop::file::get<std::string>(__dst, a1, &__p, &v13);
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = v13;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      return v9;
    }

LABEL_18:
    operator delete(__dst[0]);
    return v9;
  }

  if (SHIBYTE(v12) < 0)
  {
    goto LABEL_18;
  }

  return v9;
}

void sub_297130B34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
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

BOOL prop::bbipc::get(char *a1, uint64_t a2)
{
  v4 = *MEMORY[0x29EDBE7A8];
  v5 = strlen(*MEMORY[0x29EDBE7A8]);
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
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

    v7 = operator new(v8);
    __dst[1] = v6;
    v12 = v8 | 0x8000000000000000;
    __dst[0] = v7;
    goto LABEL_9;
  }

  HIBYTE(v12) = v5;
  v7 = __dst;
  if (v5)
  {
LABEL_9:
    memmove(v7, v4, v6);
  }

  *(v6 + v7) = 0;
  memset(&__p, 0, sizeof(__p));
  v9 = defaults::get(__dst, a1, &__p);
  if (v9)
  {
    prop::file::get<std::string>(__dst, a1, &__p, &v13);
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = v13;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      return v9;
    }

LABEL_18:
    operator delete(__dst[0]);
    return v9;
  }

  if (SHIBYTE(v12) < 0)
  {
    goto LABEL_18;
  }

  return v9;
}

void sub_297130CB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
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

BOOL prop::compression::get(char *a1, uint64_t a2)
{
  v4 = *MEMORY[0x29EDBE7B0];
  v5 = strlen(*MEMORY[0x29EDBE7B0]);
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
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

    v7 = operator new(v8);
    __dst[1] = v6;
    v12 = v8 | 0x8000000000000000;
    __dst[0] = v7;
    goto LABEL_9;
  }

  HIBYTE(v12) = v5;
  v7 = __dst;
  if (v5)
  {
LABEL_9:
    memmove(v7, v4, v6);
  }

  *(v6 + v7) = 0;
  memset(&__p, 0, sizeof(__p));
  v9 = defaults::get(__dst, a1, &__p);
  if (v9)
  {
    prop::file::get<std::string>(__dst, a1, &__p, &v13);
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = v13;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      return v9;
    }

LABEL_18:
    operator delete(__dst[0]);
    return v9;
  }

  if (SHIBYTE(v12) < 0)
  {
    goto LABEL_18;
  }

  return v9;
}

void sub_297130E2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
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

BOOL prop::ttr::get(char *a1, uint64_t a2)
{
  v4 = *MEMORY[0x29EDBE718];
  v5 = strlen(*MEMORY[0x29EDBE718]);
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
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

    v7 = operator new(v8);
    __dst[1] = v6;
    v12 = v8 | 0x8000000000000000;
    __dst[0] = v7;
    goto LABEL_9;
  }

  HIBYTE(v12) = v5;
  v7 = __dst;
  if (v5)
  {
LABEL_9:
    memmove(v7, v4, v6);
  }

  *(v6 + v7) = 0;
  memset(&__p, 0, sizeof(__p));
  v9 = defaults::get(__dst, a1, &__p);
  if (v9)
  {
    prop::file::get<std::string>(__dst, a1, &__p, &v13);
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = v13;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      return v9;
    }

LABEL_18:
    operator delete(__dst[0]);
    return v9;
  }

  if (SHIBYTE(v12) < 0)
  {
    goto LABEL_18;
  }

  return v9;
}

void sub_297130FA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
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

BOOL prop::logfilter::get(char *a1, uint64_t a2)
{
  v4 = *MEMORY[0x29EDBE528];
  v5 = strlen(*MEMORY[0x29EDBE528]);
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
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

    v7 = operator new(v8);
    __dst[1] = v6;
    v12 = v8 | 0x8000000000000000;
    __dst[0] = v7;
    goto LABEL_9;
  }

  HIBYTE(v12) = v5;
  v7 = __dst;
  if (v5)
  {
LABEL_9:
    memmove(v7, v4, v6);
  }

  *(v6 + v7) = 0;
  memset(&__p, 0, sizeof(__p));
  v9 = defaults::get(__dst, a1, &__p);
  if (v9)
  {
    prop::file::get<std::string>(__dst, a1, &__p, &v13);
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = v13;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      return v9;
    }

LABEL_18:
    operator delete(__dst[0]);
    return v9;
  }

  if (SHIBYTE(v12) < 0)
  {
    goto LABEL_18;
  }

  return v9;
}

void sub_297131124(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
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

BOOL prop::systemlogs::get(char *a1, uint64_t a2)
{
  v4 = *MEMORY[0x29EDBE710];
  v5 = strlen(*MEMORY[0x29EDBE710]);
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
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

    v7 = operator new(v8);
    __dst[1] = v6;
    v12 = v8 | 0x8000000000000000;
    __dst[0] = v7;
    goto LABEL_9;
  }

  HIBYTE(v12) = v5;
  v7 = __dst;
  if (v5)
  {
LABEL_9:
    memmove(v7, v4, v6);
  }

  *(v6 + v7) = 0;
  memset(&__p, 0, sizeof(__p));
  v9 = defaults::get(__dst, a1, &__p);
  if (v9)
  {
    prop::file::get<std::string>(__dst, a1, &__p, &v13);
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = v13;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      return v9;
    }

LABEL_18:
    operator delete(__dst[0]);
    return v9;
  }

  if (SHIBYTE(v12) < 0)
  {
    goto LABEL_18;
  }

  return v9;
}

void sub_2971312A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
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

BOOL prop::profile::get(char *a1, uint64_t a2)
{
  v4 = *MEMORY[0x29EDBE5B0];
  v5 = strlen(*MEMORY[0x29EDBE5B0]);
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
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

    v7 = operator new(v8);
    __dst[1] = v6;
    v12 = v8 | 0x8000000000000000;
    __dst[0] = v7;
    goto LABEL_9;
  }

  HIBYTE(v12) = v5;
  v7 = __dst;
  if (v5)
  {
LABEL_9:
    memmove(v7, v4, v6);
  }

  *(v6 + v7) = 0;
  memset(&__p, 0, sizeof(__p));
  v9 = defaults::get(__dst, a1, &__p);
  if (v9)
  {
    prop::file::get<std::string>(__dst, a1, &__p, &v13);
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = v13;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      return v9;
    }

LABEL_18:
    operator delete(__dst[0]);
    return v9;
  }

  if (SHIBYTE(v12) < 0)
  {
    goto LABEL_18;
  }

  return v9;
}

void sub_29713141C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
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

BOOL prop::tailspin::get(char *a1, uint64_t a2)
{
  v4 = *MEMORY[0x29EDBE608];
  v5 = strlen(*MEMORY[0x29EDBE608]);
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
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

    v7 = operator new(v8);
    __dst[1] = v6;
    v12 = v8 | 0x8000000000000000;
    __dst[0] = v7;
    goto LABEL_9;
  }

  HIBYTE(v12) = v5;
  v7 = __dst;
  if (v5)
  {
LABEL_9:
    memmove(v7, v4, v6);
  }

  *(v6 + v7) = 0;
  memset(&__p, 0, sizeof(__p));
  v9 = defaults::get(__dst, a1, &__p);
  if (v9)
  {
    prop::file::get<std::string>(__dst, a1, &__p, &v13);
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = v13;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      return v9;
    }

LABEL_18:
    operator delete(__dst[0]);
    return v9;
  }

  if (SHIBYTE(v12) < 0)
  {
    goto LABEL_18;
  }

  return v9;
}

void sub_297131598(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
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

BOOL prop::tracesettings::get(char *a1, uint64_t a2)
{
  v4 = *MEMORY[0x29EDBE600];
  v5 = strlen(*MEMORY[0x29EDBE600]);
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
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

    v7 = operator new(v8);
    __dst[1] = v6;
    v12 = v8 | 0x8000000000000000;
    __dst[0] = v7;
    goto LABEL_9;
  }

  HIBYTE(v12) = v5;
  v7 = __dst;
  if (v5)
  {
LABEL_9:
    memmove(v7, v4, v6);
  }

  *(v6 + v7) = 0;
  memset(&__p, 0, sizeof(__p));
  v9 = defaults::get(__dst, a1, &__p);
  if (v9)
  {
    prop::file::get<std::string>(__dst, a1, &__p, &v13);
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = v13;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v12) & 0x80000000) == 0)
    {
      return v9;
    }

LABEL_18:
    operator delete(__dst[0]);
    return v9;
  }

  if (SHIBYTE(v12) < 0)
  {
    goto LABEL_18;
  }

  return v9;
}

void sub_297131714(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
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

uint64_t prop::set(char *a1, char *a2, char *a3)
{
  v31 = *MEMORY[0x29EDCA608];
  if (a1[23] < 0)
  {
    v6 = *a1;
    if (strcasecmp(*a1, *MEMORY[0x29EDBE5F0]) && strcasecmp(v6, *MEMORY[0x29EDBF8A0]) && strcasecmp(v6, *MEMORY[0x29EDBFC60]) && strcasecmp(v6, *MEMORY[0x29EDBFC58]))
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

                          return prop::tracesettings::set(a2, a3);
                        }

                        else
                        {
                          sGetOsLogContext();
                          v7 = qword_2A18B7930;
                          if (os_log_type_enabled(qword_2A18B7930, OS_LOG_TYPE_ERROR))
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

                            if (a3[23] >= 0)
                            {
                              v23 = a3;
                            }

                            else
                            {
                              v23 = *a3;
                            }

                            v25 = 136315650;
                            v26 = v21;
                            v27 = 2080;
                            v28 = v22;
                            v29 = 2080;
                            v30 = v23;
                            _os_log_error_impl(&dword_296FF7000, v7, OS_LOG_TYPE_ERROR, "set: Invalid domain; domain='%s' key='%s' value='%s'", &v25, 0x20u);
                            v24 = *MEMORY[0x29EDCA608];
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

  else if (strcasecmp(a1, *MEMORY[0x29EDBE5F0]) && strcasecmp(a1, *MEMORY[0x29EDBF8A0]) && strcasecmp(a1, *MEMORY[0x29EDBFC60]) && strcasecmp(a1, *MEMORY[0x29EDBFC58]))
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

                    return prop::tailspin::set(a2, a3);
                  }

LABEL_61:
                  v19 = *MEMORY[0x29EDCA608];

                  return prop::profile::set(a2, a3);
                }

LABEL_58:
                v18 = *MEMORY[0x29EDCA608];

                return prop::systemlogs::set(a2, a3);
              }

LABEL_55:
              v17 = *MEMORY[0x29EDCA608];

              return prop::logfilter::set(a2, a3);
            }

LABEL_52:
            v16 = *MEMORY[0x29EDCA608];

            return prop::ttr::set(a2, a3);
          }

LABEL_49:
          v15 = *MEMORY[0x29EDCA608];

          return prop::compression::set(a2, a3);
        }

LABEL_46:
        v14 = *MEMORY[0x29EDCA608];

        return prop::bbipc::set(a2, a3);
      }

LABEL_40:
      v12 = *MEMORY[0x29EDCA608];

      return prop::ipc::set(a2, a3);
    }

LABEL_43:
    v13 = *MEMORY[0x29EDCA608];

    return prop::coredump::set(a2, a3);
  }

  v11 = *MEMORY[0x29EDCA608];

  return prop::bbtrace::set(a2, a3);
}

uint64_t prop::bbtrace::set(char *a1, uint64_t a2)
{
  v117 = *MEMORY[0x29EDCA608];
  memset(&v114, 170, sizeof(v114));
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v114, *a2, *(a2 + 8));
    if (*(a2 + 23) >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    if (strcmp(v4, "default"))
    {
      goto LABEL_9;
    }
  }

  else
  {
    v114 = *a2;
    if (strcmp(a2, "default"))
    {
      goto LABEL_9;
    }
  }

  if (!defaults::bbtrace::get(a1, &v114))
  {
    goto LABEL_322;
  }

LABEL_9:
  v5 = a1[23];
  if ((v5 & 0x80000000) == 0)
  {
    if (strcasecmp(a1, *MEMORY[0x29EDBE6E0]))
    {
      if (strcasecmp(a1, *MEMORY[0x29EDBE798]))
      {
        if (strcasecmp(a1, *MEMORY[0x29EDBEA30]))
        {
          if (strcasecmp(a1, *MEMORY[0x29EDBE590]))
          {
            if (strcasecmp(a1, *MEMORY[0x29EDBF208]))
            {
              if (strcasecmp(a1, *MEMORY[0x29EDBE8F8]))
              {
                if (strcasecmp(a1, *MEMORY[0x29EDBE880]))
                {
                  v6 = *MEMORY[0x29EDBE6E8];
                  v7 = a1;
                  if (strcasecmp(a1, *MEMORY[0x29EDBE6E8]))
                  {
                    goto LABEL_18;
                  }

                  goto LABEL_37;
                }

LABEL_107:
                *__dst = -1431655766;
                if (!util::convert<int>(&v114, __dst, 0))
                {
                  goto LABEL_322;
                }

                v48 = *__dst;
                std::string::basic_string[abi:ne200100]<0>(__dst, *MEMORY[0x29EDBF8A0]);
                LODWORD(__p.__r_.__value_.__l.__data_) = v48;
                v38 = prop::file::set<unsigned int>(__dst, a1, &__p);
LABEL_121:
                v15 = v38;
LABEL_122:
                if ((__dst[23] & 0x80000000) != 0)
                {
                  operator delete(*__dst);
                }

                goto LABEL_323;
              }

LABEL_92:
              v39 = *MEMORY[0x29EDBF8A0];
              v40 = strlen(*MEMORY[0x29EDBF8A0]);
              if (v40 > 0x7FFFFFFFFFFFFFF7)
              {
                std::string::__throw_length_error[abi:ne200100]();
              }

              v41 = v40;
              if (v40 >= 0x17)
              {
                if ((v40 | 7) == 0x17)
                {
                  v49 = 25;
                }

                else
                {
                  v49 = (v40 | 7) + 1;
                }

                v42 = operator new(v49);
                *&__dst[8] = v41;
                *&__dst[16] = v49 | 0x8000000000000000;
                *__dst = v42;
              }

              else
              {
                __dst[23] = v40;
                v42 = __dst;
                if (!v40)
                {
                  goto LABEL_114;
                }
              }

              memmove(v42, v39, v41);
LABEL_114:
              v42[v41] = 0;
              v38 = prop::file::set<std::string>(__dst, a1, &v114);
              goto LABEL_121;
            }

LABEL_77:
            *__dst = -1431655766;
            if (!util::convert<int>(&v114, __dst, 0))
            {
              goto LABEL_322;
            }

            v31 = *__dst;
            v32 = *MEMORY[0x29EDBF8A0];
            v33 = strlen(*MEMORY[0x29EDBF8A0]);
            if (v33 > 0x7FFFFFFFFFFFFFF7)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            v34 = v33;
            if (v33 >= 0x17)
            {
              if ((v33 | 7) == 0x17)
              {
                v50 = 25;
              }

              else
              {
                v50 = (v33 | 7) + 1;
              }

              v35 = operator new(v50);
              *&__dst[8] = v34;
              *&__dst[16] = v50 | 0x8000000000000000;
              *__dst = v35;
            }

            else
            {
              __dst[23] = v33;
              v35 = __dst;
              if (!v33)
              {
                goto LABEL_120;
              }
            }

            memmove(v35, v32, v34);
LABEL_120:
            v35[v34] = 0;
            LODWORD(__p.__r_.__value_.__l.__data_) = v31;
            v38 = prop::file::set<unsigned int>(__dst, a1, &__p);
            goto LABEL_121;
          }

LABEL_66:
          LODWORD(__p.__r_.__value_.__l.__data_) = -1431655766;
          v26 = util::convert<int>(&v114, &__p, 0);
          v27 = v26;
          v28 = capabilities::radio::maverick(v26);
          if (v28)
          {
            if (LODWORD(__p.__r_.__value_.__l.__data_) < 5)
            {
              v29 = v27;
            }

            else
            {
              v29 = 0;
            }

            if ((v29 & 1) == 0)
            {
              goto LABEL_322;
            }
          }

          else
          {
            v36 = capabilities::radio::ice(v28);
            if ((v36 & v27) == 1)
            {
              v15 = 0;
              if (LODWORD(__p.__r_.__value_.__l.__data_) > 6 || ((1 << __p.__r_.__value_.__s.__data_[0]) & 0x45) == 0)
              {
                goto LABEL_323;
              }
            }

            else if (((v36 ^ 1) & v27) != 1)
            {
              goto LABEL_322;
            }
          }

          v43 = *MEMORY[0x29EDBF8A0];
          v44 = strlen(*MEMORY[0x29EDBF8A0]);
          if (v44 > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          v45 = v44;
          if (v44 >= 0x17)
          {
            if ((v44 | 7) == 0x17)
            {
              v47 = 25;
            }

            else
            {
              v47 = (v44 | 7) + 1;
            }

            v46 = operator new(v47);
            *&__dst[8] = v45;
            *&__dst[16] = v47 | 0x8000000000000000;
            *__dst = v46;
          }

          else
          {
            __dst[23] = v44;
            v46 = __dst;
            if (!v44)
            {
              goto LABEL_106;
            }
          }

          memmove(v46, v43, v45);
LABEL_106:
          v46[v45] = 0;
          v38 = prop::file::set<int>(__dst, a1, &__p);
          goto LABEL_121;
        }

LABEL_56:
        __p.__r_.__value_.__s.__data_[0] = -86;
        if (!util::convert<BOOL>(&v114, &__p, 0))
        {
          goto LABEL_322;
        }

        v19 = *MEMORY[0x29EDBF8A0];
        v24 = strlen(*MEMORY[0x29EDBF8A0]);
        if (v24 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v21 = v24;
        if (v24 >= 0x17)
        {
          if ((v24 | 7) == 0x17)
          {
            v37 = 25;
          }

          else
          {
            v37 = (v24 | 7) + 1;
          }

          v22 = operator new(v37);
          *&__dst[8] = v21;
          *&__dst[16] = v37 | 0x8000000000000000;
          *__dst = v22;
        }

        else
        {
          __dst[23] = v24;
          v22 = __dst;
          if (!v24)
          {
            goto LABEL_91;
          }
        }

        goto LABEL_90;
      }

LABEL_51:
      __p.__r_.__value_.__s.__data_[0] = -86;
      if (!util::convert<BOOL>(&v114, &__p, 0))
      {
        goto LABEL_322;
      }

      v19 = *MEMORY[0x29EDBF8A0];
      v23 = strlen(*MEMORY[0x29EDBF8A0]);
      if (v23 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v21 = v23;
      if (v23 >= 0x17)
      {
        if ((v23 | 7) == 0x17)
        {
          v30 = 25;
        }

        else
        {
          v30 = (v23 | 7) + 1;
        }

        v22 = operator new(v30);
        *&__dst[8] = v21;
        *&__dst[16] = v30 | 0x8000000000000000;
        *__dst = v22;
      }

      else
      {
        __dst[23] = v23;
        v22 = __dst;
        if (!v23)
        {
          goto LABEL_91;
        }
      }

      goto LABEL_90;
    }

LABEL_46:
    __p.__r_.__value_.__s.__data_[0] = -86;
    if (!util::convert<BOOL>(&v114, &__p, 0))
    {
      goto LABEL_322;
    }

    v19 = *MEMORY[0x29EDBF8A0];
    v20 = strlen(*MEMORY[0x29EDBF8A0]);
    if (v20 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v21 = v20;
    if (v20 >= 0x17)
    {
      if ((v20 | 7) == 0x17)
      {
        v25 = 25;
      }

      else
      {
        v25 = (v20 | 7) + 1;
      }

      v22 = operator new(v25);
      *&__dst[8] = v21;
      *&__dst[16] = v25 | 0x8000000000000000;
      *__dst = v22;
    }

    else
    {
      __dst[23] = v20;
      v22 = __dst;
      if (!v20)
      {
        goto LABEL_91;
      }
    }

LABEL_90:
    memmove(v22, v19, v21);
LABEL_91:
    v22[v21] = 0;
    v38 = prop::file::set<BOOL>(__dst, a1, &__p);
    goto LABEL_121;
  }

  v7 = *a1;
  if (!strcasecmp(*a1, *MEMORY[0x29EDBE6E0]))
  {
    goto LABEL_46;
  }

  if (!strcasecmp(v7, *MEMORY[0x29EDBE798]))
  {
    goto LABEL_51;
  }

  if (!strcasecmp(v7, *MEMORY[0x29EDBEA30]))
  {
    goto LABEL_56;
  }

  if (!strcasecmp(v7, *MEMORY[0x29EDBE590]))
  {
    goto LABEL_66;
  }

  if (!strcasecmp(v7, *MEMORY[0x29EDBF208]))
  {
    goto LABEL_77;
  }

  if (!strcasecmp(v7, *MEMORY[0x29EDBE8F8]))
  {
    goto LABEL_92;
  }

  if (!strcasecmp(v7, *MEMORY[0x29EDBE880]))
  {
    goto LABEL_107;
  }

  v6 = *MEMORY[0x29EDBE6E8];
  if (strcasecmp(v7, *MEMORY[0x29EDBE6E8]))
  {
LABEL_18:
    v8 = strcasecmp(v7, diag::config::kEnabledDuringSleepKey[0]);
    if (!v8)
    {
      v51 = capabilities::radio::maverick(v8);
      if (v51 & 1) != 0 || (capabilities::radio::ice(v51))
      {
        *__dst = -1431655766;
        if ((util::convert<int>(&v114, __dst, 0) & 1) == 0)
        {
          goto LABEL_322;
        }

        v52 = *__dst;
        if (*__dst > 2u)
        {
          goto LABEL_322;
        }

        goto LABEL_308;
      }

      LOBYTE(v5) = a1[23];
    }

    v9 = *a1;
    if ((v5 & 0x80u) == 0)
    {
      v10 = a1;
    }

    else
    {
      v10 = *a1;
    }

    v11 = strcasecmp(v10, *MEMORY[0x29EDBF1F8]);
    if (!v11)
    {
      if (capabilities::trace::supportsDataRateObserver(v11))
      {
        LODWORD(__p.__r_.__value_.__l.__data_) = -1431655766;
        v12 = util::convert<unsigned int>(&v114, &__p);
        if (LODWORD(__p.__r_.__value_.__l.__data_) < 0xBB9)
        {
          v13 = v12;
        }

        else
        {
          v13 = 0;
        }

        if (v13 == 1)
        {
          goto LABEL_299;
        }

        goto LABEL_322;
      }

      LOBYTE(v5) = a1[23];
      v9 = *a1;
    }

    if ((v5 & 0x80u) == 0)
    {
      v53 = a1;
    }

    else
    {
      v53 = v9;
    }

    v54 = strcasecmp(v53, diag::config::kEnabledDuringSleepKey[0]);
    if (!v54)
    {
      if (capabilities::radio::initium(v54))
      {
        LODWORD(__p.__r_.__value_.__l.__data_) = 0;
        v55 = util::convert<unsigned int>(&v114, &__p);
        if (LODWORD(__p.__r_.__value_.__l.__data_) < 3)
        {
          v56 = v55;
        }

        else
        {
          v56 = 0;
        }

        if (v56 == 1)
        {
          goto LABEL_299;
        }

        goto LABEL_322;
      }

      LOBYTE(v5) = a1[23];
      v9 = *a1;
    }

    if ((v5 & 0x80u) == 0)
    {
      v57 = a1;
    }

    else
    {
      v57 = v9;
    }

    v58 = strcasecmp(v57, *MEMORY[0x29EDBFCB8]);
    if (!v58)
    {
      if (capabilities::radio::initium(v58))
      {
        *__dst = -1431655766;
        if ((util::convert<int>(&v114, __dst, 0) & 1) == 0)
        {
          goto LABEL_322;
        }

        v52 = *__dst;
        if (*__dst > 3u)
        {
          goto LABEL_322;
        }

LABEL_308:
        std::string::basic_string[abi:ne200100]<0>(__dst, *MEMORY[0x29EDBF8A0]);
        LODWORD(__p.__r_.__value_.__l.__data_) = v52;
        v38 = prop::file::set<unsigned int>(__dst, a1, &__p);
        goto LABEL_121;
      }

      LOBYTE(v5) = a1[23];
      v9 = *a1;
    }

    if ((v5 & 0x80u) == 0)
    {
      v59 = a1;
    }

    else
    {
      v59 = v9;
    }

    v60 = strcasecmp(v59, diag::config::kBufferingOnAPAwake[0]);
    if (!v60)
    {
      if (capabilities::radio::maverick(v60))
      {
        __p.__r_.__value_.__s.__data_[0] = -86;
        if (!util::convert<BOOL>(&v114, &__p, 0))
        {
          goto LABEL_322;
        }

        goto LABEL_230;
      }

      LOBYTE(v5) = a1[23];
      v9 = *a1;
    }

    if ((v5 & 0x80u) == 0)
    {
      v61 = a1;
    }

    else
    {
      v61 = v9;
    }

    v62 = strcasecmp(v61, diag::config::kStallDetectionKey[0]);
    if (!v62)
    {
      if (capabilities::radio::maverick(v62))
      {
        __p.__r_.__value_.__s.__data_[0] = -86;
        if (!util::convert<BOOL>(&v114, &__p, 0))
        {
          goto LABEL_322;
        }

        goto LABEL_230;
      }

      LOBYTE(v5) = a1[23];
      v9 = *a1;
    }

    if ((v5 & 0x80u) == 0)
    {
      v63 = a1;
    }

    else
    {
      v63 = v9;
    }

    v64 = strcasecmp(v63, diag::config::kStallDetectionRetriesKey[0]);
    if (!v64)
    {
      if (capabilities::radio::maverick(v64))
      {
        LODWORD(__p.__r_.__value_.__l.__data_) = -1431655766;
        if (util::convert<unsigned int>(&v114, &__p))
        {
LABEL_299:
          std::string::basic_string[abi:ne200100]<0>(__dst, *MEMORY[0x29EDBF8A0]);
          v38 = prop::file::set<unsigned int>(__dst, a1, &__p);
          goto LABEL_121;
        }

LABEL_322:
        v15 = 0;
        goto LABEL_323;
      }

      LOBYTE(v5) = a1[23];
      v9 = *a1;
    }

    if ((v5 & 0x80u) == 0)
    {
      v65 = a1;
    }

    else
    {
      v65 = v9;
    }

    v66 = strcasecmp(v65, diag::config::kStallDetectionRecoveryKey[0]);
    if (!v66)
    {
      if (capabilities::radio::maverick(v66))
      {
        LODWORD(__p.__r_.__value_.__l.__data_) = -1431655766;
        if (!diag::config::asEnum(&v114, &__p))
        {
          goto LABEL_322;
        }

        std::string::basic_string[abi:ne200100]<0>(__dst, *MEMORY[0x29EDBF8A0]);
        data = __p.__r_.__value_.__l.__data_;
        v38 = prop::file::set<unsigned int>(__dst, a1, &data);
        goto LABEL_121;
      }

      LOBYTE(v5) = a1[23];
    }

    if ((v5 & 0x80) != 0)
    {
      v67 = *a1;
      if (strcasecmp(*a1, diag::config::kKeepScratchLogsKey[0]))
      {
LABEL_185:
        v68 = strcasecmp(v67, *MEMORY[0x29EDBF200]);
        if (!v68)
        {
          if (capabilities::radio::maverick(v68))
          {
            goto LABEL_268;
          }

          LOBYTE(v5) = a1[23];
        }

        if ((v5 & 0x80) != 0)
        {
          v69 = *a1;
          if (!strcasecmp(*a1, *MEMORY[0x29EDBF418]))
          {
            goto LABEL_268;
          }
        }

        else
        {
          v69 = a1;
          if (!strcasecmp(a1, *MEMORY[0x29EDBF418]))
          {
            goto LABEL_268;
          }
        }

        v70 = strcasecmp(v69, diag::config::kExtraDMCFileKey[0]);
        if (!v70)
        {
          if (capabilities::radio::maverick(v70))
          {
            goto LABEL_268;
          }

          LOBYTE(v5) = a1[23];
        }

        if ((v5 & 0x80u) == 0)
        {
          v71 = a1;
        }

        else
        {
          v71 = *a1;
        }

        v72 = strcasecmp(v71, *MEMORY[0x29EDBEF70]);
        if (!v72)
        {
          if (capabilities::radio::maverick(v72))
          {
            goto LABEL_268;
          }

          LOBYTE(v5) = a1[23];
        }

        if ((v5 & 0x80) != 0)
        {
          v73 = *a1;
          if (!strcasecmp(*a1, *MEMORY[0x29EDBF2E0]))
          {
            goto LABEL_268;
          }

          if (strcasecmp(v73, *MEMORY[0x29EDBF7F0]))
          {
            if (!strcasecmp(v73, *MEMORY[0x29EDBF7B0]) || !strcasecmp(v73, *MEMORY[0x29EDBF7B8]))
            {
              goto LABEL_268;
            }

            if (strcasecmp(v73, *MEMORY[0x29EDBE790]))
            {
              if (!strcasecmp(v73, *MEMORY[0x29EDBEDD8]) || !strcasecmp(v73, *MEMORY[0x29EDBEF80]))
              {
                goto LABEL_268;
              }

              if (strcasecmp(v73, *MEMORY[0x29EDBF410]))
              {
LABEL_215:
                v74 = strcasecmp(v73, *MEMORY[0x29EDBFC98]);
                if (!v74)
                {
                  if (capabilities::radio::dal(v74))
                  {
                    goto LABEL_268;
                  }

                  LOBYTE(v5) = a1[23];
                }

                v85 = *a1;
                if ((v5 & 0x80u) == 0)
                {
                  v86 = a1;
                }

                else
                {
                  v86 = *a1;
                }

                v87 = strcasecmp(v86, *MEMORY[0x29EDBFC80]);
                if (!v87)
                {
                  if (capabilities::radio::dal(v87))
                  {
                    LODWORD(__p.__r_.__value_.__l.__data_) = -1431655766;
                    v88 = util::convert<int>(&v114, &__p, 0);
                    if (LODWORD(__p.__r_.__value_.__l.__data_) < 3)
                    {
                      v89 = v88;
                    }

                    else
                    {
                      v89 = 0;
                    }

                    if (v89 != 1)
                    {
                      goto LABEL_322;
                    }

                    goto LABEL_279;
                  }

                  LOBYTE(v5) = a1[23];
                  v85 = *a1;
                }

                if ((v5 & 0x80u) == 0)
                {
                  v90 = a1;
                }

                else
                {
                  v90 = v85;
                }

                v91 = strcasecmp(v90, *MEMORY[0x29EDBFC90]);
                if (!v91)
                {
                  if (capabilities::radio::dal(v91))
                  {
LABEL_268:
                    std::string::basic_string[abi:ne200100]<0>(__dst, *MEMORY[0x29EDBF8A0]);
                    v38 = prop::file::set<std::string>(__dst, a1, &v114);
                    goto LABEL_121;
                  }

                  LOBYTE(v5) = a1[23];
                  v85 = *a1;
                }

                if ((v5 & 0x80u) == 0)
                {
                  v92 = a1;
                }

                else
                {
                  v92 = v85;
                }

                v93 = strcasecmp(v92, *MEMORY[0x29EDBFC78]);
                if (!v93)
                {
                  if (capabilities::radio::dal(v93))
                  {
                    LODWORD(__p.__r_.__value_.__l.__data_) = -1431655766;
                    v94 = util::convert<int>(&v114, &__p, 0);
                    if (LODWORD(__p.__r_.__value_.__l.__data_) < 3)
                    {
                      v95 = v94;
                    }

                    else
                    {
                      v95 = 0;
                    }

                    if (v95 != 1)
                    {
                      goto LABEL_322;
                    }

                    goto LABEL_279;
                  }

                  LOBYTE(v5) = a1[23];
                  v85 = *a1;
                }

                if ((v5 & 0x80u) == 0)
                {
                  v96 = a1;
                }

                else
                {
                  v96 = v85;
                }

                v97 = strcasecmp(v96, *MEMORY[0x29EDBFCA8]);
                if (!v97)
                {
                  if (capabilities::trace::supportsErrorHandling(v97))
                  {
                    *__dst = -1431655766;
                    if ((util::convert<int>(&v114, __dst, 0) & 1) == 0)
                    {
                      goto LABEL_322;
                    }

                    v52 = *__dst;
                    if (*__dst > 2u)
                    {
                      goto LABEL_322;
                    }

                    goto LABEL_308;
                  }

                  LOBYTE(v5) = a1[23];
                  v85 = *a1;
                }

                if ((v5 & 0x80u) == 0)
                {
                  v98 = a1;
                }

                else
                {
                  v98 = v85;
                }

                v99 = strcasecmp(v98, *MEMORY[0x29EDBF648]);
                if (!v99)
                {
                  if (capabilities::radio::initium(v99))
                  {
                    LODWORD(__p.__r_.__value_.__l.__data_) = 0;
                    v100 = util::convert<unsigned int>(&v114, &__p);
                    if (LODWORD(__p.__r_.__value_.__l.__data_))
                    {
                      v101 = v100;
                    }

                    else
                    {
                      v101 = 0;
                    }

                    if (v101 == 1)
                    {
                      goto LABEL_299;
                    }

                    goto LABEL_322;
                  }

                  LOBYTE(v5) = a1[23];
                  v85 = *a1;
                }

                if ((v5 & 0x80u) == 0)
                {
                  v102 = a1;
                }

                else
                {
                  v102 = v85;
                }

                v103 = strcasecmp(v102, *MEMORY[0x29EDBF500]);
                if (!v103)
                {
                  if (capabilities::radio::initium(v103))
                  {
                    *__dst = -1431655766;
                    if ((util::convert<int>(&v114, __dst, 0) & 1) == 0)
                    {
                      goto LABEL_322;
                    }

                    v52 = *__dst;
                    if (*__dst > 2u)
                    {
                      goto LABEL_322;
                    }

                    goto LABEL_308;
                  }

                  LOBYTE(v5) = a1[23];
                  v85 = *a1;
                }

                if ((v5 & 0x80u) == 0)
                {
                  v104 = a1;
                }

                else
                {
                  v104 = v85;
                }

                if (!strcasecmp(v104, *MEMORY[0x29EDBF2D8]))
                {
                  std::string::basic_string[abi:ne200100]<0>(__dst, *MEMORY[0x29EDBF8A0]);
                  v38 = prop::file::set<std::string>(__dst, a1, a2);
                  goto LABEL_121;
                }

                sGetOsLogContext();
                v105 = qword_2A18B7930;
                if (!os_log_type_enabled(qword_2A18B7930, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_322;
                }

                v106 = *MEMORY[0x29EDBF8A0];
                if (a1[23] >= 0)
                {
                  v107 = a1;
                }

                else
                {
                  v107 = *a1;
                }

                v108 = &v114;
                if ((v114.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v108 = v114.__r_.__value_.__r.__words[0];
                }

                *__dst = 136315650;
                *&__dst[4] = v106;
                *&__dst[12] = 2080;
                *&__dst[14] = v107;
                *&__dst[22] = 2080;
                v116 = v108;
                v82 = "[bbtrace] set: Invalid key; domain='%s' key='%s' value='%s'";
                v83 = v105;
                v84 = 32;
LABEL_321:
                _os_log_error_impl(&dword_296FF7000, v83, OS_LOG_TYPE_ERROR, v82, __dst, v84);
                goto LABEL_322;
              }

              goto LABEL_226;
            }

LABEL_233:
            data = -1431655766;
            v75 = util::convert<unsigned int>(&v114, &data);
            if (v75)
            {
              v76 = data;
              v77 = defaults::bbtrace::min_file_size(v75);
              if (v76 < v77)
              {
                v76 = defaults::bbtrace::min_file_size(v77);
              }

              if (!v76)
              {
                sGetOsLogContext();
                v81 = qword_2A18B7930;
                if (!os_log_type_enabled(qword_2A18B7930, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_322;
                }

                *__dst = 0;
                v82 = "file size cannot be 0";
                v83 = v81;
                v84 = 2;
                goto LABEL_321;
              }

              data = 1 << (__clz(v76) ^ 0x1F);
              std::string::basic_string[abi:ne200100]<0>(__dst, *MEMORY[0x29EDBF8A0]);
              v75 = prop::file::set<unsigned int>(__dst, a1, &data);
              v78 = v75;
              if ((__dst[23] & 0x80000000) != 0)
              {
                operator delete(*__dst);
              }
            }

            else
            {
              v78 = 0;
            }

            v79 = capabilities::trace::defaultHistorySizeMB(v75);
            v80 = 0x7FFFFFFF;
            if (v79 < 0x7FFFFFFF)
            {
              v80 = v79;
            }

            __val = v80;
            std::string::basic_string[abi:ne200100]<0>(__dst, v6);
            prop::bbtrace::get<int>(__dst, &__val);
            if ((__dst[23] & 0x80000000) != 0)
            {
              operator delete(*__dst);
            }

            if (v78)
            {
              std::string::basic_string[abi:ne200100]<0>(__dst, v6);
              std::to_string(&__p, __val);
              v15 = prop::bbtrace::set(__dst, &__p);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }

              goto LABEL_122;
            }

            goto LABEL_322;
          }
        }

        else
        {
          if (!strcasecmp(a1, *MEMORY[0x29EDBF2E0]))
          {
            goto LABEL_268;
          }

          if (strcasecmp(a1, *MEMORY[0x29EDBF7F0]))
          {
            if (!strcasecmp(a1, *MEMORY[0x29EDBF7B0]) || !strcasecmp(a1, *MEMORY[0x29EDBF7B8]))
            {
              goto LABEL_268;
            }

            if (strcasecmp(a1, *MEMORY[0x29EDBE790]))
            {
              if (!strcasecmp(a1, *MEMORY[0x29EDBEDD8]) || !strcasecmp(a1, *MEMORY[0x29EDBEF80]))
              {
                goto LABEL_268;
              }

              v73 = a1;
              if (strcasecmp(a1, *MEMORY[0x29EDBF410]))
              {
                goto LABEL_215;
              }

LABEL_226:
              __p.__r_.__value_.__s.__data_[0] = -86;
              if (!util::convert<BOOL>(&v114, &__p, 0))
              {
                goto LABEL_322;
              }

              goto LABEL_230;
            }

            goto LABEL_233;
          }
        }

        __p.__r_.__value_.__s.__data_[0] = 0;
        if (!util::convert<BOOL>(&v114, &__p, 0))
        {
          goto LABEL_322;
        }

LABEL_230:
        std::string::basic_string[abi:ne200100]<0>(__dst, *MEMORY[0x29EDBF8A0]);
        v38 = prop::file::set<BOOL>(__dst, a1, &__p);
        goto LABEL_121;
      }
    }

    else
    {
      v67 = a1;
      if (strcasecmp(a1, diag::config::kKeepScratchLogsKey[0]))
      {
        goto LABEL_185;
      }
    }

    __p.__r_.__value_.__s.__data_[0] = -86;
    if (!util::convert<BOOL>(&v114, &__p, 0))
    {
      goto LABEL_322;
    }

    goto LABEL_230;
  }

LABEL_37:
  LODWORD(__p.__r_.__value_.__l.__data_) = -1431655766;
  v14 = util::convert<int>(&v114, &__p, 0);
  v15 = v14;
  if (SLODWORD(__p.__r_.__value_.__l.__data_) < 0)
  {
    v16 = v14;
  }

  else
  {
    v16 = 0;
  }

  if (v16 == 1)
  {
    v17 = capabilities::trace::defaultHistorySizeMB(v14);
    v18 = 0x7FFFFFFF;
    if (v17 < 0x7FFFFFFF)
    {
      v18 = v17;
    }

    LODWORD(__p.__r_.__value_.__l.__data_) = v18;
  }

  if (v15)
  {
LABEL_279:
    std::string::basic_string[abi:ne200100]<0>(__dst, *MEMORY[0x29EDBF8A0]);
    v38 = prop::file::set<int>(__dst, a1, &__p);
    goto LABEL_121;
  }

LABEL_323:
  if (SHIBYTE(v114.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v114.__r_.__value_.__l.__data_);
  }

  v109 = *MEMORY[0x29EDCA608];
  return v15;
}

void sub_297133458(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t prop::coredump::set(std::string::size_type a1, char *a2)
{
  v23 = *MEMORY[0x29EDCA608];
  memset(&v20, 170, sizeof(v20));
  if (a2[23] < 0)
  {
    std::string::__init_copy_ctor_external(&v20, *a2, *(a2 + 1));
    if (a2[23] >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    if (strcasecmp(v4, "default"))
    {
      goto LABEL_9;
    }
  }

  else
  {
    v20 = *a2;
    if (strcasecmp(a2, "default"))
    {
      goto LABEL_9;
    }
  }

  if (!defaults::coredump::get(a1, &v20))
  {
    goto LABEL_39;
  }

LABEL_9:
  if (*(a1 + 23) >= 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  if (strcasecmp(v5, *MEMORY[0x29EDBE6E0]))
  {
    if ((atomic_load_explicit(&qword_2A18B7920, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18B7920))
    {
      qword_2A18B7928 = 0;
      qword_2A18B7930 = 0;
      __cxa_guard_release(&qword_2A18B7920);
    }

    if (_MergedGlobals_12 == -1)
    {
      v6 = qword_2A18B7930;
      if (!os_log_type_enabled(qword_2A18B7930, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_39;
      }
    }

    else
    {
      dispatch_once(&_MergedGlobals_12, &__block_literal_global_12);
      v6 = qword_2A18B7930;
      if (!os_log_type_enabled(qword_2A18B7930, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_39;
      }
    }

    v7 = *MEMORY[0x29EDBE5F8];
    if (*(a1 + 23) >= 0)
    {
      v8 = a1;
    }

    else
    {
      v8 = *a1;
    }

    v9 = &v20;
    if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v9 = v20.__r_.__value_.__r.__words[0];
    }

    *buf = 136315650;
    *&buf[4] = v7;
    *&buf[12] = 2080;
    *&buf[14] = v8;
    *&buf[22] = 2080;
    v22 = v9;
    _os_log_error_impl(&dword_296FF7000, v6, OS_LOG_TYPE_ERROR, "[coredump] set: Invalid key; domain='%s' key='%s' value='%s'", buf, 0x20u);
LABEL_39:
    v15 = 0;
    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_40;
    }

    goto LABEL_34;
  }

  v19 = -86;
  if (!util::convert<BOOL>(&v20, &v19, 0))
  {
    goto LABEL_39;
  }

  v10 = *MEMORY[0x29EDBE5F8];
  v11 = strlen(*MEMORY[0x29EDBE5F8]);
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
    *&buf[8] = v12;
    *&buf[16] = v14 | 0x8000000000000000;
    *buf = v13;
    goto LABEL_31;
  }

  buf[23] = v11;
  v13 = buf;
  if (v11)
  {
LABEL_31:
    memmove(v13, v10, v12);
  }

  v13[v12] = 0;
  v15 = prop::file::set<BOOL>(buf, a1, &v19);
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_40;
    }
  }

  else if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_40:
    operator delete(v20.__r_.__value_.__l.__data_);
    v18 = *MEMORY[0x29EDCA608];
    return v15;
  }

LABEL_34:
  v16 = *MEMORY[0x29EDCA608];
  return v15;
}

void sub_29713396C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t prop::ipc::set(char *a1, char *a2)
{
  v32 = *MEMORY[0x29EDCA608];
  memset(&v29, 170, sizeof(v29));
  if (a2[23] < 0)
  {
    std::string::__init_copy_ctor_external(&v29, *a2, *(a2 + 1));
    if (a2[23] >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    if (strcasecmp(v4, "default"))
    {
      goto LABEL_9;
    }
  }

  else
  {
    v29 = *a2;
    if (strcasecmp(a2, "default"))
    {
      goto LABEL_9;
    }
  }

  if (!defaults::ipc::get(a1, &v29))
  {
    goto LABEL_57;
  }

LABEL_9:
  if (a1[23] < 0)
  {
    v5 = *a1;
    if (strcasecmp(*a1, *MEMORY[0x29EDBE6E0]))
    {
      if (strcasecmp(v5, *MEMORY[0x29EDBE6E8]))
      {
        goto LABEL_12;
      }

      goto LABEL_25;
    }

LABEL_33:
    LOBYTE(v28) = -86;
    if (!util::convert<BOOL>(&v29, &v28, 0))
    {
      goto LABEL_57;
    }

    v17 = *MEMORY[0x29EDBF8E8];
    v18 = strlen(*MEMORY[0x29EDBF8E8]);
    if (v18 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v19 = v18;
    if (v18 >= 0x17)
    {
      if ((v18 | 7) == 0x17)
      {
        v21 = 25;
      }

      else
      {
        v21 = (v18 | 7) + 1;
      }

      v20 = operator new(v21);
      *&buf[8] = v19;
      *&buf[16] = v21 | 0x8000000000000000;
      *buf = v20;
    }

    else
    {
      buf[23] = v18;
      v20 = buf;
      if (!v18)
      {
        goto LABEL_43;
      }
    }

    memmove(v20, v17, v19);
LABEL_43:
    v20[v19] = 0;
    v22 = prop::file::set<BOOL>(buf, a1, &v28);
    goto LABEL_50;
  }

  if (!strcasecmp(a1, *MEMORY[0x29EDBE6E0]))
  {
    goto LABEL_33;
  }

  v5 = a1;
  if (strcasecmp(a1, *MEMORY[0x29EDBE6E8]))
  {
LABEL_12:
    v6 = strcasecmp(v5, "BufferCount");
    if (v6 || (capabilities::ipc::supportsPCI(v6) & 1) == 0)
    {
      if ((atomic_load_explicit(&qword_2A18B7920, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18B7920))
      {
        qword_2A18B7928 = 0;
        qword_2A18B7930 = 0;
        __cxa_guard_release(&qword_2A18B7920);
      }

      if (_MergedGlobals_12 == -1)
      {
        v7 = qword_2A18B7930;
        if (!os_log_type_enabled(qword_2A18B7930, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_57;
        }
      }

      else
      {
        dispatch_once(&_MergedGlobals_12, &__block_literal_global_12);
        v7 = qword_2A18B7930;
        if (!os_log_type_enabled(qword_2A18B7930, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_57;
        }
      }

      v8 = *MEMORY[0x29EDBF8E8];
      if (a1[23] >= 0)
      {
        v9 = a1;
      }

      else
      {
        v9 = *a1;
      }

      v10 = &v29;
      if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v10 = v29.__r_.__value_.__r.__words[0];
      }

      *buf = 136315650;
      *&buf[4] = v8;
      *&buf[12] = 2080;
      *&buf[14] = v9;
      *&buf[22] = 2080;
      v31 = v10;
      _os_log_error_impl(&dword_296FF7000, v7, OS_LOG_TYPE_ERROR, "[ipc] set: Invalid key; domain='%s' key='%s' value='%s'", buf, 0x20u);
    }

LABEL_57:
    v24 = 0;
    if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_58;
    }

    goto LABEL_52;
  }

LABEL_25:
  v28 = -1431655766;
  v11 = util::convert<int>(&v29, &v28, 0);
  if (v28 >= 0)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12 != 1)
  {
    goto LABEL_57;
  }

  v13 = *MEMORY[0x29EDBF8E8];
  v14 = strlen(*MEMORY[0x29EDBF8E8]);
  if (v14 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v15 = v14;
  if (v14 >= 0x17)
  {
    if ((v14 | 7) == 0x17)
    {
      v23 = 25;
    }

    else
    {
      v23 = (v14 | 7) + 1;
    }

    v16 = operator new(v23);
    *&buf[8] = v15;
    *&buf[16] = v23 | 0x8000000000000000;
    *buf = v16;
  }

  else
  {
    buf[23] = v14;
    v16 = buf;
    if (!v14)
    {
      goto LABEL_49;
    }
  }

  memmove(v16, v13, v15);
LABEL_49:
  v16[v15] = 0;
  v22 = prop::file::set<int>(buf, a1, &v28);
LABEL_50:
  v24 = v22;
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
    if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_58;
    }
  }

  else if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_58:
    operator delete(v29.__r_.__value_.__l.__data_);
    v27 = *MEMORY[0x29EDCA608];
    return v24;
  }

LABEL_52:
  v25 = *MEMORY[0x29EDCA608];
  return v24;
}

void sub_297133DF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t prop::bbipc::set(char *a1, char *a2)
{
  v34 = *MEMORY[0x29EDCA608];
  memset(&v31, 170, sizeof(v31));
  if (a2[23] < 0)
  {
    std::string::__init_copy_ctor_external(&v31, *a2, *(a2 + 1));
    if (a2[23] >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    if (strcasecmp(v4, "default"))
    {
      goto LABEL_9;
    }
  }

  else
  {
    v31 = *a2;
    if (strcasecmp(a2, "default"))
    {
      goto LABEL_9;
    }
  }

  if (!defaults::bbipc::get(a1, &v31))
  {
    goto LABEL_64;
  }

LABEL_9:
  if ((a1[23] & 0x80000000) == 0)
  {
    if (strcasecmp(a1, *MEMORY[0x29EDBE6E0]))
    {
      v5 = a1;
      if (strcasecmp(a1, *MEMORY[0x29EDBE7A0]))
      {
        goto LABEL_12;
      }

LABEL_24:
      v30 = -1431655766;
      if (!util::convert<int>(&v31, &v30, 0))
      {
        goto LABEL_64;
      }

      v10 = *MEMORY[0x29EDBE7A8];
      v11 = strlen(*MEMORY[0x29EDBE7A8]);
      if (v11 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v12 = v11;
      if (v11 >= 0x17)
      {
        if ((v11 | 7) == 0x17)
        {
          v24 = 25;
        }

        else
        {
          v24 = (v11 | 7) + 1;
        }

        v13 = operator new(v24);
        *&buf[8] = v12;
        *&buf[16] = v24 | 0x8000000000000000;
        *buf = v13;
      }

      else
      {
        buf[23] = v11;
        v13 = buf;
        if (!v11)
        {
          goto LABEL_50;
        }
      }

      memmove(v13, v10, v12);
LABEL_50:
      v13[v12] = 0;
      v23 = prop::file::set<int>(buf, a1, &v30);
      goto LABEL_57;
    }

LABEL_29:
    LOBYTE(v30) = -86;
    if (!util::convert<BOOL>(&v31, &v30, 0))
    {
      goto LABEL_64;
    }

    v14 = *MEMORY[0x29EDBE7A8];
    v15 = strlen(*MEMORY[0x29EDBE7A8]);
    if (v15 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v16 = v15;
    if (v15 >= 0x17)
    {
      if ((v15 | 7) == 0x17)
      {
        v22 = 25;
      }

      else
      {
        v22 = (v15 | 7) + 1;
      }

      v17 = operator new(v22);
      *&buf[8] = v16;
      *&buf[16] = v22 | 0x8000000000000000;
      *buf = v17;
    }

    else
    {
      buf[23] = v15;
      v17 = buf;
      if (!v15)
      {
        goto LABEL_44;
      }
    }

    memmove(v17, v14, v16);
LABEL_44:
    v17[v16] = 0;
    v23 = prop::file::set<BOOL>(buf, a1, &v30);
    goto LABEL_57;
  }

  v5 = *a1;
  if (!strcasecmp(*a1, *MEMORY[0x29EDBE6E0]))
  {
    goto LABEL_29;
  }

  if (!strcasecmp(v5, *MEMORY[0x29EDBE7A0]))
  {
    goto LABEL_24;
  }

LABEL_12:
  if (strcasecmp(v5, *MEMORY[0x29EDBEA38]))
  {
    if ((atomic_load_explicit(&qword_2A18B7920, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18B7920))
    {
      qword_2A18B7928 = 0;
      qword_2A18B7930 = 0;
      __cxa_guard_release(&qword_2A18B7920);
    }

    if (_MergedGlobals_12 == -1)
    {
      v6 = qword_2A18B7930;
      if (!os_log_type_enabled(qword_2A18B7930, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_64;
      }
    }

    else
    {
      dispatch_once(&_MergedGlobals_12, &__block_literal_global_12);
      v6 = qword_2A18B7930;
      if (!os_log_type_enabled(qword_2A18B7930, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_64;
      }
    }

    v7 = *MEMORY[0x29EDBE7A8];
    if (a1[23] >= 0)
    {
      v8 = a1;
    }

    else
    {
      v8 = *a1;
    }

    v9 = &v31;
    if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v9 = v31.__r_.__value_.__r.__words[0];
    }

    *buf = 136315650;
    *&buf[4] = v7;
    *&buf[12] = 2080;
    *&buf[14] = v8;
    *&buf[22] = 2080;
    v33 = v9;
    _os_log_error_impl(&dword_296FF7000, v6, OS_LOG_TYPE_ERROR, "[bbipc] set: Invalid key; domain='%s' key='%s' value='%s'", buf, 0x20u);
LABEL_64:
    v26 = 0;
    if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_65;
    }

    goto LABEL_59;
  }

  v30 = -1431655766;
  if (!util::convert<unsigned int>(&v31, &v30))
  {
    goto LABEL_64;
  }

  v18 = *MEMORY[0x29EDBE7A8];
  v19 = strlen(*MEMORY[0x29EDBE7A8]);
  if (v19 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v20 = v19;
  if (v19 >= 0x17)
  {
    if ((v19 | 7) == 0x17)
    {
      v25 = 25;
    }

    else
    {
      v25 = (v19 | 7) + 1;
    }

    v21 = operator new(v25);
    *&buf[8] = v20;
    *&buf[16] = v25 | 0x8000000000000000;
    *buf = v21;
  }

  else
  {
    buf[23] = v19;
    v21 = buf;
    if (!v19)
    {
      goto LABEL_56;
    }
  }

  memmove(v21, v18, v20);
LABEL_56:
  v21[v20] = 0;
  v23 = prop::file::set<unsigned int>(buf, a1, &v30);
LABEL_57:
  v26 = v23;
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
    if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_65;
    }
  }

  else if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_65:
    operator delete(v31.__r_.__value_.__l.__data_);
    v29 = *MEMORY[0x29EDCA608];
    return v26;
  }

LABEL_59:
  v27 = *MEMORY[0x29EDCA608];
  return v26;
}

void sub_297134330(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t prop::compression::set(char *a1, char *a2)
{
  v30 = *MEMORY[0x29EDCA608];
  memset(&v27, 170, sizeof(v27));
  if (a2[23] < 0)
  {
    std::string::__init_copy_ctor_external(&v27, *a2, *(a2 + 1));
    if (a2[23] >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    if (strcasecmp(v4, "default"))
    {
      goto LABEL_9;
    }
  }

  else
  {
    v27 = *a2;
    if (strcasecmp(a2, "default"))
    {
      goto LABEL_9;
    }
  }

  if (!defaults::compression::get(a1, &v27))
  {
    goto LABEL_46;
  }

LABEL_9:
  v5 = a1[23];
  v6 = *a1;
  if (v5 >= 0)
  {
    v7 = a1;
  }

  else
  {
    v7 = *a1;
  }

  if (strcasecmp(v7, *MEMORY[0x29EDBD4A0]))
  {
    v8 = 0;
    goto LABEL_28;
  }

  v26 = 0;
  if (util::convert<int>(&v27, &v26, 0))
  {
    v9 = *MEMORY[0x29EDBE7B0];
    v10 = strlen(*MEMORY[0x29EDBE7B0]);
    if (v10 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v11 = v10;
    if (v10 >= 0x17)
    {
      if ((v10 | 7) == 0x17)
      {
        v13 = 25;
      }

      else
      {
        v13 = (v10 | 7) + 1;
      }

      v12 = operator new(v13);
      *&__dst[8] = v11;
      *&__dst[16] = v13 | 0x8000000000000000;
      *__dst = v12;
    }

    else
    {
      __dst[23] = v10;
      v12 = __dst;
      if (!v10)
      {
LABEL_25:
        v12[v11] = 0;
        v8 = prop::file::set<int>(__dst, a1, &v26);
        if ((__dst[23] & 0x80000000) != 0)
        {
          operator delete(*__dst);
        }

        goto LABEL_27;
      }
    }

    memmove(v12, v9, v11);
    goto LABEL_25;
  }

  v8 = 0;
LABEL_27:
  LOBYTE(v5) = a1[23];
  v6 = *a1;
LABEL_28:
  if ((v5 & 0x80u) == 0)
  {
    v14 = a1;
  }

  else
  {
    v14 = v6;
  }

  if (!strcasecmp(v14, *MEMORY[0x29EDBD340]))
  {
    LOBYTE(v26) = 1;
    if (util::convert<BOOL>(&v27, &v26, 0))
    {
      v19 = *MEMORY[0x29EDBE7B0];
      v20 = strlen(*MEMORY[0x29EDBE7B0]);
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
        *&__dst[8] = v21;
        *&__dst[16] = v23 | 0x8000000000000000;
        *__dst = v22;
      }

      else
      {
        __dst[23] = v20;
        v22 = __dst;
        if (!v20)
        {
LABEL_52:
          v22[v21] = 0;
          v8 = prop::file::set<BOOL>(__dst, a1, &v26);
          if ((__dst[23] & 0x80000000) != 0)
          {
            operator delete(*__dst);
          }

          goto LABEL_54;
        }
      }

      memmove(v22, v19, v21);
      goto LABEL_52;
    }

LABEL_46:
    v8 = 0;
    goto LABEL_54;
  }

  if ((atomic_load_explicit(&qword_2A18B7920, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18B7920))
  {
    qword_2A18B7928 = 0;
    qword_2A18B7930 = 0;
    __cxa_guard_release(&qword_2A18B7920);
  }

  if (_MergedGlobals_12 == -1)
  {
    v15 = qword_2A18B7930;
    if (!os_log_type_enabled(qword_2A18B7930, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_54;
    }
  }

  else
  {
    dispatch_once(&_MergedGlobals_12, &__block_literal_global_12);
    v15 = qword_2A18B7930;
    if (!os_log_type_enabled(qword_2A18B7930, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_54;
    }
  }

  v16 = *MEMORY[0x29EDBE7B0];
  if (a1[23] >= 0)
  {
    v17 = a1;
  }

  else
  {
    v17 = *a1;
  }

  v18 = &v27;
  if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v18 = v27.__r_.__value_.__r.__words[0];
  }

  *__dst = 136315650;
  *&__dst[4] = v16;
  *&__dst[12] = 2080;
  *&__dst[14] = v17;
  *&__dst[22] = 2080;
  v29 = v18;
  _os_log_error_impl(&dword_296FF7000, v15, OS_LOG_TYPE_ERROR, "[compression] set: Invalid key; domain='%s' key='%s' value='%s'", __dst, 0x20u);
LABEL_54:
  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  v24 = *MEMORY[0x29EDCA608];
  return v8;
}

void sub_297134784(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t prop::ttr::set(char *a1, char *a2)
{
  v29 = *MEMORY[0x29EDCA608];
  memset(&v26, 170, sizeof(v26));
  if (a2[23] < 0)
  {
    std::string::__init_copy_ctor_external(&v26, *a2, *(a2 + 1));
    if (a2[23] >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    if (strcasecmp(v4, "default"))
    {
      goto LABEL_9;
    }
  }

  else
  {
    v26 = *a2;
    if (strcasecmp(a2, "default"))
    {
      goto LABEL_9;
    }
  }

  if (!defaults::ttr::get(a1, &v26))
  {
    goto LABEL_55;
  }

LABEL_9:
  if ((a1[23] & 0x80000000) == 0)
  {
    v5 = a1;
    if (strcasecmp(a1, *MEMORY[0x29EDBE590]))
    {
      goto LABEL_11;
    }

LABEL_22:
    v25 = -1431655766;
    v10 = util::convert<unsigned int>(&v26, &v25);
    if (v25 < 4)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    if (v11 != 1)
    {
      goto LABEL_55;
    }

    v12 = *MEMORY[0x29EDBE718];
    v13 = strlen(*MEMORY[0x29EDBE718]);
    if (v13 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v14 = v13;
    if (v13 >= 0x17)
    {
      if ((v13 | 7) == 0x17)
      {
        v19 = 25;
      }

      else
      {
        v19 = (v13 | 7) + 1;
      }

      v15 = operator new(v19);
      *&buf[8] = v14;
      *&buf[16] = v19 | 0x8000000000000000;
      *buf = v15;
    }

    else
    {
      buf[23] = v13;
      v15 = buf;
      if (!v13)
      {
        goto LABEL_48;
      }
    }

    goto LABEL_47;
  }

  v5 = *a1;
  if (!strcasecmp(*a1, *MEMORY[0x29EDBE590]))
  {
    goto LABEL_22;
  }

LABEL_11:
  if (strcasecmp(v5, *MEMORY[0x29EDBF2D0]))
  {
    if ((atomic_load_explicit(&qword_2A18B7920, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18B7920))
    {
      qword_2A18B7928 = 0;
      qword_2A18B7930 = 0;
      __cxa_guard_release(&qword_2A18B7920);
    }

    if (_MergedGlobals_12 == -1)
    {
      v6 = qword_2A18B7930;
      if (!os_log_type_enabled(qword_2A18B7930, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_55;
      }
    }

    else
    {
      dispatch_once(&_MergedGlobals_12, &__block_literal_global_12);
      v6 = qword_2A18B7930;
      if (!os_log_type_enabled(qword_2A18B7930, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_55;
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

    v9 = &v26;
    if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v9 = v26.__r_.__value_.__r.__words[0];
    }

    *buf = 136315650;
    *&buf[4] = v7;
    *&buf[12] = 2080;
    *&buf[14] = v8;
    *&buf[22] = 2080;
    v28 = v9;
    _os_log_error_impl(&dword_296FF7000, v6, OS_LOG_TYPE_ERROR, "[ttr] set: Invalid key; domain='%s' key='%s' value='%s'", buf, 0x20u);
LABEL_55:
    v21 = 0;
    if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_56;
    }

    goto LABEL_50;
  }

  v25 = -1431655766;
  v16 = util::convert<unsigned int>(&v26, &v25);
  if (v25)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v17 != 1)
  {
    goto LABEL_55;
  }

  v12 = *MEMORY[0x29EDBE718];
  v18 = strlen(*MEMORY[0x29EDBE718]);
  if (v18 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v14 = v18;
  if (v18 >= 0x17)
  {
    if ((v18 | 7) == 0x17)
    {
      v20 = 25;
    }

    else
    {
      v20 = (v18 | 7) + 1;
    }

    v15 = operator new(v20);
    *&buf[8] = v14;
    *&buf[16] = v20 | 0x8000000000000000;
    *buf = v15;
    goto LABEL_47;
  }

  buf[23] = v18;
  v15 = buf;
  if (v18)
  {
LABEL_47:
    memmove(v15, v12, v14);
  }

LABEL_48:
  v15[v14] = 0;
  v21 = prop::file::set<unsigned int>(buf, a1, &v25);
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
    if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_56;
    }
  }

  else if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_56:
    operator delete(v26.__r_.__value_.__l.__data_);
    v24 = *MEMORY[0x29EDCA608];
    return v21;
  }

LABEL_50:
  v22 = *MEMORY[0x29EDCA608];
  return v21;
}

void sub_297134BF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t prop::logfilter::set(char *a1, char *a2)
{
  v35 = *MEMORY[0x29EDCA608];
  memset(&v32, 170, sizeof(v32));
  if (a2[23] < 0)
  {
    std::string::__init_copy_ctor_external(&v32, *a2, *(a2 + 1));
    if (a2[23] >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    if (strcasecmp(v4, "default"))
    {
      goto LABEL_9;
    }
  }

  else
  {
    v32 = *a2;
    if (strcasecmp(a2, "default"))
    {
      goto LABEL_9;
    }
  }

  if (!defaults::logfilter::get(a1, &v32))
  {
    goto LABEL_69;
  }

LABEL_9:
  if ((a1[23] & 0x80000000) == 0)
  {
    if (strcasecmp(a1, *MEMORY[0x29EDBEB40]))
    {
      v5 = a1;
      if (strcasecmp(a1, *MEMORY[0x29EDBEDE8]))
      {
        goto LABEL_12;
      }

LABEL_24:
      v31 = -1431655766;
      v10 = util::convert<int>(&v32, &v31, 0);
      if (v31 > -2)
      {
        v11 = v10;
      }

      else
      {
        v11 = 0;
      }

      if (v11 != 1)
      {
        goto LABEL_69;
      }

      v12 = *MEMORY[0x29EDBE528];
      v13 = strlen(*MEMORY[0x29EDBE528]);
      if (v13 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v14 = v13;
      if (v13 >= 0x17)
      {
        if ((v13 | 7) == 0x17)
        {
          v25 = 25;
        }

        else
        {
          v25 = (v13 | 7) + 1;
        }

        v15 = operator new(v25);
        *&buf[8] = v14;
        *&buf[16] = v25 | 0x8000000000000000;
        *buf = v15;
      }

      else
      {
        buf[23] = v13;
        v15 = buf;
        if (!v13)
        {
          goto LABEL_50;
        }
      }

LABEL_49:
      memmove(v15, v12, v14);
LABEL_50:
      v15[v14] = 0;
      v24 = prop::file::set<int>(buf, a1, &v31);
      goto LABEL_62;
    }

LABEL_32:
    v31 = -1431655766;
    v16 = util::convert<int>(&v32, &v31, 0);
    if (v31 > -2)
    {
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    if (v17 != 1)
    {
      goto LABEL_69;
    }

    v12 = *MEMORY[0x29EDBE528];
    v18 = strlen(*MEMORY[0x29EDBE528]);
    if (v18 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v14 = v18;
    if (v18 >= 0x17)
    {
      if ((v18 | 7) == 0x17)
      {
        v23 = 25;
      }

      else
      {
        v23 = (v18 | 7) + 1;
      }

      v15 = operator new(v23);
      *&buf[8] = v14;
      *&buf[16] = v23 | 0x8000000000000000;
      *buf = v15;
    }

    else
    {
      buf[23] = v18;
      v15 = buf;
      if (!v18)
      {
        goto LABEL_50;
      }
    }

    goto LABEL_49;
  }

  v5 = *a1;
  if (!strcasecmp(*a1, *MEMORY[0x29EDBEB40]))
  {
    goto LABEL_32;
  }

  if (!strcasecmp(v5, *MEMORY[0x29EDBEDE8]))
  {
    goto LABEL_24;
  }

LABEL_12:
  if (strcasecmp(v5, *MEMORY[0x29EDBF810]))
  {
    if ((atomic_load_explicit(&qword_2A18B7920, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18B7920))
    {
      qword_2A18B7928 = 0;
      qword_2A18B7930 = 0;
      __cxa_guard_release(&qword_2A18B7920);
    }

    if (_MergedGlobals_12 == -1)
    {
      v6 = qword_2A18B7930;
      if (!os_log_type_enabled(qword_2A18B7930, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_69;
      }
    }

    else
    {
      dispatch_once(&_MergedGlobals_12, &__block_literal_global_12);
      v6 = qword_2A18B7930;
      if (!os_log_type_enabled(qword_2A18B7930, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_69;
      }
    }

    v7 = *MEMORY[0x29EDBE528];
    if (a1[23] >= 0)
    {
      v8 = a1;
    }

    else
    {
      v8 = *a1;
    }

    v9 = &v32;
    if ((v32.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v9 = v32.__r_.__value_.__r.__words[0];
    }

    *buf = 136315650;
    *&buf[4] = v7;
    *&buf[12] = 2080;
    *&buf[14] = v8;
    *&buf[22] = 2080;
    v34 = v9;
    _os_log_error_impl(&dword_296FF7000, v6, OS_LOG_TYPE_ERROR, "[logfilter] set: Invalid key; domain='%s' key='%s' value='%s'", buf, 0x20u);
LABEL_69:
    v27 = 0;
    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_70;
    }

    goto LABEL_64;
  }

  LOBYTE(v31) = 1;
  if (!util::convert<BOOL>(&v32, &v31, 0))
  {
    goto LABEL_69;
  }

  v19 = *MEMORY[0x29EDBE528];
  v20 = strlen(*MEMORY[0x29EDBE528]);
  if (v20 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v21 = v20;
  if (v20 >= 0x17)
  {
    if ((v20 | 7) == 0x17)
    {
      v26 = 25;
    }

    else
    {
      v26 = (v20 | 7) + 1;
    }

    v22 = operator new(v26);
    *&buf[8] = v21;
    *&buf[16] = v26 | 0x8000000000000000;
    *buf = v22;
  }

  else
  {
    buf[23] = v20;
    v22 = buf;
    if (!v20)
    {
      goto LABEL_61;
    }
  }

  memmove(v22, v19, v21);
LABEL_61:
  v22[v21] = 0;
  v24 = prop::file::set<BOOL>(buf, a1, &v31);
LABEL_62:
  v27 = v24;
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_70;
    }
  }

  else if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_70:
    operator delete(v32.__r_.__value_.__l.__data_);
    v30 = *MEMORY[0x29EDCA608];
    return v27;
  }

LABEL_64:
  v28 = *MEMORY[0x29EDCA608];
  return v27;
}

void sub_297135148(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t prop::systemlogs::set(char *a1, char *a2)
{
  v38 = *MEMORY[0x29EDCA608];
  memset(&v35, 170, sizeof(v35));
  if (a2[23] < 0)
  {
    std::string::__init_copy_ctor_external(&v35, *a2, *(a2 + 1));
    if (a2[23] >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    if (strcasecmp(v4, "default"))
    {
      goto LABEL_9;
    }
  }

  else
  {
    v35 = *a2;
    if (strcasecmp(a2, "default"))
    {
      goto LABEL_9;
    }
  }

  if (!defaults::systemlogs::get(a1, &v35))
  {
    goto LABEL_74;
  }

LABEL_9:
  if ((a1[23] & 0x80000000) == 0)
  {
    if (strcasecmp(a1, *MEMORY[0x29EDBE590]))
    {
      v5 = a1;
      if (strcasecmp(a1, *MEMORY[0x29EDBE6E8]))
      {
        goto LABEL_12;
      }

LABEL_24:
      v34 = -1431655766;
      v10 = util::convert<int>(&v35, &v34, 0);
      if (v34 > 0)
      {
        v11 = v10;
      }

      else
      {
        v11 = 0;
      }

      if (v11 != 1)
      {
        goto LABEL_74;
      }

      v12 = *MEMORY[0x29EDBE710];
      v13 = strlen(*MEMORY[0x29EDBE710]);
      if (v13 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v14 = v13;
      if (v13 >= 0x17)
      {
        if ((v13 | 7) == 0x17)
        {
          v26 = 25;
        }

        else
        {
          v26 = (v13 | 7) + 1;
        }

        v15 = operator new(v26);
        *&buf[8] = v14;
        *&buf[16] = v26 | 0x8000000000000000;
        *buf = v15;
      }

      else
      {
        buf[23] = v13;
        v15 = buf;
        if (!v13)
        {
          goto LABEL_54;
        }
      }

      memmove(v15, v12, v14);
LABEL_54:
      v15[v14] = 0;
      v27 = prop::file::set<int>(buf, a1, &v34);
      goto LABEL_67;
    }

LABEL_32:
    v34 = -1431655766;
    if (TelephonyUtilIsInternalBuild())
    {
      IsCarrierBuild = 1;
    }

    else
    {
      IsCarrierBuild = TelephonyUtilIsCarrierBuild();
    }

    if (!util::convert<unsigned int>(&v35, &v34))
    {
      goto LABEL_74;
    }

    v17 = IsCarrierBuild ? 3 : 2;
    if (v34 >= v17)
    {
      goto LABEL_74;
    }

    v18 = *MEMORY[0x29EDBE710];
    v19 = strlen(*MEMORY[0x29EDBE710]);
    if (v19 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v20 = v19;
    if (v19 >= 0x17)
    {
      if ((v19 | 7) == 0x17)
      {
        v28 = 25;
      }

      else
      {
        v28 = (v19 | 7) + 1;
      }

      v21 = operator new(v28);
      *&buf[8] = v20;
      *&buf[16] = v28 | 0x8000000000000000;
      *buf = v21;
    }

    else
    {
      buf[23] = v19;
      v21 = buf;
      if (!v19)
      {
        goto LABEL_60;
      }
    }

    memmove(v21, v18, v20);
LABEL_60:
    v21[v20] = 0;
    v27 = prop::file::set<unsigned int>(buf, a1, &v34);
    goto LABEL_67;
  }

  v5 = *a1;
  if (!strcasecmp(*a1, *MEMORY[0x29EDBE590]))
  {
    goto LABEL_32;
  }

  if (!strcasecmp(v5, *MEMORY[0x29EDBE6E8]))
  {
    goto LABEL_24;
  }

LABEL_12:
  if (strcasecmp(v5, *MEMORY[0x29EDBF0A8]))
  {
    if ((atomic_load_explicit(&qword_2A18B7920, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18B7920))
    {
      qword_2A18B7928 = 0;
      qword_2A18B7930 = 0;
      __cxa_guard_release(&qword_2A18B7920);
    }

    if (_MergedGlobals_12 == -1)
    {
      v6 = qword_2A18B7930;
      if (!os_log_type_enabled(qword_2A18B7930, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_74;
      }
    }

    else
    {
      dispatch_once(&_MergedGlobals_12, &__block_literal_global_12);
      v6 = qword_2A18B7930;
      if (!os_log_type_enabled(qword_2A18B7930, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_74;
      }
    }

    v7 = *MEMORY[0x29EDBE710];
    if (a1[23] >= 0)
    {
      v8 = a1;
    }

    else
    {
      v8 = *a1;
    }

    v9 = &v35;
    if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v9 = v35.__r_.__value_.__r.__words[0];
    }

    *buf = 136315650;
    *&buf[4] = v7;
    *&buf[12] = 2080;
    *&buf[14] = v8;
    *&buf[22] = 2080;
    v37 = v9;
    _os_log_error_impl(&dword_296FF7000, v6, OS_LOG_TYPE_ERROR, "[systemlogs] set: Invalid key; domain='%s' key='%s' value='%s'", buf, 0x20u);
LABEL_74:
    v30 = 0;
    if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_75;
    }

    goto LABEL_69;
  }

  LOBYTE(v34) = -86;
  if (!util::convert<BOOL>(&v35, &v34, 0))
  {
    goto LABEL_74;
  }

  v22 = *MEMORY[0x29EDBE710];
  v23 = strlen(*MEMORY[0x29EDBE710]);
  if (v23 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v24 = v23;
  if (v23 >= 0x17)
  {
    if ((v23 | 7) == 0x17)
    {
      v29 = 25;
    }

    else
    {
      v29 = (v23 | 7) + 1;
    }

    v25 = operator new(v29);
    *&buf[8] = v24;
    *&buf[16] = v29 | 0x8000000000000000;
    *buf = v25;
  }

  else
  {
    buf[23] = v23;
    v25 = buf;
    if (!v23)
    {
      goto LABEL_66;
    }
  }

  memmove(v25, v22, v24);
LABEL_66:
  v25[v24] = 0;
  v27 = prop::file::set<BOOL>(buf, a1, &v34);
LABEL_67:
  v30 = v27;
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
    if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_75;
    }
  }

  else if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_75:
    operator delete(v35.__r_.__value_.__l.__data_);
    v33 = *MEMORY[0x29EDCA608];
    return v30;
  }

LABEL_69:
  v31 = *MEMORY[0x29EDCA608];
  return v30;
}

void sub_2971356C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t prop::profile::set(char *a1, char *a2)
{
  v29 = *MEMORY[0x29EDCA608];
  memset(&v26, 170, sizeof(v26));
  if (a2[23] < 0)
  {
    std::string::__init_copy_ctor_external(&v26, *a2, *(a2 + 1));
    if (a2[23] >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    if (strcasecmp(v4, "default"))
    {
      goto LABEL_9;
    }
  }

  else
  {
    v26 = *a2;
    if (strcasecmp(a2, "default"))
    {
      goto LABEL_9;
    }
  }

  if (!defaults::profile::get(a1, &v26))
  {
    goto LABEL_51;
  }

LABEL_9:
  if ((a1[23] & 0x80000000) == 0)
  {
    v5 = a1;
    if (strcasecmp(a1, *MEMORY[0x29EDBE4C8]))
    {
      goto LABEL_11;
    }

LABEL_22:
    LOBYTE(v25) = -86;
    if (!util::convert<BOOL>(&v26, &v25, 0))
    {
      goto LABEL_51;
    }

    v10 = *MEMORY[0x29EDBE5B0];
    v11 = strlen(*MEMORY[0x29EDBE5B0]);
    if (v11 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v12 = v11;
    if (v11 >= 0x17)
    {
      if ((v11 | 7) == 0x17)
      {
        v18 = 25;
      }

      else
      {
        v18 = (v11 | 7) + 1;
      }

      v13 = operator new(v18);
      *&buf[8] = v12;
      *&buf[16] = v18 | 0x8000000000000000;
      *buf = v13;
    }

    else
    {
      buf[23] = v11;
      v13 = buf;
      if (!v11)
      {
        goto LABEL_37;
      }
    }

    memmove(v13, v10, v12);
LABEL_37:
    v13[v12] = 0;
    v19 = prop::file::set<BOOL>(buf, a1, &v25);
    goto LABEL_44;
  }

  v5 = *a1;
  if (!strcasecmp(*a1, *MEMORY[0x29EDBE4C8]))
  {
    goto LABEL_22;
  }

LABEL_11:
  if (strcasecmp(v5, *MEMORY[0x29EDBF7D0]))
  {
    if ((atomic_load_explicit(&qword_2A18B7920, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18B7920))
    {
      qword_2A18B7928 = 0;
      qword_2A18B7930 = 0;
      __cxa_guard_release(&qword_2A18B7920);
    }

    if (_MergedGlobals_12 == -1)
    {
      v6 = qword_2A18B7930;
      if (!os_log_type_enabled(qword_2A18B7930, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_51;
      }
    }

    else
    {
      dispatch_once(&_MergedGlobals_12, &__block_literal_global_12);
      v6 = qword_2A18B7930;
      if (!os_log_type_enabled(qword_2A18B7930, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_51;
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

    v9 = &v26;
    if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v9 = v26.__r_.__value_.__r.__words[0];
    }

    *buf = 136315650;
    *&buf[4] = v7;
    *&buf[12] = 2080;
    *&buf[14] = v8;
    *&buf[22] = 2080;
    v28 = v9;
    _os_log_error_impl(&dword_296FF7000, v6, OS_LOG_TYPE_ERROR, "[profile] set: Invalid key; domain='%s' key='%s' value='%s'", buf, 0x20u);
LABEL_51:
    v21 = 0;
    if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_52;
    }

    goto LABEL_46;
  }

  v25 = -1431655766;
  if (!util::convert<int>(&v26, &v25, 0))
  {
    goto LABEL_51;
  }

  v14 = *MEMORY[0x29EDBE5B0];
  v15 = strlen(*MEMORY[0x29EDBE5B0]);
  if (v15 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v16 = v15;
  if (v15 >= 0x17)
  {
    if ((v15 | 7) == 0x17)
    {
      v20 = 25;
    }

    else
    {
      v20 = (v15 | 7) + 1;
    }

    v17 = operator new(v20);
    *&buf[8] = v16;
    *&buf[16] = v20 | 0x8000000000000000;
    *buf = v17;
  }

  else
  {
    buf[23] = v15;
    v17 = buf;
    if (!v15)
    {
      goto LABEL_43;
    }
  }

  memmove(v17, v14, v16);
LABEL_43:
  v17[v16] = 0;
  v19 = prop::file::set<std::string>(buf, a1, &v26);
LABEL_44:
  v21 = v19;
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
    if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_52;
    }
  }

  else if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_52:
    operator delete(v26.__r_.__value_.__l.__data_);
    v24 = *MEMORY[0x29EDCA608];
    return v21;
  }

LABEL_46:
  v22 = *MEMORY[0x29EDCA608];
  return v21;
}

void sub_297135B20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t prop::tailspin::set(std::string::size_type a1, char *a2)
{
  v23 = *MEMORY[0x29EDCA608];
  memset(&v20, 170, sizeof(v20));
  if (a2[23] < 0)
  {
    std::string::__init_copy_ctor_external(&v20, *a2, *(a2 + 1));
    if (a2[23] >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    if (strcasecmp(v4, "default"))
    {
      goto LABEL_9;
    }
  }

  else
  {
    v20 = *a2;
    if (strcasecmp(a2, "default"))
    {
      goto LABEL_9;
    }
  }

  if (!defaults::tailspin::get(a1, &v20))
  {
    goto LABEL_39;
  }

LABEL_9:
  if (*(a1 + 23) >= 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  if (strcasecmp(v5, *MEMORY[0x29EDBE4C8]))
  {
    if ((atomic_load_explicit(&qword_2A18B7920, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18B7920))
    {
      qword_2A18B7928 = 0;
      qword_2A18B7930 = 0;
      __cxa_guard_release(&qword_2A18B7920);
    }

    if (_MergedGlobals_12 == -1)
    {
      v6 = qword_2A18B7930;
      if (!os_log_type_enabled(qword_2A18B7930, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_39;
      }
    }

    else
    {
      dispatch_once(&_MergedGlobals_12, &__block_literal_global_12);
      v6 = qword_2A18B7930;
      if (!os_log_type_enabled(qword_2A18B7930, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_39;
      }
    }

    v7 = *MEMORY[0x29EDBE608];
    if (*(a1 + 23) >= 0)
    {
      v8 = a1;
    }

    else
    {
      v8 = *a1;
    }

    v9 = &v20;
    if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v9 = v20.__r_.__value_.__r.__words[0];
    }

    *buf = 136315650;
    *&buf[4] = v7;
    *&buf[12] = 2080;
    *&buf[14] = v8;
    *&buf[22] = 2080;
    v22 = v9;
    _os_log_error_impl(&dword_296FF7000, v6, OS_LOG_TYPE_ERROR, "[tailspin] set: Invalid key; domain='%s' key='%s' value='%s'", buf, 0x20u);
LABEL_39:
    v15 = 0;
    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_40;
    }

    goto LABEL_34;
  }

  v19 = -86;
  if (!util::convert<BOOL>(&v20, &v19, 0))
  {
    goto LABEL_39;
  }

  v10 = *MEMORY[0x29EDBE608];
  v11 = strlen(*MEMORY[0x29EDBE608]);
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
    *&buf[8] = v12;
    *&buf[16] = v14 | 0x8000000000000000;
    *buf = v13;
    goto LABEL_31;
  }

  buf[23] = v11;
  v13 = buf;
  if (v11)
  {
LABEL_31:
    memmove(v13, v10, v12);
  }

  v13[v12] = 0;
  v15 = prop::file::set<BOOL>(buf, a1, &v19);
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_40;
    }
  }

  else if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_40:
    operator delete(v20.__r_.__value_.__l.__data_);
    v18 = *MEMORY[0x29EDCA608];
    return v15;
  }

LABEL_34:
  v16 = *MEMORY[0x29EDCA608];
  return v15;
}

void sub_297135E90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t prop::tracesettings::set(char *a1, uint64_t a2)
{
  v31 = *MEMORY[0x29EDCA608];
  memset(&v28, 170, sizeof(v28));
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v28, *a2, *(a2 + 8));
  }

  else
  {
    v28 = *a2;
  }

  if (a1[23] < 0)
  {
    v3 = *a1;
    if (strcasecmp(*a1, *MEMORY[0x29EDBEF68]))
    {
      if (strcasecmp(v3, *MEMORY[0x29EDBF098]))
      {
        if (strcasecmp(v3, *MEMORY[0x29EDBEA40]))
        {
LABEL_8:
          if (strcasecmp(v3, *MEMORY[0x29EDBEDD0]))
          {
            if ((atomic_load_explicit(&qword_2A18B7920, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18B7920))
            {
              qword_2A18B7928 = 0;
              qword_2A18B7930 = 0;
              __cxa_guard_release(&qword_2A18B7920);
            }

            if (_MergedGlobals_12 == -1)
            {
              v4 = qword_2A18B7930;
              if (!os_log_type_enabled(qword_2A18B7930, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_68;
              }
            }

            else
            {
              dispatch_once(&_MergedGlobals_12, &__block_literal_global_12);
              v4 = qword_2A18B7930;
              if (!os_log_type_enabled(qword_2A18B7930, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_68;
              }
            }

            v5 = *MEMORY[0x29EDBE600];
            if (a1[23] >= 0)
            {
              v6 = a1;
            }

            else
            {
              v6 = *a1;
            }

            v7 = &v28;
            if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v7 = v28.__r_.__value_.__r.__words[0];
            }

            *buf = 136315650;
            *&buf[4] = v5;
            *&buf[12] = 2080;
            *&buf[14] = v6;
            *&buf[22] = 2080;
            v30 = v7;
            _os_log_error_impl(&dword_296FF7000, v4, OS_LOG_TYPE_ERROR, "[tracesettings] set: Invalid key; domain='%s' key='%s' value='%s'", buf, 0x20u);
LABEL_68:
            v23 = 0;
            if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
            {
              goto LABEL_69;
            }

            goto LABEL_63;
          }

          v27 = -1431655766;
          if (!util::convert<int>(&v28, &v27, 0))
          {
            goto LABEL_68;
          }

          v12 = *MEMORY[0x29EDBE600];
          v20 = strlen(*MEMORY[0x29EDBE600]);
          if (v20 > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          v14 = v20;
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

            v15 = operator new(v22);
            *&buf[8] = v14;
            *&buf[16] = v22 | 0x8000000000000000;
            *buf = v15;
          }

          else
          {
            buf[23] = v20;
            v15 = buf;
            if (!v20)
            {
              goto LABEL_60;
            }
          }

          goto LABEL_59;
        }

LABEL_21:
        v8 = *MEMORY[0x29EDBE600];
        v9 = strlen(*MEMORY[0x29EDBE600]);
        if (v9 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v10 = v9;
        if (v9 >= 0x17)
        {
          if ((v9 | 7) == 0x17)
          {
            v21 = 25;
          }

          else
          {
            v21 = (v9 | 7) + 1;
          }

          v11 = operator new(v21);
          *&buf[8] = v10;
          *&buf[16] = v21 | 0x8000000000000000;
          *buf = v11;
        }

        else
        {
          buf[23] = v9;
          v11 = buf;
          if (!v9)
          {
            goto LABEL_39;
          }
        }

LABEL_38:
        memmove(v11, v8, v10);
LABEL_39:
        v11[v10] = 0;
        v18 = prop::file::set<std::string>(buf, a1, &v28);
        goto LABEL_61;
      }

LABEL_30:
      v8 = *MEMORY[0x29EDBE600];
      v16 = strlen(*MEMORY[0x29EDBE600]);
      if (v16 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v10 = v16;
      if (v16 >= 0x17)
      {
        if ((v16 | 7) == 0x17)
        {
          v17 = 25;
        }

        else
        {
          v17 = (v16 | 7) + 1;
        }

        v11 = operator new(v17);
        *&buf[8] = v10;
        *&buf[16] = v17 | 0x8000000000000000;
        *buf = v11;
      }

      else
      {
        buf[23] = v16;
        v11 = buf;
        if (!v16)
        {
          goto LABEL_39;
        }
      }

      goto LABEL_38;
    }
  }

  else if (strcasecmp(a1, *MEMORY[0x29EDBEF68]))
  {
    if (strcasecmp(a1, *MEMORY[0x29EDBF098]))
    {
      v3 = a1;
      if (strcasecmp(a1, *MEMORY[0x29EDBEA40]))
      {
        goto LABEL_8;
      }

      goto LABEL_21;
    }

    goto LABEL_30;
  }

  v27 = -1431655766;
  if (!util::convert<int>(&v28, &v27, 0))
  {
    goto LABEL_68;
  }

  v12 = *MEMORY[0x29EDBE600];
  v13 = strlen(*MEMORY[0x29EDBE600]);
  if (v13 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v14 = v13;
  if (v13 >= 0x17)
  {
    if ((v13 | 7) == 0x17)
    {
      v19 = 25;
    }

    else
    {
      v19 = (v13 | 7) + 1;
    }

    v15 = operator new(v19);
    *&buf[8] = v14;
    *&buf[16] = v19 | 0x8000000000000000;
    *buf = v15;
  }

  else
  {
    buf[23] = v13;
    v15 = buf;
    if (!v13)
    {
      goto LABEL_60;
    }
  }

LABEL_59:
  memmove(v15, v12, v14);
LABEL_60:
  v15[v14] = 0;
  v18 = prop::file::set<int>(buf, a1, &v27);
LABEL_61:
  v23 = v18;
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
    if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_69;
    }
  }

  else if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_69:
    operator delete(v28.__r_.__value_.__l.__data_);
    v26 = *MEMORY[0x29EDCA608];
    return v23;
  }

LABEL_63:
  v24 = *MEMORY[0x29EDCA608];
  return v23;
}

void sub_297136414(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t prop::file::set<BOOL>(const void **a1, uint64_t a2, unsigned __int8 *a3)
{
  memset(__p, 170, 24);
  v3 = *(a1 + 23);
  if (v3 >= 0)
  {
    v4 = *(a1 + 23);
  }

  else
  {
    v4 = a1[1];
  }

  v5 = v4 + 1;
  if (v4 + 1 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v5 < 0x17)
  {
    memset(&v32, 0, sizeof(v32));
    v10 = &v32;
    *(&v32.__r_.__value_.__s + 23) = v4 + 1;
    if (!v4)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if ((v5 | 7) == 0x17)
    {
      v9 = 25;
    }

    else
    {
      v9 = (v5 | 7) + 1;
    }

    v10 = operator new(v9);
    v32.__r_.__value_.__l.__size_ = v4 + 1;
    v32.__r_.__value_.__r.__words[2] = v9 | 0x8000000000000000;
    v32.__r_.__value_.__r.__words[0] = v10;
  }

  v11 = *a1;
  if (v3 >= 0)
  {
    v12 = a1;
  }

  else
  {
    v12 = *a1;
  }

  memmove(v10, v12, v4);
LABEL_15:
  *&v10[v4] = 46;
  v13 = *(a2 + 23);
  if (v13 >= 0)
  {
    v14 = a2;
  }

  else
  {
    v14 = *a2;
  }

  if (v13 >= 0)
  {
    v15 = *(a2 + 23);
  }

  else
  {
    v15 = *(a2 + 8);
  }

  v16 = std::string::append(&v32, v14, v15);
  v17 = *&v16->__r_.__value_.__l.__data_;
  __p[2] = v16->__r_.__value_.__r.__words[2];
  *__p = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p[2]) >= 0)
  {
    v18 = (__p + HIBYTE(__p[2]));
  }

  else
  {
    v18 = (__p[0] + __p[1]);
  }

  if (SHIBYTE(__p[2]) >= 0)
  {
    v19 = __p;
  }

  else
  {
    v19 = __p[0];
  }

  for (; v19 != v18; v19 = (v19 + 1))
  {
    *v19 = __tolower(*v19);
  }

  std::to_string(&v32, *a3);
  v20 = *&v32.__r_.__value_.__l.__data_;
  v21 = v32.__r_.__value_.__r.__words[2];
  pthread_mutex_lock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  if (!xmmword_2A18B7520)
  {
    v23 = operator new(0x18uLL);
    MEMORY[0x29C26B190](v23, @"com.apple.AppleBasebandManager", *MEMORY[0x29EDB8FB0]);
    v32.__r_.__value_.__r.__words[0] = v23;
    v22 = operator new(0x20uLL);
    *v22 = &unk_2A1E26558;
    v22[1] = 0;
    v22[2] = 0;
    v22[3] = v23;
    v24 = *(&xmmword_2A18B7520 + 1);
    *&xmmword_2A18B7520 = v23;
    *(&xmmword_2A18B7520 + 1) = v22;
    if (!v24)
    {
      *&v30 = v23;
      *(&v30 + 1) = v22;
      goto LABEL_38;
    }

    if (!atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v24->__on_zero_shared)(v24);
      std::__shared_weak_count::__release_weak(v24);
    }
  }

  v22 = *(&xmmword_2A18B7520 + 1);
  LODWORD(v23) = xmmword_2A18B7520;
  v30 = xmmword_2A18B7520;
  if (*(&xmmword_2A18B7520 + 1))
  {
LABEL_38:
    atomic_fetch_add_explicit(v22 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  if ((v21 & 0x8000000000000000) == 0)
  {
    *&v29.__r_.__value_.__l.__data_ = v20;
    v29.__r_.__value_.__r.__words[2] = v21;
LABEL_42:
    v32 = v29;
    goto LABEL_43;
  }

  std::string::__init_copy_ctor_external(&v29, v20, *(&v20 + 1));
  if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_42;
  }

  std::string::__init_copy_ctor_external(&v32, v29.__r_.__value_.__l.__data_, v29.__r_.__value_.__l.__size_);
LABEL_43:
  if (SHIBYTE(__p[2]) >= 0)
  {
    v25 = __p;
  }

  else
  {
    v25 = __p[0];
  }

  v26 = ctu::cf::plist_adapter::set<std::string>(v23, &v32, v25);
  if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_48;
    }

LABEL_51:
    operator delete(v29.__r_.__value_.__l.__data_);
    v27 = *(&v30 + 1);
    if (!*(&v30 + 1))
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

  operator delete(v32.__r_.__value_.__l.__data_);
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_51;
  }

LABEL_48:
  v27 = *(&v30 + 1);
  if (!*(&v30 + 1))
  {
LABEL_53:
    if ((v21 & 0x8000000000000000) == 0)
    {
      goto LABEL_54;
    }

LABEL_57:
    operator delete(v20);
    if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
    {
      return v26;
    }

LABEL_58:
    operator delete(__p[0]);
    return v26;
  }

LABEL_52:
  if (atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_53;
  }

  (v27->__on_zero_shared)(v27);
  std::__shared_weak_count::__release_weak(v27);
  if ((v21 & 0x8000000000000000) != 0)
  {
    goto LABEL_57;
  }

LABEL_54:
  if (SHIBYTE(__p[2]) < 0)
  {
    goto LABEL_58;
  }

  return v26;
}

void sub_2971367F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a16);
  if (v31 < 0)
  {
    operator delete(v30);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(a1);
}

uint64_t prop::file::set<int>(const void **a1, uint64_t a2, int *a3)
{
  memset(__p, 170, 24);
  v3 = *(a1 + 23);
  if (v3 >= 0)
  {
    v4 = *(a1 + 23);
  }

  else
  {
    v4 = a1[1];
  }

  v5 = v4 + 1;
  if (v4 + 1 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v5 < 0x17)
  {
    memset(&v32, 0, sizeof(v32));
    v10 = &v32;
    *(&v32.__r_.__value_.__s + 23) = v4 + 1;
    if (!v4)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if ((v5 | 7) == 0x17)
    {
      v9 = 25;
    }

    else
    {
      v9 = (v5 | 7) + 1;
    }

    v10 = operator new(v9);
    v32.__r_.__value_.__l.__size_ = v4 + 1;
    v32.__r_.__value_.__r.__words[2] = v9 | 0x8000000000000000;
    v32.__r_.__value_.__r.__words[0] = v10;
  }

  v11 = *a1;
  if (v3 >= 0)
  {
    v12 = a1;
  }

  else
  {
    v12 = *a1;
  }

  memmove(v10, v12, v4);
LABEL_15:
  *&v10[v4] = 46;
  v13 = *(a2 + 23);
  if (v13 >= 0)
  {
    v14 = a2;
  }

  else
  {
    v14 = *a2;
  }

  if (v13 >= 0)
  {
    v15 = *(a2 + 23);
  }

  else
  {
    v15 = *(a2 + 8);
  }

  v16 = std::string::append(&v32, v14, v15);
  v17 = *&v16->__r_.__value_.__l.__data_;
  __p[2] = v16->__r_.__value_.__r.__words[2];
  *__p = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p[2]) >= 0)
  {
    v18 = (__p + HIBYTE(__p[2]));
  }

  else
  {
    v18 = (__p[0] + __p[1]);
  }

  if (SHIBYTE(__p[2]) >= 0)
  {
    v19 = __p;
  }

  else
  {
    v19 = __p[0];
  }

  for (; v19 != v18; v19 = (v19 + 1))
  {
    *v19 = __tolower(*v19);
  }

  std::to_string(&v32, *a3);
  v20 = *&v32.__r_.__value_.__l.__data_;
  v21 = v32.__r_.__value_.__r.__words[2];
  pthread_mutex_lock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  if (!xmmword_2A18B7520)
  {
    v23 = operator new(0x18uLL);
    MEMORY[0x29C26B190](v23, @"com.apple.AppleBasebandManager", *MEMORY[0x29EDB8FB0]);
    v32.__r_.__value_.__r.__words[0] = v23;
    v22 = operator new(0x20uLL);
    *v22 = &unk_2A1E26558;
    v22[1] = 0;
    v22[2] = 0;
    v22[3] = v23;
    v24 = *(&xmmword_2A18B7520 + 1);
    *&xmmword_2A18B7520 = v23;
    *(&xmmword_2A18B7520 + 1) = v22;
    if (!v24)
    {
      *&v30 = v23;
      *(&v30 + 1) = v22;
      goto LABEL_38;
    }

    if (!atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v24->__on_zero_shared)(v24);
      std::__shared_weak_count::__release_weak(v24);
    }
  }

  v22 = *(&xmmword_2A18B7520 + 1);
  LODWORD(v23) = xmmword_2A18B7520;
  v30 = xmmword_2A18B7520;
  if (*(&xmmword_2A18B7520 + 1))
  {
LABEL_38:
    atomic_fetch_add_explicit(v22 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  if ((v21 & 0x8000000000000000) == 0)
  {
    *&v29.__r_.__value_.__l.__data_ = v20;
    v29.__r_.__value_.__r.__words[2] = v21;
LABEL_42:
    v32 = v29;
    goto LABEL_43;
  }

  std::string::__init_copy_ctor_external(&v29, v20, *(&v20 + 1));
  if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_42;
  }

  std::string::__init_copy_ctor_external(&v32, v29.__r_.__value_.__l.__data_, v29.__r_.__value_.__l.__size_);
LABEL_43:
  if (SHIBYTE(__p[2]) >= 0)
  {
    v25 = __p;
  }

  else
  {
    v25 = __p[0];
  }

  v26 = ctu::cf::plist_adapter::set<std::string>(v23, &v32, v25);
  if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_48;
    }

LABEL_51:
    operator delete(v29.__r_.__value_.__l.__data_);
    v27 = *(&v30 + 1);
    if (!*(&v30 + 1))
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

  operator delete(v32.__r_.__value_.__l.__data_);
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_51;
  }

LABEL_48:
  v27 = *(&v30 + 1);
  if (!*(&v30 + 1))
  {
LABEL_53:
    if ((v21 & 0x8000000000000000) == 0)
    {
      goto LABEL_54;
    }

LABEL_57:
    operator delete(v20);
    if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
    {
      return v26;
    }

LABEL_58:
    operator delete(__p[0]);
    return v26;
  }

LABEL_52:
  if (atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_53;
  }

  (v27->__on_zero_shared)(v27);
  std::__shared_weak_count::__release_weak(v27);
  if ((v21 & 0x8000000000000000) != 0)
  {
    goto LABEL_57;
  }

LABEL_54:
  if (SHIBYTE(__p[2]) < 0)
  {
    goto LABEL_58;
  }

  return v26;
}

void sub_297136C50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a16);
  if (v31 < 0)
  {
    operator delete(v30);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(a1);
}

uint64_t prop::file::set<unsigned int>(const void **a1, uint64_t a2, unsigned int *a3)
{
  memset(__p, 170, 24);
  v3 = *(a1 + 23);
  if (v3 >= 0)
  {
    v4 = *(a1 + 23);
  }

  else
  {
    v4 = a1[1];
  }

  v5 = v4 + 1;
  if (v4 + 1 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v5 < 0x17)
  {
    memset(&v32, 0, sizeof(v32));
    v10 = &v32;
    *(&v32.__r_.__value_.__s + 23) = v4 + 1;
    if (!v4)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if ((v5 | 7) == 0x17)
    {
      v9 = 25;
    }

    else
    {
      v9 = (v5 | 7) + 1;
    }

    v10 = operator new(v9);
    v32.__r_.__value_.__l.__size_ = v4 + 1;
    v32.__r_.__value_.__r.__words[2] = v9 | 0x8000000000000000;
    v32.__r_.__value_.__r.__words[0] = v10;
  }

  v11 = *a1;
  if (v3 >= 0)
  {
    v12 = a1;
  }

  else
  {
    v12 = *a1;
  }

  memmove(v10, v12, v4);
LABEL_15:
  *&v10[v4] = 46;
  v13 = *(a2 + 23);
  if (v13 >= 0)
  {
    v14 = a2;
  }

  else
  {
    v14 = *a2;
  }

  if (v13 >= 0)
  {
    v15 = *(a2 + 23);
  }

  else
  {
    v15 = *(a2 + 8);
  }

  v16 = std::string::append(&v32, v14, v15);
  v17 = *&v16->__r_.__value_.__l.__data_;
  __p[2] = v16->__r_.__value_.__r.__words[2];
  *__p = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p[2]) >= 0)
  {
    v18 = (__p + HIBYTE(__p[2]));
  }

  else
  {
    v18 = (__p[0] + __p[1]);
  }

  if (SHIBYTE(__p[2]) >= 0)
  {
    v19 = __p;
  }

  else
  {
    v19 = __p[0];
  }

  for (; v19 != v18; v19 = (v19 + 1))
  {
    *v19 = __tolower(*v19);
  }

  std::to_string(&v32, *a3);
  v20 = *&v32.__r_.__value_.__l.__data_;
  v21 = v32.__r_.__value_.__r.__words[2];
  pthread_mutex_lock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  if (!xmmword_2A18B7520)
  {
    v23 = operator new(0x18uLL);
    MEMORY[0x29C26B190](v23, @"com.apple.AppleBasebandManager", *MEMORY[0x29EDB8FB0]);
    v32.__r_.__value_.__r.__words[0] = v23;
    v22 = operator new(0x20uLL);
    *v22 = &unk_2A1E26558;
    v22[1] = 0;
    v22[2] = 0;
    v22[3] = v23;
    v24 = *(&xmmword_2A18B7520 + 1);
    *&xmmword_2A18B7520 = v23;
    *(&xmmword_2A18B7520 + 1) = v22;
    if (!v24)
    {
      *&v30 = v23;
      *(&v30 + 1) = v22;
      goto LABEL_38;
    }

    if (!atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v24->__on_zero_shared)(v24);
      std::__shared_weak_count::__release_weak(v24);
    }
  }

  v22 = *(&xmmword_2A18B7520 + 1);
  LODWORD(v23) = xmmword_2A18B7520;
  v30 = xmmword_2A18B7520;
  if (*(&xmmword_2A18B7520 + 1))
  {
LABEL_38:
    atomic_fetch_add_explicit(v22 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  if ((v21 & 0x8000000000000000) == 0)
  {
    *&v29.__r_.__value_.__l.__data_ = v20;
    v29.__r_.__value_.__r.__words[2] = v21;
LABEL_42:
    v32 = v29;
    goto LABEL_43;
  }

  std::string::__init_copy_ctor_external(&v29, v20, *(&v20 + 1));
  if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_42;
  }

  std::string::__init_copy_ctor_external(&v32, v29.__r_.__value_.__l.__data_, v29.__r_.__value_.__l.__size_);
LABEL_43:
  if (SHIBYTE(__p[2]) >= 0)
  {
    v25 = __p;
  }

  else
  {
    v25 = __p[0];
  }

  v26 = ctu::cf::plist_adapter::set<std::string>(v23, &v32, v25);
  if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_48;
    }

LABEL_51:
    operator delete(v29.__r_.__value_.__l.__data_);
    v27 = *(&v30 + 1);
    if (!*(&v30 + 1))
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

  operator delete(v32.__r_.__value_.__l.__data_);
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_51;
  }

LABEL_48:
  v27 = *(&v30 + 1);
  if (!*(&v30 + 1))
  {
LABEL_53:
    if ((v21 & 0x8000000000000000) == 0)
    {
      goto LABEL_54;
    }

LABEL_57:
    operator delete(v20);
    if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
    {
      return v26;
    }

LABEL_58:
    operator delete(__p[0]);
    return v26;
  }

LABEL_52:
  if (atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_53;
  }

  (v27->__on_zero_shared)(v27);
  std::__shared_weak_count::__release_weak(v27);
  if ((v21 & 0x8000000000000000) != 0)
  {
    goto LABEL_57;
  }

LABEL_54:
  if (SHIBYTE(__p[2]) < 0)
  {
    goto LABEL_58;
  }

  return v26;
}

void sub_2971370AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a16);
  if (v31 < 0)
  {
    operator delete(v30);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(a1);
}

uint64_t prop::file::set<std::string>(const void **a1, uint64_t a2, uint64_t a3)
{
  memset(v29, 170, 24);
  v3 = *(a1 + 23);
  if (v3 >= 0)
  {
    v4 = *(a1 + 23);
  }

  else
  {
    v4 = a1[1];
  }

  v5 = v4 + 1;
  if (v4 + 1 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v5 < 0x17)
  {
    memset(&v30, 0, sizeof(v30));
    v10 = &v30;
    *(&v30.__r_.__value_.__s + 23) = v4 + 1;
    if (!v4)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if ((v5 | 7) == 0x17)
    {
      v9 = 25;
    }

    else
    {
      v9 = (v5 | 7) + 1;
    }

    v10 = operator new(v9);
    v30.__r_.__value_.__l.__size_ = v4 + 1;
    v30.__r_.__value_.__r.__words[2] = v9 | 0x8000000000000000;
    v30.__r_.__value_.__r.__words[0] = v10;
  }

  v11 = *a1;
  if (v3 >= 0)
  {
    v12 = a1;
  }

  else
  {
    v12 = *a1;
  }

  memmove(v10, v12, v4);
LABEL_15:
  *&v10[v4] = 46;
  v13 = *(a2 + 23);
  if (v13 >= 0)
  {
    v14 = a2;
  }

  else
  {
    v14 = *a2;
  }

  if (v13 >= 0)
  {
    v15 = *(a2 + 23);
  }

  else
  {
    v15 = *(a2 + 8);
  }

  v16 = std::string::append(&v30, v14, v15);
  v17 = *&v16->__r_.__value_.__l.__data_;
  v29[2] = v16->__r_.__value_.__r.__words[2];
  *v29 = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v29[2]) >= 0)
  {
    v18 = (v29 + HIBYTE(v29[2]));
  }

  else
  {
    v18 = (v29[0] + v29[1]);
  }

  if (SHIBYTE(v29[2]) >= 0)
  {
    v19 = v29;
  }

  else
  {
    v19 = v29[0];
  }

  for (; v19 != v18; v19 = (v19 + 1))
  {
    *v19 = __tolower(*v19);
  }

  pthread_mutex_lock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  if (!xmmword_2A18B7520)
  {
    v21 = operator new(0x18uLL);
    MEMORY[0x29C26B190](v21, @"com.apple.AppleBasebandManager", *MEMORY[0x29EDB8FB0]);
    v30.__r_.__value_.__r.__words[0] = v21;
    v20 = operator new(0x20uLL);
    *v20 = &unk_2A1E26558;
    v20[1] = 0;
    v20[2] = 0;
    v20[3] = v21;
    v22 = *(&xmmword_2A18B7520 + 1);
    *&xmmword_2A18B7520 = v21;
    *(&xmmword_2A18B7520 + 1) = v20;
    if (!v22)
    {
      *&v28 = v21;
      *(&v28 + 1) = v20;
      goto LABEL_38;
    }

    if (!atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v22->__on_zero_shared)(v22);
      std::__shared_weak_count::__release_weak(v22);
    }
  }

  v20 = *(&xmmword_2A18B7520 + 1);
  LODWORD(v21) = xmmword_2A18B7520;
  v28 = xmmword_2A18B7520;
  if (*(&xmmword_2A18B7520 + 1))
  {
LABEL_38:
    atomic_fetch_add_explicit(v20 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a3, *(a3 + 8));
  }

  else
  {
    __p = *a3;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v30, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v30 = __p;
  }

  if (SHIBYTE(v29[2]) >= 0)
  {
    v23 = v29;
  }

  else
  {
    v23 = v29[0];
  }

  v24 = ctu::cf::plist_adapter::set<std::string>(v21, &v30, v23);
  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_50:
      v25 = *(&v28 + 1);
      if (!*(&v28 + 1))
      {
        goto LABEL_55;
      }

      goto LABEL_54;
    }
  }

  else if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_50;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  v25 = *(&v28 + 1);
  if (!*(&v28 + 1))
  {
    goto LABEL_55;
  }

LABEL_54:
  if (!atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v25->__on_zero_shared)(v25);
    std::__shared_weak_count::__release_weak(v25);
    if ((SHIBYTE(v29[2]) & 0x80000000) == 0)
    {
      return v24;
    }

    goto LABEL_56;
  }

LABEL_55:
  if (SHIBYTE(v29[2]) < 0)
  {
LABEL_56:
    operator delete(v29[0]);
  }

  return v24;
}

void sub_2971374EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a16);
  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(a1);
}

uint64_t util::convert<unsigned int>(const std::string *a1, _DWORD *a2)
{
  if ((SHIBYTE(a1->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    LODWORD(v4) = strcasecmp(a1, "false");
    if (!v4)
    {
      goto LABEL_29;
    }

    LODWORD(v4) = strcasecmp(a1, "off");
    if (!v4)
    {
      goto LABEL_29;
    }

    LODWORD(v4) = strcasecmp(a1, "no");
    if (!v4)
    {
      goto LABEL_29;
    }

    if (strcasecmp(a1, "true") && strcasecmp(a1, "on") && strcasecmp(a1, "yes") && strcasecmp(a1, "full") && strcasecmp(a1, "streaming"))
    {
      v5 = a1;
      if (!strcasecmp(a1, "lite"))
      {
        goto LABEL_30;
      }

      goto LABEL_21;
    }

LABEL_28:
    LODWORD(v4) = 1;
    goto LABEL_29;
  }

  v5 = a1->__r_.__value_.__r.__words[0];
  LODWORD(v4) = strcasecmp(a1->__r_.__value_.__l.__data_, "false");
  if (!v4)
  {
    goto LABEL_29;
  }

  LODWORD(v4) = strcasecmp(v5, "off");
  if (!v4)
  {
    goto LABEL_29;
  }

  LODWORD(v4) = strcasecmp(v5, "no");
  if (!v4)
  {
    goto LABEL_29;
  }

  if (!strcasecmp(v5, "true") || !strcasecmp(v5, "on") || !strcasecmp(v5, "yes") || !strcasecmp(v5, "full") || !strcasecmp(v5, "streaming"))
  {
    goto LABEL_28;
  }

  if (!strcasecmp(v5, "lite"))
  {
LABEL_30:
    LODWORD(v4) = 2;
    goto LABEL_29;
  }

LABEL_21:
  if (!strcasecmp(v5, "background"))
  {
    goto LABEL_30;
  }

  __idx = 0xAAAAAAAAAAAAAAAALL;
  v4 = std::stol(a1, &__idx, 0);
  size = HIBYTE(a1->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) != 0)
  {
    size = a1->__r_.__value_.__l.__size_;
  }

  if (__idx != size || (v4 & 0x8000000000000000) != 0 || HIDWORD(v4))
  {
    return 0;
  }

LABEL_29:
  *a2 = v4;
  return 1;
}

uint64_t sub_2971377D0(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  return 0;
}

void prop::bbtrace::get<int>(char *a1, _DWORD *a2)
{
  memset(&__p, 0, sizeof(__p));
  if (prop::bbtrace::get(a1, &__p))
  {
    util::convert<int>(&__p, a2, 0);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_29713785C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL prop::tracesettings::anyEnabled(prop::tracesettings *this, const char *a2)
{
  if (prop::tracesettings::enabled(*MEMORY[0x29EDBE5F0], a2) || prop::tracesettings::enabled(*MEMORY[0x29EDBE710], v2) || prop::tracesettings::enabled(*MEMORY[0x29EDBE5F8], v3) || prop::tracesettings::enabled(*MEMORY[0x29EDBF8E8], v4) || prop::tracesettings::enabled(*MEMORY[0x29EDBE690], v5) || prop::tracesettings::enabled(*MEMORY[0x29EDBE7A8], v6))
  {
    return 1;
  }

  v9 = *MEMORY[0x29EDBE608];

  return prop::tracesettings::enabled(v9, v7);
}

BOOL prop::tracesettings::isContinuous(prop::tracesettings *this, const char *a2)
{
  if (prop::tracesettings::enabled(*MEMORY[0x29EDBE5F0], a2) || prop::tracesettings::enabled(*MEMORY[0x29EDBF8E8], v2))
  {
    return 1;
  }

  v5 = *MEMORY[0x29EDBE690];

  return prop::tracesettings::enabled(v5, v3);
}

BOOL prop::tracesettings::mobileBasebandServicesEnabled(prop::tracesettings *this, const char *a2)
{
  if (prop::tracesettings::enabled(*MEMORY[0x29EDBE5F0], a2) || prop::tracesettings::enabled(*MEMORY[0x29EDBF8E8], v2))
  {
    return 1;
  }

  v5 = *MEMORY[0x29EDBE690];

  return prop::tracesettings::enabled(v5, v3);
}

void ___ZL16sGetOsLogContextv_block_invoke_5()
{
  ctu::OsLogContext::OsLogContext(v0, "com.apple.telephony.abm", "prop");
  ctu::OsLogContext::operator=();
  ctu::OsLogContext::~OsLogContext(v0);
}

uint64_t __cxx_global_var_init_14()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ABMProperties>::~PthreadMutexGuardPolicy, &ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance, &dword_296FF7000);
  }

  return result;
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
  v7 = off_2A18B7390;
  if (!off_2A18B7390)
  {
    CommandDriverFactory::create_default_global(&v20, v6);
    v8 = v20;
    v20 = 0uLL;
    v9 = *(&off_2A18B7390 + 1);
    off_2A18B7390 = v8;
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

    v7 = off_2A18B7390;
  }

  v11 = *(&off_2A18B7390 + 1);
  if (*(&off_2A18B7390 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18B7390 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  (*(*v7 + 24))(&object, v7);
  HealthModule::HealthModule(v4, &v18, &object);
  *a2 = v4;
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  v12 = operator new(0x20uLL);
  v12[1] = 0;
  v13 = v12 + 1;
  *v12 = &unk_2A1E2BB20;
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

void sub_297137D40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, dispatch_object_t object, uint64_t a13, std::__shared_weak_count *a14)
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
    _os_log_debug_impl(&dword_296FF7000, v2, OS_LOG_TYPE_DEBUG, "#D Registering command handlers", buf, 2u);
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
  if (!xmmword_2A18B74D0)
  {
    v9 = operator new(0x68uLL);
    HealthEventDB::HealthEventDB(v9);
    *buf = v9;
    v7 = operator new(0x20uLL);
    v7->__vftable = &unk_2A1E26F90;
    v7->__shared_owners_ = 0;
    v7->__shared_weak_owners_ = 0;
    v7[1].__vftable = v9;
    v10 = *(&xmmword_2A18B74D0 + 1);
    *&xmmword_2A18B74D0 = v9;
    *(&xmmword_2A18B74D0 + 1) = v7;
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

  v7 = *(&xmmword_2A18B74D0 + 1);
  if (*(&xmmword_2A18B74D0 + 1))
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
      _os_log_impl(&dword_296FF7000, v12, OS_LOG_TYPE_DEFAULT, "#I AP reboot detected; resetting CommCenter and baseband stats", buf, 2u);
    }

    v13 = xpc_dictionary_create(0, 0, 0);
    v14 = MEMORY[0x29EDCAA00];
    if (v13 || (v13 = xpc_null_create()) != 0)
    {
      if (MEMORY[0x29C26CE60](v13) == v14)
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
    if (!xmmword_2A18B74D0)
    {
      v24 = operator new(0x68uLL);
      HealthEventDB::HealthEventDB(v24);
      v60 = v24;
      v23 = operator new(0x20uLL);
      *v23 = &unk_2A1E26F90;
      v23[1] = 0;
      v23[2] = 0;
      v23[3] = v24;
      v25 = *(&xmmword_2A18B74D0 + 1);
      *&xmmword_2A18B74D0 = v24;
      *(&xmmword_2A18B74D0 + 1) = v23;
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

    v23 = *(&xmmword_2A18B74D0 + 1);
    v24 = xmmword_2A18B74D0;
    *buf = xmmword_2A18B74D0;
    if (!*(&xmmword_2A18B74D0 + 1))
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

      if (MEMORY[0x29C26CE60](v28) == v14)
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
      if (!xmmword_2A18B74D0)
      {
        v34 = operator new(0x68uLL);
        HealthEventDB::HealthEventDB(v34);
        v60 = v34;
        v33 = operator new(0x20uLL);
        *v33 = &unk_2A1E26F90;
        v33[1] = 0;
        v33[2] = 0;
        v33[3] = v34;
        v35 = *(&xmmword_2A18B74D0 + 1);
        *&xmmword_2A18B74D0 = v34;
        *(&xmmword_2A18B74D0 + 1) = v33;
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

      v33 = *(&xmmword_2A18B74D0 + 1);
      v34 = xmmword_2A18B74D0;
      *buf = xmmword_2A18B74D0;
      if (!*(&xmmword_2A18B74D0 + 1))
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
  aBlock[3] = &__block_descriptor_tmp_38;
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
  *&buf[8] = xmmword_297227A10;
  strcpy(*buf, "CommandUpdateBBBootStats");
  v47[0] = MEMORY[0x29EDCA5F8];
  v47[1] = 1174405120;
  v47[2] = ___ZN12HealthModule28registerCommandHandlers_syncEv_block_invoke_2;
  v47[3] = &__block_descriptor_tmp_5_12;
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
  *&buf[8] = xmmword_297227AD0;
  strcpy(*buf, "CommandSubmitHealthDBBootMetrics");
  v44[0] = MEMORY[0x29EDCA5F8];
  v44[1] = 1174405120;
  v44[2] = ___ZN12HealthModule28registerCommandHandlers_syncEv_block_invoke_6;
  v44[3] = &__block_descriptor_tmp_7_4;
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
  *&buf[8] = xmmword_297227A00;
  strcpy(*buf, "CommandGetBBDeadHealthCauseCode");
  v41[0] = MEMORY[0x29EDCA5F8];
  v41[1] = 1174405120;
  v41[2] = ___ZN12HealthModule28registerCommandHandlers_syncEv_block_invoke_8;
  v41[3] = &__block_descriptor_tmp_11_4;
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

void sub_297138A88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, std::__shared_weak_count *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, std::__shared_weak_count *a37)
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
  if (qword_2A18B74D0)
  {
LABEL_5:
    v8 = qword_2A18B74D0;
    v7 = off_2A18B74D8;
    object = qword_2A18B74D0;
    v13 = off_2A18B74D8;
    if (!off_2A18B74D8)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v8 = operator new(0x68uLL);
  HealthEventDB::HealthEventDB(v8);
  v17 = v8;
  v7 = operator new(0x20uLL);
  v7->__vftable = &unk_2A1E26F90;
  v7->__shared_owners_ = 0;
  v7->__shared_weak_owners_ = 0;
  v7[1].__vftable = v8;
  v9 = off_2A18B74D8;
  qword_2A18B74D0 = v8;
  off_2A18B74D8 = v7;
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

  if (MEMORY[0x29C26CE60](v14) == MEMORY[0x29EDCAA00])
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

void sub_29713904C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t a9, uint64_t a10, xpc_object_t object, char a12, uint64_t a13, char a14)
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
  if (qword_2A18B74D0)
  {
LABEL_5:
    v8 = qword_2A18B74D0;
    v7 = off_2A18B74D8;
    v17 = qword_2A18B74D0;
    v18 = off_2A18B74D8;
    if (!off_2A18B74D8)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v8 = operator new(0x68uLL);
  HealthEventDB::HealthEventDB(v8);
  v21 = v8;
  v7 = operator new(0x20uLL);
  *v7 = &unk_2A1E26F90;
  v7[1] = 0;
  v7[2] = 0;
  v7[3] = v8;
  v9 = off_2A18B74D8;
  qword_2A18B74D0 = v8;
  off_2A18B74D8 = v7;
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

void sub_297139398(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t a9, xpc_object_t object, uint64_t a11, char a12, uint64_t a13, HealthEventDB *a14)
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
      if (!xmmword_2A18B74D0)
      {
        v9 = operator new(0x68uLL);
        HealthEventDB::HealthEventDB(v9);
        v61 = v9;
        v8 = operator new(0x20uLL);
        *v8 = &unk_2A1E26F90;
        v8[1] = 0;
        v8[2] = 0;
        v8[3] = v9;
        v10 = *(&xmmword_2A18B74D0 + 1);
        *&xmmword_2A18B74D0 = v9;
        *(&xmmword_2A18B74D0 + 1) = v8;
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

          v11 = MEMORY[0x29C26CE60](xdict);
          v12 = MEMORY[0x29EDCAA00];
          if (v11 != MEMORY[0x29EDCAA00])
          {
            v13 = *(v6 + 104);
            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              LOWORD(object) = 0;
              _os_log_error_impl(&dword_296FF7000, v13, OS_LOG_TYPE_ERROR, "Failed to query health DB for baseband boot related information", &object, 2u);
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
          if (v16 && MEMORY[0x29C26CE60](v16) == v12)
          {
            xpc_retain(v16);
            v18 = v16;
          }

          else
          {
            v18 = xpc_null_create();
          }

          if (MEMORY[0x29C26CE60](v18) != v12)
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
          if (MEMORY[0x29C26CE60](v18) != v12)
          {
            v20 = *(v6 + 104);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              LOWORD(object) = 0;
              _os_log_error_impl(&dword_296FF7000, v20, OS_LOG_TYPE_ERROR, "Failed to prepare xpc dictionary to update CommCenter stats", &object, 2u);
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
              _os_log_impl(&dword_296FF7000, v24, OS_LOG_TYPE_DEFAULT, "#I Metric has been submitted, skipping submission to Core Analytics", &object, 2u);
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
          if (MEMORY[0x29C26CE60](v68) != v12)
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
            if (MEMORY[0x29C26CE60](v30) == v12)
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
            if (MEMORY[0x29C26CE60](v38) == v12)
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
          if (MEMORY[0x29C26CE60](v39) != v12)
          {
            v40 = *(v6 + 104);
            if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
            {
              LOWORD(object) = 0;
              _os_log_error_impl(&dword_296FF7000, v40, OS_LOG_TYPE_ERROR, "Failed to allocate xpc dictionary for stats", &object, 2u);
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
            if (MEMORY[0x29C26CE60](v53) == v12)
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
          v57 = xmmword_2A18B74D0;
          if (!xmmword_2A18B74D0)
          {
            HealthEventDB::create_default_global(&object);
            std::shared_ptr<HealthEventDB>::operator=[abi:ne200100](&object);
            std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&object);
            v57 = xmmword_2A18B74D0;
          }

          v61 = v57;
          v62 = *(&xmmword_2A18B74D0 + 1);
          if (*(&xmmword_2A18B74D0 + 1))
          {
            atomic_fetch_add_explicit((*(&xmmword_2A18B74D0 + 1) + 8), 1uLL, memory_order_relaxed);
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

      v8 = *(&xmmword_2A18B74D0 + 1);
      v9 = xmmword_2A18B74D0;
      object = xmmword_2A18B74D0;
      if (!*(&xmmword_2A18B74D0 + 1))
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }
}

void sub_297139E94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t a10, char a11, uint64_t a12, uint64_t a13, xpc_object_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, xpc_object_t object, xpc_object_t a23, char a24)
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
  if (v7 && MEMORY[0x29C26CE60](v7) == v9)
  {
    xpc_retain(v7);
    v10 = v7;
  }

  else
  {
    v10 = xpc_null_create();
  }

  if (MEMORY[0x29C26CE60](v10) != v9)
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
  if (MEMORY[0x29C26CE60](v10) == v9)
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
    if (v16 && MEMORY[0x29C26CE60](v16) == v9)
    {
      xpc_retain(v16);
      v18 = v16;
    }

    else
    {
      v18 = xpc_null_create();
    }

    if (MEMORY[0x29C26CE60](v18) != v9)
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
    if (MEMORY[0x29C26CE60](v18) != v9)
    {
      v20 = *(a1 + 104);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        LOWORD(object[0]) = 0;
        _os_log_error_impl(&dword_296FF7000, v20, OS_LOG_TYPE_ERROR, "Got empty baseband statistics; something is wrong in HealthDB. Please file a radar", object, 2u);
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

    if (MEMORY[0x29C26CE60](v34) == v9)
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
    *&v101 = 16;
    *v103 = 0x1500000001;
    if (sysctl(v103, 2u, &__p, &v101, 0, 0) >= 0)
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
    if (!xmmword_2A18B73E0)
    {
      v56 = operator new(0x30uLL);
      DeviceHistoryDB::DeviceHistoryDB(v56);
      __p = v56;
      v57 = operator new(0x20uLL);
      v57->__vftable = &unk_2A1E29F28;
      v57->__shared_owners_ = 0;
      v57->__shared_weak_owners_ = 0;
      v57[1].__vftable = v56;
      v58 = *(&xmmword_2A18B73E0 + 1);
      *&xmmword_2A18B73E0 = v56;
      *(&xmmword_2A18B73E0 + 1) = v57;
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
            if (!xmmword_2A18B73E0)
            {
              v62 = operator new(0x30uLL);
              DeviceHistoryDB::DeviceHistoryDB(v62);
              *v103 = v62;
              v61 = operator new(0x20uLL);
              *v61 = &unk_2A1E29F28;
              v61[1] = 0;
              v61[2] = 0;
              v61[3] = v62;
              v72 = *(&xmmword_2A18B73E0 + 1);
              *&xmmword_2A18B73E0 = v62;
              *(&xmmword_2A18B73E0 + 1) = v61;
              if (!v72)
              {
                *&v101 = v62;
                *(&v101 + 1) = v61;
LABEL_123:
                atomic_fetch_add_explicit(v61 + 1, 1uLL, memory_order_relaxed);
LABEL_124:
                v73 = pthread_mutex_unlock(&ctu::Singleton<DeviceHistoryDB,DeviceHistoryDB,ctu::PthreadMutexGuardPolicy<DeviceHistoryDB>>::sInstance);
                if (v62 + 2 != &__p)
                {
                  std::vector<_DeviceHistoryItem>::__assign_with_size[abi:ne200100]<_DeviceHistoryItem*,_DeviceHistoryItem*>(&__p, v62[2], v62[3], 0xAAAAAAAAAAAAAAABLL * ((v62[3] - v62[2]) >> 5));
                }

                v74 = *(&v101 + 1);
                if (*(&v101 + 1) && !atomic_fetch_add((*(&v101 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
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
                    v81 = &v101;
                  }

                  else
                  {
                    v81 = v101;
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
                    operator delete(v101);
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
                    LODWORD(v101) = 136315138;
                    *(&v101 + 4) = v92;
                    _os_log_impl(&dword_296FF7000, v91, OS_LOG_TYPE_DEFAULT, "#I Sending out AWD metric: %s", &v101, 0xCu);
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

            v61 = *(&xmmword_2A18B73E0 + 1);
            v62 = xmmword_2A18B73E0;
            v101 = xmmword_2A18B73E0;
            if (!*(&xmmword_2A18B73E0 + 1))
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

    v57 = *(&xmmword_2A18B73E0 + 1);
    v56 = xmmword_2A18B73E0;
    if (!*(&xmmword_2A18B73E0 + 1))
    {
      goto LABEL_95;
    }

    goto LABEL_94;
  }

  v12 = *(a1 + 104);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    LOWORD(object[0]) = 0;
    _os_log_error_impl(&dword_296FF7000, v12, OS_LOG_TYPE_ERROR, "Failed to prepare xpc dictionary to update CommCenter stats", object, 2u);
  }

  *a3 = xpc_null_create();
LABEL_174:
  xpc_release(v10);
  v93 = *MEMORY[0x29EDCA608];
}