uint64_t telephonytransport::PCIClientImpl::handleClientConnection(_BOOL8 a1, uint64_t *a2)
{
  v29 = *MEMORY[0x29EDCA608];
  if (!*(a1 + 32))
  {
    goto LABEL_6;
  }

  v2 = *telephonytransport::getDefaultOSLogHandle(a1);
  a1 = os_log_type_enabled(v2, OS_LOG_TYPE_FAULT);
  if (a1)
  {
    *buf = 0;
    v3 = "Received another connection. Restarting process...";
    v4 = buf;
LABEL_4:
    _os_log_fault_impl(&dword_29808D000, v2, OS_LOG_TYPE_FAULT, v3, v4, 2u);
  }

  while (1)
  {
    __break(1u);
LABEL_6:
    v5 = a2;
    v6 = a1;
    *&v7 = 0xAAAAAAAAAAAAAAAALL;
    *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *buf = v7;
    v28 = v7;
    v9 = *(a1 + 8);
    v8 = *(a1 + 16);
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 16), 1uLL, memory_order_relaxed);
    }

    v10 = operator new(0x20uLL);
    *v10 = &unk_2A1E9DE40;
    v10[1] = v6;
    v10[2] = v9;
    v10[3] = v8;
    *(&v28 + 1) = v10;
    memset(v26, 170, 24);
    v12 = *(v6 + 8);
    v11 = *(v6 + 16);
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 16), 1uLL, memory_order_relaxed);
    }

    v13 = operator new(0x20uLL);
    *v13 = &unk_2A1E9DEF0;
    v13[1] = v6;
    v13[2] = v12;
    v13[3] = v11;
    v26[3] = v13;
    v14 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v15 = dispatch_queue_create("PCIClientTransport", v14);
    v16 = v15;
    object = v15;
    if (v15)
    {
      dispatch_retain(v15);
    }

    telephonytransport::PCIClientTransport::create(&object, v5, buf, v26, "PCIClientContext", v25);
    v17 = *v25;
    memset(v25, 0, sizeof(v25));
    v18 = *(v6 + 40);
    *(v6 + 32) = v17;
    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
      if (*&v25[8])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*&v25[8]);
      }
    }

    v19 = object;
    if (object)
    {
      dispatch_release(object);
    }

    if (*(v6 + 32))
    {
      break;
    }

    v2 = *telephonytransport::getDefaultOSLogHandle(v19);
    a1 = os_log_type_enabled(v2, OS_LOG_TYPE_FAULT);
    if (a1)
    {
      *v25 = 0;
      v3 = "Failed to create PCIClientTransport";
      v4 = v25;
      goto LABEL_4;
    }
  }

  v20 = *telephonytransport::getDefaultOSLogHandle(v19);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    *v25 = 0;
    _os_log_impl(&dword_29808D000, v20, OS_LOG_TYPE_INFO, "Sending notification to indicate that PCIClient is ready", v25, 2u);
  }

  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterPostNotification(LocalCenter, @"TTPCIClientReadyNotification", 0, 0, 1u);
  if (v16)
  {
    dispatch_release(v16);
  }

  std::__function::__value_func<void ()(unsigned int,unsigned int,unsigned long long,unsigned long long)>::~__value_func[abi:ne200100](v26);
  result = std::__function::__value_func<void ()(unsigned int,BOOL,unsigned char *,unsigned long)>::~__value_func[abi:ne200100](buf);
  v23 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29809AA68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (v17)
  {
    dispatch_release(v17);
  }

  std::__function::__value_func<void ()(unsigned int,unsigned int,unsigned long long,unsigned long long)>::~__value_func[abi:ne200100](&a13);
  std::__function::__value_func<void ()(unsigned int,BOOL,unsigned char *,unsigned long)>::~__value_func[abi:ne200100](&a17);
  _Unwind_Resume(a1);
}

uint64_t telephonytransport::PCIClient::sharedInstance(telephonytransport::PCIClient *this)
{
  IsOversteerEnabled = TelephonyUtilIsOversteerEnabled();
  if (IsOversteerEnabled & 1) != 0 || (IsOversteerEnabled = TelephonyUtilIsBBPlatformSimulationEnabled(), (IsOversteerEnabled))
  {
    v2 = telephonytransport::PCIClientImpl::sharedInstance(IsOversteerEnabled);
    if (v2)
    {
      return v2 + 24;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v4 = *telephonytransport::getDefaultOSLogHandle(IsOversteerEnabled);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v5 = 0;
      _os_log_impl(&dword_29808D000, v4, OS_LOG_TYPE_INFO, "Not instantiating PCI client because oversteer and bbsimulation are disabled", v5, 2u);
    }

    return 0;
  }
}

void std::__tree<std::__value_type<unsigned int,std::shared_ptr<telephonytransport::TransportContext>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<telephonytransport::TransportContext>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<telephonytransport::TransportContext>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<unsigned int,std::shared_ptr<telephonytransport::TransportContext>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<telephonytransport::TransportContext>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<telephonytransport::TransportContext>>>>::destroy(*a1);
    std::__tree<std::__value_type<unsigned int,std::shared_ptr<telephonytransport::TransportContext>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<telephonytransport::TransportContext>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<telephonytransport::TransportContext>>>>::destroy(a1[1]);
    v2 = a1[6];
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }

    operator delete(a1);
  }
}

void std::__shared_ptr_pointer<telephonytransport::TransportContext *,std::shared_ptr<telephonytransport::TransportContext>::__shared_ptr_default_delete<telephonytransport::TransportContext,telephonytransport::TransportContext>,std::allocator<telephonytransport::TransportContext>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<telephonytransport::TransportContext *,std::shared_ptr<telephonytransport::TransportContext>::__shared_ptr_default_delete<telephonytransport::TransportContext,telephonytransport::TransportContext>,std::allocator<telephonytransport::TransportContext>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::default_delete<telephonytransport::TransportContext>::operator()[abi:ne200100](void *__p)
{
  if (__p)
  {
    v2 = (__p + 5);
    v3 = __p[8];
    if (v3 == v2)
    {
      (*(*v3 + 32))(v3);
    }

    else if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = __p[4];
    if (v4 == __p + 1)
    {
      (*(*v4 + 32))(v4);
    }

    else if (v4)
    {
      (*(*v4 + 40))(v4);
    }

    if (*__p)
    {
      dispatch_release(*__p);
    }

    operator delete(__p);
  }
}

void std::shared_ptr<telephonytransport::PCIClientImpl>::shared_ptr[abi:ne200100]<telephonytransport::PCIClientImpl,0>(uint64_t a1)
{
  qword_2A13A5F98 = a1;
  v2 = operator new(0x20uLL);
  v2->__vftable = &unk_2A1E9DDC8;
  v2->__shared_owners_ = 0;
  v2->__shared_weak_owners_ = 0;
  v2[1].__vftable = a1;
  qword_2A13A5FA0 = v2;
  if (a1)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      if (v3->__shared_owners_ != -1)
      {
        return;
      }

      atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      *(a1 + 8) = a1;
      *(a1 + 16) = v2;
      std::__shared_weak_count::__release_weak(v3);
    }

    else
    {
      atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      *(a1 + 8) = a1;
      *(a1 + 16) = v2;
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void sub_29809AE00(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 16))(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<telephonytransport::PCIClientImpl *,std::shared_ptr<telephonytransport::PCIClientImpl>::__shared_ptr_default_delete<telephonytransport::PCIClientImpl,telephonytransport::PCIClientImpl>,std::allocator<telephonytransport::PCIClientImpl>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<telephonytransport::PCIClientImpl *,std::shared_ptr<telephonytransport::PCIClientImpl>::__shared_ptr_default_delete<telephonytransport::PCIClientImpl,telephonytransport::PCIClientImpl>,std::allocator<telephonytransport::PCIClientImpl>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<telephonytransport::PCIClientImpl *,std::shared_ptr<telephonytransport::PCIClientImpl>::__shared_ptr_default_delete<telephonytransport::PCIClientImpl,telephonytransport::PCIClientImpl>,std::allocator<telephonytransport::PCIClientImpl>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<telephonytransport::PCIClientImpl::handleClientConnection(std::shared_ptr<telephonytransport::NetworkSocket> &&)::$_0,std::allocator<std::shared_ptr<telephonytransport::NetworkSocket> &&>,void ()(unsigned int,BOOL,unsigned char *,unsigned long)>::~__func(void *a1)
{
  *a1 = &unk_2A1E9DE40;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<telephonytransport::PCIClientImpl::handleClientConnection(std::shared_ptr<telephonytransport::NetworkSocket> &&)::$_0,std::allocator<std::shared_ptr<telephonytransport::NetworkSocket> &&>,void ()(unsigned int,BOOL,unsigned char *,unsigned long)>::~__func(void *__p)
{
  *__p = &unk_2A1E9DE40;
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

char *std::__function::__func<telephonytransport::PCIClientImpl::handleClientConnection(std::shared_ptr<telephonytransport::NetworkSocket> &&)::$_0,std::allocator<std::shared_ptr<telephonytransport::NetworkSocket> &&>,void ()(unsigned int,BOOL,unsigned char *,unsigned long)>::__clone(uint64_t a1)
{
  result = operator new(0x20uLL);
  *result = &unk_2A1E9DE40;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<telephonytransport::PCIClientImpl::handleClientConnection(std::shared_ptr<telephonytransport::NetworkSocket> &&)::$_0,std::allocator<std::shared_ptr<telephonytransport::NetworkSocket> &&>,void ()(unsigned int,BOOL,unsigned char *,unsigned long)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A1E9DE40;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<telephonytransport::PCIClientImpl::handleClientConnection(std::shared_ptr<telephonytransport::NetworkSocket> &&)::$_0,std::allocator<std::shared_ptr<telephonytransport::NetworkSocket> &&>,void ()(unsigned int,BOOL,unsigned char *,unsigned long)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<telephonytransport::PCIClientImpl::handleClientConnection(std::shared_ptr<telephonytransport::NetworkSocket> &&)::$_0,std::allocator<std::shared_ptr<telephonytransport::NetworkSocket> &&>,void ()(unsigned int,BOOL,unsigned char *,unsigned long)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<telephonytransport::PCIClientImpl::handleClientConnection(std::shared_ptr<telephonytransport::NetworkSocket> &&)::$_0,std::allocator<std::shared_ptr<telephonytransport::NetworkSocket> &&>,void ()(unsigned int,BOOL,unsigned char *,unsigned long)>::operator()(void *a1, unsigned int *a2, char *a3, const void **a4, size_t *a5)
{
  v6 = a1[3];
  if (v6)
  {
    v7 = *a2;
    v8 = *a3;
    v9 = *a4;
    v10 = *a5;
    v11 = a1[1];
    v12 = std::__shared_weak_count::lock(v6);
    if (v12)
    {
      v13 = v12;
      if (a1[2])
      {
        v22 = 0xAAAAAAAAAAAAAAAALL;
        v23 = 0xAAAAAAAAAAAAAAAALL;
        telephonytransport::TokenRegistrar::get(&v22, v11 + 1, v7);
        v15 = v22;
        v14 = v23;
        if (v22)
        {
          v16 = malloc(v10);
          memcpy(v16, v9, v10);
          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 1174405120;
          block[2] = ___ZZN18telephonytransport13PCIClientImpl22handleClientConnectionEONSt3__110shared_ptrINS_13NetworkSocketEEEENK3__0clEjbPhm_block_invoke;
          block[3] = &__block_descriptor_tmp_33;
          block[4] = v15;
          v18 = v14;
          if (v14)
          {
            atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v21 = v8;
          v19 = v16;
          v20 = v10;
          dispatch_async(*v15, block);
          if (v18)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v18);
          }
        }

        if (v14)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v14);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }
  }
}

uint64_t std::__function::__func<telephonytransport::PCIClientImpl::handleClientConnection(std::shared_ptr<telephonytransport::NetworkSocket> &&)::$_0,std::allocator<std::shared_ptr<telephonytransport::NetworkSocket> &&>,void ()(unsigned int,BOOL,unsigned char *,unsigned long)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t ___ZZN18telephonytransport13PCIClientImpl22handleClientConnectionEONSt3__110shared_ptrINS_13NetworkSocketEEEENK3__0clEjbPhm_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v8 = *(a1 + 64);
  v7 = v2;
  v6 = v3;
  v4 = *(v1 + 32);
  if (!v4)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v4 + 48))(v4, &v8, &v7, &v6);
}

uint64_t __copy_helper_block_e8_32c67_ZTSKNSt3__110shared_ptrIN18telephonytransport16TransportContextEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c67_ZTSKNSt3__110shared_ptrIN18telephonytransport16TransportContextEEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void *std::__function::__func<telephonytransport::PCIClientImpl::handleClientConnection(std::shared_ptr<telephonytransport::NetworkSocket> &&)::$_1,std::allocator<std::shared_ptr<telephonytransport::NetworkSocket> &&>,void ()(unsigned int,unsigned int,unsigned long long,unsigned long long)>::~__func(void *a1)
{
  *a1 = &unk_2A1E9DEF0;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<telephonytransport::PCIClientImpl::handleClientConnection(std::shared_ptr<telephonytransport::NetworkSocket> &&)::$_1,std::allocator<std::shared_ptr<telephonytransport::NetworkSocket> &&>,void ()(unsigned int,unsigned int,unsigned long long,unsigned long long)>::~__func(void *__p)
{
  *__p = &unk_2A1E9DEF0;
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

char *std::__function::__func<telephonytransport::PCIClientImpl::handleClientConnection(std::shared_ptr<telephonytransport::NetworkSocket> &&)::$_1,std::allocator<std::shared_ptr<telephonytransport::NetworkSocket> &&>,void ()(unsigned int,unsigned int,unsigned long long,unsigned long long)>::__clone(uint64_t a1)
{
  result = operator new(0x20uLL);
  *result = &unk_2A1E9DEF0;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<telephonytransport::PCIClientImpl::handleClientConnection(std::shared_ptr<telephonytransport::NetworkSocket> &&)::$_1,std::allocator<std::shared_ptr<telephonytransport::NetworkSocket> &&>,void ()(unsigned int,unsigned int,unsigned long long,unsigned long long)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A1E9DEF0;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<telephonytransport::PCIClientImpl::handleClientConnection(std::shared_ptr<telephonytransport::NetworkSocket> &&)::$_1,std::allocator<std::shared_ptr<telephonytransport::NetworkSocket> &&>,void ()(unsigned int,unsigned int,unsigned long long,unsigned long long)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<telephonytransport::PCIClientImpl::handleClientConnection(std::shared_ptr<telephonytransport::NetworkSocket> &&)::$_1,std::allocator<std::shared_ptr<telephonytransport::NetworkSocket> &&>,void ()(unsigned int,unsigned int,unsigned long long,unsigned long long)>::destroy_deallocate(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<telephonytransport::PCIClientImpl::handleClientConnection(std::shared_ptr<telephonytransport::NetworkSocket> &&)::$_1,std::allocator<std::shared_ptr<telephonytransport::NetworkSocket> &&>,void ()(unsigned int,unsigned int,unsigned long long,unsigned long long)>::operator()(void *a1, unsigned int *a2, int *a3, uint64_t *a4, uint64_t *a5)
{
  v6 = a1[3];
  if (v6)
  {
    v7 = *a2;
    v8 = *a3;
    v9 = *a4;
    v10 = *a5;
    v11 = a1[1];
    v12 = std::__shared_weak_count::lock(v6);
    if (v12)
    {
      v13 = v12;
      if (a1[2])
      {
        v21 = 0xAAAAAAAAAAAAAAAALL;
        v22 = 0xAAAAAAAAAAAAAAAALL;
        telephonytransport::TokenRegistrar::get(&v21, v11 + 1, v7);
        v14 = v21;
        v15 = v22;
        if (v21)
        {
          block[0] = MEMORY[0x29EDCA5F8];
          block[1] = 1174405120;
          block[2] = ___ZZN18telephonytransport13PCIClientImpl22handleClientConnectionEONSt3__110shared_ptrINS_13NetworkSocketEEEENK3__1clEjjyy_block_invoke;
          block[3] = &__block_descriptor_tmp_45;
          block[4] = v21;
          v17 = v22;
          if (v22)
          {
            atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v20 = v8;
          v18 = v9;
          v19 = v10;
          dispatch_async(*v14, block);
          if (v17)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v17);
          }
        }

        if (v15)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v15);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }
  }
}

uint64_t std::__function::__func<telephonytransport::PCIClientImpl::handleClientConnection(std::shared_ptr<telephonytransport::NetworkSocket> &&)::$_1,std::allocator<std::shared_ptr<telephonytransport::NetworkSocket> &&>,void ()(unsigned int,unsigned int,unsigned long long,unsigned long long)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t ___ZZN18telephonytransport13PCIClientImpl22handleClientConnectionEONSt3__110shared_ptrINS_13NetworkSocketEEEENK3__1clEjjyy_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 64);
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(*(a1 + 32) + 64);
  v8 = v1;
  v6 = v3;
  v7 = v2;
  if (!v4)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v4 + 48))(v4, &v8, &v7, &v6);
}

void telephonytransport::NetworkIface::create(telephonytransport *a1@<X0>, NSObject **a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, telephonytransport::NetworkIface **a5@<X8>)
{
  v6 = *(a3 + 23);
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a3 + 8);
  }

  if (!v6)
  {
LABEL_8:
    v12 = *telephonytransport::getDefaultOSLogHandle(a1);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v13 = "Invalid network interface parameters";
LABEL_24:
      _os_log_error_impl(&dword_29808D000, v12, OS_LOG_TYPE_ERROR, v13, buf, 2u);
      goto LABEL_25;
    }

    goto LABEL_25;
  }

  if (*(a3 + 56) == 1)
  {
    v11 = *(a3 + 55);
    if ((v11 & 0x80u) != 0)
    {
      v11 = *(a3 + 40);
    }

    if (v11)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (!*a2)
    {
      v12 = *telephonytransport::getDefaultOSLogHandle(a1);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v13 = "Providing readQueue is mandatory when read mode is specified";
        goto LABEL_24;
      }

      goto LABEL_25;
    }

    v14 = *(a1 + 1);
    if (!v14 || (v14 = std::__shared_weak_count::lock(v14)) == 0 || (v15 = *a1, std::__shared_weak_count::__release_shared[abi:ne200100](v14), !v15))
    {
      v12 = *telephonytransport::getDefaultOSLogHandle(v14);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v13 = "Delegate is mandatory for modes that require reader";
        goto LABEL_24;
      }

LABEL_25:
      *a5 = 0;
      a5[1] = 0;
      return;
    }
  }

  v16 = operator new(0x80uLL);
  v17 = *a2;
  v21 = v17;
  if (v17)
  {
    dispatch_retain(v17);
  }

  telephonytransport::NetworkIface::NetworkIface(v16, a1, &v21, a3, a4);
  v18 = operator new(0x20uLL);
  v18->__vftable = &unk_2A1E9E030;
  v18->__shared_owners_ = 0;
  v18->__shared_weak_owners_ = 0;
  v18[1].__vftable = v16;
  if (v17)
  {
    dispatch_release(v17);
  }

  v19 = telephonytransport::NetworkIface::init(v16);
  if (v19)
  {
    *a5 = v16;
    a5[1] = v18;
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v20 = *telephonytransport::getDefaultOSLogHandle(v19);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_29808D000, v20, OS_LOG_TYPE_ERROR, "Failed to initialize", buf, 2u);
    }

    *a5 = 0;
    a5[1] = 0;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v18);
}

BOOL telephonytransport::NetworkIface::init(telephonytransport::NetworkIface *this)
{
  v28 = *MEMORY[0x29EDCA608];
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v26 = v2;
  v27 = v2;
  v24 = v2;
  v25 = v2;
  v22 = v2;
  v23 = v2;
  v20 = v2;
  v21 = v2;
  v18 = v2;
  v19 = v2;
  v16 = v2;
  v17 = v2;
  v14 = v2;
  v15 = v2;
  *v12 = v2;
  v13 = v2;
  if (*(this + 24) == 1)
  {
    goto LABEL_4;
  }

  if (telephonytransport::NetworkIface::initializeReader(this, v12))
  {
    if (!*(this + 24))
    {
LABEL_5:
      result = 1;
      goto LABEL_15;
    }

LABEL_4:
    if (telephonytransport::NetworkIface::initializeWriter(this, v12))
    {
      goto LABEL_5;
    }

    v5 = *(this + 3);
    v4 = *(this + 4);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      v6 = *v5;
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    else
    {
      v6 = *v5;
    }

    result = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
    if (result)
    {
      *v11 = 0;
      v9 = "Failed to initialize writer";
LABEL_17:
      _os_log_error_impl(&dword_29808D000, v6, OS_LOG_TYPE_ERROR, v9, v11, 2u);
      result = 0;
      goto LABEL_15;
    }

    goto LABEL_15;
  }

  v8 = *(this + 3);
  v7 = *(this + 4);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    v6 = *v8;
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  else
  {
    v6 = *v8;
  }

  result = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
  if (result)
  {
    *v11 = 0;
    v9 = "Failed to initialize reader";
    goto LABEL_17;
  }

LABEL_15:
  v10 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t telephonytransport::NetworkIface::NetworkIface(uint64_t a1, uint64_t a2, dispatch_queue_t *a3, __int128 *a4, char *a5)
{
  telephonytransport::OSLogHandle::create("nwiface", a5, (a1 + 24));
  *(a1 + 8) = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  *a1 = &unk_2A1E9DFA0;
  v9 = *a4;
  *(a1 + 56) = *(a4 + 2);
  *(a1 + 40) = v9;
  *(a4 + 1) = 0;
  *(a4 + 2) = 0;
  *a4 = 0;
  *(a1 + 64) = *(a4 + 6);
  v10 = a4[2];
  *(a1 + 88) = *(a4 + 6);
  *(a1 + 72) = v10;
  *(a4 + 5) = 0;
  *(a4 + 6) = 0;
  *(a4 + 4) = 0;
  *(a1 + 96) = *(a4 + 7);
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  v11 = *a3;
  if (*a3)
  {
    qos_class = dispatch_queue_get_qos_class(v11, 0);
    v13 = dispatch_queue_attr_make_with_qos_class(0, qos_class, 0);
    if (*a3)
    {
      v11 = dispatch_queue_create_with_target_V2("NetworkIface", v13, *a3);
    }

    else
    {
      v11 = dispatch_queue_create("NetworkIface", v13);
    }
  }

  *(a1 + 120) = v11;
  return a1;
}

void telephonytransport::NetworkIface::~NetworkIface(telephonytransport::NetworkIface *this)
{
  *this = &unk_2A1E9DFA0;
  v2 = *(this + 14);
  if (v2)
  {
    dispatch_source_cancel(v2);
  }

  v3 = *(this + 13);
  if (v3)
  {
    pcap_close(v3);
  }

  v4 = *(this + 15);
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = *(this + 14);
  if (v5)
  {
    dispatch_release(v5);
  }

  if (*(this + 95) < 0)
  {
    operator delete(*(this + 9));
  }

  if (*(this + 63) < 0)
  {
    operator delete(*(this + 5));
  }

  *this = &unk_2A1E9C7C0;
  v6 = *(this + 2);
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = *(this + 4);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

{
  telephonytransport::NetworkIface::~NetworkIface(this);

  operator delete(v1);
}

BOOL telephonytransport::NetworkIface::initializeReader(telephonytransport::NetworkIface *this, char *a2)
{
  v36 = *MEMORY[0x29EDCA608];
  v4 = this + 40;
  if (*(this + 63) < 0)
  {
    v4 = *v4;
  }

  v5 = pcap_open_live(v4, 1522, 1, 10, a2);
  if (!v5)
  {
    v14 = *(this + 3);
    v13 = *(this + 4);
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      v15 = *v14;
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }

    else
    {
      v15 = *v14;
    }

    result = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
    if (result)
    {
      buf.bf_len = 136315138;
      *(&buf.bf_len + 1) = a2;
      v17 = "Unable to create read handle! Details: %s";
      p_buf = &buf;
      v19 = v15;
LABEL_46:
      v31 = 12;
LABEL_52:
      _os_log_error_impl(&dword_29808D000, v19, OS_LOG_TYPE_ERROR, v17, p_buf, v31);
      result = 0;
      goto LABEL_53;
    }

    goto LABEL_53;
  }

  v6 = v5;
  telephonytransport::NetworkIface::verifyDataLinkType(this, v5);
  if (*(this + 25) == 1 && pcap_setdirection(v6, PCAP_D_IN))
  {
    v8 = *(this + 3);
    v7 = *(this + 4);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      v9 = *v8;
      std::__shared_weak_count::__release_shared[abi:ne200100](v7);
    }

    else
    {
      v9 = *v8;
    }

    result = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (result)
    {
      buf.bf_len = 136315138;
      *(&buf.bf_len + 1) = pcap_geterr(v6);
      v17 = "Unable to set direction, error: %s";
      p_buf = &buf;
LABEL_45:
      v19 = v9;
      goto LABEL_46;
    }

    goto LABEL_53;
  }

  if (pcap_setnonblock(v6, 1, a2) == -1)
  {
    v11 = *(this + 3);
    v10 = *(this + 4);
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      v12 = *v11;
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
    }

    else
    {
      v12 = *v11;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf.bf_len) = 0;
      _os_log_error_impl(&dword_29808D000, v12, OS_LOG_TYPE_ERROR, "Warning: Unable to mark socket as non blocking", &buf, 2u);
    }
  }

  v20 = pcap_snapshot(v6);
  if (v20 >= 1523)
  {
    v21 = pcap_set_snaplen(v6, v20);
    v23 = *(this + 3);
    v22 = *(this + 4);
    if (v21)
    {
      if (v22)
      {
        atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
        v24 = *v23;
        std::__shared_weak_count::__release_shared[abi:ne200100](v22);
      }

      else
      {
        v24 = *v23;
      }

      result = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        goto LABEL_53;
      }

      LOWORD(buf.bf_len) = 0;
      v17 = "Failed to update snapshot length for read handle";
      p_buf = &buf;
LABEL_51:
      v19 = v24;
      v31 = 2;
      goto LABEL_52;
    }

    if (v22)
    {
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
      v25 = *v23;
      std::__shared_weak_count::__release_shared[abi:ne200100](v22);
    }

    else
    {
      v25 = *v23;
    }

    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      buf.bf_len = 67109376;
      *(&buf.bf_len + 1) = 1522;
      LOWORD(buf.bf_insns) = 1024;
      *(&buf.bf_insns + 2) = v20;
      _os_log_impl(&dword_29808D000, v25, OS_LOG_TYPE_INFO, "Changed snaplength from %d to %d", &buf, 0xEu);
    }
  }

  v26 = this + 72;
  memset(&buf, 170, sizeof(buf));
  if (*(this + 95) < 0)
  {
    v26 = *v26;
  }

  if (pcap_compile(v6, &buf, v26, 1, 0xFFFFFFFF))
  {
    v28 = *(this + 3);
    v27 = *(this + 4);
    if (v27)
    {
      atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
      v9 = *v28;
      std::__shared_weak_count::__release_shared[abi:ne200100](v27);
    }

    else
    {
      v9 = *v28;
    }

    result = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (result)
    {
      v33 = 136315138;
      v34 = pcap_geterr(v6);
      v17 = "Unable to compile filter expression, error: %s";
      p_buf = &v33;
      goto LABEL_45;
    }
  }

  else
  {
    if (!pcap_setfilter(v6, &buf))
    {
      pcap_freecode(&buf);
      result = telephonytransport::NetworkIface::startReading(this, v6);
      goto LABEL_53;
    }

    v30 = *(this + 3);
    v29 = *(this + 4);
    if (v29)
    {
      atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
      v24 = *v30;
      std::__shared_weak_count::__release_shared[abi:ne200100](v29);
    }

    else
    {
      v24 = *v30;
    }

    result = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);
    if (result)
    {
      LOWORD(v33) = 0;
      v17 = "Unable to set filter";
      p_buf = &v33;
      goto LABEL_51;
    }
  }

LABEL_53:
  v32 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL telephonytransport::NetworkIface::verifyDataLinkType(telephonytransport::NetworkIface *this, pcap *a2)
{
  v25 = *MEMORY[0x29EDCA608];
  if (!a2)
  {
    v7 = *(this + 3);
    v6 = *(this + 4);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      v8 = *v7;
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    else
    {
      v8 = *v7;
    }

    result = os_log_type_enabled(v8, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_21;
    }

    LOWORD(v21) = 0;
    v15 = "No valid handle exists to determine link type.";
    v16 = v8;
    v17 = 2;
LABEL_20:
    _os_log_error_impl(&dword_29808D000, v16, OS_LOG_TYPE_ERROR, v15, &v21, v17);
    result = 0;
    goto LABEL_21;
  }

  v3 = pcap_datalink(a2);
  v4 = v3;
  if (v3 < 0)
  {
    v10 = *(this + 3);
    v9 = *(this + 4);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      v11 = *v10;
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    else
    {
      v11 = *v10;
    }

    result = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_21;
    }

    v21 = 67109120;
    LODWORD(v22) = v4;
    v15 = "Failed to determine link type. pcap_datalink returned: %d";
    v16 = v11;
    v17 = 8;
    goto LABEL_20;
  }

  if (v3 == *(this + 16))
  {
    result = 1;
    goto LABEL_21;
  }

  v13 = *(this + 3);
  v12 = *(this + 4);
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    v14 = *v13;
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  else
  {
    v14 = *v13;
  }

  result = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
  if (result)
  {
    v18 = pcap_datalink_val_to_description(v4);
    v19 = pcap_datalink_val_to_description(*(this + 16));
    v21 = 136315394;
    v22 = v18;
    v23 = 2080;
    v24 = v19;
    v15 = "Data link type is: %s ; Expected: %s";
    v16 = v14;
    v17 = 22;
    goto LABEL_20;
  }

LABEL_21:
  v20 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL telephonytransport::NetworkIface::startReading(telephonytransport::NetworkIface *this, pcap *a2)
{
  v40 = *MEMORY[0x29EDCA608];
  if (*(this + 14))
  {
    v4 = *(this + 3);
    v3 = *(this + 4);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      v5 = *v4;
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    else
    {
      v5 = *v4;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_29808D000, v5, OS_LOG_TYPE_ERROR, "Warning: Already started reading", buf, 2u);
    }

LABEL_28:
    result = 1;
    goto LABEL_29;
  }

  selectable_fd = pcap_get_selectable_fd(a2);
  if (selectable_fd == -1)
  {
    v20 = *(this + 3);
    v19 = *(this + 4);
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      v21 = *v20;
      std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    }

    else
    {
      v21 = *v20;
    }

    result = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
    if (result)
    {
      *buf = 0;
      v27 = "Unable to retrieve a selectable fd";
LABEL_45:
      v30 = v21;
      v31 = 2;
      goto LABEL_46;
    }
  }

  else
  {
    v8 = selectable_fd;
    {
      v23 = *(this + 3);
      v22 = *(this + 4);
      if (v22)
      {
        atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
        v24 = *v23;
        std::__shared_weak_count::__release_shared[abi:ne200100](v22);
      }

      else
      {
        v24 = *v23;
      }

      result = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);
      if (result)
      {
        v28 = __error();
        v29 = strerror(*v28);
        *buf = 136315138;
        v39 = v29;
        v27 = "Unable to set immediate mode, error: %s";
        v30 = v24;
        v31 = 12;
LABEL_46:
        _os_log_error_impl(&dword_29808D000, v30, OS_LOG_TYPE_ERROR, v27, buf, v31);
        result = 0;
      }
    }

    else
    {
      v9 = dispatch_source_create(MEMORY[0x29EDCA5B8], v8, 0, *(this + 15));
      v10 = *(this + 14);
      *(this + 14) = v9;
      if (v10)
      {
        dispatch_release(v10);
        v9 = *(this + 14);
      }

      if (v9)
      {
        v11 = *(this + 1);
        v12 = *(this + 2);
        if (v12)
        {
          atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        v13 = *(this + 3);
        v14 = *(this + 4);
        if (v14)
        {
          atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v15 = *(this + 14);
        handler[0] = MEMORY[0x29EDCA5F8];
        handler[1] = 1174405120;
        handler[2] = ___ZN18telephonytransport12NetworkIface12startReadingEP4pcap_block_invoke;
        handler[3] = &__block_descriptor_tmp_3;
        handler[4] = v11;
        v34 = v12;
        if (v12)
        {
          atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        v35 = a2;
        v36 = v13;
        v37 = v14;
        if (v14)
        {
          atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        dispatch_source_set_event_handler(v15, handler);
        v16 = *(this + 14);
        v32[0] = MEMORY[0x29EDCA5F8];
        v32[1] = 0x40000000;
        v32[2] = ___ZN18telephonytransport12NetworkIface12startReadingEP4pcap_block_invoke_3;
        v32[3] = &__block_descriptor_tmp_4;
        v32[4] = a2;
        dispatch_source_set_cancel_handler(v16, v32);
        dispatch_resume(*(this + 14));
        if (v37)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v37);
        }

        if (v34)
        {
          std::__shared_weak_count::__release_weak(v34);
        }

        if (v14)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v14);
        }

        if (v12)
        {
          std::__shared_weak_count::__release_weak(v12);
        }

        goto LABEL_28;
      }

      v26 = *(this + 3);
      v25 = *(this + 4);
      if (v25)
      {
        atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
        v21 = *v26;
        std::__shared_weak_count::__release_shared[abi:ne200100](v25);
      }

      else
      {
        v21 = *v26;
      }

      result = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
      if (result)
      {
        *buf = 0;
        v27 = "Unable to create read source";
        goto LABEL_45;
      }
    }
  }

LABEL_29:
  v18 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL telephonytransport::NetworkIface::initializeWriter(telephonytransport::NetworkIface *this, char *a2)
{
  v13 = *MEMORY[0x29EDCA608];
  v4 = this + 40;
  if (*(this + 63) < 0)
  {
    v4 = *v4;
  }

  v5 = pcap_open_live(v4, 1522, 1, 10, a2);
  *(this + 13) = v5;
  if (v5)
  {
    telephonytransport::NetworkIface::verifyDataLinkType(this, v5);
  }

  else
  {
    v7 = *(this + 3);
    v6 = *(this + 4);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      v8 = *v7;
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    else
    {
      v8 = *v7;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315138;
      v12 = a2;
      _os_log_error_impl(&dword_29808D000, v8, OS_LOG_TYPE_ERROR, "Unable to create write handle! Details: %s", &v11, 0xCu);
    }
  }

  result = v5 != 0;
  v10 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL telephonytransport::NetworkIface::write(telephonytransport::NetworkIface *this, const unsigned __int8 *a2, size_t a3)
{
  v19 = *MEMORY[0x29EDCA608];
  if (!*(this + 24))
  {
    v5 = *(this + 3);
    v4 = *(this + 4);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
      v6 = *v5;
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }

    else
    {
      v6 = *v5;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      LOWORD(v15) = 0;
      _os_log_fault_impl(&dword_29808D000, v6, OS_LOG_TYPE_FAULT, "Write is not supported", &v15, 2u);
    }

    __break(1u);
  }

  v7 = pcap_inject(*(this + 13), a2, a3);
  if (v7 == -1)
  {
    v9 = *(this + 3);
    v8 = *(this + 4);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      v10 = *v9;
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    else
    {
      v10 = *v9;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = (this + 40);
      if (*(this + 63) < 0)
      {
        v13 = *v13;
      }

      v14 = pcap_geterr(*(this + 13));
      v15 = 136315394;
      v16 = v13;
      v17 = 2080;
      v18 = v14;
      _os_log_error_impl(&dword_29808D000, v10, OS_LOG_TYPE_ERROR, "Failed to write packet to %s, error: %s", &v15, 0x16u);
    }
  }

  result = v7 != -1;
  v12 = *MEMORY[0x29EDCA608];
  return result;
}

void ___ZN18telephonytransport12NetworkIface12startReadingEP4pcap_block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  if (v2 && (v3 = std::__shared_weak_count::lock(v2)) != 0)
  {
    v4 = v3;
    v5 = *(a1 + 32);
    {
      v8 = **(a1 + 56);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = pcap_geterr(*(a1 + 48));
        v10 = 136315138;
        v11 = v9;
        _os_log_error_impl(&dword_29808D000, v8, OS_LOG_TYPE_ERROR, "Error encountered while reading: %s", &v10, 0xCu);
      }

      exit(1);
    }

    v6 = *MEMORY[0x29EDCA608];

    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  else
  {
    v7 = *MEMORY[0x29EDCA608];
  }
}

void *__copy_helper_block_e8_32c74_ZTSKNSt3__18weak_ptrIN18telephonytransport26TelephonyTransportDelegateEEE56c62_ZTSKNSt3__110shared_ptrIN18telephonytransport11OSLogHandleEEE(void *result, void *a2)
{
  v2 = a2[5];
  result[4] = a2[4];
  result[5] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v3 = a2[8];
  result[7] = a2[7];
  result[8] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c74_ZTSKNSt3__18weak_ptrIN18telephonytransport26TelephonyTransportDelegateEEE56c62_ZTSKNSt3__110shared_ptrIN18telephonytransport11OSLogHandleEEE(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void std::__shared_ptr_pointer<telephonytransport::NetworkIface *,std::shared_ptr<telephonytransport::NetworkIface>::__shared_ptr_default_delete<telephonytransport::NetworkIface,telephonytransport::NetworkIface>,std::allocator<telephonytransport::NetworkIface>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<telephonytransport::NetworkIface *,std::shared_ptr<telephonytransport::NetworkIface>::__shared_ptr_default_delete<telephonytransport::NetworkIface,telephonytransport::NetworkIface>,std::allocator<telephonytransport::NetworkIface>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<telephonytransport::NetworkIface *,std::shared_ptr<telephonytransport::NetworkIface>::__shared_ptr_default_delete<telephonytransport::NetworkIface,telephonytransport::NetworkIface>,std::allocator<telephonytransport::NetworkIface>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void telephonytransport::TCPClientTransportFactory::createNetwork(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v11 = 0xAAAAAAAAAAAAAAAALL;
  v12 = 0xAAAAAAAAAAAAAAAALL;
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v10, *a1, *(a1 + 8));
  }

  else
  {
    v10 = *a1;
  }

  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  telephonytransport::TCPClientSocketFactoryNetwork::create(&v10, &__p, &v11);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  v5 = v11;
  if (v11)
  {
    v6 = operator new(0x20uLL);
    telephonytransport::OSLogHandle::create("tcpclienttransport", "factory", v6);
    v7 = v12;
    v6[2] = v5;
    v6[3] = v7;
    v11 = 0;
    v12 = 0;
    *a3 = v6;
    v8 = operator new(0x20uLL);
    *v8 = &unk_2A1E9E0A8;
    v8[1] = 0;
    v8[2] = 0;
    v8[3] = v6;
    a3[1] = v8;
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }
  }
}

void sub_29809CBF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t telephonytransport::TCPClientTransportFactory::TCPClientTransportFactory(uint64_t a1, uint64_t a2)
{
  telephonytransport::OSLogHandle::create("tcpclienttransport", "factory", a1);
  *(a1 + 16) = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  return a1;
}

{
  telephonytransport::OSLogHandle::create("tcpclienttransport", "factory", a1);
  *(a1 + 16) = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  return a1;
}

void telephonytransport::TCPClientTransportFactory::connect(uint64_t a1@<X0>, uint64_t *a2@<X1>, NSObject **a3@<X2>, char *a4@<X4>, uint64_t a5@<X8>)
{
  v6 = a2[1];
  if (!v6 || *(v6 + 8) == -1)
  {
    v14 = *a1;
    v13 = *(a1 + 8);
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      v15 = *v14;
      std::__shared_weak_count::__release_shared[abi:ne200100](v13);
    }

    else
    {
      v15 = *v14;
    }

    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    *buf = 0;
    v18 = "Must provide a valid delegate";
    goto LABEL_32;
  }

  if (!*a3)
  {
    v17 = *a1;
    v16 = *(a1 + 8);
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      v15 = *v17;
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }

    else
    {
      v15 = *v17;
    }

    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    *buf = 0;
    v18 = "Providing readQueue is mandatory";
LABEL_32:
    _os_log_error_impl(&dword_29808D000, v15, OS_LOG_TYPE_ERROR, v18, buf, 2u);
LABEL_21:
    *a5 = 0;
    *(a5 + 8) = 0;
    return;
  }

  memset(buf, 170, sizeof(buf));
  (***(a1 + 16))(buf);
  v10 = *buf;
  if (*buf)
  {
    v11 = a2[1];
    v22 = *a2;
    v23 = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v12 = *a3;
    object = v12;
    if (v12)
    {
      dispatch_retain(v12);
      v10 = *buf;
    }

    v19 = v10;
    v20 = *&buf[8];
    if (*&buf[8])
    {
      atomic_fetch_add_explicit((*&buf[8] + 8), 1uLL, memory_order_relaxed);
    }

    telephonytransport::TCPSocketStream::create(&v22, &object, &v19, 2, a4, a5);
    if (v20)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v20);
    }

    if (object)
    {
      dispatch_release(object);
    }

    if (v23)
    {
      std::__shared_weak_count::__release_weak(v23);
    }
  }

  else
  {
    *a5 = 0;
    *(a5 + 8) = 0;
  }

  if (*&buf[8])
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
  }
}

void sub_29809CEE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, dispatch_object_t object, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_weak(a14);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<telephonytransport::TCPClientTransportFactory *,std::shared_ptr<telephonytransport::TCPClientTransportFactory>::__shared_ptr_default_delete<telephonytransport::TCPClientTransportFactory,telephonytransport::TCPClientTransportFactory>,std::allocator<telephonytransport::TCPClientTransportFactory>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<telephonytransport::TCPClientTransportFactory *,std::shared_ptr<telephonytransport::TCPClientTransportFactory>::__shared_ptr_default_delete<telephonytransport::TCPClientTransportFactory,telephonytransport::TCPClientTransportFactory>,std::allocator<telephonytransport::TCPClientTransportFactory>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void telephonytransport::SocketAndEthernetIfaceBridge::create(uint64_t *a1@<X0>, NSObject **a2@<X1>, uint64_t a3@<X2>, NSObject **a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, void *a7@<X8>)
{
  v28.__r_.__value_.__r.__words[0] = 0xAAAAAAAAAAAAAAAALL;
  v28.__r_.__value_.__l.__size_ = 0xAAAAAAAAAAAAAAAALL;
  v13 = *a2;
  object = v13;
  if (v13)
  {
    dispatch_retain(v13);
  }

  telephonytransport::SocketToEthernetIfaceForwarder::create(a1, a3, &object, a5, a6, &v28);
  if (object)
  {
    dispatch_release(object);
  }

  v25 = 0xAAAAAAAAAAAAAAAALL;
  v26 = 0xAAAAAAAAAAAAAAAALL;
  v14 = *a4;
  v24 = v14;
  if (v14)
  {
    dispatch_retain(v14);
  }

  telephonytransport::EthernetIfaceToSocketForwarder::create(a3, a1, &v24, a6, &v25);
  v15 = v24;
  if (v24)
  {
    dispatch_release(v24);
  }

  v16 = v28.__r_.__value_.__r.__words[0];
  if (v28.__r_.__value_.__r.__words[0] && (v17 = v25) != 0)
  {
    *a7 = 0xAAAAAAAAAAAAAAAALL;
    a7[1] = 0xAAAAAAAAAAAAAAAALL;
    v18 = operator new(0x20uLL);
    size = v28.__r_.__value_.__l.__size_;
    *v18 = v16;
    v18[1] = size;
    *&v28.__r_.__value_.__l.__data_ = 0uLL;
    v20 = v26;
    v18[2] = v17;
    v18[3] = v20;
    v25 = 0;
    v26 = 0;
    *a7 = v18;
    v21 = operator new(0x20uLL);
    *v21 = &unk_2A1E9E120;
    v21[1] = 0;
    v21[2] = 0;
    v21[3] = v18;
    a7[1] = v21;
  }

  else
  {
    v22 = *telephonytransport::getDefaultOSLogHandle(v15);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *v23 = 0;
      _os_log_error_impl(&dword_29808D000, v22, OS_LOG_TYPE_ERROR, "Failed to create SocketAndEthernetIfaceBridge", v23, 2u);
    }

    *a7 = 0;
    a7[1] = 0;
    if (v26)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v26);
    }
  }

  if (v28.__r_.__value_.__l.__size_)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v28.__r_.__value_.__l.__size_);
  }
}

void sub_29809D12C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, dispatch_object_t object, uint64_t a12, std::__shared_weak_count *a13, dispatch_object_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  std::default_delete<telephonytransport::SocketAndRawIPIfaceBridge>::operator()[abi:ne200100](v16);
  if (a13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a13);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  _Unwind_Resume(a1);
}

__n128 telephonytransport::SocketAndEthernetIfaceBridge::SocketAndEthernetIfaceBridge(_OWORD *a1, uint64_t a2, __n128 *a3)
{
  *a1 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  result = *a3;
  a1[1] = *a3;
  a3->n128_u64[0] = 0;
  a3->n128_u64[1] = 0;
  return result;
}

{
  *a1 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  result = *a3;
  a1[1] = *a3;
  a3->n128_u64[0] = 0;
  a3->n128_u64[1] = 0;
  return result;
}

void std::__shared_ptr_pointer<telephonytransport::SocketAndEthernetIfaceBridge *,std::shared_ptr<telephonytransport::SocketAndEthernetIfaceBridge>::__shared_ptr_default_delete<telephonytransport::SocketAndEthernetIfaceBridge,telephonytransport::SocketAndEthernetIfaceBridge>,std::allocator<telephonytransport::SocketAndEthernetIfaceBridge>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<telephonytransport::SocketAndEthernetIfaceBridge *,std::shared_ptr<telephonytransport::SocketAndEthernetIfaceBridge>::__shared_ptr_default_delete<telephonytransport::SocketAndEthernetIfaceBridge,telephonytransport::SocketAndEthernetIfaceBridge>,std::allocator<telephonytransport::SocketAndEthernetIfaceBridge>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void telephonytransport::sBuildLoggingCategory(telephonytransport *this@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  memset(__dst, 170, sizeof(__dst));
  v7 = strlen(this);
  if (v7 > 0x7FFFFFFFFFFFFFF7)
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

    v9 = operator new(v10);
    *&__dst[8] = v8;
    *&__dst[16] = v10 | 0x8000000000000000;
    *__dst = v9;
  }

  else
  {
    __dst[23] = v7;
    v9 = __dst;
    if (!v7)
    {
      goto LABEL_10;
    }
  }

  memcpy(v9, this, v8);
LABEL_10:
  v9[v8] = 0;
  if (!a2 || !*a2)
  {
    *a3 = *__dst;
    *(a3 + 16) = *&__dst[16];
    return;
  }

  v11 = __dst[23];
  if (__dst[23] >= 0)
  {
    v12 = __dst[23];
  }

  else
  {
    v12 = *&__dst[8];
  }

  v13 = v12 + 1;
  if (v12 + 1 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v13 >= 0x17)
  {
    if ((v13 | 7) == 0x17)
    {
      v15 = 25;
    }

    else
    {
      v15 = (v13 | 7) + 1;
    }

    p_p = operator new(v15);
    __p.__r_.__value_.__l.__size_ = v12 + 1;
    __p.__r_.__value_.__r.__words[2] = v15 | 0x8000000000000000;
    __p.__r_.__value_.__r.__words[0] = p_p;
  }

  else
  {
    memset(&__p, 0, sizeof(__p));
    p_p = &__p;
    *(&__p.__r_.__value_.__s + 23) = v12 + 1;
    if (!v12)
    {
      goto LABEL_28;
    }
  }

  if (v11 >= 0)
  {
    v16 = __dst;
  }

  else
  {
    v16 = *__dst;
  }

  memmove(p_p, v16, v12);
LABEL_28:
  *(&p_p->__r_.__value_.__l.__data_ + v12) = 46;
  v17 = strlen(a2);
  v18 = std::string::append(&__p, a2, v17);
  *a3 = *v18;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if ((__dst[23] & 0x80000000) != 0)
  {
    operator delete(*__dst);
  }
}

void sub_29809D400(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void telephonytransport::OSLogHandle::create(telephonytransport::OSLogHandle *this@<X0>, const char *a2@<X1>, void *a3@<X8>)
{
  v7 = operator new(8uLL);
  telephonytransport::sBuildLoggingCategory(this, a2, __p);
  if (v10 >= 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  *v7 = os_log_create("com.apple.rtt", v8);
  std::shared_ptr<telephonytransport::OSLogHandle>::shared_ptr[abi:ne200100]<telephonytransport::OSLogHandle,0>(a3, v7);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29809D4D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

telephonytransport::OSLogHandle *telephonytransport::OSLogHandle::OSLogHandle(telephonytransport::OSLogHandle *this, const char *subsystem, const char *category)
{
  *this = os_log_create(subsystem, category);
  return this;
}

{
  *this = os_log_create(subsystem, category);
  return this;
}

void telephonytransport::OSLogHandle::~OSLogHandle(void **this)
{
  os_release(*this);
}

{
  os_release(*this);
}

telephonytransport::Loggable *telephonytransport::Loggable::Loggable(telephonytransport::Loggable *this, telephonytransport::OSLogHandle *a2, const char *a3)
{
  telephonytransport::OSLogHandle::create(a2, a3, this);
  return this;
}

{
  telephonytransport::OSLogHandle::create(a2, a3, this);
  return this;
}

void *telephonytransport::Loggable::Loggable(void *result, void *a2)
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

__n128 telephonytransport::Loggable::Loggable(__n128 *a1, __n128 *a2)
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

void *telephonytransport::Loggable::getOSLogHandle@<X0>(void *this@<X0>, void *a2@<X8>)
{
  v2 = this[1];
  *a2 = *this;
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

void *std::shared_ptr<telephonytransport::OSLogHandle>::shared_ptr[abi:ne200100]<telephonytransport::OSLogHandle,0>(void *a1, uint64_t a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  *v4 = &unk_2A1E9E198;
  v4[1] = 0;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  v6 = 0;
  std::unique_ptr<telephonytransport::OSLogHandle>::reset[abi:ne200100](&v6, 0);
  return a1;
}

void sub_29809D724(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<telephonytransport::OSLogHandle>::reset[abi:ne200100](va, 0);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_pointer<telephonytransport::OSLogHandle *,std::shared_ptr<telephonytransport::OSLogHandle>::__shared_ptr_default_delete<telephonytransport::OSLogHandle,telephonytransport::OSLogHandle>,std::allocator<telephonytransport::OSLogHandle>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<telephonytransport::OSLogHandle *,std::shared_ptr<telephonytransport::OSLogHandle>::__shared_ptr_default_delete<telephonytransport::OSLogHandle,telephonytransport::OSLogHandle>,std::allocator<telephonytransport::OSLogHandle>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    os_release(*v1);

    operator delete(v1);
  }
}

uint64_t std::__shared_ptr_pointer<telephonytransport::OSLogHandle *,std::shared_ptr<telephonytransport::OSLogHandle>::__shared_ptr_default_delete<telephonytransport::OSLogHandle,telephonytransport::OSLogHandle>,std::allocator<telephonytransport::OSLogHandle>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::unique_ptr<telephonytransport::OSLogHandle>::reset[abi:ne200100](void ***a1, void **a2)
{
  v2 = *a1;
  *a1 = a2;
  if (v2)
  {
    os_release(*v2);

    operator delete(v2);
  }
}

void telephonytransport::PCIClientTransport::create(NSObject **a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, std::__shared_weak_count_vtbl **a6@<X8>)
{
  v12 = operator new(0x70uLL);
  telephonytransport::PCIClientTransport::PCIClientTransport(v12, a3, a4, a5);
  v13 = operator new(0x20uLL);
  v13->__shared_weak_owners_ = 0;
  v13->__vftable = &unk_2A1E9E270;
  v13->__shared_owners_ = 0;
  v13[1].__vftable = v12;
  v24 = 0xAAAAAAAAAAAAAAAALL;
  v25 = 0xAAAAAAAAAAAAAAAALL;
  v22 = v12;
  v23 = v13;
  atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v14 = *a1;
  object = v14;
  if (v14)
  {
    dispatch_retain(v14);
  }

  telephonytransport::BaseProtocol::create(&v22, &object, a2, 2, a5, &v24);
  if (object)
  {
    dispatch_release(object);
  }

  v15 = v23;
  if (v23)
  {
    std::__shared_weak_count::__release_weak(v23);
  }

  v16 = v24;
  if (v24)
  {
    v17 = v25;
    v24 = 0;
    v25 = 0;
    get_deleter = v12[2].__get_deleter;
    v12[2].__on_zero_shared = v16;
    v12[2].__get_deleter = v17;
    if (get_deleter)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](get_deleter);
    }

    *a6 = v12;
    a6[1] = v13;
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v19 = *telephonytransport::getDefaultOSLogHandle(v15);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = 0;
      _os_log_impl(&dword_29808D000, v19, OS_LOG_TYPE_INFO, "Failed to create base protocol", &v20, 2u);
    }

    *a6 = 0;
    a6[1] = 0;
  }

  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v13);
}

void sub_29809D9D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  _Unwind_Resume(a1);
}

uint64_t telephonytransport::PCIClientTransport::init(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v4 = *(a1 + 104);
  *(a1 + 96) = v3;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return 1;
}

void *telephonytransport::PCIClientTransport::PCIClientTransport(void *a1, uint64_t a2, uint64_t a3, char *a4)
{
  telephonytransport::OSLogHandle::create("pciclienttransport", a4, a1 + 1);
  *a1 = &unk_2A1E9E210;
  v7 = operator new(0x60uLL);
  *v7 = 850045863;
  *(v7 + 8) = 0u;
  *(v7 + 24) = 0u;
  *(v7 + 40) = 0u;
  *(v7 + 10) = 0;
  *(v7 + 9) = 0;
  *(v7 + 7) = 0;
  *(v7 + 8) = v7 + 72;
  *(v7 + 11) = std::chrono::steady_clock::now();
  a1[3] = v7;
  v8 = (a2 + 24);
  v9 = *(a2 + 24);
  if (!v9)
  {
    v8 = a1 + 7;
    goto LABEL_5;
  }

  if (v9 != a2)
  {
    a1[7] = v9;
LABEL_5:
    *v8 = 0;
    goto LABEL_7;
  }

  a1[7] = a1 + 4;
  (*(**v8 + 24))();
LABEL_7:
  v10 = (a3 + 24);
  v11 = *(a3 + 24);
  if (v11)
  {
    if (v11 == a3)
    {
      a1[11] = a1 + 8;
      (*(**v10 + 24))();
      goto LABEL_13;
    }

    a1[11] = v11;
  }

  else
  {
    v10 = a1 + 11;
  }

  *v10 = 0;
LABEL_13:
  a1[12] = 0;
  a1[13] = 0;
  return a1;
}

void sub_29809DBF4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *telephonytransport::PCIClientTransport::getNextMessageId@<X0>(telephonytransport::PCIClientTransport *this@<X0>, int a2@<W1>, void *a3@<X8>)
{
  result = operator new(0x18uLL);
  *result = &unk_2A1E9E7A8;
  result[5] = 0;
  *a3 = result;
  add = atomic_fetch_add((*(this + 3) + 88), 1uLL);
  v8 = *(result + 20);
  *(result + 1) = add;
  *(result + 20) = v8 | 3;
  result[4] = a2;
  return result;
}

uint64_t telephonytransport::PCIClientTransport::transportCreate(telephonytransport::PCIClientTransport *this, int a2, unsigned int a3, unsigned int a4, int a5, int a6, int a7, unsigned int *a8)
{
  v88 = *MEMORY[0x29EDCA608];
  *&v15 = 0xAAAAAAAAAAAAAAAALL;
  *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v73 = v15;
  v74 = v15;
  v71 = &unk_2A1E9E818;
  v72 = 0;
  DWORD2(v74) = 16;
  LODWORD(v74) = a2;
  v16 = operator new(0x18uLL);
  *v16 = &unk_2A1E9E7A8;
  *(v16 + 5) = 0;
  add = atomic_fetch_add((*(this + 3) + 88), 1uLL);
  v18 = *(v16 + 20);
  *(v16 + 1) = add;
  *(v16 + 20) = v18 | 3;
  *(v16 + 4) = 0;
  v19 = v72;
  v72 = v16;
  if (v19)
  {
    (*(*v19 + 8))(v19);
    v16 = v72;
  }

  DWORD1(v74) = a5;
  HIDWORD(v73) = a6;
  BYTE8(v74) |= 0x2Fu;
  LODWORD(v73) = a7;
  *(&v73 + 4) = __PAIR64__(a4, a3);
  v20 = *(v16 + 1);
  v77 = 0xAAAAAAAAAAAAAAAALL;
  telephonytransport::TransactionManager::add(*(this + 3), v20, &v77);
  if ((telephonytransport::BaseProtocol::sendMessage(*(this + 12), 1u, &v71) & 1) == 0)
  {
    v26 = *(this + 1);
    v25 = *(this + 2);
    if (v25)
    {
      atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
      v27 = *v26;
      std::__shared_weak_count::__release_shared[abi:ne200100](v25);
    }

    else
    {
      v27 = *v26;
    }

    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "kCreateRequest");
      v28 = v83 >= 0 ? __p : *__p;
      *buf = 136315138;
      *v86 = v28;
      _os_log_error_impl(&dword_29808D000, v27, OS_LOG_TYPE_ERROR, "Failed to send message. RequestT: %s", buf, 0xCu);
      if (SHIBYTE(v83) < 0)
      {
        operator delete(*__p);
      }
    }

    goto LABEL_28;
  }

  v21 = v77;
  *__p = std::chrono::steady_clock::now().__d_.__rep_ + 60000000000;
  if (std::__assoc_sub_state::wait_until<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>(v21, __p))
  {
    v23 = *(this + 1);
    v22 = *(this + 2);
    if (v22)
    {
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
      v24 = *v23;
      std::__shared_weak_count::__release_shared[abi:ne200100](v22);
    }

    else
    {
      v24 = *v23;
    }

    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *__p = 0;
      _os_log_error_impl(&dword_29808D000, v24, OS_LOG_TYPE_ERROR, "Timed out waiting for response", __p, 2u);
    }

    telephonytransport::TransactionManager::remove(*(this + 3), v20);
    goto LABEL_28;
  }

  std::future<telephonytransport::TransactionResponse>::get(buf, &v77);
  v29 = *buf;
  if (*buf != 2)
  {
    v48 = *(this + 1);
    v47 = *(this + 2);
    if (v47)
    {
      atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
      v49 = *v48;
      std::__shared_weak_count::__release_shared[abi:ne200100](v47);
    }

    else
    {
      v49 = *v48;
    }

    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      std::string::basic_string[abi:ne200100]<0>(v78, "kCreateResponse");
      v57 = v79;
      v58 = *v78;
      telephonytransport::toString(v29, v75);
      v59 = v78;
      if (v57 < 0)
      {
        v59 = v58;
      }

      if (v76 >= 0)
      {
        v60 = v75;
      }

      else
      {
        v60 = v75[0];
      }

      *__p = 134218498;
      *&__p[4] = v20;
      v81 = 2080;
      v82 = v59;
      v83 = 2080;
      v84 = v60;
      _os_log_error_impl(&dword_29808D000, v49, OS_LOG_TYPE_ERROR, "Received response type doesn't match expected response type. TxnId: %llu, Expected: %s, Received: %s", __p, 0x20u);
      if (v76 < 0)
      {
        operator delete(v75[0]);
      }

      if (v79 < 0)
      {
        operator delete(*v78);
      }
    }

    v30 = 0;
    v31 = 0;
    v53 = v87;
    goto LABEL_59;
  }

  v31 = *&v86[4];
  v30 = v87;
  if (v87)
  {
    atomic_fetch_add_explicit(&v87->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v31)
  {
    v51 = *(this + 1);
    v50 = *(this + 2);
    if (v50)
    {
      atomic_fetch_add_explicit(&v50->__shared_owners_, 1uLL, memory_order_relaxed);
      v52 = *v51;
      std::__shared_weak_count::__release_shared[abi:ne200100](v50);
    }

    else
    {
      v52 = *v51;
    }

    if (!os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_71;
    }

    *__p = 0;
    v56 = "No response";
LABEL_84:
    _os_log_error_impl(&dword_29808D000, v52, OS_LOG_TYPE_ERROR, v56, __p, 2u);
    goto LABEL_71;
  }

  v32 = *(v31 + 8);
  if (!v32)
  {
    v55 = *(this + 1);
    v54 = *(this + 2);
    if (v54)
    {
      atomic_fetch_add_explicit(&v54->__shared_owners_, 1uLL, memory_order_relaxed);
      v52 = *v55;
      std::__shared_weak_count::__release_shared[abi:ne200100](v54);
    }

    else
    {
      v52 = *v55;
    }

    if (!os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_71;
    }

    *__p = 0;
    v56 = "Response doesn't contain messageId";
    goto LABEL_84;
  }

  if (!telephonytransport::PCIMessageId::operator==(v32, v72))
  {
    v34 = *(this + 1);
    v33 = *(this + 2);
    if (v33)
    {
      atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
      v35 = *v34;
      std::__shared_weak_count::__release_shared[abi:ne200100](v33);
    }

    else
    {
      v35 = *v34;
    }

    if (!os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_44;
    }

    *__p = 0;
    v43 = "Response messageId must match request messageId";
    goto LABEL_43;
  }

  if ((*(v31 + 24) & 2) != 0)
  {
    if (*(v31 + 20))
    {
      v68 = *(this + 1);
      v67 = *(this + 2);
      if (v67)
      {
        atomic_fetch_add_explicit(&v67->__shared_owners_, 1uLL, memory_order_relaxed);
        v69 = *v68;
        std::__shared_weak_count::__release_shared[abi:ne200100](v67);
      }

      else
      {
        v69 = *v68;
      }

      if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
      {
        std::string::basic_string[abi:ne200100]<0>(__p, "kCreateRequest");
        v70 = v83 >= 0 ? __p : *__p;
        *v78 = 136315138;
        *&v78[4] = v70;
        _os_log_error_impl(&dword_29808D000, v69, OS_LOG_TYPE_ERROR, "%s failed", v78, 0xCu);
        if (SHIBYTE(v83) < 0)
        {
          operator delete(*__p);
        }
      }

      goto LABEL_71;
    }

    v53 = v30;
LABEL_59:
    v21 = v30;
    v30 = v53;
    if (!v53)
    {
      goto LABEL_29;
    }

    goto LABEL_73;
  }

  v66 = *(this + 1);
  v65 = *(this + 2);
  if (v65)
  {
    atomic_fetch_add_explicit(&v65->__shared_owners_, 1uLL, memory_order_relaxed);
    v52 = *v66;
    std::__shared_weak_count::__release_shared[abi:ne200100](v65);
  }

  else
  {
    v52 = *v66;
  }

  if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
  {
    *__p = 0;
    v56 = "Response doesn't contain result";
    goto LABEL_84;
  }

LABEL_71:
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
    v21 = 0;
    v31 = 0;
LABEL_73:
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
    goto LABEL_29;
  }

LABEL_28:
  v21 = 0;
  v31 = 0;
LABEL_29:
  v36 = v77;
  if (!v77 || atomic_fetch_add(&v77->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (v31)
    {
      goto LABEL_32;
    }

LABEL_48:
    v44 = 0;
    goto LABEL_49;
  }

  (*(*v36 + 16))(v36);
  if (!v31)
  {
    goto LABEL_48;
  }

LABEL_32:
  if ((*(v31 + 24) & 1) == 0)
  {
    v38 = *(this + 1);
    v37 = *(this + 2);
    if (v37)
    {
      atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
      v39 = *v38;
      std::__shared_weak_count::__release_shared[abi:ne200100](v37);
      goto LABEL_46;
    }

LABEL_45:
    v39 = *v38;
LABEL_46:
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      *__p = 0;
      _os_log_error_impl(&dword_29808D000, v39, OS_LOG_TYPE_ERROR, "Created transport token is missing", __p, 2u);
    }

    goto LABEL_48;
  }

  v40 = *(v31 + 16);
  if (!v40)
  {
    v42 = *(this + 1);
    v41 = *(this + 2);
    if (v41)
    {
      atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
      v35 = *v42;
      std::__shared_weak_count::__release_shared[abi:ne200100](v41);
    }

    else
    {
      v35 = *v42;
    }

    if (!os_log_type_enabled(v35, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_44;
    }

    *__p = 0;
    v43 = "Create must return valid token";
LABEL_43:
    _os_log_fault_impl(&dword_29808D000, v35, OS_LOG_TYPE_FAULT, v43, __p, 2u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  *a8 = v40;
  v62 = *(this + 1);
  v61 = *(this + 2);
  if (v61)
  {
    atomic_fetch_add_explicit(&v61->__shared_owners_, 1uLL, memory_order_relaxed);
    v63 = *v62;
    std::__shared_weak_count::__release_shared[abi:ne200100](v61);
  }

  else
  {
    v63 = *v62;
  }

  v44 = 1;
  if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
  {
    v64 = *a8;
    *__p = 67109120;
    *&__p[4] = v64;
    _os_log_impl(&dword_29808D000, v63, OS_LOG_TYPE_INFO, "PCI transport for Oversteer created successfully with token %u", __p, 8u);
  }

LABEL_49:
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v21);
  }

  telephonytransport::PCICreateRequest::~PCICreateRequest(&v71);
  v45 = *MEMORY[0x29EDCA608];
  return v44;
}

void sub_29809E468(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  v26 = a18;
  if (a18)
  {
    if (!atomic_fetch_add((a18 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(*v26 + 16))(v26);
    }
  }

  telephonytransport::PCICreateRequest::~PCICreateRequest(&a9);
  _Unwind_Resume(a1);
}

BOOL telephonytransport::PCIClientTransport::transportFree(telephonytransport::PCIClientTransport *this, int a2)
{
  v12 = &unk_2A1E9E9D8;
  v13 = 0;
  v4 = operator new(0x18uLL);
  *v4 = &unk_2A1E9E7A8;
  v4[5] = 0;
  add = atomic_fetch_add((*(this + 3) + 88), 1uLL);
  v6 = *(v4 + 20);
  *(v4 + 1) = add;
  *(v4 + 20) = v6 | 3;
  v4[4] = a2;
  v7 = v13;
  v13 = v4;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  telephonytransport::PCIClientTransport::sendRequestAndWaitForResponse<telephonytransport::PCIFreeRequest,telephonytransport::PCIFreeResponse>(this, &v12, &v10);
  isa = v10.isa;
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  telephonytransport::PCIFreeRequest::~PCIFreeRequest(&v12);
  return isa != 0;
}

void sub_29809E60C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  telephonytransport::PCIFreeRequest::~PCIFreeRequest(va);
  _Unwind_Resume(a1);
}

uint64_t telephonytransport::PCIClientTransport::sendRequestAndWaitForResponse<telephonytransport::PCIFreeRequest,telephonytransport::PCIFreeResponse>@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, NSObject *a3@<X8>)
{
  v55 = *MEMORY[0x29EDCA608];
  v6 = *(a2[1] + 8);
  v44 = 0xAAAAAAAAAAAAAAAALL;
  telephonytransport::TransactionManager::add(*(a1 + 24), v6, &v44);
  if ((telephonytransport::BaseProtocol::sendMessage(*(a1 + 96), 9u, a2) & 1) == 0)
  {
    v12 = *(a1 + 8);
    v11 = *(a1 + 16);
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      v13 = *v12;
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    else
    {
      v13 = *v12;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "kFreeRequest");
      v14 = v50 >= 0 ? __p : *__p;
      *buf = 136315138;
      *v53 = v14;
      _os_log_error_impl(&dword_29808D000, v13, OS_LOG_TYPE_ERROR, "Failed to send message. RequestT: %s", buf, 0xCu);
      if (SHIBYTE(v50) < 0)
      {
        operator delete(*__p);
      }
    }

    goto LABEL_26;
  }

  v7 = v44;
  *__p = std::chrono::steady_clock::now().__d_.__rep_ + 60000000000;
  if (std::__assoc_sub_state::wait_until<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>(v7, __p))
  {
    v9 = *(a1 + 8);
    v8 = *(a1 + 16);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      v10 = *v9;
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    else
    {
      v10 = *v9;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *__p = 0;
      _os_log_error_impl(&dword_29808D000, v10, OS_LOG_TYPE_ERROR, "Timed out waiting for response", __p, 2u);
    }

    telephonytransport::TransactionManager::remove(*(a1 + 24), v6);
LABEL_26:
    a3->isa = 0;
    a3[1].isa = 0;
    goto LABEL_27;
  }

  std::future<telephonytransport::TransactionResponse>::get(buf, &v44);
  v15 = *buf;
  if (*buf == 10)
  {
    v17 = *&v53[4];
    v16 = v54;
    if (v54)
    {
      atomic_fetch_add_explicit(&v54->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v17)
    {
      v18 = *(v17 + 8);
      if (!v18)
      {
        v30 = *(a1 + 8);
        v29 = *(a1 + 16);
        if (v29)
        {
          atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
          v28 = *v30;
          std::__shared_weak_count::__release_shared[abi:ne200100](v29);
        }

        else
        {
          v28 = *v30;
        }

        if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_50;
        }

        *__p = 0;
        v31 = "Response doesn't contain messageId";
        goto LABEL_63;
      }

      if (telephonytransport::PCIMessageId::operator==(v18, a2[1]))
      {
        if (*(v17 + 20))
        {
          if (!*(v17 + 16))
          {
            a3->isa = v17;
            a3[1].isa = v16;
            if (!v16)
            {
              goto LABEL_27;
            }

            goto LABEL_52;
          }

          v39 = *(a1 + 8);
          v38 = *(a1 + 16);
          if (v38)
          {
            atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
            v40 = *v39;
            std::__shared_weak_count::__release_shared[abi:ne200100](v38);
          }

          else
          {
            v40 = *v39;
          }

          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            std::string::basic_string[abi:ne200100]<0>(__p, "kFreeRequest");
            v41 = v50 >= 0 ? __p : *__p;
            *v45 = 136315138;
            *&v45[4] = v41;
            _os_log_error_impl(&dword_29808D000, v40, OS_LOG_TYPE_ERROR, "%s failed", v45, 0xCu);
            if (SHIBYTE(v50) < 0)
            {
              operator delete(*__p);
            }
          }

          goto LABEL_50;
        }

        v37 = *(a1 + 8);
        v36 = *(a1 + 16);
        if (v36)
        {
          atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
          v28 = *v37;
          std::__shared_weak_count::__release_shared[abi:ne200100](v36);
        }

        else
        {
          v28 = *v37;
        }

        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          *__p = 0;
          v31 = "Response doesn't contain result";
          goto LABEL_63;
        }

LABEL_50:
        a3->isa = 0;
        a3[1].isa = 0;
        if (!v16)
        {
          goto LABEL_27;
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v16);
LABEL_52:
        std::__shared_weak_count::__release_shared[abi:ne200100](v16);
        goto LABEL_27;
      }

      v20 = *(a1 + 8);
      v19 = *(a1 + 16);
      if (v19)
      {
        atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
        a3 = *v20;
        std::__shared_weak_count::__release_shared[abi:ne200100](v19);
      }

      else
      {
        a3 = *v20;
      }

      if (os_log_type_enabled(a3, OS_LOG_TYPE_FAULT))
      {
        *__p = 0;
        _os_log_fault_impl(&dword_29808D000, a3, OS_LOG_TYPE_FAULT, "Response messageId must match request messageId", __p, 2u);
      }

      __break(1u);
    }

    else
    {
      v27 = *(a1 + 8);
      v26 = *(a1 + 16);
      if (v26)
      {
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
        v28 = *v27;
        std::__shared_weak_count::__release_shared[abi:ne200100](v26);
        goto LABEL_46;
      }
    }

    v28 = *v27;
LABEL_46:
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *__p = 0;
      v31 = "No response";
LABEL_63:
      _os_log_error_impl(&dword_29808D000, v28, OS_LOG_TYPE_ERROR, v31, __p, 2u);
      goto LABEL_50;
    }

    goto LABEL_50;
  }

  v24 = *(a1 + 8);
  v23 = *(a1 + 16);
  if (v23)
  {
    atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
    v25 = *v24;
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  else
  {
    v25 = *v24;
  }

  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    std::string::basic_string[abi:ne200100]<0>(v45, "kFreeResponse");
    v32 = v46;
    v33 = *v45;
    telephonytransport::toString(v15, v42);
    v34 = v45;
    if (v32 < 0)
    {
      v34 = v33;
    }

    if (v43 >= 0)
    {
      v35 = v42;
    }

    else
    {
      v35 = v42[0];
    }

    *__p = 134218498;
    *&__p[4] = v6;
    v48 = 2080;
    v49 = v34;
    v50 = 2080;
    v51 = v35;
    _os_log_error_impl(&dword_29808D000, v25, OS_LOG_TYPE_ERROR, "Received response type doesn't match expected response type. TxnId: %llu, Expected: %s, Received: %s", __p, 0x20u);
    if (v43 < 0)
    {
      operator delete(v42[0]);
    }

    if (v46 < 0)
    {
      operator delete(*v45);
    }
  }

  a3->isa = 0;
  a3[1].isa = 0;
  v16 = v54;
  if (v54)
  {
    goto LABEL_52;
  }

LABEL_27:
  result = v44;
  if (v44 && !atomic_fetch_add((v44 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    result = (*(*result + 16))(result);
  }

  v22 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29809EBAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, atomic_ullong *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  if (a12)
  {
    if (!atomic_fetch_add(a12 + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(*a12 + 16))(a12);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t telephonytransport::PCIClientTransport::read(telephonytransport::PCIClientTransport *this, int a2, unsigned int a3, unsigned int a4, unsigned __int8 *a5, NSObject *a6)
{
  v78 = *MEMORY[0x29EDCA608];
  v63 = 0xAAAAAAAAAAAAAAAALL;
  v61 = &unk_2A1E9E8F8;
  v62 = 0;
  v64 = 0xAAAAAAAA00000000;
  v12 = operator new(0x18uLL);
  *v12 = &unk_2A1E9E7A8;
  *(v12 + 5) = 0;
  add = atomic_fetch_add((*(this + 3) + 88), 1uLL);
  v14 = *(v12 + 20);
  *(v12 + 1) = add;
  *(v12 + 20) = v14 | 3;
  *(v12 + 4) = a2;
  v15 = v62;
  v62 = v12;
  if (v15)
  {
    (*(*v15 + 8))(v15);
    v12 = v62;
  }

  LOBYTE(v64) = v64 | 3;
  v63 = __PAIR64__(a4, a3);
  v16 = *(v12 + 1);
  v67 = 0xAAAAAAAAAAAAAAAALL;
  telephonytransport::TransactionManager::add(*(this + 3), v16, &v67);
  if ((telephonytransport::BaseProtocol::sendMessage(*(this + 12), 3u, &v61) & 1) == 0)
  {
    v22 = *(this + 1);
    v21 = *(this + 2);
    if (v21)
    {
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      v16 = *v22;
      std::__shared_weak_count::__release_shared[abi:ne200100](v21);
    }

    else
    {
      v16 = *v22;
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "kReadRequest");
      v23 = v73 >= 0 ? __p : *__p;
      *buf = 136315138;
      *v76 = v23;
      _os_log_error_impl(&dword_29808D000, v16, OS_LOG_TYPE_ERROR, "Failed to send message. RequestT: %s", buf, 0xCu);
      if (SHIBYTE(v73) < 0)
      {
        operator delete(*__p);
      }
    }

    goto LABEL_28;
  }

  v17 = v67;
  *__p = std::chrono::steady_clock::now().__d_.__rep_ + 60000000000;
  if (!std::__assoc_sub_state::wait_until<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>(v17, __p))
  {
    std::future<telephonytransport::TransactionResponse>::get(buf, &v67);
    LODWORD(v24) = *buf;
    if (*buf != 4)
    {
      goto LABEL_45;
    }

    v24 = *&v76[4];
    v16 = v77;
    if (v77)
    {
      atomic_fetch_add_explicit((v77 + 8), 1uLL, memory_order_relaxed);
    }

    if (v24)
    {
      v25 = *(v24 + 16);
      if (v25)
      {
        if (!telephonytransport::PCIMessageId::operator==(v25, v62))
        {
          v27 = *(this + 1);
          v26 = *(this + 2);
          if (v26)
          {
            atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
            a6 = *v27;
            std::__shared_weak_count::__release_shared[abi:ne200100](v26);
          }

          else
          {
            a6 = *v27;
          }

          if (!os_log_type_enabled(a6, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_44;
          }

          *__p = 0;
          v37 = "Response messageId must match request messageId";
          goto LABEL_43;
        }

        if (*(v24 + 28))
        {
          if (!*(v24 + 24))
          {
            v47 = v16;
            goto LABEL_58;
          }

          v58 = *(this + 1);
          v57 = *(this + 2);
          if (v57)
          {
            atomic_fetch_add_explicit(&v57->__shared_owners_, 1uLL, memory_order_relaxed);
            v59 = *v58;
            std::__shared_weak_count::__release_shared[abi:ne200100](v57);
          }

          else
          {
            v59 = *v58;
          }

          if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
          {
            std::string::basic_string[abi:ne200100]<0>(__p, "kReadRequest");
            v60 = v73 >= 0 ? __p : *__p;
            *v68 = 136315138;
            *&v68[4] = v60;
            _os_log_error_impl(&dword_29808D000, v59, OS_LOG_TYPE_ERROR, "%s failed", v68, 0xCu);
            if (SHIBYTE(v73) < 0)
            {
              operator delete(*__p);
            }
          }

          goto LABEL_70;
        }

        v56 = *(this + 1);
        v55 = *(this + 2);
        if (v55)
        {
          atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
          v46 = *v56;
          std::__shared_weak_count::__release_shared[abi:ne200100](v55);
        }

        else
        {
          v46 = *v56;
        }

        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          *__p = 0;
          v50 = "Response doesn't contain result";
          goto LABEL_83;
        }

LABEL_70:
        if (v16)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v16);
          v28 = 0;
          v24 = 0;
          goto LABEL_72;
        }

        goto LABEL_28;
      }

      v49 = *(this + 1);
      v48 = *(this + 2);
      if (v48)
      {
        atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
        v46 = *v49;
        std::__shared_weak_count::__release_shared[abi:ne200100](v48);
      }

      else
      {
        v46 = *v49;
      }

      if (!os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_70;
      }

      *__p = 0;
      v50 = "Response doesn't contain messageId";
    }

    else
    {
      v45 = *(this + 1);
      v44 = *(this + 2);
      if (v44)
      {
        atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
        v46 = *v45;
        std::__shared_weak_count::__release_shared[abi:ne200100](v44);
      }

      else
      {
        v46 = *v45;
      }

      if (!os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_70;
      }

      *__p = 0;
      v50 = "No response";
    }

LABEL_83:
    _os_log_error_impl(&dword_29808D000, v46, OS_LOG_TYPE_ERROR, v50, __p, 2u);
    goto LABEL_70;
  }

  v19 = *(this + 1);
  v18 = *(this + 2);
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    v20 = *v19;
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  else
  {
    v20 = *v19;
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    *__p = 0;
    _os_log_error_impl(&dword_29808D000, v20, OS_LOG_TYPE_ERROR, "Timed out waiting for response", __p, 2u);
  }

  telephonytransport::TransactionManager::remove(*(this + 3), v16);
LABEL_28:
  v28 = 0;
  v24 = 0;
  while (1)
  {
    v29 = v67;
    if (v67 && !atomic_fetch_add((v67 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(*v29 + 16))(v29);
      if (!v24)
      {
        goto LABEL_50;
      }
    }

    else if (!v24)
    {
      goto LABEL_50;
    }

    v30 = *(v24 + 8);
    if (!v30)
    {
      v35 = *(this + 1);
      v34 = *(this + 2);
      if (v34)
      {
        atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
        v36 = *v35;
        std::__shared_weak_count::__release_shared[abi:ne200100](v34);
      }

      else
      {
        v36 = *v35;
      }

      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        *__p = 0;
        _os_log_error_impl(&dword_29808D000, v36, OS_LOG_TYPE_ERROR, "No data read", __p, 2u);
      }

LABEL_50:
      v41 = 0;
      if (!v28)
      {
        goto LABEL_52;
      }

LABEL_51:
      std::__shared_weak_count::__release_shared[abi:ne200100](v28);
      goto LABEL_52;
    }

    v31 = *(v30 + 8);
    if (v31 <= a3)
    {
      break;
    }

    v33 = *(this + 1);
    v32 = *(this + 2);
    if (v32)
    {
      atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
      a6 = *v33;
      std::__shared_weak_count::__release_shared[abi:ne200100](v32);
    }

    else
    {
      a6 = *v33;
    }

    if (os_log_type_enabled(a6, OS_LOG_TYPE_FAULT))
    {
      *__p = 0;
      v37 = "Can't read more bytes than requested";
LABEL_43:
      _os_log_fault_impl(&dword_29808D000, a6, OS_LOG_TYPE_FAULT, v37, __p, 2u);
    }

LABEL_44:
    __break(1u);
LABEL_45:
    v39 = *(this + 1);
    v38 = *(this + 2);
    if (v38)
    {
      atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
      v40 = *v39;
      std::__shared_weak_count::__release_shared[abi:ne200100](v38);
    }

    else
    {
      v40 = *v39;
    }

    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      std::string::basic_string[abi:ne200100]<0>(v68, "kReadResponse");
      v51 = v69;
      v52 = *v68;
      telephonytransport::toString(v24, v65);
      v53 = v68;
      if (v51 < 0)
      {
        v53 = v52;
      }

      if (v66 >= 0)
      {
        v54 = v65;
      }

      else
      {
        v54 = v65[0];
      }

      *__p = 134218498;
      *&__p[4] = v16;
      v71 = 2080;
      v72 = v53;
      v73 = 2080;
      v74 = v54;
      _os_log_error_impl(&dword_29808D000, v40, OS_LOG_TYPE_ERROR, "Received response type doesn't match expected response type. TxnId: %llu, Expected: %s, Received: %s", __p, 0x20u);
      if (v66 < 0)
      {
        operator delete(v65[0]);
      }

      if (v69 < 0)
      {
        operator delete(*v68);
      }
    }

    v16 = 0;
    v24 = 0;
    v47 = v77;
LABEL_58:
    v28 = v16;
    v16 = v47;
    if (v47)
    {
LABEL_72:
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    }
  }

  memcpy(a5, *v30, v31);
  a6->isa = *(*(v24 + 8) + 8);
  v41 = 1;
  if (v28)
  {
    goto LABEL_51;
  }

LABEL_52:
  telephonytransport::PCIReadRequest::~PCIReadRequest(&v61);
  v42 = *MEMORY[0x29EDCA608];
  return v41;
}

void sub_29809F3BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  v32 = a16;
  if (a16)
  {
    if (!atomic_fetch_add((a16 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(*v32 + 16))(v32);
    }
  }

  telephonytransport::PCIReadRequest::~PCIReadRequest(&a9);
  _Unwind_Resume(a1);
}

BOOL telephonytransport::PCIClientTransport::write(telephonytransport::PCIClientTransport *this, int a2, unsigned __int8 *a3, uint64_t a4, int a5, unint64_t *a6)
{
  v22 = 0;
  v23 = 2863311530;
  v20 = &unk_2A1E9E968;
  v21 = 0;
  v12 = operator new(0x18uLL);
  *v12 = &unk_2A1E9E7A8;
  v12[5] = 0;
  add = atomic_fetch_add((*(this + 3) + 88), 1uLL);
  v14 = *(v12 + 20);
  *(v12 + 1) = add;
  *(v12 + 20) = v14 | 3;
  v12[4] = a2;
  v15 = v22;
  v22 = v12;
  if (v15)
  {
    (*(*v15 + 8))(v15);
  }

  telephonytransport::PCIWriteRequest::makeData(&v20);
  PB::Data::assign(v21, a3, &a3[a4]);
  BYTE4(v23) |= 1u;
  LODWORD(v23) = a5;
  v18.isa = 0xAAAAAAAAAAAAAAAALL;
  v19 = 0xAAAAAAAAAAAAAAAALL;
  telephonytransport::PCIClientTransport::sendRequestAndWaitForResponse<telephonytransport::PCIWriteRequest,telephonytransport::PCIWriteResponse>(this, &v20, &v18);
  isa = v18.isa;
  if (v18.isa && (*(v18.isa + 24) & 1) != 0)
  {
    *a6 = *(v18.isa + 4);
  }

  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  telephonytransport::PCIWriteRequest::~PCIWriteRequest(&v20);
  return isa != 0;
}

void sub_29809F5D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  telephonytransport::PCIWriteRequest::~PCIWriteRequest(va);
  _Unwind_Resume(a1);
}

void telephonytransport::PCIWriteRequest::makeData(telephonytransport::PCIWriteRequest *this)
{
  v1 = (this + 8);
  if (!*(this + 1))
  {
    v2 = operator new(0x10uLL);
    *v2 = 0;
    v2[1] = 0;

    std::unique_ptr<PB::Data>::reset[abi:ne200100](v1, v2);
  }
}

uint64_t telephonytransport::PCIClientTransport::sendRequestAndWaitForResponse<telephonytransport::PCIWriteRequest,telephonytransport::PCIWriteResponse>@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, NSObject *a3@<X8>)
{
  v55 = *MEMORY[0x29EDCA608];
  v6 = *(a2[2] + 8);
  v44 = 0xAAAAAAAAAAAAAAAALL;
  telephonytransport::TransactionManager::add(*(a1 + 24), v6, &v44);
  if ((telephonytransport::BaseProtocol::sendMessage(*(a1 + 96), 7u, a2) & 1) == 0)
  {
    v12 = *(a1 + 8);
    v11 = *(a1 + 16);
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      v13 = *v12;
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    else
    {
      v13 = *v12;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "kWriteRequest");
      v14 = v50 >= 0 ? __p : *__p;
      *buf = 136315138;
      *v53 = v14;
      _os_log_error_impl(&dword_29808D000, v13, OS_LOG_TYPE_ERROR, "Failed to send message. RequestT: %s", buf, 0xCu);
      if (SHIBYTE(v50) < 0)
      {
        operator delete(*__p);
      }
    }

    goto LABEL_26;
  }

  v7 = v44;
  *__p = std::chrono::steady_clock::now().__d_.__rep_ + 60000000000;
  if (std::__assoc_sub_state::wait_until<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>(v7, __p))
  {
    v9 = *(a1 + 8);
    v8 = *(a1 + 16);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      v10 = *v9;
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    else
    {
      v10 = *v9;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *__p = 0;
      _os_log_error_impl(&dword_29808D000, v10, OS_LOG_TYPE_ERROR, "Timed out waiting for response", __p, 2u);
    }

    telephonytransport::TransactionManager::remove(*(a1 + 24), v6);
LABEL_26:
    a3->isa = 0;
    a3[1].isa = 0;
    goto LABEL_27;
  }

  std::future<telephonytransport::TransactionResponse>::get(buf, &v44);
  v15 = *buf;
  if (*buf == 8)
  {
    v17 = *&v53[4];
    v16 = v54;
    if (v54)
    {
      atomic_fetch_add_explicit(&v54->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v17)
    {
      v18 = *(v17 + 8);
      if (!v18)
      {
        v30 = *(a1 + 8);
        v29 = *(a1 + 16);
        if (v29)
        {
          atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
          v28 = *v30;
          std::__shared_weak_count::__release_shared[abi:ne200100](v29);
        }

        else
        {
          v28 = *v30;
        }

        if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_50;
        }

        *__p = 0;
        v31 = "Response doesn't contain messageId";
        goto LABEL_63;
      }

      if (telephonytransport::PCIMessageId::operator==(v18, a2[2]))
      {
        if ((*(v17 + 24) & 2) != 0)
        {
          if (!*(v17 + 20))
          {
            a3->isa = v17;
            a3[1].isa = v16;
            if (!v16)
            {
              goto LABEL_27;
            }

            goto LABEL_52;
          }

          v39 = *(a1 + 8);
          v38 = *(a1 + 16);
          if (v38)
          {
            atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
            v40 = *v39;
            std::__shared_weak_count::__release_shared[abi:ne200100](v38);
          }

          else
          {
            v40 = *v39;
          }

          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            std::string::basic_string[abi:ne200100]<0>(__p, "kWriteRequest");
            v41 = v50 >= 0 ? __p : *__p;
            *v45 = 136315138;
            *&v45[4] = v41;
            _os_log_error_impl(&dword_29808D000, v40, OS_LOG_TYPE_ERROR, "%s failed", v45, 0xCu);
            if (SHIBYTE(v50) < 0)
            {
              operator delete(*__p);
            }
          }

          goto LABEL_50;
        }

        v37 = *(a1 + 8);
        v36 = *(a1 + 16);
        if (v36)
        {
          atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
          v28 = *v37;
          std::__shared_weak_count::__release_shared[abi:ne200100](v36);
        }

        else
        {
          v28 = *v37;
        }

        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          *__p = 0;
          v31 = "Response doesn't contain result";
          goto LABEL_63;
        }

LABEL_50:
        a3->isa = 0;
        a3[1].isa = 0;
        if (!v16)
        {
          goto LABEL_27;
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v16);
LABEL_52:
        std::__shared_weak_count::__release_shared[abi:ne200100](v16);
        goto LABEL_27;
      }

      v20 = *(a1 + 8);
      v19 = *(a1 + 16);
      if (v19)
      {
        atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
        a3 = *v20;
        std::__shared_weak_count::__release_shared[abi:ne200100](v19);
      }

      else
      {
        a3 = *v20;
      }

      if (os_log_type_enabled(a3, OS_LOG_TYPE_FAULT))
      {
        *__p = 0;
        _os_log_fault_impl(&dword_29808D000, a3, OS_LOG_TYPE_FAULT, "Response messageId must match request messageId", __p, 2u);
      }

      __break(1u);
    }

    else
    {
      v27 = *(a1 + 8);
      v26 = *(a1 + 16);
      if (v26)
      {
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
        v28 = *v27;
        std::__shared_weak_count::__release_shared[abi:ne200100](v26);
        goto LABEL_46;
      }
    }

    v28 = *v27;
LABEL_46:
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *__p = 0;
      v31 = "No response";
LABEL_63:
      _os_log_error_impl(&dword_29808D000, v28, OS_LOG_TYPE_ERROR, v31, __p, 2u);
      goto LABEL_50;
    }

    goto LABEL_50;
  }

  v24 = *(a1 + 8);
  v23 = *(a1 + 16);
  if (v23)
  {
    atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
    v25 = *v24;
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  else
  {
    v25 = *v24;
  }

  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    std::string::basic_string[abi:ne200100]<0>(v45, "kWriteResponse");
    v32 = v46;
    v33 = *v45;
    telephonytransport::toString(v15, v42);
    v34 = v45;
    if (v32 < 0)
    {
      v34 = v33;
    }

    if (v43 >= 0)
    {
      v35 = v42;
    }

    else
    {
      v35 = v42[0];
    }

    *__p = 134218498;
    *&__p[4] = v6;
    v48 = 2080;
    v49 = v34;
    v50 = 2080;
    v51 = v35;
    _os_log_error_impl(&dword_29808D000, v25, OS_LOG_TYPE_ERROR, "Received response type doesn't match expected response type. TxnId: %llu, Expected: %s, Received: %s", __p, 0x20u);
    if (v43 < 0)
    {
      operator delete(v42[0]);
    }

    if (v46 < 0)
    {
      operator delete(*v45);
    }
  }

  a3->isa = 0;
  a3[1].isa = 0;
  v16 = v54;
  if (v54)
  {
    goto LABEL_52;
  }

LABEL_27:
  result = v44;
  if (v44 && !atomic_fetch_add((v44 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    result = (*(*result + 16))(result);
  }

  v22 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29809FBD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, atomic_ullong *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  if (a12)
  {
    if (!atomic_fetch_add(a12 + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(*a12 + 16))(a12);
    }
  }

  _Unwind_Resume(exception_object);
}

BOOL telephonytransport::PCIClientTransport::sendImage(telephonytransport::PCIClientTransport *this, int a2, unsigned __int8 *a3, uint64_t a4, int a5, unint64_t *a6, unsigned int *a7)
{
  v25 = 0;
  v26 = 2863311530;
  v23 = &unk_2A1E9E888;
  v24 = 0;
  v14 = operator new(0x18uLL);
  *v14 = &unk_2A1E9E7A8;
  v14[5] = 0;
  add = atomic_fetch_add((*(this + 3) + 88), 1uLL);
  v16 = *(v14 + 20);
  *(v14 + 1) = add;
  *(v14 + 20) = v16 | 3;
  v14[4] = a2;
  v17 = v25;
  v25 = v14;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  telephonytransport::PCIWriteRequest::makeData(&v23);
  PB::Data::assign(v24, a3, &a3[a4]);
  BYTE4(v26) |= 1u;
  LODWORD(v26) = a5;
  v21.isa = 0xAAAAAAAAAAAAAAAALL;
  v22 = 0xAAAAAAAAAAAAAAAALL;
  telephonytransport::PCIClientTransport::sendRequestAndWaitForResponse<telephonytransport::PCISendImageRequest,telephonytransport::PCISendImageResponse>(this, &v23, &v21);
  isa = v21.isa;
  if (v21.isa)
  {
    v19 = *(v21.isa + 28);
    if ((v19 & 2) != 0)
    {
      *a7 = *(v21.isa + 5);
      v19 = *(isa + 28);
    }

    if (v19)
    {
      *a6 = *(isa + 4);
    }
  }

  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v22);
  }

  telephonytransport::PCISendImageRequest::~PCISendImageRequest(&v23);
  return isa != 0;
}

void sub_29809FDF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  telephonytransport::PCISendImageRequest::~PCISendImageRequest(va);
  _Unwind_Resume(a1);
}

uint64_t telephonytransport::PCIClientTransport::sendRequestAndWaitForResponse<telephonytransport::PCISendImageRequest,telephonytransport::PCISendImageResponse>@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, NSObject *a3@<X8>)
{
  v55 = *MEMORY[0x29EDCA608];
  v6 = *(a2[2] + 8);
  v44 = 0xAAAAAAAAAAAAAAAALL;
  telephonytransport::TransactionManager::add(*(a1 + 24), v6, &v44);
  if ((telephonytransport::BaseProtocol::sendMessage(*(a1 + 96), 0xBu, a2) & 1) == 0)
  {
    v12 = *(a1 + 8);
    v11 = *(a1 + 16);
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      v13 = *v12;
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    else
    {
      v13 = *v12;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "kSendImageRequest");
      v14 = v50 >= 0 ? __p : *__p;
      *buf = 136315138;
      *v53 = v14;
      _os_log_error_impl(&dword_29808D000, v13, OS_LOG_TYPE_ERROR, "Failed to send message. RequestT: %s", buf, 0xCu);
      if (SHIBYTE(v50) < 0)
      {
        operator delete(*__p);
      }
    }

    goto LABEL_26;
  }

  v7 = v44;
  *__p = std::chrono::steady_clock::now().__d_.__rep_ + 60000000000;
  if (std::__assoc_sub_state::wait_until<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>(v7, __p))
  {
    v9 = *(a1 + 8);
    v8 = *(a1 + 16);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      v10 = *v9;
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    else
    {
      v10 = *v9;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *__p = 0;
      _os_log_error_impl(&dword_29808D000, v10, OS_LOG_TYPE_ERROR, "Timed out waiting for response", __p, 2u);
    }

    telephonytransport::TransactionManager::remove(*(a1 + 24), v6);
LABEL_26:
    a3->isa = 0;
    a3[1].isa = 0;
    goto LABEL_27;
  }

  std::future<telephonytransport::TransactionResponse>::get(buf, &v44);
  v15 = *buf;
  if (*buf == 12)
  {
    v17 = *&v53[4];
    v16 = v54;
    if (v54)
    {
      atomic_fetch_add_explicit(&v54->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v17)
    {
      v18 = *(v17 + 8);
      if (!v18)
      {
        v30 = *(a1 + 8);
        v29 = *(a1 + 16);
        if (v29)
        {
          atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
          v28 = *v30;
          std::__shared_weak_count::__release_shared[abi:ne200100](v29);
        }

        else
        {
          v28 = *v30;
        }

        if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_50;
        }

        *__p = 0;
        v31 = "Response doesn't contain messageId";
        goto LABEL_63;
      }

      if (telephonytransport::PCIMessageId::operator==(v18, a2[2]))
      {
        if ((*(v17 + 28) & 4) != 0)
        {
          if (!*(v17 + 24))
          {
            a3->isa = v17;
            a3[1].isa = v16;
            if (!v16)
            {
              goto LABEL_27;
            }

            goto LABEL_52;
          }

          v39 = *(a1 + 8);
          v38 = *(a1 + 16);
          if (v38)
          {
            atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
            v40 = *v39;
            std::__shared_weak_count::__release_shared[abi:ne200100](v38);
          }

          else
          {
            v40 = *v39;
          }

          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            std::string::basic_string[abi:ne200100]<0>(__p, "kSendImageRequest");
            v41 = v50 >= 0 ? __p : *__p;
            *v45 = 136315138;
            *&v45[4] = v41;
            _os_log_error_impl(&dword_29808D000, v40, OS_LOG_TYPE_ERROR, "%s failed", v45, 0xCu);
            if (SHIBYTE(v50) < 0)
            {
              operator delete(*__p);
            }
          }

          goto LABEL_50;
        }

        v37 = *(a1 + 8);
        v36 = *(a1 + 16);
        if (v36)
        {
          atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
          v28 = *v37;
          std::__shared_weak_count::__release_shared[abi:ne200100](v36);
        }

        else
        {
          v28 = *v37;
        }

        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          *__p = 0;
          v31 = "Response doesn't contain result";
          goto LABEL_63;
        }

LABEL_50:
        a3->isa = 0;
        a3[1].isa = 0;
        if (!v16)
        {
          goto LABEL_27;
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v16);
LABEL_52:
        std::__shared_weak_count::__release_shared[abi:ne200100](v16);
        goto LABEL_27;
      }

      v20 = *(a1 + 8);
      v19 = *(a1 + 16);
      if (v19)
      {
        atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
        a3 = *v20;
        std::__shared_weak_count::__release_shared[abi:ne200100](v19);
      }

      else
      {
        a3 = *v20;
      }

      if (os_log_type_enabled(a3, OS_LOG_TYPE_FAULT))
      {
        *__p = 0;
        _os_log_fault_impl(&dword_29808D000, a3, OS_LOG_TYPE_FAULT, "Response messageId must match request messageId", __p, 2u);
      }

      __break(1u);
    }

    else
    {
      v27 = *(a1 + 8);
      v26 = *(a1 + 16);
      if (v26)
      {
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
        v28 = *v27;
        std::__shared_weak_count::__release_shared[abi:ne200100](v26);
        goto LABEL_46;
      }
    }

    v28 = *v27;
LABEL_46:
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *__p = 0;
      v31 = "No response";
LABEL_63:
      _os_log_error_impl(&dword_29808D000, v28, OS_LOG_TYPE_ERROR, v31, __p, 2u);
      goto LABEL_50;
    }

    goto LABEL_50;
  }

  v24 = *(a1 + 8);
  v23 = *(a1 + 16);
  if (v23)
  {
    atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
    v25 = *v24;
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  else
  {
    v25 = *v24;
  }

  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    std::string::basic_string[abi:ne200100]<0>(v45, "kSendImageResponse");
    v32 = v46;
    v33 = *v45;
    telephonytransport::toString(v15, v42);
    v34 = v45;
    if (v32 < 0)
    {
      v34 = v33;
    }

    if (v43 >= 0)
    {
      v35 = v42;
    }

    else
    {
      v35 = v42[0];
    }

    *__p = 134218498;
    *&__p[4] = v6;
    v48 = 2080;
    v49 = v34;
    v50 = 2080;
    v51 = v35;
    _os_log_error_impl(&dword_29808D000, v25, OS_LOG_TYPE_ERROR, "Received response type doesn't match expected response type. TxnId: %llu, Expected: %s, Received: %s", __p, 0x20u);
    if (v43 < 0)
    {
      operator delete(v42[0]);
    }

    if (v46 < 0)
    {
      operator delete(*v45);
    }
  }

  a3->isa = 0;
  a3[1].isa = 0;
  v16 = v54;
  if (v54)
  {
    goto LABEL_52;
  }

LABEL_27:
  result = v44;
  if (v44 && !atomic_fetch_add((v44 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    result = (*(*result + 16))(result);
  }

  v22 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2980A039C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, atomic_ullong *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  if (a12)
  {
    if (!atomic_fetch_add(a12 + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(*a12 + 16))(a12);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t telephonytransport::PCIClientTransport::readRegister(telephonytransport::PCIClientTransport *this, int a2, int a3, unsigned int a4, unsigned int a5, unsigned __int8 *a6, NSObject *a7)
{
  v80 = *MEMORY[0x29EDCA608];
  v65 = 0xAAAAAAAAAAAAAAAALL;
  v66 = 2863311530;
  v63 = &unk_2A1E9E700;
  v64 = 0;
  v14 = operator new(0x18uLL);
  *v14 = &unk_2A1E9E7A8;
  *(v14 + 5) = 0;
  add = atomic_fetch_add((*(this + 3) + 88), 1uLL);
  v16 = *(v14 + 20);
  *(v14 + 1) = add;
  *(v14 + 20) = v16 | 3;
  *(v14 + 4) = a2;
  v17 = v64;
  v64 = v14;
  if (v17)
  {
    (*(*v17 + 8))(v17);
    v14 = v64;
  }

  LODWORD(v66) = a3;
  BYTE4(v66) |= 7u;
  v65 = __PAIR64__(a5, a4);
  v18 = *(v14 + 1);
  v69 = 0xAAAAAAAAAAAAAAAALL;
  telephonytransport::TransactionManager::add(*(this + 3), v18, &v69);
  if ((telephonytransport::BaseProtocol::sendMessage(*(this + 12), 0xDu, &v63) & 1) == 0)
  {
    v24 = *(this + 1);
    v23 = *(this + 2);
    if (v23)
    {
      atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      v18 = *v24;
      std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    }

    else
    {
      v18 = *v24;
    }

    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "kReadRegisterRequest");
      v25 = v75 >= 0 ? __p : *__p;
      *buf = 136315138;
      *v78 = v25;
      _os_log_error_impl(&dword_29808D000, v18, OS_LOG_TYPE_ERROR, "Failed to send message. RequestT: %s", buf, 0xCu);
      if (SHIBYTE(v75) < 0)
      {
        operator delete(*__p);
      }
    }

    goto LABEL_28;
  }

  v19 = v69;
  *__p = std::chrono::steady_clock::now().__d_.__rep_ + 60000000000;
  if (!std::__assoc_sub_state::wait_until<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>(v19, __p))
  {
    std::future<telephonytransport::TransactionResponse>::get(buf, &v69);
    LODWORD(v26) = *buf;
    if (*buf != 14)
    {
      goto LABEL_45;
    }

    v26 = *&v78[4];
    v18 = v79;
    if (v79)
    {
      atomic_fetch_add_explicit((v79 + 8), 1uLL, memory_order_relaxed);
    }

    if (v26)
    {
      v27 = *(v26 + 16);
      if (v27)
      {
        if (!telephonytransport::PCIMessageId::operator==(v27, v64))
        {
          v29 = *(this + 1);
          v28 = *(this + 2);
          if (v28)
          {
            atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
            a7 = *v29;
            std::__shared_weak_count::__release_shared[abi:ne200100](v28);
          }

          else
          {
            a7 = *v29;
          }

          if (!os_log_type_enabled(a7, OS_LOG_TYPE_FAULT))
          {
            goto LABEL_44;
          }

          *__p = 0;
          v39 = "Response messageId must match request messageId";
          goto LABEL_43;
        }

        if (*(v26 + 28))
        {
          if (!*(v26 + 24))
          {
            v49 = v18;
            goto LABEL_58;
          }

          v60 = *(this + 1);
          v59 = *(this + 2);
          if (v59)
          {
            atomic_fetch_add_explicit(&v59->__shared_owners_, 1uLL, memory_order_relaxed);
            v61 = *v60;
            std::__shared_weak_count::__release_shared[abi:ne200100](v59);
          }

          else
          {
            v61 = *v60;
          }

          if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
          {
            std::string::basic_string[abi:ne200100]<0>(__p, "kReadRegisterRequest");
            v62 = v75 >= 0 ? __p : *__p;
            *v70 = 136315138;
            *&v70[4] = v62;
            _os_log_error_impl(&dword_29808D000, v61, OS_LOG_TYPE_ERROR, "%s failed", v70, 0xCu);
            if (SHIBYTE(v75) < 0)
            {
              operator delete(*__p);
            }
          }

          goto LABEL_70;
        }

        v58 = *(this + 1);
        v57 = *(this + 2);
        if (v57)
        {
          atomic_fetch_add_explicit(&v57->__shared_owners_, 1uLL, memory_order_relaxed);
          v48 = *v58;
          std::__shared_weak_count::__release_shared[abi:ne200100](v57);
        }

        else
        {
          v48 = *v58;
        }

        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          *__p = 0;
          v52 = "Response doesn't contain result";
          goto LABEL_83;
        }

LABEL_70:
        if (v18)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v18);
          v30 = 0;
          v26 = 0;
          goto LABEL_72;
        }

        goto LABEL_28;
      }

      v51 = *(this + 1);
      v50 = *(this + 2);
      if (v50)
      {
        atomic_fetch_add_explicit(&v50->__shared_owners_, 1uLL, memory_order_relaxed);
        v48 = *v51;
        std::__shared_weak_count::__release_shared[abi:ne200100](v50);
      }

      else
      {
        v48 = *v51;
      }

      if (!os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_70;
      }

      *__p = 0;
      v52 = "Response doesn't contain messageId";
    }

    else
    {
      v47 = *(this + 1);
      v46 = *(this + 2);
      if (v46)
      {
        atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
        v48 = *v47;
        std::__shared_weak_count::__release_shared[abi:ne200100](v46);
      }

      else
      {
        v48 = *v47;
      }

      if (!os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_70;
      }

      *__p = 0;
      v52 = "No response";
    }

LABEL_83:
    _os_log_error_impl(&dword_29808D000, v48, OS_LOG_TYPE_ERROR, v52, __p, 2u);
    goto LABEL_70;
  }

  v21 = *(this + 1);
  v20 = *(this + 2);
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    v22 = *v21;
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  else
  {
    v22 = *v21;
  }

  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    *__p = 0;
    _os_log_error_impl(&dword_29808D000, v22, OS_LOG_TYPE_ERROR, "Timed out waiting for response", __p, 2u);
  }

  telephonytransport::TransactionManager::remove(*(this + 3), v18);
LABEL_28:
  v30 = 0;
  v26 = 0;
  while (1)
  {
    v31 = v69;
    if (v69 && !atomic_fetch_add((v69 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(*v31 + 16))(v31);
      if (!v26)
      {
        goto LABEL_50;
      }
    }

    else if (!v26)
    {
      goto LABEL_50;
    }

    v32 = *(v26 + 8);
    if (!v32)
    {
      v37 = *(this + 1);
      v36 = *(this + 2);
      if (v36)
      {
        atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
        v38 = *v37;
        std::__shared_weak_count::__release_shared[abi:ne200100](v36);
      }

      else
      {
        v38 = *v37;
      }

      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        *__p = 0;
        _os_log_error_impl(&dword_29808D000, v38, OS_LOG_TYPE_ERROR, "No data read", __p, 2u);
      }

LABEL_50:
      v43 = 0;
      if (!v30)
      {
        goto LABEL_52;
      }

LABEL_51:
      std::__shared_weak_count::__release_shared[abi:ne200100](v30);
      goto LABEL_52;
    }

    v33 = *(v32 + 8);
    if (v33 <= a4)
    {
      break;
    }

    v35 = *(this + 1);
    v34 = *(this + 2);
    if (v34)
    {
      atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
      a7 = *v35;
      std::__shared_weak_count::__release_shared[abi:ne200100](v34);
    }

    else
    {
      a7 = *v35;
    }

    if (os_log_type_enabled(a7, OS_LOG_TYPE_FAULT))
    {
      *__p = 0;
      v39 = "Can't read more bytes than requested";
LABEL_43:
      _os_log_fault_impl(&dword_29808D000, a7, OS_LOG_TYPE_FAULT, v39, __p, 2u);
    }

LABEL_44:
    __break(1u);
LABEL_45:
    v41 = *(this + 1);
    v40 = *(this + 2);
    if (v40)
    {
      atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
      v42 = *v41;
      std::__shared_weak_count::__release_shared[abi:ne200100](v40);
    }

    else
    {
      v42 = *v41;
    }

    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      std::string::basic_string[abi:ne200100]<0>(v70, "kReadRegisterResponse");
      v53 = v71;
      v54 = *v70;
      telephonytransport::toString(v26, v67);
      v55 = v70;
      if (v53 < 0)
      {
        v55 = v54;
      }

      if (v68 >= 0)
      {
        v56 = v67;
      }

      else
      {
        v56 = v67[0];
      }

      *__p = 134218498;
      *&__p[4] = v18;
      v73 = 2080;
      v74 = v55;
      v75 = 2080;
      v76 = v56;
      _os_log_error_impl(&dword_29808D000, v42, OS_LOG_TYPE_ERROR, "Received response type doesn't match expected response type. TxnId: %llu, Expected: %s, Received: %s", __p, 0x20u);
      if (v68 < 0)
      {
        operator delete(v67[0]);
      }

      if (v71 < 0)
      {
        operator delete(*v70);
      }
    }

    v18 = 0;
    v26 = 0;
    v49 = v79;
LABEL_58:
    v30 = v18;
    v18 = v49;
    if (v49)
    {
LABEL_72:
      std::__shared_weak_count::__release_shared[abi:ne200100](v18);
    }
  }

  memcpy(a6, *v32, v33);
  a7->isa = *(*(v26 + 8) + 8);
  v43 = 1;
  if (v30)
  {
    goto LABEL_51;
  }

LABEL_52:
  telephonytransport::PCIReadRegisterRequest::~PCIReadRegisterRequest(&v63);
  v44 = *MEMORY[0x29EDCA608];
  return v43;
}

void sub_2980A0BB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
    std::__shared_weak_count::__release_shared[abi:ne200100](v30);
  }

  v32 = a16;
  if (a16)
  {
    if (!atomic_fetch_add((a16 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(*v32 + 16))(v32);
    }
  }

  telephonytransport::PCIReadRegisterRequest::~PCIReadRegisterRequest(&a9);
  _Unwind_Resume(a1);
}

BOOL telephonytransport::PCIClientTransport::unblockRead(telephonytransport::PCIClientTransport *this, int a2)
{
  v12 = &unk_2A1E9E738;
  v13 = 0;
  v4 = operator new(0x18uLL);
  *v4 = &unk_2A1E9E7A8;
  v4[5] = 0;
  add = atomic_fetch_add((*(this + 3) + 88), 1uLL);
  v6 = *(v4 + 20);
  *(v4 + 1) = add;
  *(v4 + 20) = v6 | 3;
  v4[4] = a2;
  v7 = v13;
  v13 = v4;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  telephonytransport::PCIClientTransport::sendRequestAndWaitForResponse<telephonytransport::PCIUnblockReadRequest,telephonytransport::PCIUnblockReadResponse>(this, &v12, &v10);
  isa = v10.isa;
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  telephonytransport::PCIUnblockReadRequest::~PCIUnblockReadRequest(&v12);
  return isa != 0;
}

void sub_2980A0D58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  telephonytransport::PCIUnblockReadRequest::~PCIUnblockReadRequest(va);
  _Unwind_Resume(a1);
}

uint64_t telephonytransport::PCIClientTransport::sendRequestAndWaitForResponse<telephonytransport::PCIUnblockReadRequest,telephonytransport::PCIUnblockReadResponse>@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, NSObject *a3@<X8>)
{
  v55 = *MEMORY[0x29EDCA608];
  v6 = *(a2[1] + 8);
  v44 = 0xAAAAAAAAAAAAAAAALL;
  telephonytransport::TransactionManager::add(*(a1 + 24), v6, &v44);
  if ((telephonytransport::BaseProtocol::sendMessage(*(a1 + 96), 0xFu, a2) & 1) == 0)
  {
    v12 = *(a1 + 8);
    v11 = *(a1 + 16);
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      v13 = *v12;
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    else
    {
      v13 = *v12;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "kUnblockReadRequest");
      v14 = v50 >= 0 ? __p : *__p;
      *buf = 136315138;
      *v53 = v14;
      _os_log_error_impl(&dword_29808D000, v13, OS_LOG_TYPE_ERROR, "Failed to send message. RequestT: %s", buf, 0xCu);
      if (SHIBYTE(v50) < 0)
      {
        operator delete(*__p);
      }
    }

    goto LABEL_26;
  }

  v7 = v44;
  *__p = std::chrono::steady_clock::now().__d_.__rep_ + 60000000000;
  if (std::__assoc_sub_state::wait_until<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>(v7, __p))
  {
    v9 = *(a1 + 8);
    v8 = *(a1 + 16);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      v10 = *v9;
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    else
    {
      v10 = *v9;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *__p = 0;
      _os_log_error_impl(&dword_29808D000, v10, OS_LOG_TYPE_ERROR, "Timed out waiting for response", __p, 2u);
    }

    telephonytransport::TransactionManager::remove(*(a1 + 24), v6);
LABEL_26:
    a3->isa = 0;
    a3[1].isa = 0;
    goto LABEL_27;
  }

  std::future<telephonytransport::TransactionResponse>::get(buf, &v44);
  v15 = *buf;
  if (*buf == 16)
  {
    v17 = *&v53[4];
    v16 = v54;
    if (v54)
    {
      atomic_fetch_add_explicit(&v54->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v17)
    {
      v18 = *(v17 + 8);
      if (!v18)
      {
        v30 = *(a1 + 8);
        v29 = *(a1 + 16);
        if (v29)
        {
          atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
          v28 = *v30;
          std::__shared_weak_count::__release_shared[abi:ne200100](v29);
        }

        else
        {
          v28 = *v30;
        }

        if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_50;
        }

        *__p = 0;
        v31 = "Response doesn't contain messageId";
        goto LABEL_63;
      }

      if (telephonytransport::PCIMessageId::operator==(v18, a2[1]))
      {
        if (*(v17 + 20))
        {
          if (!*(v17 + 16))
          {
            a3->isa = v17;
            a3[1].isa = v16;
            if (!v16)
            {
              goto LABEL_27;
            }

            goto LABEL_52;
          }

          v39 = *(a1 + 8);
          v38 = *(a1 + 16);
          if (v38)
          {
            atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
            v40 = *v39;
            std::__shared_weak_count::__release_shared[abi:ne200100](v38);
          }

          else
          {
            v40 = *v39;
          }

          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            std::string::basic_string[abi:ne200100]<0>(__p, "kUnblockReadRequest");
            v41 = v50 >= 0 ? __p : *__p;
            *v45 = 136315138;
            *&v45[4] = v41;
            _os_log_error_impl(&dword_29808D000, v40, OS_LOG_TYPE_ERROR, "%s failed", v45, 0xCu);
            if (SHIBYTE(v50) < 0)
            {
              operator delete(*__p);
            }
          }

          goto LABEL_50;
        }

        v37 = *(a1 + 8);
        v36 = *(a1 + 16);
        if (v36)
        {
          atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
          v28 = *v37;
          std::__shared_weak_count::__release_shared[abi:ne200100](v36);
        }

        else
        {
          v28 = *v37;
        }

        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          *__p = 0;
          v31 = "Response doesn't contain result";
          goto LABEL_63;
        }

LABEL_50:
        a3->isa = 0;
        a3[1].isa = 0;
        if (!v16)
        {
          goto LABEL_27;
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v16);
LABEL_52:
        std::__shared_weak_count::__release_shared[abi:ne200100](v16);
        goto LABEL_27;
      }

      v20 = *(a1 + 8);
      v19 = *(a1 + 16);
      if (v19)
      {
        atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
        a3 = *v20;
        std::__shared_weak_count::__release_shared[abi:ne200100](v19);
      }

      else
      {
        a3 = *v20;
      }

      if (os_log_type_enabled(a3, OS_LOG_TYPE_FAULT))
      {
        *__p = 0;
        _os_log_fault_impl(&dword_29808D000, a3, OS_LOG_TYPE_FAULT, "Response messageId must match request messageId", __p, 2u);
      }

      __break(1u);
    }

    else
    {
      v27 = *(a1 + 8);
      v26 = *(a1 + 16);
      if (v26)
      {
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
        v28 = *v27;
        std::__shared_weak_count::__release_shared[abi:ne200100](v26);
        goto LABEL_46;
      }
    }

    v28 = *v27;
LABEL_46:
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *__p = 0;
      v31 = "No response";
LABEL_63:
      _os_log_error_impl(&dword_29808D000, v28, OS_LOG_TYPE_ERROR, v31, __p, 2u);
      goto LABEL_50;
    }

    goto LABEL_50;
  }

  v24 = *(a1 + 8);
  v23 = *(a1 + 16);
  if (v23)
  {
    atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
    v25 = *v24;
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  else
  {
    v25 = *v24;
  }

  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    std::string::basic_string[abi:ne200100]<0>(v45, "kUnblockReadResponse");
    v32 = v46;
    v33 = *v45;
    telephonytransport::toString(v15, v42);
    v34 = v45;
    if (v32 < 0)
    {
      v34 = v33;
    }

    if (v43 >= 0)
    {
      v35 = v42;
    }

    else
    {
      v35 = v42[0];
    }

    *__p = 134218498;
    *&__p[4] = v6;
    v48 = 2080;
    v49 = v34;
    v50 = 2080;
    v51 = v35;
    _os_log_error_impl(&dword_29808D000, v25, OS_LOG_TYPE_ERROR, "Received response type doesn't match expected response type. TxnId: %llu, Expected: %s, Received: %s", __p, 0x20u);
    if (v43 < 0)
    {
      operator delete(v42[0]);
    }

    if (v46 < 0)
    {
      operator delete(*v45);
    }
  }

  a3->isa = 0;
  a3[1].isa = 0;
  v16 = v54;
  if (v54)
  {
    goto LABEL_52;
  }

LABEL_27:
  result = v44;
  if (v44 && !atomic_fetch_add((v44 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    result = (*(*result + 16))(result);
  }

  v22 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2980A12F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, atomic_ullong *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  if (a12)
  {
    if (!atomic_fetch_add(a12 + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(*a12 + 16))(a12);
    }
  }

  _Unwind_Resume(exception_object);
}

BOOL telephonytransport::PCIClientTransport::flushRead(telephonytransport::PCIClientTransport *this, int a2)
{
  v12 = &unk_2A1E9E770;
  v13 = 0;
  v4 = operator new(0x18uLL);
  *v4 = &unk_2A1E9E7A8;
  v4[5] = 0;
  add = atomic_fetch_add((*(this + 3) + 88), 1uLL);
  v6 = *(v4 + 20);
  *(v4 + 1) = add;
  *(v4 + 20) = v6 | 3;
  v4[4] = a2;
  v7 = v13;
  v13 = v4;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  telephonytransport::PCIClientTransport::sendRequestAndWaitForResponse<telephonytransport::PCIFlushReadRequest,telephonytransport::PCIFlushReadResponse>(this, &v12, &v10);
  isa = v10.isa;
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  telephonytransport::PCIFlushReadRequest::~PCIFlushReadRequest(&v12);
  return isa != 0;
}

void sub_2980A1490(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  telephonytransport::PCIFlushReadRequest::~PCIFlushReadRequest(va);
  _Unwind_Resume(a1);
}

uint64_t telephonytransport::PCIClientTransport::sendRequestAndWaitForResponse<telephonytransport::PCIFlushReadRequest,telephonytransport::PCIFlushReadResponse>@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, NSObject *a3@<X8>)
{
  v55 = *MEMORY[0x29EDCA608];
  v6 = *(a2[1] + 8);
  v44 = 0xAAAAAAAAAAAAAAAALL;
  telephonytransport::TransactionManager::add(*(a1 + 24), v6, &v44);
  if ((telephonytransport::BaseProtocol::sendMessage(*(a1 + 96), 0x11u, a2) & 1) == 0)
  {
    v12 = *(a1 + 8);
    v11 = *(a1 + 16);
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      v13 = *v12;
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    else
    {
      v13 = *v12;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "kFlushReadRequest");
      v14 = v50 >= 0 ? __p : *__p;
      *buf = 136315138;
      *v53 = v14;
      _os_log_error_impl(&dword_29808D000, v13, OS_LOG_TYPE_ERROR, "Failed to send message. RequestT: %s", buf, 0xCu);
      if (SHIBYTE(v50) < 0)
      {
        operator delete(*__p);
      }
    }

    goto LABEL_26;
  }

  v7 = v44;
  *__p = std::chrono::steady_clock::now().__d_.__rep_ + 60000000000;
  if (std::__assoc_sub_state::wait_until<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>(v7, __p))
  {
    v9 = *(a1 + 8);
    v8 = *(a1 + 16);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      v10 = *v9;
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    else
    {
      v10 = *v9;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *__p = 0;
      _os_log_error_impl(&dword_29808D000, v10, OS_LOG_TYPE_ERROR, "Timed out waiting for response", __p, 2u);
    }

    telephonytransport::TransactionManager::remove(*(a1 + 24), v6);
LABEL_26:
    a3->isa = 0;
    a3[1].isa = 0;
    goto LABEL_27;
  }

  std::future<telephonytransport::TransactionResponse>::get(buf, &v44);
  v15 = *buf;
  if (*buf == 18)
  {
    v17 = *&v53[4];
    v16 = v54;
    if (v54)
    {
      atomic_fetch_add_explicit(&v54->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v17)
    {
      v18 = *(v17 + 8);
      if (!v18)
      {
        v30 = *(a1 + 8);
        v29 = *(a1 + 16);
        if (v29)
        {
          atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
          v28 = *v30;
          std::__shared_weak_count::__release_shared[abi:ne200100](v29);
        }

        else
        {
          v28 = *v30;
        }

        if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_50;
        }

        *__p = 0;
        v31 = "Response doesn't contain messageId";
        goto LABEL_63;
      }

      if (telephonytransport::PCIMessageId::operator==(v18, a2[1]))
      {
        if (*(v17 + 20))
        {
          if (!*(v17 + 16))
          {
            a3->isa = v17;
            a3[1].isa = v16;
            if (!v16)
            {
              goto LABEL_27;
            }

            goto LABEL_52;
          }

          v39 = *(a1 + 8);
          v38 = *(a1 + 16);
          if (v38)
          {
            atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
            v40 = *v39;
            std::__shared_weak_count::__release_shared[abi:ne200100](v38);
          }

          else
          {
            v40 = *v39;
          }

          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            std::string::basic_string[abi:ne200100]<0>(__p, "kFlushReadRequest");
            v41 = v50 >= 0 ? __p : *__p;
            *v45 = 136315138;
            *&v45[4] = v41;
            _os_log_error_impl(&dword_29808D000, v40, OS_LOG_TYPE_ERROR, "%s failed", v45, 0xCu);
            if (SHIBYTE(v50) < 0)
            {
              operator delete(*__p);
            }
          }

          goto LABEL_50;
        }

        v37 = *(a1 + 8);
        v36 = *(a1 + 16);
        if (v36)
        {
          atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
          v28 = *v37;
          std::__shared_weak_count::__release_shared[abi:ne200100](v36);
        }

        else
        {
          v28 = *v37;
        }

        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          *__p = 0;
          v31 = "Response doesn't contain result";
          goto LABEL_63;
        }

LABEL_50:
        a3->isa = 0;
        a3[1].isa = 0;
        if (!v16)
        {
          goto LABEL_27;
        }

        std::__shared_weak_count::__release_shared[abi:ne200100](v16);
LABEL_52:
        std::__shared_weak_count::__release_shared[abi:ne200100](v16);
        goto LABEL_27;
      }

      v20 = *(a1 + 8);
      v19 = *(a1 + 16);
      if (v19)
      {
        atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
        a3 = *v20;
        std::__shared_weak_count::__release_shared[abi:ne200100](v19);
      }

      else
      {
        a3 = *v20;
      }

      if (os_log_type_enabled(a3, OS_LOG_TYPE_FAULT))
      {
        *__p = 0;
        _os_log_fault_impl(&dword_29808D000, a3, OS_LOG_TYPE_FAULT, "Response messageId must match request messageId", __p, 2u);
      }

      __break(1u);
    }

    else
    {
      v27 = *(a1 + 8);
      v26 = *(a1 + 16);
      if (v26)
      {
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
        v28 = *v27;
        std::__shared_weak_count::__release_shared[abi:ne200100](v26);
        goto LABEL_46;
      }
    }

    v28 = *v27;
LABEL_46:
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *__p = 0;
      v31 = "No response";
LABEL_63:
      _os_log_error_impl(&dword_29808D000, v28, OS_LOG_TYPE_ERROR, v31, __p, 2u);
      goto LABEL_50;
    }

    goto LABEL_50;
  }

  v24 = *(a1 + 8);
  v23 = *(a1 + 16);
  if (v23)
  {
    atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
    v25 = *v24;
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
  }

  else
  {
    v25 = *v24;
  }

  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    std::string::basic_string[abi:ne200100]<0>(v45, "kFlushReadResponse");
    v32 = v46;
    v33 = *v45;
    telephonytransport::toString(v15, v42);
    v34 = v45;
    if (v32 < 0)
    {
      v34 = v33;
    }

    if (v43 >= 0)
    {
      v35 = v42;
    }

    else
    {
      v35 = v42[0];
    }

    *__p = 134218498;
    *&__p[4] = v6;
    v48 = 2080;
    v49 = v34;
    v50 = 2080;
    v51 = v35;
    _os_log_error_impl(&dword_29808D000, v25, OS_LOG_TYPE_ERROR, "Received response type doesn't match expected response type. TxnId: %llu, Expected: %s, Received: %s", __p, 0x20u);
    if (v43 < 0)
    {
      operator delete(v42[0]);
    }

    if (v46 < 0)
    {
      operator delete(*v45);
    }
  }

  a3->isa = 0;
  a3[1].isa = 0;
  v16 = v54;
  if (v54)
  {
    goto LABEL_52;
  }

LABEL_27:
  result = v44;
  if (v44 && !atomic_fetch_add((v44 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    result = (*(*result + 16))(result);
  }

  v22 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2980A1A30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, atomic_ullong *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  if (v26)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
    std::__shared_weak_count::__release_shared[abi:ne200100](v26);
  }

  if (a12)
  {
    if (!atomic_fetch_add(a12 + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(*a12 + 16))(a12);
    }
  }

  _Unwind_Resume(exception_object);
}

void telephonytransport::PCIClientTransport::handleMessage(telephonytransport::PCIClientTransport *this, unsigned int a2, unsigned __int8 *a3, uint64_t a4)
{
  v184 = *MEMORY[0x29EDCA608];
  if (a2 - 1 >= 0x12)
  {
    v4 = 0;
  }

  else
  {
    v4 = a2;
  }

  switch(v4)
  {
    case 1:
    case 3:
    case 7:
    case 9:
    case 11:
    case 13:
    case 15:
    case 17:
      v9 = *(this + 1);
      v8 = *(this + 2);
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        v10 = *v9;
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
      }

      else
      {
        v10 = *v9;
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        telephonytransport::toString(v4, __p);
        if (__p[23] >= 0)
        {
          v11 = __p;
        }

        else
        {
          v11 = *__p;
        }

        *buf = 136315394;
        *&buf[4] = v11;
        v178 = 2048;
        v179 = a4;
        v12 = "Ignoring unsupported message type: %s, length: %zu";
        goto LABEL_13;
      }

      goto LABEL_285;
    case 2:
      v21 = operator new(0x38uLL);
      v21->__shared_owners_ = 0;
      v21->__shared_weak_owners_ = 0;
      v21->__vftable = &unk_2A1E9E2E8;
      v21[1].__vftable = &unk_2A1E9E8C0;
      v21[1].__shared_owners_ = 0;
      HIDWORD(v21[1].__shared_weak_owners_) = 0;
      LODWORD(v21[2].__vftable) = 0;
      if ((telephonytransport::deserializeMessage(&v21[1], 2, a3, a4) & 1) == 0)
      {
        v60 = *(this + 1);
        v59 = *(this + 2);
        if (v59)
        {
          atomic_fetch_add_explicit(&v59->__shared_owners_, 1uLL, memory_order_relaxed);
          v25 = *v60;
          std::__shared_weak_count::__release_shared[abi:ne200100](v59);
        }

        else
        {
          v25 = *v60;
        }

        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "kCreateResponse");
          goto LABEL_146;
        }

        goto LABEL_284;
      }

      shared_owners = v21[1].__shared_owners_;
      if (!shared_owners)
      {
        v86 = *(this + 1);
        v85 = *(this + 2);
        if (v85)
        {
          atomic_fetch_add_explicit(&v85->__shared_owners_, 1uLL, memory_order_relaxed);
          v25 = *v86;
          std::__shared_weak_count::__release_shared[abi:ne200100](v85);
        }

        else
        {
          v25 = *v86;
        }

        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "kCreateResponse");
          goto LABEL_236;
        }

        goto LABEL_284;
      }

      if ((*(shared_owners + 20) & 1) == 0)
      {
        v24 = *(this + 1);
        v23 = *(this + 2);
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
          v25 = *v24;
          std::__shared_weak_count::__release_shared[abi:ne200100](v23);
        }

        else
        {
          v25 = *v24;
        }

        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "kCreateResponse");
          goto LABEL_278;
        }

        goto LABEL_284;
      }

      v110 = *(this + 3);
      v111 = *(shared_owners + 8);
      *__p = v21 + 1;
      *&__p[8] = v21;
      v112 = telephonytransport::TransactionManager::fulfilPromise(v110, v111, 2, __p);
      if (*&__p[8])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*&__p[8]);
      }

      if ((v112 & 1) == 0)
      {
        v114 = *(this + 1);
        v113 = *(this + 2);
        if (v113)
        {
          atomic_fetch_add_explicit(&v113->__shared_owners_, 1uLL, memory_order_relaxed);
          v10 = *v114;
          std::__shared_weak_count::__release_shared[abi:ne200100](v113);
        }

        else
        {
          v10 = *v114;
        }

        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "kCreateResponse");
          goto LABEL_323;
        }
      }

      goto LABEL_285;
    case 4:
      v21 = operator new(0x38uLL);
      v21->__shared_owners_ = 0;
      v21->__shared_weak_owners_ = 0;
      v21->__vftable = &unk_2A1E9E338;
      v21[1].__vftable = &unk_2A1E9E850;
      v21[1].__shared_owners_ = 0;
      v21[1].__shared_weak_owners_ = 0;
      v21[2].__vftable = 0;
      if ((telephonytransport::deserializeMessage(&v21[1], 4, a3, a4) & 1) == 0)
      {
        v66 = *(this + 1);
        v65 = *(this + 2);
        if (v65)
        {
          atomic_fetch_add_explicit(&v65->__shared_owners_, 1uLL, memory_order_relaxed);
          v25 = *v66;
          std::__shared_weak_count::__release_shared[abi:ne200100](v65);
        }

        else
        {
          v25 = *v66;
        }

        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "kReadResponse");
          goto LABEL_146;
        }

        goto LABEL_284;
      }

      shared_weak_owners = v21[1].__shared_weak_owners_;
      if (!shared_weak_owners)
      {
        v92 = *(this + 1);
        v91 = *(this + 2);
        if (v91)
        {
          atomic_fetch_add_explicit(&v91->__shared_owners_, 1uLL, memory_order_relaxed);
          v25 = *v92;
          std::__shared_weak_count::__release_shared[abi:ne200100](v91);
        }

        else
        {
          v25 = *v92;
        }

        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "kReadResponse");
          goto LABEL_236;
        }

        goto LABEL_284;
      }

      if ((*(shared_weak_owners + 20) & 1) == 0)
      {
        v34 = *(this + 1);
        v33 = *(this + 2);
        if (v33)
        {
          atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
          v25 = *v34;
          std::__shared_weak_count::__release_shared[abi:ne200100](v33);
        }

        else
        {
          v25 = *v34;
        }

        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "kReadResponse");
          goto LABEL_278;
        }

        goto LABEL_284;
      }

      v125 = *(this + 3);
      v126 = *(shared_weak_owners + 8);
      *__p = v21 + 1;
      *&__p[8] = v21;
      v127 = telephonytransport::TransactionManager::fulfilPromise(v125, v126, 4, __p);
      if (*&__p[8])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*&__p[8]);
      }

      if ((v127 & 1) == 0)
      {
        v129 = *(this + 1);
        v128 = *(this + 2);
        if (v128)
        {
          atomic_fetch_add_explicit(&v128->__shared_owners_, 1uLL, memory_order_relaxed);
          v10 = *v129;
          std::__shared_weak_count::__release_shared[abi:ne200100](v128);
        }

        else
        {
          v10 = *v129;
        }

        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "kReadResponse");
          goto LABEL_323;
        }
      }

      goto LABEL_285;
    case 5:
      *&__p[8] = 0uLL;
      *__p = &unk_2A1E9E7E0;
      if ((telephonytransport::deserializeMessage(__p, 5, a3, a4) & 1) == 0)
      {
        v54 = *(this + 1);
        v53 = *(this + 2);
        if (v53)
        {
          atomic_fetch_add_explicit(&v53->__shared_owners_, 1uLL, memory_order_relaxed);
          v55 = *v54;
          std::__shared_weak_count::__release_shared[abi:ne200100](v53);
        }

        else
        {
          v55 = *v54;
        }

        if (!os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_336;
        }

        std::string::basic_string[abi:ne200100]<0>(buf, "kReadIndication");
        if (v180 >= 0)
        {
          v77 = buf;
        }

        else
        {
          v77 = *buf;
        }

        *v181 = 136315394;
        *&v181[4] = v77;
        v182 = 2048;
        v183 = a4;
        v78 = "Failed to deserialize message. MessageType: %s, length: %zu";
        v79 = v55;
        goto LABEL_334;
      }

      if (!*&__p[16])
      {
        v76 = *(this + 1);
        v75 = *(this + 2);
        if (v75)
        {
          atomic_fetch_add_explicit(&v75->__shared_owners_, 1uLL, memory_order_relaxed);
          v15 = *v76;
          std::__shared_weak_count::__release_shared[abi:ne200100](v75);
        }

        else
        {
          v15 = *v76;
        }

        if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_336;
        }

        std::string::basic_string[abi:ne200100]<0>(buf, "kReadIndication");
        if (v180 >= 0)
        {
          v152 = buf;
        }

        else
        {
          v152 = *buf;
        }

        *v181 = 136315394;
        *&v181[4] = "messageId";
        v182 = 2080;
        v183 = v152;
        v78 = "%s is missing. Skipping MessageType: %s";
        goto LABEL_333;
      }

      if ((*(*&__p[16] + 20) & 2) == 0)
      {
        v14 = *(this + 1);
        v13 = *(this + 2);
        if (v13)
        {
          atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
          v15 = *v14;
          std::__shared_weak_count::__release_shared[abi:ne200100](v13);
        }

        else
        {
          v15 = *v14;
        }

        if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_336;
        }

        std::string::basic_string[abi:ne200100]<0>(buf, "kReadIndication");
        if (v180 >= 0)
        {
          v155 = buf;
        }

        else
        {
          v155 = *buf;
        }

        *v181 = 136315394;
        *&v181[4] = "messageId()->hasTransportToken";
        v182 = 2080;
        v183 = v155;
        v78 = "%s is missing. Skipping MessageType: %s";
LABEL_333:
        v79 = v15;
LABEL_334:
        _os_log_error_impl(&dword_29808D000, v79, OS_LOG_TYPE_ERROR, v78, v181, 0x16u);
        if (v180 < 0)
        {
          operator delete(*buf);
        }

        goto LABEL_336;
      }

      if (!*&__p[8])
      {
        v157 = *(this + 1);
        v156 = *(this + 2);
        if (v156)
        {
          atomic_fetch_add_explicit(&v156->__shared_owners_, 1uLL, memory_order_relaxed);
          v15 = *v157;
          std::__shared_weak_count::__release_shared[abi:ne200100](v156);
        }

        else
        {
          v15 = *v157;
        }

        if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_336;
        }

        std::string::basic_string[abi:ne200100]<0>(buf, "kReadIndication");
        if (v180 >= 0)
        {
          v165 = buf;
        }

        else
        {
          v165 = *buf;
        }

        *v181 = 136315394;
        *&v181[4] = "data";
        v182 = 2080;
        v183 = v165;
        v78 = "%s is missing. Skipping MessageType: %s";
        goto LABEL_333;
      }

      v103 = *(*&__p[8] + 8);
      if (!v103)
      {
        v105 = *(this + 1);
        v104 = *(this + 2);
        if (v104)
        {
          atomic_fetch_add_explicit(&v104->__shared_owners_, 1uLL, memory_order_relaxed);
          v106 = *v105;
          std::__shared_weak_count::__release_shared[abi:ne200100](v104);
        }

        else
        {
          v106 = *v105;
        }

        if (os_log_type_enabled(v106, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&dword_29808D000, v106, OS_LOG_TYPE_FAULT, "Zero size message is not expected in read indication", buf, 2u);
        }

        __break(1u);
        goto LABEL_290;
      }

      v170 = **&__p[8];
      v173 = *(*&__p[16] + 16);
      LOBYTE(v172) = 1;
      *buf = v170;
      *v181 = v103;
      v171 = *(this + 7);
      if (!v171)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      (*(*v171 + 48))(v171, &v173, &v172, buf, v181);
LABEL_336:
      telephonytransport::PCIReadIndication::~PCIReadIndication(__p);
      goto LABEL_285;
    case 6:
      *&v16 = 0xAAAAAAAAAAAAAAAALL;
      *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v176 = 2863311530;
      *&__p[8] = v16;
      *__p = &unk_2A1E9E9A0;
      v175 = 0;
      if (telephonytransport::deserializeMessage(__p, 6, a3, a4))
      {
        v17 = v175;
        if (v175)
        {
          if ((*(v175 + 20) & 2) != 0)
          {
            v107 = BYTE4(v176);
            if ((v176 & 0x400000000) != 0)
            {
              if ((v176 & 0x100000000) != 0)
              {
LABEL_290:
                if ((v107 & 2) != 0)
                {
                  v166 = *(v17 + 16);
                  v172 = v176;
                  v173 = v166;
                  *v181 = *&__p[16];
                  *buf = *&__p[8];
                  v167 = *(this + 11);
                  if (!v167)
                  {
                    std::__throw_bad_function_call[abi:ne200100]();
                  }

                  (*(*v167 + 48))(v167, &v173, &v172, buf, v181);
                  goto LABEL_354;
                }

                v162 = *(this + 1);
                v161 = *(this + 2);
                if (v161)
                {
                  atomic_fetch_add_explicit(&v161->__shared_owners_, 1uLL, memory_order_relaxed);
                  v20 = *v162;
                  std::__shared_weak_count::__release_shared[abi:ne200100](v161);
                }

                else
                {
                  v20 = *v162;
                }

                if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
                {
                  std::string::basic_string[abi:ne200100]<0>(buf, "kStatusIndication");
                  if (v180 >= 0)
                  {
                    v169 = buf;
                  }

                  else
                  {
                    v169 = *buf;
                  }

                  *v181 = 136315394;
                  *&v181[4] = "Arg2";
                  v182 = 2080;
                  v183 = v169;
                  v83 = "%s is missing. Skipping MessageType: %s";
LABEL_351:
                  v84 = v20;
                  goto LABEL_352;
                }
              }

              else
              {
                v151 = *(this + 1);
                v150 = *(this + 2);
                if (v150)
                {
                  atomic_fetch_add_explicit(&v150->__shared_owners_, 1uLL, memory_order_relaxed);
                  v20 = *v151;
                  std::__shared_weak_count::__release_shared[abi:ne200100](v150);
                }

                else
                {
                  v20 = *v151;
                }

                if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
                {
                  std::string::basic_string[abi:ne200100]<0>(buf, "kStatusIndication");
                  if (v180 >= 0)
                  {
                    v168 = buf;
                  }

                  else
                  {
                    v168 = *buf;
                  }

                  *v181 = 136315394;
                  *&v181[4] = "Arg1";
                  v182 = 2080;
                  v183 = v168;
                  v83 = "%s is missing. Skipping MessageType: %s";
                  goto LABEL_351;
                }
              }
            }

            else
            {
              v109 = *(this + 1);
              v108 = *(this + 2);
              if (v108)
              {
                atomic_fetch_add_explicit(&v108->__shared_owners_, 1uLL, memory_order_relaxed);
                v20 = *v109;
                std::__shared_weak_count::__release_shared[abi:ne200100](v108);
              }

              else
              {
                v20 = *v109;
              }

              if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
              {
                std::string::basic_string[abi:ne200100]<0>(buf, "kStatusIndication");
                if (v180 >= 0)
                {
                  v163 = buf;
                }

                else
                {
                  v163 = *buf;
                }

                *v181 = 136315394;
                *&v181[4] = "Status";
                v182 = 2080;
                v183 = v163;
                v83 = "%s is missing. Skipping MessageType: %s";
                goto LABEL_351;
              }
            }
          }

          else
          {
            v19 = *(this + 1);
            v18 = *(this + 2);
            if (v18)
            {
              atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
              v20 = *v19;
              std::__shared_weak_count::__release_shared[abi:ne200100](v18);
            }

            else
            {
              v20 = *v19;
            }

            if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              std::string::basic_string[abi:ne200100]<0>(buf, "kStatusIndication");
              if (v180 >= 0)
              {
                v158 = buf;
              }

              else
              {
                v158 = *buf;
              }

              *v181 = 136315394;
              *&v181[4] = "messageId()->hasTransportToken";
              v182 = 2080;
              v183 = v158;
              v83 = "%s is missing. Skipping MessageType: %s";
              goto LABEL_351;
            }
          }
        }

        else
        {
          v81 = *(this + 1);
          v80 = *(this + 2);
          if (v80)
          {
            atomic_fetch_add_explicit(&v80->__shared_owners_, 1uLL, memory_order_relaxed);
            v20 = *v81;
            std::__shared_weak_count::__release_shared[abi:ne200100](v80);
          }

          else
          {
            v20 = *v81;
          }

          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            std::string::basic_string[abi:ne200100]<0>(buf, "kStatusIndication");
            if (v180 >= 0)
            {
              v153 = buf;
            }

            else
            {
              v153 = *buf;
            }

            *v181 = 136315394;
            *&v181[4] = "messageId";
            v182 = 2080;
            v183 = v153;
            v83 = "%s is missing. Skipping MessageType: %s";
            goto LABEL_351;
          }
        }
      }

      else
      {
        v57 = *(this + 1);
        v56 = *(this + 2);
        if (v56)
        {
          atomic_fetch_add_explicit(&v56->__shared_owners_, 1uLL, memory_order_relaxed);
          v58 = *v57;
          std::__shared_weak_count::__release_shared[abi:ne200100](v56);
        }

        else
        {
          v58 = *v57;
        }

        if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
        {
          std::string::basic_string[abi:ne200100]<0>(buf, "kStatusIndication");
          if (v180 >= 0)
          {
            v82 = buf;
          }

          else
          {
            v82 = *buf;
          }

          *v181 = 136315394;
          *&v181[4] = v82;
          v182 = 2048;
          v183 = a4;
          v83 = "Failed to deserialize message. MessageType: %s, length: %zu";
          v84 = v58;
LABEL_352:
          _os_log_error_impl(&dword_29808D000, v84, OS_LOG_TYPE_ERROR, v83, v181, 0x16u);
          if (v180 < 0)
          {
            operator delete(*buf);
          }
        }
      }

LABEL_354:
      telephonytransport::PCIStatusIndication::~PCIStatusIndication(__p);
      goto LABEL_285;
    case 8:
      v21 = operator new(0x38uLL);
      v21->__shared_owners_ = 0;
      v21->__shared_weak_owners_ = 0;
      v21->__vftable = &unk_2A1E9E388;
      v21[1].__vftable = &unk_2A1E9EA10;
      v21[1].__shared_owners_ = 0;
      HIDWORD(v21[1].__shared_weak_owners_) = 0;
      LODWORD(v21[2].__vftable) = 0;
      if ((telephonytransport::deserializeMessage(&v21[1], 8, a3, a4) & 1) == 0)
      {
        v64 = *(this + 1);
        v63 = *(this + 2);
        if (v63)
        {
          atomic_fetch_add_explicit(&v63->__shared_owners_, 1uLL, memory_order_relaxed);
          v25 = *v64;
          std::__shared_weak_count::__release_shared[abi:ne200100](v63);
        }

        else
        {
          v25 = *v64;
        }

        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "kWriteResponse");
          goto LABEL_146;
        }

        goto LABEL_284;
      }

      v29 = v21[1].__shared_owners_;
      if (!v29)
      {
        v90 = *(this + 1);
        v89 = *(this + 2);
        if (v89)
        {
          atomic_fetch_add_explicit(&v89->__shared_owners_, 1uLL, memory_order_relaxed);
          v25 = *v90;
          std::__shared_weak_count::__release_shared[abi:ne200100](v89);
        }

        else
        {
          v25 = *v90;
        }

        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "kWriteResponse");
          goto LABEL_236;
        }

        goto LABEL_284;
      }

      if ((*(v29 + 20) & 1) == 0)
      {
        v31 = *(this + 1);
        v30 = *(this + 2);
        if (v30)
        {
          atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
          v25 = *v31;
          std::__shared_weak_count::__release_shared[abi:ne200100](v30);
        }

        else
        {
          v25 = *v31;
        }

        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "kWriteResponse");
          goto LABEL_278;
        }

        goto LABEL_284;
      }

      v120 = *(this + 3);
      v121 = *(v29 + 8);
      *__p = v21 + 1;
      *&__p[8] = v21;
      v122 = telephonytransport::TransactionManager::fulfilPromise(v120, v121, 8, __p);
      if (*&__p[8])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*&__p[8]);
      }

      if ((v122 & 1) == 0)
      {
        v124 = *(this + 1);
        v123 = *(this + 2);
        if (v123)
        {
          atomic_fetch_add_explicit(&v123->__shared_owners_, 1uLL, memory_order_relaxed);
          v10 = *v124;
          std::__shared_weak_count::__release_shared[abi:ne200100](v123);
        }

        else
        {
          v10 = *v124;
        }

        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "kWriteResponse");
          goto LABEL_323;
        }
      }

      goto LABEL_285;
    case 10:
      v21 = operator new(0x30uLL);
      v21->__shared_owners_ = 0;
      v21->__shared_weak_owners_ = 0;
      v21->__vftable = &unk_2A1E9E3D8;
      v21[1].__vftable = &unk_2A1E9E930;
      v21[1].__shared_owners_ = 0;
      p_shared_owners = &v21[1].__shared_owners_;
      v21[1].__shared_weak_owners_ = 0;
      if ((telephonytransport::deserializeMessage(&v21[1], 10, a3, a4) & 1) == 0)
      {
        v72 = *(this + 1);
        v71 = *(this + 2);
        if (v71)
        {
          atomic_fetch_add_explicit(&v71->__shared_owners_, 1uLL, memory_order_relaxed);
          v25 = *v72;
          std::__shared_weak_count::__release_shared[abi:ne200100](v71);
        }

        else
        {
          v25 = *v72;
        }

        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "kFreeResponse");
          goto LABEL_146;
        }

        goto LABEL_284;
      }

      v47 = *p_shared_owners;
      if (!*p_shared_owners)
      {
        v98 = *(this + 1);
        v97 = *(this + 2);
        if (v97)
        {
          atomic_fetch_add_explicit(&v97->__shared_owners_, 1uLL, memory_order_relaxed);
          v25 = *v98;
          std::__shared_weak_count::__release_shared[abi:ne200100](v97);
        }

        else
        {
          v25 = *v98;
        }

        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "kFreeResponse");
          goto LABEL_236;
        }

        goto LABEL_284;
      }

      if ((*(v47 + 20) & 1) == 0)
      {
        v49 = *(this + 1);
        v48 = *(this + 2);
        if (v48)
        {
          atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
          v25 = *v49;
          std::__shared_weak_count::__release_shared[abi:ne200100](v48);
        }

        else
        {
          v25 = *v49;
        }

        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "kFreeResponse");
          goto LABEL_278;
        }

        goto LABEL_284;
      }

      v140 = *(this + 3);
      v141 = *(v47 + 8);
      *__p = v21 + 1;
      *&__p[8] = v21;
      v142 = telephonytransport::TransactionManager::fulfilPromise(v140, v141, 10, __p);
      if (*&__p[8])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*&__p[8]);
      }

      if ((v142 & 1) == 0)
      {
        v144 = *(this + 1);
        v143 = *(this + 2);
        if (v143)
        {
          atomic_fetch_add_explicit(&v143->__shared_owners_, 1uLL, memory_order_relaxed);
          v10 = *v144;
          std::__shared_weak_count::__release_shared[abi:ne200100](v143);
        }

        else
        {
          v10 = *v144;
        }

        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "kFreeResponse");
          goto LABEL_323;
        }
      }

      goto LABEL_285;
    case 12:
      v21 = operator new(0x38uLL);
      v21->__shared_owners_ = 0;
      v21->__shared_weak_owners_ = 0;
      v21->__vftable = &unk_2A1E9E428;
      v21[1].__vftable = &unk_2A1E9E658;
      v21[1].__shared_owners_ = 0;
      v21[2].__vftable = 0;
      if ((telephonytransport::deserializeMessage(&v21[1], 12, a3, a4) & 1) == 0)
      {
        v62 = *(this + 1);
        v61 = *(this + 2);
        if (v61)
        {
          atomic_fetch_add_explicit(&v61->__shared_owners_, 1uLL, memory_order_relaxed);
          v25 = *v62;
          std::__shared_weak_count::__release_shared[abi:ne200100](v61);
        }

        else
        {
          v25 = *v62;
        }

        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "kSendImageResponse");
          goto LABEL_146;
        }

        goto LABEL_284;
      }

      v26 = v21[1].__shared_owners_;
      if (!v26)
      {
        v88 = *(this + 1);
        v87 = *(this + 2);
        if (v87)
        {
          atomic_fetch_add_explicit(&v87->__shared_owners_, 1uLL, memory_order_relaxed);
          v25 = *v88;
          std::__shared_weak_count::__release_shared[abi:ne200100](v87);
        }

        else
        {
          v25 = *v88;
        }

        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "kSendImageResponse");
          goto LABEL_236;
        }

        goto LABEL_284;
      }

      if ((*(v26 + 20) & 1) == 0)
      {
        v28 = *(this + 1);
        v27 = *(this + 2);
        if (v27)
        {
          atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
          v25 = *v28;
          std::__shared_weak_count::__release_shared[abi:ne200100](v27);
        }

        else
        {
          v25 = *v28;
        }

        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "kSendImageResponse");
          goto LABEL_278;
        }

        goto LABEL_284;
      }

      v115 = *(this + 3);
      v116 = *(v26 + 8);
      *__p = v21 + 1;
      *&__p[8] = v21;
      v117 = telephonytransport::TransactionManager::fulfilPromise(v115, v116, 12, __p);
      if (*&__p[8])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*&__p[8]);
      }

      if ((v117 & 1) == 0)
      {
        v119 = *(this + 1);
        v118 = *(this + 2);
        if (v118)
        {
          atomic_fetch_add_explicit(&v118->__shared_owners_, 1uLL, memory_order_relaxed);
          v10 = *v119;
          std::__shared_weak_count::__release_shared[abi:ne200100](v118);
        }

        else
        {
          v10 = *v119;
        }

        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "kSendImageResponse");
          goto LABEL_323;
        }
      }

      goto LABEL_285;
    case 14:
      v21 = operator new(0x38uLL);
      v21->__shared_owners_ = 0;
      v21->__shared_weak_owners_ = 0;
      v21->__vftable = &unk_2A1E9E478;
      v21[1].__vftable = &unk_2A1E9E6C8;
      v21[1].__shared_owners_ = 0;
      v21[1].__shared_weak_owners_ = 0;
      v21[2].__vftable = 0;
      if ((telephonytransport::deserializeMessage(&v21[1], 14, a3, a4) & 1) == 0)
      {
        v74 = *(this + 1);
        v73 = *(this + 2);
        if (v73)
        {
          atomic_fetch_add_explicit(&v73->__shared_owners_, 1uLL, memory_order_relaxed);
          v25 = *v74;
          std::__shared_weak_count::__release_shared[abi:ne200100](v73);
        }

        else
        {
          v25 = *v74;
        }

        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "kReadRegisterResponse");
          goto LABEL_146;
        }

        goto LABEL_284;
      }

      v50 = v21[1].__shared_weak_owners_;
      if (!v50)
      {
        v100 = *(this + 1);
        v99 = *(this + 2);
        if (v99)
        {
          atomic_fetch_add_explicit(&v99->__shared_owners_, 1uLL, memory_order_relaxed);
          v25 = *v100;
          std::__shared_weak_count::__release_shared[abi:ne200100](v99);
        }

        else
        {
          v25 = *v100;
        }

        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "kReadRegisterResponse");
          goto LABEL_236;
        }

        goto LABEL_284;
      }

      if ((*(v50 + 20) & 1) == 0)
      {
        v52 = *(this + 1);
        v51 = *(this + 2);
        if (v51)
        {
          atomic_fetch_add_explicit(&v51->__shared_owners_, 1uLL, memory_order_relaxed);
          v25 = *v52;
          std::__shared_weak_count::__release_shared[abi:ne200100](v51);
        }

        else
        {
          v25 = *v52;
        }

        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "kReadRegisterResponse");
          goto LABEL_278;
        }

        goto LABEL_284;
      }

      v145 = *(this + 3);
      v146 = *(v50 + 8);
      *__p = v21 + 1;
      *&__p[8] = v21;
      v147 = telephonytransport::TransactionManager::fulfilPromise(v145, v146, 14, __p);
      if (*&__p[8])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*&__p[8]);
      }

      if ((v147 & 1) == 0)
      {
        v149 = *(this + 1);
        v148 = *(this + 2);
        if (v148)
        {
          atomic_fetch_add_explicit(&v148->__shared_owners_, 1uLL, memory_order_relaxed);
          v10 = *v149;
          std::__shared_weak_count::__release_shared[abi:ne200100](v148);
        }

        else
        {
          v10 = *v149;
        }

        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "kReadRegisterResponse");
          goto LABEL_323;
        }
      }

      goto LABEL_285;
    case 16:
      v21 = operator new(0x30uLL);
      v21->__shared_owners_ = 0;
      v21->__shared_weak_owners_ = 0;
      v21->__vftable = &unk_2A1E9E4C8;
      v21[1].__vftable = &unk_2A1E9E690;
      v21[1].__shared_owners_ = 0;
      v38 = &v21[1].__shared_owners_;
      v21[1].__shared_weak_owners_ = 0;
      if ((telephonytransport::deserializeMessage(&v21[1], 16, a3, a4) & 1) == 0)
      {
        v68 = *(this + 1);
        v67 = *(this + 2);
        if (v67)
        {
          atomic_fetch_add_explicit(&v67->__shared_owners_, 1uLL, memory_order_relaxed);
          v25 = *v68;
          std::__shared_weak_count::__release_shared[abi:ne200100](v67);
        }

        else
        {
          v25 = *v68;
        }

        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "kUnblockReadResponse");
          goto LABEL_146;
        }

        goto LABEL_284;
      }

      v39 = *v38;
      if (!*v38)
      {
        v94 = *(this + 1);
        v93 = *(this + 2);
        if (v93)
        {
          atomic_fetch_add_explicit(&v93->__shared_owners_, 1uLL, memory_order_relaxed);
          v25 = *v94;
          std::__shared_weak_count::__release_shared[abi:ne200100](v93);
        }

        else
        {
          v25 = *v94;
        }

        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "kUnblockReadResponse");
          goto LABEL_236;
        }

        goto LABEL_284;
      }

      if ((*(v39 + 20) & 1) == 0)
      {
        v41 = *(this + 1);
        v40 = *(this + 2);
        if (v40)
        {
          atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
          v25 = *v41;
          std::__shared_weak_count::__release_shared[abi:ne200100](v40);
        }

        else
        {
          v25 = *v41;
        }

        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "kUnblockReadResponse");
          goto LABEL_278;
        }

        goto LABEL_284;
      }

      v130 = *(this + 3);
      v131 = *(v39 + 8);
      *__p = v21 + 1;
      *&__p[8] = v21;
      v132 = telephonytransport::TransactionManager::fulfilPromise(v130, v131, 16, __p);
      if (*&__p[8])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*&__p[8]);
      }

      if ((v132 & 1) == 0)
      {
        v134 = *(this + 1);
        v133 = *(this + 2);
        if (v133)
        {
          atomic_fetch_add_explicit(&v133->__shared_owners_, 1uLL, memory_order_relaxed);
          v10 = *v134;
          std::__shared_weak_count::__release_shared[abi:ne200100](v133);
        }

        else
        {
          v10 = *v134;
        }

        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "kUnblockReadResponse");
          goto LABEL_323;
        }
      }

      goto LABEL_285;
    case 18:
      v21 = operator new(0x30uLL);
      v21->__shared_owners_ = 0;
      v21->__shared_weak_owners_ = 0;
      v21->__vftable = &unk_2A1E9E518;
      v21[1].__vftable = &unk_2A1E9E620;
      v21[1].__shared_owners_ = 0;
      v42 = &v21[1].__shared_owners_;
      v21[1].__shared_weak_owners_ = 0;
      if ((telephonytransport::deserializeMessage(&v21[1], 18, a3, a4) & 1) == 0)
      {
        v70 = *(this + 1);
        v69 = *(this + 2);
        if (v69)
        {
          atomic_fetch_add_explicit(&v69->__shared_owners_, 1uLL, memory_order_relaxed);
          v25 = *v70;
          std::__shared_weak_count::__release_shared[abi:ne200100](v69);
        }

        else
        {
          v25 = *v70;
        }

        if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_284;
        }

        std::string::basic_string[abi:ne200100]<0>(__p, "kFlushReadResponse");
LABEL_146:
        if (__p[23] >= 0)
        {
          v101 = __p;
        }

        else
        {
          v101 = *__p;
        }

        *buf = 136315394;
        *&buf[4] = v101;
        v178 = 2048;
        v179 = a4;
        v102 = "Failed to deserialize message. MessageType: %s, length: %zu";
        goto LABEL_282;
      }

      v43 = *v42;
      if (!*v42)
      {
        v96 = *(this + 1);
        v95 = *(this + 2);
        if (v95)
        {
          atomic_fetch_add_explicit(&v95->__shared_owners_, 1uLL, memory_order_relaxed);
          v25 = *v96;
          std::__shared_weak_count::__release_shared[abi:ne200100](v95);
        }

        else
        {
          v25 = *v96;
        }

        if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_284;
        }

        std::string::basic_string[abi:ne200100]<0>(__p, "kFlushReadResponse");
LABEL_236:
        if (__p[23] >= 0)
        {
          v154 = __p;
        }

        else
        {
          v154 = *__p;
        }

        *buf = 136315394;
        *&buf[4] = v154;
        v178 = 2048;
        v179 = a4;
        v102 = "messageId is missing. Skipping MessageType: %s, length: %zu";
LABEL_282:
        _os_log_error_impl(&dword_29808D000, v25, OS_LOG_TYPE_ERROR, v102, buf, 0x16u);
        if ((__p[23] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }

        goto LABEL_284;
      }

      if ((*(v43 + 20) & 1) == 0)
      {
        v45 = *(this + 1);
        v44 = *(this + 2);
        if (v44)
        {
          atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
          v25 = *v45;
          std::__shared_weak_count::__release_shared[abi:ne200100](v44);
        }

        else
        {
          v25 = *v45;
        }

        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "kFlushReadResponse");
LABEL_278:
          if (__p[23] >= 0)
          {
            v159 = __p;
          }

          else
          {
            v159 = *__p;
          }

          *buf = 136315394;
          *&buf[4] = v159;
          v178 = 2048;
          v179 = a4;
          v102 = "TxnId is missing. Skipping MessageType: %s, length: %zu";
          goto LABEL_282;
        }

LABEL_284:
        std::__shared_weak_count::__release_shared[abi:ne200100](v21);
        goto LABEL_285;
      }

      v135 = *(this + 3);
      v136 = *(v43 + 8);
      *__p = v21 + 1;
      *&__p[8] = v21;
      v137 = telephonytransport::TransactionManager::fulfilPromise(v135, v136, 18, __p);
      if (*&__p[8])
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*&__p[8]);
      }

      if ((v137 & 1) == 0)
      {
        v139 = *(this + 1);
        v138 = *(this + 2);
        if (v138)
        {
          atomic_fetch_add_explicit(&v138->__shared_owners_, 1uLL, memory_order_relaxed);
          v10 = *v139;
          std::__shared_weak_count::__release_shared[abi:ne200100](v138);
        }

        else
        {
          v10 = *v139;
        }

        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "kFlushReadResponse");
LABEL_323:
          if (__p[23] >= 0)
          {
            v164 = __p;
          }

          else
          {
            v164 = *__p;
          }

          *buf = 136315394;
          *&buf[4] = v164;
          v178 = 2048;
          v179 = a4;
          v12 = "Unable to fulfil promise for - MessageType: %s, length: %zu";
LABEL_13:
          _os_log_error_impl(&dword_29808D000, v10, OS_LOG_TYPE_ERROR, v12, buf, 0x16u);
          if ((__p[23] & 0x80000000) != 0)
          {
            operator delete(*__p);
          }
        }
      }

LABEL_285:
      v160 = *MEMORY[0x29EDCA608];
      return;
    default:
      v36 = *(this + 1);
      v35 = *(this + 2);
      if (v35)
      {
        atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
        v37 = *v36;
        std::__shared_weak_count::__release_shared[abi:ne200100](v35);
      }

      else
      {
        v37 = *v36;
      }

      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        *__p = 134217984;
        *&__p[4] = a4;
        _os_log_error_impl(&dword_29808D000, v37, OS_LOG_TYPE_ERROR, "Skipping Unknown message type of length: %zu", __p, 0xCu);
      }

      goto LABEL_285;
  }
}

void sub_2980A3430(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  telephonytransport::PCIStatusIndication::~PCIStatusIndication(va);
  _Unwind_Resume(a1);
}

void telephonytransport::PCIClientTransport::~PCIClientTransport(telephonytransport::PCIClientTransport *this)
{
  *this = &unk_2A1E9E210;
  v2 = *(this + 13);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__function::__value_func<void ()(unsigned int,unsigned int,unsigned long long,unsigned long long)>::~__value_func[abi:ne200100](this + 64);
  std::__function::__value_func<void ()(unsigned int,BOOL,unsigned char *,unsigned long)>::~__value_func[abi:ne200100](this + 32);
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    std::default_delete<telephonytransport::TransactionManager>::operator()[abi:ne200100](v3);
  }

  v4 = *(this + 2);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

{
  *this = &unk_2A1E9E210;
  v2 = *(this + 13);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__function::__value_func<void ()(unsigned int,unsigned int,unsigned long long,unsigned long long)>::~__value_func[abi:ne200100](this + 64);
  std::__function::__value_func<void ()(unsigned int,BOOL,unsigned char *,unsigned long)>::~__value_func[abi:ne200100](this + 32);
  v3 = *(this + 3);
  *(this + 3) = 0;
  if (v3)
  {
    std::default_delete<telephonytransport::TransactionManager>::operator()[abi:ne200100](v3);
  }

  v4 = *(this + 2);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  operator delete(this);
}

void std::default_delete<telephonytransport::TransactionManager>::operator()[abi:ne200100](uint64_t a1)
{
  std::__tree<std::__value_type<unsigned long long,std::promise<telephonytransport::TransactionResponse>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::promise<telephonytransport::TransactionResponse>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::promise<telephonytransport::TransactionResponse>>>>::destroy(*(a1 + 72));
  std::mutex::~mutex(a1);

  operator delete(v2);
}

void std::__tree<std::__value_type<unsigned long long,std::promise<telephonytransport::TransactionResponse>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::promise<telephonytransport::TransactionResponse>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::promise<telephonytransport::TransactionResponse>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<unsigned long long,std::promise<telephonytransport::TransactionResponse>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::promise<telephonytransport::TransactionResponse>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::promise<telephonytransport::TransactionResponse>>>>::destroy(*a1);
    std::__tree<std::__value_type<unsigned long long,std::promise<telephonytransport::TransactionResponse>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::promise<telephonytransport::TransactionResponse>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::promise<telephonytransport::TransactionResponse>>>>::destroy(a1[1]);
    std::promise<telephonytransport::TransactionResponse>::~promise(a1 + 5);

    operator delete(a1);
  }
}

void std::__shared_ptr_pointer<telephonytransport::PCIClientTransport *,std::shared_ptr<telephonytransport::PCIClientTransport>::__shared_ptr_default_delete<telephonytransport::PCIClientTransport,telephonytransport::PCIClientTransport>,std::allocator<telephonytransport::PCIClientTransport>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<telephonytransport::PCIClientTransport *,std::shared_ptr<telephonytransport::PCIClientTransport>::__shared_ptr_default_delete<telephonytransport::PCIClientTransport,telephonytransport::PCIClientTransport>,std::allocator<telephonytransport::PCIClientTransport>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<telephonytransport::PCIClientTransport *,std::shared_ptr<telephonytransport::PCIClientTransport>::__shared_ptr_default_delete<telephonytransport::PCIClientTransport,telephonytransport::PCIClientTransport>,std::allocator<telephonytransport::PCIClientTransport>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::future<telephonytransport::TransactionResponse>::get(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  __lk.__m_ = (v3 + 24);
  *&__lk.__owns_ = 0xAAAAAAAAAAAAAA01;
  std::mutex::lock((v3 + 24));
  std::__assoc_sub_state::__sub_wait(v3, &__lk);
  v4 = *(v3 + 16);
  v8.__ptr_ = 0;
  std::exception_ptr::~exception_ptr(&v8);
  if (v4)
  {
    std::exception_ptr::exception_ptr(&v8, (v3 + 16));
    v7.__ptr_ = &v8;
    std::rethrow_exception(v7);
    __break(1u);
  }

  else
  {
    *a1 = *(v3 + 144);
    v5 = *(v3 + 160);
    *(a1 + 8) = *(v3 + 152);
    *(a1 + 16) = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }

    if (__lk.__owns_)
    {
      std::mutex::unlock(__lk.__m_);
    }

    if (!atomic_fetch_add((v3 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      v6 = *(*v3 + 16);

      v6(v3);
    }
  }
}

void sub_2980A38CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::exception_ptr a10, std::mutex *a11, char a12)
{
  std::exception_ptr::~exception_ptr(&a10);
  if (a12 == 1)
  {
    std::mutex::unlock(a11);
  }

  if (v12)
  {
    if (!atomic_fetch_add(v12 + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(*v12 + 16))(v12);
    }
  }

  _Unwind_Resume(a1);
}

uint64_t std::__assoc_sub_state::wait_until<std::chrono::steady_clock,std::chrono::duration<long long,std::ratio<1l,1000000000l>>>(uint64_t a1, std::chrono::duration<long long, std::ratio<1, 1000000000>>::rep *a2)
{
  m = (a1 + 24);
  v14.__m_ = (a1 + 24);
  *&v14.__owns_ = 0xAAAAAAAAAAAAAA01;
  std::mutex::lock((a1 + 24));
  v5 = *(a1 + 136);
  if ((v5 & 8) != 0)
  {
    v12 = 2;
    goto LABEL_26;
  }

  if ((v5 & 4) != 0)
  {
    v12 = 0;
    goto LABEL_26;
  }

  while (std::chrono::steady_clock::now().__d_.__rep_ < *a2)
  {
    if (*a2 > std::chrono::steady_clock::now().__d_.__rep_)
    {
      v6 = *a2;
      v7.__d_.__rep_ = v6 - std::chrono::steady_clock::now().__d_.__rep_;
      if (v7.__d_.__rep_ >= 1)
      {
        std::chrono::steady_clock::now();
        v8.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
        if (v8.__d_.__rep_)
        {
          if (v8.__d_.__rep_ < 1)
          {
            if (v8.__d_.__rep_ >= 0xFFDF3B645A1CAC09)
            {
              goto LABEL_13;
            }

            v9 = 0x8000000000000000;
          }

          else
          {
            if (v8.__d_.__rep_ > 0x20C49BA5E353F7)
            {
              v9 = 0x7FFFFFFFFFFFFFFFLL;
              goto LABEL_14;
            }

LABEL_13:
            v9 = 1000 * v8.__d_.__rep_;
LABEL_14:
            if (v9 > (v7.__d_.__rep_ ^ 0x7FFFFFFFFFFFFFFFLL))
            {
              v10.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
              goto LABEL_17;
            }
          }
        }

        else
        {
          v9 = 0;
        }

        v10.__d_.__rep_ = v9 + v7.__d_.__rep_;
LABEL_17:
        std::condition_variable::__do_timed_wait((a1 + 88), &v14, v10);
        std::chrono::steady_clock::now();
      }

      std::chrono::steady_clock::now();
    }

    v11 = *(a1 + 136);
    if ((v11 & 4) != 0)
    {
      goto LABEL_24;
    }
  }

  v11 = *(a1 + 136);
LABEL_24:
  v12 = ((v11 >> 2) & 1) == 0;
  if (v14.__owns_)
  {
    m = v14.__m_;
LABEL_26:
    std::mutex::unlock(m);
  }

  return v12;
}

void std::__shared_ptr_emplace<telephonytransport::PCICreateResponse>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E9E2E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<telephonytransport::PCIReadResponse>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E9E338;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<telephonytransport::PCIWriteResponse>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E9E388;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<telephonytransport::PCIFreeResponse>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E9E3D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<telephonytransport::PCISendImageResponse>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E9E428;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<telephonytransport::PCIReadRegisterResponse>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E9E478;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<telephonytransport::PCIUnblockReadResponse>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E9E4C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<telephonytransport::PCIFlushReadResponse>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E9E518;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void telephonytransport::EthernetIfaceToSocketForwarder::create(uint64_t a1@<X0>, uint64_t *a2@<X1>, NSObject **a3@<X2>, char *a4@<X3>, void *a5@<X8>)
{
  v31 = 0xAAAAAAAAAAAAAAAALL;
  v32 = 0xAAAAAAAAAAAAAAAALL;
  v29 = 0;
  v30 = 0;
  v28 = 0;
  telephonytransport::BaseProtocol::create(&v29, &v28, a2, 1, a4, &v31);
  if (v28)
  {
    dispatch_release(v28);
  }

  v9 = v30;
  if (v30)
  {
    std::__shared_weak_count::__release_weak(v30);
  }

  v10 = v31;
  if (v31)
  {
    v11 = operator new(0x28uLL);
    *v11 = &unk_2A1E9E568;
    v11[1] = v10;
    v12 = v32;
    v31 = 0;
    v32 = 0;
    v11[3] = 0;
    v11[4] = 0;
    v11[2] = v12;
    v13 = operator new(0x20uLL);
    v13->__shared_weak_owners_ = 0;
    v13->__vftable = &unk_2A1E9E5A8;
    v13->__shared_owners_ = 0;
    v13[1].__vftable = v11;
    *&v27 = 0xAAAAAAAAAAAAAAAALL;
    *(&v27 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v25 = v11;
    v26 = v13;
    atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v14 = *a3;
    object = v14;
    if (v14)
    {
      dispatch_retain(v14);
    }

    if (*(a1 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v19, *a1, *(a1 + 8));
    }

    else
    {
      v19 = *a1;
    }

    v20 = 1;
    v22 = 9;
    strcpy(__p, "ip or ip6");
    v23 = 0x100000000;
    telephonytransport::NetworkIface::create(&v25, &object, &v19, a4, &v27);
    if (v22 < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v19.__r_.__value_.__l.__data_);
    }

    if (object)
    {
      dispatch_release(object);
    }

    if (v26)
    {
      std::__shared_weak_count::__release_weak(v26);
    }

    v16 = v27;
    v27 = 0uLL;
    v17 = v11[4];
    *(v11 + 3) = v16;
    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
      v18 = *(&v27 + 1);
      *a5 = v11;
      a5[1] = v13;
      if (v18)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v18);
      }
    }

    else
    {
      *a5 = v11;
      a5[1] = v13;
    }
  }

  else
  {
    v15 = *telephonytransport::getDefaultOSLogHandle(v9);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v19.__r_.__value_.__l.__data_) = 0;
      _os_log_error_impl(&dword_29808D000, v15, OS_LOG_TYPE_ERROR, "Failed to create destination write only protocol", &v19, 2u);
    }

    *a5 = 0;
    a5[1] = 0;
  }

  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v32);
  }
}

void sub_2980A4158(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (v21)
  {
    dispatch_release(v21);
  }

  if (a20)
  {
    std::__shared_weak_count::__release_weak(a20);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  v24 = *(v22 - 56);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  _Unwind_Resume(a1);
}

__n128 telephonytransport::EthernetIfaceToSocketForwarder::EthernetIfaceToSocketForwarder(uint64_t a1, __n128 *a2)
{
  *a1 = &unk_2A1E9E568;
  result = *a2;
  *(a1 + 8) = *a2;
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  return result;
}

{
  *a1 = &unk_2A1E9E568;
  result = *a2;
  *(a1 + 8) = *a2;
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  return result;
}

uint64_t telephonytransport::EthernetIfaceToSocketForwarder::init(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v4 = *(a1 + 32);
  *(a1 + 24) = v3;
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return 1;
}

void telephonytransport::EthernetIfaceToSocketForwarder::~EthernetIfaceToSocketForwarder(telephonytransport::EthernetIfaceToSocketForwarder *this)
{
  *this = &unk_2A1E9E568;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

{
  *this = &unk_2A1E9E568;
  v2 = *(this + 4);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  operator delete(this);
}

void std::__shared_ptr_pointer<telephonytransport::EthernetIfaceToSocketForwarder *,std::shared_ptr<telephonytransport::EthernetIfaceToSocketForwarder>::__shared_ptr_default_delete<telephonytransport::EthernetIfaceToSocketForwarder,telephonytransport::EthernetIfaceToSocketForwarder>,std::allocator<telephonytransport::EthernetIfaceToSocketForwarder>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<telephonytransport::EthernetIfaceToSocketForwarder *,std::shared_ptr<telephonytransport::EthernetIfaceToSocketForwarder>::__shared_ptr_default_delete<telephonytransport::EthernetIfaceToSocketForwarder,telephonytransport::EthernetIfaceToSocketForwarder>,std::allocator<telephonytransport::EthernetIfaceToSocketForwarder>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<telephonytransport::EthernetIfaceToSocketForwarder *,std::shared_ptr<telephonytransport::EthernetIfaceToSocketForwarder>::__shared_ptr_default_delete<telephonytransport::EthernetIfaceToSocketForwarder,telephonytransport::EthernetIfaceToSocketForwarder>,std::allocator<telephonytransport::EthernetIfaceToSocketForwarder>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *telephonytransport::toString@<X0>(unsigned int a1@<W0>, void *a2@<X8>)
{
  if (a1 > 0x13)
  {
    v2 = "???";
  }

  else
  {
    v2 = (&off_29EE89D50)[a1];
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v2);
}

uint64_t telephonytransport::deserializeMessage(uint64_t a1, int a2, unsigned __int8 *a3, uint64_t a4)
{
  if (!a4)
  {
    return 1;
  }

  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v7[0] = v5;
  v7[1] = v5;
  PB::Reader::Reader(v7, a3);
  return (*(*a1 + 16))(a1, v7);
}

uint64_t telephonytransport::toPCIMessageType(uint64_t this)
{
  if ((this - 1) >= 0x12)
  {
    return 0;
  }

  else
  {
    return this;
  }
}

void *telephonytransport::PCIFlushReadResponse::PCIFlushReadResponse(void *this)
{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_2A1E9E620;
  return this;
}

{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_2A1E9E620;
  return this;
}

void telephonytransport::PCIFlushReadResponse::~PCIFlushReadResponse(telephonytransport::PCIFlushReadResponse *this)
{
  v2 = *(this + 1);
  *this = &unk_2A1E9E620;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  telephonytransport::PCIFlushReadResponse::~PCIFlushReadResponse(this);

  operator delete(v1);
}

telephonytransport::PCIFlushReadResponse *telephonytransport::PCIFlushReadResponse::PCIFlushReadResponse(telephonytransport::PCIFlushReadResponse *this, const telephonytransport::PCIFlushReadResponse *a2)
{
  *this = &unk_2A1E9E620;
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  v5 = *(a2 + 1);
  if (v5)
  {
    v6 = operator new(0x18uLL);
    *v4 = telephonytransport::PCIMessageId::PCIMessageId(v6, v5);
  }

  if (*(a2 + 20))
  {
    v7 = *(a2 + 4);
    *(this + 20) = 1;
    *(this + 4) = v7;
  }

  return this;
}

uint64_t telephonytransport::PCIFlushReadResponse::operator=(uint64_t a1, const telephonytransport::PCIFlushReadResponse *a2)
{
  if (a1 != a2)
  {
    memset(v6, 170, sizeof(v6));
    telephonytransport::PCIFlushReadResponse::PCIFlushReadResponse(v6, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v6[1];
    v6[1] = v3;
    LODWORD(v3) = *(a1 + 16);
    v4 = *(a1 + 20);
    *(a1 + 16) = v6[2];
    v6[2] = __PAIR64__(v4, v3);
    telephonytransport::PCIFlushReadResponse::~PCIFlushReadResponse(v6);
  }

  return a1;
}

uint64_t telephonytransport::swap(uint64_t this, telephonytransport::PCIFlushReadResponse *a2, telephonytransport::PCIFlushReadResponse *a3)
{
  v3 = *(this + 20);
  *(this + 20) = *(a2 + 5);
  *(a2 + 5) = v3;
  v4 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v4;
  LODWORD(v4) = *(this + 16);
  *(this + 16) = *(a2 + 4);
  *(a2 + 4) = v4;
  return this;
}

uint64_t telephonytransport::PCIFlushReadResponse::PCIFlushReadResponse(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2A1E9E620;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  v4 = *(a2 + 8);
  *(a2 + 8) = 0;
  v5 = *(a1 + 8);
  *(a1 + 8) = v4;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t telephonytransport::PCIFlushReadResponse::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    memset(v6, 170, sizeof(v6));
    telephonytransport::PCIFlushReadResponse::PCIFlushReadResponse(v6, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v6[1];
    v6[1] = v3;
    LODWORD(v3) = *(a1 + 16);
    v4 = *(a1 + 20);
    *(a1 + 16) = v6[2];
    v6[2] = __PAIR64__(v4, v3);
    telephonytransport::PCIFlushReadResponse::~PCIFlushReadResponse(v6);
  }

  return a1;
}

uint64_t telephonytransport::PCIFlushReadResponse::formatText(telephonytransport::PCIFlushReadResponse *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "messageId");
  }

  if (*(this + 20))
  {
    v6 = *(this + 4);
    PB::TextFormatter::format(a2, "result");
  }

  return MEMORY[0x2A1C68DE0](a2);
}

uint64_t telephonytransport::PCIFlushReadResponse::readFrom(telephonytransport::PCIFlushReadResponse *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    while (1)
    {
      v7 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        break;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = (v7 + v2);
      v12 = v2 + 1;
      while (1)
      {
        *(a2 + 1) = v12;
        v13 = *v11++;
        v10 |= (v13 & 0x7F) << v8;
        if ((v13 & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        ++v12;
        v14 = v9++ > 8;
        if (v14)
        {
          goto LABEL_26;
        }
      }

LABEL_18:
      if ((v10 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_51;
      }

      if ((v10 >> 3) == 2)
      {
        *(this + 20) |= 1u;
        v25 = *(a2 + 1);
        v24 = *(a2 + 2);
        v26 = *a2;
        if (v25 > 0xFFFFFFFFFFFFFFF5 || v25 + 10 > v24)
        {
          v33 = 0;
          v34 = 0;
          v29 = 0;
          v35 = (v26 + v25);
          v18 = v24 >= v25;
          v36 = v24 - v25;
          if (!v18)
          {
            v36 = 0;
          }

          v37 = v25 + 1;
          while (1)
          {
            if (!v36)
            {
              LODWORD(v29) = 0;
              *(a2 + 24) = 1;
              goto LABEL_46;
            }

            v38 = *v35;
            *(a2 + 1) = v37;
            v29 |= (v38 & 0x7F) << v33;
            if ((v38 & 0x80) == 0)
            {
              break;
            }

            v33 += 7;
            ++v35;
            --v36;
            ++v37;
            v14 = v34++ > 8;
            if (v14)
            {
LABEL_42:
              LODWORD(v29) = 0;
              goto LABEL_46;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v29) = 0;
          }
        }

        else
        {
          v27 = 0;
          v28 = 0;
          v29 = 0;
          v30 = (v26 + v25);
          v31 = v25 + 1;
          while (1)
          {
            *(a2 + 1) = v31;
            v32 = *v30++;
            v29 |= (v32 & 0x7F) << v27;
            if ((v32 & 0x80) == 0)
            {
              break;
            }

            v27 += 7;
            ++v31;
            v14 = v28++ > 8;
            if (v14)
            {
              goto LABEL_42;
            }
          }
        }

LABEL_46:
        *(this + 4) = v29;
      }

      else if ((v10 >> 3) == 1)
      {
        v22 = operator new(0x18uLL);
        *v22 = &unk_2A1E9E7A8;
        v22[5] = 0;
        v23 = *(this + 1);
        *(this + 1) = v22;
        if (v23)
        {
          (*(*v23 + 8))(v23);
          v22 = *(this + 1);
        }

        if (!PB::Reader::placeMark() || !(*(*v22 + 16))(v22, a2))
        {
LABEL_53:
          v39 = 0;
          return v39 & 1;
        }

        PB::Reader::recallMark();
      }

      else
      {
LABEL_26:
        if ((PB::Reader::skip(a2) & 1) == 0)
        {
          goto LABEL_53;
        }
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_51;
      }
    }

    v15 = 0;
    v16 = 0;
    v10 = 0;
    v17 = (v7 + v2);
    v18 = v3 >= v2;
    v19 = v3 - v2;
    if (!v18)
    {
      v19 = 0;
    }

    v20 = v2 + 1;
    while (v19)
    {
      v21 = *v17;
      *(a2 + 1) = v20;
      v10 |= (v21 & 0x7F) << v15;
      if ((v21 & 0x80) == 0)
      {
        goto LABEL_18;
      }

      v15 += 7;
      ++v17;
      --v19;
      ++v20;
      v14 = v16++ > 8;
      if (v14)
      {
        goto LABEL_26;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_51:
  v39 = v4 ^ 1;
  return v39 & 1;
}

uint64_t telephonytransport::PCIMessageId::PCIMessageId(uint64_t this)
{
  *this = &unk_2A1E9E7A8;
  *(this + 20) = 0;
  return this;
}

{
  *this = &unk_2A1E9E7A8;
  *(this + 20) = 0;
  return this;
}

uint64_t telephonytransport::PCIFlushReadResponse::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 8);
  if (v4)
  {
    this = PB::Writer::writeSubmessage(a2, v4);
  }

  if (*(v3 + 20))
  {
    v5 = *(v3 + 16);

    return PB::Writer::writeVarInt(a2);
  }

  return this;
}

BOOL telephonytransport::PCIFlushReadResponse::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (v4)
  {
    if (!v5 || !telephonytransport::PCIMessageId::operator==(v4, v5))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  result = (*(a2 + 20) & 1) == 0;
  if ((*(a1 + 20) & 1) == 0)
  {
    return result;
  }

  return (*(a2 + 20) & 1) != 0 && *(a1 + 16) == *(a2 + 16);
}

BOOL telephonytransport::PCIMessageId::operator==(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 20) & 2) != 0)
  {
    if ((*(a2 + 20) & 2) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if ((*(a2 + 20) & 2) != 0)
  {
    return 0;
  }

  v2 = (*(a2 + 20) & 1) == 0;
  if (*(a1 + 20))
  {
    return (*(a2 + 20) & 1) != 0 && *(a1 + 8) == *(a2 + 8);
  }

  return v2;
}

uint64_t telephonytransport::PCIFlushReadResponse::hash_value(telephonytransport::PCIFlushReadResponse *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    v2 = *(v1 + 20);
    v3 = *(v1 + 16);
    if ((v2 & 2) == 0)
    {
      v3 = 0;
    }

    v4 = *(v1 + 8);
    if ((v2 & 1) == 0)
    {
      v4 = 0;
    }

    v1 = v4 ^ v3;
  }

  if (*(this + 20))
  {
    v5 = *(this + 4);
  }

  else
  {
    v5 = 0;
  }

  return v5 ^ v1;
}

void *telephonytransport::PCIFlushReadResponse::makeMessageId(void *this)
{
  if (!this[1])
  {
    v1 = this;
    this = operator new(0x18uLL);
    *this = &unk_2A1E9E7A8;
    *(this + 5) = 0;
    v1[1] = this;
  }

  return this;
}

void *telephonytransport::PCISendImageResponse::PCISendImageResponse(void *this)
{
  *this = &unk_2A1E9E658;
  this[1] = 0;
  this[3] = 0;
  return this;
}

{
  *this = &unk_2A1E9E658;
  this[1] = 0;
  this[3] = 0;
  return this;
}

void telephonytransport::PCISendImageResponse::~PCISendImageResponse(telephonytransport::PCISendImageResponse *this)
{
  v2 = *(this + 1);
  *this = &unk_2A1E9E658;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  telephonytransport::PCISendImageResponse::~PCISendImageResponse(this);

  operator delete(v1);
}

telephonytransport::PCISendImageResponse *telephonytransport::PCISendImageResponse::PCISendImageResponse(telephonytransport::PCISendImageResponse *this, const telephonytransport::PCISendImageResponse *a2)
{
  *this = &unk_2A1E9E658;
  *(this + 1) = 0;
  *(this + 3) = 0;
  v4 = *(a2 + 1);
  if (v4)
  {
    v5 = operator new(0x18uLL);
    *(this + 1) = telephonytransport::PCIMessageId::PCIMessageId(v5, v4);
  }

  v6 = *(a2 + 28);
  if ((v6 & 4) != 0)
  {
    v8 = *(a2 + 6);
    v7 = 4;
    *(this + 28) = 4;
    *(this + 6) = v8;
    v6 = *(a2 + 28);
    if ((v6 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v7 = 0;
  if (*(a2 + 28))
  {
LABEL_7:
    v9 = *(a2 + 4);
    v7 |= 1u;
    *(this + 28) = v7;
    *(this + 4) = v9;
    v6 = *(a2 + 28);
  }

LABEL_8:
  if ((v6 & 2) != 0)
  {
    v10 = *(a2 + 5);
    *(this + 28) = v7 | 2;
    *(this + 5) = v10;
  }

  return this;
}

uint64_t telephonytransport::PCISendImageResponse::operator=(uint64_t a1, const telephonytransport::PCISendImageResponse *a2)
{
  if (a1 != a2)
  {
    *&v3 = 0xAAAAAAAAAAAAAAAALL;
    *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v9 = v3;
    v10 = v3;
    telephonytransport::PCISendImageResponse::PCISendImageResponse(&v9, a2);
    v4 = *(a1 + 8);
    *(a1 + 8) = *(&v9 + 1);
    *(&v9 + 1) = v4;
    v5 = v10;
    v6 = *(a1 + 28);
    DWORD2(v10) = *(a1 + 24);
    HIDWORD(v10) = v6;
    v7 = *(a1 + 16);
    *(a1 + 16) = v5;
    *&v10 = v7;
    telephonytransport::PCISendImageResponse::~PCISendImageResponse(&v9);
  }

  return a1;
}

double telephonytransport::swap(telephonytransport *this, telephonytransport::PCISendImageResponse *a2, telephonytransport::PCISendImageResponse *a3)
{
  v3 = *(this + 7);
  *(this + 7) = *(a2 + 7);
  *(a2 + 7) = v3;
  v4 = *(this + 1);
  *(this + 1) = *(a2 + 1);
  *(a2 + 1) = v4;
  LODWORD(v4) = *(this + 4);
  *(this + 4) = *(a2 + 4);
  *(a2 + 4) = v4;
  result = *(a2 + 20);
  v6 = *(this + 20);
  *(this + 20) = result;
  *(a2 + 20) = v6;
  return result;
}

uint64_t telephonytransport::PCISendImageResponse::PCISendImageResponse(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2A1E9E658;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 28) = *(a2 + 28);
  *(a2 + 28) = 0;
  v4 = *(a2 + 8);
  *(a2 + 8) = 0;
  v5 = *(a1 + 8);
  *(a1 + 8) = v4;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  return a1;
}

uint64_t telephonytransport::PCISendImageResponse::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    *&v3 = 0xAAAAAAAAAAAAAAAALL;
    *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v9 = v3;
    v10 = v3;
    telephonytransport::PCISendImageResponse::PCISendImageResponse(&v9, a2);
    v4 = *(a1 + 8);
    *(a1 + 8) = *(&v9 + 1);
    *(&v9 + 1) = v4;
    v5 = v10;
    v6 = *(a1 + 28);
    DWORD2(v10) = *(a1 + 24);
    HIDWORD(v10) = v6;
    v7 = *(a1 + 16);
    *(a1 + 16) = v5;
    *&v10 = v7;
    telephonytransport::PCISendImageResponse::~PCISendImageResponse(&v9);
  }

  return a1;
}

uint64_t telephonytransport::PCISendImageResponse::formatText(telephonytransport::PCISendImageResponse *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 28);
  if (v5)
  {
    v6 = *(this + 4);
    PB::TextFormatter::format(a2, "bytesWritten");
    v5 = *(this + 28);
  }

  if ((v5 & 2) != 0)
  {
    v7 = *(this + 5);
    PB::TextFormatter::format(a2, "cookie");
  }

  v8 = *(this + 1);
  if (v8)
  {
    (*(*v8 + 32))(v8, a2, "messageId");
  }

  if ((*(this + 28) & 4) != 0)
  {
    v9 = *(this + 6);
    PB::TextFormatter::format(a2, "result");
  }

  return MEMORY[0x2A1C68DE0](a2);
}

uint64_t telephonytransport::PCISendImageResponse::readFrom(telephonytransport::PCISendImageResponse *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    while (1)
    {
      v7 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = (v7 + v2);
        v18 = v3 >= v2;
        v19 = v3 - v2;
        if (!v18)
        {
          v19 = 0;
        }

        v20 = v2 + 1;
        while (v19)
        {
          v21 = *v17;
          *(a2 + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            goto LABEL_21;
          }

          v15 += 7;
          ++v17;
          --v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
            goto LABEL_17;
          }
        }

        v4 = 1;
        *(a2 + 24) = 1;
        goto LABEL_90;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = (v7 + v2);
      v12 = v2 + 1;
      while (1)
      {
        *(a2 + 1) = v12;
        v13 = *v11++;
        v10 |= (v13 & 0x7F) << v8;
        if ((v13 & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        ++v12;
        v14 = v9++ > 8;
        if (v14)
        {
          goto LABEL_17;
        }
      }

LABEL_21:
      if ((v10 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_90;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) > 2)
      {
        break;
      }

      if (v22 != 1)
      {
        if (v22 == 2)
        {
          *(this + 28) |= 4u;
          v24 = *(a2 + 1);
          v23 = *(a2 + 2);
          v25 = *a2;
          if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v23)
          {
            v52 = 0;
            v53 = 0;
            v28 = 0;
            v54 = (v25 + v24);
            v18 = v23 >= v24;
            v55 = v23 - v24;
            if (!v18)
            {
              v55 = 0;
            }

            v56 = v24 + 1;
            while (1)
            {
              if (!v55)
              {
                LODWORD(v28) = 0;
                *(a2 + 24) = 1;
                goto LABEL_82;
              }

              v57 = *v54;
              *(a2 + 1) = v56;
              v28 |= (v57 & 0x7F) << v52;
              if ((v57 & 0x80) == 0)
              {
                break;
              }

              v52 += 7;
              ++v54;
              --v55;
              ++v56;
              v14 = v53++ > 8;
              if (v14)
              {
LABEL_60:
                LODWORD(v28) = 0;
                goto LABEL_82;
              }
            }

            if (*(a2 + 24))
            {
              LODWORD(v28) = 0;
            }
          }

          else
          {
            v26 = 0;
            v27 = 0;
            v28 = 0;
            v29 = (v25 + v24);
            v30 = v24 + 1;
            while (1)
            {
              *(a2 + 1) = v30;
              v31 = *v29++;
              v28 |= (v31 & 0x7F) << v26;
              if ((v31 & 0x80) == 0)
              {
                break;
              }

              v26 += 7;
              ++v30;
              v14 = v27++ > 8;
              if (v14)
              {
                goto LABEL_60;
              }
            }
          }

LABEL_82:
          *(this + 6) = v28;
          goto LABEL_18;
        }

        goto LABEL_17;
      }

      v41 = operator new(0x18uLL);
      *v41 = &unk_2A1E9E7A8;
      v41[5] = 0;
      v42 = *(this + 1);
      *(this + 1) = v41;
      if (v42)
      {
        (*(*v42 + 8))(v42);
        v41 = *(this + 1);
      }

      if (!PB::Reader::placeMark() || !(*(*v41 + 16))(v41, a2))
      {
LABEL_92:
        v70 = 0;
        return v70 & 1;
      }

      PB::Reader::recallMark();
LABEL_18:
      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_90;
      }
    }

    if (v22 == 3)
    {
      *(this + 28) |= 1u;
      v44 = *(a2 + 1);
      v43 = *(a2 + 2);
      v45 = *a2;
      if (v44 > 0xFFFFFFFFFFFFFFF5 || v44 + 10 > v43)
      {
        v64 = 0;
        v65 = 0;
        v48 = 0;
        v66 = (v45 + v44);
        v18 = v43 >= v44;
        v67 = v43 - v44;
        if (!v18)
        {
          v67 = 0;
        }

        v68 = v44 + 1;
        while (1)
        {
          if (!v67)
          {
            LODWORD(v48) = 0;
            *(a2 + 24) = 1;
            goto LABEL_88;
          }

          v69 = *v66;
          *(a2 + 1) = v68;
          v48 |= (v69 & 0x7F) << v64;
          if ((v69 & 0x80) == 0)
          {
            break;
          }

          v64 += 7;
          ++v66;
          --v67;
          ++v68;
          v14 = v65++ > 8;
          if (v14)
          {
LABEL_76:
            LODWORD(v48) = 0;
            goto LABEL_88;
          }
        }

        if (*(a2 + 24))
        {
          LODWORD(v48) = 0;
        }
      }

      else
      {
        v46 = 0;
        v47 = 0;
        v48 = 0;
        v49 = (v45 + v44);
        v50 = v44 + 1;
        while (1)
        {
          *(a2 + 1) = v50;
          v51 = *v49++;
          v48 |= (v51 & 0x7F) << v46;
          if ((v51 & 0x80) == 0)
          {
            break;
          }

          v46 += 7;
          ++v50;
          v14 = v47++ > 8;
          if (v14)
          {
            goto LABEL_76;
          }
        }
      }

LABEL_88:
      *(this + 4) = v48;
      goto LABEL_18;
    }

    if (v22 == 4)
    {
      *(this + 28) |= 2u;
      v33 = *(a2 + 1);
      v32 = *(a2 + 2);
      v34 = *a2;
      if (v33 > 0xFFFFFFFFFFFFFFF5 || v33 + 10 > v32)
      {
        v58 = 0;
        v59 = 0;
        v37 = 0;
        v60 = (v34 + v33);
        v18 = v32 >= v33;
        v61 = v32 - v33;
        if (!v18)
        {
          v61 = 0;
        }

        v62 = v33 + 1;
        while (1)
        {
          if (!v61)
          {
            LODWORD(v37) = 0;
            *(a2 + 24) = 1;
            goto LABEL_85;
          }

          v63 = *v60;
          *(a2 + 1) = v62;
          v37 |= (v63 & 0x7F) << v58;
          if ((v63 & 0x80) == 0)
          {
            break;
          }

          v58 += 7;
          ++v60;
          --v61;
          ++v62;
          v14 = v59++ > 8;
          if (v14)
          {
LABEL_68:
            LODWORD(v37) = 0;
            goto LABEL_85;
          }
        }

        if (*(a2 + 24))
        {
          LODWORD(v37) = 0;
        }
      }

      else
      {
        v35 = 0;
        v36 = 0;
        v37 = 0;
        v38 = (v34 + v33);
        v39 = v33 + 1;
        while (1)
        {
          *(a2 + 1) = v39;
          v40 = *v38++;
          v37 |= (v40 & 0x7F) << v35;
          if ((v40 & 0x80) == 0)
          {
            break;
          }

          v35 += 7;
          ++v39;
          v14 = v36++ > 8;
          if (v14)
          {
            goto LABEL_68;
          }
        }
      }

LABEL_85:
      *(this + 5) = v37;
      goto LABEL_18;
    }

LABEL_17:
    if ((PB::Reader::skip(a2) & 1) == 0)
    {
      goto LABEL_92;
    }

    goto LABEL_18;
  }

LABEL_90:
  v70 = v4 ^ 1;
  return v70 & 1;
}

uint64_t telephonytransport::PCISendImageResponse::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 8);
  if (v4)
  {
    this = PB::Writer::writeSubmessage(a2, v4);
  }

  v5 = *(v3 + 28);
  if ((v5 & 4) == 0)
  {
    if ((*(v3 + 28) & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_8:
    v7 = *(v3 + 16);
    this = PB::Writer::writeVarInt(a2);
    if ((*(v3 + 28) & 2) == 0)
    {
      return this;
    }

    goto LABEL_9;
  }

  v6 = *(v3 + 24);
  this = PB::Writer::writeVarInt(a2);
  v5 = *(v3 + 28);
  if (v5)
  {
    goto LABEL_8;
  }

LABEL_5:
  if ((v5 & 2) == 0)
  {
    return this;
  }

LABEL_9:
  v8 = *(v3 + 20);

  return PB::Writer::writeVarInt(a2);
}

BOOL telephonytransport::PCISendImageResponse::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (v4)
  {
    if (!v5 || !telephonytransport::PCIMessageId::operator==(v4, v5))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  if ((*(a1 + 28) & 4) != 0)
  {
    if ((*(a2 + 28) & 4) == 0 || *(a1 + 24) != *(a2 + 24))
    {
      return 0;
    }
  }

  else if ((*(a2 + 28) & 4) != 0)
  {
    return 0;
  }

  if (*(a1 + 28))
  {
    if ((*(a2 + 28) & 1) == 0 || *(a1 + 16) != *(a2 + 16))
    {
      return 0;
    }
  }

  else if (*(a2 + 28))
  {
    return 0;
  }

  result = (*(a2 + 28) & 2) == 0;
  if ((*(a1 + 28) & 2) == 0)
  {
    return result;
  }

  return (*(a2 + 28) & 2) != 0 && *(a1 + 20) == *(a2 + 20);
}

uint64_t telephonytransport::PCISendImageResponse::hash_value(telephonytransport::PCISendImageResponse *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    v2 = *(v1 + 20);
    v3 = *(v1 + 16);
    if ((v2 & 2) == 0)
    {
      v3 = 0;
    }

    v4 = *(v1 + 8);
    if ((v2 & 1) == 0)
    {
      v4 = 0;
    }

    v1 = v4 ^ v3;
  }

  if ((*(this + 28) & 4) == 0)
  {
    v5 = 0;
    if (*(this + 28))
    {
      goto LABEL_9;
    }

LABEL_12:
    v6 = 0;
    if ((*(this + 28) & 2) != 0)
    {
      goto LABEL_10;
    }

LABEL_13:
    v7 = 0;
    return v5 ^ v1 ^ v6 ^ v7;
  }

  v5 = *(this + 6);
  if ((*(this + 28) & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_9:
  v6 = *(this + 4);
  if ((*(this + 28) & 2) == 0)
  {
    goto LABEL_13;
  }

LABEL_10:
  v7 = *(this + 5);
  return v5 ^ v1 ^ v6 ^ v7;
}

void *telephonytransport::PCISendImageResponse::makeMessageId(void *this)
{
  if (!this[1])
  {
    v1 = this;
    this = operator new(0x18uLL);
    *this = &unk_2A1E9E7A8;
    *(this + 5) = 0;
    v1[1] = this;
  }

  return this;
}

void *telephonytransport::PCIUnblockReadResponse::PCIUnblockReadResponse(void *this)
{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_2A1E9E690;
  return this;
}

{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_2A1E9E690;
  return this;
}

void telephonytransport::PCIUnblockReadResponse::~PCIUnblockReadResponse(telephonytransport::PCIUnblockReadResponse *this)
{
  v2 = *(this + 1);
  *this = &unk_2A1E9E690;
  *(this + 1) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PB::Base::~Base(this);
}

{
  telephonytransport::PCIUnblockReadResponse::~PCIUnblockReadResponse(this);

  operator delete(v1);
}

telephonytransport::PCIUnblockReadResponse *telephonytransport::PCIUnblockReadResponse::PCIUnblockReadResponse(telephonytransport::PCIUnblockReadResponse *this, const telephonytransport::PCIUnblockReadResponse *a2)
{
  *this = &unk_2A1E9E690;
  *(this + 1) = 0;
  v4 = (this + 8);
  *(this + 2) = 0;
  v5 = *(a2 + 1);
  if (v5)
  {
    v6 = operator new(0x18uLL);
    *v4 = telephonytransport::PCIMessageId::PCIMessageId(v6, v5);
  }

  if (*(a2 + 20))
  {
    v7 = *(a2 + 4);
    *(this + 20) = 1;
    *(this + 4) = v7;
  }

  return this;
}

uint64_t telephonytransport::PCIUnblockReadResponse::operator=(uint64_t a1, const telephonytransport::PCIUnblockReadResponse *a2)
{
  if (a1 != a2)
  {
    memset(v6, 170, sizeof(v6));
    telephonytransport::PCIUnblockReadResponse::PCIUnblockReadResponse(v6, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v6[1];
    v6[1] = v3;
    LODWORD(v3) = *(a1 + 16);
    v4 = *(a1 + 20);
    *(a1 + 16) = v6[2];
    v6[2] = __PAIR64__(v4, v3);
    telephonytransport::PCIUnblockReadResponse::~PCIUnblockReadResponse(v6);
  }

  return a1;
}

uint64_t telephonytransport::swap(uint64_t this, telephonytransport::PCIUnblockReadResponse *a2, telephonytransport::PCIUnblockReadResponse *a3)
{
  v3 = *(this + 20);
  *(this + 20) = *(a2 + 5);
  *(a2 + 5) = v3;
  v4 = *(this + 8);
  *(this + 8) = *(a2 + 1);
  *(a2 + 1) = v4;
  LODWORD(v4) = *(this + 16);
  *(this + 16) = *(a2 + 4);
  *(a2 + 4) = v4;
  return this;
}

uint64_t telephonytransport::PCIUnblockReadResponse::PCIUnblockReadResponse(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2A1E9E690;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 20) = *(a2 + 20);
  *(a2 + 20) = 0;
  v4 = *(a2 + 8);
  *(a2 + 8) = 0;
  v5 = *(a1 + 8);
  *(a1 + 8) = v4;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t telephonytransport::PCIUnblockReadResponse::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    memset(v6, 170, sizeof(v6));
    telephonytransport::PCIUnblockReadResponse::PCIUnblockReadResponse(v6, a2);
    v3 = *(a1 + 8);
    *(a1 + 8) = v6[1];
    v6[1] = v3;
    LODWORD(v3) = *(a1 + 16);
    v4 = *(a1 + 20);
    *(a1 + 16) = v6[2];
    v6[2] = __PAIR64__(v4, v3);
    telephonytransport::PCIUnblockReadResponse::~PCIUnblockReadResponse(v6);
  }

  return a1;
}

uint64_t telephonytransport::PCIUnblockReadResponse::formatText(telephonytransport::PCIUnblockReadResponse *this, PB::TextFormatter *a2, const char *a3)
{
  PB::TextFormatter::beginObject(a2, a3);
  v5 = *(this + 1);
  if (v5)
  {
    (*(*v5 + 32))(v5, a2, "messageId");
  }

  if (*(this + 20))
  {
    v6 = *(this + 4);
    PB::TextFormatter::format(a2, "result");
  }

  return MEMORY[0x2A1C68DE0](a2);
}

uint64_t telephonytransport::PCIUnblockReadResponse::readFrom(telephonytransport::PCIUnblockReadResponse *this, PB::Reader *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 2);
  v4 = *(a2 + 24);
  if (v2 < v3 && (*(a2 + 24) & 1) == 0)
  {
    while (1)
    {
      v7 = *a2;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        break;
      }

      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = (v7 + v2);
      v12 = v2 + 1;
      while (1)
      {
        *(a2 + 1) = v12;
        v13 = *v11++;
        v10 |= (v13 & 0x7F) << v8;
        if ((v13 & 0x80) == 0)
        {
          break;
        }

        v8 += 7;
        ++v12;
        v14 = v9++ > 8;
        if (v14)
        {
          goto LABEL_26;
        }
      }

LABEL_18:
      if ((v10 & 7) == 4)
      {
        v4 = 0;
        goto LABEL_51;
      }

      if ((v10 >> 3) == 2)
      {
        *(this + 20) |= 1u;
        v25 = *(a2 + 1);
        v24 = *(a2 + 2);
        v26 = *a2;
        if (v25 > 0xFFFFFFFFFFFFFFF5 || v25 + 10 > v24)
        {
          v33 = 0;
          v34 = 0;
          v29 = 0;
          v35 = (v26 + v25);
          v18 = v24 >= v25;
          v36 = v24 - v25;
          if (!v18)
          {
            v36 = 0;
          }

          v37 = v25 + 1;
          while (1)
          {
            if (!v36)
            {
              LODWORD(v29) = 0;
              *(a2 + 24) = 1;
              goto LABEL_46;
            }

            v38 = *v35;
            *(a2 + 1) = v37;
            v29 |= (v38 & 0x7F) << v33;
            if ((v38 & 0x80) == 0)
            {
              break;
            }

            v33 += 7;
            ++v35;
            --v36;
            ++v37;
            v14 = v34++ > 8;
            if (v14)
            {
LABEL_42:
              LODWORD(v29) = 0;
              goto LABEL_46;
            }
          }

          if (*(a2 + 24))
          {
            LODWORD(v29) = 0;
          }
        }

        else
        {
          v27 = 0;
          v28 = 0;
          v29 = 0;
          v30 = (v26 + v25);
          v31 = v25 + 1;
          while (1)
          {
            *(a2 + 1) = v31;
            v32 = *v30++;
            v29 |= (v32 & 0x7F) << v27;
            if ((v32 & 0x80) == 0)
            {
              break;
            }

            v27 += 7;
            ++v31;
            v14 = v28++ > 8;
            if (v14)
            {
              goto LABEL_42;
            }
          }
        }

LABEL_46:
        *(this + 4) = v29;
      }

      else if ((v10 >> 3) == 1)
      {
        v22 = operator new(0x18uLL);
        *v22 = &unk_2A1E9E7A8;
        v22[5] = 0;
        v23 = *(this + 1);
        *(this + 1) = v22;
        if (v23)
        {
          (*(*v23 + 8))(v23);
          v22 = *(this + 1);
        }

        if (!PB::Reader::placeMark() || !(*(*v22 + 16))(v22, a2))
        {
LABEL_53:
          v39 = 0;
          return v39 & 1;
        }

        PB::Reader::recallMark();
      }

      else
      {
LABEL_26:
        if ((PB::Reader::skip(a2) & 1) == 0)
        {
          goto LABEL_53;
        }
      }

      v2 = *(a2 + 1);
      v3 = *(a2 + 2);
      v4 = *(a2 + 24);
      if (v2 >= v3 || (*(a2 + 24) & 1) != 0)
      {
        goto LABEL_51;
      }
    }

    v15 = 0;
    v16 = 0;
    v10 = 0;
    v17 = (v7 + v2);
    v18 = v3 >= v2;
    v19 = v3 - v2;
    if (!v18)
    {
      v19 = 0;
    }

    v20 = v2 + 1;
    while (v19)
    {
      v21 = *v17;
      *(a2 + 1) = v20;
      v10 |= (v21 & 0x7F) << v15;
      if ((v21 & 0x80) == 0)
      {
        goto LABEL_18;
      }

      v15 += 7;
      ++v17;
      --v19;
      ++v20;
      v14 = v16++ > 8;
      if (v14)
      {
        goto LABEL_26;
      }
    }

    v4 = 1;
    *(a2 + 24) = 1;
  }

LABEL_51:
  v39 = v4 ^ 1;
  return v39 & 1;
}

uint64_t telephonytransport::PCIUnblockReadResponse::writeTo(uint64_t this, PB::Writer *a2)
{
  v3 = this;
  v4 = *(this + 8);
  if (v4)
  {
    this = PB::Writer::writeSubmessage(a2, v4);
  }

  if (*(v3 + 20))
  {
    v5 = *(v3 + 16);

    return PB::Writer::writeVarInt(a2);
  }

  return this;
}

BOOL telephonytransport::PCIUnblockReadResponse::operator==(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (v4)
  {
    if (!v5 || !telephonytransport::PCIMessageId::operator==(v4, v5))
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  result = (*(a2 + 20) & 1) == 0;
  if ((*(a1 + 20) & 1) == 0)
  {
    return result;
  }

  return (*(a2 + 20) & 1) != 0 && *(a1 + 16) == *(a2 + 16);
}

uint64_t telephonytransport::PCIUnblockReadResponse::hash_value(telephonytransport::PCIUnblockReadResponse *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    v2 = *(v1 + 20);
    v3 = *(v1 + 16);
    if ((v2 & 2) == 0)
    {
      v3 = 0;
    }

    v4 = *(v1 + 8);
    if ((v2 & 1) == 0)
    {
      v4 = 0;
    }

    v1 = v4 ^ v3;
  }

  if (*(this + 20))
  {
    v5 = *(this + 4);
  }

  else
  {
    v5 = 0;
  }

  return v5 ^ v1;
}

void *telephonytransport::PCIUnblockReadResponse::makeMessageId(void *this)
{
  if (!this[1])
  {
    v1 = this;
    this = operator new(0x18uLL);
    *this = &unk_2A1E9E7A8;
    *(this + 5) = 0;
    v1[1] = this;
  }

  return this;
}

void *telephonytransport::PCIReadRegisterResponse::PCIReadRegisterResponse(void *this)
{
  *this = &unk_2A1E9E6C8;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

{
  *this = &unk_2A1E9E6C8;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

void telephonytransport::PCIReadRegisterResponse::~PCIReadRegisterResponse(telephonytransport::PCIReadRegisterResponse *this)
{
  *this = &unk_2A1E9E6C8;
  v2 = *(this + 2);
  *(this + 2) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  std::unique_ptr<PB::Data>::reset[abi:ne200100](this + 1, 0);

  PB::Base::~Base(this);
}

{
  telephonytransport::PCIReadRegisterResponse::~PCIReadRegisterResponse(this);

  operator delete(v1);
}