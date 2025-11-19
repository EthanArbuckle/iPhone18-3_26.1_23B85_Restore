void sub_2975C9574(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, xpc_object_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, xpc_object_t object, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *_ZNSt3__110unique_ptrIZZN16NetworkingModule28registerCommandHandlers_syncEvEUb1_E3__7NS_14default_deleteIS2_EEED1B8ne200100Ev(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      _Block_release(v3);
    }

    xpc_release(*(v2 + 8));
    operator delete(v2);
  }

  return a1;
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI16NetworkingModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb2_E3__8EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_(config::hw *a1)
{
  v22 = *MEMORY[0x29EDCA608];
  v2 = *a1;
  v3 = **a1;
  v4 = 3760250880;
  if (config::hw::watch(a1))
  {
    v5 = *MEMORY[0x29EDBE788];
    if (xpc_dictionary_get_value(v2[1], *MEMORY[0x29EDBE788]))
    {
      value = xpc_dictionary_get_value(v2[1], v5);
      *object = value;
      if (value)
      {
        xpc_retain(value);
      }

      else
      {
        *object = xpc_null_create();
      }

      *(v3 + 136) = xpc::dyn_cast_or_default(object, 0);
      xpc_release(*object);
      v7 = *(v3 + 104);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        if (*(v3 + 136))
        {
          v8 = "";
        }

        else
        {
          v8 = " not";
        }

        *object = 136315138;
        *&object[4] = v8;
        _os_log_impl(&dword_297476000, v7, OS_LOG_TYPE_DEFAULT, "#I Device is%s Bread paired", object, 0xCu);
      }

      if (*(v3 + 137) == 1)
      {
        NetworkingModule::applyBreadMode_sync(v3);
      }

      v4 = 0;
    }

    if (*(v3 + 136) == 1 && *(v3 + 137) == 1)
    {
      v9 = *MEMORY[0x29EDBE6F0];
      if (xpc_dictionary_get_value(v2[1], *MEMORY[0x29EDBE6F0]))
      {
        v10 = *MEMORY[0x29EDBE888];
        if (xpc_dictionary_get_value(v2[1], *MEMORY[0x29EDBE888]))
        {
          v11 = xpc_dictionary_get_value(v2[1], v9);
          *object = v11;
          if (v11)
          {
            xpc_retain(v11);
          }

          else
          {
            *object = xpc_null_create();
          }

          v12 = xpc::dyn_cast_or_default(object, 0);
          xpc_release(*object);
          v13 = xpc_dictionary_get_value(v2[1], v10);
          *object = v13;
          if (v13)
          {
            xpc_retain(v13);
          }

          else
          {
            *object = xpc_null_create();
          }

          v14 = xpc::dyn_cast_or_default(object, 0);
          xpc_release(*object);
          NetworkingModule::sendVisitInfo_sync(v3, v12, v14);
          v4 = 0;
        }
      }
    }
  }

  else
  {
    v4 = 3760250884;
  }

  v15 = xpc_null_create();
  v16 = v2[2];
  *object = v15;
  v17 = xpc_null_create();
  (*(v16 + 16))(v16, v4, object);
  xpc_release(*object);
  xpc_release(v17);
  v18 = v2[2];
  if (v18)
  {
    _Block_release(v18);
  }

  xpc_release(v2[1]);
  operator delete(v2);
  v19 = *(a1 + 2);
  if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v19);
  }

  operator delete(a1);
  v20 = *MEMORY[0x29EDCA608];
}

void sub_2975C99DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, xpc_object_t object)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *_ZNSt3__110unique_ptrIZZN16NetworkingModule28registerCommandHandlers_syncEvEUb2_E3__8NS_14default_deleteIS2_EEED1B8ne200100Ev(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      _Block_release(v3);
    }

    xpc_release(*(v2 + 8));
    operator delete(v2);
  }

  return a1;
}

uint64_t std::__function::__func<NetworkingModule::registerEventHandlers_sync(void)::$_0,std::allocator<NetworkingModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::~__func(uint64_t result)
{
  *result = &unk_2A1E4AB58;
  if (*(result + 24))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 24));
    return v1;
  }

  return result;
}

void std::__function::__func<NetworkingModule::registerEventHandlers_sync(void)::$_0,std::allocator<NetworkingModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::~__func(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E4AB58;
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

char *std::__function::__func<NetworkingModule::registerEventHandlers_sync(void)::$_0,std::allocator<NetworkingModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t a1)
{
  result = operator new(0x20uLL);
  *result = &unk_2A1E4AB58;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<NetworkingModule::registerEventHandlers_sync(void)::$_0,std::allocator<NetworkingModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A1E4AB58;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<NetworkingModule::registerEventHandlers_sync(void)::$_0,std::allocator<NetworkingModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<NetworkingModule::registerEventHandlers_sync(void)::$_0,std::allocator<NetworkingModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::destroy_deallocate(std::__shared_weak_count **a1)
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

void std::__function::__func<NetworkingModule::registerEventHandlers_sync(void)::$_0,std::allocator<NetworkingModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::operator()(void *a1, NSObject **a2, void **a3)
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
      dispatch_async_f(v17, v18, dispatch::async<void ctu::SharedSynchronizable<NetworkingModule>::execute_wrapped<NetworkingModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(NetworkingModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<NetworkingModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<NetworkingModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
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

void sub_2975C9EB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
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

uint64_t std::__function::__func<NetworkingModule::registerEventHandlers_sync(void)::$_0,std::allocator<NetworkingModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN16NetworkingModule26registerEventHandlers_syncEvE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN16NetworkingModule26registerEventHandlers_syncEvE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN16NetworkingModule26registerEventHandlers_syncEvE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN16NetworkingModule26registerEventHandlers_syncEvE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void dispatch::async<void ctu::SharedSynchronizable<NetworkingModule>::execute_wrapped<NetworkingModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(NetworkingModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<NetworkingModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<NetworkingModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(NetworkingModule ***a1)
{
  v2 = *a1;
  v3 = **a1;
  memset(__s1, 170, sizeof(__s1));
  value = xpc_dictionary_get_value(v2[2], *MEMORY[0x29EDBEAF8]);
  object = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object = xpc_null_create();
  }

  xpc::dyn_cast_or_default(__s1, &object, *MEMORY[0x29EDBEFC0], v5);
  xpc_release(object);
  v6 = *MEMORY[0x29EDBEFB8];
  v7 = strlen(*MEMORY[0x29EDBEFB8]);
  v8 = HIBYTE(__s1[2]);
  if ((SHIBYTE(__s1[2]) & 0x8000000000000000) == 0)
  {
    if (v7 == SHIBYTE(__s1[2]))
    {
      v9 = memcmp(__s1, v6, v7);
      *(v3 + 137) = v9 == 0;
      if (v9)
      {
        goto LABEL_13;
      }

      goto LABEL_11;
    }

    goto LABEL_12;
  }

  if (v7 != __s1[1])
  {
LABEL_12:
    *(v3 + 137) = 0;
    goto LABEL_13;
  }

  if (v7 == -1)
  {
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  v10 = memcmp(__s1[0], v6, v7);
  *(v3 + 137) = v10 == 0;
  if (!v10)
  {
LABEL_11:
    NetworkingModule::applyBreadMode_sync(v3);
    v8 = HIBYTE(__s1[2]);
  }

LABEL_13:
  if (v8 < 0)
  {
    operator delete(__s1[0]);
  }

  xpc_release(v2[2]);
  v2[2] = 0;
  v11 = v2[1];
  if (v11)
  {
    dispatch_group_leave(v11);
    v12 = v2[1];
    if (v12)
    {
      dispatch_release(v12);
    }
  }

  operator delete(v2);
  v13 = a1[2];
  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

  operator delete(a1);
}

void sub_2975CA130(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    std::unique_ptr<NetworkingModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},std::default_delete<NetworkingModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&a10);
    _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a9);
    _Unwind_Resume(a1);
  }

  std::unique_ptr<NetworkingModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},std::default_delete<NetworkingModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&a10);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a9);
  _Unwind_Resume(a1);
}

void *std::unique_ptr<NetworkingModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},std::default_delete<NetworkingModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](void *result)
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

uint64_t awd::metrics::protobuf_ShutdownFile_CCMetricsABM_2eproto(awd::metrics *this)
{
  if (awd::metrics::CommCenterBasebandBootTime::default_instance_)
  {
    (*(*awd::metrics::CommCenterBasebandBootTime::default_instance_ + 8))(awd::metrics::CommCenterBasebandBootTime::default_instance_);
  }

  if (awd::metrics::CrashReasonType::default_instance_)
  {
    (*(*awd::metrics::CrashReasonType::default_instance_ + 8))(awd::metrics::CrashReasonType::default_instance_);
  }

  if (awd::metrics::CommCenterBasebanCrash::default_instance_)
  {
    (*(*awd::metrics::CommCenterBasebanCrash::default_instance_ + 8))(awd::metrics::CommCenterBasebanCrash::default_instance_);
  }

  if (awd::metrics::CommCenterBasebandTrace::default_instance_)
  {
    (*(*awd::metrics::CommCenterBasebandTrace::default_instance_ + 8))(awd::metrics::CommCenterBasebandTrace::default_instance_);
  }

  if (awd::metrics::CommCenterNVMSync::default_instance_)
  {
    (*(*awd::metrics::CommCenterNVMSync::default_instance_ + 8))(awd::metrics::CommCenterNVMSync::default_instance_);
  }

  if (awd::metrics::CommCenterAccessoryInformation::default_instance_)
  {
    (*(*awd::metrics::CommCenterAccessoryInformation::default_instance_ + 8))(awd::metrics::CommCenterAccessoryInformation::default_instance_);
  }

  result = awd::metrics::MetricsCCBasebandReset::default_instance_;
  if (awd::metrics::MetricsCCBasebandReset::default_instance_)
  {
    v2 = *(*awd::metrics::MetricsCCBasebandReset::default_instance_ + 8);

    return v2();
  }

  return result;
}

void awd::metrics::protobuf_AddDesc_CCMetricsABM_2eproto(awd::metrics *this, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((awd::metrics::protobuf_AddDesc_CCMetricsABM_2eproto(void)::already_here & 1) == 0)
  {
    awd::metrics::protobuf_AddDesc_CCMetricsABM_2eproto(void)::already_here = 1;
    wireless_diagnostics::google::protobuf::internal::VerifyVersion(0x1E9808, 2005000, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices_Manager/AppleBasebandManager/BasebandManager/Server/AWD/Generated/CCMetricsABM.pb.cc", a4);
    v5 = operator new(0x30uLL);
    v5[4] = 0;
    *(v5 + 10) = 0;
    v5[1] = 0;
    v5[2] = 0;
    *v5 = &unk_2A1E4ABD8;
    *(v5 + 21) = 0;
    awd::metrics::CommCenterBasebandBootTime::default_instance_ = v5;
    v6 = operator new(0x28uLL);
    v7 = MEMORY[0x29EDC9758];
    *v6 = &unk_2A1E4AC50;
    v6[1] = v7;
    v6[3] = 0;
    v6[2] = v7;
    *(v6 + 8) = 0;
    awd::metrics::CrashReasonType::default_instance_ = v6;
    v8 = operator new(0x30uLL);
    v8[5] = 0;
    *v8 = &unk_2A1E4ACC8;
    v8[1] = 0;
    v8[2] = 0;
    v8[3] = 0;
    *(v8 + 8) = 0;
    awd::metrics::CommCenterBasebanCrash::default_instance_ = v8;
    v9 = operator new(0x28uLL);
    v9[3] = v7;
    v9[4] = 0;
    *v9 = &unk_2A1E4AD40;
    v9[1] = 0;
    v9[2] = v7;
    awd::metrics::CommCenterBasebandTrace::default_instance_ = v9;
    v10 = operator new(0x28uLL);
    v10[4] = 0;
    v10[1] = 0;
    v10[2] = 0;
    *v10 = &unk_2A1E4ADB8;
    *(v10 + 22) = 0;
    awd::metrics::CommCenterNVMSync::default_instance_ = v10;
    v11 = operator new(0x20uLL);
    *v11 = &unk_2A1E4AE30;
    v11[1] = 0;
    v11[2] = 0;
    v11[3] = 0;
    awd::metrics::CommCenterAccessoryInformation::default_instance_ = v11;
    v12 = operator new(0x48uLL);
    *v12 = &unk_2A1E4AEA8;
    v12[1] = v7;
    *(v12 + 20) = 0;
    v12[2] = 0;
    v12[3] = v7;
    v12[4] = v7;
    *(v12 + 11) = 0;
    v12[7] = 0;
    v12[8] = 0;
    v12[6] = v7;
    awd::metrics::MetricsCCBasebandReset::default_instance_ = v12;

    MEMORY[0x2A1C71448](awd::metrics::protobuf_ShutdownFile_CCMetricsABM_2eproto);
  }
}

uint64_t awd::metrics::CommCenterBasebandBootTime::CommCenterBasebandBootTime(uint64_t this)
{
  *(this + 32) = 0;
  *(this + 40) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_2A1E4ABD8;
  *(this + 21) = 0;
  return this;
}

{
  *(this + 32) = 0;
  *(this + 40) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_2A1E4ABD8;
  *(this + 21) = 0;
  return this;
}

uint64_t awd::metrics::CrashReasonType::CrashReasonType(uint64_t this)
{
  v1 = MEMORY[0x29EDC9758];
  *this = &unk_2A1E4AC50;
  *(this + 8) = v1;
  *(this + 16) = v1;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

{
  v1 = MEMORY[0x29EDC9758];
  *this = &unk_2A1E4AC50;
  *(this + 8) = v1;
  *(this + 16) = v1;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

uint64_t awd::metrics::CommCenterBasebanCrash::CommCenterBasebanCrash(uint64_t this)
{
  *(this + 40) = 0;
  *this = &unk_2A1E4ACC8;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

{
  *(this + 40) = 0;
  *this = &unk_2A1E4ACC8;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

void *awd::metrics::CommCenterBasebandTrace::CommCenterBasebandTrace(void *this)
{
  this[4] = 0;
  *this = &unk_2A1E4AD40;
  this[1] = 0;
  v1 = MEMORY[0x29EDC9758];
  this[2] = MEMORY[0x29EDC9758];
  this[3] = v1;
  return this;
}

{
  this[4] = 0;
  *this = &unk_2A1E4AD40;
  this[1] = 0;
  v1 = MEMORY[0x29EDC9758];
  this[2] = MEMORY[0x29EDC9758];
  this[3] = v1;
  return this;
}

void *awd::metrics::CommCenterNVMSync::CommCenterNVMSync(void *this)
{
  this[4] = 0;
  this[1] = 0;
  this[2] = 0;
  *this = &unk_2A1E4ADB8;
  *(this + 22) = 0;
  return this;
}

{
  this[4] = 0;
  this[1] = 0;
  this[2] = 0;
  *this = &unk_2A1E4ADB8;
  *(this + 22) = 0;
  return this;
}

void *awd::metrics::CommCenterAccessoryInformation::CommCenterAccessoryInformation(void *this)
{
  *this = &unk_2A1E4AE30;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

{
  *this = &unk_2A1E4AE30;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

uint64_t awd::metrics::MetricsCCBasebandReset::MetricsCCBasebandReset(uint64_t this)
{
  v1 = MEMORY[0x29EDC9758];
  *this = &unk_2A1E4AEA8;
  *(this + 8) = v1;
  *(this + 40) = 0;
  *(this + 16) = 0;
  *(this + 24) = v1;
  *(this + 32) = v1;
  *(this + 44) = 0;
  *(this + 56) = 0;
  *(this + 64) = 0;
  *(this + 48) = v1;
  return this;
}

{
  v1 = MEMORY[0x29EDC9758];
  *this = &unk_2A1E4AEA8;
  *(this + 8) = v1;
  *(this + 40) = 0;
  *(this + 16) = 0;
  *(this + 24) = v1;
  *(this + 32) = v1;
  *(this + 44) = 0;
  *(this + 56) = 0;
  *(this + 64) = 0;
  *(this + 48) = v1;
  return this;
}

uint64_t awd::metrics::CommCenterBasebandBootTime::SharedCtor(uint64_t this)
{
  *(this + 32) = 0;
  *(this + 40) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 21) = 0;
  return this;
}

awd::metrics::CommCenterBasebandBootTime *awd::metrics::CommCenterBasebandBootTime::CommCenterBasebandBootTime(awd::metrics::CommCenterBasebandBootTime *this, const awd::metrics::CommCenterBasebandBootTime *a2)
{
  *(this + 4) = 0;
  *(this + 10) = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_2A1E4ABD8;
  *(this + 21) = 0;
  awd::metrics::CommCenterBasebandBootTime::MergeFrom(this, a2);
  return this;
}

{
  *(this + 4) = 0;
  *(this + 10) = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_2A1E4ABD8;
  *(this + 21) = 0;
  awd::metrics::CommCenterBasebandBootTime::MergeFrom(this, a2);
  return this;
}

uint64_t awd::metrics::CommCenterBasebandBootTime::MergeFrom(uint64_t this, const awd::metrics::CommCenterBasebandBootTime *a2)
{
  if (a2 == this)
  {
    v2 = a2;
    v3 = this;
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
    this = v3;
    a2 = v2;
  }

  LOBYTE(v4) = *(a2 + 40);
  if (v4)
  {
    if (*(a2 + 40))
    {
      v6 = *(a2 + 1);
      *(this + 40) |= 1u;
      *(this + 8) = v6;
      v4 = *(a2 + 10);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_13;
      }
    }

    else if ((*(a2 + 40) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 2);
    *(this + 40) |= 2u;
    *(this + 16) = v7;
    v4 = *(a2 + 10);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_14;
    }

LABEL_13:
    v8 = *(a2 + 6);
    *(this + 40) |= 4u;
    *(this + 24) = v8;
    v4 = *(a2 + 10);
    if ((v4 & 8) == 0)
    {
LABEL_8:
      if ((v4 & 0x10) == 0)
      {
        return this;
      }

      goto LABEL_9;
    }

LABEL_14:
    v9 = *(a2 + 28);
    *(this + 40) |= 8u;
    *(this + 28) = v9;
    if ((*(a2 + 10) & 0x10) == 0)
    {
      return this;
    }

LABEL_9:
    v5 = *(a2 + 8);
    *(this + 40) |= 0x10u;
    *(this + 32) = v5;
  }

  return this;
}

void sub_2975CA948(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2975CA95C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::CommCenterBasebandBootTime::~CommCenterBasebandBootTime(awd::metrics::CommCenterBasebandBootTime *this)
{
  *this = &unk_2A1E4ABD8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1E4ABD8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1E4ABD8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete(v1);
}

uint64_t awd::metrics::CommCenterBasebandBootTime::default_instance(awd::metrics::CommCenterBasebandBootTime *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::CommCenterBasebandBootTime::default_instance_;
  if (!awd::metrics::CommCenterBasebandBootTime::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_CCMetricsABM_2eproto(0, a2, a3, a4);
    return awd::metrics::CommCenterBasebandBootTime::default_instance_;
  }

  return result;
}

void *awd::metrics::CommCenterBasebandBootTime::New(awd::metrics::CommCenterBasebandBootTime *this)
{
  result = operator new(0x30uLL);
  result[4] = 0;
  *(result + 10) = 0;
  result[1] = 0;
  result[2] = 0;
  *result = &unk_2A1E4ABD8;
  *(result + 21) = 0;
  return result;
}

uint64_t awd::metrics::CommCenterBasebandBootTime::Clear(uint64_t this)
{
  if (*(this + 40))
  {
    *(this + 32) = 0;
    *(this + 8) = 0;
    *(this + 16) = 0;
    *(this + 21) = 0;
  }

  *(this + 40) = 0;
  return this;
}

uint64_t awd::metrics::CommCenterBasebandBootTime::MergePartialFromCodedStream(awd::metrics::CommCenterBasebandBootTime *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v4 = *(a2 + 1);
          if (v4 >= *(a2 + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
          {
            TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
            *(a2 + 8) = TagFallback;
            if (!TagFallback)
            {
              return 1;
            }
          }

          else
          {
            *(a2 + 8) = TagFallback;
            *(a2 + 1) = v4 + 1;
            if (!TagFallback)
            {
              return 1;
            }
          }

          v6 = TagFallback >> 3;
          if (TagFallback >> 3 <= 2)
          {
            break;
          }

          if (v6 == 3)
          {
            if ((TagFallback & 7) != 0)
            {
              goto LABEL_25;
            }

            v10 = *(a2 + 1);
            v7 = *(a2 + 2);
            if (v10 >= v7)
            {
              goto LABEL_46;
            }

LABEL_43:
            v17 = *v10;
            if (v17 < 0)
            {
              goto LABEL_46;
            }

            *(this + 6) = v17;
            v18 = v10 + 1;
            *(a2 + 1) = v18;
            *(this + 10) |= 4u;
            if (v18 < v7)
            {
LABEL_48:
              if (*v18 == 32)
              {
                v11 = v18 + 1;
                *(a2 + 1) = v11;
                v26 = -1431655766;
                if (v11 >= v7)
                {
                  goto LABEL_52;
                }

                goto LABEL_50;
              }
            }
          }

          else if (v6 == 4)
          {
            if ((TagFallback & 7) != 0)
            {
              goto LABEL_25;
            }

            v11 = *(a2 + 1);
            v7 = *(a2 + 2);
            v26 = -1431655766;
            if (v11 >= v7)
            {
LABEL_52:
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v26);
              if (!result)
              {
                return result;
              }

              v19 = v26;
              v20 = *(a2 + 1);
              v7 = *(a2 + 2);
              goto LABEL_54;
            }

LABEL_50:
            v19 = *v11;
            if ((v19 & 0x80000000) != 0)
            {
              goto LABEL_52;
            }

            v20 = v11 + 1;
            *(a2 + 1) = v20;
LABEL_54:
            *(this + 28) = v19 != 0;
            *(this + 10) |= 8u;
            if (v20 < v7 && *v20 == 40)
            {
              v8 = v20 + 1;
              *(a2 + 1) = v8;
              if (v8 < v7)
              {
                goto LABEL_57;
              }

LABEL_60:
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 8);
              if (!result)
              {
                return result;
              }

              v24 = *(a2 + 1);
              v23 = *(a2 + 2);
              *(this + 10) |= 0x10u;
              if (v24 == v23)
              {
                goto LABEL_62;
              }
            }
          }

          else
          {
            if (v6 != 5 || (TagFallback & 7) != 0)
            {
              goto LABEL_25;
            }

            v8 = *(a2 + 1);
            v7 = *(a2 + 2);
            if (v8 >= v7)
            {
              goto LABEL_60;
            }

LABEL_57:
            v21 = *v8;
            if (v21 < 0)
            {
              goto LABEL_60;
            }

            *(this + 8) = v21;
            v22 = v8 + 1;
            *(a2 + 1) = v22;
            *(this + 10) |= 0x10u;
            if (v22 == v7)
            {
LABEL_62:
              if (*(a2 + 11) || *(a2 + 6) == *(a2 + 10))
              {
                *(a2 + 8) = 0;
                result = 1;
                *(a2 + 36) = 1;
                return result;
              }
            }
          }
        }

        if (v6 != 1)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_25;
        }

        v12 = *(a2 + 1);
        v7 = *(a2 + 2);
        if (v12 >= v7 || (v13 = *v12, v13 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
          if (!result)
          {
            return result;
          }

          v14 = *(a2 + 1);
          v7 = *(a2 + 2);
          *(this + 10) |= 1u;
          if (v14 < v7)
          {
            goto LABEL_34;
          }
        }

        else
        {
          *(this + 1) = v13;
          v14 = v12 + 1;
          *(a2 + 1) = v14;
          *(this + 10) |= 1u;
          if (v14 < v7)
          {
LABEL_34:
            if (*v14 == 16)
            {
              v9 = v14 + 1;
              *(a2 + 1) = v9;
              if (v9 < v7)
              {
                goto LABEL_36;
              }

LABEL_39:
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 2);
              if (!result)
              {
                return result;
              }

              v16 = *(a2 + 1);
              v7 = *(a2 + 2);
              *(this + 10) |= 2u;
              if (v16 < v7)
              {
                goto LABEL_41;
              }
            }
          }
        }
      }

      if (v6 != 2 || (TagFallback & 7) != 0)
      {
        break;
      }

      v9 = *(a2 + 1);
      v7 = *(a2 + 2);
      if (v9 >= v7)
      {
        goto LABEL_39;
      }

LABEL_36:
      v15 = *v9;
      if (v15 < 0)
      {
        goto LABEL_39;
      }

      *(this + 2) = v15;
      v16 = v9 + 1;
      *(a2 + 1) = v16;
      *(this + 10) |= 2u;
      if (v16 < v7)
      {
LABEL_41:
        if (*v16 == 24)
        {
          v10 = v16 + 1;
          *(a2 + 1) = v10;
          if (v10 < v7)
          {
            goto LABEL_43;
          }

LABEL_46:
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
          if (!result)
          {
            return result;
          }

          v18 = *(a2 + 1);
          v7 = *(a2 + 2);
          *(this + 10) |= 4u;
          if (v18 < v7)
          {
            goto LABEL_48;
          }
        }
      }
    }

LABEL_25:
    if ((TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t awd::metrics::CommCenterBasebandBootTime::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 40);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 40);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 40);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(4, *(v5 + 28), a2, a4);
    if ((*(v5 + 40) & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_11;
  }

LABEL_9:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 24), a2, a4);
  v6 = *(v5 + 40);
  if ((v6 & 8) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v6 & 0x10) == 0)
  {
    return this;
  }

LABEL_11:
  v7 = *(v5 + 32);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(5, v7, a2, a4);
}

uint64_t awd::metrics::CommCenterBasebandBootTime::ByteSize(awd::metrics::CommCenterBasebandBootTime *this)
{
  v2 = *(this + 10);
  if (!v2)
  {
    result = 0;
    goto LABEL_6;
  }

  if (v2)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 10);
    if ((v2 & 2) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v3 = 0;
  if ((v2 & 2) != 0)
  {
LABEL_8:
    v3 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 2)) + 1;
    v2 = *(this + 10);
  }

LABEL_9:
  if ((v2 & 4) == 0)
  {
    result = ((v2 >> 2) & 2) + v3;
    if ((v2 & 0x10) != 0)
    {
      goto LABEL_16;
    }

LABEL_6:
    *(this + 9) = result;
    return result;
  }

  v5 = *(this + 6);
  if (v5 < 0x80)
  {
    result = ((v2 >> 2) & 2) + v3 + 2;
    if ((v2 & 0x10) != 0)
    {
      goto LABEL_16;
    }

    goto LABEL_6;
  }

  v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5);
  v7 = *(this + 10);
  result = ((v7 >> 2) & 2) + v6 + 1 + v3;
  if ((v7 & 0x10) == 0)
  {
    goto LABEL_6;
  }

LABEL_16:
  if (*(this + 8) >= 0x80u)
  {
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(*(this + 8)) + 1 + result;
  }

  else
  {
    result = (result + 2);
  }

  *(this + 9) = result;
  return result;
}

const awd::metrics::CommCenterBasebandBootTime *awd::metrics::CommCenterBasebandBootTime::CopyFrom(const awd::metrics::CommCenterBasebandBootTime *this, const awd::metrics::CommCenterBasebandBootTime *a2)
{
  if (a2 != this)
  {
    v4 = this;
    (*(*this + 32))();

    return awd::metrics::CommCenterBasebandBootTime::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t awd::metrics::CommCenterBasebandBootTime::Swap(uint64_t this, awd::metrics::CommCenterBasebandBootTime *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v2;
    v3 = *(this + 16);
    *(this + 16) = *(a2 + 2);
    *(a2 + 2) = v3;
    LODWORD(v3) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v3;
    LOBYTE(v3) = *(this + 28);
    *(this + 28) = *(a2 + 28);
    *(a2 + 28) = v3;
    LODWORD(v3) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v3;
    LODWORD(v3) = *(this + 40);
    *(this + 40) = *(a2 + 10);
    *(a2 + 10) = v3;
    LODWORD(v3) = *(this + 36);
    *(this + 36) = *(a2 + 9);
    *(a2 + 9) = v3;
  }

  return this;
}

char *awd::metrics::CommCenterBasebandBootTime::GetTypeName@<X0>(uint64_t a1@<X8>)
{
  result = operator new(0x28uLL);
  *a1 = result;
  *(a1 + 8) = xmmword_2976A44F0;
  strcpy(result, "awd.metrics.CommCenterBasebandBootTime");
  return result;
}

uint64_t awd::metrics::CrashReasonType::SharedCtor(uint64_t this)
{
  v1 = MEMORY[0x29EDC9758];
  *(this + 16) = MEMORY[0x29EDC9758];
  *(this + 24) = 0;
  *(this + 8) = v1;
  *(this + 32) = 0;
  return this;
}

awd::metrics::CrashReasonType *awd::metrics::CrashReasonType::CrashReasonType(awd::metrics::CrashReasonType *this, const awd::metrics::CrashReasonType *a2)
{
  v3 = MEMORY[0x29EDC9758];
  *this = &unk_2A1E4AC50;
  *(this + 1) = v3;
  *(this + 2) = v3;
  *(this + 3) = 0;
  *(this + 8) = 0;
  awd::metrics::CrashReasonType::MergeFrom(this, a2);
  return this;
}

{
  v3 = MEMORY[0x29EDC9758];
  *this = &unk_2A1E4AC50;
  *(this + 1) = v3;
  *(this + 2) = v3;
  *(this + 3) = 0;
  *(this + 8) = 0;
  awd::metrics::CrashReasonType::MergeFrom(this, a2);
  return this;
}

void awd::metrics::CrashReasonType::MergeFrom(awd::metrics::CrashReasonType *this, const awd::metrics::CrashReasonType *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v19);
  }

  if (*(a2 + 32))
  {
    v4 = MEMORY[0x29EDC9758];
    if (*(a2 + 32))
    {
      v5 = *(a2 + 1);
      *(this + 8) |= 1u;
      v6 = *(this + 1);
      if (v6 == v4)
      {
        v6 = operator new(0x18uLL);
        v6[1] = 0;
        v6[2] = 0;
        *v6 = 0;
        *(this + 1) = v6;
      }

      if (v6 != v5)
      {
        v7 = *(v5 + 23);
        if ((*(v6 + 23) & 0x80000000) == 0)
        {
          if ((*(v5 + 23) & 0x80) != 0)
          {
            std::string::__assign_no_alias<true>(v6, *v5, v5[1]);
            v9 = *(a2 + 8);
            if ((v9 & 2) == 0)
            {
LABEL_21:
              if ((v9 & 4) != 0)
              {
                v13 = *(a2 + 2);
                *(this + 8) |= 4u;
                v14 = *(this + 2);
                if (v14 == v4)
                {
                  v14 = operator new(0x18uLL);
                  v14[1] = 0;
                  v14[2] = 0;
                  *v14 = 0;
                  *(this + 2) = v14;
                }

                if (v14 != v13)
                {
                  v15 = *(v13 + 23);
                  if (*(v14 + 23) < 0)
                  {
                    if (v15 >= 0)
                    {
                      v17 = v13;
                    }

                    else
                    {
                      v17 = *v13;
                    }

                    if (v15 >= 0)
                    {
                      v18 = *(v13 + 23);
                    }

                    else
                    {
                      v18 = v13[1];
                    }

                    std::string::__assign_no_alias<false>(v14, v17, v18);
                  }

                  else if ((*(v13 + 23) & 0x80) != 0)
                  {
                    std::string::__assign_no_alias<true>(v14, *v13, v13[1]);
                  }

                  else
                  {
                    v16 = *v13;
                    v14[2] = v13[2];
                    *v14 = v16;
                  }
                }
              }

              return;
            }
          }

          else
          {
            v8 = *v5;
            v6[2] = v5[2];
            *v6 = v8;
            v9 = *(a2 + 8);
            if ((v9 & 2) == 0)
            {
              goto LABEL_21;
            }
          }

LABEL_20:
          v12 = *(a2 + 6);
          *(this + 8) |= 2u;
          *(this + 6) = v12;
          v9 = *(a2 + 8);
          goto LABEL_21;
        }

        if (v7 >= 0)
        {
          v10 = v5;
        }

        else
        {
          v10 = *v5;
        }

        if (v7 >= 0)
        {
          v11 = *(v5 + 23);
        }

        else
        {
          v11 = v5[1];
        }

        std::string::__assign_no_alias<false>(v6, v10, v11);
      }
    }

    v9 = *(a2 + 8);
    if ((v9 & 2) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }
}

void sub_2975CB44C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2975CB460(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::CrashReasonType::~CrashReasonType(awd::metrics::CrashReasonType *this)
{
  *this = &unk_2A1E4AC50;
  v2 = *(this + 1);
  v3 = MEMORY[0x29EDC9758];
  if (v2 == MEMORY[0x29EDC9758] || v2 == 0)
  {
    v5 = *(this + 2);
    if (v5 != MEMORY[0x29EDC9758] && v5 != 0)
    {
LABEL_20:
      if (*(v5 + 23) < 0)
      {
        operator delete(*v5);
      }

      operator delete(v5);
      v7 = this;

      goto LABEL_13;
    }
  }

  else
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    operator delete(v2);
    v5 = *(this + 2);
    if (v5 != v3 && v5 != 0)
    {
      goto LABEL_20;
    }
  }

  v7 = this;

LABEL_13:
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v7);
}

{
  *this = &unk_2A1E4AC50;
  v2 = *(this + 1);
  v3 = MEMORY[0x29EDC9758];
  if (v2 == MEMORY[0x29EDC9758] || v2 == 0)
  {
    v5 = *(this + 2);
    if (v5 != MEMORY[0x29EDC9758] && v5 != 0)
    {
LABEL_20:
      if (*(v5 + 23) < 0)
      {
        operator delete(*v5);
      }

      operator delete(v5);
      v7 = this;

      goto LABEL_13;
    }
  }

  else
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    operator delete(v2);
    v5 = *(this + 2);
    if (v5 != v3 && v5 != 0)
    {
      goto LABEL_20;
    }
  }

  v7 = this;

LABEL_13:
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v7);
}

{
  *this = &unk_2A1E4AC50;
  v2 = *(this + 1);
  v3 = MEMORY[0x29EDC9758];
  if (v2 != MEMORY[0x29EDC9758] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    operator delete(v2);
  }

  v5 = *(this + 2);
  if (v5 != v3 && v5 != 0)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    operator delete(v5);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete(v7);
}

void awd::metrics::CrashReasonType::SharedDtor(awd::metrics::CrashReasonType *this)
{
  v2 = *(this + 1);
  v3 = MEMORY[0x29EDC9758];
  if (v2 != MEMORY[0x29EDC9758] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    operator delete(v2);
  }

  v5 = *(this + 2);
  if (v5 != v3 && v5 != 0)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
      v7 = v5;
    }

    else
    {
      v7 = v5;
    }

    operator delete(v7);
  }
}

uint64_t awd::metrics::CrashReasonType::default_instance(awd::metrics::CrashReasonType *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::CrashReasonType::default_instance_;
  if (!awd::metrics::CrashReasonType::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_CCMetricsABM_2eproto(0, a2, a3, a4);
    return awd::metrics::CrashReasonType::default_instance_;
  }

  return result;
}

void *awd::metrics::CrashReasonType::New(awd::metrics::CrashReasonType *this)
{
  result = operator new(0x28uLL);
  v2 = MEMORY[0x29EDC9758];
  *result = &unk_2A1E4AC50;
  result[1] = v2;
  result[2] = v2;
  result[3] = 0;
  *(result + 8) = 0;
  return result;
}

uint64_t awd::metrics::CrashReasonType::Clear(uint64_t this)
{
  if (!*(this + 32))
  {
    goto LABEL_12;
  }

  v1 = MEMORY[0x29EDC9758];
  if (*(this + 32))
  {
    v2 = *(this + 8);
    if (v2 != MEMORY[0x29EDC9758])
    {
      if (*(v2 + 23) < 0)
      {
        **v2 = 0;
        *(v2 + 8) = 0;
        *(this + 24) = 0;
        if ((*(this + 32) & 4) == 0)
        {
          goto LABEL_12;
        }

        goto LABEL_7;
      }

      *v2 = 0;
      *(v2 + 23) = 0;
    }
  }

  *(this + 24) = 0;
  if ((*(this + 32) & 4) == 0)
  {
LABEL_12:
    *(this + 32) = 0;
    return this;
  }

LABEL_7:
  v3 = *(this + 16);
  if (v3 == v1)
  {
    goto LABEL_12;
  }

  if (*(v3 + 23) < 0)
  {
    **v3 = 0;
    *(v3 + 8) = 0;
  }

  else
  {
    *v3 = 0;
    *(v3 + 23) = 0;
  }

  *(this + 32) = 0;
  return this;
}

uint64_t awd::metrics::CrashReasonType::MergePartialFromCodedStream(awd::metrics::CrashReasonType *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  v4 = MEMORY[0x29EDC9758];
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v5 = *(a2 + 1);
          if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
          {
            TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
            *(a2 + 8) = TagFallback;
            if (!TagFallback)
            {
              return 1;
            }
          }

          else
          {
            *(a2 + 8) = TagFallback;
            *(a2 + 1) = v5 + 1;
            if (!TagFallback)
            {
              return 1;
            }
          }

          v7 = TagFallback >> 3;
          v8 = TagFallback & 7;
          if (TagFallback >> 3 != 3)
          {
            break;
          }

          if (v8 == 2)
          {
            *(this + 8) |= 4u;
            if (*(this + 2) != v4)
            {
              goto LABEL_29;
            }

LABEL_28:
            v17 = operator new(0x18uLL);
            v17[1] = 0;
            v17[2] = 0;
            *v17 = 0;
            *(this + 2) = v17;
            goto LABEL_29;
          }

LABEL_24:
          if (v8 == 4)
          {
            return 1;
          }

          if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
          {
            return 0;
          }
        }

        if (v7 != 2)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_24;
        }

        v13 = *(a2 + 1);
        v11 = *(a2 + 2);
        if (v13 < v11)
        {
          goto LABEL_20;
        }

LABEL_34:
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
        if (!result)
        {
          return result;
        }

        v15 = *(a2 + 1);
        v18 = *(a2 + 2);
        v16 = *(this + 8) | 2;
        *(this + 8) = v16;
        if (v15 < v18)
        {
          goto LABEL_36;
        }
      }

      if (v7 != 1 || v8 != 2)
      {
        goto LABEL_24;
      }

      *(this + 8) |= 1u;
      if (*(this + 1) == v4)
      {
        v9 = operator new(0x18uLL);
        v9[1] = 0;
        v9[2] = 0;
        *v9 = 0;
        *(this + 1) = v9;
      }

      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
      if (!result)
      {
        return result;
      }

      v12 = *(a2 + 1);
      v11 = *(a2 + 2);
      if (v12 < v11 && *v12 == 16)
      {
        v13 = v12 + 1;
        *(a2 + 1) = v13;
        if (v13 >= v11)
        {
          goto LABEL_34;
        }

LABEL_20:
        v14 = *v13;
        if (v14 < 0)
        {
          goto LABEL_34;
        }

        *(this + 6) = v14;
        v15 = v13 + 1;
        *(a2 + 1) = v15;
        v16 = *(this + 8) | 2;
        *(this + 8) = v16;
        if (v15 < v11)
        {
          break;
        }
      }
    }

LABEL_36:
    if (*v15 == 26)
    {
      *(a2 + 1) = v15 + 1;
      *(this + 8) = v16 | 4;
      if (*(this + 2) == v4)
      {
        goto LABEL_28;
      }

LABEL_29:
      result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
      if (!result)
      {
        return result;
      }

      if (*(a2 + 1) == *(a2 + 2) && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
      {
        break;
      }
    }
  }

  *(a2 + 8) = 0;
  result = 1;
  *(a2 + 36) = 1;
  return result;
}

uint64_t awd::metrics::CrashReasonType::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 32);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 24), a2, a4);
    if ((*(v5 + 32) & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  v7 = *(this + 8);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 32);
  if ((v6 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v6 & 4) == 0)
  {
    return this;
  }

LABEL_7:
  v8 = *(v5 + 16);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
}

uint64_t awd::metrics::CrashReasonType::ByteSize(awd::metrics::CrashReasonType *this)
{
  LOBYTE(v2) = *(this + 32);
  if (!v2)
  {
    result = 0;
LABEL_6:
    *(this + 7) = result;
    return result;
  }

  if ((*(this + 32) & 1) == 0)
  {
    result = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_18;
  }

  v4 = *(this + 1);
  v5 = *(v4 + 23);
  if ((v5 & 0x80u) == 0)
  {
    v6 = *(v4 + 23);
  }

  else
  {
    v6 = *(v4 + 8);
  }

  if (v6 < 0x80)
  {
    if ((v5 & 0x80u) != 0)
    {
      v5 = *(v4 + 8);
    }

    result = (v5 + 2);
    if ((v2 & 2) == 0)
    {
      goto LABEL_22;
    }

LABEL_18:
    if (*(this + 6) >= 0x80u)
    {
      v10 = result;
      v11 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(*(this + 6));
      LODWORD(result) = v10;
      v9 = v11 + 1;
      v2 = *(this + 8);
    }

    else
    {
      v9 = 2;
    }

    result = (v9 + result);
    goto LABEL_22;
  }

  v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6);
  v8 = *(v4 + 23);
  v2 = *(this + 8);
  if (*(v4 + 23) < 0)
  {
    v8 = *(v4 + 8);
  }

  result = (v7 + 1 + v8);
  if ((v2 & 2) != 0)
  {
    goto LABEL_18;
  }

LABEL_22:
  if ((v2 & 4) == 0)
  {
    goto LABEL_6;
  }

  v12 = *(this + 2);
  v13 = *(v12 + 23);
  v14 = v13;
  v15 = *(v12 + 8);
  if ((v13 & 0x80u) == 0)
  {
    v16 = *(v12 + 23);
  }

  else
  {
    v16 = v15;
  }

  if (v16 >= 0x80)
  {
    v18 = result;
    v17 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v16);
    LODWORD(result) = v18;
    v13 = *(v12 + 23);
    v15 = *(v12 + 8);
    v14 = *(v12 + 23);
  }

  else
  {
    v17 = 1;
  }

  if (v14 < 0)
  {
    v13 = v15;
  }

  result = (result + v17 + v13 + 1);
  *(this + 7) = result;
  return result;
}

void awd::metrics::CrashReasonType::CopyFrom(awd::metrics::CrashReasonType *this, const awd::metrics::CrashReasonType *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))();

    awd::metrics::CrashReasonType::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::CrashReasonType::Swap(uint64_t this, awd::metrics::CrashReasonType *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v2;
    LODWORD(v2) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v2;
    v3 = *(this + 16);
    *(this + 16) = *(a2 + 2);
    *(a2 + 2) = v3;
    LODWORD(v3) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v3;
    LODWORD(v3) = *(this + 28);
    *(this + 28) = *(a2 + 7);
    *(a2 + 7) = v3;
  }

  return this;
}

double awd::metrics::CrashReasonType::GetTypeName@<D0>(uint64_t a1@<X8>)
{
  v3 = operator new(0x20uLL);
  *a1 = v3;
  *(a1 + 8) = xmmword_2976A10E0;
  strcpy(v3, "awd.metrics.CrashReasonType");
  return *".CrashReasonType";
}

uint64_t awd::metrics::CommCenterBasebanCrash::SharedCtor(uint64_t this)
{
  *(this + 40) = 0;
  *(this + 8) = 0;
  return this;
}

awd::metrics::CommCenterBasebanCrash *awd::metrics::CommCenterBasebanCrash::CommCenterBasebanCrash(awd::metrics::CommCenterBasebanCrash *this, const awd::metrics::CommCenterBasebanCrash *a2)
{
  *(this + 5) = 0;
  *this = &unk_2A1E4ACC8;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  awd::metrics::CommCenterBasebanCrash::MergeFrom(this, a2);
  return this;
}

{
  *(this + 5) = 0;
  *this = &unk_2A1E4ACC8;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  awd::metrics::CommCenterBasebanCrash::MergeFrom(this, a2);
  return this;
}

void sub_2975CBF2C(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::CrashReasonType>::~RepeatedPtrField(v1 + 16);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void awd::metrics::CommCenterBasebanCrash::MergeFrom(awd::metrics::CommCenterBasebanCrash *this, const awd::metrics::CommCenterBasebanCrash *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v16);
  }

  v4 = *(this + 6);
  v5 = *(a2 + 6);
  wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 16));
  if (*(a2 + 6) >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x29EDC9758];
    do
    {
      while (1)
      {
        v11 = *(*(a2 + 2) + 8 * v6);
        v12 = *(this + 7);
        v13 = *(this + 6);
        if (v13 >= v12)
        {
          break;
        }

        v14 = *(this + 2);
        *(this + 6) = v13 + 1;
        awd::metrics::CrashReasonType::MergeFrom(*(v14 + 8 * v13), v11);
        if (++v6 >= *(a2 + 6))
        {
          goto LABEL_11;
        }
      }

      if (v12 == *(this + 8))
      {
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 16));
        v12 = *(this + 7);
      }

      *(this + 7) = v12 + 1;
      v8 = operator new(0x28uLL);
      *v8 = &unk_2A1E4AC50;
      v8[1] = v7;
      v8[2] = v7;
      v8[3] = 0;
      *(v8 + 8) = 0;
      v9 = *(this + 2);
      v10 = *(this + 6);
      *(this + 6) = v10 + 1;
      *(v9 + 8 * v10) = v8;
      awd::metrics::CrashReasonType::MergeFrom(v8, v11);
      ++v6;
    }

    while (v6 < *(a2 + 6));
  }

LABEL_11:
  if (*(a2 + 44))
  {
    v15 = *(a2 + 1);
    *(this + 11) |= 1u;
    *(this + 1) = v15;
  }
}

void sub_2975CC0D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2975CC0EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2975CC150(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::CrashReasonType>::~RepeatedPtrField(v1 + 16);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void awd::metrics::CommCenterBasebanCrash::~CommCenterBasebanCrash(awd::metrics::CommCenterBasebanCrash *this)
{
  *this = &unk_2A1E4ACC8;
  v2 = *(this + 7);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*(this + 2) + 8 * i);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *(this + 7);
      }
    }
  }

  v5 = *(this + 2);
  if (v5)
  {
    operator delete[](v5);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1E4ACC8;
  v2 = *(this + 7);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*(this + 2) + 8 * i);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *(this + 7);
      }
    }
  }

  v5 = *(this + 2);
  if (v5)
  {
    operator delete[](v5);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1E4ACC8;
  v2 = *(this + 7);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*(this + 2) + 8 * i);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *(this + 7);
      }
    }
  }

  v5 = *(this + 2);
  if (v5)
  {
    operator delete[](v5);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete(v6);
}

uint64_t awd::metrics::CommCenterBasebanCrash::default_instance(awd::metrics::CommCenterBasebanCrash *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::CommCenterBasebanCrash::default_instance_;
  if (!awd::metrics::CommCenterBasebanCrash::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_CCMetricsABM_2eproto(0, a2, a3, a4);
    return awd::metrics::CommCenterBasebanCrash::default_instance_;
  }

  return result;
}

void *awd::metrics::CommCenterBasebanCrash::New(awd::metrics::CommCenterBasebanCrash *this)
{
  result = operator new(0x30uLL);
  result[5] = 0;
  *result = &unk_2A1E4ACC8;
  result[1] = 0;
  result[2] = 0;
  result[3] = 0;
  *(result + 8) = 0;
  return result;
}

uint64_t awd::metrics::CommCenterBasebanCrash::Clear(uint64_t this)
{
  v1 = this;
  if (*(this + 44))
  {
    *(this + 8) = 0;
  }

  if (*(this + 24) >= 1)
  {
    v2 = 0;
    do
    {
      v3 = *(*(v1 + 16) + 8 * v2);
      this = (*(*v3 + 32))(v3);
      ++v2;
    }

    while (v2 < *(v1 + 24));
  }

  *(v1 + 24) = 0;
  *(v1 + 44) = 0;
  return this;
}

uint64_t awd::metrics::CommCenterBasebanCrash::MergePartialFromCodedStream(awd::metrics::CommCenterBasebanCrash *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  v4 = MEMORY[0x29EDC9758];
  while (1)
  {
    do
    {
      while (1)
      {
        while (1)
        {
          v5 = *(a2 + 1);
          if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
          {
            TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
            *(a2 + 8) = TagFallback;
            if (!TagFallback)
            {
              return 1;
            }
          }

          else
          {
            *(a2 + 8) = TagFallback;
            *(a2 + 1) = v5 + 1;
            if (!TagFallback)
            {
              return 1;
            }
          }

          v7 = TagFallback & 7;
          if (TagFallback >> 3 != 2)
          {
            break;
          }

          if (v7 == 2)
          {
            goto LABEL_22;
          }

LABEL_15:
          if (v7 == 4)
          {
            return 1;
          }

          if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
          {
            return 0;
          }
        }

        if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
        {
          goto LABEL_15;
        }

        v8 = *(a2 + 1);
        v9 = *(a2 + 2);
        if (v8 < v9)
        {
          v10 = *v8;
          if ((v10 & 0x8000000000000000) == 0)
          {
            break;
          }
        }

        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
        if (!result)
        {
          return result;
        }

        v11 = *(a2 + 1);
        v13 = *(a2 + 2);
        *(this + 11) |= 1u;
        if (v11 < v13)
        {
          goto LABEL_20;
        }
      }

      *(this + 1) = v10;
      v11 = v8 + 1;
      *(a2 + 1) = v11;
      *(this + 11) |= 1u;
    }

    while (v11 >= v9);
LABEL_20:
    if (*v11 == 18)
    {
      do
      {
        *(a2 + 1) = v11 + 1;
LABEL_22:
        v14 = *(this + 7);
        v15 = *(this + 6);
        if (v15 >= v14)
        {
          if (v14 == *(this + 8))
          {
            wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 16));
            v14 = *(this + 7);
          }

          *(this + 7) = v14 + 1;
          v17 = operator new(0x28uLL);
          *v17 = &unk_2A1E4AC50;
          v17[1] = v4;
          v17[2] = v4;
          v17[3] = 0;
          *(v17 + 8) = 0;
          v18 = *(this + 2);
          v19 = *(this + 6);
          *(this + 6) = v19 + 1;
          *(v18 + 8 * v19) = v17;
        }

        else
        {
          v16 = *(this + 2);
          *(this + 6) = v15 + 1;
          v17 = *(v16 + 8 * v15);
        }

        v27 = -1431655766;
        v20 = *(a2 + 1);
        if (v20 >= *(a2 + 2) || *v20 < 0)
        {
          if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v27))
          {
            return 0;
          }
        }

        else
        {
          v27 = *v20;
          *(a2 + 1) = v20 + 1;
        }

        v21 = *(a2 + 14);
        v22 = *(a2 + 15);
        *(a2 + 14) = v21 + 1;
        if (v21 >= v22)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
        if (!awd::metrics::CrashReasonType::MergePartialFromCodedStream(v17, a2) || *(a2 + 36) != 1)
        {
          return 0;
        }

        wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
        v23 = *(a2 + 14);
        v24 = __OFSUB__(v23, 1);
        v25 = v23 - 1;
        if (v25 < 0 == v24)
        {
          *(a2 + 14) = v25;
        }

        v11 = *(a2 + 1);
        v26 = *(a2 + 2);
      }

      while (v11 < v26 && *v11 == 18);
      if (v11 == v26 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
      {
        break;
      }
    }
  }

  *(a2 + 8) = 0;
  result = 1;
  *(a2 + 36) = 1;
  return result;
}

uint64_t awd::metrics::CommCenterBasebanCrash::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  if (*(this + 44))
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
  }

  if (*(v5 + 24) >= 1)
  {
    v6 = 0;
    do
    {
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(2, *(*(v5 + 16) + 8 * v6++), a2, a4);
    }

    while (v6 < *(v5 + 24));
  }

  return this;
}

uint64_t awd::metrics::CommCenterBasebanCrash::ByteSize(wireless_diagnostics::google::protobuf::io::CodedOutputStream **this)
{
  if (*(this + 44))
  {
    v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(this[1]);
    v5 = *(this + 6);
    v3 = (v5 + v4 + 1);
    if (v5 < 1)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v2 = *(this + 6);
    v3 = v2;
    if (v2 < 1)
    {
      goto LABEL_9;
    }
  }

  v6 = 0;
  do
  {
    while (1)
    {
      v7 = awd::metrics::CrashReasonType::ByteSize(*(this[2] + v6));
      if (v7 >= 0x80)
      {
        break;
      }

      v3 = (v7 + v3 + 1);
      if (++v6 >= *(this + 6))
      {
        goto LABEL_9;
      }
    }

    v3 = v7 + v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7);
    ++v6;
  }

  while (v6 < *(this + 6));
LABEL_9:
  *(this + 10) = v3;
  return v3;
}

void awd::metrics::CommCenterBasebanCrash::CopyFrom(awd::metrics::CommCenterBasebanCrash *this, const awd::metrics::CommCenterBasebanCrash *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))();

    awd::metrics::CommCenterBasebanCrash::MergeFrom(this, a2);
  }
}

awd::metrics::CommCenterBasebanCrash *awd::metrics::CommCenterBasebanCrash::Swap(awd::metrics::CommCenterBasebanCrash *this, awd::metrics::CommCenterBasebanCrash *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 1);
    *(this + 1) = *(a2 + 1);
    *(a2 + 1) = v2;
    v3 = this;
    this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v5 = *(v3 + 11);
    *(v3 + 11) = *(a2 + 11);
    *(a2 + 11) = v5;
    v6 = *(v3 + 10);
    *(v3 + 10) = *(a2 + 10);
    *(a2 + 10) = v6;
  }

  return this;
}

char *awd::metrics::CommCenterBasebanCrash::GetTypeName@<X0>(uint64_t a1@<X8>)
{
  result = operator new(0x28uLL);
  *a1 = result;
  *(a1 + 8) = xmmword_29769A2A0;
  strcpy(result, "awd.metrics.CommCenterBasebanCrash");
  return result;
}

void *awd::metrics::CommCenterBasebandTrace::SharedCtor(void *this)
{
  v1 = MEMORY[0x29EDC9758];
  this[1] = 0;
  this[2] = v1;
  this[3] = v1;
  this[4] = 0;
  return this;
}

awd::metrics::CommCenterBasebandTrace *awd::metrics::CommCenterBasebandTrace::CommCenterBasebandTrace(awd::metrics::CommCenterBasebandTrace *this, const awd::metrics::CommCenterBasebandTrace *a2)
{
  *(this + 4) = 0;
  *this = &unk_2A1E4AD40;
  *(this + 1) = 0;
  v3 = MEMORY[0x29EDC9758];
  *(this + 2) = MEMORY[0x29EDC9758];
  *(this + 3) = v3;
  awd::metrics::CommCenterBasebandTrace::MergeFrom(this, a2);
  return this;
}

{
  *(this + 4) = 0;
  *this = &unk_2A1E4AD40;
  *(this + 1) = 0;
  v3 = MEMORY[0x29EDC9758];
  *(this + 2) = MEMORY[0x29EDC9758];
  *(this + 3) = v3;
  awd::metrics::CommCenterBasebandTrace::MergeFrom(this, a2);
  return this;
}

void awd::metrics::CommCenterBasebandTrace::MergeFrom(awd::metrics::CommCenterBasebandTrace *this, const awd::metrics::CommCenterBasebandTrace *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v19);
  }

  LOBYTE(v4) = *(a2 + 36);
  if (v4)
  {
    if (*(a2 + 36))
    {
      v5 = *(a2 + 1);
      *(this + 9) |= 1u;
      *(this + 1) = v5;
      v4 = *(a2 + 9);
    }

    v6 = MEMORY[0x29EDC9758];
    if ((v4 & 2) != 0)
    {
      v7 = *(a2 + 2);
      *(this + 9) |= 2u;
      v8 = *(this + 2);
      if (v8 == v6)
      {
        v8 = operator new(0x18uLL);
        v8[1] = 0;
        v8[2] = 0;
        *v8 = 0;
        *(this + 2) = v8;
      }

      if (v8 != v7)
      {
        v9 = *(v7 + 23);
        if ((*(v8 + 23) & 0x80000000) == 0)
        {
          if ((*(v7 + 23) & 0x80) != 0)
          {
            std::string::__assign_no_alias<true>(v8, *v7, v7[1]);
            if ((*(a2 + 36) & 4) == 0)
            {
              return;
            }
          }

          else
          {
            v10 = *v7;
            v8[2] = v7[2];
            *v8 = v10;
            if ((*(a2 + 36) & 4) == 0)
            {
              return;
            }
          }

          goto LABEL_22;
        }

        if (v9 >= 0)
        {
          v11 = v7;
        }

        else
        {
          v11 = *v7;
        }

        if (v9 >= 0)
        {
          v12 = *(v7 + 23);
        }

        else
        {
          v12 = v7[1];
        }

        std::string::__assign_no_alias<false>(v8, v11, v12);
      }
    }

    if ((*(a2 + 36) & 4) == 0)
    {
      return;
    }

LABEL_22:
    v13 = *(a2 + 3);
    *(this + 9) |= 4u;
    v14 = *(this + 3);
    if (v14 == v6)
    {
      v14 = operator new(0x18uLL);
      v14[1] = 0;
      v14[2] = 0;
      *v14 = 0;
      *(this + 3) = v14;
    }

    if (v14 != v13)
    {
      v15 = *(v13 + 23);
      if (*(v14 + 23) < 0)
      {
        if (v15 >= 0)
        {
          v17 = v13;
        }

        else
        {
          v17 = *v13;
        }

        if (v15 >= 0)
        {
          v18 = *(v13 + 23);
        }

        else
        {
          v18 = v13[1];
        }

        std::string::__assign_no_alias<false>(v14, v17, v18);
      }

      else if ((*(v13 + 23) & 0x80) != 0)
      {
        std::string::__assign_no_alias<true>(v14, *v13, v13[1]);
      }

      else
      {
        v16 = *v13;
        v14[2] = v13[2];
        *v14 = v16;
      }
    }
  }
}

void sub_2975CCC74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2975CCC88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::CommCenterBasebandTrace::~CommCenterBasebandTrace(awd::metrics::CommCenterBasebandTrace *this)
{
  *this = &unk_2A1E4AD40;
  v2 = *(this + 2);
  v3 = MEMORY[0x29EDC9758];
  if (v2 == MEMORY[0x29EDC9758] || v2 == 0)
  {
    v5 = *(this + 3);
    if (v5 != MEMORY[0x29EDC9758] && v5 != 0)
    {
LABEL_20:
      if (*(v5 + 23) < 0)
      {
        operator delete(*v5);
      }

      operator delete(v5);
      v7 = this;

      goto LABEL_13;
    }
  }

  else
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    operator delete(v2);
    v5 = *(this + 3);
    if (v5 != v3 && v5 != 0)
    {
      goto LABEL_20;
    }
  }

  v7 = this;

LABEL_13:
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v7);
}

{
  *this = &unk_2A1E4AD40;
  v2 = *(this + 2);
  v3 = MEMORY[0x29EDC9758];
  if (v2 == MEMORY[0x29EDC9758] || v2 == 0)
  {
    v5 = *(this + 3);
    if (v5 != MEMORY[0x29EDC9758] && v5 != 0)
    {
LABEL_20:
      if (*(v5 + 23) < 0)
      {
        operator delete(*v5);
      }

      operator delete(v5);
      v7 = this;

      goto LABEL_13;
    }
  }

  else
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    operator delete(v2);
    v5 = *(this + 3);
    if (v5 != v3 && v5 != 0)
    {
      goto LABEL_20;
    }
  }

  v7 = this;

LABEL_13:
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v7);
}

{
  *this = &unk_2A1E4AD40;
  v2 = *(this + 2);
  v3 = MEMORY[0x29EDC9758];
  if (v2 != MEMORY[0x29EDC9758] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    operator delete(v2);
  }

  v5 = *(this + 3);
  if (v5 != v3 && v5 != 0)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    operator delete(v5);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete(v7);
}

void awd::metrics::CommCenterBasebandTrace::SharedDtor(awd::metrics::CommCenterBasebandTrace *this)
{
  v2 = *(this + 2);
  v3 = MEMORY[0x29EDC9758];
  if (v2 != MEMORY[0x29EDC9758] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    operator delete(v2);
  }

  v5 = *(this + 3);
  if (v5 != v3 && v5 != 0)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
      v7 = v5;
    }

    else
    {
      v7 = v5;
    }

    operator delete(v7);
  }
}

uint64_t awd::metrics::CommCenterBasebandTrace::default_instance(awd::metrics::CommCenterBasebandTrace *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::CommCenterBasebandTrace::default_instance_;
  if (!awd::metrics::CommCenterBasebandTrace::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_CCMetricsABM_2eproto(0, a2, a3, a4);
    return awd::metrics::CommCenterBasebandTrace::default_instance_;
  }

  return result;
}

void *awd::metrics::CommCenterBasebandTrace::New(awd::metrics::CommCenterBasebandTrace *this)
{
  result = operator new(0x28uLL);
  result[4] = 0;
  *result = &unk_2A1E4AD40;
  result[1] = 0;
  v2 = MEMORY[0x29EDC9758];
  result[2] = MEMORY[0x29EDC9758];
  result[3] = v2;
  return result;
}

uint64_t awd::metrics::CommCenterBasebandTrace::Clear(uint64_t this)
{
  v1 = *(this + 36);
  if (!v1)
  {
    goto LABEL_12;
  }

  *(this + 8) = 0;
  v2 = MEMORY[0x29EDC9758];
  if ((v1 & 2) != 0)
  {
    v3 = *(this + 16);
    if (v3 != MEMORY[0x29EDC9758])
    {
      if (*(v3 + 23) < 0)
      {
        **v3 = 0;
        *(v3 + 8) = 0;
        if ((*(this + 36) & 4) == 0)
        {
          goto LABEL_12;
        }

        goto LABEL_7;
      }

      *v3 = 0;
      *(v3 + 23) = 0;
    }
  }

  if ((*(this + 36) & 4) == 0)
  {
LABEL_12:
    *(this + 36) = 0;
    return this;
  }

LABEL_7:
  v4 = *(this + 24);
  if (v4 == v2)
  {
    goto LABEL_12;
  }

  if (*(v4 + 23) < 0)
  {
    **v4 = 0;
    *(v4 + 8) = 0;
  }

  else
  {
    *v4 = 0;
    *(v4 + 23) = 0;
  }

  *(this + 36) = 0;
  return this;
}

uint64_t awd::metrics::CommCenterBasebandTrace::MergePartialFromCodedStream(awd::metrics::CommCenterBasebandTrace *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  v4 = MEMORY[0x29EDC9758];
  do
  {
    while (1)
    {
      v5 = *(a2 + 1);
      if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
      {
        TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
        *(a2 + 8) = TagFallback;
        if (!TagFallback)
        {
          return 1;
        }
      }

      else
      {
        *(a2 + 8) = TagFallback;
        *(a2 + 1) = v5 + 1;
        if (!TagFallback)
        {
          return 1;
        }
      }

      v7 = TagFallback >> 3;
      v8 = TagFallback & 7;
      if (TagFallback >> 3 == 3)
      {
        break;
      }

      if (v7 == 2)
      {
        if (v8 != 2)
        {
          goto LABEL_23;
        }

        *(this + 9) |= 2u;
        if (*(this + 2) == v4)
        {
          goto LABEL_17;
        }

LABEL_18:
        result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
        if (!result)
        {
          return result;
        }

        v16 = *(a2 + 1);
        if (v16 < *(a2 + 2) && *v16 == 26)
        {
          *(a2 + 1) = v16 + 1;
          goto LABEL_26;
        }
      }

      else if (v7 != 1 || (TagFallback & 7) != 0)
      {
LABEL_23:
        if (v8 == 4)
        {
          return 1;
        }

        if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        v10 = *(a2 + 1);
        v9 = *(a2 + 2);
        if (v10 >= v9 || (v11 = *v10, v11 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
          if (!result)
          {
            return result;
          }

          v12 = *(a2 + 1);
          v18 = *(a2 + 2);
          v13 = *(this + 9) | 1;
          *(this + 9) = v13;
          if (v12 < v18)
          {
            goto LABEL_35;
          }
        }

        else
        {
          *(this + 1) = v11;
          v12 = v10 + 1;
          *(a2 + 1) = v12;
          v13 = *(this + 9) | 1;
          *(this + 9) = v13;
          if (v12 < v9)
          {
LABEL_35:
            if (*v12 == 18)
            {
              *(a2 + 1) = v12 + 1;
              *(this + 9) = v13 | 2;
              if (*(this + 2) != v4)
              {
                goto LABEL_18;
              }

LABEL_17:
              v14 = operator new(0x18uLL);
              v14[1] = 0;
              v14[2] = 0;
              *v14 = 0;
              *(this + 2) = v14;
              goto LABEL_18;
            }
          }
        }
      }
    }

    if (v8 != 2)
    {
      goto LABEL_23;
    }

LABEL_26:
    *(this + 9) |= 4u;
    if (*(this + 3) == v4)
    {
      v17 = operator new(0x18uLL);
      v17[1] = 0;
      v17[2] = 0;
      *v17 = 0;
      *(this + 3) = v17;
    }

    result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
    if (!result)
    {
      return result;
    }
  }

  while (*(a2 + 1) != *(a2 + 2) || !*(a2 + 11) && *(a2 + 6) != *(a2 + 10));
  *(a2 + 8) = 0;
  result = 1;
  *(a2 + 36) = 1;
  return result;
}

uint64_t awd::metrics::CommCenterBasebandTrace::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v4 = this;
  v5 = *(this + 36);
  if ((v5 & 1) == 0)
  {
    if ((v5 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v6 = *(v4 + 16);
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
    if ((*(v4 + 36) & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
  v5 = *(v4 + 36);
  if ((v5 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v5 & 4) == 0)
  {
    return this;
  }

LABEL_7:
  v7 = *(v4 + 24);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
}

uint64_t awd::metrics::CommCenterBasebandTrace::ByteSize(awd::metrics::CommCenterBasebandTrace *this)
{
  LOBYTE(v2) = *(this + 36);
  if (!v2)
  {
    result = 0;
LABEL_6:
    *(this + 8) = result;
    return result;
  }

  if (*(this + 36))
  {
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 9);
    if ((v2 & 2) == 0)
    {
      goto LABEL_17;
    }
  }

  else
  {
    result = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_17;
    }
  }

  v4 = *(this + 2);
  v5 = *(v4 + 23);
  v6 = v5;
  v7 = *(v4 + 8);
  if ((v5 & 0x80u) == 0)
  {
    v8 = *(v4 + 23);
  }

  else
  {
    v8 = v7;
  }

  if (v8 >= 0x80)
  {
    v10 = result;
    v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8);
    LODWORD(result) = v10;
    v5 = *(v4 + 23);
    v7 = *(v4 + 8);
    v2 = *(this + 9);
    v6 = *(v4 + 23);
  }

  else
  {
    v9 = 1;
  }

  if (v6 < 0)
  {
    v5 = v7;
  }

  result = (result + v9 + v5 + 1);
LABEL_17:
  if ((v2 & 4) == 0)
  {
    goto LABEL_6;
  }

  v11 = *(this + 3);
  v12 = *(v11 + 23);
  v13 = v12;
  v14 = *(v11 + 8);
  if ((v12 & 0x80u) == 0)
  {
    v15 = *(v11 + 23);
  }

  else
  {
    v15 = v14;
  }

  if (v15 >= 0x80)
  {
    v17 = result;
    v16 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15);
    LODWORD(result) = v17;
    v12 = *(v11 + 23);
    v14 = *(v11 + 8);
    v13 = *(v11 + 23);
  }

  else
  {
    v16 = 1;
  }

  if (v13 < 0)
  {
    v12 = v14;
  }

  result = (result + v16 + v12 + 1);
  *(this + 8) = result;
  return result;
}

void awd::metrics::CommCenterBasebandTrace::CopyFrom(awd::metrics::CommCenterBasebandTrace *this, const awd::metrics::CommCenterBasebandTrace *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))();

    awd::metrics::CommCenterBasebandTrace::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::CommCenterBasebandTrace::Swap(uint64_t this, awd::metrics::CommCenterBasebandTrace *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    v3 = *(this + 16);
    v4 = *(a2 + 2);
    *(this + 8) = *(a2 + 1);
    *(this + 16) = v4;
    *(a2 + 1) = v2;
    *(a2 + 2) = v3;
    v5 = *(this + 24);
    *(this + 24) = *(a2 + 3);
    *(a2 + 3) = v5;
    LODWORD(v5) = *(this + 36);
    *(this + 36) = *(a2 + 9);
    *(a2 + 9) = v5;
    LODWORD(v5) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v5;
  }

  return this;
}

char *awd::metrics::CommCenterBasebandTrace::GetTypeName@<X0>(uint64_t a1@<X8>)
{
  result = operator new(0x28uLL);
  *a1 = result;
  *(a1 + 8) = xmmword_2976A4500;
  strcpy(result, "awd.metrics.CommCenterBasebandTrace");
  return result;
}

void *awd::metrics::CommCenterNVMSync::SharedCtor(void *this)
{
  this[4] = 0;
  this[1] = 0;
  this[2] = 0;
  *(this + 22) = 0;
  return this;
}

awd::metrics::CommCenterNVMSync *awd::metrics::CommCenterNVMSync::CommCenterNVMSync(awd::metrics::CommCenterNVMSync *this, const awd::metrics::CommCenterNVMSync *a2)
{
  *(this + 4) = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_2A1E4ADB8;
  *(this + 22) = 0;
  awd::metrics::CommCenterNVMSync::MergeFrom(this, a2);
  return this;
}

{
  *(this + 4) = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_2A1E4ADB8;
  *(this + 22) = 0;
  awd::metrics::CommCenterNVMSync::MergeFrom(this, a2);
  return this;
}

uint64_t awd::metrics::CommCenterNVMSync::MergeFrom(uint64_t this, const awd::metrics::CommCenterNVMSync *a2)
{
  if (a2 == this)
  {
    v2 = a2;
    v3 = this;
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v10);
    this = v3;
    a2 = v2;
  }

  LOBYTE(v4) = *(a2 + 36);
  if (v4)
  {
    if (*(a2 + 36))
    {
      v6 = *(a2 + 1);
      *(this + 36) |= 1u;
      *(this + 8) = v6;
      v4 = *(a2 + 9);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_13;
      }
    }

    else if ((*(a2 + 36) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 6);
    *(this + 36) |= 2u;
    *(this + 24) = v7;
    v4 = *(a2 + 9);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_14;
    }

LABEL_13:
    v8 = *(a2 + 2);
    *(this + 36) |= 4u;
    *(this + 16) = v8;
    v4 = *(a2 + 9);
    if ((v4 & 8) == 0)
    {
LABEL_8:
      if ((v4 & 0x10) == 0)
      {
        return this;
      }

      goto LABEL_9;
    }

LABEL_14:
    v9 = *(a2 + 28);
    *(this + 36) |= 8u;
    *(this + 28) = v9;
    if ((*(a2 + 9) & 0x10) == 0)
    {
      return this;
    }

LABEL_9:
    v5 = *(a2 + 29);
    *(this + 36) |= 0x10u;
    *(this + 29) = v5;
  }

  return this;
}

void sub_2975CD84C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2975CD860(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::CommCenterNVMSync::~CommCenterNVMSync(awd::metrics::CommCenterNVMSync *this)
{
  *this = &unk_2A1E4ADB8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1E4ADB8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1E4ADB8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete(v1);
}

uint64_t awd::metrics::CommCenterNVMSync::default_instance(awd::metrics::CommCenterNVMSync *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::CommCenterNVMSync::default_instance_;
  if (!awd::metrics::CommCenterNVMSync::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_CCMetricsABM_2eproto(0, a2, a3, a4);
    return awd::metrics::CommCenterNVMSync::default_instance_;
  }

  return result;
}

void *awd::metrics::CommCenterNVMSync::New(awd::metrics::CommCenterNVMSync *this)
{
  result = operator new(0x28uLL);
  result[4] = 0;
  result[1] = 0;
  result[2] = 0;
  *result = &unk_2A1E4ADB8;
  *(result + 22) = 0;
  return result;
}

uint64_t awd::metrics::CommCenterNVMSync::Clear(uint64_t this)
{
  if (*(this + 36))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
    *(this + 22) = 0;
  }

  *(this + 36) = 0;
  return this;
}

uint64_t awd::metrics::CommCenterNVMSync::MergePartialFromCodedStream(awd::metrics::CommCenterNVMSync *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v4 = *(a2 + 1);
          if (v4 >= *(a2 + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
          {
            TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
            *(a2 + 8) = TagFallback;
            if (!TagFallback)
            {
              return 1;
            }
          }

          else
          {
            *(a2 + 8) = TagFallback;
            *(a2 + 1) = v4 + 1;
            if (!TagFallback)
            {
              return 1;
            }
          }

          v6 = TagFallback >> 3;
          if (TagFallback >> 3 > 2)
          {
            break;
          }

          if (v6 == 1)
          {
            if ((TagFallback & 7) != 0)
            {
              goto LABEL_25;
            }

            v12 = *(a2 + 1);
            v7 = *(a2 + 2);
            if (v12 >= v7 || (v13 = *v12, v13 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
              if (!result)
              {
                return result;
              }

              v14 = *(a2 + 1);
              v7 = *(a2 + 2);
              *(this + 9) |= 1u;
              if (v14 < v7)
              {
                goto LABEL_34;
              }
            }

            else
            {
              *(this + 1) = v13;
              v14 = v12 + 1;
              *(a2 + 1) = v14;
              *(this + 9) |= 1u;
              if (v14 < v7)
              {
LABEL_34:
                if (*v14 == 16)
                {
                  v9 = v14 + 1;
                  *(a2 + 1) = v9;
                  if (v9 < v7)
                  {
                    goto LABEL_36;
                  }

LABEL_39:
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
                  if (!result)
                  {
                    return result;
                  }

                  v16 = *(a2 + 1);
                  v7 = *(a2 + 2);
                  *(this + 9) |= 2u;
                  if (v16 < v7)
                  {
                    goto LABEL_41;
                  }
                }
              }
            }
          }

          else
          {
            if (v6 != 2 || (TagFallback & 7) != 0)
            {
              goto LABEL_25;
            }

            v9 = *(a2 + 1);
            v7 = *(a2 + 2);
            if (v9 >= v7)
            {
              goto LABEL_39;
            }

LABEL_36:
            v15 = *v9;
            if (v15 < 0)
            {
              goto LABEL_39;
            }

            *(this + 6) = v15;
            v16 = v9 + 1;
            *(a2 + 1) = v16;
            *(this + 9) |= 2u;
            if (v16 < v7)
            {
LABEL_41:
              if (*v16 == 24)
              {
                v10 = v16 + 1;
                *(a2 + 1) = v10;
                if (v10 < v7)
                {
                  goto LABEL_43;
                }

LABEL_46:
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 2);
                if (!result)
                {
                  return result;
                }

                v18 = *(a2 + 1);
                v7 = *(a2 + 2);
                *(this + 9) |= 4u;
                if (v18 < v7)
                {
                  goto LABEL_48;
                }
              }
            }
          }
        }

        if (v6 != 3)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_25;
        }

        v10 = *(a2 + 1);
        v7 = *(a2 + 2);
        if (v10 >= v7)
        {
          goto LABEL_46;
        }

LABEL_43:
        v17 = *v10;
        if (v17 < 0)
        {
          goto LABEL_46;
        }

        *(this + 2) = v17;
        v18 = v10 + 1;
        *(a2 + 1) = v18;
        *(this + 9) |= 4u;
        if (v18 < v7)
        {
LABEL_48:
          if (*v18 == 32)
          {
            v11 = v18 + 1;
            *(a2 + 1) = v11;
            v25 = -1431655766;
            if (v11 >= v7)
            {
              goto LABEL_52;
            }

            goto LABEL_50;
          }
        }
      }

      if (v6 != 4)
      {
        break;
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_25;
      }

      v11 = *(a2 + 1);
      v7 = *(a2 + 2);
      v25 = -1431655766;
      if (v11 >= v7)
      {
LABEL_52:
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v25);
        if (!result)
        {
          return result;
        }

        v19 = v25;
        v20 = *(a2 + 1);
        v7 = *(a2 + 2);
        goto LABEL_54;
      }

LABEL_50:
      v19 = *v11;
      if ((v19 & 0x80000000) != 0)
      {
        goto LABEL_52;
      }

      v20 = v11 + 1;
      *(a2 + 1) = v20;
LABEL_54:
      *(this + 28) = v19 != 0;
      *(this + 9) |= 8u;
      if (v20 < v7 && *v20 == 40)
      {
        v8 = v20 + 1;
        *(a2 + 1) = v20 + 1;
        v24 = -1431655766;
        if ((v20 + 1) >= v7)
        {
          goto LABEL_59;
        }

LABEL_57:
        v21 = *v8;
        if ((v21 & 0x80000000) != 0)
        {
LABEL_59:
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v24);
          if (!result)
          {
            return result;
          }

          v21 = v24;
          v22 = *(a2 + 1);
          v7 = *(a2 + 2);
          goto LABEL_61;
        }

        v22 = v8 + 1;
        *(a2 + 1) = v22;
LABEL_61:
        *(this + 29) = v21 != 0;
        *(this + 9) |= 0x10u;
        if (v22 == v7 && (*(a2 + 11) || *(a2 + 6) == *(a2 + 10)))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }
    }

    if (v6 == 5 && (TagFallback & 7) == 0)
    {
      v8 = *(a2 + 1);
      v7 = *(a2 + 2);
      v24 = -1431655766;
      if (v8 >= v7)
      {
        goto LABEL_59;
      }

      goto LABEL_57;
    }

LABEL_25:
    if ((TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t awd::metrics::CommCenterNVMSync::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 36);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = *(v5 + 36);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 24), a2, a4);
  v6 = *(v5 + 36);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(4, *(v5 + 28), a2, a4);
    if ((*(v5 + 36) & 0x10) == 0)
    {
      return this;
    }

    goto LABEL_11;
  }

LABEL_9:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(3, *(v5 + 16), a2, a4);
  v6 = *(v5 + 36);
  if ((v6 & 8) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v6 & 0x10) == 0)
  {
    return this;
  }

LABEL_11:
  v7 = *(v5 + 29);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(5, v7, a2, a4);
}

uint64_t awd::metrics::CommCenterNVMSync::ByteSize(awd::metrics::CommCenterNVMSync *this)
{
  v2 = *(this + 9);
  if (!v2)
  {
    result = 0;
    *(this + 8) = 0;
    return result;
  }

  if ((v2 & 1) == 0)
  {
    v3 = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_11;
    }

LABEL_7:
    v5 = *(this + 6);
    if (v5 >= 0x80)
    {
      v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
      v2 = *(this + 9);
    }

    else
    {
      v6 = 2;
    }

    v3 += v6;
    goto LABEL_11;
  }

  v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
  v2 = *(this + 9);
  if ((v2 & 2) != 0)
  {
    goto LABEL_7;
  }

LABEL_11:
  if ((v2 & 4) != 0)
  {
    v3 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 2)) + 1;
    v2 = *(this + 9);
  }

  result = ((v2 >> 2) & 2) + v3 + ((v2 >> 3) & 2);
  *(this + 8) = result;
  return result;
}

const awd::metrics::CommCenterNVMSync *awd::metrics::CommCenterNVMSync::CopyFrom(const awd::metrics::CommCenterNVMSync *this, const awd::metrics::CommCenterNVMSync *a2)
{
  if (a2 != this)
  {
    v4 = this;
    (*(*this + 32))();

    return awd::metrics::CommCenterNVMSync::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t awd::metrics::CommCenterNVMSync::Swap(uint64_t this, awd::metrics::CommCenterNVMSync *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v2;
    LODWORD(v2) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v2;
    v3 = *(this + 16);
    *(this + 16) = *(a2 + 2);
    *(a2 + 2) = v3;
    LOBYTE(v3) = *(this + 28);
    *(this + 28) = *(a2 + 28);
    *(a2 + 28) = v3;
    LOBYTE(v3) = *(this + 29);
    *(this + 29) = *(a2 + 29);
    *(a2 + 29) = v3;
    LODWORD(v3) = *(this + 36);
    *(this + 36) = *(a2 + 9);
    *(a2 + 9) = v3;
    LODWORD(v3) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v3;
  }

  return this;
}

double awd::metrics::CommCenterNVMSync::GetTypeName@<D0>(uint64_t a1@<X8>)
{
  v3 = operator new(0x20uLL);
  *a1 = v3;
  *(a1 + 8) = xmmword_2976A10C0;
  strcpy(v3, "awd.metrics.CommCenterNVMSync");
  return *"ommCenterNVMSync";
}

void *awd::metrics::CommCenterAccessoryInformation::SharedCtor(void *this)
{
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

awd::metrics::CommCenterAccessoryInformation *awd::metrics::CommCenterAccessoryInformation::CommCenterAccessoryInformation(awd::metrics::CommCenterAccessoryInformation *this, const awd::metrics::CommCenterAccessoryInformation *a2)
{
  *this = &unk_2A1E4AE30;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  awd::metrics::CommCenterAccessoryInformation::MergeFrom(this, a2);
  return this;
}

{
  *this = &unk_2A1E4AE30;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  awd::metrics::CommCenterAccessoryInformation::MergeFrom(this, a2);
  return this;
}

uint64_t awd::metrics::CommCenterAccessoryInformation::MergeFrom(uint64_t this, const awd::metrics::CommCenterAccessoryInformation *a2)
{
  if (a2 == this)
  {
    v2 = a2;
    v3 = this;
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v8);
    this = v3;
    a2 = v2;
  }

  LOBYTE(v4) = *(a2 + 28);
  if (v4)
  {
    if (*(a2 + 28))
    {
      v6 = *(a2 + 1);
      *(this + 28) |= 1u;
      *(this + 8) = v6;
      v4 = *(a2 + 7);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          return this;
        }

        goto LABEL_7;
      }
    }

    else if ((*(a2 + 28) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 4);
    *(this + 28) |= 2u;
    *(this + 16) = v7;
    if ((*(a2 + 7) & 4) == 0)
    {
      return this;
    }

LABEL_7:
    v5 = *(a2 + 5);
    *(this + 28) |= 4u;
    *(this + 20) = v5;
  }

  return this;
}

void sub_2975CE1BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2975CE1D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::CommCenterAccessoryInformation::~CommCenterAccessoryInformation(awd::metrics::CommCenterAccessoryInformation *this)
{
  *this = &unk_2A1E4AE30;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1E4AE30;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1E4AE30;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete(v1);
}

uint64_t awd::metrics::CommCenterAccessoryInformation::default_instance(awd::metrics::CommCenterAccessoryInformation *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::CommCenterAccessoryInformation::default_instance_;
  if (!awd::metrics::CommCenterAccessoryInformation::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_CCMetricsABM_2eproto(0, a2, a3, a4);
    return awd::metrics::CommCenterAccessoryInformation::default_instance_;
  }

  return result;
}

void *awd::metrics::CommCenterAccessoryInformation::New(awd::metrics::CommCenterAccessoryInformation *this)
{
  result = operator new(0x20uLL);
  *result = &unk_2A1E4AE30;
  result[1] = 0;
  result[2] = 0;
  result[3] = 0;
  return result;
}

uint64_t awd::metrics::CommCenterAccessoryInformation::Clear(uint64_t this)
{
  if (*(this + 28))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
  }

  *(this + 28) = 0;
  return this;
}

uint64_t awd::metrics::CommCenterAccessoryInformation::MergePartialFromCodedStream(awd::metrics::CommCenterAccessoryInformation *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v4 = *(a2 + 1);
          if (v4 >= *(a2 + 2) || (TagFallback = *v4, (TagFallback & 0x80000000) != 0))
          {
            TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
            *(a2 + 8) = TagFallback;
            if (!TagFallback)
            {
              return 1;
            }
          }

          else
          {
            *(a2 + 8) = TagFallback;
            *(a2 + 1) = v4 + 1;
            if (!TagFallback)
            {
              return 1;
            }
          }

          v6 = TagFallback >> 3;
          if (TagFallback >> 3 != 3)
          {
            break;
          }

          if ((TagFallback & 7) != 0)
          {
            goto LABEL_18;
          }

          v12 = *(a2 + 1);
          v7 = *(a2 + 2);
          if (v12 >= v7)
          {
            goto LABEL_37;
          }

LABEL_34:
          v15 = *v12;
          if (v15 < 0)
          {
            goto LABEL_37;
          }

          *(this + 5) = v15;
          v16 = v12 + 1;
          *(a2 + 1) = v16;
          *(this + 7) |= 4u;
          if (v16 == v7)
          {
LABEL_39:
            if (*(a2 + 11) || *(a2 + 6) == *(a2 + 10))
            {
              *(a2 + 8) = 0;
              result = 1;
              *(a2 + 36) = 1;
              return result;
            }
          }
        }

        if (v6 != 2)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_18;
        }

        v11 = *(a2 + 1);
        v7 = *(a2 + 2);
        if (v11 >= v7)
        {
          goto LABEL_30;
        }

LABEL_27:
        v13 = *v11;
        if (v13 < 0)
        {
          goto LABEL_30;
        }

        *(this + 4) = v13;
        v14 = v11 + 1;
        *(a2 + 1) = v14;
        *(this + 7) |= 2u;
        if (v14 < v7)
        {
LABEL_32:
          if (*v14 == 24)
          {
            v12 = v14 + 1;
            *(a2 + 1) = v12;
            if (v12 < v7)
            {
              goto LABEL_34;
            }

LABEL_37:
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
            if (!result)
            {
              return result;
            }

            v18 = *(a2 + 1);
            v17 = *(a2 + 2);
            *(this + 7) |= 4u;
            if (v18 == v17)
            {
              goto LABEL_39;
            }
          }
        }
      }

      if (v6 != 1 || (TagFallback & 7) != 0)
      {
        break;
      }

      v8 = *(a2 + 1);
      v7 = *(a2 + 2);
      if (v8 >= v7 || (v9 = *v8, v9 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
        if (!result)
        {
          return result;
        }

        v10 = *(a2 + 1);
        v7 = *(a2 + 2);
        *(this + 7) |= 1u;
        if (v10 < v7)
        {
          goto LABEL_25;
        }
      }

      else
      {
        *(this + 1) = v9;
        v10 = v8 + 1;
        *(a2 + 1) = v10;
        *(this + 7) |= 1u;
        if (v10 < v7)
        {
LABEL_25:
          if (*v10 == 16)
          {
            v11 = v10 + 1;
            *(a2 + 1) = v11;
            if (v11 < v7)
            {
              goto LABEL_27;
            }

LABEL_30:
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
            if (!result)
            {
              return result;
            }

            v14 = *(a2 + 1);
            v7 = *(a2 + 2);
            *(this + 7) |= 2u;
            if (v14 < v7)
            {
              goto LABEL_32;
            }
          }
        }
      }
    }

LABEL_18:
    if ((TagFallback & 7) == 4)
    {
      return 1;
    }

    if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
    {
      return 0;
    }
  }
}

uint64_t awd::metrics::CommCenterAccessoryInformation::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 28);
  if ((v6 & 1) == 0)
  {
    if ((v6 & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v5[4], a2, a4);
    if ((v5[7] & 4) == 0)
    {
      return this;
    }

    goto LABEL_7;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
  v6 = v5[7];
  if ((v6 & 2) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if ((v6 & 4) == 0)
  {
    return this;
  }

LABEL_7:
  v7 = v5[5];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, v7, a2, a4);
}

uint64_t awd::metrics::CommCenterAccessoryInformation::ByteSize(awd::metrics::CommCenterAccessoryInformation *this)
{
  LOBYTE(v2) = *(this + 28);
  if (!v2)
  {
    result = 0;
LABEL_6:
    *(this + 6) = result;
    return result;
  }

  if (*(this + 28))
  {
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 7);
    if ((v2 & 2) == 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    result = 0;
    if ((v2 & 2) == 0)
    {
      goto LABEL_12;
    }
  }

  if (*(this + 4) >= 0x80u)
  {
    v5 = result;
    v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(*(this + 4));
    LODWORD(result) = v5;
    v4 = v6 + 1;
    v2 = *(this + 7);
  }

  else
  {
    v4 = 2;
  }

  result = (v4 + result);
LABEL_12:
  if ((v2 & 4) == 0)
  {
    goto LABEL_6;
  }

  if (*(this + 5) >= 0x80u)
  {
    result = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(*(this + 5)) + 1 + result;
  }

  else
  {
    result = (result + 2);
  }

  *(this + 6) = result;
  return result;
}

const awd::metrics::CommCenterAccessoryInformation *awd::metrics::CommCenterAccessoryInformation::CopyFrom(const awd::metrics::CommCenterAccessoryInformation *this, const awd::metrics::CommCenterAccessoryInformation *a2)
{
  if (a2 != this)
  {
    v4 = this;
    (*(*this + 32))();

    return awd::metrics::CommCenterAccessoryInformation::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t awd::metrics::CommCenterAccessoryInformation::Swap(uint64_t this, awd::metrics::CommCenterAccessoryInformation *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v2;
    LODWORD(v2) = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v2;
    LODWORD(v2) = *(this + 20);
    *(this + 20) = *(a2 + 5);
    *(a2 + 5) = v2;
    LODWORD(v2) = *(this + 28);
    *(this + 28) = *(a2 + 7);
    *(a2 + 7) = v2;
    LODWORD(v2) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v2;
  }

  return this;
}

double awd::metrics::CommCenterAccessoryInformation::GetTypeName@<D0>(uint64_t a1@<X8>)
{
  v3 = operator new(0x30uLL);
  *a1 = v3;
  *(a1 + 8) = xmmword_2976A4510;
  strcpy(v3, "awd.metrics.CommCenterAccessoryInformation");
  return *"ssoryInformation";
}

uint64_t awd::metrics::MetricsCCBasebandReset::SharedCtor(uint64_t this)
{
  v1 = MEMORY[0x29EDC9758];
  *(this + 8) = MEMORY[0x29EDC9758];
  *(this + 16) = 0;
  *(this + 40) = 0;
  *(this + 24) = v1;
  *(this + 32) = v1;
  *(this + 44) = 0;
  *(this + 56) = 0;
  *(this + 64) = 0;
  *(this + 48) = v1;
  return this;
}

awd::metrics::MetricsCCBasebandReset *awd::metrics::MetricsCCBasebandReset::MetricsCCBasebandReset(awd::metrics::MetricsCCBasebandReset *this, const awd::metrics::MetricsCCBasebandReset *a2)
{
  v3 = MEMORY[0x29EDC9758];
  *this = &unk_2A1E4AEA8;
  *(this + 1) = v3;
  *(this + 20) = 0;
  *(this + 2) = 0;
  *(this + 3) = v3;
  *(this + 4) = v3;
  *(this + 11) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 6) = v3;
  awd::metrics::MetricsCCBasebandReset::MergeFrom(this, a2);
  return this;
}

{
  v3 = MEMORY[0x29EDC9758];
  *this = &unk_2A1E4AEA8;
  *(this + 1) = v3;
  *(this + 20) = 0;
  *(this + 2) = 0;
  *(this + 3) = v3;
  *(this + 4) = v3;
  *(this + 11) = 0;
  *(this + 7) = 0;
  *(this + 8) = 0;
  *(this + 6) = v3;
  awd::metrics::MetricsCCBasebandReset::MergeFrom(this, a2);
  return this;
}

void awd::metrics::MetricsCCBasebandReset::MergeFrom(awd::metrics::MetricsCCBasebandReset *this, const awd::metrics::MetricsCCBasebandReset *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v37);
  }

  v4 = *(a2 + 17);
  if (!v4)
  {
    goto LABEL_76;
  }

  v5 = MEMORY[0x29EDC9758];
  if ((v4 & 1) == 0)
  {
    goto LABEL_19;
  }

  v6 = *(a2 + 1);
  *(this + 17) |= 1u;
  v7 = *(this + 1);
  if (v7 == v5)
  {
    v7 = operator new(0x18uLL);
    v7[1] = 0;
    v7[2] = 0;
    *v7 = 0;
    *(this + 1) = v7;
  }

  if (v7 == v6)
  {
LABEL_19:
    v10 = *(a2 + 17);
    if ((v10 & 2) != 0)
    {
      goto LABEL_25;
    }

    goto LABEL_20;
  }

  v8 = *(v6 + 23);
  if (*(v7 + 23) < 0)
  {
    if (v8 >= 0)
    {
      v11 = v6;
    }

    else
    {
      v11 = *v6;
    }

    if (v8 >= 0)
    {
      v12 = *(v6 + 23);
    }

    else
    {
      v12 = v6[1];
    }

    std::string::__assign_no_alias<false>(v7, v11, v12);
    goto LABEL_19;
  }

  if ((*(v6 + 23) & 0x80) != 0)
  {
    std::string::__assign_no_alias<true>(v7, *v6, v6[1]);
    v10 = *(a2 + 17);
    if ((v10 & 2) != 0)
    {
      goto LABEL_25;
    }

LABEL_20:
    if ((v10 & 4) != 0)
    {
      goto LABEL_26;
    }

LABEL_21:
    if ((v10 & 8) != 0)
    {
      goto LABEL_27;
    }

    goto LABEL_22;
  }

  v9 = *v6;
  v7[2] = v6[2];
  *v7 = v9;
  v10 = *(a2 + 17);
  if ((v10 & 2) == 0)
  {
    goto LABEL_20;
  }

LABEL_25:
  v13 = *(a2 + 40);
  *(this + 17) |= 2u;
  *(this + 40) = v13;
  v10 = *(a2 + 17);
  if ((v10 & 4) == 0)
  {
    goto LABEL_21;
  }

LABEL_26:
  v14 = *(a2 + 4);
  *(this + 17) |= 4u;
  *(this + 4) = v14;
  v10 = *(a2 + 17);
  if ((v10 & 8) != 0)
  {
LABEL_27:
    v15 = *(a2 + 5);
    *(this + 17) |= 8u;
    *(this + 5) = v15;
    if ((*(a2 + 17) & 0x10) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_28;
  }

LABEL_22:
  if ((v10 & 0x10) == 0)
  {
    goto LABEL_42;
  }

LABEL_28:
  v16 = *(a2 + 3);
  *(this + 17) |= 0x10u;
  v17 = *(this + 3);
  if (v17 == v5)
  {
    v17 = operator new(0x18uLL);
    v17[1] = 0;
    v17[2] = 0;
    *v17 = 0;
    *(this + 3) = v17;
  }

  if (v17 == v16)
  {
LABEL_42:
    if ((*(a2 + 68) & 0x20) == 0)
    {
      goto LABEL_59;
    }

    goto LABEL_43;
  }

  v18 = *(v16 + 23);
  if (*(v17 + 23) < 0)
  {
    if (v18 >= 0)
    {
      v20 = v16;
    }

    else
    {
      v20 = *v16;
    }

    if (v18 >= 0)
    {
      v21 = *(v16 + 23);
    }

    else
    {
      v21 = v16[1];
    }

    std::string::__assign_no_alias<false>(v17, v20, v21);
    goto LABEL_42;
  }

  if ((*(v16 + 23) & 0x80) != 0)
  {
    std::string::__assign_no_alias<true>(v17, *v16, v16[1]);
    if ((*(a2 + 68) & 0x20) == 0)
    {
      goto LABEL_59;
    }
  }

  else
  {
    v19 = *v16;
    v17[2] = v16[2];
    *v17 = v19;
    if ((*(a2 + 68) & 0x20) == 0)
    {
      goto LABEL_59;
    }
  }

LABEL_43:
  v22 = *(a2 + 4);
  *(this + 17) |= 0x20u;
  v23 = *(this + 4);
  if (v23 == v5)
  {
    v23 = operator new(0x18uLL);
    v23[1] = 0;
    v23[2] = 0;
    *v23 = 0;
    *(this + 4) = v23;
  }

  if (v23 != v22)
  {
    v24 = *(v22 + 23);
    if (*(v23 + 23) < 0)
    {
      if (v24 >= 0)
      {
        v26 = v22;
      }

      else
      {
        v26 = *v22;
      }

      if (v24 >= 0)
      {
        v27 = *(v22 + 23);
      }

      else
      {
        v27 = v22[1];
      }

      std::string::__assign_no_alias<false>(v23, v26, v27);
    }

    else if ((*(v22 + 23) & 0x80) != 0)
    {
      std::string::__assign_no_alias<true>(v23, *v22, v22[1]);
    }

    else
    {
      v25 = *v22;
      v23[2] = v22[2];
      *v23 = v25;
    }
  }

LABEL_59:
  if ((*(a2 + 68) & 0x40) == 0)
  {
    goto LABEL_74;
  }

  v28 = *(a2 + 6);
  *(this + 17) |= 0x40u;
  v29 = *(this + 6);
  if (v29 == v5)
  {
    v29 = operator new(0x18uLL);
    v29[1] = 0;
    v29[2] = 0;
    *v29 = 0;
    *(this + 6) = v29;
  }

  if (v29 == v28)
  {
LABEL_74:
    v4 = *(a2 + 17);
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_76;
    }

    goto LABEL_75;
  }

  v30 = *(v28 + 23);
  if (*(v29 + 23) < 0)
  {
    if (v30 >= 0)
    {
      v32 = v28;
    }

    else
    {
      v32 = *v28;
    }

    if (v30 >= 0)
    {
      v33 = *(v28 + 23);
    }

    else
    {
      v33 = v28[1];
    }

    std::string::__assign_no_alias<false>(v29, v32, v33);
    goto LABEL_74;
  }

  if ((*(v28 + 23) & 0x80) == 0)
  {
    v31 = *v28;
    v29[2] = v28[2];
    *v29 = v31;
    v4 = *(a2 + 17);
    if ((v4 & 0x80) == 0)
    {
      goto LABEL_76;
    }

LABEL_75:
    v34 = *(a2 + 11);
    *(this + 17) |= 0x80u;
    *(this + 11) = v34;
    v4 = *(a2 + 17);
    goto LABEL_76;
  }

  std::string::__assign_no_alias<true>(v29, *v28, v28[1]);
  v4 = *(a2 + 17);
  if ((v4 & 0x80) != 0)
  {
    goto LABEL_75;
  }

LABEL_76:
  if ((v4 & 0xFF00) != 0)
  {
    if ((v4 & 0x100) != 0)
    {
      v35 = *(a2 + 7);
      *(this + 17) |= 0x100u;
      *(this + 7) = v35;
      v4 = *(a2 + 17);
    }

    if ((v4 & 0x200) != 0)
    {
      v36 = *(a2 + 41);
      *(this + 17) |= 0x200u;
      *(this + 41) = v36;
    }
  }
}

void sub_2975CECA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2975CECB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::MetricsCCBasebandReset::~MetricsCCBasebandReset(awd::metrics::MetricsCCBasebandReset *this)
{
  *this = &unk_2A1E4AEA8;
  awd::metrics::MetricsCCBasebandReset::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1E4AEA8;
  awd::metrics::MetricsCCBasebandReset::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1E4AEA8;
  awd::metrics::MetricsCCBasebandReset::SharedDtor(this);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete(v2);
}

void awd::metrics::MetricsCCBasebandReset::SharedDtor(awd::metrics::MetricsCCBasebandReset *this)
{
  v2 = *(this + 1);
  v3 = MEMORY[0x29EDC9758];
  if (v2 == MEMORY[0x29EDC9758] || v2 == 0)
  {
    v5 = *(this + 3);
    if (v5 != MEMORY[0x29EDC9758] && v5 != 0)
    {
      goto LABEL_28;
    }

LABEL_11:
    v7 = *(this + 4);
    if (v7 != v3 && v7 != 0)
    {
      goto LABEL_34;
    }

LABEL_16:
    v9 = *(this + 6);
    if (v9 == v3 || v9 == 0)
    {
      return;
    }

    goto LABEL_40;
  }

  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  operator delete(v2);
  v5 = *(this + 3);
  if (v5 == v3 || v5 == 0)
  {
    goto LABEL_11;
  }

LABEL_28:
  if (*(v5 + 23) < 0)
  {
    operator delete(*v5);
  }

  operator delete(v5);
  v7 = *(this + 4);
  if (v7 == v3 || v7 == 0)
  {
    goto LABEL_16;
  }

LABEL_34:
  if (*(v7 + 23) < 0)
  {
    operator delete(*v7);
  }

  operator delete(v7);
  v9 = *(this + 6);
  if (v9 != v3 && v9 != 0)
  {
LABEL_40:
    if (*(v9 + 23) < 0)
    {
      operator delete(*v9);
      v14 = v9;
    }

    else
    {
      v14 = v9;
    }

    operator delete(v14);
  }
}

uint64_t awd::metrics::MetricsCCBasebandReset::default_instance(awd::metrics::MetricsCCBasebandReset *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::MetricsCCBasebandReset::default_instance_;
  if (!awd::metrics::MetricsCCBasebandReset::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_CCMetricsABM_2eproto(0, a2, a3, a4);
    return awd::metrics::MetricsCCBasebandReset::default_instance_;
  }

  return result;
}

void *awd::metrics::MetricsCCBasebandReset::New(awd::metrics::MetricsCCBasebandReset *this)
{
  result = operator new(0x48uLL);
  v2 = MEMORY[0x29EDC9758];
  *result = &unk_2A1E4AEA8;
  result[1] = v2;
  *(result + 20) = 0;
  result[2] = 0;
  result[3] = v2;
  result[4] = v2;
  *(result + 11) = 0;
  result[7] = 0;
  result[8] = 0;
  result[6] = v2;
  return result;
}

uint64_t awd::metrics::MetricsCCBasebandReset::Clear(uint64_t this)
{
  v1 = *(this + 68);
  if (v1)
  {
    v2 = MEMORY[0x29EDC9758];
    if (v1)
    {
      v3 = *(this + 8);
      if (v3 != MEMORY[0x29EDC9758])
      {
        if (*(v3 + 23) < 0)
        {
          **v3 = 0;
          *(v3 + 8) = 0;
          *(this + 40) = 0;
          *(this + 16) = 0;
          if ((*(this + 68) & 0x10) == 0)
          {
            goto LABEL_13;
          }

LABEL_7:
          v4 = *(this + 24);
          if (v4 != v2)
          {
            if (*(v4 + 23) < 0)
            {
              **v4 = 0;
              *(v4 + 8) = 0;
            }

            else
            {
              *v4 = 0;
              *(v4 + 23) = 0;
            }
          }

LABEL_13:
          if ((*(this + 68) & 0x20) != 0)
          {
            v5 = *(this + 32);
            if (v5 != v2)
            {
              if (*(v5 + 23) < 0)
              {
                **v5 = 0;
                *(v5 + 8) = 0;
                if ((*(this + 68) & 0x40) != 0)
                {
LABEL_18:
                  v6 = *(this + 48);
                  if (v6 != v2)
                  {
                    if (*(v6 + 23) < 0)
                    {
                      **v6 = 0;
                      *(v6 + 8) = 0;
                    }

                    else
                    {
                      *v6 = 0;
                      *(v6 + 23) = 0;
                    }
                  }
                }

LABEL_24:
                *(this + 44) = 0;
                v1 = *(this + 68);
                goto LABEL_25;
              }

              *v5 = 0;
              *(v5 + 23) = 0;
            }
          }

          if ((*(this + 68) & 0x40) != 0)
          {
            goto LABEL_18;
          }

          goto LABEL_24;
        }

        *v3 = 0;
        *(v3 + 23) = 0;
      }
    }

    *(this + 40) = 0;
    *(this + 16) = 0;
    if ((*(this + 68) & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_7;
  }

LABEL_25:
  if ((v1 & 0xFF00) != 0)
  {
    *(this + 56) = 0;
    *(this + 41) = 0;
  }

  *(this + 68) = 0;
  return this;
}

uint64_t awd::metrics::MetricsCCBasebandReset::MergePartialFromCodedStream(awd::metrics::MetricsCCBasebandReset *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  v4 = MEMORY[0x29EDC9758];
  do
  {
    do
    {
      while (1)
      {
        while (1)
        {
          while (1)
          {
            v5 = *(a2 + 1);
            if (v5 >= *(a2 + 2) || (TagFallback = *v5, (TagFallback & 0x80000000) != 0))
            {
              TagFallback = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadTagFallback(a2);
              *(a2 + 8) = TagFallback;
              if (!TagFallback)
              {
                return 1;
              }
            }

            else
            {
              *(a2 + 8) = TagFallback;
              *(a2 + 1) = v5 + 1;
              if (!TagFallback)
              {
                return 1;
              }
            }

            v7 = TagFallback >> 3;
            v8 = TagFallback & 7;
            if (TagFallback >> 3 > 5)
            {
              break;
            }

            if (TagFallback >> 3 <= 2)
            {
              if (v7 == 1)
              {
                if (v8 != 2)
                {
                  goto LABEL_69;
                }

                *(this + 17) |= 1u;
                if (*(this + 1) == v4)
                {
                  v18 = operator new(0x18uLL);
                  v18[1] = 0;
                  v18[2] = 0;
                  *v18 = 0;
                  *(this + 1) = v18;
                }

                result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
                if (!result)
                {
                  return result;
                }

                v19 = *(a2 + 1);
                v13 = *(a2 + 2);
                if (v19 < v13 && *v19 == 16)
                {
                  v14 = v19 + 1;
                  *(a2 + 1) = v14;
                  v45 = -1431655766;
                  if (v14 >= v13)
                  {
                    goto LABEL_101;
                  }

LABEL_43:
                  v20 = *v14;
                  if ((v20 & 0x80000000) != 0)
                  {
LABEL_101:
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v45);
                    if (!result)
                    {
                      return result;
                    }

                    v20 = v45;
                    v21 = *(a2 + 1);
                    v13 = *(a2 + 2);
                    goto LABEL_103;
                  }

                  v21 = v14 + 1;
                  *(a2 + 1) = v21;
LABEL_103:
                  *(this + 40) = v20 != 0;
                  *(this + 17) |= 2u;
                  if (v21 < v13 && *v21 == 24)
                  {
                    v23 = v21 + 1;
                    *(a2 + 1) = v23;
                    if (v23 < v13)
                    {
                      goto LABEL_106;
                    }

LABEL_109:
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
                    if (!result)
                    {
                      return result;
                    }

                    v41 = *(a2 + 1);
                    v43 = *(a2 + 2);
                    v42 = *(this + 17) | 4;
                    *(this + 17) = v42;
                    if (v41 < v43)
                    {
                      goto LABEL_111;
                    }
                  }
                }
              }

              else
              {
                if (v7 == 2 && (TagFallback & 7) == 0)
                {
                  v14 = *(a2 + 1);
                  v13 = *(a2 + 2);
                  v45 = -1431655766;
                  if (v14 >= v13)
                  {
                    goto LABEL_101;
                  }

                  goto LABEL_43;
                }

LABEL_69:
                if (v8 == 4)
                {
                  return 1;
                }

                if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
                {
                  return 0;
                }
              }
            }

            else if (v7 == 3)
            {
              if ((TagFallback & 7) != 0)
              {
                goto LABEL_69;
              }

              v23 = *(a2 + 1);
              v13 = *(a2 + 2);
              if (v23 >= v13)
              {
                goto LABEL_109;
              }

LABEL_106:
              v40 = *v23;
              if (v40 < 0)
              {
                goto LABEL_109;
              }

              *(this + 4) = v40;
              v41 = v23 + 1;
              *(a2 + 1) = v41;
              v42 = *(this + 17) | 4;
              *(this + 17) = v42;
              if (v41 < v13)
              {
LABEL_111:
                if (*v41 == 34)
                {
                  *(a2 + 1) = v41 + 1;
                  *(this + 17) = v42 | 0x10;
                  if (*(this + 3) != v4)
                  {
                    goto LABEL_61;
                  }

LABEL_60:
                  v27 = operator new(0x18uLL);
                  v27[1] = 0;
                  v27[2] = 0;
                  *v27 = 0;
                  *(this + 3) = v27;
                  goto LABEL_61;
                }
              }
            }

            else if (v7 == 4)
            {
              if (v8 != 2)
              {
                goto LABEL_69;
              }

              *(this + 17) |= 0x10u;
              if (*(this + 3) == v4)
              {
                goto LABEL_60;
              }

LABEL_61:
              result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
              if (!result)
              {
                return result;
              }

              v28 = *(a2 + 1);
              v9 = *(a2 + 2);
              if (v28 < v9 && *v28 == 40)
              {
                v10 = v28 + 1;
                *(a2 + 1) = v10;
                if (v10 < v9)
                {
                  goto LABEL_65;
                }

LABEL_89:
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 7);
                if (!result)
                {
                  return result;
                }

                v30 = *(a2 + 1);
                v9 = *(a2 + 2);
                *(this + 17) |= 0x100u;
                if (v30 < v9)
                {
                  goto LABEL_91;
                }
              }
            }

            else
            {
              if (v7 != 5 || (TagFallback & 7) != 0)
              {
                goto LABEL_69;
              }

              v10 = *(a2 + 1);
              v9 = *(a2 + 2);
              if (v10 >= v9)
              {
                goto LABEL_89;
              }

LABEL_65:
              v29 = *v10;
              if (v29 < 0)
              {
                goto LABEL_89;
              }

              *(this + 7) = v29;
              v30 = v10 + 1;
              *(a2 + 1) = v30;
              *(this + 17) |= 0x100u;
              if (v30 < v9)
              {
LABEL_91:
                if (*v30 == 48)
                {
                  v22 = v30 + 1;
                  *(a2 + 1) = v22;
                  v44 = -1431655766;
                  if (v22 >= v9)
                  {
                    goto LABEL_95;
                  }

LABEL_93:
                  v37 = *v22;
                  if ((v37 & 0x80000000) != 0)
                  {
LABEL_95:
                    result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v44);
                    if (!result)
                    {
                      return result;
                    }

                    v37 = v44;
                    v38 = *(a2 + 1);
                    v9 = *(a2 + 2);
                    goto LABEL_97;
                  }

                  v38 = v22 + 1;
                  *(a2 + 1) = v38;
LABEL_97:
                  *(this + 41) = v37 != 0;
                  v39 = *(this + 17) | 0x200;
                  *(this + 17) = v39;
                  if (v38 < v9 && *v38 == 58)
                  {
                    *(a2 + 1) = v38 + 1;
                    *(this + 17) = v39 | 0x20;
                    if (*(this + 4) != v4)
                    {
                      goto LABEL_32;
                    }

LABEL_31:
                    v15 = operator new(0x18uLL);
                    v15[1] = 0;
                    v15[2] = 0;
                    *v15 = 0;
                    *(this + 4) = v15;
                    goto LABEL_32;
                  }
                }
              }
            }
          }

          if (TagFallback >> 3 > 7)
          {
            break;
          }

          if (v7 == 6)
          {
            if ((TagFallback & 7) == 0)
            {
              v22 = *(a2 + 1);
              v9 = *(a2 + 2);
              v44 = -1431655766;
              if (v22 >= v9)
              {
                goto LABEL_95;
              }

              goto LABEL_93;
            }

            goto LABEL_69;
          }

          if (v7 != 7 || v8 != 2)
          {
            goto LABEL_69;
          }

          *(this + 17) |= 0x20u;
          if (*(this + 4) == v4)
          {
            goto LABEL_31;
          }

LABEL_32:
          result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
          if (!result)
          {
            return result;
          }

          v17 = *(a2 + 1);
          if (v17 < *(a2 + 2) && *v17 == 66)
          {
            *(a2 + 1) = v17 + 1;
LABEL_52:
            *(this + 17) |= 0x40u;
            if (*(this + 6) == v4)
            {
              v24 = operator new(0x18uLL);
              v24[1] = 0;
              v24[2] = 0;
              *v24 = 0;
              *(this + 6) = v24;
            }

            result = wireless_diagnostics::google::protobuf::internal::WireFormatLite::ReadString();
            if (!result)
            {
              return result;
            }

            v25 = *(a2 + 1);
            v11 = *(a2 + 2);
            if (v25 < v11 && *v25 == 72)
            {
              v26 = v25 + 1;
              *(a2 + 1) = v26;
              goto LABEL_73;
            }
          }
        }

        if (v7 == 8)
        {
          if (v8 == 2)
          {
            goto LABEL_52;
          }

          goto LABEL_69;
        }

        if (v7 != 9)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_69;
        }

        v26 = *(a2 + 1);
        v11 = *(a2 + 2);
LABEL_73:
        if (v26 >= v11 || (v31 = *v26, v31 < 0))
        {
          result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 11);
          if (!result)
          {
            return result;
          }

          v32 = *(a2 + 1);
          v11 = *(a2 + 2);
          *(this + 17) |= 0x80u;
          if (v32 < v11)
          {
            goto LABEL_79;
          }
        }

        else
        {
          *(this + 11) = v31;
          v32 = v26 + 1;
          *(a2 + 1) = v32;
          *(this + 17) |= 0x80u;
          if (v32 < v11)
          {
LABEL_79:
            if (*v32 == 80)
            {
              v12 = v32 + 1;
              *(a2 + 1) = v12;
              if (v12 >= v11)
              {
                goto LABEL_84;
              }

LABEL_81:
              v33 = *v12;
              if (v33 < 0)
              {
                goto LABEL_84;
              }

              *(this + 5) = v33;
              v34 = v12 + 1;
              *(a2 + 1) = v34;
              *(this + 17) |= 8u;
              if (v34 == v11)
              {
                goto LABEL_86;
              }
            }
          }
        }
      }

      if (v7 != 10 || (TagFallback & 7) != 0)
      {
        goto LABEL_69;
      }

      v12 = *(a2 + 1);
      v11 = *(a2 + 2);
      if (v12 < v11)
      {
        goto LABEL_81;
      }

LABEL_84:
      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
      if (!result)
      {
        return result;
      }

      v36 = *(a2 + 1);
      v35 = *(a2 + 2);
      *(this + 17) |= 8u;
    }

    while (v36 != v35);
LABEL_86:
    ;
  }

  while (!*(a2 + 11) && *(a2 + 6) != *(a2 + 10));
  *(a2 + 8) = 0;
  result = 1;
  *(a2 + 36) = 1;
  return result;
}

uint64_t awd::metrics::MetricsCCBasebandReset::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 68);
  if (v6)
  {
    v7 = *(this + 8);
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
    v6 = *(v5 + 68);
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(2, *(v5 + 40), a2, a4);
  v6 = *(v5 + 68);
  if ((v6 & 4) == 0)
  {
LABEL_4:
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 16), a2, a4);
  v6 = *(v5 + 68);
  if ((v6 & 0x10) == 0)
  {
LABEL_5:
    if ((v6 & 0x100) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  v8 = *(v5 + 24);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 68);
  if ((v6 & 0x100) == 0)
  {
LABEL_6:
    if ((v6 & 0x200) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(5, *(v5 + 56), a2, a4);
  v6 = *(v5 + 68);
  if ((v6 & 0x200) == 0)
  {
LABEL_7:
    if ((v6 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteBool(6, *(v5 + 41), a2, a4);
  v6 = *(v5 + 68);
  if ((v6 & 0x20) == 0)
  {
LABEL_8:
    if ((v6 & 0x40) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  v9 = *(v5 + 32);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 68);
  if ((v6 & 0x40) == 0)
  {
LABEL_9:
    if ((v6 & 0x80) == 0)
    {
      goto LABEL_10;
    }

LABEL_20:
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(9, *(v5 + 44), a2, a4);
    if ((*(v5 + 68) & 8) == 0)
    {
      return this;
    }

    goto LABEL_21;
  }

LABEL_19:
  v10 = *(v5 + 48);
  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
  v6 = *(v5 + 68);
  if ((v6 & 0x80) != 0)
  {
    goto LABEL_20;
  }

LABEL_10:
  if ((v6 & 8) == 0)
  {
    return this;
  }

LABEL_21:
  v11 = *(v5 + 20);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(0xA, v11, a2, a4);
}

uint64_t awd::metrics::MetricsCCBasebandReset::ByteSize(awd::metrics::MetricsCCBasebandReset *this)
{
  v2 = *(this + 17);
  if (!v2)
  {
    v3 = 0;
    if ((v2 & 0xFF00) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_62;
  }

  if ((v2 & 1) == 0)
  {
    v3 = v2 & 2;
    if ((v2 & 4) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_16;
  }

  v4 = *(this + 1);
  v5 = *(v4 + 23);
  v6 = v5;
  v7 = *(v4 + 8);
  if ((v5 & 0x80u) == 0)
  {
    v8 = *(v4 + 23);
  }

  else
  {
    v8 = v7;
  }

  if (v8 >= 0x80)
  {
    v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8);
    v5 = *(v4 + 23);
    v7 = *(v4 + 8);
    v9 = v10 + 1;
    v2 = *(this + 17);
    v6 = *(v4 + 23);
  }

  else
  {
    v9 = 2;
  }

  if (v6 < 0)
  {
    v5 = v7;
  }

  v3 = (v2 & 2) + v9 + v5;
  if ((v2 & 4) != 0)
  {
LABEL_16:
    v11 = *(this + 4);
    if (v11 >= 0x80)
    {
      v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v11) + 1;
      v2 = *(this + 17);
    }

    else
    {
      v12 = 2;
    }

    v3 = (v12 + v3);
  }

LABEL_20:
  if ((v2 & 8) != 0)
  {
    v14 = *(this + 5);
    if (v14 >= 0x80)
    {
      v15 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14);
      v2 = *(this + 17);
      v3 = (v15 + 1 + v3);
      if ((v2 & 0x10) != 0)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v3 = (v3 + 2);
      if ((v2 & 0x10) != 0)
      {
        goto LABEL_31;
      }
    }

LABEL_22:
    if ((v2 & 0x20) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_40;
  }

  if ((v2 & 0x10) == 0)
  {
    goto LABEL_22;
  }

LABEL_31:
  v16 = *(this + 3);
  v17 = *(v16 + 23);
  v18 = v17;
  v19 = *(v16 + 8);
  if ((v17 & 0x80u) == 0)
  {
    v20 = *(v16 + 23);
  }

  else
  {
    v20 = v19;
  }

  if (v20 >= 0x80)
  {
    v21 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v20);
    v17 = *(v16 + 23);
    v19 = *(v16 + 8);
    v2 = *(this + 17);
    v18 = *(v16 + 23);
  }

  else
  {
    v21 = 1;
  }

  if (v18 < 0)
  {
    v17 = v19;
  }

  v3 = (v3 + v21 + v17 + 1);
  if ((v2 & 0x20) == 0)
  {
LABEL_23:
    if ((v2 & 0x40) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_49;
  }

LABEL_40:
  v22 = *(this + 4);
  v23 = *(v22 + 23);
  v24 = v23;
  v25 = *(v22 + 8);
  if ((v23 & 0x80u) == 0)
  {
    v26 = *(v22 + 23);
  }

  else
  {
    v26 = v25;
  }

  if (v26 >= 0x80)
  {
    v27 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v26);
    v23 = *(v22 + 23);
    v25 = *(v22 + 8);
    v2 = *(this + 17);
    v24 = *(v22 + 23);
  }

  else
  {
    v27 = 1;
  }

  if (v24 < 0)
  {
    v23 = v25;
  }

  v3 = (v3 + v27 + v23 + 1);
  if ((v2 & 0x40) == 0)
  {
LABEL_24:
    if ((v2 & 0x80) == 0)
    {
      goto LABEL_25;
    }

LABEL_58:
    v34 = *(this + 11);
    if (v34 >= 0x80)
    {
      v35 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v34);
      v2 = *(this + 17);
      v3 = (v35 + 1 + v3);
      if ((v2 & 0xFF00) == 0)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v3 = (v3 + 2);
      if ((v2 & 0xFF00) == 0)
      {
        goto LABEL_26;
      }
    }

    goto LABEL_62;
  }

LABEL_49:
  v28 = *(this + 6);
  v29 = *(v28 + 23);
  v30 = v29;
  v31 = *(v28 + 8);
  if ((v29 & 0x80u) == 0)
  {
    v32 = *(v28 + 23);
  }

  else
  {
    v32 = v31;
  }

  if (v32 >= 0x80)
  {
    v33 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v32);
    v29 = *(v28 + 23);
    v31 = *(v28 + 8);
    v2 = *(this + 17);
    v30 = *(v28 + 23);
  }

  else
  {
    v33 = 1;
  }

  if (v30 < 0)
  {
    v29 = v31;
  }

  v3 = (v3 + v33 + v29 + 1);
  if ((v2 & 0x80) != 0)
  {
    goto LABEL_58;
  }

LABEL_25:
  if ((v2 & 0xFF00) == 0)
  {
LABEL_26:
    *(this + 16) = v3;
    return v3;
  }

LABEL_62:
  if ((v2 & 0x100) != 0)
  {
    LODWORD(v3) = v3 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 7)) + 1;
    v2 = *(this + 17);
  }

  v36 = ((v2 >> 8) & 2) + v3;
  *(this + 16) = v36;
  return v36;
}

void awd::metrics::MetricsCCBasebandReset::CopyFrom(awd::metrics::MetricsCCBasebandReset *this, const awd::metrics::MetricsCCBasebandReset *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))();

    awd::metrics::MetricsCCBasebandReset::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::MetricsCCBasebandReset::Swap(uint64_t this, awd::metrics::MetricsCCBasebandReset *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 8);
    *(this + 8) = *(a2 + 1);
    *(a2 + 1) = v2;
    LOBYTE(v2) = *(this + 40);
    *(this + 40) = *(a2 + 40);
    *(a2 + 40) = v2;
    LODWORD(v2) = *(this + 16);
    *(this + 16) = *(a2 + 4);
    *(a2 + 4) = v2;
    LODWORD(v2) = *(this + 20);
    *(this + 20) = *(a2 + 5);
    *(a2 + 5) = v2;
    v3 = *(this + 24);
    *(this + 24) = *(a2 + 3);
    *(a2 + 3) = v3;
    v4 = *(this + 32);
    *(this + 32) = *(a2 + 4);
    *(a2 + 4) = v4;
    LODWORD(v4) = *(this + 44);
    *(this + 44) = *(a2 + 11);
    *(a2 + 11) = v4;
    v5 = *(this + 48);
    v6 = *(this + 56);
    v7 = *(a2 + 7);
    *(this + 48) = *(a2 + 6);
    *(this + 56) = v7;
    *(a2 + 6) = v5;
    *(a2 + 7) = v6;
    LOBYTE(v5) = *(this + 41);
    *(this + 41) = *(a2 + 41);
    *(a2 + 41) = v5;
    LODWORD(v5) = *(this + 68);
    *(this + 68) = *(a2 + 17);
    *(a2 + 17) = v5;
    LODWORD(v5) = *(this + 64);
    *(this + 64) = *(a2 + 16);
    *(a2 + 16) = v5;
  }

  return this;
}

char *awd::metrics::MetricsCCBasebandReset::GetTypeName@<X0>(uint64_t a1@<X8>)
{
  result = operator new(0x28uLL);
  *a1 = result;
  *(a1 + 8) = xmmword_29769A2A0;
  strcpy(result, "awd.metrics.MetricsCCBasebandReset");
  return result;
}

uint64_t wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::CrashReasonType>::~RepeatedPtrField(uint64_t a1)
{
  v2 = *(a1 + 12);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*a1 + 8 * i);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *(a1 + 12);
      }
    }
  }

  if (*a1)
  {
    operator delete[](*a1);
  }

  return a1;
}

void *ABMServerRegistryBuilder::create@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = operator new(0x28uLL);
  result[1] = 0;
  result[2] = 0;
  *result = &unk_2A1E4AFC8;
  v6 = *a1;
  v5 = a1[1];
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  result[3] = v6;
  result[4] = v5;
  *a2 = result + 3;
  a2[1] = result;
  return result;
}

__n128 ABMServerRegistryBuilder::ABMServerRegistryBuilder(__n128 *a1, __n128 *a2)
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

void ABMServerRegistryBuilder::~ABMServerRegistryBuilder(ABMServerRegistryBuilder *this)
{
  v1 = *(this + 1);
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
  v1 = *(this + 1);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
    }
  }
}

void ABMServerRegistryBuilder::setupAdaptiveTimerService(uint64_t a1, Registry **a2)
{
  RegistryModel = Registry::getRegistryModel(*a2);
  v4 = *RegistryModel;
  if (!*(*RegistryModel + 64))
  {
    (*(**a1 + 32))(&v8);
    v5 = v8;
    v8 = 0uLL;
    v6 = *(v4 + 72);
    *(v4 + 64) = v5;
    if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }

    v7 = *(&v8 + 1);
    if (*(&v8 + 1))
    {
      if (!atomic_fetch_add((*(&v8 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
      }
    }
  }
}

void ABMServerRegistryBuilder::setupQMIServer(uint64_t a1, Registry **a2, uint64_t *a3)
{
  RegistryModel = Registry::getRegistryModel(*a2);
  v6 = *RegistryModel;
  if (!**RegistryModel)
  {
    v7 = *a3;
    if (*a3)
    {
      v8 = a3[1];
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
      }

      v9 = v6[1];
      *v6 = v7;
      v6[1] = v8;
      if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v9->__on_zero_shared)(v9);

        std::__shared_weak_count::__release_weak(v9);
      }
    }

    else
    {
      (*(**a1 + 8))(&v13);
      v10 = v13;
      v13 = 0uLL;
      v11 = v6[1];
      *v6 = v10;
      if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v11->__on_zero_shared)(v11);
        std::__shared_weak_count::__release_weak(v11);
      }

      v12 = *(&v13 + 1);
      if (*(&v13 + 1) && !atomic_fetch_add((*(&v13 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v12->__on_zero_shared)(v12);
        std::__shared_weak_count::__release_weak(v12);
      }
    }
  }
}

void ABMServerRegistryBuilder::setupRouterServer(uint64_t a1, Registry **a2, uint64_t *a3)
{
  RegistryModel = Registry::getRegistryModel(*a2);
  v6 = *RegistryModel;
  if (!*(*RegistryModel + 16))
  {
    v7 = *a3;
    if (*a3)
    {
      v8 = a3[1];
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
      }

      v9 = *(v6 + 24);
      *(v6 + 16) = v7;
      *(v6 + 24) = v8;
      if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v9->__on_zero_shared)(v9);

        std::__shared_weak_count::__release_weak(v9);
      }
    }

    else
    {
      (*(**a1 + 16))(&v13);
      v10 = v13;
      v13 = 0uLL;
      v11 = *(v6 + 24);
      *(v6 + 16) = v10;
      if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v11->__on_zero_shared)(v11);
        std::__shared_weak_count::__release_weak(v11);
      }

      v12 = *(&v13 + 1);
      if (*(&v13 + 1) && !atomic_fetch_add((*(&v13 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v12->__on_zero_shared)(v12);
        std::__shared_weak_count::__release_weak(v12);
      }
    }
  }
}

void std::__shared_ptr_emplace<ABMServerRegistryBuilder>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E4AFC8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<ABMServerRegistryBuilder>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t support::fs::toString@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 1)
  {
    a2[23] = 9;
    strcpy(a2, "_wireless");
  }

  else if (result)
  {
    a2[23] = 0;
    *a2 = 0;
  }

  else
  {
    a2[23] = 6;
    strcpy(a2, "mobile");
  }

  return result;
}

uint64_t support::fs::updateOwner(const char *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v6.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&__dst.st_blksize = v6;
  *__dst.st_qspare = v6;
  __dst.st_birthtimespec = v6;
  *&__dst.st_size = v6;
  __dst.st_mtimespec = v6;
  __dst.st_ctimespec = v6;
  *&__dst.st_uid = v6;
  __dst.st_atimespec = v6;
  *&__dst.st_dev = v6;
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  if (!stat(a1, &__dst))
  {
    v16 = v5[23] >= 0 ? v5 : *v5;
    v17 = opendir(v16);
    if (v17)
    {
      v18 = v17;
      v19 = readdir(v17);
      closedir(v18);
      if (v19)
      {
        v58 = 0;
        v59 = 0;
        v60 = 0;
        support::fs::readDir(v5, &v58);
        v20 = v58;
        v54 = v59;
        if (v58 == v59)
        {
          updated = 0;
          if (v58)
          {
            goto LABEL_108;
          }

          return updated;
        }

        v21 = (v58 + 24);
        while (1)
        {
          memset(&v57, 170, sizeof(v57));
          if (*(v21 - 1) < 0)
          {
            std::string::__init_copy_ctor_external(&v57, *(v21 - 3), *(v21 - 2));
          }

          else
          {
            v23 = *(v21 - 3);
            v57.__r_.__value_.__r.__words[2] = *(v21 - 1);
            *&v57.__r_.__value_.__l.__data_ = v23;
          }

          memset(&__p, 170, sizeof(__p));
          v24 = v5[23];
          if (v24 >= 0)
          {
            v25 = *(v5 + 23);
          }

          else
          {
            v25 = *(v5 + 1);
          }

          v26 = v25 + 1;
          if (v25 + 1 > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          if (v26 < 0x17)
          {
            memset(&__dst, 0, 24);
            p_dst = &__dst;
            HIBYTE(__dst.st_gid) = v25 + 1;
            if (!v25)
            {
              goto LABEL_48;
            }
          }

          else
          {
            if ((v26 | 7) == 0x17)
            {
              v27 = 25;
            }

            else
            {
              v27 = (v26 | 7) + 1;
            }

            p_dst = operator new(v27);
            __dst.st_ino = v25 + 1;
            *&__dst.st_uid = v27 | 0x8000000000000000;
            *&__dst.st_dev = p_dst;
          }

          v29 = *v5;
          if (v24 >= 0)
          {
            v30 = v5;
          }

          else
          {
            v30 = *v5;
          }

          memmove(p_dst, v30, v25);
LABEL_48:
          *&p_dst[v25] = 47;
          if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v31 = &v57;
          }

          else
          {
            v31 = v57.__r_.__value_.__r.__words[0];
          }

          if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v57.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v57.__r_.__value_.__l.__size_;
          }

          v33 = std::string::append(&__dst, v31, size);
          v34 = *&v33->__r_.__value_.__l.__data_;
          __p.__r_.__value_.__r.__words[2] = v33->__r_.__value_.__r.__words[2];
          *&__p.__r_.__value_.__l.__data_ = v34;
          v33->__r_.__value_.__l.__size_ = 0;
          v33->__r_.__value_.__r.__words[2] = 0;
          v33->__r_.__value_.__r.__words[0] = 0;
          if (SHIBYTE(__dst.st_gid) < 0)
          {
            operator delete(*&__dst.st_dev);
            v35 = HIBYTE(v57.__r_.__value_.__r.__words[2]);
            if ((*(&v57.__r_.__value_.__s + 23) & 0x80) == 0)
            {
LABEL_56:
              if (v35 == 1)
              {
                if (v57.__r_.__value_.__s.__data_[0] == 46)
                {
                  goto LABEL_72;
                }
              }

              else if (v35 == 2 && LOWORD(v57.__r_.__value_.__l.__data_) == 11822)
              {
                goto LABEL_72;
              }

              goto LABEL_68;
            }
          }

          else
          {
            v35 = HIBYTE(v57.__r_.__value_.__r.__words[2]);
            if ((*(&v57.__r_.__value_.__s + 23) & 0x80) == 0)
            {
              goto LABEL_56;
            }
          }

          if (v57.__r_.__value_.__l.__size_ == 1)
          {
            if (*v57.__r_.__value_.__l.__data_ == 46)
            {
              goto LABEL_72;
            }
          }

          else if (v57.__r_.__value_.__l.__size_ == 2 && *v57.__r_.__value_.__l.__data_ == 11822)
          {
            goto LABEL_72;
          }

LABEL_68:
          v36.tv_sec = 0xAAAAAAAAAAAAAAAALL;
          v36.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
          *&__dst.st_blksize = v36;
          *__dst.st_qspare = v36;
          __dst.st_birthtimespec = v36;
          *&__dst.st_size = v36;
          __dst.st_mtimespec = v36;
          __dst.st_ctimespec = v36;
          *&__dst.st_uid = v36;
          __dst.st_atimespec = v36;
          *&__dst.st_dev = v36;
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          if (stat(p_p, &__dst) || ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v47 = &__p) : (v47 = __p.__r_.__value_.__r.__words[0]), (v48 = opendir(v47), (v49 = v48) == 0) || (v50 = readdir(v48), closedir(v49), !v50)))
          {
LABEL_72:
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v38 = &__p;
            }

            else
            {
              v38 = __p.__r_.__value_.__r.__words[0];
            }

            v39 = strlen(v38);
            if (v39 > 0x7FFFFFFFFFFFFFF7)
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
              __dst.st_ino = v40;
              *&__dst.st_uid = v42 | 0x8000000000000000;
              *&__dst.st_dev = v41;
            }

            else
            {
              HIBYTE(__dst.st_gid) = v39;
              v41 = &__dst;
              if (!v39)
              {
LABEL_84:
                v41[v40] = 0;
                st_gid_high = SHIBYTE(__dst.st_gid);
                v44 = *&__dst.st_dev;
                if ((__dst.st_gid & 0x80000000) == 0)
                {
                  v45 = &__dst;
                }

                else
                {
                  v45 = *&__dst.st_dev;
                }

                updated = chown(v45, a2, a3) == 0;
                if (st_gid_high < 0)
                {
                  v46 = v44;
LABEL_89:
                  operator delete(v46);
                  goto LABEL_90;
                }

                goto LABEL_90;
              }
            }

            memmove(v41, v38, v40);
            goto LABEL_84;
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&v55, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
          }

          else
          {
            v55 = __p;
          }

          updated = support::fs::updateOwner(&v55, a2, a3);
          if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
          {
            v46 = v55.__r_.__value_.__r.__words[0];
            goto LABEL_89;
          }

LABEL_90:
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
            if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
            {
LABEL_94:
              operator delete(v57.__r_.__value_.__l.__data_);
            }
          }

          else if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_94;
          }

          if (v21 == v54)
          {
            v22 = 0;
          }

          else
          {
            v22 = updated;
          }

          v21 += 3;
          if ((v22 & 1) == 0)
          {
            v20 = v58;
            if (!v58)
            {
              return updated;
            }

LABEL_108:
            v51 = v59;
            v15 = v20;
            if (v59 != v20)
            {
              do
              {
                v52 = *(v51 - 1);
                v51 -= 3;
                if (v52 < 0)
                {
                  operator delete(*v51);
                }
              }

              while (v51 != v20);
              v15 = v58;
            }

            v59 = v20;
LABEL_115:
            operator delete(v15);
            return updated;
          }
        }
      }
    }
  }

  if (v5[23] < 0)
  {
    v5 = *v5;
  }

  v7 = strlen(v5);
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
    __dst.st_ino = v8;
    *&__dst.st_uid = v10 | 0x8000000000000000;
    *&__dst.st_dev = v9;
    goto LABEL_14;
  }

  HIBYTE(__dst.st_gid) = v7;
  v9 = &__dst;
  if (v7)
  {
LABEL_14:
    memmove(v9, v5, v8);
  }

  *(v9 + v8) = 0;
  v11 = SHIBYTE(__dst.st_gid);
  v12 = *&__dst.st_dev;
  if ((__dst.st_gid & 0x80000000) == 0)
  {
    v13 = &__dst;
  }

  else
  {
    v13 = *&__dst.st_dev;
  }

  updated = chown(v13, a2, a3) == 0;
  if (v11 < 0)
  {
    v15 = v12;
    goto LABEL_115;
  }

  return updated;
}

DIR *support::fs::isDir(const char *a1)
{
  v1 = a1;
  v2.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v2.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v7.st_blksize = v2;
  *v7.st_qspare = v2;
  v7.st_birthtimespec = v2;
  *&v7.st_size = v2;
  v7.st_mtimespec = v2;
  v7.st_ctimespec = v2;
  *&v7.st_uid = v2;
  v7.st_atimespec = v2;
  *&v7.st_dev = v2;
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  if (stat(a1, &v7))
  {
    return 0;
  }

  if (v1[23] >= 0)
  {
    v4 = v1;
  }

  else
  {
    v4 = *v1;
  }

  result = opendir(v4);
  if (result)
  {
    v5 = result;
    v6 = readdir(result);
    closedir(v5);
    return (v6 != 0);
  }

  return result;
}

BOOL support::fs::chown(const char *a1, uid_t a2, gid_t a3)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  return chown(a1, a2, a3) == 0;
}

DIR *support::fs::readDir(const char *a1, uint64_t a2)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  result = opendir(a1);
  if (result)
  {
    v4 = result;
    v5 = readdir(result);
    if (v5)
    {
      v6 = v5;
      do
      {
        memset(__dst, 170, sizeof(__dst));
        d_namlen = v6->d_namlen;
        if (d_namlen >= 0x17)
        {
          if ((d_namlen | 7) == 0x17)
          {
            v11 = 25;
          }

          else
          {
            v11 = (d_namlen | 7) + 1;
          }

          v8 = operator new(v11);
          *&__dst[8] = d_namlen;
          *&__dst[16] = v11 | 0x8000000000000000;
          *__dst = v8;
        }

        else
        {
          __dst[23] = v6->d_namlen;
          v8 = __dst;
          if (!d_namlen)
          {
            __dst[d_namlen] = 0;
            v9 = *(a2 + 8);
            if (v9 < *(a2 + 16))
            {
              goto LABEL_10;
            }

            goto LABEL_17;
          }
        }

        memmove(v8, v6->d_name, d_namlen);
        v8[d_namlen] = 0;
        v9 = *(a2 + 8);
        if (v9 < *(a2 + 16))
        {
LABEL_10:
          if ((__dst[23] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(v9, *__dst, *&__dst[8]);
          }

          else
          {
            v10 = *__dst;
            v9->__r_.__value_.__r.__words[2] = *&__dst[16];
            *&v9->__r_.__value_.__l.__data_ = v10;
          }

          *(a2 + 8) = v9 + 1;
          *(a2 + 8) = v9 + 1;
          if ((__dst[23] & 0x80000000) == 0)
          {
            goto LABEL_6;
          }

LABEL_21:
          operator delete(*__dst);
          goto LABEL_6;
        }

LABEL_17:
        *(a2 + 8) = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(a2, __dst);
        if ((__dst[23] & 0x80000000) != 0)
        {
          goto LABEL_21;
        }

LABEL_6:
        v6 = readdir(v4);
      }

      while (v6);
    }

    return closedir(v4);
  }

  return result;
}

void sub_2975D0D10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  *(v15 + 8) = v16;
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t support::fs::getUidGid(int a1, uid_t *a2, gid_t *a3)
{
  v13 = *MEMORY[0x29EDCA608];
  memset(__p, 170, sizeof(__p));
  if (a1 == 1)
  {
    HIBYTE(__p[2]) = 9;
    strcpy(__p, "_wireless");
    v5 = getpwnam(__p);
    if (v5)
    {
      goto LABEL_4;
    }

    goto LABEL_6;
  }

  if (a1)
  {
    goto LABEL_12;
  }

  HIBYTE(__p[2]) = 6;
  strcpy(__p, "mobile");
  v5 = getpwnam(__p);
  if (!v5)
  {
LABEL_6:
    if ((atomic_load_explicit(&qword_2A18CB298, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18CB298))
    {
      qword_2A18CB2A0 = 0;
      qword_2A18CB2A8 = 0;
      __cxa_guard_release(&qword_2A18CB298);
    }

    if (_MergedGlobals_9 != -1)
    {
      dispatch_once(&_MergedGlobals_9, &__block_literal_global_9);
    }

    v7 = qword_2A18CB2A8;
    if (os_log_type_enabled(qword_2A18CB2A8, OS_LOG_TYPE_ERROR))
    {
      v9 = __p;
      if (SHIBYTE(__p[2]) < 0)
      {
        v9 = __p[0];
      }

      *buf = 136315138;
      v12 = v9;
      _os_log_error_impl(&dword_297476000, v7, OS_LOG_TYPE_ERROR, "Getting uid and gid: failed to get passwd for %s", buf, 0xCu);
      if ((HIBYTE(__p[2]) & 0x80) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    if ((HIBYTE(__p[2]) & 0x80) != 0)
    {
LABEL_11:
      operator delete(__p[0]);
    }

LABEL_12:
    result = 0;
    goto LABEL_13;
  }

LABEL_4:
  *a2 = v5->pw_uid;
  *a3 = v5->pw_gid;
  result = 1;
LABEL_13:
  v8 = *MEMORY[0x29EDCA608];
  return result;
}

BOOL support::fs::writeToCompletion(support::fs *this, char *__buf, size_t __nbyte)
{
  v4 = this;
  do
  {
    v5 = __nbyte;
    if (!__nbyte)
    {
      break;
    }

    v6 = write(v4, __buf, __nbyte);
    __nbyte = v5 - v6;
    __buf += v6;
  }

  while ((v6 & 0x8000000000000000) == 0);
  return v5 == 0;
}

BOOL support::fs::writeToCompletion(FILE *__stream, __sFILE *__ptr, size_t __nitems)
{
  while (1)
  {
    v5 = __nitems;
    if (!__nitems)
    {
      break;
    }

    v6 = fwrite(__ptr, 1uLL, __nitems, __stream);
    __nitems = v5 - v6;
    __ptr = (__ptr + v6);
    if (!v6)
    {
      return v5 == 0;
    }
  }

  fflush(__stream);
  return 1;
}

uint64_t support::fs::openFile(const char *a1, int a2, uint64_t a3)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  return open(a1, a2, a3);
}

BOOL support::fs::closeFile(support::fs *this)
{
  v1 = this;
  do
  {
    v2 = close(v1);
  }

  while (v2 && *__error() == 4);
  return v2 == 0;
}

BOOL support::fs::copyFile(const char *a1, const char *a2, int a3)
{
  v34 = *MEMORY[0x29EDCA608];
  if (a1[23] >= 0)
  {
    v6 = a1;
  }

  else
  {
    v6 = *a1;
  }

  v7 = strlen(v6);
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
    goto LABEL_12;
  }

  __dst[23] = v7;
  v9 = __dst;
  if (v7)
  {
LABEL_12:
    memmove(v9, v6, v8);
  }

  v9[v8] = 0;
  if (__dst[23] >= 0)
  {
    v11 = __dst;
  }

  else
  {
    v11 = *__dst;
  }

  v12 = open(v11, 0, 420);
  v13 = v12;
  if ((__dst[23] & 0x80000000) == 0)
  {
    if ((v12 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

LABEL_26:
    if ((atomic_load_explicit(&qword_2A18CB298, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18CB298))
    {
      qword_2A18CB2A0 = 0;
      qword_2A18CB2A8 = 0;
      __cxa_guard_release(&qword_2A18CB298);
    }

    if (_MergedGlobals_9 == -1)
    {
      v18 = qword_2A18CB2A8;
      if (!os_log_type_enabled(qword_2A18CB2A8, OS_LOG_TYPE_ERROR))
      {
LABEL_29:
        v19 = 0;
        goto LABEL_60;
      }
    }

    else
    {
      dispatch_once(&_MergedGlobals_9, &__block_literal_global_9);
      v18 = qword_2A18CB2A8;
      if (!os_log_type_enabled(qword_2A18CB2A8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_29;
      }
    }

    if (a1[23] >= 0)
    {
      v31 = a1;
    }

    else
    {
      v31 = *a1;
    }

    *__dst = 136315138;
    *&__dst[4] = v31;
    _os_log_error_impl(&dword_297476000, v18, OS_LOG_TYPE_ERROR, "Failed to open the source file %s", __dst, 0xCu);
    goto LABEL_29;
  }

  operator delete(*__dst);
  if (v13 < 0)
  {
    goto LABEL_26;
  }

LABEL_18:
  if (a2[23] >= 0)
  {
    v14 = a2;
  }

  else
  {
    v14 = *a2;
  }

  v15 = strlen(v14);
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
    *&__dst[8] = v16;
    *&__dst[16] = v20 | 0x8000000000000000;
    *__dst = v17;
    goto LABEL_34;
  }

  __dst[23] = v15;
  v17 = __dst;
  if (v15)
  {
LABEL_34:
    memmove(v17, v14, v16);
  }

  v17[v16] = 0;
  if (__dst[23] >= 0)
  {
    v21 = __dst;
  }

  else
  {
    v21 = *__dst;
  }

  v22 = open(v21, 1541, 420);
  v23 = v22;
  if ((__dst[23] & 0x80000000) != 0)
  {
    operator delete(*__dst);
    if ((v23 & 0x80000000) == 0)
    {
      goto LABEL_40;
    }
  }

  else if ((v22 & 0x80000000) == 0)
  {
LABEL_40:
    memset(__dst, 170, sizeof(__dst));
    v24 = read(v13, __dst, 0x400uLL);
    if (v24 < 1)
    {
LABEL_46:
      v19 = v24 == 0;
      if (!v24 && a3)
      {
        *&v27 = 0xAAAAAAAAAAAAAAAALL;
        *(&v27 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *&__dst[112] = v27;
        *&__dst[128] = v27;
        *&__dst[80] = v27;
        *&__dst[96] = v27;
        *&__dst[48] = v27;
        *&__dst[64] = v27;
        *&__dst[16] = v27;
        *&__dst[32] = v27;
        *__dst = v27;
        if (fstat(v13, __dst))
        {
          v19 = 0;
        }

        else
        {
          v19 = fchmod(v23, *&__dst[4]) == 0;
        }
      }
    }

    else
    {
      v25 = __dst;
      do
      {
        while (!v24)
        {
          memset(__dst, 170, sizeof(__dst));
          v24 = read(v13, __dst, 0x400uLL);
          v25 = __dst;
          if (v24 <= 0)
          {
            goto LABEL_46;
          }
        }

        v26 = write(v23, v25, v24);
        v24 -= v26;
        v25 += v26;
      }

      while ((v26 & 0x8000000000000000) == 0);
      v19 = 0;
    }

      ;
    }

    goto LABEL_58;
  }

  if ((atomic_load_explicit(&qword_2A18CB298, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18CB298))
  {
    qword_2A18CB2A0 = 0;
    qword_2A18CB2A8 = 0;
    __cxa_guard_release(&qword_2A18CB298);
  }

  if (_MergedGlobals_9 != -1)
  {
    dispatch_once(&_MergedGlobals_9, &__block_literal_global_9);
    v28 = qword_2A18CB2A8;
    if (!os_log_type_enabled(qword_2A18CB2A8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_54;
    }

LABEL_67:
    if (a2[23] >= 0)
    {
      v32 = a2;
    }

    else
    {
      v32 = *a2;
    }

    *__dst = 136315138;
    *&__dst[4] = v32;
    _os_log_error_impl(&dword_297476000, v28, OS_LOG_TYPE_ERROR, "Failed to open the destination file %s", __dst, 0xCu);
    goto LABEL_54;
  }

  v28 = qword_2A18CB2A8;
  if (os_log_type_enabled(qword_2A18CB2A8, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_67;
  }

LABEL_54:
  v19 = 0;
LABEL_58:
    ;
  }

LABEL_60:
  v29 = *MEMORY[0x29EDCA608];
  return v19;
}

void sub_2975D151C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

BOOL support::fs::loadFile(uint64_t *a1, char **a2)
{
  v19[89] = *MEMORY[0x29EDCA608];
  memset(v19, 170, 0x240uLL);
  std::ifstream::basic_ifstream(v19, a1);
  if (v19[17] && (std::istream::tellg(), std::istream::seekg(), std::istream::tellg(), v4 = v19[88], std::istream::seekg(), v4) && !*(&v19[4] + *(v19[0] - 24)))
  {
    v9 = *a2;
    v8 = a2[1];
    v10 = v8 - *a2;
    v11 = v4 - v10;
    if (v4 <= v10)
    {
      if (v4 < v10)
      {
        a2[1] = &v9[v4];
      }
    }

    else
    {
      v12 = a2[2];
      if (v12 - v8 >= v11)
      {
        v17 = &v8[v11];
        bzero(v8, v4 - v10);
        a2[1] = v17;
      }

      else
      {
        if ((v4 & 0x8000000000000000) != 0)
        {
          std::vector<dispatch::callback<void({block_pointer})(sar::OBDState,sar::TunerState)>>::__throw_length_error[abi:ne200100]();
        }

        v13 = v12 - v9;
        v14 = 2 * v13;
        if (2 * v13 <= v4)
        {
          v14 = v4;
        }

        if (v13 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v15 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v14;
        }

        v16 = operator new(v15);
        bzero(&v16[v10], v4 - v10);
        memcpy(v16, v9, v10);
        *a2 = v16;
        a2[1] = &v16[v4];
        a2[2] = &v16[v15];
        if (v9)
        {
          operator delete(v9);
        }
      }
    }

    v18 = *a2;
    std::istream::read();
    v5 = v19[1] == v4;
    if (!std::filebuf::close())
    {
      std::ios_base::clear((v19 + *(v19[0] - 24)), *(&v19[4] + *(v19[0] - 24)) | 4);
    }
  }

  else
  {
    v5 = 0;
  }

  v19[0] = *MEMORY[0x29EDC9518];
  *(v19 + *(v19[0] - 24)) = *(MEMORY[0x29EDC9518] + 24);
  MEMORY[0x29C271A60](&v19[2]);
  std::istream::~istream();
  MEMORY[0x29C271DA0](&v19[53]);
  v6 = *MEMORY[0x29EDCA608];
  return v5;
}

BOOL support::fs::getFileSize(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 136);
  if (v2)
  {
    std::istream::tellg();
    std::istream::seekg();
    std::istream::tellg();
    *a2 = v6;
    std::istream::seekg();
  }

  result = v2 != 0;
  v5 = *MEMORY[0x29EDCA608];
  return result;
}

{
  v9[89] = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 23);
  if ((v2 & 0x80u) != 0)
  {
    v2 = *(a1 + 8);
  }

  if (v2)
  {
    memset(v9, 170, 0x240uLL);
    std::ifstream::basic_ifstream(v9, a1);
    v5 = v9[17] != 0;
    if (v9[17])
    {
      std::istream::tellg();
      std::istream::seekg();
      std::istream::tellg();
      *a2 = v9[88];
      std::istream::seekg();
      if (!std::filebuf::close())
      {
        std::ios_base::clear((v9 + *(v9[0] - 24)), *(&v9[4] + *(v9[0] - 24)) | 4);
      }
    }

    v9[0] = *MEMORY[0x29EDC9518];
    *(v9 + *(v9[0] - 24)) = *(MEMORY[0x29EDC9518] + 24);
    MEMORY[0x29C271A60](&v9[2]);
    std::istream::~istream();
    MEMORY[0x29C271DA0](&v9[53]);
    v6 = *MEMORY[0x29EDCA608];
  }

  else
  {
    v5 = 0;
    v8 = *MEMORY[0x29EDCA608];
  }

  return v5;
}

void *std::ifstream::~ifstream(void *a1)
{
  v2 = MEMORY[0x29EDC9518];
  v3 = *MEMORY[0x29EDC9518];
  *a1 = *MEMORY[0x29EDC9518];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  MEMORY[0x29C271A60](a1 + 2);
  std::istream::~istream();
  MEMORY[0x29C271DA0](a1 + 53);
  return a1;
}

uint64_t support::fs::loadFile(const char *a1, char **a2)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  v3 = fopen(a1, "rb");
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  if (fseek(v3, 0, 2) || (v6 = MEMORY[0x29C272330](v4), v6 == -1))
  {
    v5 = 0;
  }

  else
  {
    v7 = v6;
    v9 = *a2;
    v8 = a2[1];
    v10 = v8 - *a2;
    v11 = v7 - v10;
    if (v7 <= v10)
    {
      if (v7 < v10)
      {
        a2[1] = &v9[v7];
      }
    }

    else
    {
      v12 = a2[2];
      if (v12 - v8 >= v11)
      {
        v17 = &v8[v11];
        bzero(v8, v7 - v10);
        a2[1] = v17;
      }

      else
      {
        if ((v7 & 0x8000000000000000) != 0)
        {
          std::vector<dispatch::callback<void({block_pointer})(sar::OBDState,sar::TunerState)>>::__throw_length_error[abi:ne200100]();
        }

        v13 = v12 - v9;
        v14 = 2 * v13;
        if (2 * v13 <= v7)
        {
          v14 = v7;
        }

        if (v13 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v15 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v14;
        }

        v16 = operator new(v15);
        bzero(&v16[v10], v7 - v10);
        memcpy(v16, v9, v10);
        *a2 = v16;
        a2[1] = &v16[v7];
        a2[2] = &v16[v15];
        if (v9)
        {
          operator delete(v9);
        }
      }
    }

    rewind(v4);
    v18 = *a2;
    v5 = 1;
    fread(v18, v7, 1uLL, v4);
  }

  fclose(v4);
  return v5;
}

BOOL support::fs::fileExists(const char *a1)
{
  v1.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v1.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v3.st_blksize = v1;
  *v3.st_qspare = v1;
  v3.st_birthtimespec = v1;
  *&v3.st_size = v1;
  v3.st_mtimespec = v1;
  v3.st_ctimespec = v1;
  *&v3.st_uid = v1;
  v3.st_atimespec = v1;
  *&v3.st_dev = v1;
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  return stat(a1, &v3) == 0;
}

void support::fs::createUniqueFilename(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v230 = v3;
  v228 = v3;
  v229 = v3;
  *&v227[0].__locale_ = v3;
  std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](v227, "^([/_\\-[:alnum:]]*)(.*)", 0);
  memset(&v226, 170, sizeof(v226));
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v226, *a1, *(a1 + 8));
  }

  else
  {
    v226 = *a1;
  }

  v4 = 0;
  v213 = a1;
  v223 = &v233[24];
  while (1)
  {
    v5.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    v5.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    *&v231.st_blksize = v5;
    *v231.st_qspare = v5;
    v231.st_birthtimespec = v5;
    *&v231.st_size = v5;
    v231.st_mtimespec = v5;
    v231.st_ctimespec = v5;
    *&v231.st_uid = v5;
    v231.st_atimespec = v5;
    *&v231.st_dev = v5;
    if ((v226.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v226;
    }

    else
    {
      v6 = v226.__r_.__value_.__r.__words[0];
    }

    if (stat(v6, &v231))
    {
      *a2 = v226;
      goto LABEL_384;
    }

    if (!std::regex_match[abi:ne200100]<std::char_traits<char>,std::allocator<char>,char,std::regex_traits<char>>(a1, v227, 0))
    {
      break;
    }

    v7 = v4 + 1;
    memset(__p, 170, 24);
    std::to_string(&v232, v7);
    v8 = std::string::insert(&v232, 0, "$1-", 3uLL);
    v9 = *&v8->__r_.__value_.__l.__data_;
    *&v231.st_uid = *(&v8->__r_.__value_.__l + 2);
    *&v231.st_dev = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    st_gid_high = SHIBYTE(v231.st_gid);
    v214 = v7;
    if ((SHIBYTE(v231.st_gid) & 0x8000000000000000) == 0)
    {
      if ((SHIBYTE(v231.st_gid) - 21) >= 2)
      {
        v21 = &v231;
        *(&v231.st_dev + SHIBYTE(v231.st_gid)) = 12836;
        v22 = st_gid_high + 2;
        if (SHIBYTE(v231.st_gid) < 0)
        {
          goto LABEL_34;
        }

        goto LABEL_32;
      }

      v11 = SHIBYTE(v231.st_gid) + 2;
      v12 = &v231;
      v13 = 22;
LABEL_17:
      v14 = 2 * v13;
      if (v11 > 2 * v13)
      {
        v14 = v11;
      }

      if ((v14 | 7) == 0x17)
      {
        v15 = 25;
      }

      else
      {
        v15 = (v14 | 7) + 1;
      }

      if (v14 >= 0x17)
      {
        v16 = v15;
      }

      else
      {
        v16 = 23;
      }

      v17 = v13 == 22;
      goto LABEL_26;
    }

    st_gid_high = v231.st_ino;
    v13 = (*&v231.st_uid & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v13 - v231.st_ino >= 2)
    {
      v21 = *&v231.st_dev;
      *(*&v231.st_dev + v231.st_ino) = 12836;
      v22 = st_gid_high + 2;
      if (SHIBYTE(v231.st_gid) < 0)
      {
LABEL_34:
        v231.st_ino = v22;
        goto LABEL_35;
      }

LABEL_32:
      HIBYTE(v231.st_gid) = v22 & 0x7F;
LABEL_35:
      v20 = v21 + v22;
      goto LABEL_36;
    }

    v11 = v231.st_ino + 2;
    if (0x7FFFFFFFFFFFFFF7 - (*&v231.st_uid & 0x7FFFFFFFFFFFFFFFuLL) < v231.st_ino + 2 - v13)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v12 = *&v231.st_dev;
    if (v13 < 0x3FFFFFFFFFFFFFF3)
    {
      goto LABEL_17;
    }

    v17 = 0;
    v16 = 0x7FFFFFFFFFFFFFF7;
LABEL_26:
    v18 = operator new(v16);
    v19 = v18;
    if (st_gid_high)
    {
      memmove(v18, v12, st_gid_high);
    }

    *&v19[st_gid_high] = 12836;
    if (!v17)
    {
      operator delete(v12);
    }

    v231.st_ino = v11;
    *&v231.st_uid = v16 | 0x8000000000000000;
    *&v231.st_dev = v19;
    v20 = &v19[v11];
    a1 = v213;
LABEL_36:
    *v20 = 0;
    *__p = *&v231.st_dev;
    __p[2] = *&v231.st_uid;
    memset(&v231, 0, 24);
    if ((v233[7] & 0x80000000) != 0)
    {
      operator delete(v232);
    }

    memset(&v224, 0, sizeof(v224));
    v23 = *(a1 + 23);
    if (v23 >= 0)
    {
      v24 = a1;
    }

    else
    {
      v24 = *a1;
    }

    if (v23 >= 0)
    {
      v25 = *(a1 + 23);
    }

    else
    {
      v25 = *(a1 + 8);
    }

    v26 = __p;
    if (SHIBYTE(__p[2]) < 0)
    {
      v26 = __p[0];
    }

    __s = v26;
    *&v27 = 0xAAAAAAAAAAAAAAAALL;
    *(&v27 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&v231.st_gen = v27;
    v231.st_size = 0xAAAAAAAAAAAAAAAALL;
    v231.st_ctimespec.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    *(&v231.st_rdev + 1) = -1431655766;
    *&v231.st_dev = v24;
    v231.st_ino = v24 + v25;
    *&v231.st_uid = v227;
    v231.st_rdev = 0;
    memset(&v231.st_birthtimespec, 0, 17);
    memset(&v231.st_blocks, 0, 17);
    LOBYTE(v231.st_qspare[0]) = 0;
    v231.st_qspare[1] = 0;
    memset(&v231.st_atimespec, 0, 40);
    v28 = v223;
    *(v223 + 2) = v27;
    v28[3] = v27;
    *v28 = v27;
    v28[1] = v27;
    v234 = 0uLL;
    v235 = 0;
    v236 = 0uLL;
    v237 = 0;
    v238 = 0;
    v239 = 0;
    v232 = 0u;
    memset(v233, 0, 25);
    std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(v227, v24, (v24 + v25), &v232, 0);
    std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(&v231.st_atimespec, v24, (v24 + v25), &v232, 0);
    if (v232)
    {
      *(&v232 + 1) = v232;
      operator delete(v232);
    }

    tv_sec = v231.st_atimespec.tv_sec;
    if (v231.st_atimespec.tv_nsec == v231.st_atimespec.tv_sec)
    {
      if (!v25)
      {
        goto LABEL_373;
      }

      while (2)
      {
        while (2)
        {
          first = v24->first;
          v201 = HIBYTE(v224.__r_.__value_.__r.__words[2]);
          if ((SHIBYTE(v224.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            if (HIBYTE(v224.__r_.__value_.__r.__words[2]) != 22)
            {
              *(&v224.__r_.__value_.__s + 23) = (*(&v224.__r_.__value_.__s + 23) + 1) & 0x7F;
              v199 = &v224 + v201;
              *v199 = first;
              v199[1] = 0;
              v24 = (v24 + 1);
              if (!--v25)
              {
                goto LABEL_372;
              }

              continue;
            }

            v202 = &v224;
            size = 22;
LABEL_353:
            if (size + 1 > 2 * size)
            {
              v204 = size + 1;
            }

            else
            {
              v204 = 2 * size;
            }

            if ((v204 | 7) == 0x17)
            {
              v205 = 25;
            }

            else
            {
              v205 = (v204 | 7) + 1;
            }

            if (v204 >= 0x17)
            {
              v206 = v205;
            }

            else
            {
              v206 = 23;
            }

            v207 = size == 22;
            goto LABEL_363;
          }

          break;
        }

        size = (v224.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v224.__r_.__value_.__l.__size_ == size)
        {
          if ((v224.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          v202 = v224.__r_.__value_.__r.__words[0];
          if (size < 0x3FFFFFFFFFFFFFF3)
          {
            goto LABEL_353;
          }

          v207 = 0;
          v206 = 0x7FFFFFFFFFFFFFF7;
LABEL_363:
          v208 = operator new(v206);
          v209 = v208;
          if (size)
          {
            memmove(v208, v202, size);
          }

          if (!v207)
          {
            operator delete(v202);
          }

          v224.__r_.__value_.__r.__words[0] = v209;
          v224.__r_.__value_.__r.__words[2] = v206 | 0x8000000000000000;
        }

        else
        {
          size = v224.__r_.__value_.__l.__size_;
          v209 = v224.__r_.__value_.__r.__words[0];
        }

        v224.__r_.__value_.__l.__size_ = size + 1;
        v210 = (v209 + size);
        *v210 = first;
        v210[1] = 0;
        v24 = (v24 + 1);
        if (!--v25)
        {
LABEL_372:
          tv_sec = v231.st_atimespec.tv_sec;
          goto LABEL_373;
        }

        continue;
      }
    }

    v219 = strlen(__s);
    v30 = &__s[v219];
    do
    {
      v31 = v231.st_birthtimespec.tv_sec;
      tv_nsec = v231.st_birthtimespec.tv_nsec;
      while (v31 != tv_nsec)
      {
        v36 = *v31;
        if ((SHIBYTE(v224.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          if (HIBYTE(v224.__r_.__value_.__r.__words[2]) != 22)
          {
            v33 = HIBYTE(v224.__r_.__value_.__r.__words[2]);
            *(&v224.__r_.__value_.__s + 23) = (*(&v224.__r_.__value_.__s + 23) + 1) & 0x7F;
            v34 = &v224;
            goto LABEL_54;
          }

          v37 = &v224;
          v33 = 22;
LABEL_62:
          if (v33 + 1 > 2 * v33)
          {
            v38 = v33 + 1;
          }

          else
          {
            v38 = 2 * v33;
          }

          if ((v38 | 7) == 0x17)
          {
            v39 = 25;
          }

          else
          {
            v39 = (v38 | 7) + 1;
          }

          if (v38 >= 0x17)
          {
            v40 = v39;
          }

          else
          {
            v40 = 23;
          }

          v41 = v33 == 22;
          goto LABEL_72;
        }

        v33 = (v224.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v224.__r_.__value_.__l.__size_ == v33)
        {
          if ((v224.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          v37 = v224.__r_.__value_.__r.__words[0];
          if (v33 < 0x3FFFFFFFFFFFFFF3)
          {
            goto LABEL_62;
          }

          v41 = 0;
          v40 = 0x7FFFFFFFFFFFFFF7;
LABEL_72:
          v42 = operator new(v40);
          v34 = v42;
          if (v33)
          {
            memmove(v42, v37, v33);
          }

          if (!v41)
          {
            operator delete(v37);
          }

          v224.__r_.__value_.__r.__words[0] = v34;
          v224.__r_.__value_.__r.__words[2] = v40 | 0x8000000000000000;
          goto LABEL_78;
        }

        v33 = v224.__r_.__value_.__l.__size_;
        v34 = v224.__r_.__value_.__r.__words[0];
LABEL_78:
        v224.__r_.__value_.__l.__size_ = v33 + 1;
LABEL_54:
        v35 = v34 + v33;
        *v35 = v36;
        v35[1] = 0;
        ++v31;
      }

      if (v219)
      {
        v43 = __s;
        while (1)
        {
          v47 = *v43;
          v48 = (v43 + 1);
          if (v47 != 36 || v48 == v30)
          {
            goto LABEL_89;
          }

          v51 = *v48;
          if (v51 <= 0x26)
          {
            if (v51 == 36)
            {
              ++v43;
              goto LABEL_89;
            }

            if (v51 == 38)
            {
              v52 = *v231.st_atimespec.tv_sec;
              v53 = *(v231.st_atimespec.tv_sec + 8);
              if (*v231.st_atimespec.tv_sec == v53)
              {
                goto LABEL_213;
              }

              while (1)
              {
                while (1)
                {
                  v55 = *v52;
                  v56 = HIBYTE(v224.__r_.__value_.__r.__words[2]);
                  if (SHIBYTE(v224.__r_.__value_.__r.__words[2]) < 0)
                  {
                    break;
                  }

                  if (HIBYTE(v224.__r_.__value_.__r.__words[2]) == 22)
                  {
                    v57 = &v224;
                    v58 = 22;
                    goto LABEL_104;
                  }

                  *(&v224.__r_.__value_.__s + 23) = (*(&v224.__r_.__value_.__s + 23) + 1) & 0x7F;
                  v54 = &v224 + v56;
                  *v54 = v55;
                  v54[1] = 0;
                  if (++v52 == v53)
                  {
                    goto LABEL_213;
                  }
                }

                v58 = (v224.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
                if (v224.__r_.__value_.__l.__size_ == v58)
                {
                  if ((v224.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
                  {
                    goto LABEL_388;
                  }

                  v57 = v224.__r_.__value_.__r.__words[0];
                  if (v58 >= 0x3FFFFFFFFFFFFFF3)
                  {
                    v62 = 0;
                    v61 = 0x7FFFFFFFFFFFFFF7;
                  }

                  else
                  {
LABEL_104:
                    if (v58 + 1 > 2 * v58)
                    {
                      v59 = v58 + 1;
                    }

                    else
                    {
                      v59 = 2 * v58;
                    }

                    if ((v59 | 7) == 0x17)
                    {
                      v60 = 25;
                    }

                    else
                    {
                      v60 = (v59 | 7) + 1;
                    }

                    if (v59 >= 0x17)
                    {
                      v61 = v60;
                    }

                    else
                    {
                      v61 = 23;
                    }

                    v62 = v58 == 22;
                  }

                  v63 = operator new(v61);
                  v64 = v63;
                  if (v58)
                  {
                    memmove(v63, v57, v58);
                  }

                  if (!v62)
                  {
                    operator delete(v57);
                  }

                  v224.__r_.__value_.__r.__words[0] = v64;
                  v224.__r_.__value_.__r.__words[2] = v61 | 0x8000000000000000;
                  goto LABEL_120;
                }

                v58 = v224.__r_.__value_.__l.__size_;
                v64 = v224.__r_.__value_.__r.__words[0];
LABEL_120:
                v224.__r_.__value_.__l.__size_ = v58 + 1;
                v65 = (v64 + v58);
                *v65 = v55;
                v65[1] = 0;
                if (++v52 == v53)
                {
                  goto LABEL_213;
                }
              }
            }

LABEL_174:
            LODWORD(v85) = v51 - 48;
            if (v85 <= 9)
            {
              v85 = v85;
              if (v43 + 2 != v30)
              {
                v86 = v43[2];
                v87 = v86 - 48;
                v88 = v86 + 10 * v85 - 48;
                if (v87 > 9)
                {
                  v48 = (v43 + 1);
                }

                else
                {
                  v85 = v88;
                  v48 = (v43 + 2);
                }
              }

              v89 = v231.st_atimespec.tv_sec + 24 * v85;
              v90 = 0xAAAAAAAAAAAAAAABLL * ((v231.st_atimespec.tv_nsec - v231.st_atimespec.tv_sec) >> 3) > v85;
              p_tv_nsec = &v231.st_mtimespec.tv_nsec;
              if (v90)
              {
                p_tv_nsec = v89;
              }

              v92 = *p_tv_nsec;
              p_st_ctimespec = (v89 + 8);
              if (!v90)
              {
                p_st_ctimespec = &v231.st_ctimespec;
              }

              v94 = p_st_ctimespec->tv_sec;
              if (v92 == p_st_ctimespec->tv_sec)
              {
                goto LABEL_213;
              }

              while (1)
              {
                while (1)
                {
                  v96 = *v92;
                  v97 = HIBYTE(v224.__r_.__value_.__r.__words[2]);
                  if (SHIBYTE(v224.__r_.__value_.__r.__words[2]) < 0)
                  {
                    break;
                  }

                  if (HIBYTE(v224.__r_.__value_.__r.__words[2]) == 22)
                  {
                    v98 = &v224;
                    v99 = 22;
                    goto LABEL_192;
                  }

                  *(&v224.__r_.__value_.__s + 23) = (*(&v224.__r_.__value_.__s + 23) + 1) & 0x7F;
                  v95 = &v224 + v97;
                  *v95 = v96;
                  v95[1] = 0;
                  if (++v92 == v94)
                  {
                    goto LABEL_213;
                  }
                }

                v99 = (v224.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
                if (v224.__r_.__value_.__l.__size_ == v99)
                {
                  if ((v224.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
                  {
                    goto LABEL_388;
                  }

                  v98 = v224.__r_.__value_.__r.__words[0];
                  if (v99 >= 0x3FFFFFFFFFFFFFF3)
                  {
                    v103 = 0;
                    v102 = 0x7FFFFFFFFFFFFFF7;
                  }

                  else
                  {
LABEL_192:
                    if (v99 + 1 > 2 * v99)
                    {
                      v100 = v99 + 1;
                    }

                    else
                    {
                      v100 = 2 * v99;
                    }

                    if ((v100 | 7) == 0x17)
                    {
                      v101 = 25;
                    }

                    else
                    {
                      v101 = (v100 | 7) + 1;
                    }

                    if (v100 >= 0x17)
                    {
                      v102 = v101;
                    }

                    else
                    {
                      v102 = 23;
                    }

                    v103 = v99 == 22;
                  }

                  v104 = operator new(v102);
                  v105 = v104;
                  if (v99)
                  {
                    memmove(v104, v98, v99);
                  }

                  if (!v103)
                  {
                    operator delete(v98);
                  }

                  v224.__r_.__value_.__r.__words[0] = v105;
                  v224.__r_.__value_.__r.__words[2] = v102 | 0x8000000000000000;
                  goto LABEL_208;
                }

                v99 = v224.__r_.__value_.__l.__size_;
                v105 = v224.__r_.__value_.__r.__words[0];
LABEL_208:
                v224.__r_.__value_.__l.__size_ = v99 + 1;
                v106 = (v105 + v99);
                *v106 = v96;
                v106[1] = 0;
                if (++v92 == v94)
                {
                  goto LABEL_213;
                }
              }
            }

LABEL_89:
            if (SHIBYTE(v224.__r_.__value_.__r.__words[2]) < 0)
            {
              v44 = (v224.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
              if (v224.__r_.__value_.__l.__size_ != v44)
              {
                v44 = v224.__r_.__value_.__l.__size_;
                v45 = v224.__r_.__value_.__r.__words[0];
LABEL_172:
                v224.__r_.__value_.__l.__size_ = v44 + 1;
                goto LABEL_83;
              }

              if ((v224.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
              {
LABEL_388:
                std::string::__throw_length_error[abi:ne200100]();
              }

              v50 = v224.__r_.__value_.__r.__words[0];
              if (v44 >= 0x3FFFFFFFFFFFFFF3)
              {
                v69 = 0;
                v68 = 0x7FFFFFFFFFFFFFF7;
LABEL_136:
                v70 = operator new(v68);
                v45 = v70;
                if (v44)
                {
                  memmove(v70, v50, v44);
                }

                if (!v69)
                {
                  operator delete(v50);
                }

                v224.__r_.__value_.__r.__words[0] = v45;
                v224.__r_.__value_.__r.__words[2] = v68 | 0x8000000000000000;
                goto LABEL_172;
              }

LABEL_126:
              if (v44 + 1 > 2 * v44)
              {
                v66 = v44 + 1;
              }

              else
              {
                v66 = 2 * v44;
              }

              if ((v66 | 7) == 0x17)
              {
                v67 = 25;
              }

              else
              {
                v67 = (v66 | 7) + 1;
              }

              if (v66 >= 0x17)
              {
                v68 = v67;
              }

              else
              {
                v68 = 23;
              }

              v69 = v44 == 22;
              goto LABEL_136;
            }

            if (HIBYTE(v224.__r_.__value_.__r.__words[2]) == 22)
            {
              v50 = &v224;
              v44 = 22;
              goto LABEL_126;
            }

            v44 = HIBYTE(v224.__r_.__value_.__r.__words[2]);
            *(&v224.__r_.__value_.__s + 23) = (*(&v224.__r_.__value_.__s + 23) + 1) & 0x7F;
            v45 = &v224;
LABEL_83:
            v46 = v45 + v44;
            *v46 = v47;
            v46[1] = 0;
            if (++v43 == v30)
            {
              goto LABEL_241;
            }

            continue;
          }

          if (v51 != 39)
          {
            if (v51 != 96)
            {
              goto LABEL_174;
            }

            v71 = v231.st_birthtimespec.tv_sec;
            v72 = v231.st_birthtimespec.tv_nsec;
            if (v231.st_birthtimespec.tv_sec == v231.st_birthtimespec.tv_nsec)
            {
              goto LABEL_213;
            }

            while (1)
            {
              while (1)
              {
                v74 = *v71;
                v75 = HIBYTE(v224.__r_.__value_.__r.__words[2]);
                if (SHIBYTE(v224.__r_.__value_.__r.__words[2]) < 0)
                {
                  break;
                }

                if (HIBYTE(v224.__r_.__value_.__r.__words[2]) == 22)
                {
                  v76 = &v224;
                  v77 = 22;
                  goto LABEL_152;
                }

                *(&v224.__r_.__value_.__s + 23) = (*(&v224.__r_.__value_.__s + 23) + 1) & 0x7F;
                v73 = &v224 + v75;
                *v73 = v74;
                v73[1] = 0;
                if (++v71 == v72)
                {
                  goto LABEL_213;
                }
              }

              v77 = (v224.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
              if (v224.__r_.__value_.__l.__size_ == v77)
              {
                if ((v224.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
                {
                  goto LABEL_388;
                }

                v76 = v224.__r_.__value_.__r.__words[0];
                if (v77 >= 0x3FFFFFFFFFFFFFF3)
                {
                  v81 = 0;
                  v80 = 0x7FFFFFFFFFFFFFF7;
                }

                else
                {
LABEL_152:
                  if (v77 + 1 > 2 * v77)
                  {
                    v78 = v77 + 1;
                  }

                  else
                  {
                    v78 = 2 * v77;
                  }

                  if ((v78 | 7) == 0x17)
                  {
                    v79 = 25;
                  }

                  else
                  {
                    v79 = (v78 | 7) + 1;
                  }

                  if (v78 >= 0x17)
                  {
                    v80 = v79;
                  }

                  else
                  {
                    v80 = 23;
                  }

                  v81 = v77 == 22;
                }

                v82 = operator new(v80);
                v83 = v82;
                if (v77)
                {
                  memmove(v82, v76, v77);
                }

                if (!v81)
                {
                  operator delete(v76);
                }

                v224.__r_.__value_.__r.__words[0] = v83;
                v224.__r_.__value_.__r.__words[2] = v80 | 0x8000000000000000;
                goto LABEL_168;
              }

              v77 = v224.__r_.__value_.__l.__size_;
              v83 = v224.__r_.__value_.__r.__words[0];
LABEL_168:
              v224.__r_.__value_.__l.__size_ = v77 + 1;
              v84 = (v83 + v77);
              *v84 = v74;
              v84[1] = 0;
              if (++v71 == v72)
              {
                goto LABEL_213;
              }
            }
          }

          st_blocks = v231.st_blocks;
          v108 = *&v231.st_blksize;
          if (v231.st_blocks != *&v231.st_blksize)
          {
            break;
          }

LABEL_213:
          v43 = (v48 + 1);
          if (v48 + 1 == v30)
          {
            goto LABEL_241;
          }
        }

        while (2)
        {
          while (2)
          {
            v110 = *st_blocks;
            v111 = HIBYTE(v224.__r_.__value_.__r.__words[2]);
            if ((SHIBYTE(v224.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              if (HIBYTE(v224.__r_.__value_.__r.__words[2]) != 22)
              {
                *(&v224.__r_.__value_.__s + 23) = (*(&v224.__r_.__value_.__s + 23) + 1) & 0x7F;
                v109 = &v224 + v111;
                *v109 = v110;
                v109[1] = 0;
                if (++st_blocks == v108)
                {
                  goto LABEL_213;
                }

                continue;
              }

              v112 = &v224;
              v113 = 22;
LABEL_222:
              if (v113 + 1 > 2 * v113)
              {
                v114 = v113 + 1;
              }

              else
              {
                v114 = 2 * v113;
              }

              if ((v114 | 7) == 0x17)
              {
                v115 = 25;
              }

              else
              {
                v115 = (v114 | 7) + 1;
              }

              if (v114 >= 0x17)
              {
                v116 = v115;
              }

              else
              {
                v116 = 23;
              }

              v117 = v113 == 22;
              goto LABEL_232;
            }

            break;
          }

          v113 = (v224.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
          if (v224.__r_.__value_.__l.__size_ == v113)
          {
            if ((v224.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
            {
              goto LABEL_388;
            }

            v112 = v224.__r_.__value_.__r.__words[0];
            if (v113 < 0x3FFFFFFFFFFFFFF3)
            {
              goto LABEL_222;
            }

            v117 = 0;
            v116 = 0x7FFFFFFFFFFFFFF7;
LABEL_232:
            v118 = operator new(v116);
            v119 = v118;
            if (v113)
            {
              memmove(v118, v112, v113);
            }

            if (!v117)
            {
              operator delete(v112);
            }

            v224.__r_.__value_.__r.__words[0] = v119;
            v224.__r_.__value_.__r.__words[2] = v116 | 0x8000000000000000;
          }

          else
          {
            v113 = v224.__r_.__value_.__l.__size_;
            v119 = v224.__r_.__value_.__r.__words[0];
          }

          v224.__r_.__value_.__l.__size_ = v113 + 1;
          v120 = (v119 + v113);
          *v120 = v110;
          v120[1] = 0;
          if (++st_blocks == v108)
          {
            goto LABEL_213;
          }

          continue;
        }
      }

LABEL_241:
      st_rdev = v231.st_rdev;
      v122 = v231.st_rdev | 0x800;
      v231.st_rdev |= 0x800u;
      v123 = v231.st_atimespec.tv_sec;
      v124 = &v231.st_mtimespec.tv_nsec;
      if (v231.st_atimespec.tv_nsec != v231.st_atimespec.tv_sec)
      {
        v124 = v231.st_atimespec.tv_sec;
      }

      v125 = (v231.st_atimespec.tv_sec + 8);
      if (v231.st_atimespec.tv_nsec == v231.st_atimespec.tv_sec)
      {
        v125 = &v231.st_ctimespec;
      }

      v126 = v125->tv_sec;
      st_ino = v231.st_ino;
      v217 = *&v231.st_blksize;
      v218 = v231.st_blocks;
      if (*v124 != v125->tv_sec)
      {
        v221 = v125->tv_sec;
        v128 = v125->tv_sec;
        v129 = v223;
        goto LABEL_247;
      }

      v129 = v223;
      if (v231.st_ino == v126)
      {
        if (!v231.st_atimespec.tv_sec)
        {
          goto LABEL_289;
        }

        goto LABEL_288;
      }

      v154 = *&v231.st_uid;
      *&v155 = 0xAAAAAAAAAAAAAAAALL;
      *(&v155 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *(v223 + 2) = v155;
      v129[3] = v155;
      *v129 = v155;
      v129[1] = v155;
      v234 = 0uLL;
      v235 = 0;
      v236 = 0uLL;
      v237 = 0;
      v238 = 0;
      v239 = 0;
      v232 = 0u;
      memset(v233, 0, 25);
      v156 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(v154, v126, st_ino, &v232, st_rdev | 0x860u);
      v157 = v234.i64[0];
      v158 = *(&v232 + 1) - v232;
      v159 = 0xAAAAAAAAAAAAAAABLL * ((*(&v232 + 1) - v232) >> 3);
      v161 = v231.st_atimespec.tv_sec;
      v160 = v231.st_atimespec.tv_nsec;
      v162 = 0xAAAAAAAAAAAAAAABLL * ((v231.st_atimespec.tv_nsec - v231.st_atimespec.tv_sec) >> 3);
      if (v159 <= v162)
      {
        if (v159 < v162)
        {
          v160 = v231.st_atimespec.tv_sec + v158;
          v231.st_atimespec.tv_nsec = v231.st_atimespec.tv_sec + v158;
        }
      }

      else
      {
        std::vector<std::sub_match<std::__wrap_iter<char const*>>>::__append(&v231.st_atimespec, v159 - v162);
        v161 = v231.st_atimespec.tv_sec;
        v160 = v231.st_atimespec.tv_nsec;
      }

      if (v160 == v161)
      {
        v179 = v126 - v157;
        v177 = v232;
      }

      else
      {
        v175 = 0;
        v176 = 0xAAAAAAAAAAAAAAABLL * ((v160 - v161) >> 3);
        v177 = v232;
        v178 = 0xAAAAAAAAAAAAAAABLL * ((*(&v232 + 1) - v232) >> 3);
        v179 = v126 - v157;
        if (v176 <= 1)
        {
          v176 = 1;
        }

        v180 = (v161 + 16);
        v181 = v232;
        do
        {
          if (v178 <= v175)
          {
            v182 = &v233[8];
          }

          else
          {
            v182 = v181;
          }

          *(v180 - 2) = v179 + *v182;
          v183 = (v181 + 8);
          if (v178 <= v175)
          {
            v183 = &v233[16];
          }

          *(v180 - 1) = v179 + *v183;
          v184 = (v181 + 16);
          if (v178 <= v175)
          {
            v184 = v129;
          }

          *v180 = *v184;
          v180 += 24;
          ++v175;
          v181 += 24;
        }

        while (v176 != v175);
      }

      v231.st_mtimespec.tv_nsec = st_ino;
      v231.st_ctimespec.tv_sec = st_ino;
      LOBYTE(v231.st_ctimespec.tv_nsec) = 0;
      v185 = vdupq_n_s64(v179);
      v231.st_birthtimespec = vaddq_s64(v185, v234);
      LOBYTE(v231.st_size) = v235;
      *&v231.st_blocks = vaddq_s64(v185, v236);
      LOBYTE(v231.st_gen) = v237;
      LOBYTE(v231.st_qspare[0]) = v238;
      if (v177)
      {
        *(&v232 + 1) = v177;
        operator delete(v177);
      }

      if ((v156 & 1) == 0)
      {
        v221 = v126;
        v128 = (&v126->first + 1);
        v122 = v231.st_rdev;
        st_ino = v231.st_ino;
LABEL_247:
        v231.st_rdev = v122 | 0x80;
        v130 = *&v231.st_uid;
        *&v131 = 0xAAAAAAAAAAAAAAAALL;
        *(&v131 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v129[2] = v131;
        v129[3] = v131;
        *v129 = v131;
        v129[1] = v131;
        v234 = 0uLL;
        v235 = 0;
        v236 = 0uLL;
        v237 = 0;
        v238 = 0;
        v239 = 0;
        v232 = 0u;
        memset(v233, 0, 25);
        v222 = v128;
        v132 = st_ino;
        v220 = std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(v130, v128, st_ino, &v232, v122 | 0x80u);
        v133 = v234.i64[0];
        v134 = *(&v232 + 1) - v232;
        v135 = 0xAAAAAAAAAAAAAAABLL * ((*(&v232 + 1) - v232) >> 3);
        v136 = v231.st_atimespec.tv_sec;
        v137 = v231.st_atimespec.tv_nsec;
        v138 = v231.st_atimespec.tv_nsec - v231.st_atimespec.tv_sec;
        v139 = 0xAAAAAAAAAAAAAAABLL * ((v231.st_atimespec.tv_nsec - v231.st_atimespec.tv_sec) >> 3);
        v140 = v135 - v139;
        if (v135 <= v139)
        {
          if (v135 < v139)
          {
            v137 = v231.st_atimespec.tv_sec + v134;
            v231.st_atimespec.tv_nsec = v231.st_atimespec.tv_sec + v134;
          }

          v150 = v223;
          v151 = v221;
          v152 = v220;
          if (v137 == v231.st_atimespec.tv_sec)
          {
            goto LABEL_264;
          }
        }

        else if (0xAAAAAAAAAAAAAAABLL * ((v231.st_mtimespec.tv_sec - v231.st_atimespec.tv_nsec) >> 3) >= v140)
        {
          v173 = v231.st_atimespec.tv_nsec + 24 * v140;
          v174 = 8 * ((*(&v232 + 1) - v232) >> 3) - 8 * ((v231.st_atimespec.tv_nsec - v231.st_atimespec.tv_sec) >> 3);
          do
          {
            *v137 = 0;
            *(v137 + 8) = 0;
            *(v137 + 16) = 0;
            v137 += 24;
            v174 -= 24;
          }

          while (v174);
          v231.st_atimespec.tv_nsec = v173;
          v150 = v223;
          v151 = v221;
          v152 = v220;
          v136 = v231.st_atimespec.tv_sec;
          v137 = v173;
          if (v173 == v231.st_atimespec.tv_sec)
          {
LABEL_264:
            v153 = v222 - v133;
            goto LABEL_282;
          }
        }

        else
        {
          if (v135 > 0xAAAAAAAAAAAAAAALL)
          {
            std::vector<dispatch::callback<void({block_pointer})(sar::OBDState,sar::TunerState)>>::__throw_length_error[abi:ne200100]();
          }

          v215 = v234.i64[0];
          v141 = 0x5555555555555556 * ((v231.st_mtimespec.tv_sec - v231.st_atimespec.tv_sec) >> 3);
          if (v141 <= v135)
          {
            v141 = 0xAAAAAAAAAAAAAAABLL * ((*(&v232 + 1) - v232) >> 3);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v231.st_mtimespec.tv_sec - v231.st_atimespec.tv_sec) >> 3) >= 0x555555555555555)
          {
            v142 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v142 = v141;
          }

          if (v142 > 0xAAAAAAAAAAAAAAALL)
          {
            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v143 = operator new(24 * v142);
          v144 = &v143[24 * v140 + v138];
          v145 = 24 * v135 - 24 * v139;
          v146 = &v143[v138];
          do
          {
            *v146 = 0;
            *(v146 + 1) = 0;
            v146[16] = 0;
            v146 += 24;
            v145 -= 24;
          }

          while (v145);
          v133 = v215;
          if (v136 != v137)
          {
            v147 = v136;
            v148 = v143;
            do
            {
              v149 = *v147;
              *(v148 + 2) = *(v147 + 2);
              *v148 = v149;
              v148 += 24;
              v147 += 24;
            }

            while (v147 != v137);
          }

          v231.st_atimespec.tv_sec = v143;
          v231.st_atimespec.tv_nsec = &v143[24 * v140 + v138];
          v231.st_mtimespec.tv_sec = &v143[24 * v142];
          v150 = v223;
          v151 = v221;
          v152 = v220;
          if (v136)
          {
            operator delete(v136);
            v133 = v215;
            v144 = v231.st_atimespec.tv_nsec;
          }

          v136 = v231.st_atimespec.tv_sec;
          v137 = v144;
          if (v144 == v231.st_atimespec.tv_sec)
          {
            goto LABEL_264;
          }
        }

        v163 = 0;
        v164 = 0xAAAAAAAAAAAAAAABLL * ((v137 - v136) >> 3);
        v165 = v232;
        v166 = 0xAAAAAAAAAAAAAAABLL * ((*(&v232 + 1) - v232) >> 3);
        v153 = v222 - v133;
        if (v164 <= 1)
        {
          v164 = 1;
        }

        v167 = v136 + 16;
        do
        {
          if (v166 <= v163)
          {
            v168 = &v233[8];
          }

          else
          {
            v168 = v165;
          }

          *(v167 - 2) = v153 + *v168;
          v169 = (v165 + 8);
          if (v166 <= v163)
          {
            v169 = &v233[16];
          }

          *(v167 - 1) = v153 + *v169;
          v170 = (v165 + 16);
          if (v166 <= v163)
          {
            v170 = v150;
          }

          *v167 = *v170;
          v167 += 24;
          ++v163;
          v165 += 24;
        }

        while (v164 != v163);
LABEL_282:
        v231.st_mtimespec.tv_nsec = v132;
        v231.st_ctimespec.tv_sec = v132;
        LOBYTE(v231.st_ctimespec.tv_nsec) = 0;
        v171 = vdupq_n_s64(v153);
        v172 = vaddq_s64(v171, v234);
        v231.st_birthtimespec = v172;
        LOBYTE(v231.st_size) = v235;
        *&v231.st_blocks = vaddq_s64(v171, v236);
        LOBYTE(v231.st_gen) = v237;
        if ((v122 & 0x800) == 0)
        {
          v231.st_qspare[1] = v172.tv_sec;
        }

        LOBYTE(v231.st_qspare[0]) = v238;
        if (v232)
        {
          *(&v232 + 1) = v232;
          operator delete(v232);
        }

        if (v152)
        {
          v231.st_birthtimespec.tv_sec = v151;
          LOBYTE(v231.st_size) = v231.st_birthtimespec.tv_nsec != v151;
          goto LABEL_51;
        }

        v123 = v231.st_atimespec.tv_sec;
        if (!v231.st_atimespec.tv_sec)
        {
          goto LABEL_289;
        }

LABEL_288:
        v231.st_atimespec.tv_nsec = v123;
        operator delete(v123);
LABEL_289:
        LOBYTE(v231.st_qspare[0]) = 0;
        memset(&v231.st_atimespec, 0, 41);
        memset(&v231.st_birthtimespec, 0, 17);
        memset(&v231.st_blocks, 0, 17);
        v231.st_qspare[1] = 0;
      }

LABEL_51:
      tv_sec = v231.st_atimespec.tv_sec;
    }

    while (v231.st_atimespec.tv_nsec != v231.st_atimespec.tv_sec);
    v186 = v218;
    if (v218 != v217)
    {
      while (1)
      {
        while (1)
        {
          v188 = *v186;
          v189 = HIBYTE(v224.__r_.__value_.__r.__words[2]);
          if (SHIBYTE(v224.__r_.__value_.__r.__words[2]) < 0)
          {
            break;
          }

          if (HIBYTE(v224.__r_.__value_.__r.__words[2]) == 22)
          {
            v190 = &v224;
            v191 = 22;
            goto LABEL_325;
          }

          *(&v224.__r_.__value_.__s + 23) = (*(&v224.__r_.__value_.__s + 23) + 1) & 0x7F;
          v187 = &v224 + v189;
          *v187 = v188;
          v187[1] = 0;
          if (++v186 == v217)
          {
            goto LABEL_372;
          }
        }

        v191 = (v224.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v224.__r_.__value_.__l.__size_ == v191)
        {
          if ((v224.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) == 0x7FFFFFFFFFFFFFF8)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          v190 = v224.__r_.__value_.__r.__words[0];
          if (v191 >= 0x3FFFFFFFFFFFFFF3)
          {
            v195 = 0;
            v194 = 0x7FFFFFFFFFFFFFF7;
          }

          else
          {
LABEL_325:
            if (v191 + 1 > 2 * v191)
            {
              v192 = v191 + 1;
            }

            else
            {
              v192 = 2 * v191;
            }

            if ((v192 | 7) == 0x17)
            {
              v193 = 25;
            }

            else
            {
              v193 = (v192 | 7) + 1;
            }

            if (v192 >= 0x17)
            {
              v194 = v193;
            }

            else
            {
              v194 = 23;
            }

            v195 = v191 == 22;
          }

          v196 = operator new(v194);
          v197 = v196;
          if (v191)
          {
            memmove(v196, v190, v191);
          }

          if (!v195)
          {
            operator delete(v190);
          }

          v224.__r_.__value_.__r.__words[0] = v197;
          v224.__r_.__value_.__r.__words[2] = v194 | 0x8000000000000000;
          goto LABEL_341;
        }

        v191 = v224.__r_.__value_.__l.__size_;
        v197 = v224.__r_.__value_.__r.__words[0];
LABEL_341:
        v224.__r_.__value_.__l.__size_ = v191 + 1;
        v198 = (v197 + v191);
        *v198 = v188;
        v198[1] = 0;
        if (++v186 == v217)
        {
          goto LABEL_372;
        }
      }
    }

LABEL_373:
    if (tv_sec)
    {
      v231.st_atimespec.tv_nsec = tv_sec;
      operator delete(tv_sec);
    }

    a1 = v213;
    v4 = v214;
    if (SHIBYTE(v226.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v226.__r_.__value_.__l.__data_);
      v226 = v224;
      if (SHIBYTE(__p[2]) < 0)
      {
LABEL_5:
        operator delete(__p[0]);
      }
    }

    else
    {
      v226 = v224;
      if (SHIBYTE(__p[2]) < 0)
      {
        goto LABEL_5;
      }
    }
  }

  *(a2 + 23) = 0;
  *a2 = 0;
  if (SHIBYTE(v226.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v226.__r_.__value_.__l.__data_);
  }

LABEL_384:
  v211 = v230;
  if (v230 && !atomic_fetch_add((v230 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v211->__on_zero_shared)(v211);
    std::__shared_weak_count::__release_weak(v211);
  }

  std::locale::~locale(v227);
}