void sub_22562D45C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23)
{
  if (a23)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](a23);
  }

  SafeBrowsing::LookupContext::forceDeviceIdentificationTokenUpdate(std::function<void ()(BOOL,std::error_code)>)::$_0::~$_0(&a12);
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](a11);
  }

  _Unwind_Resume(a1);
}

void ___ZN12SafeBrowsing13LookupContext40forceUpdateRemoteConfigurationFromServerENSt3__18functionIFvbNS1_10error_codeEEEE_block_invoke(uint64_t a1)
{
  v14[4] = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  SafeBrowsing::LookupContext::ensureConnection(*(a1 + 32));
  v3 = SafeBrowsing::createMessage(6u);
  v4 = *v2;
  v5 = *(*v2 + 16);
  v6 = *(v4 + 24);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3321888768;
  handler[2] = ___ZZN12SafeBrowsing13LookupContext40forceUpdateRemoteConfigurationFromServerENSt3__18functionIFvbNS1_10error_codeEEEEENK3__0clEv_block_invoke;
  handler[3] = &__block_descriptor_80_ea8_32c173_ZTSKZZN12SafeBrowsing13LookupContext40forceUpdateRemoteConfigurationFromServerENSt3__18functionIFvbNS1_10error_codeEEEEENK3__0clEvEUlPU24objcproto13OS_xpc_object8NSObjectE__e33_v16__0__NSObject_OS_xpc_object__8l;
  v7 = *(a1 + 40);
  v9 = v4;
  v10 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::__function::__value_func<void ()(BOOL,std::error_code)>::__value_func[abi:sn200100](v11, a1 + 48);
  handler[4] = v9;
  v13 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::__function::__value_func<void ()(BOOL,std::error_code)>::__value_func[abi:sn200100](v14, v11);
  xpc_connection_send_message_with_reply(v6, v3, v5, handler);
  std::__function::__value_func<void ()(BOOL,std::error_code)>::~__value_func[abi:sn200100](v11);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v10);
  }

  std::__function::__value_func<void ()(BOOL,std::error_code)>::~__value_func[abi:sn200100](v14);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v13);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_22562D600(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  SafeBrowsing::LookupContext::forceDeviceIdentificationTokenUpdate(std::function<void ()(BOOL,std::error_code)>)::$_0::~$_0(v3 + 32);
  SafeBrowsing::LookupContext::forceDeviceIdentificationTokenUpdate(std::function<void ()(BOOL,std::error_code)>)::$_0::~$_0(va);

  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_ea8_32c124_ZTSKZN12SafeBrowsing13LookupContext40forceUpdateRemoteConfigurationFromServerENSt3__18functionIFvbNS1_10error_codeEEEEE3__0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return std::__function::__value_func<void ()(BOOL,std::error_code)>::__value_func[abi:sn200100](a1 + 48, a2 + 48);
}

void sub_22562D694(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 40);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_ea8_32c124_ZTSKZN12SafeBrowsing13LookupContext40forceUpdateRemoteConfigurationFromServerENSt3__18functionIFvbNS1_10error_codeEEEEE3__0(uint64_t a1)
{
  std::__function::__value_func<void ()(BOOL,std::error_code)>::~__value_func[abi:sn200100](a1 + 48);
  v2 = *(a1 + 40);
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:sn200100](v2);
  }
}

void SafeBrowsing::LookupContext::handleForceUpdateRemoteConfigurationFromServerReply(uint64_t a1, void *a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (MEMORY[0x22AA67EF0]() == MEMORY[0x277D86480])
  {
    v7 = Platform::xpcErrorCode(v4);
    cat = v8;
    *&v13.__val_ = v7;
    v13.__cat_ = v8;
    if (v7)
    {
      v10 = SSBOSLogRemoteConfiguration();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        std::error_code::message(&v12, &v13);
        SafeBrowsing::LookupContext::handleForceUpdateRemoteConfigurationFromServerReply(&v12);
      }

      v7 = *&v13.__val_;
      cat = v13.__cat_;
    }

    std::function<void ()(BOOL,std::error_code)>::operator()(a3, 0, v7, cat);
  }

  else
  {
    v5 = xpc_dictionary_get_BOOL(v4, "updateRemoteConfigurationState");
    v6 = std::system_category();
    std::function<void ()(BOOL,std::error_code)>::operator()(a3, v5, 0, v6);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void SafeBrowsing::LookupContext::deleteAllDatabases(void *a1, uint64_t a2)
{
  v13[4] = *MEMORY[0x277D85DE8];
  std::shared_ptr<Backend::Google::DatabaseUpdater>::shared_ptr[abi:sn200100]<Backend::Google::DatabaseUpdater,0>(&v6, a1);
  v4 = a1[2];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3321888768;
  block[2] = ___ZN12SafeBrowsing13LookupContext18deleteAllDatabasesENSt3__18functionIFvbNS1_10error_codeEEEE_block_invoke;
  block[3] = &__block_descriptor_80_ea8_32c102_ZTSKZN12SafeBrowsing13LookupContext18deleteAllDatabasesENSt3__18functionIFvbNS1_10error_codeEEEEE3__0_e5_v8__0l;
  v8 = v6;
  v9 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::__function::__value_func<void ()(BOOL,std::error_code)>::__value_func[abi:sn200100](v10, a2);
  block[4] = v8;
  v12 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::__function::__value_func<void ()(BOOL,std::error_code)>::__value_func[abi:sn200100](v13, v10);
  dispatch_async(v4, block);
  std::__function::__value_func<void ()(BOOL,std::error_code)>::~__value_func[abi:sn200100](v10);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v9);
  }

  std::__function::__value_func<void ()(BOOL,std::error_code)>::~__value_func[abi:sn200100](v13);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v12);
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v7);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void sub_22562D978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23)
{
  if (a23)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](a23);
  }

  SafeBrowsing::LookupContext::forceDeviceIdentificationTokenUpdate(std::function<void ()(BOOL,std::error_code)>)::$_0::~$_0(&a12);
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](a11);
  }

  _Unwind_Resume(a1);
}

void ___ZN12SafeBrowsing13LookupContext18deleteAllDatabasesENSt3__18functionIFvbNS1_10error_codeEEEE_block_invoke(uint64_t a1)
{
  v14[4] = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  SafeBrowsing::LookupContext::ensureConnection(*(a1 + 32));
  v3 = SafeBrowsing::createMessage(7u);
  v4 = *v2;
  v5 = *(*v2 + 16);
  v6 = *(v4 + 24);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3321888768;
  handler[2] = ___ZZN12SafeBrowsing13LookupContext18deleteAllDatabasesENSt3__18functionIFvbNS1_10error_codeEEEEENK3__0clEv_block_invoke;
  handler[3] = &__block_descriptor_80_ea8_32c151_ZTSKZZN12SafeBrowsing13LookupContext18deleteAllDatabasesENSt3__18functionIFvbNS1_10error_codeEEEEENK3__0clEvEUlPU24objcproto13OS_xpc_object8NSObjectE__e33_v16__0__NSObject_OS_xpc_object__8l;
  v7 = *(a1 + 40);
  v9 = v4;
  v10 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::__function::__value_func<void ()(BOOL,std::error_code)>::__value_func[abi:sn200100](v11, a1 + 48);
  handler[4] = v9;
  v13 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::__function::__value_func<void ()(BOOL,std::error_code)>::__value_func[abi:sn200100](v14, v11);
  xpc_connection_send_message_with_reply(v6, v3, v5, handler);
  std::__function::__value_func<void ()(BOOL,std::error_code)>::~__value_func[abi:sn200100](v11);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v10);
  }

  std::__function::__value_func<void ()(BOOL,std::error_code)>::~__value_func[abi:sn200100](v14);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v13);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_22562DB1C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  SafeBrowsing::LookupContext::forceDeviceIdentificationTokenUpdate(std::function<void ()(BOOL,std::error_code)>)::$_0::~$_0(v3 + 32);
  SafeBrowsing::LookupContext::forceDeviceIdentificationTokenUpdate(std::function<void ()(BOOL,std::error_code)>)::$_0::~$_0(va);

  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_ea8_32c102_ZTSKZN12SafeBrowsing13LookupContext18deleteAllDatabasesENSt3__18functionIFvbNS1_10error_codeEEEEE3__0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return std::__function::__value_func<void ()(BOOL,std::error_code)>::__value_func[abi:sn200100](a1 + 48, a2 + 48);
}

void sub_22562DBB0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 40);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_ea8_32c102_ZTSKZN12SafeBrowsing13LookupContext18deleteAllDatabasesENSt3__18functionIFvbNS1_10error_codeEEEEE3__0(uint64_t a1)
{
  std::__function::__value_func<void ()(BOOL,std::error_code)>::~__value_func[abi:sn200100](a1 + 48);
  v2 = *(a1 + 40);
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:sn200100](v2);
  }
}

void SafeBrowsing::LookupContext::handleDeleteAllDatabasesReply(uint64_t a1, void *a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (MEMORY[0x22AA67EF0]() == MEMORY[0x277D86480])
  {
    v7 = Platform::xpcErrorCode(v4);
    cat = v8;
    *&v13.__val_ = v7;
    v13.__cat_ = v8;
    if (v7)
    {
      v10 = SSBOSLogDatabase();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        std::error_code::message(&v12, &v13);
        SafeBrowsing::LookupContext::handleDeleteAllDatabasesReply(&v12);
      }

      v7 = *&v13.__val_;
      cat = v13.__cat_;
    }

    std::function<void ()(BOOL,std::error_code)>::operator()(a3, 0, v7, cat);
  }

  else
  {
    v5 = xpc_dictionary_get_BOOL(v4, "deleteAllDatabasesState");
    v6 = std::system_category();
    std::function<void ()(BOOL,std::error_code)>::operator()(a3, v5, 0, v6);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void SafeBrowsing::LookupContext::setClientIsInUse(SafeBrowsing::LookupContext *this)
{
  std::shared_ptr<Backend::Google::DatabaseUpdater>::shared_ptr[abi:sn200100]<Backend::Google::DatabaseUpdater,0>(&v8, this);
  v2 = *(this + 2);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3321888768;
  v5[2] = ___ZN12SafeBrowsing13LookupContext16setClientIsInUseEv_block_invoke;
  v5[3] = &__block_descriptor_48_ea8_32c61_ZTSKZN12SafeBrowsing13LookupContext16setClientIsInUseEvE3__0_e5_v8__0l;
  v3 = v8;
  v4 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    v6 = v3;
    v7 = v4;
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    dispatch_async(v2, v5);
    std::__shared_weak_count::__release_shared[abi:sn200100](v4);
  }

  else
  {
    v6 = v8;
    v7 = 0;
    dispatch_async(v2, v5);
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v7);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v9);
  }
}

void ___ZN12SafeBrowsing13LookupContext16setClientIsInUseEv_block_invoke(uint64_t a1)
{
  if ((*(*(a1 + 32) + 160) & 1) == 0)
  {
    v2 = std::chrono::system_clock::now().__d_.__rep_ / 1000000;
    v3 = *(a1 + 32);
    if (*(v3 + 152) < v2)
    {
      *(v3 + 160) = 1;
      SafeBrowsing::LookupContext::ensureConnection(v3);
      v4 = SafeBrowsing::createMessage(8u);
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      v8 = *(v5 + 16);
      v7 = *(v5 + 24);
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3321888768;
      v9[2] = ___ZZN12SafeBrowsing13LookupContext16setClientIsInUseEvENK3__0clEv_block_invoke;
      v9[3] = &__block_descriptor_48_ea8_32c110_ZTSKZZN12SafeBrowsing13LookupContext16setClientIsInUseEvENK3__0clEvEUlPU24objcproto13OS_xpc_object8NSObjectE__e33_v16__0__NSObject_OS_xpc_object__8l;
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        v10 = v5;
        v11 = v6;
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      else
      {
        v10 = v5;
        v11 = 0;
      }

      xpc_connection_send_message_with_reply(v7, v4, v8, v9);
      if (v6)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v6);
      }

      if (v11)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v11);
      }
    }
  }
}

void sub_22562DF3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](a14);
  }

  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v15);
  }

  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_ea8_32c61_ZTSKZN12SafeBrowsing13LookupContext16setClientIsInUseEvE3__0(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_ea8_32c61_ZTSKZN12SafeBrowsing13LookupContext16setClientIsInUseEvE3__0(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v1);
  }
}

void SafeBrowsing::LookupContext::handleClientInUseReply(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = SSBOSLogDatabase();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    LOWORD(v8.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&dword_2255EE000, v4, OS_LOG_TYPE_INFO, "Received ClientInUse reply", &v8, 2u);
  }

  if (MEMORY[0x22AA67EF0](v3) == MEMORY[0x277D86480])
  {
    *&v9.__val_ = Platform::xpcErrorCode(v3);
    v9.__cat_ = v5;
    v6 = SSBOSLogDatabase();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      std::error_code::message(&v8, &v9);
      SafeBrowsing::LookupContext::handleClientInUseReply(&v8);
    }
  }

  else
  {
    *(a1 + 152) = xpc_dictionary_get_int64(v3, "nextMessageTime");
  }

  *(a1 + 160) = 0;

  v7 = *MEMORY[0x277D85DE8];
}

void SafeBrowsing::LookupContext::fetchCellularDataPlan(void *a1, uint64_t a2)
{
  v13[4] = *MEMORY[0x277D85DE8];
  std::shared_ptr<Backend::Google::DatabaseUpdater>::shared_ptr[abi:sn200100]<Backend::Google::DatabaseUpdater,0>(&v6, a1);
  v4 = a1[2];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3321888768;
  block[2] = ___ZN12SafeBrowsing13LookupContext21fetchCellularDataPlanENSt3__18functionIFvPKcNS1_10error_codeEEEE_block_invoke;
  block[3] = &__block_descriptor_80_ea8_32c107_ZTSKZN12SafeBrowsing13LookupContext21fetchCellularDataPlanENSt3__18functionIFvPKcNS1_10error_codeEEEEE3__0_e5_v8__0l;
  v8 = v6;
  v9 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::__function::__value_func<void ()(char const*,std::error_code)>::__value_func[abi:sn200100](v10, a2);
  block[4] = v8;
  v12 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::__function::__value_func<void ()(char const*,std::error_code)>::__value_func[abi:sn200100](v13, v10);
  dispatch_async(v4, block);
  std::__function::__value_func<void ()(char const*,std::error_code)>::~__value_func[abi:sn200100](v10);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v9);
  }

  std::__function::__value_func<void ()(char const*,std::error_code)>::~__value_func[abi:sn200100](v13);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v12);
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v7);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void sub_22562E224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23)
{
  if (a23)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](a23);
  }

  SafeBrowsing::LookupContext::fetchCellularDataPlan(std::function<void ()(char const*,std::error_code)>)::$_0::~$_0(&a12);
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](a11);
  }

  _Unwind_Resume(a1);
}

void ___ZN12SafeBrowsing13LookupContext21fetchCellularDataPlanENSt3__18functionIFvPKcNS1_10error_codeEEEE_block_invoke(uint64_t a1)
{
  v14[4] = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  SafeBrowsing::LookupContext::ensureConnection(*(a1 + 32));
  v3 = SafeBrowsing::createMessage(9u);
  v4 = *v2;
  v5 = *(*v2 + 16);
  v6 = *(v4 + 24);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3321888768;
  handler[2] = ___ZZN12SafeBrowsing13LookupContext21fetchCellularDataPlanENSt3__18functionIFvPKcNS1_10error_codeEEEEENK3__0clEv_block_invoke;
  handler[3] = &__block_descriptor_80_ea8_32c156_ZTSKZZN12SafeBrowsing13LookupContext21fetchCellularDataPlanENSt3__18functionIFvPKcNS1_10error_codeEEEEENK3__0clEvEUlPU24objcproto13OS_xpc_object8NSObjectE__e33_v16__0__NSObject_OS_xpc_object__8l;
  v7 = *(a1 + 40);
  v9 = v4;
  v10 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::__function::__value_func<void ()(char const*,std::error_code)>::__value_func[abi:sn200100](v11, a1 + 48);
  handler[4] = v9;
  v13 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  std::__function::__value_func<void ()(char const*,std::error_code)>::__value_func[abi:sn200100](v14, v11);
  xpc_connection_send_message_with_reply(v6, v3, v5, handler);
  std::__function::__value_func<void ()(char const*,std::error_code)>::~__value_func[abi:sn200100](v11);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v10);
  }

  std::__function::__value_func<void ()(char const*,std::error_code)>::~__value_func[abi:sn200100](v14);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v13);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void sub_22562E3C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  SafeBrowsing::LookupContext::fetchCellularDataPlan(std::function<void ()(char const*,std::error_code)>)::$_0::~$_0(v3 + 32);
  SafeBrowsing::LookupContext::fetchCellularDataPlan(std::function<void ()(char const*,std::error_code)>)::$_0::~$_0(va);

  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_ea8_32c107_ZTSKZN12SafeBrowsing13LookupContext21fetchCellularDataPlanENSt3__18functionIFvPKcNS1_10error_codeEEEEE3__0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return std::__function::__value_func<void ()(char const*,std::error_code)>::__value_func[abi:sn200100](a1 + 48, a2 + 48);
}

void sub_22562E45C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 40);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_ea8_32c107_ZTSKZN12SafeBrowsing13LookupContext21fetchCellularDataPlanENSt3__18functionIFvPKcNS1_10error_codeEEEEE3__0(uint64_t a1)
{
  std::__function::__value_func<void ()(char const*,std::error_code)>::~__value_func[abi:sn200100](a1 + 48);
  v2 = *(a1 + 40);
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:sn200100](v2);
  }
}

uint64_t SafeBrowsing::LookupContext::fetchCellularDataPlan(std::function<void ()(char const*,std::error_code)>)::$_0::~$_0(uint64_t a1)
{
  std::__function::__value_func<void ()(char const*,std::error_code)>::~__value_func[abi:sn200100](a1 + 16);
  v2 = *(a1 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v2);
  }

  return a1;
}

void SafeBrowsing::LookupContext::handleFetchCellularDataPlanReply(uint64_t a1, void *a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (MEMORY[0x22AA67EF0]() == MEMORY[0x277D86480])
  {
    v7 = Platform::xpcErrorCode(v4);
    cat = v8;
    *&v13.__val_ = v7;
    v13.__cat_ = v8;
    if (v7)
    {
      v10 = SSBOSLogDatabase();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        std::error_code::message(&v12, &v13);
        SafeBrowsing::LookupContext::handleFetchCellularDataPlanReply(&v12);
      }

      v7 = *&v13.__val_;
      cat = v13.__cat_;
    }

    std::function<void ()(char const*,std::error_code)>::operator()(a3, 0, v7, cat);
  }

  else
  {
    string = xpc_dictionary_get_string(v4, "cellularDataPlan");
    v6 = std::system_category();
    std::function<void ()(char const*,std::error_code)>::operator()(a3, string, 0, v6);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void std::function<void ()(char const*,std::error_code)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8[0] = a3;
  v8[1] = a4;
  v7 = a2;
  v4 = *(a1 + 24);
  if (v4)
  {
    (*(*v4 + 48))(v4, &v7, v8);
  }

  else
  {
    v5 = std::__throw_bad_function_call[abi:sn200100]();
    SafeBrowsing::LookupContext::handleGetSafeBrowsingEnabledStateReply(v5, v6);
  }
}

void SafeBrowsing::LookupContext::handleGetSafeBrowsingEnabledStateReply(uint64_t a1, void *a2)
{
  v22[4] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = SSBOSLogXPC();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&dword_2255EE000, v4, OS_LOG_TYPE_INFO, "Receive GetSafeBrowsingEnabledState response from safe browsing service", &buf, 2u);
  }

  *(a1 + 163) = 0;
  if (MEMORY[0x22AA67EF0](v3) == MEMORY[0x277D86480])
  {
    *&v21.__val_ = Platform::xpcErrorCode(v3);
    v21.__cat_ = v12;
    if (v21.__val_)
    {
      v13 = SSBOSLogXPC();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        std::error_code::message(&buf, &v21);
        SafeBrowsing::LookupContext::handleGetSafeBrowsingEnabledStateReply(&buf);
      }
    }

    v14 = *(a1 + 168);
    p_buf = v14;
    v19 = *(a1 + 176);
    v15 = v19;
    *(a1 + 176) = 0;
    *(a1 + 184) = 0;
    *(a1 + 168) = 0;
    v16 = v15;
    while (v14 != v16)
    {
      std::function<void ()(BOOL,std::error_code)>::operator()(v14, 1, *&v21.__val_, v21.__cat_);
      v14 += 32;
    }

    v22[0] = &p_buf;
    p_p_buf = v22;
  }

  else
  {
    v5 = xpc_dictionary_get_BOOL(v3, "safeBrowsingEnabled");
    v6 = xpc_dictionary_get_BOOL(v3, "googleShouldUseV5");
    *(a1 + 161) = v5;
    *(*(a1 + 120) + 128) = v6;
    *(a1 + 162) = 0;
    buf = *(a1 + 168);
    size = buf.__r_.__value_.__l.__size_;
    v7 = buf.__r_.__value_.__r.__words[0];
    *(a1 + 176) = 0;
    *(a1 + 184) = 0;
    *(a1 + 168) = 0;
    v9 = size;
    if (v7 != size)
    {
      v10 = std::system_category();
      do
      {
        std::function<void ()(BOOL,std::error_code)>::operator()(v7, *(a1 + 161), 0, v10);
        v7 += 32;
      }

      while (v7 != v9);
    }

    p_buf = &buf;
    p_p_buf = &p_buf;
  }

  std::vector<std::function<void ()(BOOL,std::error_code)>>::__destroy_vector::operator()[abi:sn200100](p_p_buf);

  v17 = *MEMORY[0x277D85DE8];
}

void std::vector<std::function<void ()(std::error_code)>>::__destroy_vector::operator()[abi:sn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = std::__function::__value_func<void ()(std::error_code)>::~__value_func[abi:sn200100](v4 - 32);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::vector<std::function<void ()(BOOL,std::error_code)>>::__destroy_vector::operator()[abi:sn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = std::__function::__value_func<void ()(BOOL,std::error_code)>::~__value_func[abi:sn200100](v4 - 32);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void *std::function<void ()(Backend::Google::DatabaseConfiguration)>::operator=(void *a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x277D85DE8];
  std::__function::__value_func<void ()(Backend::Google::DatabaseConfiguration)>::__value_func[abi:sn200100](v5, a2);
  std::__function::__value_func<void ()(Backend::Google::DatabaseConfiguration)>::swap[abi:sn200100](v5, a1);
  std::__function::__value_func<void ()(Backend::Google::DatabaseConfiguration)>::~__value_func[abi:sn200100](v5);
  v3 = *MEMORY[0x277D85DE8];
  return a1;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,std::function<void ()(Backend::Google::DatabaseConfiguration)>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::function<void ()(Backend::Google::DatabaseConfiguration)>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::function<void ()(Backend::Google::DatabaseConfiguration)>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::function<void ()(Backend::Google::DatabaseConfiguration)>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(uint64_t a1, unsigned int *a2, uint64_t a3, _DWORD **a4)
{
  v7 = *a2;
  v8 = *(a1 + 8);
  if (v8)
  {
    v9 = vcnt_s8(v8);
    v9.i16[0] = vaddlv_u8(v9);
    if (v9.u32[0] > 1uLL)
    {
      v4 = *a2;
      if (v8 <= v7)
      {
        v4 = v7 % v8;
      }
    }

    else
    {
      v4 = (v8 - 1) & v7;
    }

    v10 = *(*a1 + 8 * v4);
    if (v10)
    {
      for (i = *v10; i; i = *i)
      {
        v12 = i[1];
        if (v12 == v7)
        {
          if (*(i + 4) == v7)
          {
            return i;
          }
        }

        else
        {
          if (v9.u32[0] > 1uLL)
          {
            if (v12 >= v8)
            {
              v12 %= v8;
            }
          }

          else
          {
            v12 &= v8 - 1;
          }

          if (v12 != v4)
          {
            break;
          }
        }
      }
    }
  }

  v13 = operator new(0x38uLL);
  v25[0] = v13;
  v25[1] = a1;
  v25[2] = 1;
  *v13 = 0;
  v13[1] = v7;
  *(v13 + 4) = **a4;
  v13[6] = 0;
  v14 = (*(a1 + 24) + 1);
  v15 = *(a1 + 32);
  if (!v8 || (v15 * v8) < v14)
  {
    v16 = 1;
    if (v8 >= 3)
    {
      v16 = (v8 & (v8 - 1)) != 0;
    }

    v17 = v16 | (2 * v8);
    v18 = vcvtps_u32_f32(v14 / v15);
    if (v17 <= v18)
    {
      v19 = v18;
    }

    else
    {
      v19 = v17;
    }

    std::__hash_table<std::__hash_value_type<unsigned char,std::vector<unsigned char>>,std::__unordered_map_hasher<unsigned char,std::__hash_value_type<unsigned char,std::vector<unsigned char>>,std::hash<unsigned char>,std::equal_to<unsigned char>,true>,std::__unordered_map_equal<unsigned char,std::__hash_value_type<unsigned char,std::vector<unsigned char>>,std::equal_to<unsigned char>,std::hash<unsigned char>,true>,std::allocator<std::__hash_value_type<unsigned char,std::vector<unsigned char>>>>::__rehash<true>(a1, v19);
    v8 = *(a1 + 8);
    if ((v8 & (v8 - 1)) != 0)
    {
      if (v8 <= v7)
      {
        v4 = v7 % v8;
      }

      else
      {
        v4 = v7;
      }
    }

    else
    {
      v4 = (v8 - 1) & v7;
    }
  }

  v20 = *a1;
  v21 = *(*a1 + 8 * v4);
  if (v21)
  {
    i = v25[0];
    *v25[0] = *v21;
    *v21 = i;
  }

  else
  {
    v22 = v25[0];
    *v25[0] = *(a1 + 16);
    *(a1 + 16) = v22;
    *(v20 + 8 * v4) = a1 + 16;
    i = v25[0];
    if (*v25[0])
    {
      v23 = *(*v25[0] + 8);
      if ((v8 & (v8 - 1)) != 0)
      {
        if (v23 >= v8)
        {
          v23 %= v8;
        }
      }

      else
      {
        v23 &= v8 - 1;
      }

      *(*a1 + 8 * v23) = v25[0];
      i = v25[0];
    }
  }

  v25[0] = 0;
  ++*(a1 + 24);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned int,std::function<void ()(Backend::Google::DatabaseConfiguration)>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,std::function<void ()(Backend::Google::DatabaseConfiguration)>>,void *>>>>::~unique_ptr[abi:sn200100](v25);
  return i;
}

void sub_22562EC9C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned int,std::function<void ()(Backend::Google::DatabaseConfiguration)>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,std::function<void ()(Backend::Google::DatabaseConfiguration)>>,void *>>>>::~unique_ptr[abi:sn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned int,std::function<void ()(Backend::Google::DatabaseConfiguration)>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned int,std::function<void ()(Backend::Google::DatabaseConfiguration)>>,void *>>>>::~unique_ptr[abi:sn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__function::__value_func<void ()(Backend::Google::DatabaseConfiguration)>::~__value_func[abi:sn200100](v2 + 24);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(Backend::Google::DatabaseConfiguration)>::~__value_func[abi:sn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void *std::__function::__value_func<void ()(Backend::Google::DatabaseConfiguration)>::swap[abi:sn200100](void *result, void *a2)
{
  v6[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v6);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v6[0] + 24))(v6, a2);
        result = (*(v6[0] + 32))(v6);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t std::vector<std::function<void ()(std::error_code)>>::__emplace_back_slow_path<std::function<void ()(std::error_code)> const&>(uint64_t *a1, uint64_t a2)
{
  v2 = a1[1] - *a1;
  v3 = (v2 >> 5) + 1;
  if (v3 >> 59)
  {
LABEL_11:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v19 = a1;
  if (!v7 || (v8 = std::allocator<std::array<unsigned char,32ul>>::allocate_at_least[abi:sn200100](a1, v7), v16 = v8, v17 = &v8[v2], *&v18 = &v8[v2], *(&v18 + 1) = &v8[32 * v9], !v8))
  {
    __break(1u);
    goto LABEL_11;
  }

  std::__function::__value_func<void ()(std::error_code)>::__value_func[abi:sn200100](&v8[v2], a2);
  *&v18 = v18 + 32;
  v10 = a1[1];
  v11 = &v17[*a1 - v10];
  std::__uninitialized_allocator_relocate[abi:sn200100]<std::allocator<std::function<void ()(std::error_code)>>,std::function<void ()(std::error_code)>*>(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  std::__split_buffer<std::function<void ()(std::error_code)>>::~__split_buffer(&v16);
  return v15;
}

void sub_22562F0D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<std::function<void ()(std::error_code)>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__uninitialized_allocator_relocate[abi:sn200100]<std::allocator<std::function<void ()(std::error_code)>>,std::function<void ()(std::error_code)>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      if (!a4)
      {
LABEL_10:
        __break(1u);
        return;
      }

      v8 = std::__function::__value_func<void ()(std::error_code)>::__value_func[abi:sn200100](a4, v7);
      v7 += 32;
      a4 = v8 + 32;
    }

    while (v7 != a3);
    while (v6 != a3)
    {
      if (!v6)
      {
        goto LABEL_10;
      }

      std::__function::__value_func<void ()(std::error_code)>::~__value_func[abi:sn200100](v6);
      v6 += 32;
    }
  }
}

uint64_t std::__function::__value_func<void ()(std::error_code)>::__value_func[abi:sn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v3;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__split_buffer<std::function<void ()(std::error_code)>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 32;
    std::__function::__value_func<void ()(std::error_code)>::~__value_func[abi:sn200100](i - 32);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void ___ZZN12SafeBrowsing13LookupContext36forceDeviceIdentificationTokenUpdateENSt3__18functionIFvbNS1_10error_codeEEEEENK3__0clEv_block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = std::__function::__value_func<void ()(BOOL,std::error_code)>::__value_func[abi:sn200100](v6, a1 + 48);
  SafeBrowsing::LookupContext::handleForceDeviceIdentificationTokenUpdateReply(v4, v3, v6);
  std::__function::__value_func<void ()(BOOL,std::error_code)>::~__value_func[abi:sn200100](v6);

  v5 = *MEMORY[0x277D85DE8];
}

void sub_22562F2B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(BOOL,std::error_code)>::~__value_func[abi:sn200100](va);

  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_ea8_32c169_ZTSKZZN12SafeBrowsing13LookupContext36forceDeviceIdentificationTokenUpdateENSt3__18functionIFvbNS1_10error_codeEEEEENK3__0clEvEUlPU24objcproto13OS_xpc_object8NSObjectE_(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return std::__function::__value_func<void ()(BOOL,std::error_code)>::__value_func[abi:sn200100](a1 + 48, a2 + 48);
}

void sub_22562F324(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 40);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_ea8_32c169_ZTSKZZN12SafeBrowsing13LookupContext36forceDeviceIdentificationTokenUpdateENSt3__18functionIFvbNS1_10error_codeEEEEENK3__0clEvEUlPU24objcproto13OS_xpc_object8NSObjectE_(uint64_t a1)
{
  std::__function::__value_func<void ()(BOOL,std::error_code)>::~__value_func[abi:sn200100](a1 + 48);
  v2 = *(a1 + 40);
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:sn200100](v2);
  }
}

uint64_t std::__function::__value_func<void ()(SafeBrowsing::DatabaseStatus,std::error_code)>::~__value_func[abi:sn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::function<void ()(SafeBrowsing::DatabaseStatus,std::error_code)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[0] = a3;
  v7[1] = a4;
  v4 = *(a1 + 24);
  if (v4)
  {
    return (*(*v4 + 48))(v4, a2, v7);
  }

  v6 = std::__throw_bad_function_call[abi:sn200100]();
  return ___ZZN12SafeBrowsing13LookupContext16getServiceStatusENSt3__18functionIFvNS_13ServiceStatusENS1_10error_codeEEEEENK3__0clEv_block_invoke(v6);
}

void ___ZZN12SafeBrowsing13LookupContext16getServiceStatusENSt3__18functionIFvNS_13ServiceStatusENS1_10error_codeEEEEENK3__0clEv_block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = std::__function::__value_func<void ()(SafeBrowsing::ServiceStatus,std::error_code)>::__value_func[abi:sn200100](v6, a1 + 48);
  SafeBrowsing::LookupContext::handleGetServiceStatusReply(v4, v3, v6);
  std::__function::__value_func<void ()(SafeBrowsing::ServiceStatus,std::error_code)>::~__value_func[abi:sn200100](v6);

  v5 = *MEMORY[0x277D85DE8];
}

void sub_22562F4E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(SafeBrowsing::ServiceStatus,std::error_code)>::~__value_func[abi:sn200100](va);

  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_ea8_32c167_ZTSKZZN12SafeBrowsing13LookupContext16getServiceStatusENSt3__18functionIFvNS_13ServiceStatusENS1_10error_codeEEEEENK3__0clEvEUlPU24objcproto13OS_xpc_object8NSObjectE_(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return std::__function::__value_func<void ()(SafeBrowsing::ServiceStatus,std::error_code)>::__value_func[abi:sn200100](a1 + 48, a2 + 48);
}

void sub_22562F554(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 40);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_ea8_32c167_ZTSKZZN12SafeBrowsing13LookupContext16getServiceStatusENSt3__18functionIFvNS_13ServiceStatusENS1_10error_codeEEEEENK3__0clEvEUlPU24objcproto13OS_xpc_object8NSObjectE_(uint64_t a1)
{
  std::__function::__value_func<void ()(SafeBrowsing::ServiceStatus,std::error_code)>::~__value_func[abi:sn200100](a1 + 48);
  v2 = *(a1 + 40);
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:sn200100](v2);
  }
}

uint64_t std::__function::__value_func<void ()(SafeBrowsing::ServiceStatus,std::error_code)>::~__value_func[abi:sn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

char *std::vector<Backend::LookupResult>::__vallocate[abi:sn200100](void *a1, unint64_t a2)
{
  if (a2 >> 61)
  {
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  result = std::allocator<Backend::LookupResult>::allocate_at_least[abi:sn200100](a1, a2);
  *a1 = result;
  a1[1] = result;
  a1[2] = &result[8 * v4];
  return result;
}

void *std::allocator<Backend::LookupResult>::allocate_at_least[abi:sn200100](uint64_t a1, unint64_t a2)
{
  if (a2 >> 61)
  {
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  return operator new(8 * a2);
}

uint64_t __copy_helper_block_ea8_32c160_ZTSKZZN12SafeBrowsing13LookupContext27getSafeBrowsingEnabledStateENSt3__18functionIFvbNS1_10error_codeEEEEENK3__0clEvEUlPU24objcproto13OS_xpc_object8NSObjectE_(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_ea8_32c160_ZTSKZZN12SafeBrowsing13LookupContext27getSafeBrowsingEnabledStateENSt3__18functionIFvbNS1_10error_codeEEEEENK3__0clEvEUlPU24objcproto13OS_xpc_object8NSObjectE_(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v1);
  }
}

uint64_t std::vector<std::function<void ()(BOOL,std::error_code)>>::__emplace_back_slow_path<std::function<void ()(BOOL,std::error_code)> const&>(uint64_t *a1, uint64_t a2)
{
  v2 = a1[1] - *a1;
  v3 = (v2 >> 5) + 1;
  if (v3 >> 59)
  {
LABEL_11:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v19 = a1;
  if (!v7 || (v8 = std::allocator<std::array<unsigned char,32ul>>::allocate_at_least[abi:sn200100](a1, v7), v16 = v8, v17 = &v8[v2], *&v18 = &v8[v2], *(&v18 + 1) = &v8[32 * v9], !v8))
  {
    __break(1u);
    goto LABEL_11;
  }

  std::__function::__value_func<void ()(BOOL,std::error_code)>::__value_func[abi:sn200100](&v8[v2], a2);
  *&v18 = v18 + 32;
  v10 = a1[1];
  v11 = &v17[*a1 - v10];
  std::__uninitialized_allocator_relocate[abi:sn200100]<std::allocator<std::function<void ()(BOOL,std::error_code)>>,std::function<void ()(BOOL,std::error_code)>*>(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  std::__split_buffer<std::function<void ()(BOOL,std::error_code)>>::~__split_buffer(&v16);
  return v15;
}

void sub_22562F7DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<std::function<void ()(BOOL,std::error_code)>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__uninitialized_allocator_relocate[abi:sn200100]<std::allocator<std::function<void ()(BOOL,std::error_code)>>,std::function<void ()(BOOL,std::error_code)>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      if (!a4)
      {
LABEL_10:
        __break(1u);
        return;
      }

      v8 = std::__function::__value_func<void ()(BOOL,std::error_code)>::__value_func[abi:sn200100](a4, v7);
      v7 += 32;
      a4 = v8 + 32;
    }

    while (v7 != a3);
    while (v6 != a3)
    {
      if (!v6)
      {
        goto LABEL_10;
      }

      std::__function::__value_func<void ()(BOOL,std::error_code)>::~__value_func[abi:sn200100](v6);
      v6 += 32;
    }
  }
}

uint64_t std::__function::__value_func<void ()(BOOL,std::error_code)>::__value_func[abi:sn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v3;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__split_buffer<std::function<void ()(BOOL,std::error_code)>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 32;
    std::__function::__value_func<void ()(BOOL,std::error_code)>::~__value_func[abi:sn200100](i - 32);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t __copy_helper_block_ea8_32c198_ZTSKZZN12SafeBrowsing13LookupContext33dispatchWhenDatabasesAreAvailableEN7Backend6Google14ProtectionTypeENSt3__18functionIFvNS4_10error_codeEEEEENK3__0clEvEUlPU24objcproto13OS_xpc_object8NSObjectE_(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  *(result + 48) = *(a2 + 48);
  return result;
}

void __destroy_helper_block_ea8_32c198_ZTSKZZN12SafeBrowsing13LookupContext33dispatchWhenDatabasesAreAvailableEN7Backend6Google14ProtectionTypeENSt3__18functionIFvNS4_10error_codeEEEEENK3__0clEvEUlPU24objcproto13OS_xpc_object8NSObjectE_(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v1);
  }
}

uint64_t std::vector<std::function<void ()(std::error_code)>>::__emplace_back_slow_path<std::function<void ()(std::error_code)>>(uint64_t *a1, uint64_t a2)
{
  v2 = a1[1] - *a1;
  v3 = (v2 >> 5) + 1;
  if (v3 >> 59)
  {
LABEL_11:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v20 = a1;
  if (!v7 || (v8 = std::allocator<std::array<unsigned char,32ul>>::allocate_at_least[abi:sn200100](a1, v7), v17 = v8, v18 = &v8[v2], *(&v19 + 1) = &v8[32 * v9], !v8))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = std::__function::__value_func<void ()(std::error_code)>::__value_func[abi:sn200100](&v8[v2], a2);
  *&v19 = v10 + 32;
  v11 = a1[1];
  v12 = v10 + *a1 - v11;
  std::__uninitialized_allocator_relocate[abi:sn200100]<std::allocator<std::function<void ()(std::error_code)>>,std::function<void ()(std::error_code)>*>(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = a1[2];
  v16 = v19;
  *(a1 + 1) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  std::__split_buffer<std::function<void ()(std::error_code)>>::~__split_buffer(&v17);
  return v16;
}

void sub_22562FA70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<std::function<void ()(std::error_code)>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t *std::vector<SafeBrowsing::ServiceStatus::Connection>::push_back[abi:sn200100](uint64_t *result, uint64_t a2)
{
  v2 = result;
  v3 = result[1];
  if (v3 >= result[2])
  {
    result = std::vector<SafeBrowsing::ServiceStatus::Connection>::__emplace_back_slow_path<SafeBrowsing::ServiceStatus::Connection>(result, a2);
    goto LABEL_5;
  }

  if (v3)
  {
    *v3 = *a2;
    v4 = *(a2 + 8);
    *(v3 + 24) = *(a2 + 24);
    *(v3 + 8) = v4;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 8) = 0;
    result = (v3 + 32);
LABEL_5:
    v2[1] = result;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t std::vector<SafeBrowsing::ServiceStatus::Connection>::__emplace_back_slow_path<SafeBrowsing::ServiceStatus::Connection>(uint64_t *a1, uint64_t a2)
{
  v2 = a1[1] - *a1;
  v3 = (v2 >> 5) + 1;
  if (v3 >> 59)
  {
LABEL_11:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v21 = a1;
  if (!v7 || (v8 = std::allocator<std::array<unsigned char,32ul>>::allocate_at_least[abi:sn200100](a1, v7), v9 = &v8[v2], v18 = v8, v19 = &v8[v2], *(&v20 + 1) = &v8[32 * v10], !v8))
  {
    __break(1u);
    goto LABEL_11;
  }

  *v9 = *a2;
  v11 = *(a2 + 8);
  *(v9 + 3) = *(a2 + 24);
  *(v9 + 8) = v11;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  *&v20 = v9 + 32;
  v12 = a1[1];
  v13 = &v9[*a1 - v12];
  std::__uninitialized_allocator_relocate[abi:sn200100]<std::allocator<SafeBrowsing::ServiceStatus::Connection>,SafeBrowsing::ServiceStatus::Connection*>(a1, *a1, v12, v13);
  v14 = *a1;
  *a1 = v13;
  v15 = a1[2];
  v17 = v20;
  *(a1 + 1) = v20;
  *&v20 = v14;
  *(&v20 + 1) = v15;
  v18 = v14;
  v19 = v14;
  std::__split_buffer<SafeBrowsing::ServiceStatus::Connection>::~__split_buffer(&v18);
  return v17;
}

void sub_22562FBF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__split_buffer<SafeBrowsing::ServiceStatus::Connection>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__uninitialized_allocator_relocate[abi:sn200100]<std::allocator<SafeBrowsing::ServiceStatus::Connection>,SafeBrowsing::ServiceStatus::Connection*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      if (!a4)
      {
LABEL_12:
        __break(1u);
        return;
      }

      *a4 = *v6;
      v7 = *(v6 + 8);
      *(a4 + 24) = *(v6 + 24);
      *(a4 + 8) = v7;
      *(v6 + 16) = 0;
      *(v6 + 24) = 0;
      *(v6 + 8) = 0;
      v6 += 32;
      a4 += 32;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      if (!v5)
      {
        goto LABEL_12;
      }

      if (*(v5 + 31) < 0)
      {
        operator delete(*(v5 + 8));
      }

      v5 += 32;
    }
  }
}

uint64_t std::__split_buffer<SafeBrowsing::ServiceStatus::Connection>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<SafeBrowsing::ServiceStatus::Connection>::__destruct_at_end[abi:sn200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<SafeBrowsing::ServiceStatus::Connection>::__destruct_at_end[abi:sn200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 32;
      *(a1 + 16) = v2 - 32;
      if (*(v2 - 1) < 0)
      {
        operator delete(*(v2 - 24));
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

uint64_t std::__call_once_proxy[abi:sn200100]<std::tuple<SafeBrowsing::allowGoogleSafeBrowsing(void)::$_0 &&>>()
{
  result = dyld_program_sdk_at_least();
  SafeBrowsing::allowGoogleSafeBrowsing(void)::result = result;
  return result;
}

void ___ZZN12SafeBrowsing13LookupContext36forceLoadRemoteConfigurationFromDiskENSt3__18functionIFvbNS1_10error_codeEEEEENK3__0clEv_block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = std::__function::__value_func<void ()(BOOL,std::error_code)>::__value_func[abi:sn200100](v6, a1 + 48);
  SafeBrowsing::LookupContext::handleForceLoadRemoteConfigurationFromDiskReply(v4, v3, v6);
  std::__function::__value_func<void ()(BOOL,std::error_code)>::~__value_func[abi:sn200100](v6);

  v5 = *MEMORY[0x277D85DE8];
}

void sub_22562FDDC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(BOOL,std::error_code)>::~__value_func[abi:sn200100](va);

  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_ea8_32c169_ZTSKZZN12SafeBrowsing13LookupContext36forceLoadRemoteConfigurationFromDiskENSt3__18functionIFvbNS1_10error_codeEEEEENK3__0clEvEUlPU24objcproto13OS_xpc_object8NSObjectE_(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return std::__function::__value_func<void ()(BOOL,std::error_code)>::__value_func[abi:sn200100](a1 + 48, a2 + 48);
}

void sub_22562FE4C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 40);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_ea8_32c169_ZTSKZZN12SafeBrowsing13LookupContext36forceLoadRemoteConfigurationFromDiskENSt3__18functionIFvbNS1_10error_codeEEEEENK3__0clEvEUlPU24objcproto13OS_xpc_object8NSObjectE_(uint64_t a1)
{
  std::__function::__value_func<void ()(BOOL,std::error_code)>::~__value_func[abi:sn200100](a1 + 48);
  v2 = *(a1 + 40);
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:sn200100](v2);
  }
}

void ___ZZN12SafeBrowsing13LookupContext40forceUpdateRemoteConfigurationFromServerENSt3__18functionIFvbNS1_10error_codeEEEEENK3__0clEv_block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = std::__function::__value_func<void ()(BOOL,std::error_code)>::__value_func[abi:sn200100](v6, a1 + 48);
  SafeBrowsing::LookupContext::handleForceUpdateRemoteConfigurationFromServerReply(v4, v3, v6);
  std::__function::__value_func<void ()(BOOL,std::error_code)>::~__value_func[abi:sn200100](v6);

  v5 = *MEMORY[0x277D85DE8];
}

void sub_22562FF38(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(BOOL,std::error_code)>::~__value_func[abi:sn200100](va);

  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_ea8_32c173_ZTSKZZN12SafeBrowsing13LookupContext40forceUpdateRemoteConfigurationFromServerENSt3__18functionIFvbNS1_10error_codeEEEEENK3__0clEvEUlPU24objcproto13OS_xpc_object8NSObjectE_(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return std::__function::__value_func<void ()(BOOL,std::error_code)>::__value_func[abi:sn200100](a1 + 48, a2 + 48);
}

void sub_22562FFA8(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 40);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_ea8_32c173_ZTSKZZN12SafeBrowsing13LookupContext40forceUpdateRemoteConfigurationFromServerENSt3__18functionIFvbNS1_10error_codeEEEEENK3__0clEvEUlPU24objcproto13OS_xpc_object8NSObjectE_(uint64_t a1)
{
  std::__function::__value_func<void ()(BOOL,std::error_code)>::~__value_func[abi:sn200100](a1 + 48);
  v2 = *(a1 + 40);
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:sn200100](v2);
  }
}

void ___ZZN12SafeBrowsing13LookupContext18deleteAllDatabasesENSt3__18functionIFvbNS1_10error_codeEEEEENK3__0clEv_block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = std::__function::__value_func<void ()(BOOL,std::error_code)>::__value_func[abi:sn200100](v6, a1 + 48);
  SafeBrowsing::LookupContext::handleDeleteAllDatabasesReply(v4, v3, v6);
  std::__function::__value_func<void ()(BOOL,std::error_code)>::~__value_func[abi:sn200100](v6);

  v5 = *MEMORY[0x277D85DE8];
}

void sub_225630094(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(BOOL,std::error_code)>::~__value_func[abi:sn200100](va);

  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_ea8_32c151_ZTSKZZN12SafeBrowsing13LookupContext18deleteAllDatabasesENSt3__18functionIFvbNS1_10error_codeEEEEENK3__0clEvEUlPU24objcproto13OS_xpc_object8NSObjectE_(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return std::__function::__value_func<void ()(BOOL,std::error_code)>::__value_func[abi:sn200100](a1 + 48, a2 + 48);
}

void sub_225630104(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 40);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_ea8_32c151_ZTSKZZN12SafeBrowsing13LookupContext18deleteAllDatabasesENSt3__18functionIFvbNS1_10error_codeEEEEENK3__0clEvEUlPU24objcproto13OS_xpc_object8NSObjectE_(uint64_t a1)
{
  std::__function::__value_func<void ()(BOOL,std::error_code)>::~__value_func[abi:sn200100](a1 + 48);
  v2 = *(a1 + 40);
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:sn200100](v2);
  }
}

uint64_t __copy_helper_block_ea8_32c110_ZTSKZZN12SafeBrowsing13LookupContext16setClientIsInUseEvENK3__0clEvEUlPU24objcproto13OS_xpc_object8NSObjectE_(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_ea8_32c110_ZTSKZZN12SafeBrowsing13LookupContext16setClientIsInUseEvENK3__0clEvEUlPU24objcproto13OS_xpc_object8NSObjectE_(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v1);
  }
}

void ___ZZN12SafeBrowsing13LookupContext21fetchCellularDataPlanENSt3__18functionIFvPKcNS1_10error_codeEEEEENK3__0clEv_block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = std::__function::__value_func<void ()(char const*,std::error_code)>::__value_func[abi:sn200100](v6, a1 + 48);
  SafeBrowsing::LookupContext::handleFetchCellularDataPlanReply(v4, v3, v6);
  std::__function::__value_func<void ()(char const*,std::error_code)>::~__value_func[abi:sn200100](v6);

  v5 = *MEMORY[0x277D85DE8];
}

void sub_225630224(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(char const*,std::error_code)>::~__value_func[abi:sn200100](va);

  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_ea8_32c156_ZTSKZZN12SafeBrowsing13LookupContext21fetchCellularDataPlanENSt3__18functionIFvPKcNS1_10error_codeEEEEENK3__0clEvEUlPU24objcproto13OS_xpc_object8NSObjectE_(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return std::__function::__value_func<void ()(char const*,std::error_code)>::__value_func[abi:sn200100](a1 + 48, a2 + 48);
}

void sub_225630294(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 40);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v3);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_ea8_32c156_ZTSKZZN12SafeBrowsing13LookupContext21fetchCellularDataPlanENSt3__18functionIFvPKcNS1_10error_codeEEEEENK3__0clEvEUlPU24objcproto13OS_xpc_object8NSObjectE_(uint64_t a1)
{
  std::__function::__value_func<void ()(char const*,std::error_code)>::~__value_func[abi:sn200100](a1 + 48);
  v2 = *(a1 + 40);
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:sn200100](v2);
  }
}

uint64_t std::__function::__value_func<void ()(char const*,std::error_code)>::~__value_func[abi:sn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(std::error_code)>::~__value_func[abi:sn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void _ZNSt3__115allocate_sharedB8sn200100IN12SafeBrowsing27BrowsingDatabaseCoordinatorENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_(void *a1@<X8>)
{
  v2 = operator new(0xA0uLL);
  _ZNSt3__120__shared_ptr_emplaceIN12SafeBrowsing27BrowsingDatabaseCoordinatorENS_9allocatorIS2_EEEC2B8sn200100IJES4_Li0EEES4_DpOT_(v2);
  *a1 = v2 + 3;
  a1[1] = v2;

  std::shared_ptr<ByteProvider>::__enable_weak_this[abi:sn200100]<ByteProvider,ByteProvider,0>(a1, v2 + 4, (v2 + 3));
}

uint64_t _ZNSt3__120__shared_ptr_emplaceIN12SafeBrowsing27BrowsingDatabaseCoordinatorENS_9allocatorIS2_EEEC2B8sn200100IJES4_Li0EEES4_DpOT_(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = &unk_2838CD5F8;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0;
  SafeBrowsing::DatabaseCoordinator::DatabaseCoordinator(a1 + 24);
  *(a1 + 24) = &unk_2838CDD70;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 137) = 0u;
  return a1;
}

void std::__shared_ptr_emplace<SafeBrowsing::BrowsingDatabaseCoordinator>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2838CD5F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned int,std::function<void ()(Backend::Google::DatabaseConfiguration)>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::function<void ()(Backend::Google::DatabaseConfiguration)>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::function<void ()(Backend::Google::DatabaseConfiguration)>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::function<void ()(Backend::Google::DatabaseConfiguration)>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned int,std::function<void ()(Backend::Google::DatabaseConfiguration)>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::function<void ()(Backend::Google::DatabaseConfiguration)>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::function<void ()(Backend::Google::DatabaseConfiguration)>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::function<void ()(Backend::Google::DatabaseConfiguration)>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned int,std::function<void ()(Backend::Google::DatabaseConfiguration)>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::function<void ()(Backend::Google::DatabaseConfiguration)>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::function<void ()(Backend::Google::DatabaseConfiguration)>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::function<void ()(Backend::Google::DatabaseConfiguration)>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__function::__value_func<void ()(Backend::Google::DatabaseConfiguration)>::~__value_func[abi:sn200100]((v2 + 3));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t std::__function::__value_func<void ()(BOOL,std::error_code)>::~__value_func[abi:sn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(Backend::Google::DatabaseConfiguration)>::__value_func[abi:sn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(SafeBrowsing::DatabaseStatus,std::error_code)>::__value_func[abi:sn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__func<SafeBrowsing::LookupContext::getDatabaseStatus(std::function<void ()(SafeBrowsing::DatabaseStatus,std::error_code)>)::$_0,std::allocator<SafeBrowsing::LookupContext::getDatabaseStatus(std::function<void ()(SafeBrowsing::DatabaseStatus,std::error_code)>)::$_0>,void ()(std::error_code)>::~__func(uint64_t a1)
{
  *a1 = &unk_2838CEE38;
  std::__function::__value_func<void ()(SafeBrowsing::DatabaseStatus,std::error_code)>::~__value_func[abi:sn200100](a1 + 32);

  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v2);
  }

  return a1;
}

void std::__function::__func<SafeBrowsing::LookupContext::getDatabaseStatus(std::function<void ()(SafeBrowsing::DatabaseStatus,std::error_code)>)::$_0,std::allocator<SafeBrowsing::LookupContext::getDatabaseStatus(std::function<void ()(SafeBrowsing::DatabaseStatus,std::error_code)>)::$_0>,void ()(std::error_code)>::~__func(void *a1)
{
  *a1 = &unk_2838CEE38;
  std::__function::__value_func<void ()(SafeBrowsing::DatabaseStatus,std::error_code)>::~__value_func[abi:sn200100](a1 + 32);

  v2 = *(a1 + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v2);
  }

  operator delete(a1);
}

void *std::__function::__func<SafeBrowsing::LookupContext::getDatabaseStatus(std::function<void ()(SafeBrowsing::DatabaseStatus,std::error_code)>)::$_0,std::allocator<SafeBrowsing::LookupContext::getDatabaseStatus(std::function<void ()(SafeBrowsing::DatabaseStatus,std::error_code)>)::$_0>,void ()(std::error_code)>::__clone(uint64_t a1)
{
  v2 = operator new(0x40uLL);
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  *v2 = &unk_2838CEE38;
  v2[1] = v4;
  v2[2] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v2[3] = *(a1 + 24);
  std::__function::__value_func<void ()(SafeBrowsing::DatabaseStatus,std::error_code)>::__value_func[abi:sn200100]((v2 + 4), a1 + 32);
  return v2;
}

void sub_225630A34(_Unwind_Exception *a1)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<SafeBrowsing::LookupContext::getDatabaseStatus(std::function<void ()(SafeBrowsing::DatabaseStatus,std::error_code)>)::$_0,std::allocator<SafeBrowsing::LookupContext::getDatabaseStatus(std::function<void ()(SafeBrowsing::DatabaseStatus,std::error_code)>)::$_0>,void ()(std::error_code)>::__clone(uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  *a2 = &unk_2838CEE38;
  a2[1] = v5;
  a2[2] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  a2[3] = *(a1 + 24);
  return std::__function::__value_func<void ()(SafeBrowsing::DatabaseStatus,std::error_code)>::__value_func[abi:sn200100]((a2 + 4), a1 + 32);
}

void sub_225630ACC(_Unwind_Exception *a1)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v3);
  }

  _Unwind_Resume(a1);
}

void std::__function::__func<SafeBrowsing::LookupContext::getDatabaseStatus(std::function<void ()(SafeBrowsing::DatabaseStatus,std::error_code)>)::$_0,std::allocator<SafeBrowsing::LookupContext::getDatabaseStatus(std::function<void ()(SafeBrowsing::DatabaseStatus,std::error_code)>)::$_0>,void ()(std::error_code)>::destroy(uint64_t a1)
{
  std::__function::__value_func<void ()(SafeBrowsing::DatabaseStatus,std::error_code)>::~__value_func[abi:sn200100](a1 + 32);

  v2 = *(a1 + 16);
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:sn200100](v2);
  }
}

void std::__function::__func<SafeBrowsing::LookupContext::getDatabaseStatus(std::function<void ()(SafeBrowsing::DatabaseStatus,std::error_code)>)::$_0,std::allocator<SafeBrowsing::LookupContext::getDatabaseStatus(std::function<void ()(SafeBrowsing::DatabaseStatus,std::error_code)>)::$_0>,void ()(std::error_code)>::destroy_deallocate(uint64_t a1)
{
  std::__function::__value_func<void ()(SafeBrowsing::DatabaseStatus,std::error_code)>::~__value_func[abi:sn200100](a1 + 32);

  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v2);
  }

  operator delete(a1);
}

void std::__function::__func<SafeBrowsing::LookupContext::getDatabaseStatus(std::function<void ()(SafeBrowsing::DatabaseStatus,std::error_code)>)::$_0,std::allocator<SafeBrowsing::LookupContext::getDatabaseStatus(std::function<void ()(SafeBrowsing::DatabaseStatus,std::error_code)>)::$_0>,void ()(std::error_code)>::operator()(uint64_t a1, void *a2)
{
  if (*a2)
  {
    v2 = a2[1];
    v3 = *(a1 + 8);
    *(v3 + 136) = *a2;
    *(v3 + 144) = v2;
  }

  dispatch_group_leave(*(a1 + 24));
}

uint64_t std::__function::__value_func<void ()(SafeBrowsing::ServiceStatus,std::error_code)>::__value_func[abi:sn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(std::vector<Backend::LookupResult>,std::error_code)>::__value_func[abi:sn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v3;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(std::vector<Backend::LookupResult>,std::error_code)>::~__value_func[abi:sn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__func<SafeBrowsing::LookupContext::lookUpURL(NSURL *,SafeBrowsing::IsMainFrame,SafeBrowsing::ClientConfidenceOfSafety,SafeBrowsing::IgnoreEnableState,std::function<void ()(std::vector<Backend::LookupResult>,std::error_code)>)::$_0,std::allocator<SafeBrowsing::LookupContext::lookUpURL(NSURL *,SafeBrowsing::IsMainFrame,SafeBrowsing::ClientConfidenceOfSafety,SafeBrowsing::IgnoreEnableState,std::function<void ()(std::vector<Backend::LookupResult>,std::error_code)>)::$_0>,void ()(BOOL,std::error_code)>::~__func(uint64_t a1)
{
  *a1 = &unk_2838CEE80;
  std::__function::__value_func<void ()(std::vector<Backend::LookupResult>,std::error_code)>::~__value_func[abi:sn200100](a1 + 40);

  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v2);
  }

  return a1;
}

void std::__function::__func<SafeBrowsing::LookupContext::lookUpURL(NSURL *,SafeBrowsing::IsMainFrame,SafeBrowsing::ClientConfidenceOfSafety,SafeBrowsing::IgnoreEnableState,std::function<void ()(std::vector<Backend::LookupResult>,std::error_code)>)::$_0,std::allocator<SafeBrowsing::LookupContext::lookUpURL(NSURL *,SafeBrowsing::IsMainFrame,SafeBrowsing::ClientConfidenceOfSafety,SafeBrowsing::IgnoreEnableState,std::function<void ()(std::vector<Backend::LookupResult>,std::error_code)>)::$_0>,void ()(BOOL,std::error_code)>::~__func(void *a1)
{
  *a1 = &unk_2838CEE80;
  std::__function::__value_func<void ()(std::vector<Backend::LookupResult>,std::error_code)>::~__value_func[abi:sn200100](a1 + 40);

  v2 = *(a1 + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v2);
  }

  operator delete(a1);
}

void *std::__function::__func<SafeBrowsing::LookupContext::lookUpURL(NSURL *,SafeBrowsing::IsMainFrame,SafeBrowsing::ClientConfidenceOfSafety,SafeBrowsing::IgnoreEnableState,std::function<void ()(std::vector<Backend::LookupResult>,std::error_code)>)::$_0,std::allocator<SafeBrowsing::LookupContext::lookUpURL(NSURL *,SafeBrowsing::IsMainFrame,SafeBrowsing::ClientConfidenceOfSafety,SafeBrowsing::IgnoreEnableState,std::function<void ()(std::vector<Backend::LookupResult>,std::error_code)>)::$_0>,void ()(BOOL,std::error_code)>::__clone(uint64_t a1)
{
  v2 = operator new(0x48uLL);
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  *v2 = &unk_2838CEE80;
  v2[1] = v4;
  v2[2] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v2[3] = v5;
  v2[4] = v6;
  std::__function::__value_func<void ()(std::vector<Backend::LookupResult>,std::error_code)>::__value_func[abi:sn200100]((v2 + 5), a1 + 40);
  return v2;
}

void sub_225630E9C(_Unwind_Exception *a1)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<SafeBrowsing::LookupContext::lookUpURL(NSURL *,SafeBrowsing::IsMainFrame,SafeBrowsing::ClientConfidenceOfSafety,SafeBrowsing::IgnoreEnableState,std::function<void ()(std::vector<Backend::LookupResult>,std::error_code)>)::$_0,std::allocator<SafeBrowsing::LookupContext::lookUpURL(NSURL *,SafeBrowsing::IsMainFrame,SafeBrowsing::ClientConfidenceOfSafety,SafeBrowsing::IgnoreEnableState,std::function<void ()(std::vector<Backend::LookupResult>,std::error_code)>)::$_0>,void ()(BOOL,std::error_code)>::__clone(uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  *a2 = &unk_2838CEE80;
  a2[1] = v5;
  a2[2] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  a2[3] = *(a1 + 24);
  a2[4] = *(a1 + 32);
  return std::__function::__value_func<void ()(std::vector<Backend::LookupResult>,std::error_code)>::__value_func[abi:sn200100]((a2 + 5), a1 + 40);
}

void sub_225630F3C(_Unwind_Exception *a1)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v3);
  }

  _Unwind_Resume(a1);
}

void std::__function::__func<SafeBrowsing::LookupContext::lookUpURL(NSURL *,SafeBrowsing::IsMainFrame,SafeBrowsing::ClientConfidenceOfSafety,SafeBrowsing::IgnoreEnableState,std::function<void ()(std::vector<Backend::LookupResult>,std::error_code)>)::$_0,std::allocator<SafeBrowsing::LookupContext::lookUpURL(NSURL *,SafeBrowsing::IsMainFrame,SafeBrowsing::ClientConfidenceOfSafety,SafeBrowsing::IgnoreEnableState,std::function<void ()(std::vector<Backend::LookupResult>,std::error_code)>)::$_0>,void ()(BOOL,std::error_code)>::destroy(uint64_t a1)
{
  std::__function::__value_func<void ()(std::vector<Backend::LookupResult>,std::error_code)>::~__value_func[abi:sn200100](a1 + 40);

  v2 = *(a1 + 16);
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:sn200100](v2);
  }
}

void std::__function::__func<SafeBrowsing::LookupContext::lookUpURL(NSURL *,SafeBrowsing::IsMainFrame,SafeBrowsing::ClientConfidenceOfSafety,SafeBrowsing::IgnoreEnableState,std::function<void ()(std::vector<Backend::LookupResult>,std::error_code)>)::$_0,std::allocator<SafeBrowsing::LookupContext::lookUpURL(NSURL *,SafeBrowsing::IsMainFrame,SafeBrowsing::ClientConfidenceOfSafety,SafeBrowsing::IgnoreEnableState,std::function<void ()(std::vector<Backend::LookupResult>,std::error_code)>)::$_0>,void ()(BOOL,std::error_code)>::destroy_deallocate(uint64_t a1)
{
  std::__function::__value_func<void ()(std::vector<Backend::LookupResult>,std::error_code)>::~__value_func[abi:sn200100](a1 + 40);

  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v2);
  }

  operator delete(a1);
}

void std::__function::__func<SafeBrowsing::LookupContext::lookUpURL(NSURL *,SafeBrowsing::IsMainFrame,SafeBrowsing::ClientConfidenceOfSafety,SafeBrowsing::IgnoreEnableState,std::function<void ()(std::vector<Backend::LookupResult>,std::error_code)>)::$_0,std::allocator<SafeBrowsing::LookupContext::lookUpURL(NSURL *,SafeBrowsing::IsMainFrame,SafeBrowsing::ClientConfidenceOfSafety,SafeBrowsing::IgnoreEnableState,std::function<void ()(std::vector<Backend::LookupResult>,std::error_code)>)::$_0>,void ()(BOOL,std::error_code)>::operator()(uint64_t a1, char *a2, uint64_t *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = *a2;
  v6 = *a3;
  cat = a3[1];
  *&v17.__val_ = v6;
  v17.__cat_ = cat;
  if (v5)
  {
    v8 = *(a1 + 8);
    v9 = *(a1 + 24);
    v10 = *(a1 + 32);
    v11 = *(a1 + 36);
    std::__function::__value_func<void ()(std::vector<Backend::LookupResult>,std::error_code)>::__value_func[abi:sn200100](&v18, a1 + 40);
    SafeBrowsing::LookupContext::performURLLookup(v8, v9, v10, v11, &v18);
    std::__function::__value_func<void ()(std::vector<Backend::LookupResult>,std::error_code)>::~__value_func[abi:sn200100](&v18);
  }

  else
  {
    if (v6)
    {
      v12 = SSBOSLogXPC();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        std::error_code::message(&v18, &v17);
        std::__function::__func<SafeBrowsing::LookupContext::lookUpURL(NSURL *,SafeBrowsing::IsMainFrame,SafeBrowsing::ClientConfidenceOfSafety,SafeBrowsing::IgnoreEnableState,std::function<void ()(std::vector<Backend::LookupResult>,std::error_code)>)::$_0,std::allocator<SafeBrowsing::LookupContext::lookUpURL(NSURL *,SafeBrowsing::IsMainFrame,SafeBrowsing::ClientConfidenceOfSafety,SafeBrowsing::IgnoreEnableState,std::function<void ()(std::vector<Backend::LookupResult>,std::error_code)>)::$_0>,void ()(BOOL,std::error_code)>::operator()(&v18);
      }

      v6 = *&v17.__val_;
      cat = v17.__cat_;
    }

    __p = 0;
    v15 = 0;
    v16 = 0;
    std::function<void ()(std::vector<Backend::LookupResult>,std::error_code)>::operator()(a1 + 40, &__p, v6, cat);
    if (__p)
    {
      v15 = __p;
      operator delete(__p);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

uint64_t std::__function::__value_func<void ()(std::chrono::time_point<std::chrono::system_clock,std::chrono::duration<long long,std::ratio<1l,1000000l>>>,std::error_code)>::__value_func[abi:sn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(std::chrono::time_point<std::chrono::system_clock,std::chrono::duration<long long,std::ratio<1l,1000000l>>>,std::error_code)>::~__value_func[abi:sn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__func<SafeBrowsing::LookupContext::performURLLookup(NSURL *,SafeBrowsing::IsMainFrame,SafeBrowsing::ClientConfidenceOfSafety,std::function<void ()(std::vector<Backend::LookupResult>,std::error_code)>)::$_0,std::allocator<SafeBrowsing::LookupContext::performURLLookup(NSURL *,SafeBrowsing::IsMainFrame,SafeBrowsing::ClientConfidenceOfSafety,std::function<void ()(std::vector<Backend::LookupResult>,std::error_code)>)::$_0>,void ()(std::error_code)>::~__func(uint64_t a1)
{
  *a1 = &unk_2838CEEC8;
  std::__function::__value_func<void ()(std::vector<Backend::LookupResult>,std::error_code)>::~__value_func[abi:sn200100](a1 + 40);

  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v2);
  }

  return a1;
}

void std::__function::__func<SafeBrowsing::LookupContext::performURLLookup(NSURL *,SafeBrowsing::IsMainFrame,SafeBrowsing::ClientConfidenceOfSafety,std::function<void ()(std::vector<Backend::LookupResult>,std::error_code)>)::$_0,std::allocator<SafeBrowsing::LookupContext::performURLLookup(NSURL *,SafeBrowsing::IsMainFrame,SafeBrowsing::ClientConfidenceOfSafety,std::function<void ()(std::vector<Backend::LookupResult>,std::error_code)>)::$_0>,void ()(std::error_code)>::~__func(void *a1)
{
  *a1 = &unk_2838CEEC8;
  std::__function::__value_func<void ()(std::vector<Backend::LookupResult>,std::error_code)>::~__value_func[abi:sn200100](a1 + 40);

  v2 = *(a1 + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v2);
  }

  operator delete(a1);
}

void *std::__function::__func<SafeBrowsing::LookupContext::performURLLookup(NSURL *,SafeBrowsing::IsMainFrame,SafeBrowsing::ClientConfidenceOfSafety,std::function<void ()(std::vector<Backend::LookupResult>,std::error_code)>)::$_0,std::allocator<SafeBrowsing::LookupContext::performURLLookup(NSURL *,SafeBrowsing::IsMainFrame,SafeBrowsing::ClientConfidenceOfSafety,std::function<void ()(std::vector<Backend::LookupResult>,std::error_code)>)::$_0>,void ()(std::error_code)>::__clone(uint64_t a1)
{
  v2 = operator new(0x48uLL);
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  *v2 = &unk_2838CEEC8;
  v2[1] = v4;
  v2[2] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v2[3] = v5;
  v2[4] = v6;
  std::__function::__value_func<void ()(std::vector<Backend::LookupResult>,std::error_code)>::__value_func[abi:sn200100]((v2 + 5), a1 + 40);
  return v2;
}

void sub_2256313B8(_Unwind_Exception *a1)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<SafeBrowsing::LookupContext::performURLLookup(NSURL *,SafeBrowsing::IsMainFrame,SafeBrowsing::ClientConfidenceOfSafety,std::function<void ()(std::vector<Backend::LookupResult>,std::error_code)>)::$_0,std::allocator<SafeBrowsing::LookupContext::performURLLookup(NSURL *,SafeBrowsing::IsMainFrame,SafeBrowsing::ClientConfidenceOfSafety,std::function<void ()(std::vector<Backend::LookupResult>,std::error_code)>)::$_0>,void ()(std::error_code)>::__clone(uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  *a2 = &unk_2838CEEC8;
  a2[1] = v5;
  a2[2] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  a2[3] = *(a1 + 24);
  a2[4] = *(a1 + 32);
  return std::__function::__value_func<void ()(std::vector<Backend::LookupResult>,std::error_code)>::__value_func[abi:sn200100]((a2 + 5), a1 + 40);
}

void sub_225631458(_Unwind_Exception *a1)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v3);
  }

  _Unwind_Resume(a1);
}

void std::__function::__func<SafeBrowsing::LookupContext::performURLLookup(NSURL *,SafeBrowsing::IsMainFrame,SafeBrowsing::ClientConfidenceOfSafety,std::function<void ()(std::vector<Backend::LookupResult>,std::error_code)>)::$_0,std::allocator<SafeBrowsing::LookupContext::performURLLookup(NSURL *,SafeBrowsing::IsMainFrame,SafeBrowsing::ClientConfidenceOfSafety,std::function<void ()(std::vector<Backend::LookupResult>,std::error_code)>)::$_0>,void ()(std::error_code)>::destroy(uint64_t a1)
{
  std::__function::__value_func<void ()(std::vector<Backend::LookupResult>,std::error_code)>::~__value_func[abi:sn200100](a1 + 40);

  v2 = *(a1 + 16);
  if (v2)
  {

    std::__shared_weak_count::__release_shared[abi:sn200100](v2);
  }
}

void std::__function::__func<SafeBrowsing::LookupContext::performURLLookup(NSURL *,SafeBrowsing::IsMainFrame,SafeBrowsing::ClientConfidenceOfSafety,std::function<void ()(std::vector<Backend::LookupResult>,std::error_code)>)::$_0,std::allocator<SafeBrowsing::LookupContext::performURLLookup(NSURL *,SafeBrowsing::IsMainFrame,SafeBrowsing::ClientConfidenceOfSafety,std::function<void ()(std::vector<Backend::LookupResult>,std::error_code)>)::$_0>,void ()(std::error_code)>::destroy_deallocate(uint64_t a1)
{
  std::__function::__value_func<void ()(std::vector<Backend::LookupResult>,std::error_code)>::~__value_func[abi:sn200100](a1 + 40);

  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v2);
  }

  operator delete(a1);
}

void std::__function::__func<SafeBrowsing::LookupContext::performURLLookup(NSURL *,SafeBrowsing::IsMainFrame,SafeBrowsing::ClientConfidenceOfSafety,std::function<void ()(std::vector<Backend::LookupResult>,std::error_code)>)::$_0,std::allocator<SafeBrowsing::LookupContext::performURLLookup(NSURL *,SafeBrowsing::IsMainFrame,SafeBrowsing::ClientConfidenceOfSafety,std::function<void ()(std::vector<Backend::LookupResult>,std::error_code)>)::$_0>,void ()(std::error_code)>::operator()(uint64_t a1, std::error_code *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v13 = *a2;
  if (v13.__val_)
  {
    v3 = SSBOSLogDatabase();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      std::error_code::message(&v14, &v13);
      std::__function::__func<SafeBrowsing::LookupContext::performURLLookup(NSURL *,SafeBrowsing::IsMainFrame,SafeBrowsing::ClientConfidenceOfSafety,std::function<void ()(std::vector<Backend::LookupResult>,std::error_code)>)::$_0,std::allocator<SafeBrowsing::LookupContext::performURLLookup(NSURL *,SafeBrowsing::IsMainFrame,SafeBrowsing::ClientConfidenceOfSafety,std::function<void ()(std::vector<Backend::LookupResult>,std::error_code)>)::$_0>,void ()(std::error_code)>::operator()(&v14);
    }

    __p = 0;
    v11 = 0;
    v12 = 0;
    std::function<void ()(std::vector<Backend::LookupResult>,std::error_code)>::operator()(a1 + 40, &__p, *&v13.__val_, v13.__cat_);
    if (__p)
    {
      v11 = __p;
      operator delete(__p);
    }
  }

  else
  {
    SafeBrowsing::LookupContext::setClientIsInUse(*(a1 + 8));
    v4 = *(a1 + 8);
    v5 = *(v4 + 15);
    v6 = *(a1 + 24);
    v7 = *(a1 + 32);
    v8 = *(a1 + 36);
    std::__function::__value_func<void ()(std::vector<Backend::LookupResult>,std::error_code)>::__value_func[abi:sn200100](&v14, a1 + 40);
    SafeBrowsing::BrowsingDatabaseCoordinator::performURLLookup(v5, v4, v6, v7, v8, &v14);
    std::__function::__value_func<void ()(std::vector<Backend::LookupResult>,std::error_code)>::~__value_func[abi:sn200100](&v14);
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t std::__function::__value_func<void ()(char const*,std::error_code)>::__value_func[abi:sn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t Backend::Google::unescapePercentEscapes(uint64_t a1)
{
  __p[0] = 0;
  __p[1] = 0;
  v20 = 0;
  v2 = *a1;
  v1 = *(a1 + 8);
  if (*a1 == v1)
  {
    goto LABEL_27;
  }

  v4 = MEMORY[0x277D85DE0];
  v5 = *a1;
  while (1)
  {
    if (*v5 == 37)
    {
      goto LABEL_6;
    }

    if (++v5 == v1)
    {
      v5 = v1;
LABEL_6:
      if (v5 == v1)
      {
        break;
      }

      v6 = (v5 + 1);
      v7 = (v5 + 2);
      if (v5 + 2 >= v1)
      {
LABEL_21:
        ++v5;
        goto LABEL_22;
      }

      v8 = *v6;
      v9 = *v6;
      if (v8 < 0)
      {
        if (!__maskrune(*v6, 0x10000uLL))
        {
          goto LABEL_21;
        }
      }

      else if ((*(v4 + 4 * v8 + 60) & 0x10000) == 0)
      {
        goto LABEL_21;
      }

      v10 = *v7;
      v11 = *v7;
      if (v10 < 0)
      {
        if (!__maskrune(v11, 0x10000uLL))
        {
          goto LABEL_21;
        }
      }

      else if ((*(v4 + 4 * v10 + 60) & 0x10000) == 0)
      {
        goto LABEL_21;
      }

      if (v9 >= 0x41)
      {
        v12 = 9;
      }

      else
      {
        v12 = 0;
      }

      v13 = v12 + v8;
      v14 = v11 - 48;
      if (v11 >= 0x41)
      {
        v14 = (v10 + 9) & 0xF;
      }

      v15 = v14 | (16 * v13);
      std::vector<unsigned char>::__insert_with_size[abi:sn200100]<std::__wrap_iter<unsigned char *>,std::__wrap_iter<unsigned char *>>(__p, __p[1], v2, v5, v5 - v2);
      v18 = v15;
      std::vector<unsigned char>::push_back[abi:sn200100](__p, &v18);
      v5 += 3;
      v2 = v5;
LABEL_22:
      if (v5 == v1)
      {
        break;
      }
    }
  }

  if (v2 != *a1)
  {
    std::vector<unsigned char>::__insert_with_size[abi:sn200100]<std::__wrap_iter<unsigned char *>,std::__wrap_iter<unsigned char *>>(__p, __p[1], v2, v1, v1 - v2);
    v16 = *a1;
    if (*a1)
    {
      *(a1 + 8) = v16;
      operator delete(v16);
    }

    *a1 = *__p;
    *(a1 + 16) = v20;
    return 1;
  }

LABEL_27:
  result = __p[0];
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
    return 0;
  }

  return result;
}

uint64_t Backend::Google::repeatedlyUnescapePercentEscapes(uint64_t a1)
{
  do
  {
    result = Backend::Google::unescapePercentEscapes(a1);
  }

  while ((result & 1) != 0);
  return result;
}

uint64_t Backend::Google::percentEscape(uint64_t a1)
{
  __p[0] = 0;
  __p[1] = 0;
  v14 = 0;
  v1 = *a1;
  v2 = *(a1 + 8);
  if (*a1 == v2)
  {
    goto LABEL_16;
  }

  v4 = *a1;
  v5 = *a1;
  do
  {
    v6 = *v5;
    if ((*v5 - 127) < 0xA2u || *v5 == 37 || *v5 == 35)
    {
      v7 = v6 & 0xF;
      std::vector<unsigned char>::__insert_with_size[abi:sn200100]<std::__wrap_iter<unsigned char *>,std::__wrap_iter<unsigned char *>>(__p, __p[1], v4, v1, v1 - v4);
      v4 = v1 + 1;
      v12 = 37;
      std::vector<unsigned char>::push_back[abi:sn200100](__p, &v12);
      v8 = (v6 >> 4) | 0x30;
      if (v6 >= 0xA0u)
      {
        v8 = (v6 >> 4) + 55;
      }

      v12 = v8;
      std::vector<unsigned char>::push_back[abi:sn200100](__p, &v12);
      v9 = v6 & 0xF | 0x30;
      if (v7 >= 0xA)
      {
        v9 = v7 + 55;
      }

      v12 = v9;
      std::vector<unsigned char>::push_back[abi:sn200100](__p, &v12);
    }

    ++v5;
    ++v1;
  }

  while (v5 != v2);
  if (v4 == *a1)
  {
LABEL_16:
    result = __p[0];
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
      return 0;
    }
  }

  else
  {
    std::vector<unsigned char>::__insert_with_size[abi:sn200100]<std::__wrap_iter<unsigned char *>,std::__wrap_iter<unsigned char *>>(__p, __p[1], v4, *(a1 + 8), *(a1 + 8) - v4);
    v10 = *a1;
    if (*a1)
    {
      *(a1 + 8) = v10;
      operator delete(v10);
    }

    *a1 = *__p;
    *(a1 + 16) = v14;
    return 1;
  }

  return result;
}

uint64_t Backend::Google::canonicalizeIPAddress(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  std::string::__init_with_size[abi:sn200100]<std::__wrap_iter<unsigned char *>,std::__wrap_iter<unsigned char *>>(__p, *a1, *(a1 + 8), *(a1 + 8) - *a1);
  if (v11 >= 0)
  {
    v2 = __p;
  }

  else
  {
    v2 = __p[0];
  }

  v3 = inet_aton(v2, &v12);
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }

  if (v3)
  {
    v4 = inet_ntop(2, &v12, v13, 0x10u);
    v3 = v4 != 0;
    if (v4)
    {
      v5 = v4;
      v6 = strlen(v4);
      __p[1] = 0;
      v11 = 0;
      __p[0] = 0;
      std::vector<char>::__init_with_size[abi:sn200100]<char const*,char const*>(__p, v5, &v5[v6], v6);
      v7 = *a1;
      if (*a1)
      {
        *(a1 + 8) = v7;
        operator delete(v7);
      }

      *a1 = *__p;
      *(a1 + 16) = v11;
    }
  }

  v8 = *MEMORY[0x277D85DE8];
  return v3;
}

uint64_t Backend::Google::canonicalizeHostName(void *a1, _BYTE *a2)
{
    ;
  }

  v5 = *a1;
  v4 = a1[1];
  if (*a1 == v4)
  {
LABEL_22:
    v13 = Backend::Google::canonicalizeIPAddress(a1);
    goto LABEL_24;
  }

  v6 = 1;
  v7 = MEMORY[0x277D85DE0];
  do
  {
    v8 = *v5;
    if (v8 != 46)
    {
      if ((v8 & 0xFFFFFFDF) != 88 && v6)
      {
        if ((v8 & 0x80) != 0)
        {
          v12 = __maskrune(v8, 0x10000uLL);
          LODWORD(v8) = *v5;
        }

        else
        {
          v12 = *(v7 + 4 * v8 + 60) & 0x10000;
        }

        v6 = v12 != 0;
      }

      *v5 = __tolower(v8);
      v4 = a1[1];
LABEL_19:
      ++v5;
      continue;
    }

    v9 = v5 + 1;
    v10 = v5 == *a1 || v4 == v9;
    if (!v10 && *v9 != 46)
    {
      goto LABEL_19;
    }

    v11 = v4 - v9;
    if (v4 != v9)
    {
      memmove(v5, v9, v4 - v9);
    }

    v4 = &v5[v11];
    a1[1] = &v5[v11];
  }

  while (v5 != v4);
  if (v6)
  {
    goto LABEL_22;
  }

  v13 = 0;
LABEL_24:
  *a2 = v13;

  return Backend::Google::percentEscape(a1);
}

void Backend::Google::canonicalizePath(char **a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a1 + 1);
  v5 = **a1;
  while (1)
  {
    if (v4 == v2)
    {
      return;
    }

    v7 = *v4++;
    v6 = v7;
    v8 = v5 == 47;
    v5 = v7;
    if (v8)
    {
      v5 = v6;
      if ((v6 & 0xFE) == 0x2E)
      {
        break;
      }
    }
  }

  __dst[0] = 0;
  __dst[1] = 0;
  v17 = 0;
  if (v3 != v2)
  {
    while (1)
    {
      v9 = v3;
      v10 = v3 + 1;
      v3 = v2;
      if (v10 != v2)
      {
        v3 = v10;
        while (*v3 != 47)
        {
          if (++v3 == v2)
          {
            v3 = v2;
            break;
          }
        }
      }

      if (v3 == v10 || v9 + 2 == v3 && *v10 == 46)
      {
        goto LABEL_13;
      }

      if (v9 + 3 == v3 && *v10 == 46 && v9[2] == 46)
      {
        v11 = __dst[1];
        v12 = __dst[1];
        while (v12 != __dst[0])
        {
          v13 = *--v12;
          if (v13 == 47)
          {
            v14 = v12 + 1;
            goto LABEL_28;
          }
        }

        v14 = __dst[0];
LABEL_28:
        if (v14 != __dst[0])
        {
          if (v14 - 1 > __dst[1])
          {
            __break(1u);
            return;
          }

          if (v14 - 1 != __dst[1])
          {
            v11 = v14 - 1;
            __dst[1] = v14 - 1;
          }
        }

        if (__dst[0] == v11)
        {
          v2 = a1[1];
LABEL_13:
          if (v2 == v3)
          {
            v15 = 47;
            std::vector<unsigned char>::push_back[abi:sn200100](__dst, &v15);
          }
        }
      }

      else
      {
        v15 = 47;
        std::vector<unsigned char>::push_back[abi:sn200100](__dst, &v15);
        std::vector<unsigned char>::__insert_with_size[abi:sn200100]<std::__wrap_iter<unsigned char *>,std::__wrap_iter<unsigned char *>>(__dst, __dst[1], v10, v3, v3 - v10);
      }

      v2 = a1[1];
      if (v2 == v3)
      {
        v3 = *a1;
        break;
      }
    }
  }

  if (v3)
  {
    a1[1] = v3;
    operator delete(v3);
  }

  *a1 = *__dst;
  a1[2] = v17;
}

void Backend::Google::computeHostNameParts(char *a1@<X0>, char *a2@<X1>, int a3@<W2>, unint64_t *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  std::string::__init_with_size[abi:sn200100]<std::__wrap_iter<unsigned char *>,std::__wrap_iter<unsigned char *>>(v25, a1, a2, a2 - a1);
  if (a3)
  {
    std::vector<std::string>::push_back[abi:sn200100](a4, v25);
    goto LABEL_29;
  }

  v6 = 0;
  v7 = (v25 + v26);
  if ((v26 & 0x80u) == 0)
  {
    v8 = v25;
  }

  else
  {
    v7 = (v25[0] + v25[1]);
    v8 = v25[0];
  }

  while (1)
  {
    do
    {
      if (v7 == v8)
      {
        v10 = v8;
        goto LABEL_10;
      }

      v9 = *(v7 - 1);
      v7 = (v7 - 1);
    }

    while (v9 != 46);
    v10 = (v7 + 1);
LABEL_10:
    if (v10 == v8)
    {
      break;
    }

    v11 = v6 + 1;
    if (v6 == 5)
    {
      break;
    }

    if (v6)
    {
      v12 = v26;
      if ((v26 & 0x80u) == 0)
      {
        v13 = v25;
      }

      else
      {
        v13 = v25[0];
      }

      if ((v26 & 0x80u) != 0)
      {
        v12 = v25[1];
      }

      std::string::__init_with_size[abi:sn200100]<std::__wrap_iter<char *>,std::__wrap_iter<char *>>(__p, v10, v13 + v12, v13 + v12 - v10);
      std::vector<std::string>::push_back[abi:sn200100](a4, __p);
      if (v24 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v7 = (v10 - 1);
    v6 = v11;
  }

  std::vector<std::string>::push_back[abi:sn200100](a4, v25);
  v14 = *a4;
  v15 = a4[1];
  v16 = v15 - 24;
  if (*a4 != v15 && v16 > v14)
  {
    v18 = v14 + 24;
    do
    {
      v19 = *(v18 - 8);
      v20 = *(v18 - 24);
      v21 = *(v16 + 16);
      *(v18 - 24) = *v16;
      *(v18 - 8) = v21;
      *v16 = v20;
      *(v16 + 16) = v19;
      v16 -= 24;
      v22 = v18 >= v16;
      v18 += 24;
    }

    while (!v22);
  }

LABEL_29:
  if (v26 < 0)
  {
    operator delete(v25[0]);
  }
}

void std::vector<std::string>::push_back[abi:sn200100](uint64_t a1, __int128 *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    v9 = 2 * v8;
    if (2 * v8 <= v7 + 1)
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v9;
    }

    v18.__end_cap_.__value_ = a1;
    if (v10)
    {
      v11 = std::allocator<std::string>::allocate_at_least[abi:sn200100](a1, v10);
    }

    else
    {
      v11 = 0;
    }

    v12 = &v11[24 * v7];
    v13 = &v11[24 * v10];
    std::construct_at[abi:sn200100]<std::string,std::string&,std::string*>(v12, a2);
    v6 = v12 + 1;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy(v12 - v14, *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v12 + 1;
    v17 = *(a1 + 16);
    *(a1 + 16) = v13;
    v18.__end_ = v16;
    v18.__end_cap_.__value_ = v17;
    v18.__first_ = v16;
    v18.__begin_ = v16;
    std::__split_buffer<std::string>::~__split_buffer(&v18);
  }

  else
  {
    std::construct_at[abi:sn200100]<std::string,std::string&,std::string*>(*(a1 + 8), a2);
    v6 = v5 + 1;
  }

  *(a1 + 8) = v6;
}

{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v8 = v4 - *a1;
    v9 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3) + 1;
    if (v9 > 0xAAAAAAAAAAAAAAALL)
    {
      goto LABEL_15;
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v9;
    }

    v21.__end_cap_.__value_ = a1;
    if (v11)
    {
      v12 = std::allocator<std::string>::allocate_at_least[abi:sn200100](a1, v11);
      if (v12)
      {
        v14 = &v12[24 * v13];
        v15 = &v12[v8];
        v16 = *a2;
        *(v15 + 2) = *(a2 + 2);
        *v15 = v16;
        *(a2 + 1) = 0;
        *(a2 + 2) = 0;
        *a2 = 0;
        v7 = &v12[v8 + 24];
        v17 = *(a1 + 8) - *a1;
        v18 = &v15[-v17];
        memcpy(&v15[-v17], *a1, v17);
        v19 = *a1;
        *a1 = v18;
        *(a1 + 8) = v7;
        v20 = *(a1 + 16);
        *(a1 + 16) = v14;
        v21.__end_ = v19;
        v21.__end_cap_.__value_ = v20;
        v21.__first_ = v19;
        v21.__begin_ = v19;
        std::__split_buffer<std::string>::~__split_buffer(&v21);
        goto LABEL_13;
      }
    }

LABEL_14:
    __break(1u);
LABEL_15:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (!v4)
  {
    goto LABEL_14;
  }

  v6 = *a2;
  *(v4 + 16) = *(a2 + 2);
  *v4 = v6;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v7 = v4 + 24;
LABEL_13:
  *(a1 + 8) = v7;
}

void Backend::Google::computePathParts(char *a1@<X0>, char *a2@<X1>, char *a3@<X2>, char *a4@<X3>, void *a5@<X8>)
{
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  if (a3 == a4)
  {
    v8 = a2 - a1;
  }

  else
  {
    v8 = a2 - a1;
    std::string::__init_with_size[abi:sn200100]<std::__wrap_iter<unsigned char *>,std::__wrap_iter<unsigned char *>>(&__p, a1, a2, a2 - a1);
    std::string::append[abi:sn200100]<std::__wrap_iter<unsigned char const*>,0>(&__p, a3, a4);
    std::vector<std::string>::push_back[abi:sn200100](a5, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  std::string::__init_with_size[abi:sn200100]<std::__wrap_iter<unsigned char *>,std::__wrap_iter<unsigned char *>>(&__p, a1, a2, v8);
  std::vector<std::string>::push_back[abi:sn200100](a5, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (a2 != a1)
  {
    v11 = 0;
    v12 = a1;
    do
    {
      if (v12 == a2)
      {
        break;
      }

      while (*v12 != 47)
      {
        if (++v12 == a2)
        {
          v12 = a2;
          break;
        }
      }

      if (v12 == a2 || v12 + 1 == a2)
      {
        break;
      }

      ++v12;
      std::string::__init_with_size[abi:sn200100]<std::__wrap_iter<unsigned char *>,std::__wrap_iter<unsigned char *>>(&__p, a1, v12, v12 - a1);
      std::vector<std::string>::push_back[abi:sn200100](a5, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v12 == a2)
      {
        break;
      }
    }

    while (v11++ < 3);
  }
}

std::string *std::string::append[abi:sn200100]<std::__wrap_iter<unsigned char const*>,0>(std::string *this, char *a2, char *a3)
{
  v4 = a2;
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  v7 = a3 - a2;
  if ((size & 0x8000000000000000) != 0)
  {
    if (a3 == a2)
    {
      return this;
    }

    size = this->__r_.__value_.__l.__size_;
    v11 = this->__r_.__value_.__r.__words[2];
    v8 = (v11 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v10 = this->__r_.__value_.__r.__words[0];
    v9 = HIBYTE(v11);
  }

  else
  {
    if (a3 == a2)
    {
      return this;
    }

    v8 = 22;
    LOBYTE(v9) = *(&this->__r_.__value_.__s + 23);
    v10 = this;
  }

  if (v10 > v4 || &v10->__r_.__value_.__l.__data_ + size + 1 <= v4)
  {
    if (v8 - size < v7)
    {
      std::string::__grow_by(this, v8, size - v8 + v7, size, size, 0, 0);
      this->__r_.__value_.__l.__size_ = size;
      LOBYTE(v9) = *(&this->__r_.__value_.__s + 23);
    }

    v14 = this;
    if ((v9 & 0x80) != 0)
    {
      v14 = this->__r_.__value_.__r.__words[0];
    }

    for (i = v14 + size; v4 != a3; ++i)
    {
      v16 = *v4++;
      *i = v16;
    }

    *i = 0;
    v17 = v7 + size;
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      this->__r_.__value_.__l.__size_ = v17;
    }

    else
    {
      *(&this->__r_.__value_.__s + 23) = v17 & 0x7F;
    }
  }

  else
  {
    std::string::__init_with_size[abi:sn200100]<std::__wrap_iter<unsigned char *>,std::__wrap_iter<unsigned char *>>(__p, v4, a3, v7);
    if ((v20 & 0x80u) == 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    if ((v20 & 0x80u) == 0)
    {
      v13 = v20;
    }

    else
    {
      v13 = __p[1];
    }

    std::string::append(this, v12, v13);
    if (v20 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return this;
}

void Backend::Google::CanonicalURL::canonicalizeURL(Backend::Google::CanonicalURL *this@<X0>, uint64_t a2@<X8>)
{
  v9[0] = 0;
  v9[1] = 0;
  v10 = 0;
  v5 = CFURLGetBytes(this, 0, -1);
  if (v5)
  {
    std::vector<unsigned char>::__append(v9, v5);
    v5 = v9[0];
    v6 = v9[1];
  }

  else
  {
    v6 = 0;
  }

  CFURLGetBytes(this, v5, v6 - v5);
  *__p = *v9;
  v8 = v10;
  v9[0] = 0;
  v9[1] = 0;
  v10 = 0;
  Backend::Google::CanonicalURL::canonicalizeURL(__p, a2);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v9[0])
  {
    v9[1] = v9[0];
    operator delete(v9[0]);
  }
}

void Backend::Google::CanonicalURL::canonicalizeURL(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  if (*a1 != v4)
  {
    while (1)
    {
      v6 = *v5;
      v7 = v6 > 0xD;
      v8 = (1 << v6) & 0x2600;
      if (!v7 && v8 != 0)
      {
        break;
      }

      if (++v5 == v4)
      {
        v5 = *(a1 + 8);
        break;
      }
    }

    if (v5 != v4)
    {
      v10 = v5 + 1;
      if (v5 + 1 != v4)
      {
        do
        {
          v11 = *v10;
          if (v11 > 0xD || ((1 << v11) & 0x2600) == 0)
          {
            *v5++ = v11;
          }

          ++v10;
        }

        while (v10 != v4);
        v4 = *(a1 + 8);
      }
    }
  }

  if (v5 > v4)
  {
    goto LABEL_126;
  }

  v13 = *a1;
  v14 = *a1;
  if (v5 != v4)
  {
    v4 = v5;
    *(a1 + 8) = v5;
  }

  if (v13 != v4)
  {
    v15 = v13;
    while (*v15 == 32)
    {
      if (++v15 == v4)
      {
        v15 = &v13[v4 - v14];
        break;
      }
    }

    if (v13 > v15)
    {
      goto LABEL_126;
    }

    if (v13 != v15)
    {
      v16 = v4 - v15;
      if (v4 == v15)
      {
        v17 = v13;
      }

      else
      {
        memmove(v13, &v13[v15 - v14], v16);
        v14 = *a1;
        v17 = *a1;
      }

      v4 = &v13[v16];
      *(a1 + 8) = &v13[v16];
      v13 = v17;
    }
  }

  v18 = v14;
  v19 = v4;
  while (v19 != v13)
  {
    v20 = *--v19;
    if (v20 != 32)
    {
      v18 = v19 + 1;
      break;
    }
  }

  if (v18 > v4)
  {
LABEL_126:
    __break(1u);
    goto LABEL_127;
  }

  if (v18 != v4)
  {
    v21 = &v13[v18 - v14];
    v22 = &v4[v13 - v14];
    v23 = v14 - v13;
    if (v4 != v22)
    {
      memmove(&v13[v18 - v14], v22, v14 - v13);
      v14 = *a1;
      v13 = *a1;
    }

    v4 = &v21[v23];
    *(a1 + 8) = &v21[v23];
  }

  v24 = v14;
  if (v13 != v4)
  {
    v24 = v13;
    while (*v24 != 35)
    {
      if (++v24 == v4)
      {
        v24 = &v13[v4 - v14];
        break;
      }
    }
  }

  if (v4 != v24)
  {
    if (v4 >= v24)
    {
      v25 = v4 - v24;
      if (v4 != v24)
      {
        v26 = &v13[v24 - v14];
        v27 = v24 - v26;
        if (v4 != &v26[v25])
        {
          memmove(v26, &v26[v25], v24 - v26);
        }

        *(a1 + 8) = &v26[v27];
      }

      goto LABEL_53;
    }

    goto LABEL_126;
  }

LABEL_53:
    ;
  }

  Backend::Google::percentEscape(a1);
  v28 = *MEMORY[0x277CBECE8];
  v29 = CFURLCreateWithBytes(*MEMORY[0x277CBECE8], *a1, *(a1 + 8) - *a1, 0x600u, 0);
  if (!CFURLCanBeDecomposed(v29) || !CFURLGetBytes(v29, 0, -1))
  {
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
    goto LABEL_123;
  }

  memset(__dst, 0, 41);
  memset(&__dst[6], 0, 32);
  v30 = CFURLGetByteRangeForComponent(v29, kCFURLComponentScheme, &rangeIncludingSeparators);
  length = rangeIncludingSeparators.length;
  if (rangeIncludingSeparators.length)
  {
    v32 = v30.length;
    goto LABEL_58;
  }

  std::vector<unsigned char>::__insert_with_size[abi:sn200100]<unsigned char const*,unsigned char const*>(a1, *a1, "http://", "", 7);
  v50 = CFURLCreateWithBytes(v28, *a1, *(a1 + 8) - *a1, 0x600u, 0);
  if (v29 == v50)
  {
    v51 = 0;
  }

  else
  {
    v51 = v50;
  }

  if (v29)
  {
    v52 = v50;
    CFRelease(v29);
    v29 = v52;
  }

  else
  {
    v29 = v51;
  }

  if (CFURLCanBeDecomposed(v29) && CFURLGetBytes(v29, 0, -1))
  {
    v32 = CFURLGetByteRangeForComponent(v29, kCFURLComponentScheme, &rangeIncludingSeparators).length;
    length = rangeIncludingSeparators.length;
    if (!rangeIncludingSeparators.length)
    {
      v36 = 0;
      v37 = 0;
      v34 = 0;
LABEL_62:
      std::vector<unsigned char>::__insert_with_size[abi:sn200100]<std::__wrap_iter<unsigned char *>,std::__wrap_iter<unsigned char *>>(__dst, __dst[1], v37, v36, v36 - v37);
      v38 = CFURLGetByteRangeForComponent(v29, kCFURLComponentHost, 0);
      if (v38.location == -1)
      {
        *(a2 + 48) = 0u;
        *(a2 + 64) = 0u;
        *(a2 + 16) = 0u;
        *(a2 + 32) = 0u;
        *a2 = 0u;
LABEL_119:
        if (v34)
        {
          operator delete(v34);
        }

        goto LABEL_121;
      }

      v39 = *a1;
      v73 = 0;
      v74 = 0;
      __p = 0;
      if (v38.length)
      {
        if (v38.length < 0)
        {
          goto LABEL_127;
        }

        v40 = operator new(v38.length);
        v41 = &v40[v38.length];
        __p = v40;
        v74 = &v40[v38.length];
        memmove(v40, &v39[v38.location], v38.length);
        v73 = v41;
      }

      v71 = 0;
      Backend::Google::canonicalizeHostName(&__p, &v71);
      __dst[3] = (__dst[1] - __dst[0]);
      std::vector<unsigned char>::__insert_with_size[abi:sn200100]<std::__wrap_iter<unsigned char *>,std::__wrap_iter<unsigned char *>>(__dst, __dst[1], __p, v73, v73 - __p);
      __dst[4] = (__dst[1] - __dst[0]);
      LOBYTE(__dst[5]) = v71;
      v42 = CFURLGetByteRangeForComponent(v29, kCFURLComponentPort, 0);
      if (v42.location != -1)
      {
        v43 = (v42.location + *a1);
        v44 = &v43[v42.length];
        v45 = &v37[v32];
        switch(v32)
        {
          case 5:
            v57 = "https";
            v58 = v34;
            while (*v58 == *v57)
            {
              ++v58;
              ++v57;
              if (v58 == v45)
              {
                if (v42.length == 3)
                {
                  v59 = "443";
                  v60 = (v42.location + *a1);
                  while (*v60 == *v59)
                  {
                    ++v60;
                    ++v59;
                    if (v60 == v44)
                    {
                      goto LABEL_108;
                    }
                  }
                }

                goto LABEL_107;
              }
            }

            break;
          case 4:
            v53 = "http";
            v54 = v34;
            while (*v54 == *v53)
            {
              ++v54;
              ++v53;
              if (v54 == v45)
              {
                if (v42.length == 2)
                {
                  v55 = "80";
                  v56 = (v42.location + *a1);
                  while (*v56 == *v55)
                  {
                    ++v56;
                    ++v55;
                    if (v56 == v44)
                    {
                      goto LABEL_108;
                    }
                  }
                }

                goto LABEL_107;
              }
            }

            break;
          case 3:
            v46 = "ftp";
            v47 = v34;
            while (*v47 == *v46)
            {
              ++v47;
              ++v46;
              if (v47 == v45)
              {
                if (v42.length == 2)
                {
                  v48 = "21";
                  v49 = (v42.location + *a1);
                  while (*v49 == *v48)
                  {
                    ++v49;
                    ++v48;
                    if (v49 == v44)
                    {
                      goto LABEL_108;
                    }
                  }
                }

                goto LABEL_107;
              }
            }

            break;
        }

LABEL_107:
        LOBYTE(v69.location) = 58;
        std::vector<unsigned char>::push_back[abi:sn200100](__dst, &v69);
        std::vector<unsigned char>::__insert_with_size[abi:sn200100]<std::__wrap_iter<unsigned char *>,std::__wrap_iter<unsigned char *>>(__dst, __dst[1], v43, v44, v42.length);
      }

LABEL_108:
      __dst[6] = (__dst[1] - __dst[0]);
      v61 = CFURLGetByteRangeForComponent(v29, kCFURLComponentPath, 0);
      if (!v61.length)
      {
        LOBYTE(v69.location) = 47;
        std::vector<unsigned char>::push_back[abi:sn200100](__dst, &v69);
LABEL_113:
        __dst[7] = (__dst[1] - __dst[0]);
        CFURLGetByteRangeForComponent(v29, kCFURLComponentParameterString, &v69);
        if (v69.length)
        {
          std::vector<unsigned char>::__insert_with_size[abi:sn200100]<std::__wrap_iter<unsigned char *>,std::__wrap_iter<unsigned char *>>(__dst, __dst[1], (v69.location + *a1), (v69.location + *a1 + v69.length), v69.length);
        }

        __dst[8] = (__dst[1] - __dst[0]);
        CFURLGetByteRangeForComponent(v29, kCFURLComponentQuery, &v68);
        if (v68.length)
        {
          std::vector<unsigned char>::__insert_with_size[abi:sn200100]<std::__wrap_iter<unsigned char *>,std::__wrap_iter<unsigned char *>>(__dst, __dst[1], (v68.location + *a1), (v68.location + *a1 + v68.length), v68.length);
        }

        v66 = __dst[0];
        *a2 = __dst[0];
        v67 = __dst[1];
        *(a2 + 8) = *&__dst[1];
        __dst[9] = (v67 - v66);
        memset(__dst, 0, 24);
        *(a2 + 24) = *&__dst[3];
        *(a2 + 40) = *&__dst[5];
        *(a2 + 56) = *&__dst[7];
        *(a2 + 72) = __dst[9];
        if (__p)
        {
          operator delete(__p);
        }

        goto LABEL_119;
      }

      if ((v61.length & 0x8000000000000000) == 0)
      {
        v62 = *a1;
        v63 = operator new(v61.length);
        v64 = v63 + v61.length;
        v69.location = v63;
        v70 = v63 + v61.length;
        memmove(v63, &v62[v61.location], v61.length);
        v69.length = v64;
        Backend::Google::canonicalizePath(&v69);
        location = v69.location;
        std::vector<unsigned char>::__insert_with_size[abi:sn200100]<std::__wrap_iter<unsigned char *>,std::__wrap_iter<unsigned char *>>(__dst, __dst[1], v69.location, v69.length, v69.length - v69.location);
        if (location)
        {
          operator delete(location);
        }

        goto LABEL_113;
      }

LABEL_127:
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

LABEL_58:
    v33 = (rangeIncludingSeparators.location + *a1);
    if (length < 0)
    {
      goto LABEL_127;
    }

    v34 = operator new(length);
    memmove(v34, v33, length);
    v35 = 0;
    v36 = &v34[length];
    do
    {
      v34[v35] = __tolower(v34[v35]);
      ++v35;
    }

    while (length != v35);
    v37 = v34;
    goto LABEL_62;
  }

  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
LABEL_121:
  if (__dst[0])
  {
    __dst[1] = __dst[0];
    operator delete(__dst[0]);
  }

LABEL_123:
  if (v29)
  {
    CFRelease(v29);
  }
}

void Backend::Google::CanonicalURL::computeHashes(Backend::Google::CanonicalURL *this@<X0>, uint64_t a2@<X8>)
{
  v33 = *MEMORY[0x277D85DE8];
  Backend::Google::computeHostNameParts((*(this + 3) + *this), (*(this + 4) + *this), *(this + 40), &v29);
  Backend::Google::computePathParts((*(this + 6) + *this), (*(this + 7) + *this), (*(this + 8) + *this), (*(this + 9) + *this), &v27);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  std::vector<std::array<unsigned char,32ul>>::reserve(a2, 0x8E38E38E38E38E39 * (v30 - v29) * ((v28 - v27) >> 3));
  v4 = v29;
  for (i = v30; v4 != i; v4 += 3)
  {
    v6 = v27;
    v7 = v28;
    while (v6 != v7)
    {
      std::operator+[abi:sn200100]<char,std::char_traits<char>,std::allocator<char>>(v4, v6, __p);
      Platform::computeSHA256(__p, &v31);
      v8 = *(a2 + 8);
      v9 = *(a2 + 16);
      if (v8 >= v9)
      {
        v12 = v8 - *a2;
        v13 = (v12 >> 5) + 1;
        if (v13 >> 59)
        {
          goto LABEL_23;
        }

        v14 = v9 - *a2;
        if (v14 >> 4 > v13)
        {
          v13 = v14 >> 4;
        }

        if (v14 >= 0x7FFFFFFFFFFFFFE0)
        {
          v15 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v13;
        }

        if (!v15 || (v16 = std::allocator<std::array<unsigned char,32ul>>::allocate_at_least[abi:sn200100](a2, v15)) == 0)
        {
LABEL_22:
          __break(1u);
LABEL_23:
          std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
        }

        v18 = &v16[v12];
        v19 = &v16[32 * v17];
        v20 = v32;
        *v18 = v31;
        *(v18 + 1) = v20;
        v11 = &v16[v12 + 32];
        v21 = *(a2 + 8) - *a2;
        v22 = &v16[v12 - v21];
        memcpy(v22, *a2, v21);
        v23 = *a2;
        *a2 = v22;
        *(a2 + 8) = v11;
        *(a2 + 16) = v19;
        if (v23)
        {
          operator delete(v23);
        }
      }

      else
      {
        if (!v8)
        {
          goto LABEL_22;
        }

        v10 = v32;
        *v8 = v31;
        v8[1] = v10;
        v11 = (v8 + 2);
      }

      *(a2 + 8) = v11;
      if (v26 < 0)
      {
        operator delete(__p[0]);
      }

      v6 += 24;
    }
  }

  *&v31 = &v27;
  std::vector<std::string>::__destroy_vector::operator()[abi:sn200100](&v31);
  *&v31 = &v29;
  std::vector<std::string>::__destroy_vector::operator()[abi:sn200100](&v31);
  v24 = *MEMORY[0x277D85DE8];
}

void std::vector<std::array<unsigned char,32ul>>::reserve(uint64_t a1, unint64_t a2)
{
  if (a2 > (*(a1 + 16) - *a1) >> 5)
  {
    if (a2 >> 59)
    {
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    v3 = *(a1 + 8) - *a1;
    v4 = std::allocator<std::array<unsigned char,32ul>>::allocate_at_least[abi:sn200100](a1, a2);
    v5 = &v4[v3];
    v7 = &v4[32 * v6];
    v8 = *(a1 + 8) - *a1;
    v9 = &v4[v3 - v8];
    memcpy(v9, *a1, v8);
    v10 = *a1;
    *a1 = v9;
    *(a1 + 8) = v5;
    *(a1 + 16) = v7;
    if (v10)
    {

      operator delete(v10);
    }
  }
}

char *std::vector<unsigned char>::__insert_with_size[abi:sn200100]<std::__wrap_iter<unsigned char *>,std::__wrap_iter<unsigned char *>>(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t __len)
{
  v5 = __dst;
  if (__len < 1)
  {
    return v5;
  }

  v6 = __len;
  v7 = __src;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (v9 - v10 < __len)
  {
    v11 = *a1;
    v12 = &v10[__len - *a1];
    if (v12 >= 0)
    {
      v13 = (__dst - v11);
      v14 = v9 - v11;
      if (2 * v14 > v12)
      {
        v12 = 2 * v14;
      }

      if (v14 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v15 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v15 = v12;
      }

      if (v15)
      {
        v16 = operator new(v15);
      }

      else
      {
        v16 = 0;
      }

      v32 = &v13[v16];
      v33 = v16 + v15;
      v34 = &v32[v6];
      v35 = v32;
      while (v35)
      {
        v36 = *v7++;
        *v35++ = v36;
        if (!--v6)
        {
          memcpy(v34, v5, v10 - v5);
          v37 = &v34[v10 - v5];
          *(a1 + 8) = v5;
          v38 = *a1;
          v39 = &v32[*a1 - v5];
          memcpy(v39, *a1, &v5[-*a1]);
          *a1 = v39;
          *(a1 + 8) = v37;
          *(a1 + 16) = v33;
          if (v38)
          {
            operator delete(v38);
          }

          return v32;
        }
      }

      __break(1u);
    }

    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v17 = v10 - __dst;
  if (v10 - __dst >= __len)
  {
    v28 = &__dst[__len];
    v29 = &v10[-__len];
    v30 = *(a1 + 8);
    if (v10 >= __len)
    {
      do
      {
        v31 = *v29++;
        *v30++ = v31;
      }

      while (v29 != v10);
    }

    *(a1 + 8) = v30;
    if (v10 != v28)
    {
      memmove(&__dst[__len], __dst, v10 - v28);
    }

    v25 = v5;
    v26 = v7;
    v27 = v6;
    goto LABEL_27;
  }

  v19 = a4 - &__src[v17];
  if (a4 != &__src[v17])
  {
    memmove(*(a1 + 8), &__src[v17], a4 - &__src[v17]);
  }

  v20 = &v10[v19];
  *(a1 + 8) = &v10[v19];
  if (v17 >= 1)
  {
    v21 = &v5[v6];
    v22 = &v10[v19];
    if (&v20[-v6] < v10)
    {
      v23 = a4 - &v7[v6];
      v24 = a4 - v7;
      do
      {
        v5[v24++] = v5[v23++];
      }

      while (&v5[v23] < v10);
      v22 = &v5[v24];
    }

    *(a1 + 8) = v22;
    if (v20 != v21)
    {
      memmove(&v5[v6], v5, v20 - v21);
    }

    v25 = v5;
    v26 = v7;
    v27 = v10 - v5;
LABEL_27:
    memmove(v25, v26, v27);
  }

  return v5;
}

void *std::string::__init_with_size[abi:sn200100]<std::__wrap_iter<char *>,std::__wrap_iter<char *>>(void *__dst, _BYTE *__src, _BYTE *a3, unint64_t a4)
{
  if (a4 >= 0x7FFFFFFFFFFFFFF8)
  {
LABEL_15:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  v7 = __dst;
  if (a4 > 0x16)
  {
    if ((a4 | 7) == 0x17)
    {
      v8 = 25;
    }

    else
    {
      v8 = (a4 | 7) + 1;
    }

    __dst = operator new(v8);
    v7[1] = a4;
    v7[2] = v8 | 0x8000000000000000;
    *v7 = __dst;
    v7 = __dst;
  }

  else
  {
    *(__dst + 23) = a4;
  }

  v9 = a3 - __src;
  if (a3 - __src < 0 || (v10 = v7 + v9, v7 <= __src) && v10 > __src)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (a3 != __src)
  {
    __dst = memmove(v7, __src, v9);
  }

  *v10 = 0;
  return __dst;
}

void std::vector<unsigned char>::__append(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v4 - v5 < a2)
  {
    v6 = &v5[-*a1];
    v7 = &v6[a2];
    if (&v6[a2] >= 0)
    {
      v8 = v4 - *a1;
      if (2 * v8 > v7)
      {
        v7 = 2 * v8;
      }

      if (v8 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v9 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v9 = v7;
      }

      if (v9)
      {
        v10 = operator new(v9);
      }

      else
      {
        v10 = 0;
      }

      v12 = &v6[v10];
      v13 = v10 + v9;
      v14 = &v12[v2];
      v15 = v12;
      do
      {
        if (!v15)
        {
          goto LABEL_25;
        }

        *v15++ = 0;
        --v2;
      }

      while (v2);
      v16 = *a1;
      v17 = &v12[*a1 - v5];
      memcpy(v17, *a1, &v5[-*a1]);
      *a1 = v17;
      *(a1 + 8) = v14;
      *(a1 + 16) = v13;
      if (v16)
      {

        operator delete(v16);
      }

      return;
    }

LABEL_26:
    std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
  }

  if (!a2)
  {
    goto LABEL_15;
  }

  v11 = &v5[a2];
  do
  {
    if (!v5)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    *v5++ = 0;
    --v2;
  }

  while (v2);
  v5 = v11;
LABEL_15:
  *(a1 + 8) = v5;
}

uint64_t Platform::OutputStream::writeUInt64(Platform::OutputStream *this, unint64_t a2)
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = bswap64(a2);
  result = (*(*this + 24))(this, v4, 8);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t Platform::OutputStream::getOffset32(Platform::OutputStream *this, unsigned int *a2)
{
  v7 = 0;
  v3 = (*(*this + 32))(this, &v7);
  v4 = v3;
  v5 = HIDWORD(v3);
  if (!v3)
  {
    if (HIDWORD(v7))
    {
      v4 = 34;
      std::generic_category();
      LODWORD(v5) = 0;
    }

    else
    {
      *a2 = v7;
      std::system_category();
      v4 = 0;
    }
  }

  return v4 | (v5 << 32);
}

const std::string::value_type *Platform::getUserCacheDirectory(std::string *a1)
{
  v2 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  v3 = [v2 lastObject];
  v4 = v3;
  if (!v3)
  {
    v6 = 2;
    std::generic_category();
    goto LABEL_5;
  }

  result = [v3 fileSystemRepresentation];
  if (result)
  {
    std::string::__assign_external(a1, result);
    std::system_category();
    v6 = 0;
LABEL_5:

    return v6;
  }

  __break(1u);
  return result;
}

std::string *Platform::stringByAppendingPathComponent@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  v4 = a1;
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a3, *a1, a1[1]);
    if (*(v4 + 23) < 0)
    {
      v6 = v4[1];
      if (!v6)
      {
        goto LABEL_9;
      }

      v4 = *v4;
      goto LABEL_7;
    }

    LODWORD(v6) = *(v4 + 23);
    if (!*(v4 + 23))
    {
      goto LABEL_9;
    }
  }

  else
  {
    LODWORD(v6) = *(a1 + 23);
    *&a3->__r_.__value_.__l.__data_ = *a1;
    a3->__r_.__value_.__r.__words[2] = a1[2];
    if (!v6)
    {
      goto LABEL_9;
    }
  }

  v6 = v6;
LABEL_7:
  if (*(v4 + v6 - 1) != 47)
  {
    std::string::append(a3, "/", 1uLL);
  }

LABEL_9:
  v7 = *(a2 + 23);
  if (v7 >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  if (v7 >= 0)
  {
    v9 = *(a2 + 23);
  }

  else
  {
    v9 = *(a2 + 8);
  }

  return std::string::append(a3, v8, v9);
}

void sub_22563388C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Platform::createDirectoryWithIntermediateDirectories(const std::string *a1)
{
  v2 = a1;
  if ((SHIBYTE(a1->__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (*(&a1->__r_.__value_.__s + 23))
    {
      v3 = a1->__r_.__value_.__s.__data_[0];
      goto LABEL_6;
    }

LABEL_32:
    v1 = 45;
LABEL_33:
    std::generic_category();
    return v1;
  }

  if (!a1->__r_.__value_.__l.__size_)
  {
    goto LABEL_32;
  }

  a1 = a1->__r_.__value_.__r.__words[0];
  v3 = *v2->__r_.__value_.__l.__data_;
LABEL_6:
  if (v3 != 47)
  {
    goto LABEL_32;
  }

  if (!access(a1, 7))
  {
    if ((v2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v9 = v2;
    }

    else
    {
      v9 = v2->__r_.__value_.__r.__words[0];
    }

    if (stat(v9, &v12) == -1)
    {
      v1 = *__error();
    }

    else
    {
      if ((v12.st_mode & 0xF000) == 0x4000)
      {
        goto LABEL_39;
      }

      v1 = 20;
    }

    goto LABEL_33;
  }

  v4 = 1;
  do
  {
    while (1)
    {
      v5 = std::string::find(v2, 47, v4);
      std::string::basic_string(&v11, v2, 0, v5, &v12);
      v6 = (v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v11 : v11.__r_.__value_.__r.__words[0];
      if (stat(v6, &v12))
      {
        if (*__error() != 2 || ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v7 = &v11) : (v7 = v11.__r_.__value_.__r.__words[0]), mkdir(v7, 0x1C0u) == -1))
        {
          v1 = *__error();
          v8 = 1;
LABEL_25:
          std::generic_category();
          goto LABEL_26;
        }
      }

      else if ((v12.st_mode & 0xF000) != 0x4000)
      {
        v8 = 1;
        v1 = 20;
        goto LABEL_25;
      }

      if (v5 == -1)
      {
        v8 = 3;
      }

      else
      {
        v4 = v5 + 1;
        v8 = 0;
      }

LABEL_26:
      if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
      {
        break;
      }

      if (v8)
      {
        goto LABEL_30;
      }
    }

    operator delete(v11.__r_.__value_.__l.__data_);
  }

  while (!v8);
LABEL_30:
  if (v8 != 3)
  {
    return v1;
  }

LABEL_39:
  std::system_category();
  return 0;
}

void sub_225633A80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s, std::string::size_type __n)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v9 = this->__r_.__value_.__r.__words[2];
    v8 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v8 < __n)
    {
      size = this->__r_.__value_.__l.__size_;
      goto LABEL_6;
    }

    size = HIBYTE(v9);
    v7 = this->__r_.__value_.__r.__words[0];
  }

  else
  {
    v7 = this;
    if (__n > 0x16)
    {
      v8 = 22;
LABEL_6:
      std::string::__grow_by_and_replace(this, v8, __n - v8, size, 0, size, __n, __s);
      return this;
    }
  }

  if (__n)
  {
    memmove(v7, __s, __n);
    LOBYTE(size) = *(&this->__r_.__value_.__s + 23);
  }

  if ((size & 0x80) != 0)
  {
    this->__r_.__value_.__l.__size_ = __n;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = __n & 0x7F;
  }

  v7->__r_.__value_.__s.__data_[__n] = 0;
  return this;
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s)
{
  v4 = strlen(__s);

  return std::string::__assign_external(this, __s, v4);
}

void sub_225633F50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__CFString *EnumTraits::toNSStringFromEnum<Backend::Google::CompressionType>(int a1)
{
  if (a1 == 1)
  {
    return @"RAW";
  }

  else
  {
    return @"RICE";
  }
}

__CFString *EnumTraits::toNSStringFromEnum<Backend::Google::ThreatType>(int a1)
{
  if ((a1 - 2) > 0xE)
  {
    return @"MALWARE";
  }

  else
  {
    return off_278564FA8[a1 - 2];
  }
}

__CFString *EnumTraits::toNSStringFromEnum<Backend::Google::PlatformType>(int a1)
{
  if ((a1 - 2) > 5)
  {
    return @"WINDOWS";
  }

  else
  {
    return off_278565020[a1 - 2];
  }
}

__CFString *EnumTraits::toNSStringFromEnum<Backend::Google::ThreatEntryType>(int a1)
{
  v1 = @"URL";
  if (a1 == 2)
  {
    v1 = @"BINARY_DIGEST";
  }

  if (a1 == 3)
  {
    return @"IP_RANGE";
  }

  else
  {
    return v1;
  }
}

uint64_t EnumTraits::toEnumFromNSString<Backend::Google::ThreatType>(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"MALWARE"])
  {
    v2 = 0x100000000;
    v3 = 1;
  }

  else if ([v1 isEqualToString:@"SOCIAL_ENGINEERING"])
  {
    v2 = 0x100000000;
    v3 = 2;
  }

  else if ([v1 isEqualToString:@"UNWANTED_SOFTWARE"])
  {
    v2 = 0x100000000;
    v3 = 3;
  }

  else if ([v1 isEqualToString:@"POTENTIALLY_HARMFUL_APPLICATION"] & 1) != 0 || (objc_msgSend(v1, "isEqualToString:", @"SOCIAL_ENGINEERING_PRIVATE"))
  {
    v2 = 0x100000000;
    v3 = 4;
  }

  else if ([v1 isEqualToString:@"API_ABUSE"])
  {
    v2 = 0x100000000;
    v3 = 6;
  }

  else if ([v1 isEqualToString:@"MALICIOUS_BINARY"])
  {
    v2 = 0x100000000;
    v3 = 7;
  }

  else if ([v1 isEqualToString:@"CSD_WHITELIST"])
  {
    v2 = 0x100000000;
    v3 = 8;
  }

  else if ([v1 isEqualToString:@"CSD_DOWNLOAD_WHITELIST"])
  {
    v2 = 0x100000000;
    v3 = 9;
  }

  else if ([v1 isEqualToString:@"CLIENT_INCIDENT"])
  {
    v2 = 0x100000000;
    v3 = 10;
  }

  else if ([v1 isEqualToString:@"SUBRESOURCE_FILTER"])
  {
    v2 = 0x100000000;
    v3 = 13;
  }

  else if ([v1 isEqualToString:@"SUSPICIOUS"])
  {
    v2 = 0x100000000;
    v3 = 14;
  }

  else if ([v1 isEqualToString:@"BILLING"])
  {
    v2 = 0x100000000;
    v3 = 15;
  }

  else
  {
    v5 = [v1 isEqualToString:@"HIGH_CONFIDENCE_ALLOWLIST"];
    if (v5)
    {
      v2 = 0x100000000;
    }

    else
    {
      v2 = 0;
    }

    if (v5)
    {
      v3 = 16;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3 | v2;
}

uint64_t EnumTraits::toEnumFromNSString<Backend::Google::ThreatEntryType>(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"URL"])
  {
    v2 = 0x100000000;
    v3 = 1;
  }

  else if ([v1 isEqualToString:@"BINARY_DIGEST"])
  {
    v2 = 0x100000000;
    v3 = 2;
  }

  else
  {
    v4 = [v1 isEqualToString:@"IP_RANGE"];
    if (v4)
    {
      v2 = 0x100000000;
    }

    else
    {
      v2 = 0;
    }

    if (v4)
    {
      v3 = 3;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3 | v2;
}

uint64_t EnumTraits::toEnumFromNSString<Backend::Google::PlatformType>(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"WINDOWS"])
  {
    v2 = 0x100000000;
    v3 = 1;
  }

  else if ([v1 isEqualToString:@"LINUX"])
  {
    v2 = 0x100000000;
    v3 = 2;
  }

  else if ([v1 isEqualToString:@"ANDROID"])
  {
    v2 = 0x100000000;
    v3 = 3;
  }

  else if ([v1 isEqualToString:@"OSX"])
  {
    v2 = 0x100000000;
    v3 = 4;
  }

  else if ([v1 isEqualToString:@"IOS"])
  {
    v2 = 0x100000000;
    v3 = 5;
  }

  else if ([v1 isEqualToString:@"ANY_PLATFORM"])
  {
    v2 = 0x100000000;
    v3 = 6;
  }

  else
  {
    v4 = [v1 isEqualToString:@"ALL_PLATFORMS"];
    if (v4)
    {
      v2 = 0x100000000;
    }

    else
    {
      v2 = 0;
    }

    if (v4)
    {
      v3 = 7;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3 | v2;
}

uint64_t EnumTraits::toEnumFromNSString<Backend::Google::ResponseType>(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"PARTIAL_UPDATE"])
  {
    v2 = 0x100000000;
    v3 = 1;
  }

  else
  {
    v4 = [v1 isEqualToString:@"FULL_UPDATE"];
    if (v4)
    {
      v2 = 0x100000000;
    }

    else
    {
      v2 = 0;
    }

    if (v4)
    {
      v3 = 2;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3 | v2;
}

uint64_t EnumTraits::toEnumFromNSString<Backend::Google::CompressionType>(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"RAW"])
  {
    v2 = 0x100000000;
    v3 = 1;
  }

  else
  {
    v4 = [v1 isEqualToString:@"RICE"];
    if (v4)
    {
      v2 = 0x100000000;
    }

    else
    {
      v2 = 0;
    }

    if (v4)
    {
      v3 = 2;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3 | v2;
}

void *Backend::Google::ProtocolMessageReader::nextField@<X0>(Backend::Google::ProtocolMessageReader *this@<X0>, void *a2@<X8>)
{
  result = operator new(0x60uLL);
  *result = Backend::Google::ProtocolMessageReader::nextField;
  result[9] = this;
  result[1] = Backend::Google::ProtocolMessageReader::nextField;
  result[2] = 0;
  *(result + 6) = 0;
  *a2 = result;
  *(result + 88) = 0;
  return result;
}

__n128 Backend::Google::readVarint@<Q0>(__n128 *a1@<X0>, __n128 **a2@<X8>)
{
  v4 = operator new(0x68uLL);
  v4->n128_u64[0] = Backend::Google::readVarint;
  result = *a1;
  v4[4] = *a1;
  a1->n128_u64[0] = 0;
  a1->n128_u64[1] = 0;
  v4->n128_u64[1] = Backend::Google::readVarint;
  v4[1].n128_u64[0] = 0;
  v4[1].n128_u32[2] = 0;
  *a2 = v4;
  v4[6].n128_u8[0] = 0;
  return result;
}

uint64_t Backend::Google::getFieldType(Backend::Google *this)
{
  if ((this & 7u) >= 6uLL)
  {
    return 0;
  }

  else
  {
    return (this & 7) + 0x100000001;
  }
}

void *Backend::Google::ProtocolMessageReader::skipField@<X0>(Backend::Google::ProtocolMessageReader *this@<X0>, void *a2@<X8>)
{
  result = operator new(0x50uLL);
  *result = Backend::Google::ProtocolMessageReader::skipField;
  result[7] = this;
  result[1] = Backend::Google::ProtocolMessageReader::skipField;
  result[2] = 0;
  *(result + 6) = 0;
  *a2 = result;
  *(result + 72) = 0;
  return result;
}

_DWORD *Backend::Google::ProtocolMessageReader::skipField@<X0>(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  result = operator new(0x68uLL);
  *result = Backend::Google::ProtocolMessageReader::skipField;
  result[24] = a2;
  *(result + 7) = a1;
  *(result + 1) = Backend::Google::ProtocolMessageReader::skipField;
  *(result + 2) = 0;
  result[6] = 0;
  *a3 = result;
  *(result + 100) = 0;
  return result;
}

void *Backend::Google::ProtocolMessageReader::readRepeatedPackedInt32@<X0>(Backend::Google::ProtocolMessageReader *this@<X0>, void *a2@<X8>)
{
  result = operator new(0xB0uLL);
  *result = Backend::Google::ProtocolMessageReader::readRepeatedPackedInt32;
  result[15] = this;
  result[1] = Backend::Google::ProtocolMessageReader::readRepeatedPackedInt32;
  result[2] = 0;
  *(result + 6) = 0;
  *a2 = result;
  *(result + 168) = 0;
  return result;
}

void *Backend::Google::ProtocolMessageReader::byteReader@<X0>(Backend::Google::ProtocolMessageReader *this@<X0>, void *a2@<X8>)
{
  result = operator new(0x60uLL);
  *result = Backend::Google::ProtocolMessageReader::byteReader;
  result[9] = this;
  result[1] = Backend::Google::ProtocolMessageReader::byteReader;
  result[2] = 0;
  *(result + 6) = 0;
  *a2 = result;
  *(result + 88) = 0;
  return result;
}

void *Backend::Google::ProtocolMessageReader::readLengthDelimitedField@<X0>(Backend::Google::ProtocolMessageReader *this@<X0>, void *a2@<X8>)
{
  result = operator new(0xA0uLL);
  *result = Backend::Google::ProtocolMessageReader::readLengthDelimitedField;
  result[10] = this;
  result[1] = Backend::Google::ProtocolMessageReader::readLengthDelimitedField;
  result[2] = 0;
  *(result + 6) = 0;
  *a2 = result;
  *(result + 152) = 0;
  return result;
}

void *Backend::Google::ProtocolMessageReader::byteReaderAndLength@<X0>(Backend::Google::ProtocolMessageReader *this@<X0>, void *a2@<X8>)
{
  result = operator new(0x88uLL);
  *result = Backend::Google::ProtocolMessageReader::byteReaderAndLength;
  result[14] = this;
  result[1] = Backend::Google::ProtocolMessageReader::byteReaderAndLength;
  result[2] = 0;
  *(result + 6) = 0;
  *a2 = result;
  *(result + 128) = 0;
  return result;
}

void *Backend::Google::ProtocolMessageReader::readVarintField@<X0>(Backend::Google::ProtocolMessageReader *this@<X0>, void *a2@<X8>)
{
  result = operator new(0x68uLL);
  *result = Backend::Google::ProtocolMessageReader::readVarintField;
  result[10] = this;
  result[1] = Backend::Google::ProtocolMessageReader::readVarintField;
  result[2] = 0;
  *(result + 6) = 0;
  *a2 = result;
  *(result + 96) = 0;
  return result;
}

_DWORD *Backend::Google::ProtocolMessageReader::riceDecompressor@<X0>(Backend::Google::ProtocolMessageReader *this@<X0>, int a2@<W1>, int a3@<W2>, void *a4@<X8>)
{
  result = operator new(0x80uLL);
  *result = Backend::Google::ProtocolMessageReader::riceDecompressor;
  result[28] = a2;
  result[29] = a3;
  *(result + 12) = this;
  *(result + 1) = Backend::Google::ProtocolMessageReader::riceDecompressor;
  *(result + 2) = 0;
  result[6] = 0;
  *a4 = result;
  *(result + 120) = 0;
  return result;
}

void *Backend::Google::ProtocolMessageReader::readString@<X0>(Backend::Google::ProtocolMessageReader *this@<X0>, void *a2@<X8>)
{
  result = operator new(0x68uLL);
  *result = Backend::Google::ProtocolMessageReader::readString;
  result[10] = this;
  result[1] = Backend::Google::ProtocolMessageReader::readString;
  result[2] = 0;
  *(result + 6) = 0;
  *a2 = result;
  *(result + 96) = 0;
  return result;
}

void *Backend::Google::ProtocolMessageReader::fieldType@<X0>(Backend::Google::ProtocolMessageReader *this@<X0>, void *a2@<X8>)
{
  result = operator new(0x60uLL);
  *result = Backend::Google::ProtocolMessageReader::fieldType;
  result[9] = this;
  result[1] = Backend::Google::ProtocolMessageReader::fieldType;
  result[2] = 0;
  *(result + 6) = 0;
  *a2 = result;
  *(result + 88) = 0;
  return result;
}

void *Backend::Google::ProtocolMessageReader::skipVarintField@<X0>(Backend::Google::ProtocolMessageReader *this@<X0>, void *a2@<X8>)
{
  result = operator new(0x60uLL);
  *result = Backend::Google::ProtocolMessageReader::skipVarintField;
  result[9] = this;
  result[1] = Backend::Google::ProtocolMessageReader::skipVarintField;
  result[2] = 0;
  *(result + 6) = 0;
  *a2 = result;
  *(result + 88) = 0;
  return result;
}

void *Backend::Google::ProtocolMessageReader::skip64BitField@<X0>(Backend::Google::ProtocolMessageReader *this@<X0>, void *a2@<X8>)
{
  result = operator new(0x50uLL);
  *result = Backend::Google::ProtocolMessageReader::skip64BitField;
  result[7] = this;
  result[1] = Backend::Google::ProtocolMessageReader::skip64BitField;
  result[2] = 0;
  *(result + 6) = 0;
  *a2 = result;
  *(result + 72) = 0;
  return result;
}

void *Backend::Google::ProtocolMessageReader::skipLengthDelimitedField@<X0>(Backend::Google::ProtocolMessageReader *this@<X0>, void *a2@<X8>)
{
  result = operator new(0x70uLL);
  *result = Backend::Google::ProtocolMessageReader::skipLengthDelimitedField;
  result[7] = this;
  result[1] = Backend::Google::ProtocolMessageReader::skipLengthDelimitedField;
  result[2] = 0;
  *(result + 6) = 0;
  *a2 = result;
  *(result + 104) = 0;
  return result;
}

void *Backend::Google::ProtocolMessageReader::skipGroup@<X0>(Backend::Google::ProtocolMessageReader *this@<X0>, void *a2@<X8>)
{
  result = operator new(0x50uLL);
  *result = Backend::Google::ProtocolMessageReader::skipGroup;
  result[7] = this;
  result[1] = Backend::Google::ProtocolMessageReader::skipGroup;
  result[2] = 0;
  *(result + 6) = 0;
  *a2 = result;
  *(result + 76) = 0;
  return result;
}

void *Backend::Google::ProtocolMessageReader::skip32BitField@<X0>(Backend::Google::ProtocolMessageReader *this@<X0>, void *a2@<X8>)
{
  result = operator new(0x50uLL);
  *result = Backend::Google::ProtocolMessageReader::skip32BitField;
  result[7] = this;
  result[1] = Backend::Google::ProtocolMessageReader::skip32BitField;
  result[2] = 0;
  *(result + 6) = 0;
  *a2 = result;
  *(result + 72) = 0;
  return result;
}

uint64_t detail::lazy_promise<ReadResult<unsigned long long>>::result(uint64_t a1)
{
  if (*(a1 + 8) != 2)
  {
    return a1 + 16;
  }

  v6 = v1;
  v7 = v2;
  std::exception_ptr::exception_ptr(&v5, (a1 + 16));
  v4.__ptr_ = &v5;
  std::rethrow_exception(v4);
  return detail::lazy_promise<std::optional<std::pair<std::shared_ptr<ReadStream>,unsigned long>>>::~lazy_promise();
}

uint64_t detail::lazy_promise<std::optional<std::pair<std::shared_ptr<ReadStream>,unsigned long>>>::~lazy_promise(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 == 2)
  {
    std::exception_ptr::~exception_ptr((a1 + 16));
  }

  else if (v2 == 1 && *(a1 + 40) == 1)
  {
    v3 = *(a1 + 24);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:sn200100](v3);
    }
  }

  return a1;
}

uint64_t *std::construct_at[abi:sn200100]<ReadStream,std::shared_ptr<ReadStream> &,unsigned long long &,ReadStream*>(uint64_t *result, uint64_t a2, uint64_t *a3)
{
  if (result)
  {
    v3 = result;
    v5 = *a2;
    v4 = *(a2 + 8);
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v6 = *a3;
    v8 = *v5;
    v7 = v5[1];
    *v3 = v8;
    v3[1] = v7;
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
      v8 = *v3;
    }

    v3[2] = *(v8 + 64) + v6;
    *(v3 + 24) = 1;
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:sn200100](v4);
    }

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t detail::lazy_promise<std::optional<std::shared_ptr<ReadStream>>>::~lazy_promise(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 == 2)
  {
    std::exception_ptr::~exception_ptr((a1 + 16));
  }

  else if (v2 == 1 && *(a1 + 32) == 1)
  {
    v3 = *(a1 + 24);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:sn200100](v3);
    }
  }

  return a1;
}

void std::__shared_ptr_emplace<BitProvider>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2838CD6D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<BitProvider>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v1);
  }
}

uint64_t std::construct_at[abi:sn200100]<BitProvider,std::shared_ptr<ReadStream> &,BitProvider*>(uint64_t result, uint64_t *a2)
{
  if (result)
  {
    v2 = result;
    v4 = *a2;
    v3 = a2[1];
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      *v2 = v4;
      *(v2 + 8) = v3;
      atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
      *(v2 + 16) = 0;
      std::__shared_weak_count::__release_shared[abi:sn200100](v3);
    }

    else
    {
      *v2 = v4;
      *(v2 + 8) = 0;
      *(v2 + 16) = 0;
    }

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t detail::lazy_promise<std::optional<std::string>>::~lazy_promise(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 == 2)
  {
    std::exception_ptr::~exception_ptr((a1 + 16));
  }

  else if (v2 == 1 && *(a1 + 40) == 1 && *(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void ReadStream::readByte(std::exception_ptr *__p)
{
  if (__p->__ptr_)
  {
    if (LOBYTE(__p[9].__ptr_))
    {
      ptr = __p[6].__ptr_;
      if (ptr)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](ptr);
      }
    }
  }

  if (LODWORD(__p[3].__ptr_) == 2)
  {
    std::exception_ptr::~exception_ptr(__p + 4);
  }

  operator delete(__p);
}

uint64_t Backend::Google::readVarint(uint64_t a1)
{
  if (!*(a1 + 96))
  {
    v4 = 0;
    v5 = 0;
    goto LABEL_5;
  }

  v3 = *(a1 + 48);
  if (!v3)
  {
LABEL_23:
    MEMORY[0xDEADDEAD] = 0;
    std::terminate();
  }

  while (1)
  {
    detail::lazy_promise<ReadResult<unsigned char>>::result((v3 + 2));
    v7 = *v6;
    v1 = *v6;
    v8 = *(a1 + 56);
    if (v8)
    {
      (*(v8 + 8))();
    }

    v5 = HIDWORD(v7);
    if (HIDWORD(v7) != 1)
    {
      break;
    }

    v9 = *(a1 + 80);
    v5 = ((v7 & 0x7F) << (7 * v9)) | *(a1 + 88);
    if ((v1 & 0x80000000) == 0)
    {
      *(a1 + 32) = v5;
      LODWORD(v5) = 1;
      goto LABEL_19;
    }

    v4 = v9 + 1;
    if (v4 == 10)
    {
      goto LABEL_14;
    }

LABEL_5:
    *(a1 + 97) = v1;
    *(a1 + 80) = v4;
    *(a1 + 88) = v5;
    ReadStream::readByte(*(a1 + 64), (a1 + 56));
    v3 = *(a1 + 56);
    *(a1 + 48) = v3;
    if (!v3)
    {
      goto LABEL_23;
    }

    if (*v3)
    {
      *(a1 + 96) = 1;
      v3[2] = a1;
      v10 = *(a1 + 48);
      goto LABEL_20;
    }
  }

  if (*(a1 + 80))
  {
LABEL_14:
    LODWORD(v5) = 0;
    *(a1 + 32) = 0;
    goto LABEL_19;
  }

  if (v5)
  {
    std::__throw_bad_variant_access[abi:sn200100]();
    return Backend::Google::readVarint(v13);
  }

  *(a1 + 32) = v1 & 1;
LABEL_19:
  *(a1 + 40) = v5;
  *(a1 + 24) = 1;
  *a1 = 0;
  v10 = *(a1 + 16);
LABEL_20:
  v11 = *v10;

  return v11();
}

void Backend::Google::readVarint(void *__p)
{
  if (*__p)
  {
    v2 = *(__p + 96) == 0;
  }

  else
  {
    v2 = 1;
  }

  if (!v2)
  {
    v3 = *(__p + 7);
    if (v3)
    {
      (*(v3 + 8))();
    }
  }

  if (*(__p + 6) == 2)
  {
    std::exception_ptr::~exception_ptr(__p + 4);
  }

  v4 = *(__p + 9);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v4);
  }

  operator delete(__p);
}

uint64_t Backend::Google::ProtocolMessageReader::nextField(uint64_t a1)
{
  if (*(a1 + 88))
  {
    v2 = *(a1 + 56);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_21:
    MEMORY[0xDEADDEAD] = 0;
    std::terminate();
  }

  v9 = *(a1 + 72);
  v11 = *(v9 + 8);
  v10 = *(v9 + 16);
  *(a1 + 40) = v11;
  *(a1 + 48) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  Backend::Google::readVarint((a1 + 40), (a1 + 64));
  v2 = *(a1 + 64);
  *(a1 + 80) = v2;
  *(a1 + 56) = v2;
  if (!v2)
  {
    goto LABEL_21;
  }

  if (*v2)
  {
    *(a1 + 88) = 1;
    v2[2] = a1;
    v8 = *(a1 + 56);
    goto LABEL_17;
  }

LABEL_3:
  v3 = detail::lazy_promise<ReadResult<unsigned long long>>::result((v2 + 2));
  v4 = *v3;
  v5 = *(v3 + 8);
  (*(*(a1 + 80) + 8))();
  v6 = *(a1 + 48);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v6);
  }

  if (v5)
  {
    if (v5 != 1)
    {
      std::__throw_bad_variant_access[abi:sn200100]();
      return Backend::Google::ProtocolMessageReader::nextField(v14);
    }

    FieldType = Backend::Google::getFieldType(v4);
    if ((FieldType & 0x100000000) != 0 && (**(a1 + 72) = FieldType, FieldType != 5))
    {
      *(a1 + 32) = v4 >> 3;
      *(a1 + 36) = 1;
    }

    else
    {
      *(a1 + 32) = 0;
    }
  }

  else
  {
    *(a1 + 32) = v4 & 1;
  }

  *(a1 + 24) = 1;
  *a1 = 0;
  v8 = *(a1 + 16);
LABEL_17:
  v12 = *v8;

  return v12();
}

void Backend::Google::ProtocolMessageReader::nextField(void *__p)
{
  if (*__p)
  {
    v2 = *(__p + 88) == 0;
  }

  else
  {
    v2 = 1;
  }

  if (!v2)
  {
    v3 = *(__p + 10);
    (*(*(__p + 10) + 8))();
    v4 = *(__p + 6);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:sn200100](v4);
    }
  }

  if (*(__p + 6) == 2)
  {
    std::exception_ptr::~exception_ptr(__p + 4);
  }

  operator delete(__p);
}

uint64_t Backend::Google::ProtocolMessageReader::skipVarintField(uint64_t a1)
{
  if (*(a1 + 88))
  {
    v2 = *(a1 + 56);
    if (v2)
    {
      v3 = *(a1 + 80);
      goto LABEL_4;
    }

LABEL_16:
    MEMORY[0xDEADDEAD] = 0;
    std::terminate();
  }

  v6 = *(a1 + 72);
  v8 = *(v6 + 8);
  v7 = *(v6 + 16);
  *(a1 + 40) = v8;
  *(a1 + 48) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  Backend::Google::readVarint((a1 + 40), (a1 + 64));
  v3 = *(a1 + 64);
  *(a1 + 80) = v3;
  *(a1 + 56) = v3;
  if (!v3)
  {
    goto LABEL_16;
  }

  if (*v3)
  {
    *(a1 + 88) = 1;
    *(v3 + 16) = a1;
    v5 = *(a1 + 56);
    goto LABEL_12;
  }

  v2 = v3;
LABEL_4:
  *(a1 + 32) = *(detail::lazy_promise<ReadResult<unsigned long long>>::result(v2 + 16) + 8) == 1;
  *(a1 + 24) = 1;
  (*(v3 + 8))(v3);
  v4 = *(a1 + 48);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v4);
  }

  *a1 = 0;
  v5 = *(a1 + 16);
LABEL_12:
  v9 = *v5;

  return v9();
}

void Backend::Google::ProtocolMessageReader::skipVarintField(void *__p)
{
  if (*__p)
  {
    v2 = *(__p + 88) == 0;
  }

  else
  {
    v2 = 1;
  }

  if (!v2)
  {
    v3 = *(__p + 10);
    (*(*(__p + 10) + 8))();
    v4 = *(__p + 6);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:sn200100](v4);
    }
  }

  if (*(__p + 6) == 2)
  {
    std::exception_ptr::~exception_ptr(__p + 4);
  }

  operator delete(__p);
}

uint64_t Backend::Google::ProtocolMessageReader::skip64BitField(uint64_t a1)
{
  if (!*(a1 + 72))
  {
    v3 = 0;
    goto LABEL_5;
  }

  v2 = *(a1 + 40);
  if (!v2)
  {
LABEL_18:
    MEMORY[0xDEADDEAD] = 0;
    std::terminate();
  }

  do
  {
    detail::lazy_promise<ReadResult<unsigned char>>::result((v2 + 2));
    v5 = *(v4 + 4) << 32;
    v6 = *(a1 + 48);
    if (v6)
    {
      (*(v6 + 8))();
    }

    if (v5 != 0x100000000)
    {
      v7 = 0;
      goto LABEL_13;
    }

    v3 = *(a1 + 64) + 1;
    if (*(a1 + 64) == 7)
    {
      v7 = 1;
LABEL_13:
      *(a1 + 32) = v7;
      *(a1 + 24) = 1;
      *a1 = 0;
      v8 = *(a1 + 16);
      goto LABEL_15;
    }

LABEL_5:
    *(a1 + 64) = v3;
    ReadStream::readByte(*(*(a1 + 56) + 8), (a1 + 48));
    v2 = *(a1 + 48);
    *(a1 + 40) = v2;
    if (!v2)
    {
      goto LABEL_18;
    }
  }

  while (!*v2);
  *(a1 + 72) = 1;
  v2[2] = a1;
  v8 = *(a1 + 40);
LABEL_15:
  v9 = *v8;

  return v9();
}

void Backend::Google::ProtocolMessageReader::skip64BitField(void *__p)
{
  if (*__p)
  {
    v2 = *(__p + 72) == 0;
  }

  else
  {
    v2 = 1;
  }

  if (!v2)
  {
    v3 = *(__p + 6);
    if (v3)
    {
      (*(v3 + 8))();
    }
  }

  if (*(__p + 6) == 2)
  {
    std::exception_ptr::~exception_ptr(__p + 4);
  }

  operator delete(__p);
}

uint64_t Backend::Google::ProtocolMessageReader::byteReaderAndLength(uint64_t a1, __n128 Varint)
{
  if (*(a1 + 128))
  {
    v3 = *(a1 + 96);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_19:
    MEMORY[0xDEADDEAD] = 0;
    std::terminate();
  }

  v9 = *(a1 + 112);
  if (*v9 != 3)
  {
    goto LABEL_14;
  }

  v11 = *(v9 + 8);
  v10 = *(v9 + 16);
  *(a1 + 80) = v11;
  *(a1 + 88) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  Varint = Backend::Google::readVarint((a1 + 80), (a1 + 104));
  v3 = *(a1 + 104);
  *(a1 + 120) = v3;
  *(a1 + 96) = v3;
  if (!v3)
  {
    goto LABEL_19;
  }

  if (!*v3)
  {
LABEL_3:
    *(a1 + 64) = *detail::lazy_promise<ReadResult<unsigned long long>>::result((v3 + 2));
    (*(*(a1 + 120) + 8))();
    v4 = *(a1 + 88);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:sn200100](v4);
    }

    if (*(a1 + 72) == 1)
    {
      v5 = *(a1 + 112);
      *v5 = 0;
      v6 = operator new(0x38uLL);
      v6[1] = 0;
      v6[2] = 0;
      *v6 = &unk_2838CD710;
      std::construct_at[abi:sn200100]<ReadStream,std::shared_ptr<ReadStream> &,unsigned long long &,ReadStream*>(v6 + 3, (v5 + 2), (a1 + 64));
      if (*(a1 + 72) != 1)
      {
        v15 = std::__throw_bad_variant_access[abi:sn200100]();
        return Backend::Google::ProtocolMessageReader::byteReaderAndLength(v15);
      }

      v7 = *(a1 + 64);
      *(a1 + 32) = v6 + 3;
      *(a1 + 40) = v6;
      *(a1 + 48) = v7;
      v8 = 1;
      goto LABEL_15;
    }

LABEL_14:
    v8 = 0;
    *(a1 + 32) = 0;
LABEL_15:
    *(a1 + 56) = v8;
    *(a1 + 24) = 1;
    *a1 = 0;
    v12 = *(a1 + 16);
    goto LABEL_16;
  }

  *(a1 + 128) = 1;
  v3[2] = a1;
  v12 = *(a1 + 96);
LABEL_16:
  v13 = *v12;

  return v13(Varint);
}

void Backend::Google::ProtocolMessageReader::byteReaderAndLength(void *a1)
{
  if (*a1)
  {
    v2 = *(a1 + 128) == 0;
  }

  else
  {
    v2 = 1;
  }

  if (!v2)
  {
    v3 = *(a1 + 15);
    (*(*(a1 + 15) + 8))();
    v4 = *(a1 + 11);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:sn200100](v4);
    }
  }

  detail::lazy_promise<std::optional<std::pair<std::shared_ptr<ReadStream>,unsigned long>>>::~lazy_promise(a1 + 16);

  operator delete(a1);
}

uint64_t Backend::Google::ProtocolMessageReader::skipLengthDelimitedField(uint64_t a1)
{
  v2 = *(a1 + 104);
  if (v2 == 2)
  {
    v3 = *(a1 + 40);
    if (v3)
    {
      goto LABEL_19;
    }

LABEL_32:
    MEMORY[0xDEADDEAD] = 0;
    std::terminate();
  }

  if (v2 == 1)
  {
    v3 = *(a1 + 40);
    if (!v3)
    {
      goto LABEL_32;
    }
  }

  else
  {
    Backend::Google::ProtocolMessageReader::byteReaderAndLength(*(a1 + 56), (a1 + 48));
    v3 = *(a1 + 48);
    *(a1 + 64) = v3;
    *(a1 + 40) = v3;
    if (!v3)
    {
      goto LABEL_32;
    }

    if (*v3)
    {
      v4 = 1;
LABEL_16:
      *(a1 + 104) = v4;
      v3[2] = a1;
      v10 = *(a1 + 40);
      goto LABEL_28;
    }
  }

  detail::lazy_promise<std::optional<std::pair<std::shared_ptr<ReadStream>,unsigned long>>>::result((v3 + 2));
  if (*(v5 + 24) == 1)
  {
    *(a1 + 72) = *v5;
    v6 = *(v5 + 8);
    *(a1 + 80) = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = *(a1 + 64);
    v8 = *(v5 + 16);
    *(a1 + 88) = v8;
    (*(v7 + 8))(v7);
    if (v8)
    {
      v9 = 0;
      while (1)
      {
        *(a1 + 96) = v9;
        ReadStream::readByte(*(a1 + 72), (a1 + 48));
        v3 = *(a1 + 48);
        *(a1 + 40) = v3;
        if (!v3)
        {
          goto LABEL_32;
        }

        if (*v3)
        {
          break;
        }

LABEL_19:
        detail::lazy_promise<ReadResult<unsigned char>>::result((v3 + 2));
        v12 = *(v11 + 4) << 32;
        v13 = *(a1 + 48);
        if (v13)
        {
          (*(v13 + 8))();
        }

        if (v12 != 0x100000000)
        {
          v14 = 0;
          goto LABEL_25;
        }

        v9 = *(a1 + 96) + 1;
        if (v9 == *(a1 + 88))
        {
          goto LABEL_23;
        }
      }

      v4 = 2;
      goto LABEL_16;
    }

LABEL_23:
    v14 = 1;
LABEL_25:
    *(a1 + 32) = v14;
    *(a1 + 24) = 1;
    v15 = *(a1 + 80);
    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:sn200100](v15);
    }
  }

  else
  {
    (*(*(a1 + 64) + 8))();
    *(a1 + 32) = 0;
    *(a1 + 24) = 1;
  }

  *a1 = 0;
  v10 = *(a1 + 16);
LABEL_28:
  v16 = *v10;

  return v16();
}

void Backend::Google::ProtocolMessageReader::skipLengthDelimitedField(std::exception_ptr *__p)
{
  if (__p->__ptr_ && LOBYTE(__p[13].__ptr_))
  {
    if (LOBYTE(__p[13].__ptr_) == 1)
    {
      ptr = __p[8].__ptr_;
      (*(__p[8].__ptr_ + 1))();
    }

    else
    {
      v3 = __p[6].__ptr_;
      if (v3)
      {
        v3[1]();
      }

      v4 = __p[10].__ptr_;
      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v4);
      }
    }
  }

  if (LODWORD(__p[3].__ptr_) == 2)
  {
    std::exception_ptr::~exception_ptr(__p + 4);
  }

  operator delete(__p);
}

uint64_t Backend::Google::ProtocolMessageReader::fieldType(uint64_t a1)
{
  if (*(a1 + 88))
  {
    v2 = *(a1 + 56);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_18:
    MEMORY[0xDEADDEAD] = 0;
    std::terminate();
  }

  v10 = *(a1 + 72);
  v12 = *(v10 + 8);
  v11 = *(v10 + 16);
  *(a1 + 40) = v12;
  *(a1 + 48) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  Varint = Backend::Google::readVarint((a1 + 40), (a1 + 64));
  v2 = *(a1 + 64);
  *(a1 + 80) = v2;
  *(a1 + 56) = v2;
  if (!v2)
  {
    goto LABEL_18;
  }

  if (*v2)
  {
    *(a1 + 88) = 1;
    v2[2] = a1;
    v13 = *(a1 + 56);
    goto LABEL_15;
  }

LABEL_3:
  v3 = detail::lazy_promise<ReadResult<unsigned long long>>::result((v2 + 2));
  v4 = *v3;
  v5 = *(v3 + 8);
  (*(*(a1 + 80) + 8))();
  v7 = *(a1 + 48);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v7);
  }

  if (v5 == 1 && (FieldType = Backend::Google::getFieldType(v4), (FieldType & 0x100000000) != 0))
  {
    *(a1 + 32) = FieldType;
    v9 = 1;
  }

  else
  {
    v9 = 0;
    *(a1 + 32) = 0;
  }

  *(a1 + 36) = v9;
  *(a1 + 24) = 1;
  *a1 = 0;
  v13 = *(a1 + 16);
LABEL_15:
  v14 = *v13;

  return v14(Varint);
}

void Backend::Google::ProtocolMessageReader::fieldType(void *__p)
{
  if (*__p)
  {
    v2 = *(__p + 88) == 0;
  }

  else
  {
    v2 = 1;
  }

  if (!v2)
  {
    v3 = *(__p + 10);
    (*(*(__p + 10) + 8))();
    v4 = *(__p + 6);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:sn200100](v4);
    }
  }

  if (*(__p + 6) == 2)
  {
    std::exception_ptr::~exception_ptr(__p + 4);
  }

  operator delete(__p);
}

uint64_t Backend::Google::ProtocolMessageReader::skip32BitField(uint64_t a1)
{
  if (!*(a1 + 72))
  {
    v3 = 0;
    goto LABEL_5;
  }

  v2 = *(a1 + 40);
  if (!v2)
  {
LABEL_18:
    MEMORY[0xDEADDEAD] = 0;
    std::terminate();
  }

  do
  {
    detail::lazy_promise<ReadResult<unsigned char>>::result((v2 + 2));
    v5 = *(v4 + 4) << 32;
    v6 = *(a1 + 48);
    if (v6)
    {
      (*(v6 + 8))();
    }

    if (v5 != 0x100000000)
    {
      v7 = 0;
      goto LABEL_13;
    }

    v3 = *(a1 + 64) + 1;
    if (*(a1 + 64) == 3)
    {
      v7 = 1;
LABEL_13:
      *(a1 + 32) = v7;
      *(a1 + 24) = 1;
      *a1 = 0;
      v8 = *(a1 + 16);
      goto LABEL_15;
    }

LABEL_5:
    *(a1 + 64) = v3;
    ReadStream::readByte(*(*(a1 + 56) + 8), (a1 + 48));
    v2 = *(a1 + 48);
    *(a1 + 40) = v2;
    if (!v2)
    {
      goto LABEL_18;
    }
  }

  while (!*v2);
  *(a1 + 72) = 1;
  v2[2] = a1;
  v8 = *(a1 + 40);
LABEL_15:
  v9 = *v8;

  return v9();
}

void Backend::Google::ProtocolMessageReader::skip32BitField(void *__p)
{
  if (*__p)
  {
    v2 = *(__p + 72) == 0;
  }

  else
  {
    v2 = 1;
  }

  if (!v2)
  {
    v3 = *(__p + 6);
    if (v3)
    {
      (*(v3 + 8))();
    }
  }

  if (*(__p + 6) == 2)
  {
    std::exception_ptr::~exception_ptr(__p + 4);
  }

  operator delete(__p);
}

uint64_t Backend::Google::ProtocolMessageReader::skipField(uint64_t a1)
{
  v2 = *(a1 + 100);
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v3 = *(a1 + 40);
      if (v3)
      {
        v4 = *(a1 + 80);
        goto LABEL_23;
      }

LABEL_49:
      MEMORY[0xDEADDEAD] = 0;
      std::terminate();
    }

    if (v2 != 4)
    {
      v3 = *(a1 + 40);
      if (v3)
      {
        v4 = *(a1 + 88);
        goto LABEL_23;
      }

      goto LABEL_49;
    }

    v5 = *(a1 + 40);
    if (!v5)
    {
      goto LABEL_49;
    }

LABEL_9:
    detail::lazy_promise<BOOL>::result((v5 + 2));
    *(a1 + 32) = *v6;
    *(a1 + 24) = 1;
    v7 = *(a1 + 48);
    if (v7)
    {
      (*(v7 + 8))(v7);
    }

    goto LABEL_24;
  }

  if (*(a1 + 100))
  {
    if (v2 == 1)
    {
      v3 = *(a1 + 40);
      if (v3)
      {
        v4 = *(a1 + 64);
LABEL_23:
        detail::lazy_promise<BOOL>::result(v3 + 16);
        *(a1 + 32) = *v9;
        *(a1 + 24) = 1;
        (*(v4 + 8))(v4);
LABEL_24:
        *a1 = 0;
        v10 = *(a1 + 16);
        goto LABEL_25;
      }
    }

    else
    {
      v3 = *(a1 + 40);
      if (v3)
      {
        v4 = *(a1 + 72);
        goto LABEL_23;
      }
    }

    goto LABEL_49;
  }

  v8 = *(a1 + 96);
  if (v8 <= 2)
  {
    if (v8)
    {
      if (v8 == 1)
      {
        Backend::Google::ProtocolMessageReader::skipVarintField(*(a1 + 56), (a1 + 48));
        v4 = *(a1 + 48);
        *(a1 + 64) = v4;
        *(a1 + 40) = v4;
        if (!v4)
        {
          goto LABEL_49;
        }

        if (*v4)
        {
          v13 = 1;
          goto LABEL_46;
        }

        goto LABEL_48;
      }

      if (v8 != 2)
      {
        goto LABEL_24;
      }

      Backend::Google::ProtocolMessageReader::skip64BitField(*(a1 + 56), (a1 + 48));
      v4 = *(a1 + 48);
      *(a1 + 72) = v4;
      *(a1 + 40) = v4;
      if (!v4)
      {
        goto LABEL_49;
      }

      if (!*v4)
      {
        goto LABEL_48;
      }

      v13 = 2;
LABEL_46:
      *(a1 + 100) = v13;
      *(v4 + 16) = a1;
      goto LABEL_47;
    }

LABEL_39:
    *(a1 + 32) = 0;
    *(a1 + 24) = 1;
    goto LABEL_24;
  }

  if (v8 > 4)
  {
    if (v8 != 5)
    {
      if (v8 != 6)
      {
        goto LABEL_24;
      }

      Backend::Google::ProtocolMessageReader::skip32BitField(*(a1 + 56), (a1 + 48));
      v4 = *(a1 + 48);
      *(a1 + 88) = v4;
      *(a1 + 40) = v4;
      if (!v4)
      {
        goto LABEL_49;
      }

      if (!*v4)
      {
        goto LABEL_48;
      }

      v13 = 5;
      goto LABEL_46;
    }

    goto LABEL_39;
  }

  if (v8 == 3)
  {
    Backend::Google::ProtocolMessageReader::skipLengthDelimitedField(*(a1 + 56), (a1 + 48));
    v4 = *(a1 + 48);
    *(a1 + 80) = v4;
    *(a1 + 40) = v4;
    if (!v4)
    {
      goto LABEL_49;
    }

    if (*v4)
    {
      v13 = 3;
      goto LABEL_46;
    }

LABEL_48:
    v3 = v4;
    goto LABEL_23;
  }

  Backend::Google::ProtocolMessageReader::skipGroup(*(a1 + 56), (a1 + 48));
  v5 = *(a1 + 48);
  *(a1 + 40) = v5;
  if (!v5)
  {
    goto LABEL_49;
  }

  if (!*v5)
  {
    goto LABEL_9;
  }

  *(a1 + 100) = 4;
  v5[2] = a1;
LABEL_47:
  v10 = *(a1 + 40);
LABEL_25:
  v11 = *v10;

  return v11();
}

{
  if (*(a1 + 72))
  {
    v2 = *(a1 + 40);
    if (v2)
    {
      v3 = *(a1 + 64);
LABEL_4:
      detail::lazy_promise<BOOL>::result(v2 + 16);
      v5 = *v4;
      (*(v3 + 8))(v3);
      if (v5 == 1)
      {
        **(a1 + 56) = 0;
        v6 = 1;
      }

      else
      {
        v6 = 0;
      }

      *(a1 + 32) = v6;
      *(a1 + 24) = 1;
      *a1 = 0;
      v7 = *(a1 + 16);
      goto LABEL_11;
    }

LABEL_15:
    MEMORY[0xDEADDEAD] = 0;
    std::terminate();
  }

  Backend::Google::ProtocolMessageReader::skipField(*(a1 + 56), **(a1 + 56), (a1 + 48));
  v3 = *(a1 + 48);
  *(a1 + 64) = v3;
  *(a1 + 40) = v3;
  if (!v3)
  {
    goto LABEL_15;
  }

  if (!*v3)
  {
    v2 = v3;
    goto LABEL_4;
  }

  *(a1 + 72) = 1;
  *(v3 + 16) = a1;
  v7 = *(a1 + 40);
LABEL_11:
  v8 = *v7;

  return v8();
}

void Backend::Google::ProtocolMessageReader::skipField(std::exception_ptr *__p)
{
  if (__p->__ptr_)
  {
    v2 = BYTE4(__p[12].__ptr_);
    if (v2 <= 2)
    {
      if (!BYTE4(__p[12].__ptr_))
      {
        goto LABEL_14;
      }

      if (v2 == 1)
      {
        ptr = __p[8].__ptr_;
      }

      else
      {
        ptr = __p[9].__ptr_;
      }

      goto LABEL_13;
    }

    if (v2 == 3)
    {
      ptr = __p[10].__ptr_;
    }

    else if (v2 == 4)
    {
      ptr = __p[6].__ptr_;
      if (!ptr)
      {
        goto LABEL_14;
      }
    }

    else
    {
      ptr = __p[11].__ptr_;
    }

LABEL_13:
    ptr[1]();
  }

LABEL_14:
  if (LODWORD(__p[3].__ptr_) == 2)
  {
    std::exception_ptr::~exception_ptr(__p + 4);
  }

  operator delete(__p);
}

uint64_t Backend::Google::ProtocolMessageReader::skipGroup(uint64_t a1)
{
  v3 = *(a1 + 76);
  if (v3 == 2)
  {
    v6 = *(a1 + 40);
    if (v6)
    {
      goto LABEL_20;
    }

    goto LABEL_33;
  }

  if (v3 != 1)
  {
    v7 = 1;
    goto LABEL_8;
  }

  v4 = *(a1 + 40);
  if (!v4)
  {
LABEL_33:
    MEMORY[0xDEADDEAD] = 0;
    std::terminate();
  }

  for (i = *(a1 + 64); ; v4 = i)
  {
    v9 = *detail::lazy_promise<ReadResult<unsigned long long>>::result(v4 + 16);
    (*(i + 8))(i);
    if ((v9 & 0x100000000) == 0)
    {
LABEL_24:
      v13 = 0;
LABEL_26:
      *(a1 + 32) = v13;
      *(a1 + 24) = 1;
      *a1 = 0;
      v14 = *(a1 + 16);
      goto LABEL_30;
    }

    if (v9 == 5)
    {
      v7 = *(a1 + 72) - 1;
      goto LABEL_17;
    }

    if (v9 == 4)
    {
      v7 = *(a1 + 72) + 1;
LABEL_17:
      v1 = *(a1 + 77);
      goto LABEL_8;
    }

    Backend::Google::ProtocolMessageReader::skipField(*(a1 + 56), v9);
    v6 = *(a1 + 48);
    *(a1 + 40) = v6;
    if (!v6)
    {
      goto LABEL_33;
    }

    if (*v6)
    {
      *(a1 + 76) = 2;
      v6[2] = a1;
      goto LABEL_29;
    }

LABEL_20:
    detail::lazy_promise<BOOL>::result((v6 + 2));
    v11 = *v10;
    v12 = *(a1 + 48);
    if (v12)
    {
      (*(v12 + 8))();
    }

    if (!v11)
    {
      goto LABEL_24;
    }

    v1 = 0;
    v7 = *(a1 + 72);
LABEL_8:
    *(a1 + 77) = v1 & 1;
    *(a1 + 72) = v7;
    v8 = *(a1 + 56);
    if (!v7)
    {
      *v8 = 0;
      v13 = 1;
      goto LABEL_26;
    }

    Backend::Google::ProtocolMessageReader::fieldType(v8, (a1 + 48));
    i = *(a1 + 48);
    *(a1 + 64) = i;
    *(a1 + 40) = i;
    if (!i)
    {
      goto LABEL_33;
    }

    if (*i)
    {
      break;
    }
  }

  *(a1 + 76) = 1;
  *(i + 16) = a1;
LABEL_29:
  v14 = *(a1 + 40);
LABEL_30:
  v15 = *v14;

  return v15();
}

void Backend::Google::ProtocolMessageReader::skipGroup(std::exception_ptr *__p)
{
  if (__p->__ptr_ && BYTE4(__p[9].__ptr_))
  {
    if (BYTE4(__p[9].__ptr_) == 1)
    {
      ptr = __p[8].__ptr_;
    }

    else
    {
      ptr = __p[6].__ptr_;
      if (!ptr)
      {
        goto LABEL_7;
      }
    }

    ptr[1]();
  }

LABEL_7:
  if (LODWORD(__p[3].__ptr_) == 2)
  {
    std::exception_ptr::~exception_ptr(__p + 4);
  }

  operator delete(__p);
}

void Backend::Google::ProtocolMessageReader::skipField(void *__p)
{
  if (*__p)
  {
    v2 = *(__p + 72) == 0;
  }

  else
  {
    v2 = 1;
  }

  if (!v2)
  {
    v3 = *(__p + 8);
    (*(*(__p + 8) + 8))();
  }

  if (*(__p + 6) == 2)
  {
    std::exception_ptr::~exception_ptr(__p + 4);
  }

  operator delete(__p);
}

uint64_t Backend::Google::ProtocolMessageReader::byteReader(uint64_t a1)
{
  if (*(a1 + 88))
  {
    v2 = *(a1 + 56);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_18:
    MEMORY[0xDEADDEAD] = 0;
    std::terminate();
  }

  Backend::Google::ProtocolMessageReader::byteReaderAndLength(*(a1 + 72), (a1 + 64));
  v2 = *(a1 + 64);
  *(a1 + 80) = v2;
  *(a1 + 56) = v2;
  if (!v2)
  {
    goto LABEL_18;
  }

  if (*v2)
  {
    *(a1 + 88) = 1;
    v2[2] = a1;
    v6 = *(a1 + 56);
    goto LABEL_15;
  }

LABEL_3:
  detail::lazy_promise<std::optional<std::pair<std::shared_ptr<ReadStream>,unsigned long>>>::result((v2 + 2));
  if (*(v3 + 24) != 1)
  {
    (*(*(a1 + 80) + 8))();
    *(a1 + 32) = 0;
    *(a1 + 48) = 0;
LABEL_13:
    *(a1 + 24) = 1;
    goto LABEL_14;
  }

  v5 = *v3;
  v4 = v3[1];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*(a1 + 80) + 8))();
  *(a1 + 32) = v5;
  *(a1 + 40) = v4;
  if (!v4)
  {
    *(a1 + 48) = 1;
    goto LABEL_13;
  }

  atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  *(a1 + 48) = 1;
  *(a1 + 24) = 1;
  std::__shared_weak_count::__release_shared[abi:sn200100](v4);
LABEL_14:
  *a1 = 0;
  v6 = *(a1 + 16);
LABEL_15:
  v7 = *v6;

  return v7();
}

void Backend::Google::ProtocolMessageReader::byteReader(_BYTE *a1)
{
  if (*a1)
  {
    v2 = a1[88] == 0;
  }

  else
  {
    v2 = 1;
  }

  if (!v2)
  {
    v3 = *(a1 + 10);
    (*(*(a1 + 10) + 8))();
  }

  detail::lazy_promise<std::optional<std::shared_ptr<ReadStream>>>::~lazy_promise((a1 + 16));

  operator delete(a1);
}

uint64_t Backend::Google::ProtocolMessageReader::readRepeatedPackedInt32(uint64_t a1)
{
  v4 = *(a1 + 168);
  if (v4 == 2)
  {
    v8 = *(a1 + 104);
    if (v8)
    {
      goto LABEL_20;
    }

LABEL_50:
    MEMORY[0xDEADDEAD] = 0;
    std::terminate();
  }

  if (v4 == 1)
  {
    v5 = *(a1 + 64);
    if (!v5)
    {
      goto LABEL_50;
    }
  }

  else
  {
    v9 = *(a1 + 120);
    if (*v9 != 3)
    {
      goto LABEL_15;
    }

    Backend::Google::ProtocolMessageReader::byteReader(v9, (a1 + 104));
    v5 = *(a1 + 104);
    *(a1 + 128) = v5;
    *(a1 + 64) = v5;
    if (!v5)
    {
      goto LABEL_50;
    }

    if (*v5)
    {
      *(a1 + 168) = 1;
      v5[2] = a1;
      v10 = *(a1 + 64);
      goto LABEL_46;
    }
  }

  detail::lazy_promise<std::optional<std::shared_ptr<ReadStream>>>::result((v5 + 2));
  if (*(v6 + 16) == 1)
  {
    *(a1 + 136) = *v6;
    v7 = *(v6 + 8);
    *(a1 + 144) = v7;
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    (*(*(a1 + 128) + 8))();
    *(a1 + 64) = 0;
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    while (1)
    {
      *(a1 + 169) = v1;
      *(a1 + 160) = v2;
      *(a1 + 164) = 1;
      v11 = *(a1 + 144);
      *(a1 + 88) = *(a1 + 136);
      *(a1 + 96) = v11;
      if (v11)
      {
        atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
      }

      Backend::Google::readVarint((a1 + 88), (a1 + 112));
      v8 = *(a1 + 112);
      *(a1 + 152) = v8;
      *(a1 + 104) = v8;
      if (!v8)
      {
        goto LABEL_50;
      }

      if (*v8)
      {
        *(a1 + 168) = 2;
        v8[2] = a1;
        v10 = *(a1 + 104);
        goto LABEL_46;
      }

LABEL_20:
      v12 = detail::lazy_promise<ReadResult<unsigned long long>>::result((v8 + 2));
      v1 = *v12;
      v2 = *v12 >> 8;
      v13 = *(v12 + 8);
      (*(*(a1 + 152) + 8))();
      v14 = *(a1 + 96);
      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v14);
      }

      if (v13 != 1)
      {
        break;
      }

      v15 = v1 | (v2 << 8);
      v17 = *(a1 + 72);
      v16 = *(a1 + 80);
      if (v17 >= v16)
      {
        v19 = *(a1 + 64);
        v20 = v17 - v19;
        v21 = ((v17 - v19) >> 2) + 1;
        if (v21 >> 62)
        {
          goto LABEL_52;
        }

        v22 = v16 - v19;
        v23 = v22 >> 1;
        if (v22 >> 1 <= v21)
        {
          v23 = v21;
        }

        if (v22 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v24 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v24 = v23;
        }

        if (!v24 || (v25 = std::allocator<Backend::Google::CompressionType>::allocate_at_least[abi:sn200100](a1 + 64, v24)) == 0)
        {
LABEL_49:
          __break(1u);
          goto LABEL_50;
        }

        v27 = &v20[v25];
        v28 = v25 + 4 * v26;
        v29 = *(a1 + 64);
        v30 = *(a1 + 72) - v29;
        v31 = &v20[v25 - v30];
        *v27 = v15;
        v18 = v27 + 1;
        memcpy(v31, v29, v30);
        v32 = *(a1 + 64);
        *(a1 + 64) = v31;
        *(a1 + 72) = v18;
        *(a1 + 80) = v28;
        if (v32)
        {
          operator delete(v32);
        }
      }

      else
      {
        if (!v17)
        {
          goto LABEL_49;
        }

        *v17 = v15;
        v18 = v17 + 1;
      }

      *(a1 + 72) = v18;
    }

    if (v13)
    {
      std::__throw_bad_variant_access[abi:sn200100]();
LABEL_52:
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    if (v1)
    {
      *(a1 + 32) = *(a1 + 64);
      *(a1 + 48) = *(a1 + 80);
      *(a1 + 56) = 1;
      *(a1 + 24) = 1;
    }

    else
    {
      *(a1 + 32) = 0;
      *(a1 + 56) = 0;
      *(a1 + 24) = 1;
      v33 = *(a1 + 64);
      if (v33)
      {
        *(a1 + 72) = v33;
        operator delete(v33);
      }
    }

    v34 = *(a1 + 144);
    if (v34)
    {
      std::__shared_weak_count::__release_shared[abi:sn200100](v34);
    }

    goto LABEL_45;
  }

  (*(*(a1 + 128) + 8))();
LABEL_15:
  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 24) = 1;
LABEL_45:
  *a1 = 0;
  v10 = *(a1 + 16);
LABEL_46:
  v35 = *v10;

  return v35();
}

void Backend::Google::ProtocolMessageReader::readRepeatedPackedInt32(void *a1)
{
  if (*a1 && *(a1 + 168))
  {
    if (*(a1 + 168) == 1)
    {
      v2 = *(a1 + 16);
      (*(*(a1 + 16) + 8))();
    }

    else
    {
      v3 = *(a1 + 19);
      (*(*(a1 + 19) + 8))();
      v4 = *(a1 + 12);
      if (v4)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v4);
      }

      v5 = *(a1 + 8);
      if (v5)
      {
        *(a1 + 9) = v5;
        operator delete(v5);
      }

      v6 = *(a1 + 18);
      if (v6)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v6);
      }
    }
  }

  detail::lazy_promise<std::optional<std::vector<unsigned int>>>::~lazy_promise(a1 + 16);

  operator delete(a1);
}

uint64_t Backend::Google::ProtocolMessageReader::readLengthDelimitedField(uint64_t a1)
{
  v3 = *(a1 + 152);
  if (v3 == 2)
  {
    v4 = *(a1 + 64);
    if (v4)
    {
      goto LABEL_20;
    }

LABEL_47:
    MEMORY[0xDEADDEAD] = 0;
    std::terminate();
  }

  if (v3 == 1)
  {
    v4 = *(a1 + 64);
    if (!v4)
    {
      goto LABEL_47;
    }
  }

  else
  {
    Backend::Google::ProtocolMessageReader::byteReaderAndLength(*(a1 + 80), (a1 + 72));
    v4 = *(a1 + 72);
    *(a1 + 88) = v4;
    *(a1 + 64) = v4;
    if (!v4)
    {
      goto LABEL_47;
    }

    if (*v4)
    {
      v5 = 1;
LABEL_17:
      *(a1 + 152) = v5;
      v4[2] = a1;
      v13 = *(a1 + 64);
      goto LABEL_42;
    }
  }

  detail::lazy_promise<std::optional<std::pair<std::shared_ptr<ReadStream>,unsigned long>>>::result((v4 + 2));
  if (*(v6 + 24) == 1)
  {
    *(a1 + 96) = *v6;
    v7 = *(v6 + 8);
    *(a1 + 104) = v7;
    if (v7)
    {
      atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
    }

    v8 = *(a1 + 88);
    v9 = *(v6 + 16);
    *(a1 + 112) = v9;
    (*(v8 + 8))(v8);
    if (v9)
    {
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v9 = 0;
      while (1)
      {
        *(a1 + 136) = v12;
        *(a1 + 144) = v9;
        *(a1 + 153) = v1;
        *(a1 + 120) = v10;
        *(a1 + 128) = v11;
        ReadStream::readByte(*(a1 + 96), (a1 + 72));
        v4 = *(a1 + 72);
        *(a1 + 64) = v4;
        if (!v4)
        {
          goto LABEL_47;
        }

        if (*v4)
        {
          break;
        }

LABEL_20:
        detail::lazy_promise<ReadResult<unsigned char>>::result((v4 + 2));
        v1 = *v14;
        v15 = *v14 & 0xFFFFFFFF00000000;
        v16 = *(a1 + 72);
        if (v16)
        {
          (*(v16 + 8))();
        }

        if (v15 != 0x100000000)
        {
          *(a1 + 32) = 0;
          *(a1 + 56) = 0;
          *(a1 + 24) = 1;
          v25 = *(a1 + 144);
          if (v25)
          {
            operator delete(v25);
          }

          goto LABEL_39;
        }

        v18 = *(a1 + 128);
        v17 = *(a1 + 136);
        if (v17 >= v18)
        {
          v20 = *(a1 + 144);
          v21 = v17 - v20;
          v22 = v17 - v20 + 1;
          if (v22 < 0)
          {
            std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
          }

          v23 = v18 - v20;
          if (2 * v23 > v22)
          {
            v22 = 2 * v23;
          }

          if (v23 >= 0x3FFFFFFFFFFFFFFFLL)
          {
            v24 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v24 = v22;
          }

          if (!v24)
          {
LABEL_46:
            __break(1u);
            goto LABEL_47;
          }

          v9 = operator new(v24);
          v19 = &v9[v21];
          v11 = &v9[v24];
          v9[v21] = v1;
          memcpy(v9, v20, v21);
          if (v20)
          {
            operator delete(v20);
          }
        }

        else
        {
          if (!v17)
          {
            goto LABEL_46;
          }

          *v17 = v1;
          v19 = *(a1 + 136);
          v9 = *(a1 + 144);
          v11 = *(a1 + 128);
        }

        v12 = v19 + 1;
        v10 = *(a1 + 120) + 1;
        if (v10 == *(a1 + 112))
        {
          goto LABEL_36;
        }
      }

      v5 = 2;
      goto LABEL_17;
    }

    v12 = 0;
    v11 = 0;
LABEL_36:
    *(a1 + 32) = v9;
    *(a1 + 40) = v12;
    *(a1 + 48) = v11;
    *(a1 + 56) = 1;
    *(a1 + 24) = 1;
LABEL_39:
    v26 = *(a1 + 104);
    if (v26)
    {
      std::__shared_weak_count::__release_shared[abi:sn200100](v26);
    }
  }

  else
  {
    (*(*(a1 + 88) + 8))();
    *(a1 + 32) = 0;
    *(a1 + 56) = 0;
    *(a1 + 24) = 1;
  }

  *a1 = 0;
  v13 = *(a1 + 16);
LABEL_42:
  v27 = *v13;

  return v27();
}

void Backend::Google::ProtocolMessageReader::readLengthDelimitedField(void *a1)
{
  if (*a1 && *(a1 + 152))
  {
    if (*(a1 + 152) == 1)
    {
      v2 = *(a1 + 11);
      (*(*(a1 + 11) + 8))();
    }

    else
    {
      v3 = *(a1 + 9);
      if (v3)
      {
        (*(v3 + 8))();
      }

      v4 = *(a1 + 18);
      if (v4)
      {
        operator delete(v4);
      }

      v5 = *(a1 + 13);
      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v5);
      }
    }
  }

  detail::lazy_promise<std::optional<std::vector<unsigned int>>>::~lazy_promise(a1 + 16);

  operator delete(a1);
}

uint64_t Backend::Google::ProtocolMessageReader::readVarintField(uint64_t a1, __n128 Varint)
{
  if (*(a1 + 96))
  {
    v3 = *(a1 + 64);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_18:
    MEMORY[0xDEADDEAD] = 0;
    std::terminate();
  }

  v9 = *(a1 + 80);
  if (*v9 != 1)
  {
LABEL_13:
    v8 = 0;
    *(a1 + 32) = 0;
    goto LABEL_14;
  }

  v11 = *(v9 + 8);
  v10 = *(v9 + 16);
  *(a1 + 48) = v11;
  *(a1 + 56) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  Varint = Backend::Google::readVarint((a1 + 48), (a1 + 72));
  v3 = *(a1 + 72);
  *(a1 + 88) = v3;
  *(a1 + 64) = v3;
  if (!v3)
  {
    goto LABEL_18;
  }

  if (*v3)
  {
    *(a1 + 96) = 1;
    v3[2] = a1;
    v12 = *(a1 + 64);
    goto LABEL_15;
  }

LABEL_3:
  v4 = detail::lazy_promise<ReadResult<unsigned long long>>::result((v3 + 2));
  v5 = *v4;
  v6 = *(v4 + 8);
  (*(*(a1 + 88) + 8))();
  v7 = *(a1 + 56);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v7);
  }

  if (v6 != 1)
  {
    goto LABEL_13;
  }

  **(a1 + 80) = 0;
  *(a1 + 32) = v5;
  v8 = 1;
LABEL_14:
  *(a1 + 40) = v8;
  *(a1 + 24) = 1;
  *a1 = 0;
  v12 = *(a1 + 16);
LABEL_15:
  v13 = *v12;

  return v13(Varint);
}

void Backend::Google::ProtocolMessageReader::readVarintField(void *__p)
{
  if (*__p)
  {
    v2 = *(__p + 96) == 0;
  }

  else
  {
    v2 = 1;
  }

  if (!v2)
  {
    v3 = *(__p + 11);
    (*(*(__p + 11) + 8))();
    v4 = *(__p + 7);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:sn200100](v4);
    }
  }

  if (*(__p + 6) == 2)
  {
    std::exception_ptr::~exception_ptr(__p + 4);
  }

  operator delete(__p);
}

uint64_t Backend::Google::ProtocolMessageReader::riceDecompressor(uint64_t a1)
{
  if (*(a1 + 120))
  {
    v2 = *(a1 + 80);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_17:
    MEMORY[0xDEADDEAD] = 0;
    std::terminate();
  }

  Backend::Google::ProtocolMessageReader::byteReader(*(a1 + 96), (a1 + 88));
  v2 = *(a1 + 88);
  *(a1 + 104) = v2;
  *(a1 + 80) = v2;
  if (!v2)
  {
    goto LABEL_17;
  }

  if (*v2)
  {
    *(a1 + 120) = 1;
    v2[2] = a1;
    v11 = *(a1 + 80);
    goto LABEL_14;
  }

LABEL_3:
  detail::lazy_promise<std::optional<std::shared_ptr<ReadStream>>>::result((v2 + 2));
  if (*(v3 + 16) == 1)
  {
    v4 = *(v3 + 8);
    *(a1 + 56) = *v3;
    *(a1 + 64) = v4;
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    }

    v5 = *(a1 + 104);
    *(a1 + 72) = 1;
    v6 = *(a1 + 112);
    (*(v5 + 8))();
    v7 = operator new(0x30uLL);
    v7->__shared_weak_owners_ = 0;
    v7->__shared_owners_ = 0;
    v7->__vftable = &unk_2838CD6D8;
    std::construct_at[abi:sn200100]<BitProvider,std::shared_ptr<ReadStream> &,BitProvider*>(&v7[1], (a1 + 56));
    v8 = operator new(0x30uLL);
    v8[1] = 0;
    v8[2] = 0;
    *v8 = &unk_2838CD668;
    v8[3] = vrev64_s32(v6);
    v8[4] = &v7[1];
    v8[5] = v7;
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    std::__shared_weak_count::__release_shared[abi:sn200100](v7);
    *(a1 + 32) = v8 + 3;
    *(a1 + 40) = v8;
    v9 = *(a1 + 72);
    *(a1 + 48) = 1;
    *(a1 + 24) = 1;
    if (v9)
    {
      v10 = *(a1 + 64);
      if (v10)
      {
        std::__shared_weak_count::__release_shared[abi:sn200100](v10);
      }
    }
  }

  else
  {
    (*(*(a1 + 104) + 8))();
    *(a1 + 32) = 0;
    *(a1 + 48) = 0;
    *(a1 + 24) = 1;
  }

  *a1 = 0;
  v11 = *(a1 + 16);
LABEL_14:
  v12 = *v11;

  return v12();
}

void Backend::Google::ProtocolMessageReader::riceDecompressor(_BYTE *a1)
{
  if (*a1)
  {
    v2 = a1[120] == 0;
  }

  else
  {
    v2 = 1;
  }

  if (!v2)
  {
    v3 = *(a1 + 13);
    (*(*(a1 + 13) + 8))();
  }

  detail::lazy_promise<std::optional<std::shared_ptr<ReadStream>>>::~lazy_promise((a1 + 16));

  operator delete(a1);
}

uint64_t Backend::Google::ProtocolMessageReader::readString(uint64_t a1)
{
  if (*(a1 + 96))
  {
    v2 = *(a1 + 64);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_18:
    MEMORY[0xDEADDEAD] = 0;
    std::terminate();
  }

  Backend::Google::ProtocolMessageReader::readLengthDelimitedField(*(a1 + 80), (a1 + 72));
  v2 = *(a1 + 72);
  *(a1 + 88) = v2;
  *(a1 + 64) = v2;
  if (!v2)
  {
    goto LABEL_18;
  }

  if (*v2)
  {
    *(a1 + 96) = 1;
    v2[2] = a1;
    v8 = *(a1 + 64);
    goto LABEL_15;
  }

LABEL_3:
  detail::lazy_promise<std::optional<std::vector<unsigned char>>>::result((v2 + 2));
  if (*(v3 + 24) == 1)
  {
    v5 = *v3;
    v4 = *(v3 + 8);
    v6 = (v4 - *v3);
    if (v4 == *v3)
    {
      v7 = 0;
    }

    else
    {
      if (v4 - *v3 < 0)
      {
        std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
      }

      v7 = operator new(v4 - *v3);
      memmove(v7, v5, v6);
      v6 = &v6[v7];
    }

    (*(*(a1 + 88) + 8))();
    std::string::__init_with_size[abi:sn200100]<std::__wrap_iter<unsigned char *>,std::__wrap_iter<unsigned char *>>(&v11, v7, v6, v6 - v7);
    *(a1 + 32) = v11;
    *(a1 + 48) = v12;
    *(a1 + 56) = 1;
    *(a1 + 24) = 1;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    (*(*(a1 + 88) + 8))();
    *(a1 + 32) = 0;
    *(a1 + 56) = 0;
    *(a1 + 24) = 1;
  }

  *a1 = 0;
  v8 = *(a1 + 16);
LABEL_15:
  v9 = *v8;

  return v9();
}

void Backend::Google::ProtocolMessageReader::readString(_BYTE *a1)
{
  if (*a1)
  {
    v2 = a1[96] == 0;
  }

  else
  {
    v2 = 1;
  }

  if (!v2)
  {
    v3 = *(a1 + 11);
    (*(*(a1 + 11) + 8))();
  }

  detail::lazy_promise<std::optional<std::string>>::~lazy_promise((a1 + 16));

  operator delete(a1);
}

void *Backend::Google::ProtocolMessageWriter::ProtocolMessageWriter(void *this)
{
  *this = 0;
  this[1] = 0;
  this[2] = 0;
  return this;
}

void Backend::Google::ProtocolMessageWriter::writeUInt32Field(Backend::Google::ProtocolMessageWriter *this, int a2, unsigned int a3)
{
  v6 = Backend::Google::ProtocolBuffers::wireType(0);
  Backend::Google::ProtocolMessageWriter::writeVarint(this, v6 | (8 * a2));

  Backend::Google::ProtocolMessageWriter::writeVarint(this, a3);
}

void Backend::Google::ProtocolMessageWriter::writeTag(Backend::Google::ProtocolMessageWriter *a1, int a2, int a3)
{
  v4 = Backend::Google::ProtocolBuffers::wireType(a3) | (8 * a2);

  Backend::Google::ProtocolMessageWriter::writeVarint(a1, v4);
}

void Backend::Google::ProtocolMessageWriter::writeVarint(Backend::Google::ProtocolMessageWriter *this, unsigned int a2)
{
  v2 = a2;
  if (a2 >= 0x80)
  {
    do
    {
      v7 = v2 | 0x80;
      std::vector<unsigned char>::push_back[abi:sn200100](this, &v7);
      v4 = v2 >> 7;
      v5 = v2 >> 14;
      v2 >>= 7;
    }

    while (v5);
  }

  else
  {
    LOBYTE(v4) = a2;
  }

  v6 = v4;
  std::vector<unsigned char>::push_back[abi:sn200100](this, &v6);
}

void Backend::Google::ProtocolMessageWriter::writeUInt64Field(Backend::Google::ProtocolMessageWriter *this, int a2, unint64_t a3)
{
  v6 = Backend::Google::ProtocolBuffers::wireType(0);
  Backend::Google::ProtocolMessageWriter::writeVarint(this, v6 | (8 * a2));

  Backend::Google::ProtocolMessageWriter::writeVarint(this, a3);
}

void Backend::Google::ProtocolMessageWriter::writeVarint(Backend::Google::ProtocolMessageWriter *this, unint64_t a2)
{
  v2 = a2;
  if (a2 >= 0x80)
  {
    do
    {
      v7 = v2 | 0x80;
      std::vector<unsigned char>::push_back[abi:sn200100](this, &v7);
      v4 = v2 >> 7;
      v5 = v2 >> 14;
      v2 >>= 7;
    }

    while (v5);
  }

  else
  {
    LOBYTE(v4) = a2;
  }

  v6 = v4;
  std::vector<unsigned char>::push_back[abi:sn200100](this, &v6);
}

char *Backend::Google::ProtocolMessageWriter::writeBytes(char **this, int a2, char *a3, char *a4)
{
  v8 = Backend::Google::ProtocolBuffers::wireType(1);
  Backend::Google::ProtocolMessageWriter::writeVarint(this, v8 | (8 * a2));
  Backend::Google::ProtocolMessageWriter::writeVarint(this, a4 - a3);
  v9 = this[1];

  return std::vector<unsigned char>::__insert_with_size[abi:sn200100]<unsigned char const*,unsigned char const*>(this, v9, a3, a4, a4 - a3);
}

char *Backend::Google::ProtocolMessageWriter::writeStringField(Backend::Google::ProtocolMessageWriter *a1, int a2, uint64_t a3)
{
  v6 = Backend::Google::ProtocolBuffers::wireType(1);
  Backend::Google::ProtocolMessageWriter::writeVarint(a1, v6 | (8 * a2));
  if (*(a3 + 23) >= 0)
  {
    v7 = *(a3 + 23);
  }

  else
  {
    v7 = *(a3 + 8);
  }

  Backend::Google::ProtocolMessageWriter::writeVarint(a1, v7);
  v8 = *(a1 + 1);
  v9 = *(a3 + 23);
  if (v9 >= 0)
  {
    v10 = a3;
  }

  else
  {
    v10 = *a3;
  }

  if (v9 >= 0)
  {
    v11 = *(a3 + 23);
  }

  else
  {
    v11 = *(a3 + 8);
  }

  return std::vector<unsigned char>::__insert_with_size[abi:sn200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(a1, v8, v10, &v10[v11], v11);
}

double Backend::Google::ProtocolMessageWriter::writeEmbeddedMessageField(char **a1, int a2, uint64_t a3)
{
  __p = 0;
  v13 = 0;
  v14 = 0;
  v4 = *(a3 + 24);
  if (v4)
  {
    (*(*v4 + 48))(v4, &__p);
    v6 = __p;
    v7 = v13;
    v13 = 0;
    v14 = 0;
    __p = 0;
    v8 = Backend::Google::ProtocolBuffers::wireType(1);
    Backend::Google::ProtocolMessageWriter::writeVarint(a1, v8 | (8 * a2));
    Backend::Google::ProtocolMessageWriter::writeVarint(a1, v7 - v6);
    std::vector<unsigned char>::__insert_with_size[abi:sn200100]<std::__wrap_iter<unsigned char *>,std::__wrap_iter<unsigned char *>>(a1, a1[1], v6, v7, v7 - v6);
    if (v6)
    {
      operator delete(v6);
    }

    if (__p)
    {
      v13 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v10 = std::__throw_bad_function_call[abi:sn200100]();
    *&result = Backend::Google::ProtocolMessageWriter::finish(v10, v11).n128_u64[0];
  }

  return result;
}

__n128 Backend::Google::ProtocolMessageWriter::finish@<Q0>(Backend::Google::ProtocolMessageWriter *this@<X0>, uint64_t a2@<X8>)
{
  result = *this;
  *a2 = *this;
  *(a2 + 16) = *(this + 2);
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = 0;
  return result;
}

char *std::vector<unsigned char>::__insert_with_size[abi:sn200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v6 = a5;
  v7 = __src;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (v9 - v10 < a5)
  {
    v11 = *a1;
    v12 = &v10[a5 - *a1];
    if (v12 < 0)
    {
      goto LABEL_37;
    }

    v13 = (__dst - v11);
    v14 = v9 - v11;
    if (2 * v14 > v12)
    {
      v12 = 2 * v14;
    }

    if (v14 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v15 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    if (v15)
    {
      v16 = operator new(v15);
    }

    else
    {
      v16 = 0;
    }

    v33 = &v13[v16];
    v34 = v16 + v15;
    v35 = &v33[v6];
    v36 = v33;
    do
    {
      if (!v36)
      {
        goto LABEL_36;
      }

      v37 = *v7++;
      *v36++ = v37;
      --v6;
    }

    while (v6);
    memcpy(v35, v5, v10 - v5);
    *(a1 + 8) = v5;
    v38 = *a1;
    v39 = &v33[*a1 - v5];
    memcpy(v39, *a1, &v5[-*a1]);
    *a1 = v39;
    *(a1 + 8) = &v35[v10 - v5];
    *(a1 + 16) = v34;
    if (v38)
    {
      operator delete(v38);
    }

    return v33;
  }

  v17 = v10 - __dst;
  if (v10 - __dst >= a5)
  {
    v22 = &__dst[a5];
    v23 = &v10[-a5];
    v24 = *(a1 + 8);
    if (v10 >= a5)
    {
      do
      {
        v25 = *v23++;
        *v24++ = v25;
      }

      while (v23 != v10);
    }

    *(a1 + 8) = v24;
    if (v10 != v22)
    {
      memmove(&__dst[a5], __dst, v10 - v22);
    }

    v26 = v5;
    v27 = v7;
    v28 = v6;
    goto LABEL_27;
  }

  v18 = &__src[v17];
  v19 = *(a1 + 8);
  v20 = v19;
  while (v18 != a4)
  {
    if (!v20)
    {
LABEL_36:
      __break(1u);
LABEL_37:
      std::vector<unsigned char>::__throw_length_error[abi:sn200100]();
    }

    v21 = *v18++;
    *v20++ = v21;
    ++v19;
  }

  *(a1 + 8) = v19;
  if (v17 >= 1)
  {
    v29 = &__dst[a5];
    v30 = &v19[-a5];
    v31 = v19;
    if (&v19[-a5] < v10)
    {
      do
      {
        v32 = *v30++;
        *v31++ = v32;
      }

      while (v30 != v10);
    }

    *(a1 + 8) = v31;
    if (v20 != v29)
    {
      memmove(&__dst[a5], __dst, v19 - v29);
    }

    v26 = v5;
    v27 = v7;
    v28 = v10 - v5;
LABEL_27:
    memmove(v26, v27, v28);
  }

  return v5;
}

void sub_2256398DC(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

id configurationBaseURL(void)
{
  v0 = [MEMORY[0x277CBEBC0] URLWithString:@"https://configuration.apple.com/configurations/internetservices/safari/"];
  if (Backend::Google::SSBUtilities::isInternalInstall(v0))
  {
    v1 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v2 = [v1 BOOLForKey:@"DebugSafeBrowsingShouldUseTestConfigurationURL"];

    if (v2)
    {
      v3 = [MEMORY[0x277CBEBC0] URLWithString:@"https://test-safari.apple.com/safebrowsing/"];

      v0 = v3;
    }
  }

  return v0;
}

void sub_225639F54(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_22563A190(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_22563A280(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

void sub_22563AA64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  v16 = v14;

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id mergeConfigurationArrayIfBothNotNil(NSArray *a1, NSArray *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  v6 = 0;
  if (v3 && v4)
  {
    v6 = mergeConfigurationArray(v3, v4);
  }

  return v6;
}

id mergeConfigurationArray(NSArray *a1, NSArray *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  [v5 addObjectsFromArray:v3];
  [v5 addObjectsFromArray:v4];
  v6 = [v5 allObjects];
  v7 = [v6 sortedArrayUsingSelector:sel_compare_];

  return v7;
}

void sub_22563AF50(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

double SafeBrowsing::SafeHashCache::SafeHashCache(SafeBrowsing::SafeHashCache *this, uint64_t a2)
{
  *this = a2;
  *(this + 1) = 850045863;
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 8) = 0;
  *(this + 9) = this + 72;
  *(this + 10) = this + 72;
  *(this + 11) = 0;
  *(this + 14) = 0;
  *(this + 13) = 0;
  *(this + 12) = this + 104;
  return result;
}

void SafeBrowsing::SafeHashCache::~SafeHashCache(SafeBrowsing::SafeHashCache *this)
{
  std::__tree<Backend::Google::HashView>::destroy(this + 96, *(this + 13));
  std::__list_imp<std::array<unsigned char,32ul>>::clear(this + 9);
  std::mutex::~mutex((this + 8));
}

void SafeBrowsing::SafeHashCache::add(uint64_t a1, __int128 *a2)
{
  std::mutex::lock((a1 + 8));
  SafeBrowsing::SafeHashCache::addUnlocked(a1, a2);

  std::mutex::unlock((a1 + 8));
}

void SafeBrowsing::SafeHashCache::addUnlocked(uint64_t a1, __int128 *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a2[1];
  v20 = *a2;
  v21 = v4;
  v22 = 0;
  v5 = std::__tree<std::__value_type<std::array<unsigned char,32ul>,std::__list_iterator<std::array<unsigned char,32ul>,void *>>,std::__map_value_compare<std::array<unsigned char,32ul>,std::__value_type<std::array<unsigned char,32ul>,std::__list_iterator<std::array<unsigned char,32ul>,void *>>,std::less<std::array<unsigned char,32ul>>,true>,std::allocator<std::__value_type<std::array<unsigned char,32ul>,std::__list_iterator<std::array<unsigned char,32ul>,void *>>>>::__emplace_unique_key_args<std::array<unsigned char,32ul>,std::pair<std::array<unsigned char,32ul> const,std::__list_iterator<std::array<unsigned char,32ul>,void *>>>((a1 + 96), &v20, &v20);
  v6 = v5;
  if (v7)
  {
    v8 = operator new(0x30uLL);
    v9 = a1 + 72;
    v10 = a2[1];
    v8[1] = *a2;
    v8[2] = v10;
    v11 = *(a1 + 80);
    *v8 = a1 + 72;
    *(v8 + 1) = v11;
    *v11 = v8;
    v12 = *(a1 + 88) + 1;
    *(a1 + 80) = v8;
    *(a1 + 88) = v12;
    *(v6 + 8) = v8;
    if (*(a1 + 112) > *a1)
    {
      if (!v12)
      {
        __break(1u);
      }

      v13 = *(*v9 + 32);
      v20 = *(*v9 + 16);
      v21 = v13;
      std::__tree<std::__value_type<std::array<unsigned char,32ul>,std::__list_iterator<std::array<unsigned char,32ul>,void *>>,std::__map_value_compare<std::array<unsigned char,32ul>,std::__value_type<std::array<unsigned char,32ul>,std::__list_iterator<std::array<unsigned char,32ul>,void *>>,std::less<std::array<unsigned char,32ul>>,true>,std::allocator<std::__value_type<std::array<unsigned char,32ul>,std::__list_iterator<std::array<unsigned char,32ul>,void *>>>>::__erase_unique<std::array<unsigned char,32ul>>((a1 + 96), &v20);
      std::list<std::array<unsigned char,32ul>>::pop_back((a1 + 72));
    }
  }

  else
  {
    v14 = *(a1 + 80);
    v15 = *(v5 + 8);
    if (v14 != v15)
    {
      v16 = v15[1];
      if (v16 != v14)
      {
        v17 = *v15;
        *(v17 + 8) = v16;
        *v16 = v17;
        v18 = *v14;
        *(v18 + 8) = v15;
        *v15 = v18;
        *v14 = v15;
        v15[1] = v14;
        v14 = *(a1 + 80);
      }
    }

    *(v5 + 8) = v14;
  }

  v19 = *MEMORY[0x277D85DE8];
}

void SafeBrowsing::SafeHashCache::add(uint64_t a1, __int128 **a2)
{
  std::mutex::lock((a1 + 8));
  v4 = *a2;
  v5 = a2[1];
  while (v4 != v5)
  {
    SafeBrowsing::SafeHashCache::addUnlocked(a1, v4);
    v4 += 2;
  }

  std::mutex::unlock((a1 + 8));
}

BOOL SafeBrowsing::SafeHashCache::contains(uint64_t a1, unsigned __int8 *a2)
{
  std::mutex::lock((a1 + 8));
  v4 = std::__tree<std::__value_type<std::array<unsigned char,32ul>,std::__list_iterator<std::array<unsigned char,32ul>,void *>>,std::__map_value_compare<std::array<unsigned char,32ul>,std::__value_type<std::array<unsigned char,32ul>,std::__list_iterator<std::array<unsigned char,32ul>,void *>>,std::less<std::array<unsigned char,32ul>>,true>,std::allocator<std::__value_type<std::array<unsigned char,32ul>,std::__list_iterator<std::array<unsigned char,32ul>,void *>>>>::__count_unique<std::array<unsigned char,32ul>>(a1 + 96, a2) != 0;
  std::mutex::unlock((a1 + 8));
  return v4;
}

BOOL SafeBrowsing::SafeHashCache::containsAll(uint64_t a1, unsigned __int8 **a2)
{
  std::mutex::lock((a1 + 8));
  v4 = *a2;
  v5 = a2[1];
  if (*a2 == v5)
  {
    v7 = 1;
  }

  else
  {
    do
    {
      v6 = std::__tree<std::__value_type<std::array<unsigned char,32ul>,std::__list_iterator<std::array<unsigned char,32ul>,void *>>,std::__map_value_compare<std::array<unsigned char,32ul>,std::__value_type<std::array<unsigned char,32ul>,std::__list_iterator<std::array<unsigned char,32ul>,void *>>,std::less<std::array<unsigned char,32ul>>,true>,std::allocator<std::__value_type<std::array<unsigned char,32ul>,std::__list_iterator<std::array<unsigned char,32ul>,void *>>>>::__count_unique<std::array<unsigned char,32ul>>(a1 + 96, v4);
      v7 = v6 != 0;
      if (!v6)
      {
        break;
      }

      v4 += 32;
    }

    while (v4 != v5);
  }

  std::mutex::unlock((a1 + 8));
  return v7;
}

void SafeBrowsing::SafeHashCache::empty(SafeBrowsing::SafeHashCache *this)
{
  std::mutex::lock((this + 8));
  std::__list_imp<std::array<unsigned char,32ul>>::clear(this + 9);
  std::__tree<Backend::Google::HashView>::destroy(this + 96, *(this + 13));
  *(this + 13) = 0;
  *(this + 14) = 0;
  *(this + 12) = this + 104;

  std::mutex::unlock((this + 8));
}

void std::list<std::array<unsigned char,32ul>>::pop_back(uint64_t **a1)
{
  v1 = a1[2];
  if (v1)
  {
    v2 = *a1;
    v4 = **a1;
    v3 = (*a1)[1];
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = (v1 - 1);
    operator delete(v2);
  }

  else
  {
    __break(1u);
  }
}

void *std::__list_imp<std::array<unsigned char,32ul>>::clear(void *result)
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

_OWORD *std::__tree<std::__value_type<std::array<unsigned char,32ul>,std::__list_iterator<std::array<unsigned char,32ul>,void *>>,std::__map_value_compare<std::array<unsigned char,32ul>,std::__value_type<std::array<unsigned char,32ul>,std::__list_iterator<std::array<unsigned char,32ul>,void *>>,std::less<std::array<unsigned char,32ul>>,true>,std::allocator<std::__value_type<std::array<unsigned char,32ul>,std::__list_iterator<std::array<unsigned char,32ul>,void *>>>>::__emplace_unique_key_args<std::array<unsigned char,32ul>,std::pair<std::array<unsigned char,32ul> const,std::__list_iterator<std::array<unsigned char,32ul>,void *>>>(uint64_t **a1, unsigned __int8 *a2, uint64_t a3)
{
  v5 = std::__tree<std::__value_type<std::array<unsigned char,32ul>,std::__list_iterator<std::array<unsigned char,32ul>,void *>>,std::__map_value_compare<std::array<unsigned char,32ul>,std::__value_type<std::array<unsigned char,32ul>,std::__list_iterator<std::array<unsigned char,32ul>,void *>>,std::less<std::array<unsigned char,32ul>>,true>,std::allocator<std::__value_type<std::array<unsigned char,32ul>,std::__list_iterator<std::array<unsigned char,32ul>,void *>>>>::__find_equal<std::array<unsigned char,32ul>>(a1, &v10, a2);
  v6 = *v5;
  if (!*v5)
  {
    v7 = v5;
    v6 = operator new(0x48uLL);
    v8 = *(a3 + 16);
    v6[2] = *a3;
    v6[3] = v8;
    *(v6 + 8) = *(a3 + 32);
    std::__tree<Backend::Google::HashView>::__insert_node_at(a1, v10, v7, v6);
  }

  return v6;
}

void *std::__tree<std::__value_type<std::array<unsigned char,32ul>,std::__list_iterator<std::array<unsigned char,32ul>,void *>>,std::__map_value_compare<std::array<unsigned char,32ul>,std::__value_type<std::array<unsigned char,32ul>,std::__list_iterator<std::array<unsigned char,32ul>,void *>>,std::less<std::array<unsigned char,32ul>>,true>,std::allocator<std::__value_type<std::array<unsigned char,32ul>,std::__list_iterator<std::array<unsigned char,32ul>,void *>>>>::__find_equal<std::array<unsigned char,32ul>>(uint64_t a1, void *a2, unsigned __int8 *a3)
{
  v5 = *(a1 + 8);
  result = (a1 + 8);
  v4 = v5;
  if (v5)
  {
    while (2)
    {
      while (2)
      {
        v6 = v4;
        v7 = 32;
        v8 = a3;
        while (1)
        {
          v9 = *v8;
          v10 = *(v6 + v7);
          if (v9 != v10)
          {
            break;
          }

          ++v8;
          if (++v7 == 64)
          {
            goto LABEL_9;
          }
        }

        if (v9 < v10)
        {
          v4 = *v6;
          result = v6;
          if (*v6)
          {
            continue;
          }

          goto LABEL_17;
        }

        break;
      }

LABEL_9:
      v11 = 0;
      while (1)
      {
        v12 = *(v6 + v11 + 32);
        v13 = a3[v11];
        if (v12 != v13)
        {
          break;
        }

        if (++v11 == 32)
        {
          goto LABEL_17;
        }
      }

      if (v12 < v13)
      {
        result = v6 + 1;
        v4 = v6[1];
        if (v4)
        {
          continue;
        }
      }

      break;
    }
  }

  else
  {
    v6 = result;
  }

LABEL_17:
  *a2 = v6;
  return result;
}

uint64_t std::__tree<std::__value_type<std::array<unsigned char,32ul>,std::__list_iterator<std::array<unsigned char,32ul>,void *>>,std::__map_value_compare<std::array<unsigned char,32ul>,std::__value_type<std::array<unsigned char,32ul>,std::__list_iterator<std::array<unsigned char,32ul>,void *>>,std::less<std::array<unsigned char,32ul>>,true>,std::allocator<std::__value_type<std::array<unsigned char,32ul>,std::__list_iterator<std::array<unsigned char,32ul>,void *>>>>::__erase_unique<std::array<unsigned char,32ul>>(uint64_t **a1, unsigned __int8 *a2)
{
  v3 = std::__tree<std::__value_type<std::array<unsigned char,32ul>,std::__list_iterator<std::array<unsigned char,32ul>,void *>>,std::__map_value_compare<std::array<unsigned char,32ul>,std::__value_type<std::array<unsigned char,32ul>,std::__list_iterator<std::array<unsigned char,32ul>,void *>>,std::less<std::array<unsigned char,32ul>>,true>,std::allocator<std::__value_type<std::array<unsigned char,32ul>,std::__list_iterator<std::array<unsigned char,32ul>,void *>>>>::find<std::array<unsigned char,32ul>>(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  v4 = v3;
  std::__tree<std::__value_type<Backend::Google::Hash,Backend::Google::FullHashCache::Value>,std::__map_value_compare<Backend::Google::Hash,std::__value_type<Backend::Google::Hash,Backend::Google::FullHashCache::Value>,std::less<Backend::Google::Hash>,true>,std::allocator<std::__value_type<Backend::Google::Hash,Backend::Google::FullHashCache::Value>>>::__remove_node_pointer(a1, v3);
  operator delete(v4);
  return 1;
}

void *std::__tree<std::__value_type<std::array<unsigned char,32ul>,std::__list_iterator<std::array<unsigned char,32ul>,void *>>,std::__map_value_compare<std::array<unsigned char,32ul>,std::__value_type<std::array<unsigned char,32ul>,std::__list_iterator<std::array<unsigned char,32ul>,void *>>,std::less<std::array<unsigned char,32ul>>,true>,std::allocator<std::__value_type<std::array<unsigned char,32ul>,std::__list_iterator<std::array<unsigned char,32ul>,void *>>>>::find<std::array<unsigned char,32ul>>(uint64_t a1, unsigned __int8 *a2)
{
  v4 = *(a1 + 8);
  v2 = (a1 + 8);
  v3 = v4;
  if (!v4)
  {
    return v2;
  }

  v5 = v2;
  do
  {
    v6 = 0;
    while (1)
    {
      v7 = *(v3 + v6 + 32);
      v8 = a2[v6];
      if (v7 != v8)
      {
        break;
      }

      if (++v6 == 32)
      {
        v5 = v3;
        goto LABEL_10;
      }
    }

    if (v7 >= v8)
    {
      v5 = v3;
    }

    v3 += v7 < v8;
LABEL_10:
    v3 = *v3;
  }

  while (v3);
  if (v5 == v2)
  {
    return v2;
  }

  for (i = 32; i != 64; ++i)
  {
    v10 = *a2;
    v11 = *(v5 + i);
    if (v10 != v11)
    {
      break;
    }

    ++a2;
  }

  if (v10 < v11)
  {
    return v2;
  }

  return v5;
}

uint64_t std::__tree<std::__value_type<std::array<unsigned char,32ul>,std::__list_iterator<std::array<unsigned char,32ul>,void *>>,std::__map_value_compare<std::array<unsigned char,32ul>,std::__value_type<std::array<unsigned char,32ul>,std::__list_iterator<std::array<unsigned char,32ul>,void *>>,std::less<std::array<unsigned char,32ul>>,true>,std::allocator<std::__value_type<std::array<unsigned char,32ul>,std::__list_iterator<std::array<unsigned char,32ul>,void *>>>>::__count_unique<std::array<unsigned char,32ul>>(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    result = 1;
    while (2)
    {
      v4 = 32;
      v5 = a2;
      while (1)
      {
        v6 = *v5;
        v7 = *(v2 + v4);
        if (v6 != v7)
        {
          break;
        }

        ++v5;
        if (++v4 == 64)
        {
          goto LABEL_8;
        }
      }

      if (v6 < v7)
      {
        goto LABEL_14;
      }

LABEL_8:
      v8 = 0;
      while (1)
      {
        v9 = *(v2 + v8 + 32);
        v10 = a2[v8];
        if (v9 != v10)
        {
          break;
        }

        if (++v8 == 32)
        {
          return result;
        }
      }

      if (v9 >= v10)
      {
        return result;
      }

      ++v2;
LABEL_14:
      v2 = *v2;
      if (v2)
      {
        continue;
      }

      break;
    }
  }

  return 0;
}

SafeBrowsing::Service *SafeBrowsing::Service::Service(SafeBrowsing::Service *this)
{
  *this = &unk_2838CDD30;
  *(this + 1) = dispatch_queue_create("com.apple.Safari.SafeBrowsing.Service", 0);
  *(this + 2) = dispatch_group_create();
  std::string::basic_string[abi:sn200100]<0>(v11, "Safari");
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 objectForInfoDictionaryKey:*MEMORY[0x277CBED58]];
  std::string::basic_string[abi:sn200100]<0>(__p, [v3 UTF8String]);

  Backend::Google::Configuration::Configuration(this + 24, v11, __p);
  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  if (v12 < 0)
  {
    operator delete(v11[0]);
  }

  *(this + 15) = 0;
  *(this + 17) = 0;
  *(this + 16) = this + 136;
  *(this + 18) = 0;
  *(this + 184) = 0u;
  *(this + 18) = 0u;
  *(this + 19) = 0u;
  *(this + 20) = 0u;
  *(this + 21) = 0u;
  *(this + 22) = 0u;
  *(this + 23) = 0u;
  *(this + 392) = 0u;
  *(this + 408) = 0u;
  *(this + 424) = 0u;
  *(this + 440) = 0u;
  *(this + 456) = 0u;
  *(this + 472) = 0u;
  *(this + 248) = 0u;
  *(this + 232) = 0u;
  *(this + 216) = 0u;
  *(this + 200) = 0u;
  *(this + 168) = 0u;
  *(this + 152) = 0u;
  *(this + 264) = 0u;
  *(this + 67) = 0;
  *(this + 504) = 0u;
  *(this + 520) = 0u;
  SafeBrowsing::Service::initialize(this);
  if (SafeBrowsing::Service::isEnabled(v4))
  {
    v6 = *(this + 1);
    v5 = *(this + 2);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = ___ZN12SafeBrowsing7ServiceC2Ev_block_invoke;
    v8[3] = &__block_descriptor_40_e5_v8__0l;
    v8[4] = this;
    dispatch_group_notify(v5, v6, v8);
  }

  return this;
}

void sub_22563B880(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  _Unwind_Resume(a1);
}

void SafeBrowsing::Service::initialize(SafeBrowsing::Service *this)
{
  *&v27 = *MEMORY[0x277D85DE8];
  SafeBrowsing::Service::databaseBaseDirectory(v20);
  v2 = v22;
  if (v22 != 1)
  {
    goto LABEL_23;
  }

  std::string::basic_string[abi:sn200100]<0>(&block.__r_.__value_.__l.__data_, "Google");
  Platform::stringByAppendingPathComponent(v20, &block, &v19);
  if (SHIBYTE(block.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(block.__r_.__value_.__l.__data_);
  }

  std::string::basic_string[abi:sn200100]<0>(&block.__r_.__value_.__l.__data_, "goog-malware-shavar");
  std::string::basic_string[abi:sn200100]<0>(v25, "goog-phish-shavar");
  std::string::basic_string[abi:sn200100]<0>(v26, "goog-unwanted-shavar");
  memset(&__p, 0, sizeof(__p));
  std::vector<std::string>::__init_with_size[abi:sn200100]<std::string const*,std::string const*>(&__p, &block, &v27, 3uLL);
  SafeBrowsing::Service::initializeDatabaseManager(this, &v19, &__p, 0x100000001uLL);
  p_p = &__p;
  std::vector<std::string>::__destroy_vector::operator()[abi:sn200100](&p_p);
  for (i = 0; i != -9; i -= 3)
  {
    if (SHIBYTE(v26[i + 2]) < 0)
    {
      operator delete(v26[i]);
    }
  }

  v4 = *(this + 1);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3321888768;
  handler[2] = ___ZN12SafeBrowsing7Service10initializeEv_block_invoke;
  handler[3] = &__block_descriptor_40_ea8_32c48_ZTSKZN12SafeBrowsing7Service10initializeEvE3__0_e8_v12__0i8l;
  handler[4] = this;
  v5 = notify_register_dispatch("com.apple.Safari.SafeBrowsing.GoogleRemoteConfigurationDidChange", this + 70, v4, handler);
  shouldConsultWithTencent = Backend::Google::SSBUtilities::shouldConsultWithTencent(v5);
  if (shouldConsultWithTencent)
  {
    if ((v22 & 1) == 0)
    {
      goto LABEL_27;
    }

    std::string::basic_string[abi:sn200100]<0>(&__p.__r_.__value_.__l.__data_, "Tencent");
    Platform::stringByAppendingPathComponent(v20, &__p, &block);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    memset(&__p, 0, sizeof(__p));
    SafeBrowsing::Service::initializeDatabaseManager(this, &block, &__p, 0x200000001uLL);
    p_p = &__p;
    std::vector<std::string>::__destroy_vector::operator()[abi:sn200100](&p_p);
    v7 = *(this + 1);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3321888768;
    v16[2] = ___ZN12SafeBrowsing7Service10initializeEv_block_invoke_23;
    v16[3] = &__block_descriptor_40_ea8_32c48_ZTSKZN12SafeBrowsing7Service10initializeEvE3__1_e8_v12__0i8l;
    v16[4] = this;
    shouldConsultWithTencent = notify_register_dispatch("com.apple.Safari.SafeBrowsing.TencentRemoteConfigurationDidChange", this + 96, v7, v16);
    if (SHIBYTE(block.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(block.__r_.__value_.__l.__data_);
    }
  }

  if (Backend::Google::SSBUtilities::shouldConsultWithApple(shouldConsultWithTencent))
  {
    if (v22)
    {
      std::string::basic_string[abi:sn200100]<0>(&__p.__r_.__value_.__l.__data_, "Apple");
      Platform::stringByAppendingPathComponent(v20, &__p, &block);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      memset(&__p, 0, sizeof(__p));
      SafeBrowsing::Service::initializeDatabaseManager(this, &block, &__p, 0x300000001uLL);
      p_p = &__p;
      std::vector<std::string>::__destroy_vector::operator()[abi:sn200100](&p_p);
      v8 = *(this + 1);
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3321888768;
      v15[2] = ___ZN12SafeBrowsing7Service10initializeEv_block_invoke_28;
      v15[3] = &__block_descriptor_40_ea8_32c48_ZTSKZN12SafeBrowsing7Service10initializeEvE3__2_e8_v12__0i8l;
      v15[4] = this;
      notify_register_dispatch("com.apple.Safari.SafeBrowsing.AppleRemoteConfigurationDidChange", this + 122, v8, v15);
      if (SHIBYTE(block.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(block.__r_.__value_.__l.__data_);
      }

      goto LABEL_20;
    }

LABEL_27:
    __break(1u);
  }

LABEL_20:
  v9 = *(this + 1);
  block.__r_.__value_.__r.__words[0] = MEMORY[0x277D85DD0];
  block.__r_.__value_.__l.__size_ = 3321888768;
  block.__r_.__value_.__r.__words[2] = ___ZN12SafeBrowsing7Service41registerDatabaseLoadingDispatchGroupBlockEv_block_invoke;
  v25[0] = &__block_descriptor_40_ea8_32c79_ZTSKZN12SafeBrowsing7Service41registerDatabaseLoadingDispatchGroupBlockEvE3__0_e5_v8__0l;
  v25[1] = this;
  dispatch_async(v9, &block);
  v10 = *(this + 1);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3321888768;
  v14[2] = ___ZN12SafeBrowsing7Service10initializeEv_block_invoke_32;
  v14[3] = &__block_descriptor_40_ea8_32c48_ZTSKZN12SafeBrowsing7Service10initializeEvE3__3_e8_v12__0i8l;
  v14[4] = this;
  notify_register_dispatch("com.apple.Safari.SafeBrowsing.RegionCodeDidChange", this + 124, v10, v14);
  v11 = objc_alloc_init(SSBDatabaseUpdateSupport);
  v12 = *(this + 19);
  *(this + 19) = v11;

  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  v2 = v22;
LABEL_23:
  if ((v2 & 1) != 0 && v21 < 0)
  {
    operator delete(v20[0]);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void sub_22563BD94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *__p, uint64_t a37, int a38, __int16 a39, char a40, char a41)
{
  if (*(v41 - 105) < 0)
  {
    operator delete(*(v41 - 128));
  }

  if (a41 < 0)
  {
    operator delete(__p);
  }

  if (*(v41 - 144) == 1 && *(v41 - 145) < 0)
  {
    operator delete(*(v41 - 168));
  }

  _Unwind_Resume(exception_object);
}

uint64_t SafeBrowsing::Service::isEnabled(SafeBrowsing::Service *this)
{
  v1 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  if (+[SSBManagedConfigurationManager isSafeBrowsingEnabledStateLockedDownByRestrictions])
  {
    v2 = +[SSBManagedConfigurationManager restrictedBoolValueForSafeBrowsing];
  }

  else
  {
    v3 = [v1 objectForKey:@"SafeBrowsingEnabled"];
    v4 = v3;
    if (v3)
    {
      v2 = [v3 BOOLValue];
    }

    else
    {
      v2 = 1;
    }
  }

  return v2;
}

void SafeBrowsing::Service::checkInOrRegisterUpdateActivity(SafeBrowsing::Service *this, const char *a2)
{
  if (SafeBrowsing::Service::isEnabled(this))
  {
    PollingTimeAndDatabaseConfiguration = SafeBrowsing::Service::nextPollingTimeAndDatabaseConfiguration(this);
    v5 = *MEMORY[0x277D86238];
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3321888768;
    handler[2] = ___ZN12SafeBrowsing7Service31checkInOrRegisterUpdateActivityEPKc_block_invoke;
    handler[3] = &__block_descriptor_56_ea8_32c71_ZTSKZN12SafeBrowsing7Service31checkInOrRegisterUpdateActivityEPKcE3__0_e33_v16__0__NSObject_OS_xpc_object__8l;
    handler[4] = this;
    handler[5] = PollingTimeAndDatabaseConfiguration;
    handler[6] = v6;
    xpc_activity_register(a2, v5, handler);
  }
}

void SafeBrowsing::Service::DatabaseManager::~DatabaseManager(SafeBrowsing::Service::DatabaseManager *this)
{
  v2 = *(this + 11);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v2);
  }

  v4 = (this + 56);
  std::vector<std::function<void ()(void)>>::__destroy_vector::operator()[abi:sn200100](&v4);
  v4 = (this + 32);
  std::vector<Backend::Google::DatabaseInfo>::__destroy_vector::operator()[abi:sn200100](&v4);
  v3 = *(this + 3);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:sn200100](v3);
  }

  std::unique_ptr<Platform::Transaction>::reset[abi:sn200100](this + 1, 0);
  std::unique_ptr<Platform::Transaction>::reset[abi:sn200100](this, 0);
}

void *SafeBrowsing::Service::shared(SafeBrowsing::Service *this)
{
  if ((_MergedGlobals & 1) == 0)
  {
    SafeBrowsing::Service::shared();
  }

  return &unk_280B0EDA0;
}

void SafeBrowsing::Service::databaseBaseDirectory(uint64_t a1@<X8>)
{
  v17 = *MEMORY[0x277D85DE8];
  memset(v15, 0, 15);
  memset(&v14, 0, sizeof(v14));
  UserCacheDirectory = Platform::getUserCacheDirectory(&v14);
  if (UserCacheDirectory)
  {
    v5 = v3;
    v6 = 0;
    v7 = 0;
  }

  else
  {
    std::string::basic_string[abi:sn200100]<0>(__p, "com.apple.Safari.SafeBrowsing");
    Platform::stringByAppendingPathComponent(&v14, __p, &v16);
    v15[0] = v16.__r_.__value_.__l.__size_;
    v6 = v16.__r_.__value_.__r.__words[0];
    *(v15 + 7) = *(&v16.__r_.__value_.__r.__words[1] + 7);
    v7 = HIBYTE(v16.__r_.__value_.__r.__words[2]);
    *(&v16.__r_.__value_.__s + 23) = 0;
    v16.__r_.__value_.__s.__data_[0] = 0;
    if (v13 < 0)
    {
      operator delete(__p[0]);
    }

    v5 = std::system_category();
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  *&v11.__val_ = UserCacheDirectory;
  v11.__cat_ = v5;
  if (UserCacheDirectory)
  {
    v8 = SSBOSLogService();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      std::error_code::message(&v14, &v11);
      SafeBrowsing::Service::databaseBaseDirectory(&v14);
    }

    *a1 = 0;
    *(a1 + 24) = 0;
    if (v7 < 0)
    {
      operator delete(v6);
    }
  }

  else
  {
    v9 = v15[0];
    *a1 = v6;
    *(a1 + 8) = v9;
    *(a1 + 15) = *(v15 + 7);
    *(a1 + 23) = v7;
    *(a1 + 24) = 1;
  }

  v10 = *MEMORY[0x277D85DE8];
}

void sub_22563C24C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (v24 < 0)
  {
    operator delete(v22);
  }

  _Unwind_Resume(a1);
}

void SafeBrowsing::Service::initializeDatabaseManager(uint64_t a1, std::string *a2, __int128 **a3, unint64_t a4)
{
  v33 = *MEMORY[0x277D85DE8];
  v31 = a4;
  v30.__r_.__value_.__r.__words[0] = Platform::createDirectoryWithIntermediateDirectories(a2);
  v30.__r_.__value_.__l.__size_ = v7;
  if (LODWORD(v30.__r_.__value_.__l.__data_))
  {
    v8 = SSBOSLogService();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      std::error_code::message(&v32, &v30);
      SafeBrowsing::Service::initializeDatabaseManager(&v32);
    }
  }

  else
  {
    v10 = *a3;
    v9 = a3[1];
    if (v10 != v9)
    {
      while (1)
      {
        if (*(v10 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v32, *v10, *(v10 + 1));
        }

        else
        {
          v11 = *v10;
          v32.__r_.__value_.__r.__words[2] = *(v10 + 2);
          *&v32.__r_.__value_.__l.__data_ = v11;
        }

        Platform::stringByAppendingPathComponent(a2, &v32, &v30);
        v12 = (v30.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v30 : v30.__r_.__value_.__r.__words[0];
        if (unlink(v12) == -1 && *__error() == 2)
        {
          break;
        }

        if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v30.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v32.__r_.__value_.__l.__data_);
        }

        v10 = (v10 + 24);
        if (v10 == v9)
        {
          goto LABEL_19;
        }
      }

      if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v30.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }
    }

LABEL_19:
    if (v31 == 1)
    {
      switch(HIDWORD(v31))
      {
        case 3:
          SafeBrowsing::Service::threatListDescriptorsFromConfiguration(v31, &v30);
          std::allocate_shared[abi:sn200100]<Backend::Google::DatabaseUpdater,std::allocator<Backend::Google::DatabaseUpdater>,SafeBrowsing::Service &,NSObject  {objcproto17OS_dispatch_queue}* {__strong}&,Backend::Google::Configuration &,std::string const,std::vector<Backend::Google::ThreatListDescriptor>,Backend::Google::DatabaseConfiguration &,0>(a1, (a1 + 8), (a1 + 24), a2, &v30, &v31, &v32);
          v23 = *&v32.__r_.__value_.__l.__data_;
          *&v32.__r_.__value_.__l.__data_ = 0uLL;
          v24 = *(a1 + 416);
          *(a1 + 408) = v23;
          if (v24)
          {
            std::__shared_weak_count::__release_shared[abi:sn200100](v24);
            if (v32.__r_.__value_.__l.__size_)
            {
              std::__shared_weak_count::__release_shared[abi:sn200100](v32.__r_.__value_.__l.__size_);
            }
          }

          v25 = operator new(0x18uLL);
          std::string::basic_string[abi:sn200100]<0>(&v32.__r_.__value_.__l.__data_, "Loading Apple Databases");
          Platform::Transaction::Transaction(v25, &v32);
          if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v32.__r_.__value_.__l.__data_);
          }

          std::unique_ptr<Platform::Transaction>::reset[abi:sn200100]((a1 + 392), v25);
          v18 = *(a1 + 8);
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3321888768;
          block[2] = ___ZN12SafeBrowsing7Service25initializeDatabaseManagerERKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_6vectorIS7_NS5_IS7_EEEEN7Backend6Google21DatabaseConfigurationE_block_invoke_10;
          block[3] = &__block_descriptor_40_ea8_32c197_ZTSKZN12SafeBrowsing7Service25initializeDatabaseManagerERKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_6vectorIS7_NS5_IS7_EEEEN7Backend6Google21DatabaseConfigurationEE3__2_e5_v8__0l;
          block[4] = a1;
          v19 = block;
          break;
        case 2:
          SafeBrowsing::Service::threatListDescriptorsFromConfiguration(v31, &v30);
          std::allocate_shared[abi:sn200100]<Backend::Google::DatabaseUpdater,std::allocator<Backend::Google::DatabaseUpdater>,SafeBrowsing::Service &,NSObject  {objcproto17OS_dispatch_queue}* {__strong}&,Backend::Google::Configuration &,std::string const,std::vector<Backend::Google::ThreatListDescriptor>,Backend::Google::DatabaseConfiguration &,0>(a1, (a1 + 8), (a1 + 24), a2, &v30, &v31, &v32);
          v20 = *&v32.__r_.__value_.__l.__data_;
          *&v32.__r_.__value_.__l.__data_ = 0uLL;
          v21 = *(a1 + 312);
          *(a1 + 304) = v20;
          if (v21)
          {
            std::__shared_weak_count::__release_shared[abi:sn200100](v21);
            if (v32.__r_.__value_.__l.__size_)
            {
              std::__shared_weak_count::__release_shared[abi:sn200100](v32.__r_.__value_.__l.__size_);
            }
          }

          v22 = operator new(0x18uLL);
          std::string::basic_string[abi:sn200100]<0>(&v32.__r_.__value_.__l.__data_, "Loading Tencent Databases");
          Platform::Transaction::Transaction(v22, &v32);
          if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v32.__r_.__value_.__l.__data_);
          }

          std::unique_ptr<Platform::Transaction>::reset[abi:sn200100]((a1 + 288), v22);
          v18 = *(a1 + 8);
          v28[0] = MEMORY[0x277D85DD0];
          v28[1] = 3321888768;
          v28[2] = ___ZN12SafeBrowsing7Service25initializeDatabaseManagerERKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_6vectorIS7_NS5_IS7_EEEEN7Backend6Google21DatabaseConfigurationE_block_invoke_6;
          v28[3] = &__block_descriptor_40_ea8_32c197_ZTSKZN12SafeBrowsing7Service25initializeDatabaseManagerERKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_6vectorIS7_NS5_IS7_EEEEN7Backend6Google21DatabaseConfigurationEE3__1_e5_v8__0l;
          v28[4] = a1;
          v19 = v28;
          break;
        case 1:
          SafeBrowsing::Service::threatListDescriptorsFromConfiguration(v31, &v30);
          std::allocate_shared[abi:sn200100]<Backend::Google::DeviceIdentificationTokenFetcher,std::allocator<Backend::Google::DeviceIdentificationTokenFetcher>,Backend::Google::Configuration &,Backend::Google::SafeBrowsingProvider &,0>(a1 + 24, &v31 + 1, &v32);
          v13 = *&v32.__r_.__value_.__l.__data_;
          *&v32.__r_.__value_.__l.__data_ = 0uLL;
          v14 = *(a1 + 272);
          *(a1 + 264) = v13;
          if (v14)
          {
            std::__shared_weak_count::__release_shared[abi:sn200100](v14);
            if (v32.__r_.__value_.__l.__size_)
            {
              std::__shared_weak_count::__release_shared[abi:sn200100](v32.__r_.__value_.__l.__size_);
            }
          }

          std::allocate_shared[abi:sn200100]<Backend::Google::DatabaseUpdater,std::allocator<Backend::Google::DatabaseUpdater>,SafeBrowsing::Service &,NSObject  {objcproto17OS_dispatch_queue}* {__strong}&,Backend::Google::Configuration &,std::string const,std::vector<Backend::Google::ThreatListDescriptor>,Backend::Google::DatabaseConfiguration &,0>(a1, (a1 + 8), (a1 + 24), a2, &v30, &v31, &v32);
          v15 = *&v32.__r_.__value_.__l.__data_;
          *&v32.__r_.__value_.__l.__data_ = 0uLL;
          v16 = *(a1 + 208);
          *(a1 + 200) = v15;
          if (v16)
          {
            std::__shared_weak_count::__release_shared[abi:sn200100](v16);
            if (v32.__r_.__value_.__l.__size_)
            {
              std::__shared_weak_count::__release_shared[abi:sn200100](v32.__r_.__value_.__l.__size_);
            }
          }

          v17 = operator new(0x18uLL);
          std::string::basic_string[abi:sn200100]<0>(&v32.__r_.__value_.__l.__data_, "Loading Google Databases");
          Platform::Transaction::Transaction(v17, &v32);
          if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v32.__r_.__value_.__l.__data_);
          }

          std::unique_ptr<Platform::Transaction>::reset[abi:sn200100]((a1 + 184), v17);
          v18 = *(a1 + 8);
          v29[0] = MEMORY[0x277D85DD0];
          v29[1] = 3321888768;
          v29[2] = ___ZN12SafeBrowsing7Service25initializeDatabaseManagerERKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_6vectorIS7_NS5_IS7_EEEEN7Backend6Google21DatabaseConfigurationE_block_invoke;
          v29[3] = &__block_descriptor_40_ea8_32c197_ZTSKZN12SafeBrowsing7Service25initializeDatabaseManagerERKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEERKNS1_6vectorIS7_NS5_IS7_EEEEN7Backend6Google21DatabaseConfigurationEE3__0_e5_v8__0l;
          v29[4] = a1;
          v19 = v29;
          break;
        default:
          goto LABEL_50;
      }

      dispatch_async(v18, v19);
      if (v30.__r_.__value_.__r.__words[0])
      {
        v30.__r_.__value_.__l.__size_ = v30.__r_.__value_.__r.__words[0];
        operator delete(v30.__r_.__value_.__l.__data_);
      }
    }
  }

LABEL_50:
  v26 = *MEMORY[0x277D85DE8];
}

void sub_22563C774(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (*(v31 - 105) < 0)
  {
    operator delete(*(v31 - 128));
  }

  operator delete(v30);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void SafeBrowsing::Service::threatListDescriptorsFromConfiguration(unint64_t a1@<X1>, void *a2@<X8>)
{
  v2 = a1;
  v4 = HIDWORD(a1);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v5 = +[RemoteConfigurationController sharedController];
  v6 = v5;
  if (v2 == 1 && v4 == 1)
  {
    v7 = [v5 googleProviderConfiguration];
    if (([v7 malwareThreatTypeOff] & 1) == 0)
    {
      v14 = xmmword_2256598E0;
      std::vector<Backend::Google::ThreatListDescriptor>::push_back[abi:sn200100](a2, &v14);
    }

    if (([v7 socialEngineeringThreatTypeOff] & 1) == 0)
    {
      v14 = xmmword_2256598F0;
      std::vector<Backend::Google::ThreatListDescriptor>::push_back[abi:sn200100](a2, &v14);
    }

    v8 = [v6 googleProviderConfiguration];
    v9 = [v8 useV5];

    if (v9)
    {
      v14 = xmmword_225659900;
      std::vector<Backend::Google::ThreatListDescriptor>::push_back[abi:sn200100](a2, &v14);
    }
  }

  else if (v2 == 1 && v4 == 2)
  {
    v10 = [v5 tencentProviderConfiguration];
    v11 = [v10 socialEngineeringThreatTypeOff];

    if ((v11 & 1) == 0)
    {
      v14 = xmmword_2256598D0;
      std::vector<Backend::Google::ThreatListDescriptor>::push_back[abi:sn200100](a2, &v14);
    }
  }

  else if (v2 == 1 && v4 == 3)
  {
    v12 = [v5 appleProviderConfiguration];
    v13 = [v12 socialEngineeringThreatTypeOff];

    if ((v13 & 1) == 0)
    {
      v14 = xmmword_2256598C0;
      std::vector<Backend::Google::ThreatListDescriptor>::push_back[abi:sn200100](a2, &v14);
    }
  }
}