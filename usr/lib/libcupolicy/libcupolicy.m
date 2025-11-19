void CellularUsagePolicyClient::CellularUsagePolicyClient(CellularUsagePolicyClient *this)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, "com.apple.cupolicy.client");
  ctu::XpcClient::XpcClient();
  if (v3 < 0)
  {
    operator delete(__p);
  }

  ctu::OsLogLogger::OsLogLogger((this + 72), "com.apple.telephony", "cupolicy");
  *this = &unk_2A1F039D0;
  *(this + 20) = -1;
  *(this + 14) = 0;
  *(this + 15) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 13) = this + 112;
  *(this + 128) = 0;
}

_BYTE *std::string::basic_string[abi:ne200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

void sub_29871FB20(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, std::shared_ptr<CellularUsagePolicyClient> ctu::SharedSynchronizable<ctu::XpcClient>::make_shared_ptr<CellularUsagePolicyClient>(CellularUsagePolicyClient*)::{lambda(CellularUsagePolicyClient*)#1}::operator() const(CellularUsagePolicyClient*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void std::shared_ptr<CellularUsagePolicyClient>::__enable_weak_this[abi:ne200100]<ctu::XpcClient,CellularUsagePolicyClient,0>(uint64_t a1, void *a2, uint64_t a3)
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

void CellularUsagePolicyClient::start(CellularUsagePolicyClient *this)
{
  v3[0] = MEMORY[0x29EDCA5F8];
  v3[1] = 0x40000000;
  v3[2] = ___ZN25CellularUsagePolicyClient5startEv_block_invoke;
  v3[3] = &__block_descriptor_tmp;
  v3[4] = this;
  v6 = 0;
  v7 = 0;
  std::shared_ptr<ctu::XpcClient const>::shared_ptr[abi:ne200100]<ctu::XpcClient,0>(&v6, this + 1);
  v2 = *(this + 3);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZNK3ctu20SharedSynchronizableINS_9XpcClientEE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_2A1F03748;
  block[5] = v6;
  v5 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v3;
  dispatch_async(v2, block);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void *std::shared_ptr<ctu::XpcClient const>::shared_ptr[abi:ne200100]<ctu::XpcClient,0>(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  if (!v3)
  {
    a1[1] = 0;
LABEL_5:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v4 = std::__shared_weak_count::lock(v3);
  a1[1] = v4;
  if (!v4)
  {
    goto LABEL_5;
  }

  return a1;
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

uint64_t CellularUsagePolicyClient::setPolicyChangedHandler(uint64_t a1, dispatch_object_t object, void *a3)
{
  if (!object)
  {
    return 22;
  }

  dispatch_retain(object);
  if (a3)
  {
    a3 = _Block_copy(a3);
  }

  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 1174405120;
  v9[2] = ___ZN25CellularUsagePolicyClient23setPolicyChangedHandlerEP16dispatch_queue_sU13block_pointerFvPvE_block_invoke;
  v9[3] = &__block_descriptor_tmp_33;
  v9[4] = a1;
  objecta = object;
  dispatch_retain(object);
  if (a3)
  {
    v6 = _Block_copy(a3);
  }

  else
  {
    v6 = 0;
  }

  aBlock = v6;
  v14 = 0;
  v15 = 0;
  std::shared_ptr<ctu::XpcClient const>::shared_ptr[abi:ne200100]<ctu::XpcClient,0>(&v14, (a1 + 8));
  v8 = *(a1 + 24);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZNK3ctu20SharedSynchronizableINS_9XpcClientEE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_2A1F03748;
  block[5] = v14;
  v13 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v9;
  dispatch_async(v8, block);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (objecta)
  {
    dispatch_release(objecta);
  }

  if (a3)
  {
    _Block_release(a3);
  }

  dispatch_release(object);
  return 0;
}

uint64_t network_usage_policy_set_changed_handler(uint64_t *a1, NSObject *a2, void *a3)
{
  if (a1 && (v3 = *a1) != 0)
  {
    return CellularUsagePolicyClient::setPolicyChangedHandler(v3, a2, a3);
  }

  else
  {
    return 22;
  }
}

void *__copy_helper_block_e8_40c21_ZTSN8dispatch5queueE48c44_ZTSN8dispatch5blockIU13block_pointerFvPvEEE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  *(a1 + 40) = v4;
  if (v4)
  {
    dispatch_retain(v4);
  }

  result = *(a2 + 48);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 48) = result;
  return result;
}

void CellularUsagePolicyClient::handleMessage_sync(uint64_t a1, xpc::object *a2)
{
  v11 = *MEMORY[0x29EDCA608];
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    xpc::object::to_string(__p, a2);
    v4 = v9 >= 0 ? __p : __p[0];
    *buf = 136315138;
    *&buf[4] = v4;
    _os_log_impl(&dword_29871F000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "Received msg from server: %s", buf, 0xCu);
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (xpc_dictionary_get_value(*a2, "kDataUsagePolicyNotification"))
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&dword_29871F000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "Received new data usage policy list", __p, 2u);
    }

    *buf = 0;
    __p[0] = a2;
    __p[1] = "kDataUsagePolicies";
    xpc::dict::object_proxy::operator xpc::array(__p, buf);
    v5 = *buf;
    v7 = *buf;
    if (*buf)
    {
      xpc_retain(*buf);
    }

    else
    {
      v5 = xpc_null_create();
      v7 = v5;
    }

    CellularUsagePolicyClient::handleDataUsagePolicies_sync(a1, &v7);
    xpc_release(v5);
    v7 = 0;
    xpc_release(*buf);
  }

  v6 = *MEMORY[0x29EDCA608];
}

void sub_298720164(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, xpc_object_t object)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
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

  if (MEMORY[0x29C291100](v4) != MEMORY[0x29EDCA9E0])
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

void CellularUsagePolicyClient::start_sync(CellularUsagePolicyClient *this)
{
  v3 = (this + 80);
  v2 = *(this + 20);
  if (v2 != -1)
  {
    notify_cancel(v2);
  }

  v4 = *(this + 3);
  handler[0] = MEMORY[0x29EDCA5F8];
  handler[1] = 0x40000000;
  handler[2] = ___ZN25CellularUsagePolicyClient10start_syncEv_block_invoke;
  handler[3] = &__block_descriptor_tmp_36;
  handler[4] = this;
  notify_register_dispatch("com.apple.coretelephony.daemon_ready", v3, v4, handler);
  CellularUsagePolicyClient::connectAndCheckin_sync(this);
}

void CellularUsagePolicyClient::handleDataUsagePolicies_sync(uint64_t a1, xpc_object_t *a2)
{
  v4 = (a1 + 112);
  v5 = (a1 + 104);
  std::__tree<xpc::dict,CellularUsagePolicyClient::policy_cmp_by_bundleId,std::allocator<xpc::dict>>::destroy(a1 + 104, *(a1 + 112));
  *v4 = 0;
  v4[1] = 0;
  *(v4 - 1) = v4;
  v6 = *a2;
  object = v6;
  if (v6)
  {
    xpc_retain(v6);
  }

  else
  {
    object = xpc_null_create();
  }

  xpc::array::iterator::iterator(v12, &object, 0);
  xpc_release(object);
  v7 = *a2;
  object = v7;
  if (v7)
  {
    xpc_retain(v7);
  }

  else
  {
    object = xpc_null_create();
  }

  if (MEMORY[0x29C291100](*a2) == MEMORY[0x29EDCA9E0])
  {
    count = xpc_array_get_count(*a2);
  }

  else
  {
    count = 0;
  }

  xpc::array::iterator::iterator(v11, &object, count);
  xpc_release(object);
  std::copy[abi:ne200100]<xpc::array::iterator,std::insert_iterator<std::set<xpc::dict,CellularUsagePolicyClient::policy_cmp_by_bundleId,std::allocator<xpc::dict>>>>(v12, v11, v5, *v5);
  xpc_release(v11[0]);
  v11[0] = 0;
  xpc_release(v12[0]);
  v12[0] = 0;
  *(a1 + 128) = 1;
  v9 = *a2;
  v10 = v9;
  if (v9)
  {
    xpc_retain(v9);
  }

  else
  {
    v9 = xpc_null_create();
    v10 = v9;
  }

  CellularUsagePolicyClient::dispatchClientCallback_sync(a1, &v10);
  xpc_release(v9);
}

void std::__tree<xpc::dict,CellularUsagePolicyClient::policy_cmp_by_bundleId,std::allocator<xpc::dict>>::destroy(uint64_t a1, xpc_object_t *a2)
{
  if (a2)
  {
    std::__tree<xpc::dict,CellularUsagePolicyClient::policy_cmp_by_bundleId,std::allocator<xpc::dict>>::destroy(a1, *a2);
    std::__tree<xpc::dict,CellularUsagePolicyClient::policy_cmp_by_bundleId,std::allocator<xpc::dict>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<xpc::dict,0>(a2 + 4);

    operator delete(a2);
  }
}

void CellularUsagePolicyClient::connectAndCheckin_sync(dispatch_queue_t *this)
{
  mach_service = xpc_connection_create_mach_service("com.apple.commcenter.cupolicy.xpc", this[3], 2uLL);
  if (mach_service)
  {
    v3 = mach_service;
    object = mach_service;
LABEL_4:
    xpc_retain(v3);
    goto LABEL_5;
  }

  v3 = xpc_null_create();
  object = v3;
  if (v3)
  {
    goto LABEL_4;
  }

  v3 = 0;
  object = xpc_null_create();
LABEL_5:
  ctu::XpcClient::setServer_sync();
  xpc_release(object);
  if (MEMORY[0x29C291100](v3) == MEMORY[0x29EDCA9F0])
  {
    CellularUsagePolicyClient::checkin_sync(this);
  }

  xpc_release(v3);
}

void sub_2987205D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(v10);
  _Unwind_Resume(a1);
}

void CellularUsagePolicyClient::checkin_sync(xpc_connection_t *this)
{
  v11 = *MEMORY[0x29EDCA608];
  message = 0;
  xpc::dict_creator::dict_creator(object);
  xpc::dict_creator::operator()<char const*>("kRegisterCUPolicyClient", object, "kRequest", buf);
  xpc_release(object[0]);
  message = *buf;
  *buf = xpc_null_create();
  xpc_release(*buf);
  v2 = getprogname();
  if (v2)
  {
    v7 = xpc_string_create(v2);
    if (!v7)
    {
      v7 = xpc_null_create();
    }

    object[0] = &message;
    object[1] = "kProgName";
    xpc::dict::object_proxy::operator=(object, &v7, &v8);
    xpc_release(v8);
    v8 = 0;
    xpc_release(v7);
    v7 = 0;
  }

  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    xpc::object::to_string(object, &message);
    if (v6 >= 0)
    {
      v3 = object;
    }

    else
    {
      v3 = object[0];
    }

    *buf = 136315138;
    *&buf[4] = v3;
    _os_log_impl(&dword_29871F000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "Checking in with server: %s", buf, 0xCu);
    if (v6 < 0)
    {
      operator delete(object[0]);
    }
  }

  xpc_connection_send_message(this[5], message);
  xpc_release(message);
  v4 = *MEMORY[0x29EDCA608];
}

void sub_298720780(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
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

xpc::dict_creator *xpc::dict_creator::dict_creator(xpc::dict_creator *this)
{
  v2 = xpc_dictionary_create(0, 0, 0);
  if (v2 || (v2 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C291100](v2) == MEMORY[0x29EDCAA00])
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
  *this = v3;
  v4 = xpc_null_create();
  xpc_release(v4);
  return this;
}

void std::__copy[abi:ne200100]<xpc::array::iterator,xpc::array::iterator,std::insert_iterator<std::set<xpc::dict,CellularUsagePolicyClient::policy_cmp_by_bundleId,std::allocator<xpc::dict>>>>(xpc_object_t *a1@<X0>, xpc_object_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11[0] = *a1;
  *a1 = xpc_null_create();
  v11[1] = a1[1];
  object[0] = *a2;
  *a2 = xpc_null_create();
  object[1] = a2[1];
  std::__copy_move_unwrap_iters[abi:ne200100]<std::__copy_impl,xpc::array::iterator,xpc::array::iterator,std::insert_iterator<std::set<xpc::dict,CellularUsagePolicyClient::policy_cmp_by_bundleId,std::allocator<xpc::dict>>>,0>(v11, object, a3, a4, a5);
  xpc_release(object[0]);
  object[0] = 0;
  xpc_release(v11[0]);
}

void sub_298720980(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, uint64_t a10, xpc_object_t a11)
{
  xpc_release(object);
  xpc_release(a11);
  _Unwind_Resume(a1);
}

void xpc::dict_creator::operator()<char const*>(char *string@<X2>, void **a2@<X0>, uint64_t a3@<X1>, void **a4@<X8>)
{
  v7 = xpc_string_create(string);
  v8 = v7;
  if (v7)
  {
    v11 = v7;
LABEL_4:
    xpc_retain(v8);
    goto LABEL_5;
  }

  v8 = xpc_null_create();
  v11 = v8;
  if (v8)
  {
    goto LABEL_4;
  }

  v8 = 0;
  v11 = xpc_null_create();
LABEL_5:
  v10[0] = a2;
  v10[1] = a3;
  xpc::dict::object_proxy::operator=(v10, &v11, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v11);
  v11 = 0;
  v9 = *a2;
  *a4 = *a2;
  if (v9)
  {
    xpc_retain(v9);
  }

  else
  {
    *a4 = xpc_null_create();
  }

  xpc_release(v8);
}

xpc_object_t std::copy[abi:ne200100]<xpc::array::iterator,std::insert_iterator<std::set<xpc::dict,CellularUsagePolicyClient::policy_cmp_by_bundleId,std::allocator<xpc::dict>>>>(void **a1, void **a2, uint64_t a3, uint64_t a4)
{
  v8 = *a1;
  v13[0] = v8;
  if (v8)
  {
    xpc_retain(v8);
  }

  else
  {
    v13[0] = xpc_null_create();
  }

  v13[1] = a1[1];
  v9 = *a2;
  v12[0] = v9;
  if (v9)
  {
    xpc_retain(v9);
  }

  else
  {
    v12[0] = xpc_null_create();
  }

  v12[1] = a2[1];
  std::__copy[abi:ne200100]<xpc::array::iterator,xpc::array::iterator,std::insert_iterator<std::set<xpc::dict,CellularUsagePolicyClient::policy_cmp_by_bundleId,std::allocator<xpc::dict>>>>(v13, v12, a3, a4, object);
  v10 = object[2];
  xpc_release(object[0]);
  object[0] = 0;
  xpc_release(v12[0]);
  v12[0] = 0;
  xpc_release(v13[0]);
  return v10;
}

void sub_298720B68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, uint64_t a10, xpc_object_t a11)
{
  xpc_release(object);
  xpc_release(a11);
  _Unwind_Resume(a1);
}

void std::__copy_move_unwrap_iters[abi:ne200100]<std::__copy_impl,xpc::array::iterator,xpc::array::iterator,std::insert_iterator<std::set<xpc::dict,CellularUsagePolicyClient::policy_cmp_by_bundleId,std::allocator<xpc::dict>>>,0>(xpc_object_t *a1@<X0>, xpc_object_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v22 = 0u;
  v23 = 0u;
  v10 = *a1;
  v21[0] = v10;
  if (v10)
  {
    xpc_retain(v10);
  }

  else
  {
    v21[0] = xpc_null_create();
  }

  v21[1] = a1[1];
  object[0] = *a2;
  *a2 = xpc_null_create();
  object[1] = a2[1];
  std::__unwrap_range[abi:ne200100]<xpc::array::iterator,xpc::array::iterator>(v21, object, &v22);
  xpc_release(object[0]);
  object[0] = 0;
  xpc_release(v21[0]);
  v21[0] = 0;
  *v18 = 0u;
  v19 = 0u;
  v17[0] = v22;
  *&v22 = xpc_null_create();
  v17[1] = *(&v22 + 1);
  v16[0] = v23;
  *&v23 = xpc_null_create();
  v16[1] = *(&v23 + 1);
  std::__copy_impl::operator()[abi:ne200100]<xpc::array::iterator,xpc::array::iterator,std::insert_iterator<std::set<xpc::dict,CellularUsagePolicyClient::policy_cmp_by_bundleId,std::allocator<xpc::dict>>>>(v17, v16, a3, a4, v18);
  xpc_release(v16[0]);
  v16[0] = 0;
  xpc_release(v17[0]);
  v17[0] = 0;
  v14[0] = *a1;
  *a1 = xpc_null_create();
  v14[1] = a1[1];
  v13[0] = v18[0];
  v18[0] = xpc_null_create();
  v13[1] = v18[1];
  std::__rewrap_range[abi:ne200100]<xpc::array::iterator,xpc::array::iterator,xpc::array::iterator>(v14, v13, v15);
  v11 = v19;
  *a5 = v15[0];
  v12 = xpc_null_create();
  v15[0] = v12;
  *(a5 + 8) = v15[1];
  *(a5 + 16) = v11;
  xpc_release(v12);
  v15[0] = 0;
  xpc_release(v13[0]);
  v13[0] = 0;
  xpc_release(v14[0]);
  v14[0] = 0;
  xpc_release(v18[0]);
  xpc_release(v23);
  *&v23 = 0;
  xpc_release(v22);
}

void sub_298720D6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, uint64_t a10, xpc_object_t a11, uint64_t a12, uint64_t a13, uint64_t a14, xpc_object_t a15, uint64_t a16, xpc_object_t a17, uint64_t a18, xpc_object_t a19, uint64_t a20, uint64_t a21, uint64_t a22, xpc_object_t a23)
{
  xpc_release(object);
  xpc_release(a11);
  xpc_release(a19);
  std::pair<xpc::array::iterator,xpc::array::iterator>::~pair((v23 - 80));
  _Unwind_Resume(a1);
}

xpc_object_t xpc::dict::object_proxy::operator=@<X0>(uint64_t a1@<X0>, xpc_object_t *a2@<X1>, xpc_object_t *a3@<X8>)
{
  xpc_dictionary_set_value(**a1, *(a1 + 8), *a2);
  *a3 = *a2;
  result = xpc_null_create();
  *a2 = result;
  return result;
}

void __destroy_helper_block_e8_40c43_ZTSNSt3__110shared_ptrIKN3ctu9XpcClientEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__unwrap_range[abi:ne200100]<xpc::array::iterator,xpc::array::iterator>(xpc_object_t *a1@<X0>, xpc_object_t *a2@<X1>, void *a3@<X8>)
{
  v7[0] = *a1;
  *a1 = xpc_null_create();
  v7[1] = a1[1];
  object[0] = *a2;
  *a2 = xpc_null_create();
  object[1] = a2[1];
  std::__unwrap_range_impl<xpc::array::iterator,xpc::array::iterator>::__unwrap[abi:ne200100](v7, object, a3);
  xpc_release(object[0]);
  object[0] = 0;
  xpc_release(v7[0]);
}

const void **___ZN25CellularUsagePolicyClient23setPolicyChangedHandlerEP16dispatch_queue_sU13block_pointerFvPvE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (v3)
  {
    dispatch_retain(*(a1 + 40));
  }

  v4 = *(v2 + 88);
  *(v2 + 88) = v3;
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    v5 = _Block_copy(v5);
  }

  v6 = *(v2 + 96);
  *(v2 + 96) = v5;
  if (v6)
  {
    _Block_release(v6);
  }

  v27 = 0;
  object = MGCopyAnswer();
  v28 = 0;
  v7 = ctu::cf::CFSharedRef<__CFBoolean const>::CFSharedRef<void const,void>(&v28, &object);
  v8 = v27;
  v27 = v28;
  v28 = v8;
  v9 = ctu::SharedRef<__CFBoolean const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFBoolean const>::~SharedRef(v7);
  LOBYTE(v28) = 0;
  ctu::cf::assign(v9, v27, v10);
  if (v28)
  {
    if (*(v2 + 128) != 1)
    {
      return ctu::SharedRef<__CFBoolean const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFBoolean const>::~SharedRef(&v27);
    }

    object = 0;
    v11 = xpc_array_create(0, 0);
    v12 = v11;
    v13 = MEMORY[0x29EDCA9E0];
    if (v11)
    {
      object = v11;
    }

    else
    {
      v12 = xpc_null_create();
      object = v12;
      if (!v12)
      {
        v17 = xpc_null_create();
        v12 = 0;
        goto LABEL_22;
      }
    }

    if (MEMORY[0x29C291100](v12) == v13)
    {
      xpc_retain(v12);
LABEL_23:
      xpc_release(v12);
      v18 = object;
      v28 = object;
      if (object)
      {
        xpc_retain(object);
      }

      else
      {
        v28 = xpc_null_create();
      }

      xpc::array::iterator::iterator(v24, &v28, 0);
      xpc_release(v28);
      v28 = v18;
      if (v18)
      {
        xpc_retain(v18);
      }

      else
      {
        v28 = xpc_null_create();
      }

      if (MEMORY[0x29C291100](v18) == v13)
      {
        count = xpc_array_get_count(v18);
      }

      else
      {
        count = 0;
      }

      xpc::array::iterator::iterator(v23, &v28, count);
      xpc_release(v28);
      std::copy[abi:ne200100]<xpc::array::iterator,std::back_insert_iterator<xpc::array>>(v24, v23, &object);
      xpc_release(v23[0]);
      v23[0] = 0;
      xpc_release(v24[0]);
      v24[0] = 0;
      v20 = object;
      v22 = object;
      if (object)
      {
        xpc_retain(object);
      }

      else
      {
        v20 = xpc_null_create();
        v22 = v20;
      }

      CellularUsagePolicyClient::dispatchClientCallback_sync(v2, &v22);
      xpc_release(v20);
      v22 = 0;
      xpc_release(object);
      return ctu::SharedRef<__CFBoolean const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFBoolean const>::~SharedRef(&v27);
    }

    v17 = xpc_null_create();
LABEL_22:
    object = v17;
    goto LABEL_23;
  }

  v14 = xpc_null_create();
  v15 = v14;
  v25 = v14;
  if (v14)
  {
    xpc_retain(v14);
    v16 = v15;
  }

  else
  {
    v16 = xpc_null_create();
    v25 = v16;
  }

  CellularUsagePolicyClient::dispatchClientCallback_sync(v2, &v25);
  xpc_release(v16);
  v25 = 0;
  xpc_release(v15);
  return ctu::SharedRef<__CFBoolean const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFBoolean const>::~SharedRef(&v27);
}

void sub_2987211A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t a11, uint64_t a12, xpc_object_t a13, uint64_t a14, uint64_t a15, xpc_object_t object)
{
  xpc_release(v16);
  xpc_release(object);
  ctu::SharedRef<__CFBoolean const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFBoolean const>::~SharedRef((v17 - 48));
  _Unwind_Resume(a1);
}

void std::__unwrap_range_impl<xpc::array::iterator,xpc::array::iterator>::__unwrap[abi:ne200100](uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *a1;
  *a1 = xpc_null_create();
  v7 = *(a1 + 8);
  if (v6)
  {
    xpc_retain(v6);
    v8 = v6;
  }

  else
  {
    v8 = xpc_null_create();
  }

  v9 = xpc_null_create();
  xpc_release(v9);
  v10 = *a2;
  *a2 = xpc_null_create();
  v11 = *(a2 + 8);
  if (v10)
  {
    xpc_retain(v10);
    v12 = v10;
  }

  else
  {
    v12 = xpc_null_create();
  }

  v13 = xpc_null_create();
  xpc_release(v13);
  *a3 = v8;
  v14 = xpc_null_create();
  a3[1] = v7;
  a3[2] = v12;
  v15 = xpc_null_create();
  a3[3] = v11;
  xpc_release(v15);
  xpc_release(v10);
  xpc_release(v14);
  xpc_release(v6);
}

void *ctu::cf::CFSharedRef<__CFBoolean const>::CFSharedRef<void const,void>(void *a1, CFTypeRef *a2)
{
  v4 = *a2;
  if (*a2 && (v5 = CFGetTypeID(*a2), v5 == CFBooleanGetTypeID()))
  {
    *a1 = v4;
  }

  else
  {
    *a1 = 0;
    if (*a2)
    {
      CFRelease(*a2);
    }
  }

  return a1;
}

uint64_t std::__copy_impl::operator()[abi:ne200100]<xpc::array::iterator,xpc::array::iterator,std::insert_iterator<std::set<xpc::dict,CellularUsagePolicyClient::policy_cmp_by_bundleId,std::allocator<xpc::dict>>>>@<X0>(uint64_t a1@<X1>, void *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  *&v12 = a3;
  *(&v12 + 1) = a4;
  for (i = *(a1 + 8); i != a2[1] || *a1 != *a2; *(a1 + 8) = i)
  {
    v10[0] = a1;
    v10[1] = i;
    xpc::array::object_proxy::operator xpc::dict(v10, &object);
    std::insert_iterator<std::set<xpc::dict,CellularUsagePolicyClient::policy_cmp_by_bundleId,std::allocator<xpc::dict>>>::operator=[abi:ne200100](&v12, &object);
    xpc_release(object);
    i = *(a1 + 8) + 1;
  }

  return std::pair<xpc::array::iterator,std::insert_iterator<std::set<xpc::dict,CellularUsagePolicyClient::policy_cmp_by_bundleId,std::allocator<xpc::dict>>>>::pair[abi:ne200100]<xpc::array::iterator,std::insert_iterator<std::set<xpc::dict,CellularUsagePolicyClient::policy_cmp_by_bundleId,std::allocator<xpc::dict>>>,0>(a5, a1, &v12);
}

const void **ctu::SharedRef<__CFBoolean const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFBoolean const>::~SharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void xpc::array::object_proxy::operator xpc::dict(uint64_t a1@<X0>, void *a2@<X8>)
{
  value = xpc_array_get_value(**a1, *(a1 + 8));
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

  if (MEMORY[0x29C291100](v4) != MEMORY[0x29EDCAA00])
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

void __destroy_helper_block_e8_40c21_ZTSN8dispatch5queueE48c44_ZTSN8dispatch5blockIU13block_pointerFvPvEEE(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    dispatch_release(v3);
  }
}

uint64_t std::__tree<xpc::dict,CellularUsagePolicyClient::policy_cmp_by_bundleId,std::allocator<xpc::dict>>::__emplace_hint_unique_key_args<xpc::dict,xpc::dict>(void *a1, void *a2, void *a3)
{
  v8 = 0;
  v9 = 0;
  v3 = *std::__tree<xpc::dict,CellularUsagePolicyClient::policy_cmp_by_bundleId,std::allocator<xpc::dict>>::__find_equal<xpc::dict>(a1, a2, &v9, &v8, a3);
  if (!v3)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    std::__tree<xpc::dict,CellularUsagePolicyClient::policy_cmp_by_bundleId,std::allocator<xpc::dict>>::__construct_node<xpc::dict>();
  }

  return v3;
}

void **std::insert_iterator<std::set<xpc::dict,CellularUsagePolicyClient::policy_cmp_by_bundleId,std::allocator<xpc::dict>>>::operator=[abi:ne200100](void **a1, void *a2)
{
  v3 = std::__tree<xpc::dict,CellularUsagePolicyClient::policy_cmp_by_bundleId,std::allocator<xpc::dict>>::__emplace_hint_unique_key_args<xpc::dict,xpc::dict>(*a1, a1[1], a2);
  a1[1] = v3;
  v4 = *(v3 + 8);
  if (v4)
  {
    do
    {
      v5 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  else
  {
    do
    {
      v5 = *(v3 + 16);
      v6 = *v5 == v3;
      v3 = v5;
    }

    while (!v6);
  }

  a1[1] = v5;
  return a1;
}

uint64_t *std::__tree<xpc::dict,CellularUsagePolicyClient::policy_cmp_by_bundleId,std::allocator<xpc::dict>>::__find_equal<xpc::dict>(void *a1, void *a2, void *a3, uint64_t *a4, void *a5)
{
  v9 = a1 + 1;
  if (a1 + 1 != a2 && !CellularUsagePolicyClient::policy_cmp_by_bundleId::operator()(a1, a5, a2 + 4))
  {
    if (!CellularUsagePolicyClient::policy_cmp_by_bundleId::operator()(a1, a2 + 4, a5))
    {
      *a3 = a2;
      *a4 = a2;
      return a4;
    }

    a4 = a2 + 1;
    v13 = a2[1];
    if (v13)
    {
      v14 = a2[1];
      do
      {
        v15 = v14;
        v14 = *v14;
      }

      while (v14);
    }

    else
    {
      v18 = a2;
      do
      {
        v15 = v18[2];
        v17 = *v15 == v18;
        v18 = v15;
      }

      while (!v17);
    }

    if (v15 != v9)
    {
      if (!CellularUsagePolicyClient::policy_cmp_by_bundleId::operator()(a1, a5, v15 + 4))
      {
        goto LABEL_28;
      }

      v13 = *a4;
    }

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

  if (*a1 == a2)
  {
    v12 = a2;
LABEL_16:
    if (*a2)
    {
      *a3 = v12;
      return v12 + 1;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

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

  if (CellularUsagePolicyClient::policy_cmp_by_bundleId::operator()(a1, v12 + 4, a5))
  {
    goto LABEL_16;
  }

LABEL_28:

  return std::__tree<xpc::dict,CellularUsagePolicyClient::policy_cmp_by_bundleId,std::allocator<xpc::dict>>::__find_equal<xpc::dict>(a1, a3, a5);
}

uint64_t *std::__tree<xpc::dict,CellularUsagePolicyClient::policy_cmp_by_bundleId,std::allocator<xpc::dict>>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
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

uint64_t std::unique_ptr<std::__tree_node<xpc::dict,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<xpc::dict,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<xpc::dict,0>(v2 + 4);
    }

    operator delete(v2);
  }

  return a1;
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

uint64_t std::pair<xpc::array::iterator,std::insert_iterator<std::set<xpc::dict,CellularUsagePolicyClient::policy_cmp_by_bundleId,std::allocator<xpc::dict>>>>::pair[abi:ne200100]<xpc::array::iterator,std::insert_iterator<std::set<xpc::dict,CellularUsagePolicyClient::policy_cmp_by_bundleId,std::allocator<xpc::dict>>>,0>(uint64_t a1, xpc_object_t *a2, _OWORD *a3)
{
  *a1 = *a2;
  *a2 = xpc_null_create();
  *(a1 + 8) = a2[1];
  *(a1 + 16) = *a3;
  return a1;
}

void std::__unwrap_range_impl<xpc::array::iterator,xpc::array::iterator>::__rewrap[abi:ne200100](xpc_object_t *a1@<X0>, xpc_object_t *a2@<X1>, void *a3@<X8>)
{
  v7[0] = *a1;
  *a1 = xpc_null_create();
  v7[1] = a1[1];
  object[0] = *a2;
  *a2 = xpc_null_create();
  object[1] = a2[1];
  std::__rewrap_iter[abi:ne200100]<xpc::array::iterator,xpc::array::iterator,std::__unwrap_iter_impl<xpc::array::iterator,false>>(v7, object, a3);
  xpc_release(object[0]);
  object[0] = 0;
  xpc_release(v7[0]);
}

void std::__rewrap_range[abi:ne200100]<xpc::array::iterator,xpc::array::iterator,xpc::array::iterator>(xpc_object_t *a1@<X0>, xpc_object_t *a2@<X1>, void *a3@<X8>)
{
  v7[0] = *a1;
  *a1 = xpc_null_create();
  v7[1] = a1[1];
  object[0] = *a2;
  *a2 = xpc_null_create();
  object[1] = a2[1];
  std::__unwrap_range_impl<xpc::array::iterator,xpc::array::iterator>::__rewrap[abi:ne200100](v7, object, a3);
  xpc_release(object[0]);
  object[0] = 0;
  xpc_release(v7[0]);
}

void std::__rewrap_iter[abi:ne200100]<xpc::array::iterator,xpc::array::iterator,std::__unwrap_iter_impl<xpc::array::iterator,false>>(void **a1@<X0>, xpc_object_t *a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  *a1 = xpc_null_create();
  v6 = *a2;
  *a2 = xpc_null_create();
  v7 = a2[1];
  *a3 = v6;
  v8 = xpc_null_create();
  a3[1] = v7;
  xpc_release(v8);
  xpc_release(v5);
}

void CellularUsagePolicyClient::dispatchClientCallback_sync(void *a1, void **a2)
{
  if (a1[11])
  {
    v3 = a1[12];
    if (v3)
    {
      v5 = _Block_copy(v3);
      std::shared_ptr<ctu::XpcClient const>::shared_ptr[abi:ne200100]<ctu::XpcClient,0>(&v15, a1 + 1);
      v7 = v15;
      v6 = v16;
      if (v16)
      {
        atomic_fetch_add_explicit(&v16->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:ne200100](v6);
      }

      v8 = a1[11];
      v11[0] = MEMORY[0x29EDCA5F8];
      v11[1] = 1174405120;
      v11[2] = ___ZN25CellularUsagePolicyClient27dispatchClientCallback_syncEN3xpc5arrayE_block_invoke;
      v11[3] = &__block_descriptor_tmp_42;
      v11[4] = v7;
      v12 = v6;
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      if (v5)
      {
        v9 = _Block_copy(v5);
      }

      else
      {
        v9 = 0;
      }

      v10 = *a2;
      aBlock = v9;
      object = v10;
      if (v10)
      {
        xpc_retain(v10);
      }

      else
      {
        object = xpc_null_create();
      }

      dispatch_async(v8, v11);
      xpc_release(object);
      object = 0;
      if (aBlock)
      {
        _Block_release(aBlock);
      }

      if (v12)
      {
        std::__shared_weak_count::__release_weak(v12);
      }

      if (v6)
      {
        std::__shared_weak_count::__release_weak(v6);
      }

      if (v5)
      {
        _Block_release(v5);
      }
    }
  }
}

void sub_298721EB4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    _Block_release(v1);
  }

  _Unwind_Resume(exception_object);
}

xpc_object_t __copy_helper_block_e8_32c39_ZTSNSt3__18weak_ptrIN3ctu9XpcClientEEE48c44_ZTSN8dispatch5blockIU13block_pointerFvPvEEE56c16_ZTSN3xpc5arrayE(void *a1, void *a2)
{
  v4 = a2[5];
  a1[4] = a2[4];
  a1[5] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  v5 = a2[6];
  if (v5)
  {
    v6 = _Block_copy(v5);
  }

  else
  {
    v6 = 0;
  }

  v7 = a2[7];
  a1[6] = v6;
  a1[7] = v7;
  if (v7)
  {
    return xpc_retain(v7);
  }

  result = xpc_null_create();
  a1[7] = result;
  return result;
}

void ___ZN25CellularUsagePolicyClient27dispatchClientCallback_syncEN3xpc5arrayE_block_invoke(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      if (a1[4])
      {
        v5 = a1[7];
        (*(a1[6] + 16))();
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }
}

void __destroy_helper_block_e8_32c39_ZTSNSt3__18weak_ptrIN3ctu9XpcClientEEE48c44_ZTSN8dispatch5blockIU13block_pointerFvPvEEE56c16_ZTSN3xpc5arrayE(uint64_t a1)
{
  xpc_release(*(a1 + 56));
  *(a1 + 56) = 0;
  v2 = *(a1 + 48);
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

CellularUsagePolicyClient **network_usage_policy_destroy_client(CellularUsagePolicyClient **result)
{
  if (result)
  {
    v1 = result;
    CellularUsagePolicyClient::shutdown(*result);
    v2 = v1[1];
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }

    JUMPOUT(0x29C290EA0);
  }

  return result;
}

uint64_t network_usage_policy_get_datausage_policies(uint64_t *a1, void *a2)
{
  if (a1 && (v2 = *a1) != 0)
  {
    return CellularUsagePolicyClient::getDataUsagePolicies(v2, a2);
  }

  else
  {
    return 22;
  }
}

uint64_t network_usage_policy_get_for_bundle(uint64_t *a1, char *a2, const void *a3)
{
  if (a1 && a2 && (v3 = *a1) != 0)
  {
    return CellularUsagePolicyClient::getDataUsagePolicy(v3, a2, a3);
  }

  else
  {
    return 22;
  }
}

uint64_t network_usage_policy_get_cell_data_allowed_from_policy(xpc_object_t object)
{
  v1 = object;
  if (object)
  {
    xpc_retain(object);
    v8 = v1;
    v2 = MEMORY[0x29C291100](v1);
    v3 = MEMORY[0x29EDCAA00];
    if (v2 == MEMORY[0x29EDCAA00])
    {
      xpc_retain(v1);
      v4 = v1;
    }

    else
    {
      v4 = xpc_null_create();
      v8 = v4;
    }

    xpc_release(v1);
    if (MEMORY[0x29C291100](v4) == v3)
    {
      v6[0] = &v8;
      v6[1] = "kCUPolicyKeyDataAllowed";
      xpc::dict::object_proxy::operator xpc::object(v6, &objecta);
      v1 = xpc::dyn_cast_or_default();
      xpc_release(objecta);
      v4 = v8;
    }

    else
    {
      v1 = 1;
    }

    xpc_release(v4);
  }

  return v1;
}

void sub_2987221A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, xpc_object_t a12)
{
  xpc_release(object);
  xpc_release(a12);
  _Unwind_Resume(a1);
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

uint64_t network_usage_policy_get_WiFi_data_allowed_from_policy(xpc_object_t object)
{
  v1 = object;
  if (object)
  {
    xpc_retain(object);
    v8 = v1;
    v2 = MEMORY[0x29C291100](v1);
    v3 = MEMORY[0x29EDCAA00];
    if (v2 == MEMORY[0x29EDCAA00])
    {
      xpc_retain(v1);
      v4 = v1;
    }

    else
    {
      v4 = xpc_null_create();
      v8 = v4;
    }

    xpc_release(v1);
    if (MEMORY[0x29C291100](v4) == v3)
    {
      v6[0] = &v8;
      v6[1] = "kCUPolicyKeyWiFiAllowed";
      xpc::dict::object_proxy::operator xpc::object(v6, &objecta);
      v1 = xpc::dyn_cast_or_default();
      xpc_release(objecta);
      v4 = v8;
    }

    else
    {
      v1 = 1;
    }

    xpc_release(v4);
  }

  return v1;
}

void sub_29872230C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, xpc_object_t a12)
{
  xpc_release(object);
  xpc_release(a12);
  _Unwind_Resume(a1);
}

uint64_t network_usage_policy_get_first_use_flow_performed_from_policy(xpc_object_t object)
{
  v1 = object;
  if (object)
  {
    xpc_retain(object);
    v8 = v1;
    v2 = MEMORY[0x29C291100](v1);
    v3 = MEMORY[0x29EDCAA00];
    if (v2 == MEMORY[0x29EDCAA00])
    {
      xpc_retain(v1);
      v4 = v1;
    }

    else
    {
      v4 = xpc_null_create();
      v8 = v4;
    }

    xpc_release(v1);
    if (MEMORY[0x29C291100](v4) == v3)
    {
      v6[0] = &v8;
      v6[1] = "kCUPolicyFirstNetworkUseFlowPerformed";
      xpc::dict::object_proxy::operator xpc::object(v6, &objecta);
      v1 = xpc::dyn_cast_or_default();
      xpc_release(objecta);
      v4 = v8;
    }

    else
    {
      v1 = 1;
    }

    xpc_release(v4);
  }

  return v1;
}

void sub_298722430(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, xpc_object_t a12)
{
  xpc_release(object);
  xpc_release(a12);
  _Unwind_Resume(a1);
}

char *network_usage_policy_get_bundle_from_policy(char *object)
{
  string_ptr = object;
  if (object)
  {
    xpc_retain(object);
    v8 = string_ptr;
    v2 = MEMORY[0x29C291100](string_ptr);
    v3 = MEMORY[0x29EDCAA00];
    if (v2 == MEMORY[0x29EDCAA00])
    {
      xpc_retain(string_ptr);
      v4 = string_ptr;
    }

    else
    {
      v4 = xpc_null_create();
      v8 = v4;
    }

    xpc_release(string_ptr);
    if (MEMORY[0x29C291100](v4) == v3)
    {
      v6[0] = &v8;
      v6[1] = "kCUPolicyKeyBundleID";
      xstring = 0;
      xpc::dict::object_proxy::operator xpc::object(v6, &xstring);
      if (MEMORY[0x29C291100](xstring) != MEMORY[0x29EDCAA40] && MEMORY[0x29C291100](xstring) == MEMORY[0x29EDCAA50])
      {
        string_ptr = xpc_string_get_string_ptr(xstring);
      }

      else
      {
        string_ptr = 0;
      }

      xpc_release(xstring);
      v4 = v8;
    }

    else
    {
      string_ptr = 0;
    }

    xpc_release(v4);
  }

  return string_ptr;
}

uint64_t perform_first_network_use_flow(uint64_t *a1, char *a2, char a3, const void *a4)
{
  if (a1 && a2 && (v4 = *a1) != 0)
  {
    return CellularUsagePolicyClient::performFirstNetworkUseFlow(v4, a2, a3, a4);
  }

  else
  {
    return 22;
  }
}

void CellularUsagePolicyClient::shutdown(CellularUsagePolicyClient *this)
{
  v3[0] = MEMORY[0x29EDCA5F8];
  v3[1] = 0x40000000;
  v3[2] = ___ZN25CellularUsagePolicyClient8shutdownEv_block_invoke;
  v3[3] = &__block_descriptor_tmp_3;
  v3[4] = this;
  v4 = v3;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableINS_9XpcClientEE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  block[3] = &__block_descriptor_tmp_50;
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

void CellularUsagePolicyClient::shutdown_sync(xpc_connection_t *this)
{
  CellularUsagePolicyClient::checkout_sync(this);
  v2 = *(this + 20);
  if (v2 != -1)
  {
    notify_cancel(v2);
  }

  v3 = this[12];
  this[12] = 0;
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = this[11];
  this[11] = 0;
  if (v4)
  {
    dispatch_release(v4);
  }

  object = xpc_null_create();
  ctu::XpcClient::setServer_sync();
  xpc_release(object);
}

uint64_t CellularUsagePolicyClient::performFirstNetworkUseFlow(uint64_t a1, char *a2, char a3, const void *a4)
{
  result = 22;
  if (!a2 || !a4)
  {
    return result;
  }

  memset(&v15, 0, sizeof(v15));
  std::string::basic_string[abi:ne200100]<0>(&v15, a2);
  v8 = _Block_copy(a4);
  v11[0] = MEMORY[0x29EDCA5F8];
  v11[1] = 1174405120;
  v11[2] = ___ZN25CellularUsagePolicyClient26performFirstNetworkUseFlowEPKcbU13block_pointerFvbE_block_invoke;
  v11[3] = &__block_descriptor_tmp_15;
  v11[4] = a1;
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v15.__r_.__value_.__l.__data_, v15.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v15;
  }

  v14 = a3;
  if (v8)
  {
    v9 = _Block_copy(v8);
  }

  else
  {
    v9 = 0;
  }

  aBlock = v9;
  v18 = 0;
  v19 = 0;
  std::shared_ptr<ctu::XpcClient const>::shared_ptr[abi:ne200100]<ctu::XpcClient,0>(&v18, (a1 + 8));
  v10 = *(a1 + 24);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZNK3ctu20SharedSynchronizableINS_9XpcClientEE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_2A1F03748;
  block[5] = v18;
  v17 = v19;
  if (v19)
  {
    atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v11;
  dispatch_async(v10, block);
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (!v8)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (v8)
  {
LABEL_21:
    _Block_release(v8);
  }

LABEL_22:
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_298722934(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (v24)
  {
    _Block_release(v24);
  }

  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN25CellularUsagePolicyClient26performFirstNetworkUseFlowEPKcbU13block_pointerFvbE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_29871F000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "Performing first network use flow", buf, 2u);
  }

  v17 = 0;
  xpc::dict_creator::dict_creator(buf);
  xpc::dict_creator::operator()<char const*>("kCUPerformFirstNetworkUseFlow", buf, "kRequest", &v16);
  xpc_release(*buf);
  v17 = v16;
  v16 = xpc_null_create();
  xpc_release(v16);
  v3 = (a1 + 40);
  if (*(a1 + 63) < 0)
  {
    v3 = *v3;
  }

  v14 = xpc_string_create(v3);
  if (!v14)
  {
    v14 = xpc_null_create();
  }

  *buf = &v17;
  v13 = "kCUPolicyKeyBundleID";
  xpc::dict::object_proxy::operator=(buf, &v14, &v15);
  xpc_release(v15);
  v15 = 0;
  xpc_release(v14);
  v14 = 0;
  v10 = xpc_BOOL_create(*(a1 + 72));
  if (!v10)
  {
    v10 = xpc_null_create();
  }

  *buf = &v17;
  v13 = "kCUIgnoreFGApp";
  xpc::dict::object_proxy::operator=(buf, &v10, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v10);
  v10 = 0;
  v4 = *(v2 + 40);
  v5 = v17;
  v6 = *(v2 + 24);
  handler[0] = MEMORY[0x29EDCA5F8];
  handler[1] = 1174405120;
  handler[2] = ___ZN25CellularUsagePolicyClient26performFirstNetworkUseFlowEPKcbU13block_pointerFvbE_block_invoke_8;
  handler[3] = &__block_descriptor_tmp_14;
  v7 = *(a1 + 64);
  if (v7)
  {
    v7 = _Block_copy(v7);
  }

  aBlock = v7;
  xpc_connection_send_message_with_reply(v4, v5, v6, handler);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  xpc_release(v17);
}

void sub_298722B74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *aBlock)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  xpc_release(*(v14 - 40));
  _Unwind_Resume(a1);
}

void ___ZN25CellularUsagePolicyClient26performFirstNetworkUseFlowEPKcbU13block_pointerFvbE_block_invoke_8(uint64_t a1, xpc_object_t object)
{
  if (object)
  {
    v3 = object;
    xpc_retain(object);
    v13 = v3;
  }

  else
  {
    v3 = xpc_null_create();
    v13 = v3;
    if (!v3)
    {
      v4 = xpc_null_create();
      v3 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x29C291100](v3) == MEMORY[0x29EDCAA00])
  {
    xpc_retain(v3);
    goto LABEL_9;
  }

  v4 = xpc_null_create();
LABEL_8:
  v13 = v4;
LABEL_9:
  xpc_release(v3);
  v11[0] = &v13;
  v11[1] = "kCUFirstNetworkUseFlowPeformedResult";
  xpc::dict::object_proxy::operator xpc::object(v11, &v12);
  v5 = xpc::dyn_cast_or_default();
  xpc_release(v12);
  global_queue = dispatch_get_global_queue(0, 0);
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 1174405120;
  v8[2] = ___ZN25CellularUsagePolicyClient26performFirstNetworkUseFlowEPKcbU13block_pointerFvbE_block_invoke_2;
  v8[3] = &__block_descriptor_tmp_10;
  v7 = *(a1 + 32);
  if (v7)
  {
    v7 = _Block_copy(v7);
  }

  aBlock = v7;
  v10 = v5;
  dispatch_async(global_queue, v8);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  xpc_release(v13);
}

void sub_298722D24(_Unwind_Exception *a1)
{
  xpc_release(*(v1 - 48));
  xpc_release(*(v1 - 40));
  _Unwind_Resume(a1);
}

void *__copy_helper_block_e8_32c43_ZTSN8dispatch5blockIU13block_pointerFvbEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 32) = result;
  return result;
}

void __destroy_helper_block_e8_32c43_ZTSN8dispatch5blockIU13block_pointerFvbEEE(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    _Block_release(v1);
  }
}

void *__copy_helper_block_e8_40c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE64c43_ZTSN8dispatch5blockIU13block_pointerFvbEEE(uint64_t a1, uint64_t a2)
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

  result = *(a2 + 64);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 64) = result;
  return result;
}

void __destroy_helper_block_e8_40c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE64c43_ZTSN8dispatch5blockIU13block_pointerFvbEEE(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    _Block_release(v2);
  }

  if (*(a1 + 63) < 0)
  {
    v3 = *(a1 + 40);

    operator delete(v3);
  }
}

uint64_t CellularUsagePolicyClient::getDataUsagePolicies(uint64_t a1, void *aBlock)
{
  if (!aBlock)
  {
    return 22;
  }

  v3 = _Block_copy(aBlock);
  v4 = v3;
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 1174405120;
  v8[2] = ___ZN25CellularUsagePolicyClient20getDataUsagePoliciesEU13block_pointerFvPvE_block_invoke;
  v8[3] = &__block_descriptor_tmp_20;
  v8[4] = a1;
  if (v3)
  {
    v5 = _Block_copy(v3);
  }

  else
  {
    v5 = 0;
  }

  aBlocka = v5;
  v12 = 0;
  v13 = 0;
  std::shared_ptr<ctu::XpcClient const>::shared_ptr[abi:ne200100]<ctu::XpcClient,0>(&v12, (a1 + 8));
  v7 = *(a1 + 24);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZNK3ctu20SharedSynchronizableINS_9XpcClientEE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_2A1F03748;
  block[5] = v12;
  v11 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v8;
  dispatch_async(v7, block);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  if (aBlocka)
  {
    _Block_release(aBlocka);
  }

  if (v4)
  {
    _Block_release(v4);
  }

  return 0;
}

void ___ZN25CellularUsagePolicyClient20getDataUsagePoliciesEU13block_pointerFvPvE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3[0] = MEMORY[0x29EDCA5F8];
  v3[1] = 1174405120;
  v3[2] = ___ZN25CellularUsagePolicyClient20getDataUsagePoliciesEU13block_pointerFvPvE_block_invoke_2;
  v3[3] = &__block_descriptor_tmp_17;
  v3[4] = v2;
  if (v1)
  {
    v1 = _Block_copy(v1);
  }

  aBlock = v1;
  CellularUsagePolicyClient::fetchDataUsagePoliciesIfNeeded_sync(v2, v3);
  if (aBlock)
  {
    _Block_release(aBlock);
  }
}

void sub_298723088(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *aBlock)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  _Unwind_Resume(exception_object);
}

void CellularUsagePolicyClient::fetchDataUsagePoliciesIfNeeded_sync(uint64_t a1, void *aBlock)
{
  if (*(a1 + 128) == 1)
  {
    v3 = aBlock[2];

    v3(aBlock, 1);
  }

  else
  {
    if (aBlock)
    {
      v5 = _Block_copy(aBlock);
    }

    else
    {
      v5 = 0;
    }

    v6 = xpc::dict_creator::dict_creator(&v12);
    xpc::dict_creator::operator()<char const*>("kCUGetNetworkAccessPolicies", v6, "kRequest", &v11);
    xpc_release(v12);
    v7 = v11;
    v11 = xpc_null_create();
    xpc_release(v11);
    v8 = *(a1 + 40);
    v9 = *(a1 + 24);
    v10[0] = MEMORY[0x29EDCA5F8];
    v10[1] = 0x40000000;
    v10[2] = ___ZN25CellularUsagePolicyClient35fetchDataUsagePoliciesIfNeeded_syncEU13block_pointerFvbE_block_invoke;
    v10[3] = &unk_29EEA9628;
    v10[4] = aBlock;
    v10[5] = a1;
    xpc_connection_send_message_with_reply(v8, v7, v9, v10);
    xpc_release(v7);
    if (v5)
    {
      _Block_release(v5);
    }
  }
}

void sub_2987231E4(_Unwind_Exception *a1)
{
  xpc_release(v2);
  if (v1)
  {
    _Block_release(v1);
  }

  _Unwind_Resume(a1);
}

void ___ZN25CellularUsagePolicyClient20getDataUsagePoliciesEU13block_pointerFvPvE_block_invoke_2(uint64_t a1, char a2)
{
  if (a2)
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    if (v3)
    {
      v5 = _Block_copy(v3);
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    CellularUsagePolicyClient::getDataUsagePolicies_sync(v4, &v6);
    if (v5)
    {
      _Block_release(v5);
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      ___ZN25CellularUsagePolicyClient20getDataUsagePoliciesEU13block_pointerFvPvE_block_invoke_2_cold_1();
    }

    xpc_null_create();
    (*(*(a1 + 40) + 16))();
  }
}

void sub_2987232B8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    _Block_release(v1);
  }

  _Unwind_Resume(exception_object);
}

void CellularUsagePolicyClient::getDataUsagePolicies_sync(uint64_t a1, const void **a2)
{
  object = xpc_null_create();
  if (*(a1 + 120))
  {
    v4 = xpc_array_create(0, 0);
    if (v4 || (v4 = xpc_null_create()) != 0)
    {
      if (MEMORY[0x29C291100](v4) == MEMORY[0x29EDCA9E0])
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
    v6 = xpc_null_create();
    v7 = object;
    object = v5;
    xpc_release(v7);
    xpc_release(v6);
    std::__copy_impl::operator()[abi:ne200100]<std::__tree_const_iterator<xpc::dict,std::__tree_node<xpc::dict,void *> *,long>,std::__tree_const_iterator<xpc::dict,std::__tree_node<xpc::dict,void *> *,long>,std::back_insert_iterator<xpc::array>>(&v14, *(a1 + 104), (a1 + 112), &object);
  }

  global_queue = dispatch_get_global_queue(0, 0);
  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 1174405120;
  v10[2] = ___ZN25CellularUsagePolicyClient25getDataUsagePolicies_syncEN8dispatch5blockIU13block_pointerFvPvEEE_block_invoke;
  v10[3] = &__block_descriptor_tmp_24;
  if (*a2)
  {
    v9 = _Block_copy(*a2);
  }

  else
  {
    v9 = 0;
  }

  aBlock = v9;
  v12 = object;
  if (object)
  {
    xpc_retain(object);
  }

  else
  {
    v12 = xpc_null_create();
  }

  dispatch_async(global_queue, v10);
  xpc_release(v12);
  v12 = 0;
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  xpc_release(object);
}

void *__copy_helper_block_e8_40c44_ZTSN8dispatch5blockIU13block_pointerFvPvEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 40) = result;
  return result;
}

void __destroy_helper_block_e8_40c44_ZTSN8dispatch5blockIU13block_pointerFvPvEEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    _Block_release(v1);
  }
}

void ___ZN25CellularUsagePolicyClient35fetchDataUsagePoliciesIfNeeded_syncEU13block_pointerFvbE_block_invoke(uint64_t a1, xpc_object_t object)
{
  v15 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 40);
  objecta = 0;
  v4 = MEMORY[0x29EDCAA00];
  if (object)
  {
    v5 = object;
    xpc_retain(object);
    objecta = v5;
  }

  else
  {
    v5 = xpc_null_create();
    objecta = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x29C291100](v5) == v4)
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  objecta = v6;
LABEL_9:
  xpc_release(v5);
  if (MEMORY[0x29C291100](objecta) == v4)
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
    {
      xpc::object::to_string(__p, &objecta);
      v7 = v12 >= 0 ? __p : __p[0];
      *buf = 136315138;
      *&buf[4] = v7;
      _os_log_impl(&dword_29871F000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "Initial network access policies msg received from server: %s", buf, 0xCu);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }
    }

    *buf = 0;
    __p[0] = &objecta;
    __p[1] = "kDataUsagePolicies";
    xpc::dict::object_proxy::operator xpc::array(__p, buf);
    if (MEMORY[0x29C291100](*buf) == MEMORY[0x29EDCA9E0])
    {
      v8 = *buf;
      v10 = *buf;
      if (*buf)
      {
        xpc_retain(*buf);
      }

      else
      {
        v8 = xpc_null_create();
        v10 = v8;
      }

      CellularUsagePolicyClient::handleDataUsagePolicies_sync(v3, &v10);
      xpc_release(v8);
      v10 = 0;
    }

    (*(*(a1 + 32) + 16))();
    xpc_release(*buf);
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }

  xpc_release(objecta);
  v9 = *MEMORY[0x29EDCA608];
}

void sub_298723720(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, xpc_object_t a14, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

xpc_object_t __copy_helper_block_e8_32c44_ZTSN8dispatch5blockIU13block_pointerFvPvEEE40c16_ZTSN3xpc5arrayE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v5 = _Block_copy(v4);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a2 + 40);
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  if (v6)
  {
    return xpc_retain(v6);
  }

  result = xpc_null_create();
  *(a1 + 40) = result;
  return result;
}

void __destroy_helper_block_e8_32c44_ZTSN8dispatch5blockIU13block_pointerFvPvEEE40c16_ZTSN3xpc5arrayE(uint64_t a1)
{
  xpc_release(*(a1 + 40));
  *(a1 + 40) = 0;
  v2 = *(a1 + 32);
  if (v2)
  {
    _Block_release(v2);
  }
}

void CellularUsagePolicyClient::getDataUsagePolicy_sync(uint64_t a1, void **a2, const void **a3)
{
  v4 = *(a1 + 104);
  v5 = (a1 + 112);
  if (v4 != (a1 + 112))
  {
    while (!xpc_dictionary_get_value(v4[4], "kCUPolicyKeyBundleID"))
    {
LABEL_22:
      v14 = v4[1];
      if (v14)
      {
        do
        {
          v15 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        do
        {
          v15 = v4[2];
          v16 = *v15 == v4;
          v4 = v15;
        }

        while (!v16);
      }

      v4 = v15;
      if (v15 == v5)
      {
        v4 = v5;
        goto LABEL_29;
      }
    }

    __p = 0;
    v32 = 0;
    v33 = 0;
    v29[0] = v4 + 4;
    v29[1] = "kCUPolicyKeyBundleID";
    xpc::dict::object_proxy::operator xpc::object(v29, &object);
    v34 = 0;
    v35 = 0;
    v36 = 0;
    xpc::dyn_cast_or_default();
    if (SHIBYTE(v36) < 0)
    {
      operator delete(v34);
    }

    xpc_release(object);
    v7 = SHIBYTE(v33);
    if (v33 >= 0)
    {
      v8 = HIBYTE(v33);
    }

    else
    {
      v8 = v32;
    }

    v9 = *(a3 + 23);
    v10 = v9;
    if (v9 < 0)
    {
      v9 = a3[1];
    }

    if (v8 == v9)
    {
      if (v33 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if (v10 >= 0)
      {
        v12 = a3;
      }

      else
      {
        v12 = *a3;
      }

      v13 = memcmp(p_p, v12, v8) == 0;
      if ((v7 & 0x80000000) == 0)
      {
LABEL_21:
        if (v13)
        {
          goto LABEL_29;
        }

        goto LABEL_22;
      }
    }

    else
    {
      v13 = 0;
      if ((SHIBYTE(v33) & 0x80000000) == 0)
      {
        goto LABEL_21;
      }
    }

    operator delete(__p);
    goto LABEL_21;
  }

LABEL_29:
  v17 = xpc_null_create();
  v18 = v17;
  if (v4 == v5)
  {
    v21 = v17;
  }

  else
  {
    v19 = xpc_copy(v4[4]);
    if (v19 || (v19 = xpc_null_create()) != 0)
    {
      if (MEMORY[0x29C291100](v19) == MEMORY[0x29EDCAA00])
      {
        xpc_retain(v19);
        v20 = v19;
      }

      else
      {
        v20 = xpc_null_create();
      }
    }

    else
    {
      v20 = xpc_null_create();
      v19 = 0;
    }

    xpc_release(v19);
    v22 = xpc_array_create(0, 0);
    if (v22 || (v22 = xpc_null_create()) != 0)
    {
      if (MEMORY[0x29C291100](v22) == MEMORY[0x29EDCA9E0])
      {
        xpc_retain(v22);
        v21 = v22;
      }

      else
      {
        v21 = xpc_null_create();
      }
    }

    else
    {
      v21 = xpc_null_create();
      v22 = 0;
    }

    xpc_release(v22);
    v23 = xpc_null_create();
    xpc_release(v18);
    xpc_release(v23);
    xpc_array_append_value(v21, v20);
    xpc_release(v20);
  }

  global_queue = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZNK25CellularUsagePolicyClient23getDataUsagePolicy_syncEN8dispatch5blockIU13block_pointerFvPvEEERKNSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEE_block_invoke;
  block[3] = &__block_descriptor_tmp_27;
  v25 = *a2;
  if (*a2)
  {
    v25 = _Block_copy(v25);
  }

  aBlock = v25;
  v28 = v21;
  if (v21)
  {
    xpc_retain(v21);
  }

  else
  {
    v28 = xpc_null_create();
  }

  dispatch_async(global_queue, block);
  xpc_release(v28);
  v28 = 0;
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  xpc_release(v21);
}

void sub_298723B74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, xpc_object_t object)
{
  xpc_release(v19);
  xpc_release(v18);
  _Unwind_Resume(a1);
}

uint64_t CellularUsagePolicyClient::getDataUsagePolicy(uint64_t a1, char *a2, const void *a3)
{
  result = 22;
  if (a2 && a3)
  {
    memset(&v13, 0, sizeof(v13));
    std::string::basic_string[abi:ne200100]<0>(&v13, a2);
    v6 = _Block_copy(a3);
    v7 = v6;
    v10[0] = MEMORY[0x29EDCA5F8];
    v10[1] = 1174405120;
    v10[2] = ___ZN25CellularUsagePolicyClient18getDataUsagePolicyEPKcU13block_pointerFvPvE_block_invoke;
    v10[3] = &__block_descriptor_tmp_31;
    v10[4] = a1;
    if (v6)
    {
      v8 = _Block_copy(v6);
    }

    else
    {
      v8 = 0;
    }

    aBlock = v8;
    if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v13.__r_.__value_.__l.__data_, v13.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v13;
    }

    v16 = 0;
    v17 = 0;
    std::shared_ptr<ctu::XpcClient const>::shared_ptr[abi:ne200100]<ctu::XpcClient,0>(&v16, (a1 + 8));
    v9 = *(a1 + 24);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZNK3ctu20SharedSynchronizableINS_9XpcClientEE15execute_wrappedEU13block_pointerFvvE_block_invoke;
    block[3] = &unk_2A1F03748;
    block[5] = v16;
    v15 = v17;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    block[4] = v10;
    dispatch_async(v9, block);
    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }

    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v17);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (aBlock)
    {
      _Block_release(aBlock);
    }

    if (v7)
    {
      _Block_release(v7);
    }

    if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v13.__r_.__value_.__l.__data_);
    }

    return 0;
  }

  return result;
}

void sub_298723DCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *aBlock, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v24)
  {
    _Block_release(v24);
  }

  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN25CellularUsagePolicyClient18getDataUsagePolicyEPKcU13block_pointerFvPvE_block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 1174405120;
  v4[2] = ___ZN25CellularUsagePolicyClient18getDataUsagePolicyEPKcU13block_pointerFvPvE_block_invoke_2;
  v4[3] = &__block_descriptor_tmp_28;
  v4[4] = v3;
  if (v2)
  {
    v2 = _Block_copy(v2);
  }

  aBlock = v2;
  if (*(a1 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a1 + 48), *(a1 + 56));
  }

  else
  {
    __p = *(a1 + 48);
  }

  CellularUsagePolicyClient::fetchDataUsagePoliciesIfNeeded_sync(v3, v4);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }
}

void sub_298723EF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *aBlock, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN25CellularUsagePolicyClient18getDataUsagePolicyEPKcU13block_pointerFvPvE_block_invoke_2(uint64_t a1, char a2)
{
  if (a2)
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    if (v3)
    {
      v5 = _Block_copy(v3);
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    CellularUsagePolicyClient::getDataUsagePolicy_sync(v4, &v6, (a1 + 48));
    if (v5)
    {
      _Block_release(v5);
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_ERROR))
    {
      ___ZN25CellularUsagePolicyClient20getDataUsagePoliciesEU13block_pointerFvPvE_block_invoke_2_cold_1();
    }

    xpc_null_create();
    (*(*(a1 + 40) + 16))();
  }
}

void sub_298723FDC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    _Block_release(v1);
  }

  _Unwind_Resume(exception_object);
}

void __copy_helper_block_e8_40c44_ZTSN8dispatch5blockIU13block_pointerFvPvEEE48c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(std::string *a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  if (v4)
  {
    v4 = _Block_copy(v4);
  }

  a1[1].__r_.__value_.__r.__words[2] = v4;
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
}

void sub_298724054(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 40);
  if (v3)
  {
    _Block_release(v3);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_40c44_ZTSN8dispatch5blockIU13block_pointerFvPvEEE48c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1)
{
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  v2 = *(a1 + 40);
  if (v2)
  {
    _Block_release(v2);
  }
}

xpc_object_t std::copy[abi:ne200100]<xpc::array::iterator,std::back_insert_iterator<xpc::array>>(void **a1, void **a2, xpc_object_t *a3)
{
  v6 = *a1;
  v11[0] = v6;
  if (v6)
  {
    xpc_retain(v6);
  }

  else
  {
    v11[0] = xpc_null_create();
  }

  v11[1] = a1[1];
  v7 = *a2;
  v10[0] = v7;
  if (v7)
  {
    xpc_retain(v7);
  }

  else
  {
    v10[0] = xpc_null_create();
  }

  v10[1] = a2[1];
  std::__copy[abi:ne200100]<xpc::array::iterator,xpc::array::iterator,std::back_insert_iterator<xpc::array>>(v11, v10, a3, object);
  v8 = object[2];
  xpc_release(object[0]);
  object[0] = 0;
  xpc_release(v10[0]);
  v10[0] = 0;
  xpc_release(v11[0]);
  return v8;
}

void sub_29872417C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, uint64_t a11, xpc_object_t a12)
{
  xpc_release(object);
  xpc_release(a12);
  _Unwind_Resume(a1);
}

void CellularUsagePolicyClient::checkout_sync(xpc_connection_t *this)
{
  v9 = *MEMORY[0x29EDCA608];
  v7 = 0;
  xpc::dict_creator::dict_creator(object);
  xpc::dict_creator::operator()<char const*>("kUnregisterCUPolicyClient", object, "kRequest", buf);
  xpc_release(object[0]);
  v2 = *buf;
  v7 = *buf;
  *buf = xpc_null_create();
  xpc_release(*buf);
  xpc_connection_send_message(this[5], v2);
  if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
  {
    xpc::object::to_string(object, &v7);
    if (v6 >= 0)
    {
      v3 = object;
    }

    else
    {
      v3 = object[0];
    }

    *buf = 136315138;
    *&buf[4] = v3;
    _os_log_impl(&dword_29871F000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "Checking out with server: %s", buf, 0xCu);
    if (v6 < 0)
    {
      operator delete(object[0]);
    }

    v2 = v7;
  }

  xpc_release(v2);
  v4 = *MEMORY[0x29EDCA608];
}

void CellularUsagePolicyClient::handleServerError_sync(uint64_t a1, void *a2)
{
  if (*a2 == MEMORY[0x29EDCA9B8])
  {
    v5 = v2;
    v6 = v3;
    if (os_log_type_enabled(MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_29871F000, MEMORY[0x29EDCA988], OS_LOG_TYPE_DEFAULT, "Connection interrupted", v4, 2u);
    }
  }
}

void CellularUsagePolicyClient::~CellularUsagePolicyClient(xpc_object_t **this)
{
  *this = &unk_2A1F039D0;
  std::__tree<xpc::dict,CellularUsagePolicyClient::policy_cmp_by_bundleId,std::allocator<xpc::dict>>::destroy((this + 13), this[14]);
  v2 = this[12];
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = this[11];
  if (v3)
  {
    dispatch_release(v3);
  }

  MEMORY[0x29C290DC0](this + 9);

  ctu::XpcClient::~XpcClient(this);
}

{
  *this = &unk_2A1F039D0;
  std::__tree<xpc::dict,CellularUsagePolicyClient::policy_cmp_by_bundleId,std::allocator<xpc::dict>>::destroy((this + 13), this[14]);
  v2 = this[12];
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = this[11];
  if (v3)
  {
    dispatch_release(v3);
  }

  MEMORY[0x29C290DC0](this + 9);
  ctu::XpcClient::~XpcClient(this);

  JUMPOUT(0x29C290EA0);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_29EEA95D8, MEMORY[0x29EDC9348]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x29EDC95D8] + 16);
  return result;
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

void *std::__copy_impl::operator()[abi:ne200100]<std::__tree_const_iterator<xpc::dict,std::__tree_node<xpc::dict,void *> *,long>,std::__tree_const_iterator<xpc::dict,std::__tree_node<xpc::dict,void *> *,long>,std::back_insert_iterator<xpc::array>>(uint64_t a1, void *a2, void *a3, xpc_object_t *a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v7 = v5[4];
      if (v7)
      {
        xpc_retain(v5[4]);
      }

      else
      {
        v7 = xpc_null_create();
      }

      xpc_array_append_value(*a4, v7);
      xpc_release(v7);
      v8 = v5[1];
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
          v9 = v5[2];
          v10 = *v9 == v5;
          v5 = v9;
        }

        while (!v10);
      }

      v5 = v9;
    }

    while (v9 != a3);
    return a3;
  }

  return v5;
}

void std::__copy[abi:ne200100]<xpc::array::iterator,xpc::array::iterator,std::back_insert_iterator<xpc::array>>(xpc_object_t *a1@<X0>, xpc_object_t *a2@<X1>, xpc_object_t *a3@<X2>, void *a4@<X8>)
{
  v9[0] = *a1;
  *a1 = xpc_null_create();
  v9[1] = a1[1];
  object[0] = *a2;
  *a2 = xpc_null_create();
  object[1] = a2[1];
  std::__copy_move_unwrap_iters[abi:ne200100]<std::__copy_impl,xpc::array::iterator,xpc::array::iterator,std::back_insert_iterator<xpc::array>,0>(v9, object, a3, a4);
  xpc_release(object[0]);
  object[0] = 0;
  xpc_release(v9[0]);
}

void sub_298724764(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, uint64_t a10, xpc_object_t a11)
{
  xpc_release(object);
  xpc_release(a11);
  _Unwind_Resume(a1);
}

void std::__copy_move_unwrap_iters[abi:ne200100]<std::__copy_impl,xpc::array::iterator,xpc::array::iterator,std::back_insert_iterator<xpc::array>,0>(xpc_object_t *a1@<X0>, xpc_object_t *a2@<X1>, xpc_object_t *a3@<X2>, void *a4@<X8>)
{
  v21 = 0u;
  v22 = 0u;
  v8 = *a1;
  v20[0] = v8;
  if (v8)
  {
    xpc_retain(v8);
  }

  else
  {
    v20[0] = xpc_null_create();
  }

  v20[1] = a1[1];
  v19[0] = *a2;
  *a2 = xpc_null_create();
  v19[1] = a2[1];
  std::__unwrap_range[abi:ne200100]<xpc::array::iterator,xpc::array::iterator>(v20, v19, &v21);
  xpc_release(v19[0]);
  v19[0] = 0;
  xpc_release(v20[0]);
  v20[0] = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v15[0] = v21;
  *&v21 = xpc_null_create();
  v15[1] = *(&v21 + 1);
  object[0] = v22;
  *&v22 = xpc_null_create();
  object[1] = *(&v22 + 1);
  std::__copy_impl::operator()[abi:ne200100]<xpc::array::iterator,xpc::array::iterator,std::back_insert_iterator<xpc::array>>(v15, object, a3, &v16);
  xpc_release(object[0]);
  object[0] = 0;
  xpc_release(v15[0]);
  v15[0] = 0;
  v12[0] = *a1;
  *a1 = xpc_null_create();
  v12[1] = a1[1];
  v11[0] = v16;
  v16 = xpc_null_create();
  v11[1] = v17;
  std::__rewrap_range[abi:ne200100]<xpc::array::iterator,xpc::array::iterator,xpc::array::iterator>(v12, v11, v13);
  v9 = v18;
  *a4 = v13[0];
  v10 = xpc_null_create();
  v13[0] = v10;
  a4[1] = v13[1];
  a4[2] = v9;
  xpc_release(v10);
  v13[0] = 0;
  xpc_release(v11[0]);
  v11[0] = 0;
  xpc_release(v12[0]);
  v12[0] = 0;
  xpc_release(v16);
  xpc_release(v22);
  *&v22 = 0;
  xpc_release(v21);
}

void sub_298724958(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, uint64_t a11, xpc_object_t a12, uint64_t a13, uint64_t a14, uint64_t a15, xpc_object_t a16, uint64_t a17, xpc_object_t a18, uint64_t a19, xpc_object_t a20)
{
  xpc_release(object);
  xpc_release(a12);
  xpc_release(a20);
  std::pair<xpc::array::iterator,xpc::array::iterator>::~pair((v20 - 64));
  _Unwind_Resume(a1);
}

xpc_object_t *std::__copy_impl::operator()[abi:ne200100]<xpc::array::iterator,xpc::array::iterator,std::back_insert_iterator<xpc::array>>@<X0>(uint64_t a1@<X1>, void *a2@<X2>, xpc_object_t *a3@<X3>, xpc_object_t *a4@<X8>)
{
  v12 = a3;
  for (i = *(a1 + 8); i != a2[1] || *a1 != *a2; *(a1 + 8) = i)
  {
    v10[0] = a1;
    v10[1] = i;
    xpc::array::object_proxy::operator xpc::object(v10, &value);
    xpc_array_append_value(*a3, value);
    xpc_release(value);
    i = *(a1 + 8) + 1;
  }

  return std::pair<xpc::array::iterator,std::back_insert_iterator<xpc::array>>::pair[abi:ne200100]<xpc::array::iterator,std::back_insert_iterator<xpc::array>,0>(a4, a1, &v12);
}

xpc_object_t *std::pair<xpc::array::iterator,xpc::array::iterator>::~pair(xpc_object_t *a1)
{
  xpc_release(a1[2]);
  a1[2] = 0;
  xpc_release(*a1);
  *a1 = 0;
  return a1;
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

xpc_object_t *std::pair<xpc::array::iterator,std::back_insert_iterator<xpc::array>>::pair[abi:ne200100]<xpc::array::iterator,std::back_insert_iterator<xpc::array>,0>(xpc_object_t *a1, xpc_object_t *a2, xpc_object_t *a3)
{
  *a1 = *a2;
  *a2 = xpc_null_create();
  a1[1] = a2[1];
  a1[2] = *a3;
  return a1;
}

BOOL CellularUsagePolicyClient::policy_cmp_by_bundleId::operator()(uint64_t a1, void *a2, void *a3)
{
  v13 = 0;
  v14 = a2;
  v15 = "kCUPolicyKeyBundleID";
  xpc::dict::object_proxy::operator xpc::object(&v14, &v13);
  object = 0;
  v14 = a3;
  v15 = "kCUPolicyKeyBundleID";
  xpc::dict::object_proxy::operator xpc::object(&v14, &object);
  v4 = MEMORY[0x29C291100](v13);
  v5 = MEMORY[0x29EDCAA40];
  if (v4 == MEMORY[0x29EDCAA40] || MEMORY[0x29C291100](object) == v5)
  {
    v6 = 0;
  }

  else
  {
    v10[0] = 0;
    v10[1] = 0;
    v11 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    xpc::dyn_cast_or_default();
    if (SHIBYTE(v16) < 0)
    {
      operator delete(v14);
    }

    __p[0] = 0;
    __p[1] = 0;
    v9 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    xpc::dyn_cast_or_default();
    if (SHIBYTE(v16) < 0)
    {
      operator delete(v14);
    }

    v6 = (std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v10, __p) & 0x80u) != 0;
    if (SHIBYTE(v9) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v11) < 0)
    {
      operator delete(v10[0]);
    }
  }

  xpc_release(object);
  xpc_release(v13);
  return v6;
}

void sub_298724CE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, xpc_object_t object)
{
  if (*(v19 - 17) < 0)
  {
    operator delete(*(v19 - 40));
  }

  if (a18 < 0)
  {
    operator delete(__p);
  }

  xpc_release(object);
  xpc_release(*(v19 - 48));
  _Unwind_Resume(a1);
}

void *std::__tree<xpc::dict,CellularUsagePolicyClient::policy_cmp_by_bundleId,std::allocator<xpc::dict>>::__find_equal<xpc::dict>(uint64_t a1, void *a2, void *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v8 = v4;
        if (!CellularUsagePolicyClient::policy_cmp_by_bundleId::operator()(a1, a3, v4 + 4))
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_9;
        }
      }

      if (!CellularUsagePolicyClient::policy_cmp_by_bundleId::operator()(a1, v8 + 4, a3))
      {
        break;
      }

      v5 = v8 + 1;
      v4 = v8[1];
    }

    while (v4);
  }

  else
  {
    v8 = (a1 + 8);
  }

LABEL_9:
  *a2 = v8;
  return v5;
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

void std::__shared_ptr_pointer<CellularUsagePolicyClient *,std::shared_ptr<CellularUsagePolicyClient> ctu::SharedSynchronizable<ctu::XpcClient>::make_shared_ptr<CellularUsagePolicyClient>(CellularUsagePolicyClient*)::{lambda(CellularUsagePolicyClient *)#1},std::allocator<CellularUsagePolicyClient>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x29C290EA0);
}

uint64_t std::__shared_ptr_pointer<CellularUsagePolicyClient *,std::shared_ptr<CellularUsagePolicyClient> ctu::SharedSynchronizable<ctu::XpcClient>::make_shared_ptr<CellularUsagePolicyClient>(CellularUsagePolicyClient*)::{lambda(CellularUsagePolicyClient *)#1},std::allocator<CellularUsagePolicyClient>>::__get_deleter(uint64_t a1, uint64_t a2)
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

uint64_t std::shared_ptr<CellularUsagePolicyClient> ctu::SharedSynchronizable<ctu::XpcClient>::make_shared_ptr<CellularUsagePolicyClient>(CellularUsagePolicyClient*)::{lambda(CellularUsagePolicyClient*)#1}::operator() const(CellularUsagePolicyClient*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

void std::__throw_bad_weak_ptr[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x29EDC9540] + 16;
  __cxa_throw(exception, MEMORY[0x29EDC9428], MEMORY[0x29EDC9380]);
}

uint64_t xpc::dyn_cast_or_default()
{
  return MEMORY[0x2A1C6F440]();
}

{
  return MEMORY[0x2A1C6F450]();
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}