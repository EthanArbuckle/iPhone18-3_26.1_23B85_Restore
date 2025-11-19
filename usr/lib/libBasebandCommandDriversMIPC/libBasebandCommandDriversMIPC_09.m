void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<trace::MipcCommandDriver::setLogLevel(trace::LogLevel,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0::operator() const(void)::{lambda(mipc::sys::Set_Md_Log_Level_Cnf const&)#1}>(trace::MipcCommandDriver::setLogLevel(trace::LogLevel,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0::operator() const(void)::{lambda(mipc::sys::Set_Md_Log_Level_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  *a2 = &unk_2A1E14568;
  *(a2 + 8) = v5;
  if (v4)
  {
    v4 = _Block_copy(v4);
  }

  v6 = *(a1 + 24);
  *(a2 + 16) = v4;
  *(a2 + 24) = v6;
  if (v6)
  {
    dispatch_retain(v6);
  }

  *(a2 + 32) = *(a1 + 32);
  v7 = *(a1 + 48);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 48) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 16), 1uLL, memory_order_relaxed);
  }
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<trace::MipcCommandDriver::setLogLevel(trace::LogLevel,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0::operator() const(void)::{lambda(mipc::sys::Set_Md_Log_Level_Cnf const&)#1}>(trace::MipcCommandDriver::setLogLevel(trace::LogLevel,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0::operator() const(void)::{lambda(mipc::sys::Set_Md_Log_Level_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::destroy(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = a1[2];
  if (v4)
  {
    _Block_release(v4);
  }
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<trace::MipcCommandDriver::setLogLevel(trace::LogLevel,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0::operator() const(void)::{lambda(mipc::sys::Set_Md_Log_Level_Cnf const&)#1}>(trace::MipcCommandDriver::setLogLevel(trace::LogLevel,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0::operator() const(void)::{lambda(mipc::sys::Set_Md_Log_Level_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::destroy_deallocate(void *__p)
{
  v2 = __p[6];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = __p[3];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = __p[2];
  if (v4)
  {
    _Block_release(v4);
  }

  operator delete(__p);
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<trace::MipcCommandDriver::setLogLevel(trace::LogLevel,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0::operator() const(void)::{lambda(mipc::sys::Set_Md_Log_Level_Cnf const&)#1}>(trace::MipcCommandDriver::setLogLevel(trace::LogLevel,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0::operator() const(void)::{lambda(mipc::sys::Set_Md_Log_Level_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::operator()(uint64_t a1, abb::router::Message *this)
{
  v43 = *MEMORY[0x29EDCA608];
  v29 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v28[3] = v4;
  v28[4] = v4;
  v28[1] = v4;
  v28[2] = v4;
  v28[0] = v4;
  if (abb::router::Message::isError(this))
  {
    abb::router::Message::getError(__p, this);
    if ((__p[16] & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    *v35 = *__p;
    v6 = mipc::toErrorCode(*__p, v5);
    std::error_code::message((&buf + 8), v35);
    v41 = 0;
    v42 = 0;
    *&buf = v6;
    MEMORY[0x29C266BF0](v28, &buf, 1);
    v7 = v42;
    if (v42 && !atomic_fetch_add(v42 + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
      if ((SHIBYTE(v40) & 0x80000000) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_6;
    }

    if (SHIBYTE(v40) < 0)
    {
LABEL_6:
      operator delete(*(&buf + 1));
    }
  }

  else
  {
    abb::router::Message::getRawMsg(&buf, this);
    v8 = *buf;
    abb::router::Message::getRawMsg(__p, this);
    MEMORY[0x29C266C00](v28, v8, *(*__p + 8) - **__p);
    v9 = *&__p[8];
    if (*&__p[8] && !atomic_fetch_add((*&__p[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
    }

    v10 = *(&buf + 1);
    if (*(&buf + 1) && !atomic_fetch_add((*(&buf + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
    }
  }

LABEL_14:
  v11 = *(a1 + 48);
  if (!v11)
  {
    goto LABEL_48;
  }

  v12 = *(a1 + 8);
  v13 = std::__shared_weak_count::lock(v11);
  v34 = v13;
  if (!v13)
  {
    goto LABEL_48;
  }

  v14 = v13;
  if (*(a1 + 40))
  {
    v32 = 0;
    v15 = mipc::operator==();
    v16 = *(v12 + 40);
    if (v15)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = *(a1 + 32);
        v18 = trace::toString();
        LODWORD(buf) = 136315138;
        *(&buf + 4) = v18;
        _os_log_impl(&dword_296E3E000, v16, OS_LOG_TYPE_DEFAULT, "#I Succeeded to set log level to %s", &buf, 0xCu);
      }

      v19 = 0;
    }

    else
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v24 = *(a1 + 32);
        v25 = trace::toString();
        mipc::ResponseMessage::getError(v28, &buf);
        v26 = mipc::asString();
        mipc::ResponseMessage::getError(v28, __p);
        v27 = &__p[8];
        if (v31 < 0)
        {
          v27 = *&__p[8];
        }

        *v35 = 136315650;
        *&v35[4] = v25;
        *&v35[12] = 2080;
        *&v35[14] = v26;
        v36 = 2080;
        v37 = v27;
        _os_log_error_impl(&dword_296E3E000, v16, OS_LOG_TYPE_ERROR, "Set log level to %s failed: %s (%s)", v35, 0x20u);
        mipc::Error::~Error(__p);
        mipc::Error::~Error(&buf);
      }

      *__p = operator new(0x19uLL);
      *&__p[8] = xmmword_296EB9CB0;
      strcpy(*__p, "Failed to set log level");
      CreateError();
      v19 = buf;
      v32 = buf;
      *&buf = 0;
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
      }
    }

    v20 = *(a1 + 16);
    if (v20 && *(a1 + 24))
    {
      if (v19 && (CFRetain(v19), (v20 = *(a1 + 16)) == 0))
      {
        v21 = 0;
      }

      else
      {
        v21 = _Block_copy(v20);
      }

      v22 = *(a1 + 24);
      *&buf = MEMORY[0x29EDCA5F8];
      *(&buf + 1) = 1174405120;
      v39 = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEclIJS5_EEEvDpT__block_invoke_0;
      v40 = &__block_descriptor_tmp_65;
      if (v21)
      {
        v41 = _Block_copy(v21);
        v42 = v19;
        if (!v19)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v41 = 0;
        v42 = v19;
        if (!v19)
        {
LABEL_37:
          dispatch_async(v22, &buf);
          if (v42)
          {
            CFRelease(v42);
          }

          if (v41)
          {
            _Block_release(v41);
          }

          if (v21)
          {
            _Block_release(v21);
          }

          if (!v19)
          {
            goto LABEL_46;
          }

          CFRelease(v19);
          goto LABEL_45;
        }
      }

      CFRetain(v19);
      goto LABEL_37;
    }

    if (v19)
    {
LABEL_45:
      CFRelease(v19);
    }
  }

LABEL_46:
  if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
  }

LABEL_48:
  mipc::sys::Set_Md_Log_Level_Cnf::~Set_Md_Log_Level_Cnf(v28);
  v23 = *MEMORY[0x29EDCA608];
}

void sub_296EAD218(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, int a32, __int16 a33, char a34, char a35)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<trace::MipcCommandDriver::setLogLevel(trace::LogLevel,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0::operator() const(void)::{lambda(mipc::sys::Set_Md_Log_Level_Cnf const&)#1}>(trace::MipcCommandDriver::setLogLevel(trace::LogLevel,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0::operator() const(void)::{lambda(mipc::sys::Set_Md_Log_Level_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNO3abb6router9SendProxy8callbackIZZN5trace17MipcCommandDriver11setLogLevelENS3_8LogLevelEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEENK3$_0clEvEUlRKN4mipc3sys20Set_Md_Log_Level_CnfEE_EEOS1_OT_EUlRKNS0_7MessageEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNO3abb6router9SendProxy8callbackIZZN5trace17MipcCommandDriver11setLogLevelENS3_8LogLevelEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEENK3$_0clEvEUlRKN4mipc3sys20Set_Md_Log_Level_CnfEE_EEOS1_OT_EUlRKNS0_7MessageEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNO3abb6router9SendProxy8callbackIZZN5trace17MipcCommandDriver11setLogLevelENS3_8LogLevelEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEENK3$_0clEvEUlRKN4mipc3sys20Set_Md_Log_Level_CnfEE_EEOS1_OT_EUlRKNS0_7MessageEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNO3abb6router9SendProxy8callbackIZZN5trace17MipcCommandDriver11setLogLevelENS3_8LogLevelEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEENK3$_0clEvEUlRKN4mipc3sys20Set_Md_Log_Level_CnfEE_EEOS1_OT_EUlRKNS0_7MessageEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void dispatch::async<void ctu::SharedSynchronizable<trace::CommandDriver>::execute_wrapped<trace::MipcCommandDriver::flushLog(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>,std::chrono::duration<long long,std::ratio<1l,1l>>)::$_0>(trace::MipcCommandDriver::flushLog(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>,std::chrono::duration<long long,std::ratio<1l,1l>>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<trace::MipcCommandDriver::flushLog(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>,std::chrono::duration<long long,std::ratio<1l,1l>>)::$_0,std::default_delete<trace::MipcCommandDriver::flushLog(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>,std::chrono::duration<long long,std::ratio<1l,1l>>)::$_0>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v38 = *MEMORY[0x29EDCA608];
  v2 = *a1;
  v3 = *(*a1 + 40);
  v23 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v22[3] = v4;
  v22[4] = v4;
  v22[1] = v4;
  v22[2] = v4;
  v22[0] = v4;
  mipc::sys::Trigger_Md_Log_Flush_Req::Trigger_Md_Log_Flush_Req();
  v34 = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v33[1] = v5;
  v33[2] = v5;
  v33[0] = v5;
  mipc::sys::Trigger_Md_Log_Flush_Req::serialize(v33, v22);
  if (v34)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Serialization error");
    exception->__vftable = (MEMORY[0x29EDC95F0] + 16);
    __cxa_throw(exception, off_29EE5C750, MEMORY[0x29EDC9360]);
  }

  v32 = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v30 = v6;
  v31 = v6;
  v28 = v6;
  v29 = v6;
  v26 = v6;
  v27 = v6;
  v24 = v6;
  v25 = v6;
  MEMORY[0x29C266720](&v24, v33);
  abb::router::SendProxy::SendProxy(v35, (v3 + 48), &v24);
  MEMORY[0x29C266730](&v24);
  if (v34 != -1)
  {
    *&v24 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_6vectorIhNS_9allocatorIhEEEEN4mipc5ErrorEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSF_1EJSB_SD_EEEEEEDcSH_DpT0_;
    *(&v24 + 1) = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_6vectorIhNS_9allocatorIhEEEEN4mipc5ErrorEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSF_1EJSB_SD_EEEEEEDcSH_DpT0_;
    (*(&v24 + v34))(&v19, v33);
  }

  v7 = *(v2 + 16);
  abb::router::SendProxy::timeout();
  v8 = abb::router::SendProxy::queuePolicy();
  v19 = v3;
  if (*v2)
  {
    v9 = _Block_copy(*v2);
    v10 = *(v2 + 8);
    if (!v10)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v9 = 0;
  v10 = *(v2 + 8);
  if (v10)
  {
LABEL_6:
    dispatch_retain(v10);
  }

LABEL_7:
  v12 = *(v2 + 24);
  v11 = *(v2 + 32);
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 16), 1uLL, memory_order_relaxed);
  }

  *&v33[0] = v3;
  v20 = 0u;
  v21 = 0u;
  *&v24 = v3;
  *(&v24 + 1) = v9;
  *(v33 + 8) = 0u;
  *&v25 = v10;
  *(&v25 + 1) = v12;
  *&v26 = v11;
  *(&v33[1] + 8) = 0u;
  v13 = operator new(0x30uLL);
  *v13 = &unk_2A1E145E8;
  v13[1] = v3;
  v13[2] = v9;
  v13[3] = v10;
  v13[4] = v12;
  v13[5] = v11;
  v37 = v13;
  std::__function::__value_func<void ()(abb::router::Message const&)>::swap[abi:ne200100](v36, (v8 + 152));
  if (v37 == v36)
  {
    (*(*v37 + 32))(v37);
  }

  else if (v37)
  {
    (*(*v37 + 40))(v37);
  }

  MEMORY[0x29C266750](v35);
  mipc::sys::Trigger_Md_Log_Flush_Req::~Trigger_Md_Log_Flush_Req(v22);
  v14 = *(v2 + 32);
  if (v14)
  {
    std::__shared_weak_count::__release_weak(v14);
  }

  v15 = *(v2 + 8);
  if (v15)
  {
    dispatch_release(v15);
  }

  if (*v2)
  {
    _Block_release(*v2);
  }

  operator delete(v2);
  v16 = a1[2];
  if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
  }

  operator delete(a1);
  v17 = *MEMORY[0x29EDCA608];
}

void sub_296EAD6D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  std::variant<std::vector<unsigned char>,mipc::Error>::~variant[abi:ne200100](&a47);
  mipc::sys::Trigger_Md_Log_Flush_Req::~Trigger_Md_Log_Flush_Req(&a17);
  std::unique_ptr<trace::MipcCommandDriver::flushLog(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>,std::chrono::duration<long long,std::ratio<1l,1l>>)::$_0,std::default_delete<trace::MipcCommandDriver::flushLog(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>,std::chrono::duration<long long,std::ratio<1l,1l>>)::$_0>>::~unique_ptr[abi:ne200100](&a11);
  std::unique_ptr<void ctu::SharedSynchronizable<awd::AwdCommandDriver>::execute_wrapped<awd::MipcCommandDriver::sendEnableMetricSubmission(std::shared_ptr<awd::AppContext>,BOOL,dispatch::block<void({block_pointer})(BOOL)>)::$_0>(awd::MipcCommandDriver::sendEnableMetricSubmission(std::shared_ptr<awd::AppContext>,BOOL,dispatch::block<void({block_pointer})(BOOL)>)::$_0 &&)::{lambda(void)#1},std::default_delete<awd::MipcCommandDriver::sendEnableMetricSubmission(std::shared_ptr<awd::AppContext>,BOOL,dispatch::block<void({block_pointer})(BOOL)>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void *std::unique_ptr<trace::MipcCommandDriver::flushLog(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>,std::chrono::duration<long long,std::ratio<1l,1l>>)::$_0,std::default_delete<trace::MipcCommandDriver::flushLog(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>,std::chrono::duration<long long,std::ratio<1l,1l>>)::$_0>>::~unique_ptr[abi:ne200100](void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = *(v1 + 32);
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    v4 = *(v1 + 8);
    if (v4)
    {
      dispatch_release(v4);
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

void *trace::MipcCommandDriver::flushLog(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>,std::chrono::duration<long long,std::ratio<1l,1l>>)::$_0::operator() const(void)::{lambda(mipc::sys::Trigger_Md_Log_Flush_Cnf const&)#1}::~Trigger_Md_Log_Flush_Cnf(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    _Block_release(v4);
  }

  return a1;
}

void *abb::router::SendProxy::callback<trace::MipcCommandDriver::flushLog(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>,std::chrono::duration<long long,std::ratio<1l,1l>>)::$_0::operator() const(void)::{lambda(mipc::sys::Trigger_Md_Log_Flush_Cnf const&)#1}>(trace::MipcCommandDriver::flushLog(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>,std::chrono::duration<long long,std::ratio<1l,1l>>)::$_0::operator() const(void)::{lambda(mipc::sys::Trigger_Md_Log_Flush_Cnf const&)#1} &&) &&::{lambda(abb::router::Message const&)#1}::~Message(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    _Block_release(v4);
  }

  return a1;
}

void *std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<trace::MipcCommandDriver::flushLog(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>,std::chrono::duration<long long,std::ratio<1l,1l>>)::$_0::operator() const(void)::{lambda(mipc::sys::Trigger_Md_Log_Flush_Cnf const&)#1}>(trace::MipcCommandDriver::flushLog(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>,std::chrono::duration<long long,std::ratio<1l,1l>>)::$_0::operator() const(void)::{lambda(mipc::sys::Trigger_Md_Log_Flush_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::~__func(void *a1)
{
  *a1 = &unk_2A1E145E8;
  v2 = a1[5];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = a1[2];
  if (v4)
  {
    _Block_release(v4);
  }

  return a1;
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<trace::MipcCommandDriver::flushLog(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>,std::chrono::duration<long long,std::ratio<1l,1l>>)::$_0::operator() const(void)::{lambda(mipc::sys::Trigger_Md_Log_Flush_Cnf const&)#1}>(trace::MipcCommandDriver::flushLog(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>,std::chrono::duration<long long,std::ratio<1l,1l>>)::$_0::operator() const(void)::{lambda(mipc::sys::Trigger_Md_Log_Flush_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::~__func(void *__p)
{
  *__p = &unk_2A1E145E8;
  v2 = __p[5];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = __p[3];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = __p[2];
  if (v4)
  {
    _Block_release(v4);
  }

  operator delete(__p);
}

void *std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<trace::MipcCommandDriver::flushLog(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>,std::chrono::duration<long long,std::ratio<1l,1l>>)::$_0::operator() const(void)::{lambda(mipc::sys::Trigger_Md_Log_Flush_Cnf const&)#1}>(trace::MipcCommandDriver::flushLog(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>,std::chrono::duration<long long,std::ratio<1l,1l>>)::$_0::operator() const(void)::{lambda(mipc::sys::Trigger_Md_Log_Flush_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(void *a1)
{
  v2 = operator new(0x30uLL);
  v4 = a1[1];
  v3 = a1[2];
  *v2 = &unk_2A1E145E8;
  v2[1] = v4;
  if (v3)
  {
    v3 = _Block_copy(v3);
  }

  v5 = a1[3];
  v2[2] = v3;
  v2[3] = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  v6 = a1[5];
  v2[4] = a1[4];
  v2[5] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
  }

  return v2;
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<trace::MipcCommandDriver::flushLog(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>,std::chrono::duration<long long,std::ratio<1l,1l>>)::$_0::operator() const(void)::{lambda(mipc::sys::Trigger_Md_Log_Flush_Cnf const&)#1}>(trace::MipcCommandDriver::flushLog(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>,std::chrono::duration<long long,std::ratio<1l,1l>>)::$_0::operator() const(void)::{lambda(mipc::sys::Trigger_Md_Log_Flush_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(void *a1, void *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  *a2 = &unk_2A1E145E8;
  a2[1] = v5;
  if (v4)
  {
    v4 = _Block_copy(v4);
  }

  v6 = a1[3];
  a2[2] = v4;
  a2[3] = v6;
  if (v6)
  {
    dispatch_retain(v6);
  }

  v7 = a1[5];
  a2[4] = a1[4];
  a2[5] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 16), 1uLL, memory_order_relaxed);
  }
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<trace::MipcCommandDriver::flushLog(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>,std::chrono::duration<long long,std::ratio<1l,1l>>)::$_0::operator() const(void)::{lambda(mipc::sys::Trigger_Md_Log_Flush_Cnf const&)#1}>(trace::MipcCommandDriver::flushLog(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>,std::chrono::duration<long long,std::ratio<1l,1l>>)::$_0::operator() const(void)::{lambda(mipc::sys::Trigger_Md_Log_Flush_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::destroy(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = a1[2];
  if (v4)
  {
    _Block_release(v4);
  }
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<trace::MipcCommandDriver::flushLog(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>,std::chrono::duration<long long,std::ratio<1l,1l>>)::$_0::operator() const(void)::{lambda(mipc::sys::Trigger_Md_Log_Flush_Cnf const&)#1}>(trace::MipcCommandDriver::flushLog(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>,std::chrono::duration<long long,std::ratio<1l,1l>>)::$_0::operator() const(void)::{lambda(mipc::sys::Trigger_Md_Log_Flush_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::destroy_deallocate(void *__p)
{
  v2 = __p[5];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = __p[3];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = __p[2];
  if (v4)
  {
    _Block_release(v4);
  }

  operator delete(__p);
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<trace::MipcCommandDriver::flushLog(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>,std::chrono::duration<long long,std::ratio<1l,1l>>)::$_0::operator() const(void)::{lambda(mipc::sys::Trigger_Md_Log_Flush_Cnf const&)#1}>(trace::MipcCommandDriver::flushLog(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>,std::chrono::duration<long long,std::ratio<1l,1l>>)::$_0::operator() const(void)::{lambda(mipc::sys::Trigger_Md_Log_Flush_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::operator()(void *a1, abb::router::Message *this)
{
  v36 = *MEMORY[0x29EDCA608];
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v24[4] = v4;
  v24[5] = v4;
  v24[2] = v4;
  v24[3] = v4;
  v24[0] = v4;
  v24[1] = v4;
  if (abb::router::Message::isError(this))
  {
    abb::router::Message::getError(__p, this);
    if ((__p[16] & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    *v35 = *__p;
    v6 = mipc::toErrorCode(*__p, v5);
    std::error_code::message(&v32, v35);
    v33 = 0;
    v34 = 0;
    *buf = v6;
    MEMORY[0x29C266D30](v24, buf, 1);
    v7 = v34;
    if (v34 && !atomic_fetch_add(v34 + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
      if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_6;
    }

    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_6:
      operator delete(v32.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    abb::router::Message::getRawMsg(buf, this);
    v8 = **buf;
    abb::router::Message::getRawMsg(__p, this);
    MEMORY[0x29C266D40](v24, v8, *(*__p + 8) - **__p);
    v9 = *&__p[8];
    if (*&__p[8] && !atomic_fetch_add((*&__p[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
    }

    v10 = v32.__r_.__value_.__r.__words[0];
    if (v32.__r_.__value_.__r.__words[0] && !atomic_fetch_add((v32.__r_.__value_.__r.__words[0] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
    }
  }

LABEL_14:
  v11 = a1[5];
  if (!v11)
  {
    goto LABEL_48;
  }

  v12 = a1[1];
  v13 = std::__shared_weak_count::lock(v11);
  v30 = v13;
  if (!v13)
  {
    goto LABEL_48;
  }

  v14 = v13;
  if (a1[4])
  {
    v28 = 0;
    v15 = mipc::operator==();
    v16 = *(v12 + 40);
    if (v15)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_296E3E000, v16, OS_LOG_TYPE_DEFAULT, "#I Succeeded to flush log", buf, 2u);
      }

      v17 = 0;
    }

    else
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        mipc::ResponseMessage::getError(v24, buf);
        v22 = mipc::asString();
        mipc::ResponseMessage::getError(v24, __p);
        v23 = &__p[8];
        if (v27 < 0)
        {
          v23 = *&__p[8];
        }

        *v35 = 136315394;
        *&v35[4] = v22;
        *&v35[12] = 2080;
        *&v35[14] = v23;
        _os_log_error_impl(&dword_296E3E000, v16, OS_LOG_TYPE_ERROR, "Triggered flush log failed: %s (%s)", v35, 0x16u);
        mipc::Error::~Error(__p);
        mipc::Error::~Error(buf);
      }

      v26 = 19;
      strcpy(__p, "Failed to flush log");
      CreateError();
      v17 = *buf;
      v28 = *buf;
      *buf = 0;
      if (v26 < 0)
      {
        operator delete(*__p);
      }
    }

    v18 = a1[2];
    if (v18 && a1[3])
    {
      if (v17 && (CFRetain(v17), (v18 = a1[2]) == 0))
      {
        v19 = 0;
      }

      else
      {
        v19 = _Block_copy(v18);
      }

      v20 = a1[3];
      *buf = MEMORY[0x29EDCA5F8];
      v32.__r_.__value_.__r.__words[0] = 1174405120;
      v32.__r_.__value_.__l.__size_ = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEclIJS5_EEEvDpT__block_invoke_0;
      v32.__r_.__value_.__r.__words[2] = &__block_descriptor_tmp_65;
      if (v19)
      {
        v33 = _Block_copy(v19);
        v34 = v17;
        if (!v17)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v33 = 0;
        v34 = v17;
        if (!v17)
        {
LABEL_37:
          dispatch_async(v20, buf);
          if (v34)
          {
            CFRelease(v34);
          }

          if (v33)
          {
            _Block_release(v33);
          }

          if (v19)
          {
            _Block_release(v19);
          }

          if (!v17)
          {
            goto LABEL_46;
          }

          CFRelease(v17);
          goto LABEL_45;
        }
      }

      CFRetain(v17);
      goto LABEL_37;
    }

    if (v17)
    {
LABEL_45:
      CFRelease(v17);
    }
  }

LABEL_46:
  if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
  }

LABEL_48:
  mipc::sys::Trigger_Md_Log_Flush_Cnf::~Trigger_Md_Log_Flush_Cnf(v24);
  v21 = *MEMORY[0x29EDCA608];
}

void sub_296EADFC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<trace::MipcCommandDriver::flushLog(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>,std::chrono::duration<long long,std::ratio<1l,1l>>)::$_0::operator() const(void)::{lambda(mipc::sys::Trigger_Md_Log_Flush_Cnf const&)#1}>(trace::MipcCommandDriver::flushLog(dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>,std::chrono::duration<long long,std::ratio<1l,1l>>)::$_0::operator() const(void)::{lambda(mipc::sys::Trigger_Md_Log_Flush_Cnf const&)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNO3abb6router9SendProxy8callbackIZZN5trace17MipcCommandDriver8flushLogEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEENSt3__16chrono8durationIxNSF_5ratioILl1ELl1EEEEEENK3$_0clEvEUlRKN4mipc3sys24Trigger_Md_Log_Flush_CnfEE_EEOS1_OT_EUlRKNS0_7MessageEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNO3abb6router9SendProxy8callbackIZZN5trace17MipcCommandDriver8flushLogEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEENSt3__16chrono8durationIxNSF_5ratioILl1ELl1EEEEEENK3$_0clEvEUlRKN4mipc3sys24Trigger_Md_Log_Flush_CnfEE_EEOS1_OT_EUlRKNS0_7MessageEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNO3abb6router9SendProxy8callbackIZZN5trace17MipcCommandDriver8flushLogEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEENSt3__16chrono8durationIxNSF_5ratioILl1ELl1EEEEEENK3$_0clEvEUlRKN4mipc3sys24Trigger_Md_Log_Flush_CnfEE_EEOS1_OT_EUlRKNS0_7MessageEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNO3abb6router9SendProxy8callbackIZZN5trace17MipcCommandDriver8flushLogEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEENSt3__16chrono8durationIxNSF_5ratioILl1ELl1EEEEEENK3$_0clEvEUlRKN4mipc3sys24Trigger_Md_Log_Flush_CnfEE_EEOS1_OT_EUlRKNS0_7MessageEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void *_ZZNO3abb6router9SendProxy8callbackIZZN5trace17MipcCommandDriver18sendCustomizedMaskENSt3__16vectorIhNS5_9allocatorIhEEEEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEEUb_E3__5EEOS1_OT_ENUlRKNS0_7MessageEE_D1Ev(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    _Block_release(v4);
  }

  return a1;
}

void *_ZNSt3__110__function6__funcIZNO3abb6router9SendProxy8callbackIZZN5trace17MipcCommandDriver18sendCustomizedMaskENS_6vectorIhNS_9allocatorIhEEEEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEEUb_E3__5EEOS4_OT_EUlRKNS3_7MessageEE_NS9_IST_EEFvSS_EED1Ev(void *a1)
{
  *a1 = &unk_2A1E14668;
  v2 = a1[5];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = a1[2];
  if (v4)
  {
    _Block_release(v4);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZNO3abb6router9SendProxy8callbackIZZN5trace17MipcCommandDriver18sendCustomizedMaskENS_6vectorIhNS_9allocatorIhEEEEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEEUb_E3__5EEOS4_OT_EUlRKNS3_7MessageEE_NS9_IST_EEFvSS_EED0Ev(void *__p)
{
  *__p = &unk_2A1E14668;
  v2 = __p[5];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = __p[3];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = __p[2];
  if (v4)
  {
    _Block_release(v4);
  }

  operator delete(__p);
}

void *_ZNKSt3__110__function6__funcIZNO3abb6router9SendProxy8callbackIZZN5trace17MipcCommandDriver18sendCustomizedMaskENS_6vectorIhNS_9allocatorIhEEEEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEEUb_E3__5EEOS4_OT_EUlRKNS3_7MessageEE_NS9_IST_EEFvSS_EE7__cloneEv(void *a1)
{
  v2 = operator new(0x30uLL);
  v4 = a1[1];
  v3 = a1[2];
  *v2 = &unk_2A1E14668;
  v2[1] = v4;
  if (v3)
  {
    v3 = _Block_copy(v3);
  }

  v5 = a1[3];
  v2[2] = v3;
  v2[3] = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  v6 = a1[5];
  v2[4] = a1[4];
  v2[5] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
  }

  return v2;
}

void _ZNKSt3__110__function6__funcIZNO3abb6router9SendProxy8callbackIZZN5trace17MipcCommandDriver18sendCustomizedMaskENS_6vectorIhNS_9allocatorIhEEEEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEEUb_E3__5EEOS4_OT_EUlRKNS3_7MessageEE_NS9_IST_EEFvSS_EE7__cloneEPNS0_6__baseISV_EE(void *a1, void *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  *a2 = &unk_2A1E14668;
  a2[1] = v5;
  if (v4)
  {
    v4 = _Block_copy(v4);
  }

  v6 = a1[3];
  a2[2] = v4;
  a2[3] = v6;
  if (v6)
  {
    dispatch_retain(v6);
  }

  v7 = a1[5];
  a2[4] = a1[4];
  a2[5] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 16), 1uLL, memory_order_relaxed);
  }
}

void _ZNSt3__110__function6__funcIZNO3abb6router9SendProxy8callbackIZZN5trace17MipcCommandDriver18sendCustomizedMaskENS_6vectorIhNS_9allocatorIhEEEEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEEUb_E3__5EEOS4_OT_EUlRKNS3_7MessageEE_NS9_IST_EEFvSS_EE7destroyEv(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = a1[2];
  if (v4)
  {
    _Block_release(v4);
  }
}

void _ZNSt3__110__function6__funcIZNO3abb6router9SendProxy8callbackIZZN5trace17MipcCommandDriver18sendCustomizedMaskENS_6vectorIhNS_9allocatorIhEEEEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEEUb_E3__5EEOS4_OT_EUlRKNS3_7MessageEE_NS9_IST_EEFvSS_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[5];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = __p[3];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = __p[2];
  if (v4)
  {
    _Block_release(v4);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZNO3abb6router9SendProxy8callbackIZZN5trace17MipcCommandDriver18sendCustomizedMaskENS_6vectorIhNS_9allocatorIhEEEEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEEUb_E3__5EEOS4_OT_EUlRKNS3_7MessageEE_NS9_IST_EEFvSS_EEclESS_(void *a1, abb::router::Message *this)
{
  v36 = *MEMORY[0x29EDCA608];
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v24[4] = v4;
  v24[5] = v4;
  v24[2] = v4;
  v24[3] = v4;
  v24[0] = v4;
  v24[1] = v4;
  if (abb::router::Message::isError(this))
  {
    abb::router::Message::getError(__p, this);
    if ((__p[16] & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    *v35 = *__p;
    v6 = mipc::toErrorCode(*__p, v5);
    std::error_code::message(&v32, v35);
    v33 = 0;
    v34 = 0;
    *buf = v6;
    MEMORY[0x29C266CE0](v24, buf, 1);
    v7 = v34;
    if (v34 && !atomic_fetch_add(v34 + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
      if ((SHIBYTE(v32.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_6;
    }

    if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_6:
      operator delete(v32.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    abb::router::Message::getRawMsg(buf, this);
    v8 = **buf;
    abb::router::Message::getRawMsg(__p, this);
    MEMORY[0x29C266CF0](v24, v8, *(*__p + 8) - **__p);
    v9 = *&__p[8];
    if (*&__p[8] && !atomic_fetch_add((*&__p[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
    }

    v10 = v32.__r_.__value_.__r.__words[0];
    if (v32.__r_.__value_.__r.__words[0] && !atomic_fetch_add((v32.__r_.__value_.__r.__words[0] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
    }
  }

LABEL_14:
  v11 = a1[5];
  if (!v11)
  {
    goto LABEL_48;
  }

  v12 = a1[1];
  v13 = std::__shared_weak_count::lock(v11);
  v30 = v13;
  if (!v13)
  {
    goto LABEL_48;
  }

  v14 = v13;
  if (a1[4])
  {
    v28 = 0;
    v15 = mipc::operator==();
    v16 = *(v12 + 40);
    if (v15)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_296E3E000, v16, OS_LOG_TYPE_DEFAULT, "#I Apply filter succeeded", buf, 2u);
      }

      v17 = 0;
    }

    else
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        mipc::ResponseMessage::getError(v24, buf);
        v22 = mipc::asString();
        mipc::ResponseMessage::getError(v24, __p);
        v23 = &__p[8];
        if (v27 < 0)
        {
          v23 = *&__p[8];
        }

        *v35 = 136315394;
        *&v35[4] = v22;
        *&v35[12] = 2080;
        *&v35[14] = v23;
        _os_log_error_impl(&dword_296E3E000, v16, OS_LOG_TYPE_ERROR, "Applied filter failed: %s (%s)", v35, 0x16u);
        mipc::Error::~Error(__p);
        mipc::Error::~Error(buf);
      }

      v26 = 19;
      strcpy(__p, "Apply Filter failed");
      CreateError();
      v17 = *buf;
      v28 = *buf;
      *buf = 0;
      if (v26 < 0)
      {
        operator delete(*__p);
      }
    }

    v18 = a1[2];
    if (v18 && a1[3])
    {
      if (v17 && (CFRetain(v17), (v18 = a1[2]) == 0))
      {
        v19 = 0;
      }

      else
      {
        v19 = _Block_copy(v18);
      }

      v20 = a1[3];
      *buf = MEMORY[0x29EDCA5F8];
      v32.__r_.__value_.__r.__words[0] = 1174405120;
      v32.__r_.__value_.__l.__size_ = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEclIJS5_EEEvDpT__block_invoke_0;
      v32.__r_.__value_.__r.__words[2] = &__block_descriptor_tmp_65;
      if (v19)
      {
        v33 = _Block_copy(v19);
        v34 = v17;
        if (!v17)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v33 = 0;
        v34 = v17;
        if (!v17)
        {
LABEL_37:
          dispatch_async(v20, buf);
          if (v34)
          {
            CFRelease(v34);
          }

          if (v33)
          {
            _Block_release(v33);
          }

          if (v19)
          {
            _Block_release(v19);
          }

          if (!v17)
          {
            goto LABEL_46;
          }

          CFRelease(v17);
          goto LABEL_45;
        }
      }

      CFRetain(v17);
      goto LABEL_37;
    }

    if (v17)
    {
LABEL_45:
      CFRelease(v17);
    }
  }

LABEL_46:
  if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
  }

LABEL_48:
  mipc::sys::Set_Md_Log_Filter_Cnf::~Set_Md_Log_Filter_Cnf(v24);
  v21 = *MEMORY[0x29EDCA608];
}

void sub_296EAE8A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t _ZNKSt3__110__function6__funcIZNO3abb6router9SendProxy8callbackIZZN5trace17MipcCommandDriver18sendCustomizedMaskENS_6vectorIhNS_9allocatorIhEEEEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEEUb_E3__5EEOS4_OT_EUlRKNS3_7MessageEE_NS9_IST_EEFvSS_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNO3abb6router9SendProxy8callbackIZZN5trace17MipcCommandDriver18sendCustomizedMaskENSt3__16vectorIhNS5_9allocatorIhEEEEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEEUb_E3$_5EEOS1_OT_EUlRKNS0_7MessageEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNO3abb6router9SendProxy8callbackIZZN5trace17MipcCommandDriver18sendCustomizedMaskENSt3__16vectorIhNS5_9allocatorIhEEEEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEEUb_E3$_5EEOS1_OT_EUlRKNS0_7MessageEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNO3abb6router9SendProxy8callbackIZZN5trace17MipcCommandDriver18sendCustomizedMaskENSt3__16vectorIhNS5_9allocatorIhEEEEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEEUb_E3$_5EEOS1_OT_EUlRKNS0_7MessageEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNO3abb6router9SendProxy8callbackIZZN5trace17MipcCommandDriver18sendCustomizedMaskENSt3__16vectorIhNS5_9allocatorIhEEEEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEEUb_E3$_5EEOS1_OT_EUlRKNS0_7MessageEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void *_ZZNO3abb6router9SendProxy8callbackIZZN5trace17MipcCommandDriver10getLogModeEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS3_7LogModeEEEEEUb0_E3__6EEOS1_OT_ENUlRKNS0_7MessageEE_D1Ev(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    _Block_release(v4);
  }

  return a1;
}

void *_ZNSt3__110__function6__funcIZNO3abb6router9SendProxy8callbackIZZN5trace17MipcCommandDriver10getLogModeEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS6_7LogModeEEEEEUb0_E3__6EEOS4_OT_EUlRKNS3_7MessageEE_NS_9allocatorISQ_EEFvSP_EED1Ev(void *a1)
{
  *a1 = &unk_2A1E146E8;
  v2 = a1[5];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = a1[2];
  if (v4)
  {
    _Block_release(v4);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZNO3abb6router9SendProxy8callbackIZZN5trace17MipcCommandDriver10getLogModeEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS6_7LogModeEEEEEUb0_E3__6EEOS4_OT_EUlRKNS3_7MessageEE_NS_9allocatorISQ_EEFvSP_EED0Ev(void *__p)
{
  *__p = &unk_2A1E146E8;
  v2 = __p[5];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = __p[3];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = __p[2];
  if (v4)
  {
    _Block_release(v4);
  }

  operator delete(__p);
}

void *_ZNKSt3__110__function6__funcIZNO3abb6router9SendProxy8callbackIZZN5trace17MipcCommandDriver10getLogModeEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS6_7LogModeEEEEEUb0_E3__6EEOS4_OT_EUlRKNS3_7MessageEE_NS_9allocatorISQ_EEFvSP_EE7__cloneEv(void *a1)
{
  v2 = operator new(0x30uLL);
  v4 = a1[1];
  v3 = a1[2];
  *v2 = &unk_2A1E146E8;
  v2[1] = v4;
  if (v3)
  {
    v3 = _Block_copy(v3);
  }

  v5 = a1[3];
  v2[2] = v3;
  v2[3] = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  v6 = a1[5];
  v2[4] = a1[4];
  v2[5] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
  }

  return v2;
}

void _ZNKSt3__110__function6__funcIZNO3abb6router9SendProxy8callbackIZZN5trace17MipcCommandDriver10getLogModeEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS6_7LogModeEEEEEUb0_E3__6EEOS4_OT_EUlRKNS3_7MessageEE_NS_9allocatorISQ_EEFvSP_EE7__cloneEPNS0_6__baseIST_EE(void *a1, void *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  *a2 = &unk_2A1E146E8;
  a2[1] = v5;
  if (v4)
  {
    v4 = _Block_copy(v4);
  }

  v6 = a1[3];
  a2[2] = v4;
  a2[3] = v6;
  if (v6)
  {
    dispatch_retain(v6);
  }

  v7 = a1[5];
  a2[4] = a1[4];
  a2[5] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 16), 1uLL, memory_order_relaxed);
  }
}

void _ZNSt3__110__function6__funcIZNO3abb6router9SendProxy8callbackIZZN5trace17MipcCommandDriver10getLogModeEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS6_7LogModeEEEEEUb0_E3__6EEOS4_OT_EUlRKNS3_7MessageEE_NS_9allocatorISQ_EEFvSP_EE7destroyEv(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = a1[2];
  if (v4)
  {
    _Block_release(v4);
  }
}

void _ZNSt3__110__function6__funcIZNO3abb6router9SendProxy8callbackIZZN5trace17MipcCommandDriver10getLogModeEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS6_7LogModeEEEEEUb0_E3__6EEOS4_OT_EUlRKNS3_7MessageEE_NS_9allocatorISQ_EEFvSP_EE18destroy_deallocateEv(void *__p)
{
  v2 = __p[5];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = __p[3];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = __p[2];
  if (v4)
  {
    _Block_release(v4);
  }

  operator delete(__p);
}

void _ZNSt3__110__function6__funcIZNO3abb6router9SendProxy8callbackIZZN5trace17MipcCommandDriver10getLogModeEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS6_7LogModeEEEEEUb0_E3__6EEOS4_OT_EUlRKNS3_7MessageEE_NS_9allocatorISQ_EEFvSP_EEclESP_(void *a1, abb::router::Message *this)
{
  v61 = *MEMORY[0x29EDCA608];
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v46[4] = v4;
  v47 = v4;
  v46[2] = v4;
  v46[3] = v4;
  v46[0] = v4;
  v46[1] = v4;
  if (abb::router::Message::isError(this))
  {
    abb::router::Message::getError(__p, this);
    if ((__p[16] & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    *v54 = *__p;
    v6 = mipc::toErrorCode(*__p, v5);
    std::error_code::message((&buf + 8), v54);
    v58 = 0;
    v59 = 0;
    *&buf = v6;
    MEMORY[0x29C266B50](v46, &buf, 1);
    v7 = v59;
    if (v59 && !atomic_fetch_add(v59 + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
      if ((SHIBYTE(v57) & 0x80000000) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_6;
    }

    if (SHIBYTE(v57) < 0)
    {
LABEL_6:
      operator delete(*(&buf + 1));
    }
  }

  else
  {
    abb::router::Message::getRawMsg(&buf, this);
    v8 = *buf;
    abb::router::Message::getRawMsg(__p, this);
    MEMORY[0x29C266B60](v46, v8, *(*__p + 8) - **__p);
    v9 = *&__p[8];
    if (*&__p[8] && !atomic_fetch_add((*&__p[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
    }

    v10 = *(&buf + 1);
    if (*(&buf + 1) && !atomic_fetch_add((*(&buf + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
    }
  }

LABEL_14:
  v11 = a1[5];
  if (!v11)
  {
    goto LABEL_110;
  }

  v12 = a1[1];
  v13 = std::__shared_weak_count::lock(v11);
  v53 = v13;
  if (!v13)
  {
    goto LABEL_110;
  }

  v14 = v13;
  if (!a1[4])
  {
    goto LABEL_108;
  }

  v15 = *(v12 + 40);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_296E3E000, v15, OS_LOG_TYPE_DEFAULT, "#I Received get log mode confirmation", &buf, 2u);
  }

  v51 = 0;
  if ((mipc::operator==() & 1) == 0)
  {
    v20 = *(v12 + 40);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      mipc::ResponseMessage::getError(v46, &buf);
      v36 = mipc::asString();
      mipc::ResponseMessage::getError(v46, __p);
      v37 = &__p[8];
      if (v50 < 0)
      {
        v37 = *&__p[8];
      }

      *v54 = 136315394;
      *&v54[4] = v36;
      *&v54[12] = 2080;
      *&v54[14] = v37;
      _os_log_error_impl(&dword_296E3E000, v20, OS_LOG_TYPE_ERROR, "get log mode failed: %s (%s)", v54, 0x16u);
      mipc::Error::~Error(__p);
      mipc::Error::~Error(&buf);
    }

    v49 = 19;
    strcpy(__p, "get log mode failed");
    CreateError();
    v21 = buf;
    v51 = buf;
    *&buf = 0;
    if (v49 < 0)
    {
      operator delete(*__p);
    }

    v22 = 3;
    v23 = a1[2];
    if (v23)
    {
      goto LABEL_84;
    }

    goto LABEL_88;
  }

  v16 = **(&v47 + 1);
  v17 = *(&xmmword_2A18B7E38 + 1);
  if (*(&xmmword_2A18B7E38 + 1))
  {
    v18 = vcnt_s8(*(&xmmword_2A18B7E38 + 8));
    v18.i16[0] = vaddlv_u8(v18);
    if (v18.u32[0] > 1uLL)
    {
      v19 = **(&v47 + 1);
      if (*(&xmmword_2A18B7E38 + 1) <= v16)
      {
        v19 = v16 % DWORD2(xmmword_2A18B7E38);
      }
    }

    else
    {
      v19 = (DWORD2(xmmword_2A18B7E38) - 1) & v16;
    }

    v24 = *(xmmword_2A18B7E38 + 8 * v19);
    if (v24)
    {
      v25 = *v24;
      if (*v24)
      {
        if (v18.u32[0] < 2uLL)
        {
          while (1)
          {
            v27 = *(v25 + 1);
            if (v27 == v16)
            {
              if (*(v25 + 4) == v16)
              {
                goto LABEL_81;
              }
            }

            else if ((v27 & (*(&xmmword_2A18B7E38 + 1) - 1)) != v19)
            {
              goto LABEL_46;
            }

            v25 = *v25;
            if (!v25)
            {
              goto LABEL_46;
            }
          }
        }

        do
        {
          v26 = *(v25 + 1);
          if (v26 == v16)
          {
            if (*(v25 + 4) == v16)
            {
              goto LABEL_81;
            }
          }

          else
          {
            if (v26 >= *(&xmmword_2A18B7E38 + 1))
            {
              v26 %= *(&xmmword_2A18B7E38 + 1);
            }

            if (v26 != v19)
            {
              break;
            }
          }

          v25 = *v25;
        }

        while (v25);
      }
    }
  }

  else
  {
    v19 = 0xAAAAAAAAAAAAAAAALL;
  }

LABEL_46:
  v25 = operator new(0x18uLL);
  *v25 = 0;
  *(v25 + 1) = v16;
  *(v25 + 4) = v16;
  *(v25 + 5) = 0;
  v28 = (qword_2A18B7E50 + 1);
  if (v17 && (*&dword_2A18B7E58 * v17) >= v28)
  {
    v16 = v19;
  }

  else
  {
    v29 = 1;
    if (v17 >= 3)
    {
      v29 = (v17 & (v17 - 1)) != 0;
    }

    v30 = v29 | (2 * v17);
    v31 = vcvtps_u32_f32(v28 / *&dword_2A18B7E58);
    if (v30 <= v31)
    {
      prime = v31;
    }

    else
    {
      prime = v30;
    }

    if (prime == 1)
    {
      prime = 2;
    }

    else if ((prime & (prime - 1)) != 0)
    {
      prime = std::__next_prime(prime);
      v17 = *(&xmmword_2A18B7E38 + 1);
    }

    if (prime > v17)
    {
      goto LABEL_59;
    }

    if (prime < v17)
    {
      v33 = vcvtps_u32_f32(qword_2A18B7E50 / *&dword_2A18B7E58);
      if (v17 < 3 || (v34 = vcnt_s8(v17), v34.i16[0] = vaddlv_u8(v34), v34.u32[0] > 1uLL))
      {
        v33 = std::__next_prime(v33);
      }

      else
      {
        v35 = 1 << -__clz(v33 - 1);
        if (v33 >= 2)
        {
          v33 = v35;
        }
      }

      if (prime <= v33)
      {
        prime = v33;
      }

      if (prime < v17)
      {
LABEL_59:
        std::__hash_table<std::__hash_value_type<trace::LogMode,mipc::mipc_log_mode_const_enum>,std::__unordered_map_hasher<trace::LogMode,std::__hash_value_type<trace::LogMode,mipc::mipc_log_mode_const_enum>,std::hash<trace::LogMode>,std::equal_to<trace::LogMode>,true>,std::__unordered_map_equal<trace::LogMode,std::__hash_value_type<trace::LogMode,mipc::mipc_log_mode_const_enum>,std::equal_to<trace::LogMode>,std::hash<trace::LogMode>,true>,std::allocator<std::__hash_value_type<trace::LogMode,mipc::mipc_log_mode_const_enum>>>::__do_rehash<true>(&xmmword_2A18B7E38, prime);
      }
    }

    v17 = *(&xmmword_2A18B7E38 + 1);
    if ((v17 & (v17 - 1)) != 0)
    {
      if (*(&xmmword_2A18B7E38 + 1) <= v16)
      {
        v16 %= *(&xmmword_2A18B7E38 + 1);
      }
    }

    else
    {
      v16 = (DWORD2(xmmword_2A18B7E38) - 1) & v16;
    }
  }

  v38 = xmmword_2A18B7E38;
  v39 = *(xmmword_2A18B7E38 + 8 * v16);
  if (v39)
  {
    *v25 = *v39;
  }

  else
  {
    *v25 = qword_2A18B7E48;
    qword_2A18B7E48 = v25;
    *(v38 + 8 * v16) = &qword_2A18B7E48;
    if (!*v25)
    {
      goto LABEL_80;
    }

    v43 = *(*v25 + 8);
    if ((v17 & (v17 - 1)) != 0)
    {
      if (v43 >= v17)
      {
        v43 %= v17;
      }

      v39 = (v38 + 8 * v43);
    }

    else
    {
      v39 = (v38 + 8 * (v43 & (v17 - 1)));
    }
  }

  *v39 = v25;
LABEL_80:
  ++qword_2A18B7E50;
LABEL_81:
  v22 = *(v25 + 5);
  v40 = *(v12 + 40);
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    v41 = trace::toString();
    LODWORD(buf) = 136315138;
    *(&buf + 4) = v41;
    _os_log_impl(&dword_296E3E000, v40, OS_LOG_TYPE_DEFAULT, "#I Current bb log mode %s", &buf, 0xCu);
  }

  v21 = 0;
  v23 = a1[2];
  if (v23)
  {
LABEL_84:
    if (a1[3])
    {
      if (v21 && (CFRetain(v21), (v23 = a1[2]) == 0))
      {
        v42 = 0;
      }

      else
      {
        v42 = _Block_copy(v23);
      }

      v44 = a1[3];
      *&buf = MEMORY[0x29EDCA5F8];
      *(&buf + 1) = 1174405120;
      v56 = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEN5trace7LogModeEEEclIJS5_S7_EEEvDpT__block_invoke;
      v57 = &__block_descriptor_tmp_70;
      if (v42)
      {
        v58 = _Block_copy(v42);
        v59 = v21;
        if (!v21)
        {
          goto LABEL_99;
        }
      }

      else
      {
        v58 = 0;
        v59 = v21;
        if (!v21)
        {
LABEL_99:
          v60 = v22;
          dispatch_async(v44, &buf);
          if (v59)
          {
            CFRelease(v59);
          }

          if (v58)
          {
            _Block_release(v58);
          }

          if (v42)
          {
            _Block_release(v42);
          }

          if (!v21)
          {
            goto LABEL_108;
          }

          CFRelease(v21);
          goto LABEL_107;
        }
      }

      CFRetain(v21);
      goto LABEL_99;
    }
  }

LABEL_88:
  if (v21)
  {
LABEL_107:
    CFRelease(v21);
  }

LABEL_108:
  if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
  }

LABEL_110:
  mipc::sys::Get_Md_Log_Mode_Cnf::~Get_Md_Log_Mode_Cnf(v46);
  v45 = *MEMORY[0x29EDCA608];
}

void sub_296EAF4B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, const void *a31, __int16 a32, char a33, char a34)
{
  operator delete(v34);
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(&a31);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a32);
  mipc::sys::Get_Md_Log_Mode_Cnf::~Get_Md_Log_Mode_Cnf(&a9);
  _Unwind_Resume(a1);
}

void sub_296EAF568(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v13 - 160);
  _Unwind_Resume(a1);
}

uint64_t _ZNKSt3__110__function6__funcIZNO3abb6router9SendProxy8callbackIZZN5trace17MipcCommandDriver10getLogModeEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS6_7LogModeEEEEEUb0_E3__6EEOS4_OT_EUlRKNS3_7MessageEE_NS_9allocatorISQ_EEFvSP_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNO3abb6router9SendProxy8callbackIZZN5trace17MipcCommandDriver10getLogModeEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS3_7LogModeEEEEEUb0_E3$_6EEOS1_OT_EUlRKNS0_7MessageEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNO3abb6router9SendProxy8callbackIZZN5trace17MipcCommandDriver10getLogModeEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS3_7LogModeEEEEEUb0_E3$_6EEOS1_OT_EUlRKNS0_7MessageEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNO3abb6router9SendProxy8callbackIZZN5trace17MipcCommandDriver10getLogModeEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS3_7LogModeEEEEEUb0_E3$_6EEOS1_OT_EUlRKNS0_7MessageEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNO3abb6router9SendProxy8callbackIZZN5trace17MipcCommandDriver10getLogModeEN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEENS3_7LogModeEEEEEUb0_E3$_6EEOS1_OT_EUlRKNS0_7MessageEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEN5trace7LogModeEEEclIJS5_S7_EEEvDpT__block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  cf = v2;
  if (v2)
  {
    CFRetain(v2);
  }

  (*(v3 + 16))(v3, &cf, *(a1 + 48));
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_296EAF680(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

CFTypeRef __copy_helper_block_e8_32c92_ZTSN8dispatch5blockIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEN5trace7LogModeEEEE40c38_ZTSN3ctu2cf11CFSharedRefI9__CFErrorEE(uint64_t a1, uint64_t a2)
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

void __destroy_helper_block_e8_32c92_ZTSN8dispatch5blockIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEN5trace7LogModeEEEE40c38_ZTSN3ctu2cf11CFSharedRefI9__CFErrorEE(uint64_t a1)
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

void dispatch::async<void ctu::SharedSynchronizable<trace::CommandDriver>::execute_wrapped<trace::MipcCommandDriver::setFlushTimer(unsigned int,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0>(trace::MipcCommandDriver::setFlushTimer(unsigned int,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<trace::MipcCommandDriver::setFlushTimer(unsigned int,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0,dispatch_queue_s *::default_delete<trace::MipcCommandDriver::setFlushTimer(unsigned int,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v53 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  v31 = *a1;
  v2 = *(*a1 + 8);
  if (!v2)
  {
    goto LABEL_21;
  }

  v3 = v1[5];
  v4 = std::__shared_weak_count::lock(v2);
  if (!v4)
  {
    goto LABEL_21;
  }

  v5 = *v1;
  if (atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (v5)
    {
      goto LABEL_5;
    }

LABEL_21:
    v22 = v31;
    if (!v31)
    {
      goto LABEL_29;
    }

    goto LABEL_22;
  }

  v21 = v4;
  (v4->__on_zero_shared)();
  std::__shared_weak_count::__release_weak(v21);
  if (!v5)
  {
    goto LABEL_21;
  }

LABEL_5:
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v36[4] = v6;
  *__p = v6;
  v36[2] = v6;
  v36[3] = v6;
  v36[0] = v6;
  v36[1] = v6;
  mipc::sys::Set_Md_Log_Flush_Interval_Req::Set_Md_Log_Flush_Interval_Req();
  v7 = operator new(4uLL);
  *v7 = *(v1 + 8);
  v8 = __p[1];
  __p[1] = v7;
  if (v8)
  {
    operator delete(v8);
  }

  v9 = *(v3 + 40);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(v1 + 8);
    *buf = 67109120;
    v50 = v10;
    _os_log_impl(&dword_296E3E000, v9, OS_LOG_TYPE_DEFAULT, "#I Sending mipc message to set timer %x", buf, 8u);
  }

  v48 = 0xAAAAAAAAAAAAAAAALL;
  *&v11 = 0xAAAAAAAAAAAAAAAALL;
  *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v47[16] = v11;
  *&v47[32] = v11;
  *v47 = v11;
  mipc::sys::Set_Md_Log_Flush_Interval_Req::serialize(v47, v36);
  if (v48)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Serialization error");
    exception->__vftable = (MEMORY[0x29EDC95F0] + 16);
    __cxa_throw(exception, off_29EE5C750, MEMORY[0x29EDC9360]);
  }

  v46 = 0xAAAAAAAAAAAAAAAALL;
  *&v12 = 0xAAAAAAAAAAAAAAAALL;
  *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v44 = v12;
  v45 = v12;
  v42 = v12;
  v43 = v12;
  v40 = v12;
  v41 = v12;
  v38 = v12;
  v39 = v12;
  MEMORY[0x29C266720](&v38, v47);
  abb::router::SendProxy::SendProxy(buf, (v3 + 48), &v38);
  MEMORY[0x29C266730](&v38);
  if (v48 != -1)
  {
    *&v38 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_6vectorIhNS_9allocatorIhEEEEN4mipc5ErrorEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSF_1EJSB_SD_EEEEEEDcSH_DpT0_;
    *(&v38 + 1) = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_6vectorIhNS_9allocatorIhEEEEN4mipc5ErrorEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSF_1EJSB_SD_EEEEEEDcSH_DpT0_;
    (*(&v38 + v48))(&v32, v47);
  }

  v13 = abb::router::SendProxy::queuePolicy();
  v32 = v3;
  v14 = v1[2];
  if (v14)
  {
    v15 = _Block_copy(v14);
    v16 = v1[3];
    if (!v16)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v15 = 0;
  v16 = v1[3];
  if (v16)
  {
LABEL_14:
    dispatch_retain(v16);
  }

LABEL_15:
  v18 = *v1;
  v17 = v1[1];
  if (v17)
  {
    atomic_fetch_add_explicit((v17 + 16), 1uLL, memory_order_relaxed);
  }

  v19 = *(v1 + 8);
  v35 = v19;
  *v47 = v3;
  v33 = 0u;
  v34 = 0u;
  *&v47[40] = v19;
  *&v38 = v3;
  *(&v38 + 1) = v15;
  memset(&v47[8], 0, 32);
  *&v39 = v16;
  *(&v39 + 1) = v18;
  *&v40 = v17;
  DWORD2(v40) = v19;
  v20 = operator new(0x38uLL);
  *v20 = &unk_2A1E14798;
  v20[1] = v3;
  v20[2] = v15;
  v20[3] = v16;
  v20[4] = v18;
  v20[5] = v17;
  *(v20 + 12) = v19;
  v52 = v20;
  std::__function::__value_func<void ()(abb::router::Message const&)>::swap[abi:ne200100](v51, (v13 + 152));
  if (v52 == v51)
  {
    (*(*v52 + 32))(v52);
  }

  else if (v52)
  {
    (*(*v52 + 40))(v52);
  }

  MEMORY[0x29C266750](buf);
  mipc::sys::Set_Md_Log_Flush_Interval_Req::~Set_Md_Log_Flush_Interval_Req(v36);
  v22 = v31;
  if (v31)
  {
LABEL_22:
    v23 = v22[3];
    if (v23)
    {
      dispatch_release(v23);
    }

    v24 = v22[2];
    if (v24)
    {
      _Block_release(v24);
    }

    v25 = v22[1];
    if (v25)
    {
      std::__shared_weak_count::__release_weak(v25);
    }

    operator delete(v22);
  }

LABEL_29:
  v26 = a1;
  if (a1)
  {
    v27 = a1[2];
    if (v27 && !atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v27->__on_zero_shared)(v27);
      std::__shared_weak_count::__release_weak(v27);
      v26 = a1;
    }

    operator delete(v26);
  }

  v28 = *MEMORY[0x29EDCA608];
}

void sub_296EAFB7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  std::variant<std::vector<unsigned char>,mipc::Error>::~variant[abi:ne200100](&a47);
  mipc::sys::Set_Md_Log_Flush_Interval_Req::~Set_Md_Log_Flush_Interval_Req(&a17);
  std::unique_ptr<trace::MipcCommandDriver::setFlushTimer(unsigned int,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0,std::default_delete<trace::MipcCommandDriver::setFlushTimer(unsigned int,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<awd::AwdCommandDriver>::execute_wrapped<awd::MipcCommandDriver::sendEnableMetricSubmission(std::shared_ptr<awd::AppContext>,BOOL,dispatch::block<void({block_pointer})(BOOL)>)::$_0>(awd::MipcCommandDriver::sendEnableMetricSubmission(std::shared_ptr<awd::AppContext>,BOOL,dispatch::block<void({block_pointer})(BOOL)>)::$_0 &&)::{lambda(void)#1},std::default_delete<awd::MipcCommandDriver::sendEnableMetricSubmission(std::shared_ptr<awd::AppContext>,BOOL,dispatch::block<void({block_pointer})(BOOL)>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void **std::unique_ptr<trace::MipcCommandDriver::setFlushTimer(unsigned int,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0,std::default_delete<trace::MipcCommandDriver::setFlushTimer(unsigned int,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0>>::~unique_ptr[abi:ne200100](void **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = v2[3];
    if (v3)
    {
      dispatch_release(v3);
    }

    v4 = v2[2];
    if (v4)
    {
      _Block_release(v4);
    }

    v5 = v2[1];
    if (v5)
    {
      std::__shared_weak_count::__release_weak(v5);
    }

    operator delete(v2);
  }

  return a1;
}

void *trace::MipcCommandDriver::setFlushTimer(unsigned int,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0::operator() const(void)::{lambda(mipc::sys::Set_Md_Log_Flush_Interval_Cnf &)#1}::~Set_Md_Log_Flush_Interval_Cnf(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    _Block_release(v4);
  }

  return a1;
}

void *abb::router::SendProxy::callback<trace::MipcCommandDriver::setFlushTimer(unsigned int,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0::operator() const(void)::{lambda(mipc::sys::Set_Md_Log_Flush_Interval_Cnf &)#1}>(trace::MipcCommandDriver::setFlushTimer(unsigned int,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0::operator() const(void)::{lambda(mipc::sys::Set_Md_Log_Flush_Interval_Cnf &)#1} &&) &&::{lambda(abb::router::Message const&)#1}::~Message(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    _Block_release(v4);
  }

  return a1;
}

void *std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<trace::MipcCommandDriver::setFlushTimer(unsigned int,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0::operator() const(void)::{lambda(mipc::sys::Set_Md_Log_Flush_Interval_Cnf &)#1}>(trace::MipcCommandDriver::setFlushTimer(unsigned int,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0::operator() const(void)::{lambda(mipc::sys::Set_Md_Log_Flush_Interval_Cnf &)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::~__func(void *a1)
{
  *a1 = &unk_2A1E14798;
  v2 = a1[5];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = a1[2];
  if (v4)
  {
    _Block_release(v4);
  }

  return a1;
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<trace::MipcCommandDriver::setFlushTimer(unsigned int,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0::operator() const(void)::{lambda(mipc::sys::Set_Md_Log_Flush_Interval_Cnf &)#1}>(trace::MipcCommandDriver::setFlushTimer(unsigned int,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0::operator() const(void)::{lambda(mipc::sys::Set_Md_Log_Flush_Interval_Cnf &)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::~__func(void *__p)
{
  *__p = &unk_2A1E14798;
  v2 = __p[5];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = __p[3];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = __p[2];
  if (v4)
  {
    _Block_release(v4);
  }

  operator delete(__p);
}

void *std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<trace::MipcCommandDriver::setFlushTimer(unsigned int,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0::operator() const(void)::{lambda(mipc::sys::Set_Md_Log_Flush_Interval_Cnf &)#1}>(trace::MipcCommandDriver::setFlushTimer(unsigned int,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0::operator() const(void)::{lambda(mipc::sys::Set_Md_Log_Flush_Interval_Cnf &)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(uint64_t a1)
{
  v2 = operator new(0x38uLL);
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  *v2 = &unk_2A1E14798;
  v2[1] = v4;
  if (v3)
  {
    v3 = _Block_copy(v3);
  }

  v5 = *(a1 + 24);
  v2[2] = v3;
  v2[3] = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  v6 = *(a1 + 40);
  v2[4] = *(a1 + 32);
  v2[5] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
  }

  *(v2 + 12) = *(a1 + 48);
  return v2;
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<trace::MipcCommandDriver::setFlushTimer(unsigned int,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0::operator() const(void)::{lambda(mipc::sys::Set_Md_Log_Flush_Interval_Cnf &)#1}>(trace::MipcCommandDriver::setFlushTimer(unsigned int,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0::operator() const(void)::{lambda(mipc::sys::Set_Md_Log_Flush_Interval_Cnf &)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  *a2 = &unk_2A1E14798;
  *(a2 + 8) = v5;
  if (v4)
  {
    v4 = _Block_copy(v4);
  }

  v6 = *(a1 + 24);
  *(a2 + 16) = v4;
  *(a2 + 24) = v6;
  if (v6)
  {
    dispatch_retain(v6);
  }

  v7 = *(a1 + 40);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 40) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 16), 1uLL, memory_order_relaxed);
  }

  *(a2 + 48) = *(a1 + 48);
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<trace::MipcCommandDriver::setFlushTimer(unsigned int,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0::operator() const(void)::{lambda(mipc::sys::Set_Md_Log_Flush_Interval_Cnf &)#1}>(trace::MipcCommandDriver::setFlushTimer(unsigned int,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0::operator() const(void)::{lambda(mipc::sys::Set_Md_Log_Flush_Interval_Cnf &)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::destroy(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = a1[2];
  if (v4)
  {
    _Block_release(v4);
  }
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<trace::MipcCommandDriver::setFlushTimer(unsigned int,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0::operator() const(void)::{lambda(mipc::sys::Set_Md_Log_Flush_Interval_Cnf &)#1}>(trace::MipcCommandDriver::setFlushTimer(unsigned int,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0::operator() const(void)::{lambda(mipc::sys::Set_Md_Log_Flush_Interval_Cnf &)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::destroy_deallocate(void *__p)
{
  v2 = __p[5];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = __p[3];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = __p[2];
  if (v4)
  {
    _Block_release(v4);
  }

  operator delete(__p);
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<trace::MipcCommandDriver::setFlushTimer(unsigned int,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0::operator() const(void)::{lambda(mipc::sys::Set_Md_Log_Flush_Interval_Cnf &)#1}>(trace::MipcCommandDriver::setFlushTimer(unsigned int,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0::operator() const(void)::{lambda(mipc::sys::Set_Md_Log_Flush_Interval_Cnf &)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::operator()(uint64_t a1, abb::router::Message *this)
{
  v45 = *MEMORY[0x29EDCA608];
  v37 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v35 = v4;
  v36 = v4;
  v33 = v4;
  v34 = v4;
  v32 = v4;
  if (abb::router::Message::isError(this))
  {
    abb::router::Message::getError(__p, this);
    if ((__p[16] & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v38 = *__p;
    v6 = mipc::toErrorCode(*__p, v5);
    std::error_code::message(&v42, &v38);
    v43 = 0;
    v44 = 0;
    *buf = v6;
    MEMORY[0x29C266D80](&v32, buf, 1);
    v7 = v44;
    if (v44 && !atomic_fetch_add(v44 + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
      if ((SHIBYTE(v42.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_6;
    }

    if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_6:
      operator delete(v42.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    abb::router::Message::getRawMsg(buf, this);
    v8 = **buf;
    abb::router::Message::getRawMsg(__p, this);
    MEMORY[0x29C266D90](&v32, v8, *(*__p + 8) - **__p);
    v9 = *&__p[8];
    if (*&__p[8] && !atomic_fetch_add((*&__p[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
    }

    v10 = v42.__r_.__value_.__r.__words[0];
    if (v42.__r_.__value_.__r.__words[0] && !atomic_fetch_add((v42.__r_.__value_.__r.__words[0] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
    }
  }

LABEL_14:
  v11 = *(a1 + 40);
  if (!v11)
  {
    goto LABEL_50;
  }

  v12 = *(a1 + 8);
  v13 = std::__shared_weak_count::lock(v11);
  if (!v13)
  {
    goto LABEL_50;
  }

  v21 = *(a1 + 32);
  if (atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (!v21)
    {
      goto LABEL_50;
    }
  }

  else
  {
    v22 = v13;
    (v13->__on_zero_shared)(v13, v14, v15, v16, v17, v18, v19, v20, v32, *(&v32 + 1), v33);
    std::__shared_weak_count::__release_weak(v22);
    if (!v21)
    {
      goto LABEL_50;
    }
  }

  *&v38.__val_ = 0;
  v23 = mipc::operator==();
  v24 = *(v12 + 40);
  if (v23)
  {
    if (os_log_type_enabled(*(v12 + 40), OS_LOG_TYPE_DEFAULT))
    {
      v25 = *(a1 + 48);
      *buf = 67109120;
      *&buf[4] = v25;
      _os_log_impl(&dword_296E3E000, v24, OS_LOG_TYPE_DEFAULT, "#I Succeeded to set timer to %x", buf, 8u);
    }

    v26 = 0;
  }

  else
  {
    if (os_log_type_enabled(*(v12 + 40), OS_LOG_TYPE_ERROR))
    {
      v31 = *(a1 + 48);
      *buf = 67109120;
      *&buf[4] = v31;
      _os_log_error_impl(&dword_296E3E000, v24, OS_LOG_TYPE_ERROR, "Failed to set timer to %x", buf, 8u);
    }

    strcpy(__p, "set flush timer failed");
    v40 = 22;
    CreateError();
    v26 = *buf;
    *&v38.__val_ = *buf;
    *buf = 0;
    if (v40 < 0)
    {
      operator delete(*__p);
    }
  }

  v27 = *(a1 + 16);
  if (!v27 || !*(a1 + 24))
  {
    if (!v26)
    {
      goto LABEL_50;
    }

    goto LABEL_49;
  }

  if (v26 && (CFRetain(v26), (v27 = *(a1 + 16)) == 0))
  {
    v28 = 0;
  }

  else
  {
    v28 = _Block_copy(v27);
  }

  v29 = *(a1 + 24);
  *buf = MEMORY[0x29EDCA5F8];
  v42.__r_.__value_.__r.__words[0] = 1174405120;
  v42.__r_.__value_.__l.__size_ = ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEclIJS5_EEEvDpT__block_invoke_0;
  v42.__r_.__value_.__r.__words[2] = &__block_descriptor_tmp_65;
  if (!v28)
  {
    v43 = 0;
    v44 = v26;
    if (!v26)
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

  v43 = _Block_copy(v28);
  v44 = v26;
  if (v26)
  {
LABEL_40:
    CFRetain(v26);
  }

LABEL_41:
  dispatch_async(v29, buf);
  if (v44)
  {
    CFRelease(v44);
  }

  if (v43)
  {
    _Block_release(v43);
  }

  if (v28)
  {
    _Block_release(v28);
  }

  if (v26)
  {
    CFRelease(v26);
LABEL_49:
    CFRelease(v26);
  }

LABEL_50:
  mipc::sys::Set_Md_Log_Flush_Interval_Cnf::~Set_Md_Log_Flush_Interval_Cnf(&v32);
  v30 = *MEMORY[0x29EDCA608];
}

void sub_296EB0430(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<trace::MipcCommandDriver::setFlushTimer(unsigned int,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0::operator() const(void)::{lambda(mipc::sys::Set_Md_Log_Flush_Interval_Cnf &)#1}>(trace::MipcCommandDriver::setFlushTimer(unsigned int,dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>)::$_0::operator() const(void)::{lambda(mipc::sys::Set_Md_Log_Flush_Interval_Cnf &)#1} &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNO3abb6router9SendProxy8callbackIZZN5trace17MipcCommandDriver13setFlushTimerEjN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEENK3$_0clEvEUlRN4mipc3sys29Set_Md_Log_Flush_Interval_CnfEE_EEOS1_OT_EUlRKNS0_7MessageEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNO3abb6router9SendProxy8callbackIZZN5trace17MipcCommandDriver13setFlushTimerEjN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEENK3$_0clEvEUlRN4mipc3sys29Set_Md_Log_Flush_Interval_CnfEE_EEOS1_OT_EUlRKNS0_7MessageEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNO3abb6router9SendProxy8callbackIZZN5trace17MipcCommandDriver13setFlushTimerEjN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEENK3$_0clEvEUlRN4mipc3sys29Set_Md_Log_Flush_Interval_CnfEE_EEOS1_OT_EUlRKNS0_7MessageEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNO3abb6router9SendProxy8callbackIZZN5trace17MipcCommandDriver13setFlushTimerEjN8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEEENK3$_0clEvEUlRN4mipc3sys29Set_Md_Log_Flush_Interval_CnfEE_EEOS1_OT_EUlRKNS0_7MessageEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t *_GLOBAL__sub_I_MipcTraceCommandDriver_cpp()
{
  v4[1] = *MEMORY[0x29EDCA608];
  v2 = xmmword_296EBEFD0;
  *&v3 = 0x200000002;
  _MergedGlobals_5 = 0u;
  *&qword_2A18B7E20 = 0u;
  dword_2A18B7E30 = 1065353216;
  std::__hash_table<std::__hash_value_type<trace::LogMode,mipc::mipc_log_mode_const_enum>,std::__unordered_map_hasher<trace::LogMode,std::__hash_value_type<trace::LogMode,mipc::mipc_log_mode_const_enum>,std::hash<trace::LogMode>,std::equal_to<trace::LogMode>,true>,std::__unordered_map_equal<trace::LogMode,std::__hash_value_type<trace::LogMode,mipc::mipc_log_mode_const_enum>,std::equal_to<trace::LogMode>,std::hash<trace::LogMode>,true>,std::allocator<std::__hash_value_type<trace::LogMode,mipc::mipc_log_mode_const_enum>>>::__emplace_unique_key_args<trace::LogMode,std::pair<trace::LogMode const,mipc::mipc_log_mode_const_enum> const&>(&_MergedGlobals_5, &v2, &v2);
  std::__hash_table<std::__hash_value_type<trace::LogMode,mipc::mipc_log_mode_const_enum>,std::__unordered_map_hasher<trace::LogMode,std::__hash_value_type<trace::LogMode,mipc::mipc_log_mode_const_enum>,std::hash<trace::LogMode>,std::equal_to<trace::LogMode>,true>,std::__unordered_map_equal<trace::LogMode,std::__hash_value_type<trace::LogMode,mipc::mipc_log_mode_const_enum>,std::equal_to<trace::LogMode>,std::hash<trace::LogMode>,true>,std::allocator<std::__hash_value_type<trace::LogMode,mipc::mipc_log_mode_const_enum>>>::__emplace_unique_key_args<trace::LogMode,std::pair<trace::LogMode const,mipc::mipc_log_mode_const_enum> const&>(&_MergedGlobals_5, &v2 + 2, &v2 + 1);
  std::__hash_table<std::__hash_value_type<trace::LogMode,mipc::mipc_log_mode_const_enum>,std::__unordered_map_hasher<trace::LogMode,std::__hash_value_type<trace::LogMode,mipc::mipc_log_mode_const_enum>,std::hash<trace::LogMode>,std::equal_to<trace::LogMode>,true>,std::__unordered_map_equal<trace::LogMode,std::__hash_value_type<trace::LogMode,mipc::mipc_log_mode_const_enum>,std::equal_to<trace::LogMode>,std::hash<trace::LogMode>,true>,std::allocator<std::__hash_value_type<trace::LogMode,mipc::mipc_log_mode_const_enum>>>::__emplace_unique_key_args<trace::LogMode,std::pair<trace::LogMode const,mipc::mipc_log_mode_const_enum> const&>(&_MergedGlobals_5, &v3, &v3);
  v2 = xmmword_296EBEFE8;
  *&v3 = 0x200000002;
  xmmword_2A18B7E38 = 0u;
  *&qword_2A18B7E48 = 0u;
  dword_2A18B7E58 = 1065353216;
  std::__hash_table<std::__hash_value_type<mipc::mipc_log_mode_const_enum,trace::LogMode>,std::__unordered_map_hasher<mipc::mipc_log_mode_const_enum,std::__hash_value_type<mipc::mipc_log_mode_const_enum,trace::LogMode>,std::hash<mipc::mipc_log_mode_const_enum>,std::equal_to<mipc::mipc_log_mode_const_enum>,true>,std::__unordered_map_equal<mipc::mipc_log_mode_const_enum,std::__hash_value_type<mipc::mipc_log_mode_const_enum,trace::LogMode>,std::equal_to<mipc::mipc_log_mode_const_enum>,std::hash<mipc::mipc_log_mode_const_enum>,true>,std::allocator<std::__hash_value_type<mipc::mipc_log_mode_const_enum,trace::LogMode>>>::__emplace_unique_key_args<mipc::mipc_log_mode_const_enum,std::pair<mipc::mipc_log_mode_const_enum const,trace::LogMode> const&>(&xmmword_2A18B7E38, &v2, &v2);
  std::__hash_table<std::__hash_value_type<mipc::mipc_log_mode_const_enum,trace::LogMode>,std::__unordered_map_hasher<mipc::mipc_log_mode_const_enum,std::__hash_value_type<mipc::mipc_log_mode_const_enum,trace::LogMode>,std::hash<mipc::mipc_log_mode_const_enum>,std::equal_to<mipc::mipc_log_mode_const_enum>,true>,std::__unordered_map_equal<mipc::mipc_log_mode_const_enum,std::__hash_value_type<mipc::mipc_log_mode_const_enum,trace::LogMode>,std::equal_to<mipc::mipc_log_mode_const_enum>,std::hash<mipc::mipc_log_mode_const_enum>,true>,std::allocator<std::__hash_value_type<mipc::mipc_log_mode_const_enum,trace::LogMode>>>::__emplace_unique_key_args<mipc::mipc_log_mode_const_enum,std::pair<mipc::mipc_log_mode_const_enum const,trace::LogMode> const&>(&xmmword_2A18B7E38, &v2 + 2, &v2 + 1);
  std::__hash_table<std::__hash_value_type<mipc::mipc_log_mode_const_enum,trace::LogMode>,std::__unordered_map_hasher<mipc::mipc_log_mode_const_enum,std::__hash_value_type<mipc::mipc_log_mode_const_enum,trace::LogMode>,std::hash<mipc::mipc_log_mode_const_enum>,std::equal_to<mipc::mipc_log_mode_const_enum>,true>,std::__unordered_map_equal<mipc::mipc_log_mode_const_enum,std::__hash_value_type<mipc::mipc_log_mode_const_enum,trace::LogMode>,std::equal_to<mipc::mipc_log_mode_const_enum>,std::hash<mipc::mipc_log_mode_const_enum>,true>,std::allocator<std::__hash_value_type<mipc::mipc_log_mode_const_enum,trace::LogMode>>>::__emplace_unique_key_args<mipc::mipc_log_mode_const_enum,std::pair<mipc::mipc_log_mode_const_enum const,trace::LogMode> const&>(&xmmword_2A18B7E38, &v3, &v3);
  v2 = xmmword_296EBF000;
  v3 = unk_296EBF010;
  v4[0] = 0x400000004;
  xmmword_2A18B7E60 = 0u;
  *&qword_2A18B7E70 = 0u;
  dword_2A18B7E80 = 1065353216;
  std::__hash_table<std::__hash_value_type<trace::LogLevel,mipc::mipc_filter_level_const_enum>,std::__unordered_map_hasher<trace::LogLevel,std::__hash_value_type<trace::LogLevel,mipc::mipc_filter_level_const_enum>,std::hash<trace::LogLevel>,std::equal_to<trace::LogLevel>,true>,std::__unordered_map_equal<trace::LogLevel,std::__hash_value_type<trace::LogLevel,mipc::mipc_filter_level_const_enum>,std::equal_to<trace::LogLevel>,std::hash<trace::LogLevel>,true>,std::allocator<std::__hash_value_type<trace::LogLevel,mipc::mipc_filter_level_const_enum>>>::__emplace_unique_key_args<trace::LogLevel,std::pair<trace::LogLevel const,mipc::mipc_filter_level_const_enum> const&>(&xmmword_2A18B7E60, &v2, &v2);
  std::__hash_table<std::__hash_value_type<trace::LogLevel,mipc::mipc_filter_level_const_enum>,std::__unordered_map_hasher<trace::LogLevel,std::__hash_value_type<trace::LogLevel,mipc::mipc_filter_level_const_enum>,std::hash<trace::LogLevel>,std::equal_to<trace::LogLevel>,true>,std::__unordered_map_equal<trace::LogLevel,std::__hash_value_type<trace::LogLevel,mipc::mipc_filter_level_const_enum>,std::equal_to<trace::LogLevel>,std::hash<trace::LogLevel>,true>,std::allocator<std::__hash_value_type<trace::LogLevel,mipc::mipc_filter_level_const_enum>>>::__emplace_unique_key_args<trace::LogLevel,std::pair<trace::LogLevel const,mipc::mipc_filter_level_const_enum> const&>(&xmmword_2A18B7E60, &v2 + 2, &v2 + 1);
  std::__hash_table<std::__hash_value_type<trace::LogLevel,mipc::mipc_filter_level_const_enum>,std::__unordered_map_hasher<trace::LogLevel,std::__hash_value_type<trace::LogLevel,mipc::mipc_filter_level_const_enum>,std::hash<trace::LogLevel>,std::equal_to<trace::LogLevel>,true>,std::__unordered_map_equal<trace::LogLevel,std::__hash_value_type<trace::LogLevel,mipc::mipc_filter_level_const_enum>,std::equal_to<trace::LogLevel>,std::hash<trace::LogLevel>,true>,std::allocator<std::__hash_value_type<trace::LogLevel,mipc::mipc_filter_level_const_enum>>>::__emplace_unique_key_args<trace::LogLevel,std::pair<trace::LogLevel const,mipc::mipc_filter_level_const_enum> const&>(&xmmword_2A18B7E60, &v3, &v3);
  std::__hash_table<std::__hash_value_type<trace::LogLevel,mipc::mipc_filter_level_const_enum>,std::__unordered_map_hasher<trace::LogLevel,std::__hash_value_type<trace::LogLevel,mipc::mipc_filter_level_const_enum>,std::hash<trace::LogLevel>,std::equal_to<trace::LogLevel>,true>,std::__unordered_map_equal<trace::LogLevel,std::__hash_value_type<trace::LogLevel,mipc::mipc_filter_level_const_enum>,std::equal_to<trace::LogLevel>,std::hash<trace::LogLevel>,true>,std::allocator<std::__hash_value_type<trace::LogLevel,mipc::mipc_filter_level_const_enum>>>::__emplace_unique_key_args<trace::LogLevel,std::pair<trace::LogLevel const,mipc::mipc_filter_level_const_enum> const&>(&xmmword_2A18B7E60, &v3 + 2, &v3 + 1);
  result = std::__hash_table<std::__hash_value_type<trace::LogLevel,mipc::mipc_filter_level_const_enum>,std::__unordered_map_hasher<trace::LogLevel,std::__hash_value_type<trace::LogLevel,mipc::mipc_filter_level_const_enum>,std::hash<trace::LogLevel>,std::equal_to<trace::LogLevel>,true>,std::__unordered_map_equal<trace::LogLevel,std::__hash_value_type<trace::LogLevel,mipc::mipc_filter_level_const_enum>,std::equal_to<trace::LogLevel>,std::hash<trace::LogLevel>,true>,std::allocator<std::__hash_value_type<trace::LogLevel,mipc::mipc_filter_level_const_enum>>>::__emplace_unique_key_args<trace::LogLevel,std::pair<trace::LogLevel const,mipc::mipc_filter_level_const_enum> const&>(&xmmword_2A18B7E60, v4, v4);
  v1 = *MEMORY[0x29EDCA608];
  return result;
}

double MipcCommandDriverFactory::create_default_global@<D0>(void *a1@<X8>)
{
  v3 = operator new(0xA8uLL);
  v3[1] = 0;
  v3[2] = 0;
  *v3 = &unk_2A1E148E8;
  CommandDriverFactory::CommandDriverFactory((v3 + 3));
  v3[3] = &unk_2A1E14818;
  result = 0.0;
  *(v3 + 7) = 0u;
  *(v3 + 8) = 0u;
  *(v3 + 9) = 0u;
  v3[20] = 0;
  *a1 = v5;
  a1[1] = v3;
  return result;
}

void sub_296EB07F8(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void MipcCommandDriverFactory::MipcCommandDriverFactory(MipcCommandDriverFactory *this)
{
  CommandDriverFactory::CommandDriverFactory(this);
  *v1 = &unk_2A1E14818;
  *(v1 + 88) = 0u;
  *(v1 + 104) = 0u;
  *(v1 + 120) = 0u;
  *(v1 + 136) = 0;
}

{
  CommandDriverFactory::CommandDriverFactory(this);
  *v1 = &unk_2A1E14818;
  *(v1 + 88) = 0u;
  *(v1 + 104) = 0u;
  *(v1 + 120) = 0u;
  *(v1 + 136) = 0;
}

void MipcCommandDriverFactory::createRadioCommandDriver(MipcCommandDriverFactory *this@<X0>, _OWORD *a2@<X8>)
{
  v4 = dispatch_workloop_create("radio.wl");
  v5 = *(this + 1);
  v6 = *(this + 2);
  v7[0] = v5;
  v7[1] = v6;
  object = v4;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  radio::MipcCommandDriver::create(&object, v7, &v9);
  *a2 = v9;
  v9 = 0uLL;
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  if (object)
  {
    dispatch_release(object);
  }
}

void sub_296EB097C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  if (v2)
  {
    dispatch_release(v2);
  }

  _Unwind_Resume(a1);
}

void MipcCommandDriverFactory::weakRadioCommandDriver(MipcCommandDriverFactory *this@<X0>, void *a2@<X8>)
{
  v3 = *(this + 11);
  if (!v3)
  {
    v4 = a2;
    std::mutex::lock((this + 24));
    if (!*(this + 11))
    {
      MipcCommandDriverFactory::createRadioCommandDriver(this, &v9);
      v6 = v9;
      v9 = 0uLL;
      v7 = *(this + 12);
      *(this + 88) = v6;
      if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
      }

      v8 = *(&v9 + 1);
      if (*(&v9 + 1) && !atomic_fetch_add((*(&v9 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v8->__on_zero_shared)(v8);
        std::__shared_weak_count::__release_weak(v8);
      }
    }

    std::mutex::unlock((this + 24));
    v3 = *(this + 11);
    a2 = v4;
  }

  v5 = *(this + 12);
  *a2 = v3;
  a2[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
  }
}

void MipcCommandDriverFactory::createRFSCommandDriver(MipcCommandDriverFactory *this@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(this + 2);
  v4[0] = *(this + 1);
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  radio::MipcRFSCommandDriver::create(v4, &v5);
  *a2 = v5;
  v5 = 0uLL;
  if (v3)
  {
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
    }
  }
}

void MipcCommandDriverFactory::weakRFSCommandDriver(MipcCommandDriverFactory *this@<X0>, void *a2@<X8>)
{
  v3 = *(this + 14);
  if (!v3)
  {
    v4 = a2;
    std::mutex::lock((this + 24));
    if (!*(this + 14))
    {
      v6 = *(this + 2);
      v10[0] = *(this + 1);
      v10[1] = v6;
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      radio::MipcRFSCommandDriver::create(v10, &v11);
      v7 = v11;
      v11 = 0uLL;
      if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v9 = v7;
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
        v7 = v9;
      }

      v8 = *(this + 15);
      *(this + 7) = v7;
      if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v8->__on_zero_shared)(v8);
        std::__shared_weak_count::__release_weak(v8);
      }
    }

    std::mutex::unlock((this + 24));
    v3 = *(this + 14);
    a2 = v4;
  }

  v5 = *(this + 15);
  *a2 = v3;
  a2[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
  }
}

void sub_296EB0CD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  std::mutex::unlock((v3 + 24));
  _Unwind_Resume(a1);
}

void MipcCommandDriverFactory::createAntennaCommandDriver(uint64_t a1@<X0>, NSObject **a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = *a2;
  object = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8[0] = v6;
  v8[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  antenna::MipcCommandDriver::create(&object, v8, &v10);
  *a3 = v10;
  v10 = 0uLL;
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  if (object)
  {
    dispatch_release(object);
  }
}

void sub_296EB0DC4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  if (v2)
  {
    dispatch_release(v2);
  }

  _Unwind_Resume(a1);
}

void MipcCommandDriverFactory::createAwdCommandDriver(MipcCommandDriverFactory *this@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(this + 2);
  v4[0] = *(this + 1);
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  awd::MipcCommandDriver::create(v4, &v5);
  *a2 = v5;
  v5 = 0uLL;
  if (v3)
  {
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
    }
  }
}

void MipcCommandDriverFactory::weakDataCommandDriver(MipcCommandDriverFactory *this@<X0>, void *a2@<X8>)
{
  v4 = *(this + 16);
  if (!v4)
  {
    std::mutex::lock((this + 24));
    if (!*(this + 16))
    {
      v6 = *(this + 17);
      *(this + 17) = 0;
      if (v6)
      {
        if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v6->__on_zero_shared)(v6);
          std::__shared_weak_count::__release_weak(v6);
        }
      }
    }

    std::mutex::unlock((this + 24));
    v4 = *(this + 16);
  }

  v5 = *(this + 17);
  *a2 = v4;
  a2[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 16), 1uLL, memory_order_relaxed);
  }
}

void MipcCommandDriverFactory::createCoreDumpCommandDriver(MipcCommandDriverFactory *this@<X0>, _OWORD *a2@<X8>)
{
  v2 = *(this + 2);
  v4[0] = *(this + 1);
  v4[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v3 = coredump::MipcCommandDriver::create(v4, a2);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2, v3);

    std::__shared_weak_count::__release_weak(v2);
  }
}

void MipcCommandDriverFactory::createTraceCommandDriver(MipcCommandDriverFactory *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 2);
  v3[0] = *(this + 1);
  v3[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  trace::MipcCommandDriver::create(v3, a2);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);

    std::__shared_weak_count::__release_weak(v2);
  }
}

void MipcCommandDriverFactory::createWorkoutCommandDriver(MipcCommandDriverFactory *this@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(this + 2);
  v4[0] = *(this + 1);
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  MipcWorkoutCommandDriver::create(v4, &v5);
  *a2 = v5;
  v5 = 0uLL;
  if (v3)
  {
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
    }
  }
}

void std::__shared_ptr_emplace<MipcCommandDriverFactory>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E148E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<MipcCommandDriverFactory>::__on_zero_shared(uint64_t a1)
{
  *(a1 + 24) = &unk_2A1E14818;
  v2 = *(a1 + 160);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 144);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = *(a1 + 128);
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = *(a1 + 120);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    *(a1 + 24) = MEMORY[0x29EDC9138] + 16;
    std::mutex::~mutex((a1 + 48));
    v6 = *(a1 + 40);
    if (!v6)
    {
      return;
    }
  }

  else
  {
    *(a1 + 24) = MEMORY[0x29EDC9138] + 16;
    std::mutex::~mutex((a1 + 48));
    v6 = *(a1 + 40);
    if (!v6)
    {
      return;
    }
  }

  if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);

    std::__shared_weak_count::__release_weak(v6);
  }
}

uint64_t *_GLOBAL__sub_I_MipcCommandDriverFactory_cpp()
{
  v4[1] = *MEMORY[0x29EDCA608];
  v2 = xmmword_296EC0260;
  *&v3 = 0x200000002;
  xmmword_2A18B7E90 = 0u;
  unk_2A18B7EA0 = 0u;
  dword_2A18B7EB0 = 1065353216;
  std::__hash_table<std::__hash_value_type<trace::LogMode,mipc::mipc_log_mode_const_enum>,std::__unordered_map_hasher<trace::LogMode,std::__hash_value_type<trace::LogMode,mipc::mipc_log_mode_const_enum>,std::hash<trace::LogMode>,std::equal_to<trace::LogMode>,true>,std::__unordered_map_equal<trace::LogMode,std::__hash_value_type<trace::LogMode,mipc::mipc_log_mode_const_enum>,std::equal_to<trace::LogMode>,std::hash<trace::LogMode>,true>,std::allocator<std::__hash_value_type<trace::LogMode,mipc::mipc_log_mode_const_enum>>>::__emplace_unique_key_args<trace::LogMode,std::pair<trace::LogMode const,mipc::mipc_log_mode_const_enum> const&>(&xmmword_2A18B7E90, &v2, &v2);
  std::__hash_table<std::__hash_value_type<trace::LogMode,mipc::mipc_log_mode_const_enum>,std::__unordered_map_hasher<trace::LogMode,std::__hash_value_type<trace::LogMode,mipc::mipc_log_mode_const_enum>,std::hash<trace::LogMode>,std::equal_to<trace::LogMode>,true>,std::__unordered_map_equal<trace::LogMode,std::__hash_value_type<trace::LogMode,mipc::mipc_log_mode_const_enum>,std::equal_to<trace::LogMode>,std::hash<trace::LogMode>,true>,std::allocator<std::__hash_value_type<trace::LogMode,mipc::mipc_log_mode_const_enum>>>::__emplace_unique_key_args<trace::LogMode,std::pair<trace::LogMode const,mipc::mipc_log_mode_const_enum> const&>(&xmmword_2A18B7E90, &v2 + 2, &v2 + 1);
  std::__hash_table<std::__hash_value_type<trace::LogMode,mipc::mipc_log_mode_const_enum>,std::__unordered_map_hasher<trace::LogMode,std::__hash_value_type<trace::LogMode,mipc::mipc_log_mode_const_enum>,std::hash<trace::LogMode>,std::equal_to<trace::LogMode>,true>,std::__unordered_map_equal<trace::LogMode,std::__hash_value_type<trace::LogMode,mipc::mipc_log_mode_const_enum>,std::equal_to<trace::LogMode>,std::hash<trace::LogMode>,true>,std::allocator<std::__hash_value_type<trace::LogMode,mipc::mipc_log_mode_const_enum>>>::__emplace_unique_key_args<trace::LogMode,std::pair<trace::LogMode const,mipc::mipc_log_mode_const_enum> const&>(&xmmword_2A18B7E90, &v3, &v3);
  v2 = xmmword_296EC0278;
  *&v3 = 0x200000002;
  xmmword_2A18B7EB8 = 0u;
  unk_2A18B7EC8 = 0u;
  dword_2A18B7ED8 = 1065353216;
  std::__hash_table<std::__hash_value_type<mipc::mipc_log_mode_const_enum,trace::LogMode>,std::__unordered_map_hasher<mipc::mipc_log_mode_const_enum,std::__hash_value_type<mipc::mipc_log_mode_const_enum,trace::LogMode>,std::hash<mipc::mipc_log_mode_const_enum>,std::equal_to<mipc::mipc_log_mode_const_enum>,true>,std::__unordered_map_equal<mipc::mipc_log_mode_const_enum,std::__hash_value_type<mipc::mipc_log_mode_const_enum,trace::LogMode>,std::equal_to<mipc::mipc_log_mode_const_enum>,std::hash<mipc::mipc_log_mode_const_enum>,true>,std::allocator<std::__hash_value_type<mipc::mipc_log_mode_const_enum,trace::LogMode>>>::__emplace_unique_key_args<mipc::mipc_log_mode_const_enum,std::pair<mipc::mipc_log_mode_const_enum const,trace::LogMode> const&>(&xmmword_2A18B7EB8, &v2, &v2);
  std::__hash_table<std::__hash_value_type<mipc::mipc_log_mode_const_enum,trace::LogMode>,std::__unordered_map_hasher<mipc::mipc_log_mode_const_enum,std::__hash_value_type<mipc::mipc_log_mode_const_enum,trace::LogMode>,std::hash<mipc::mipc_log_mode_const_enum>,std::equal_to<mipc::mipc_log_mode_const_enum>,true>,std::__unordered_map_equal<mipc::mipc_log_mode_const_enum,std::__hash_value_type<mipc::mipc_log_mode_const_enum,trace::LogMode>,std::equal_to<mipc::mipc_log_mode_const_enum>,std::hash<mipc::mipc_log_mode_const_enum>,true>,std::allocator<std::__hash_value_type<mipc::mipc_log_mode_const_enum,trace::LogMode>>>::__emplace_unique_key_args<mipc::mipc_log_mode_const_enum,std::pair<mipc::mipc_log_mode_const_enum const,trace::LogMode> const&>(&xmmword_2A18B7EB8, &v2 + 2, &v2 + 1);
  std::__hash_table<std::__hash_value_type<mipc::mipc_log_mode_const_enum,trace::LogMode>,std::__unordered_map_hasher<mipc::mipc_log_mode_const_enum,std::__hash_value_type<mipc::mipc_log_mode_const_enum,trace::LogMode>,std::hash<mipc::mipc_log_mode_const_enum>,std::equal_to<mipc::mipc_log_mode_const_enum>,true>,std::__unordered_map_equal<mipc::mipc_log_mode_const_enum,std::__hash_value_type<mipc::mipc_log_mode_const_enum,trace::LogMode>,std::equal_to<mipc::mipc_log_mode_const_enum>,std::hash<mipc::mipc_log_mode_const_enum>,true>,std::allocator<std::__hash_value_type<mipc::mipc_log_mode_const_enum,trace::LogMode>>>::__emplace_unique_key_args<mipc::mipc_log_mode_const_enum,std::pair<mipc::mipc_log_mode_const_enum const,trace::LogMode> const&>(&xmmword_2A18B7EB8, &v3, &v3);
  v2 = xmmword_296EC0290;
  v3 = unk_296EC02A0;
  v4[0] = 0x400000004;
  xmmword_2A18B7EE0 = 0u;
  *algn_2A18B7EF0 = 0u;
  dword_2A18B7F00 = 1065353216;
  std::__hash_table<std::__hash_value_type<trace::LogLevel,mipc::mipc_filter_level_const_enum>,std::__unordered_map_hasher<trace::LogLevel,std::__hash_value_type<trace::LogLevel,mipc::mipc_filter_level_const_enum>,std::hash<trace::LogLevel>,std::equal_to<trace::LogLevel>,true>,std::__unordered_map_equal<trace::LogLevel,std::__hash_value_type<trace::LogLevel,mipc::mipc_filter_level_const_enum>,std::equal_to<trace::LogLevel>,std::hash<trace::LogLevel>,true>,std::allocator<std::__hash_value_type<trace::LogLevel,mipc::mipc_filter_level_const_enum>>>::__emplace_unique_key_args<trace::LogLevel,std::pair<trace::LogLevel const,mipc::mipc_filter_level_const_enum> const&>(&xmmword_2A18B7EE0, &v2, &v2);
  std::__hash_table<std::__hash_value_type<trace::LogLevel,mipc::mipc_filter_level_const_enum>,std::__unordered_map_hasher<trace::LogLevel,std::__hash_value_type<trace::LogLevel,mipc::mipc_filter_level_const_enum>,std::hash<trace::LogLevel>,std::equal_to<trace::LogLevel>,true>,std::__unordered_map_equal<trace::LogLevel,std::__hash_value_type<trace::LogLevel,mipc::mipc_filter_level_const_enum>,std::equal_to<trace::LogLevel>,std::hash<trace::LogLevel>,true>,std::allocator<std::__hash_value_type<trace::LogLevel,mipc::mipc_filter_level_const_enum>>>::__emplace_unique_key_args<trace::LogLevel,std::pair<trace::LogLevel const,mipc::mipc_filter_level_const_enum> const&>(&xmmword_2A18B7EE0, &v2 + 2, &v2 + 1);
  std::__hash_table<std::__hash_value_type<trace::LogLevel,mipc::mipc_filter_level_const_enum>,std::__unordered_map_hasher<trace::LogLevel,std::__hash_value_type<trace::LogLevel,mipc::mipc_filter_level_const_enum>,std::hash<trace::LogLevel>,std::equal_to<trace::LogLevel>,true>,std::__unordered_map_equal<trace::LogLevel,std::__hash_value_type<trace::LogLevel,mipc::mipc_filter_level_const_enum>,std::equal_to<trace::LogLevel>,std::hash<trace::LogLevel>,true>,std::allocator<std::__hash_value_type<trace::LogLevel,mipc::mipc_filter_level_const_enum>>>::__emplace_unique_key_args<trace::LogLevel,std::pair<trace::LogLevel const,mipc::mipc_filter_level_const_enum> const&>(&xmmword_2A18B7EE0, &v3, &v3);
  std::__hash_table<std::__hash_value_type<trace::LogLevel,mipc::mipc_filter_level_const_enum>,std::__unordered_map_hasher<trace::LogLevel,std::__hash_value_type<trace::LogLevel,mipc::mipc_filter_level_const_enum>,std::hash<trace::LogLevel>,std::equal_to<trace::LogLevel>,true>,std::__unordered_map_equal<trace::LogLevel,std::__hash_value_type<trace::LogLevel,mipc::mipc_filter_level_const_enum>,std::equal_to<trace::LogLevel>,std::hash<trace::LogLevel>,true>,std::allocator<std::__hash_value_type<trace::LogLevel,mipc::mipc_filter_level_const_enum>>>::__emplace_unique_key_args<trace::LogLevel,std::pair<trace::LogLevel const,mipc::mipc_filter_level_const_enum> const&>(&xmmword_2A18B7EE0, &v3 + 2, &v3 + 1);
  result = std::__hash_table<std::__hash_value_type<trace::LogLevel,mipc::mipc_filter_level_const_enum>,std::__unordered_map_hasher<trace::LogLevel,std::__hash_value_type<trace::LogLevel,mipc::mipc_filter_level_const_enum>,std::hash<trace::LogLevel>,std::equal_to<trace::LogLevel>,true>,std::__unordered_map_equal<trace::LogLevel,std::__hash_value_type<trace::LogLevel,mipc::mipc_filter_level_const_enum>,std::equal_to<trace::LogLevel>,std::hash<trace::LogLevel>,true>,std::allocator<std::__hash_value_type<trace::LogLevel,mipc::mipc_filter_level_const_enum>>>::__emplace_unique_key_args<trace::LogLevel,std::pair<trace::LogLevel const,mipc::mipc_filter_level_const_enum> const&>(&xmmword_2A18B7EE0, v4, v4);
  v1 = *MEMORY[0x29EDCA608];
  return result;
}

double coredump::MipcCommandDriver::create@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = operator new(0xA8uLL);
  v5 = v4;
  v6 = a1[1];
  v9 = *a1;
  v10 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  coredump::MipcCommandDriver::MipcCommandDriver(v4, &v9);
  *&v11 = 0xAAAAAAAAAAAAAAAALL;
  *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
  std::shared_ptr<coredump::MipcCommandDriver>::shared_ptr[abi:ne200100]<coredump::MipcCommandDriver,std::shared_ptr<coredump::MipcCommandDriver> ctu::SharedSynchronizable<coredump::CommandDriver>::make_shared_ptr<coredump::MipcCommandDriver>(coredump::MipcCommandDriver*)::{lambda(coredump::MipcCommandDriver*)#1},0>(&v11, v5);
  v7 = v10;
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  (**v11)(v11);
  result = *&v11;
  *a2 = v11;
  return result;
}

void sub_296EB1714(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_296EB173C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a9);
  operator delete(v9);
  _Unwind_Resume(a1);
}

void coredump::MipcCommandDriver::init(coredump::MipcCommandDriver *this)
{
  v3[0] = MEMORY[0x29EDCA5F8];
  v3[1] = 0x40000000;
  v3[2] = ___ZN8coredump17MipcCommandDriver4initEv_block_invoke;
  v3[3] = &__block_descriptor_tmp_5;
  v3[4] = this;
  v4 = v3;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableIN8coredump13CommandDriverEE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS8__block_invoke;
  block[3] = &__block_descriptor_tmp_27;
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

uint64_t ___ZN8coredump17MipcCommandDriver4initEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_296E3E000, v2, OS_LOG_TYPE_DEFAULT, "#I Initializing MIPC coredump command driver", v4, 2u);
  }

  return abb::router::Client::start((v1 + 136));
}

void *coredump::MipcCommandDriver::MipcCommandDriver(void *a1, uint64_t a2)
{
  v68 = *MEMORY[0x29EDCA608];
  v4 = *(a2 + 8);
  v60 = *a2;
  v61 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = &unk_2A1E14A30;
  v5 = a1 + 1;
  ctu::OsLogContext::OsLogContext(&v62, "com.apple.telephony.abm", "coredump.drv");
  v6 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
  v7 = dispatch_queue_create("coredump.drv", v6);
  *v5 = 0;
  a1[2] = 0;
  a1[3] = v7;
  if (v7)
  {
    v8 = v7;
    dispatch_retain(v7);
    a1[4] = 0;
    dispatch_release(v8);
  }

  else
  {
    a1[4] = 0;
  }

  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x29C2667B0](a1 + 5, v56);
  MEMORY[0x29C2667C0](v56);
  ctu::OsLogContext::~OsLogContext(&v62);
  *a1 = &unk_2A1E14A30;
  a1[6] = &unk_2A1E14A78;
  v9 = operator new(0x28uLL);
  v10 = operator new(0x20uLL);
  v62 = &v62;
  v63 = &v62;
  v66 = 0;
  v67 = 0;
  v64 = 0;
  v65 = &v66;
  v11 = operator new(0x40uLL);
  *v11 = v11;
  v11[1] = v11;
  v11[5] = 0;
  v11[4] = 0;
  v11[2] = 0;
  v11[3] = v11 + 4;
  *v10 = v11;
  *(v10 + 1) = 0;
  v12 = operator new(0x18uLL);
  v12[1] = 0x100000001;
  *v12 = &unk_2A1E14AE8;
  v12[2] = v11;
  *(v10 + 1) = v12;
  v13 = operator new(1uLL);
  *(v10 + 3) = 0;
  *(v10 + 2) = v13;
  boost::detail::sp_pointer_construct<boost::signals2::optional_last_value<void>,boost::signals2::optional_last_value<void>>(v13, v10 + 3);
  *v9 = v10;
  v9[1] = 0;
  v14 = operator new(0x18uLL);
  *(v14 + 1) = 0x100000001;
  *v14 = &unk_2A1E14BA8;
  *(v14 + 2) = v10;
  v9[1] = v14;
  std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>>,boost::signals2::mutex>>,void *>>>>::destroy(v66);
  if (v64)
  {
    v15 = v63;
    v16 = *(v62 + 8);
    v17 = *v63;
    *(v17 + 8) = v16;
    *v16 = v17;
    v64 = 0;
    if (v15 != &v62)
    {
      do
      {
        v18 = v15[1];
        v19 = v15[3];
        if (v19)
        {
          if (atomic_fetch_add(v19 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v19 + 16))(v19);
            if (atomic_fetch_add(v19 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v19 + 24))(v19);
            }
          }
        }

        operator delete(v15);
        v15 = v18;
      }

      while (v18 != &v62);
    }
  }

  v9[2] = **v9;
  v20 = operator new(0x40uLL);
  pthread_mutex_init(v20, 0);
  v9[4] = 0;
  v9[3] = v20;
  boost::detail::sp_pointer_construct<boost::signals2::mutex,boost::signals2::mutex>(v20, v9 + 4);
  a1[8] = 0;
  a1[7] = v9;
  v21 = operator new(0x18uLL);
  v21[1] = 0x100000001;
  *v21 = &unk_2A1E14C68;
  v21[2] = v9;
  a1[8] = v21;
  a1[9] = &unk_2A1E14CC8;
  v22 = operator new(0x28uLL);
  v23 = operator new(0x20uLL);
  v62 = &v62;
  v63 = &v62;
  v66 = 0;
  v67 = 0;
  v64 = 0;
  v65 = &v66;
  v24 = operator new(0x40uLL);
  *v24 = v24;
  v24[1] = v24;
  v24[5] = 0;
  v24[4] = 0;
  v24[2] = 0;
  v24[3] = v24 + 4;
  *v23 = v24;
  *(v23 + 1) = 0;
  v25 = operator new(0x18uLL);
  v25[1] = 0x100000001;
  *v25 = &unk_2A1E14D38;
  v25[2] = v24;
  *(v23 + 1) = v25;
  v26 = operator new(1uLL);
  *(v23 + 3) = 0;
  *(v23 + 2) = v26;
  boost::detail::sp_pointer_construct<boost::signals2::optional_last_value<void>,boost::signals2::optional_last_value<void>>(v26, v23 + 3);
  *v22 = v23;
  v22[1] = 0;
  v27 = operator new(0x18uLL);
  *(v27 + 1) = 0x100000001;
  *v27 = &unk_2A1E14D98;
  *(v27 + 2) = v23;
  v22[1] = v27;
  std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>>,boost::signals2::mutex>>,void *>>>>::destroy(v66);
  if (v64)
  {
    v28 = v63;
    v29 = *(v62 + 8);
    v30 = *v63;
    *(v30 + 8) = v29;
    *v29 = v30;
    v64 = 0;
    if (v28 != &v62)
    {
      do
      {
        v31 = v28[1];
        v32 = v28[3];
        if (v32)
        {
          if (atomic_fetch_add(v32 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v32 + 16))(v32);
            if (atomic_fetch_add(v32 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v32 + 24))(v32);
            }
          }
        }

        operator delete(v28);
        v28 = v31;
      }

      while (v31 != &v62);
    }
  }

  v22[2] = **v22;
  v33 = operator new(0x40uLL);
  pthread_mutex_init(v33, 0);
  v22[4] = 0;
  v22[3] = v33;
  boost::detail::sp_pointer_construct<boost::signals2::mutex,boost::signals2::mutex>(v33, v22 + 4);
  a1[11] = 0;
  a1[10] = v22;
  v34 = operator new(0x18uLL);
  v34[1] = 0x100000001;
  *v34 = &unk_2A1E14DF8;
  v34[2] = v22;
  a1[11] = v34;
  a1[12] = &unk_2A1E14E58;
  v35 = operator new(0x28uLL);
  v36 = operator new(0x20uLL);
  v62 = &v62;
  v63 = &v62;
  v66 = 0;
  v67 = 0;
  v64 = 0;
  v65 = &v66;
  v37 = operator new(0x40uLL);
  *v37 = v37;
  v37[1] = v37;
  v37[5] = 0;
  v37[4] = 0;
  v37[2] = 0;
  v37[3] = v37 + 4;
  *v36 = v37;
  *(v36 + 1) = 0;
  v38 = operator new(0x18uLL);
  v38[1] = 0x100000001;
  *v38 = &unk_2A1E14EC8;
  v38[2] = v37;
  *(v36 + 1) = v38;
  v39 = operator new(1uLL);
  *(v36 + 3) = 0;
  *(v36 + 2) = v39;
  boost::detail::sp_pointer_construct<boost::signals2::optional_last_value<void>,boost::signals2::optional_last_value<void>>(v39, v36 + 3);
  *v35 = v36;
  v35[1] = 0;
  v40 = operator new(0x18uLL);
  *(v40 + 1) = 0x100000001;
  *v40 = &unk_2A1E14F28;
  *(v40 + 2) = v36;
  v35[1] = v40;
  std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>>,boost::signals2::mutex>>,void *>>>>::destroy(v66);
  if (v64)
  {
    v41 = v63;
    v42 = *(v62 + 8);
    v43 = *v63;
    *(v43 + 8) = v42;
    *v42 = v43;
    v64 = 0;
    if (v41 != &v62)
    {
      do
      {
        v44 = v41[1];
        v45 = v41[3];
        if (v45)
        {
          if (atomic_fetch_add(v45 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v45 + 16))(v45);
            if (atomic_fetch_add(v45 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v45 + 24))(v45);
            }
          }
        }

        operator delete(v41);
        v41 = v44;
      }

      while (v44 != &v62);
    }
  }

  v35[2] = **v35;
  v46 = operator new(0x40uLL);
  pthread_mutex_init(v46, 0);
  v35[4] = 0;
  v35[3] = v46;
  boost::detail::sp_pointer_construct<boost::signals2::mutex,boost::signals2::mutex>(v46, v35 + 4);
  a1[14] = 0;
  a1[13] = v35;
  v47 = operator new(0x18uLL);
  v47[1] = 0x100000001;
  *v47 = &unk_2A1E14F88;
  v47[2] = v35;
  v48 = v60;
  v49 = v61;
  a1[14] = v47;
  a1[15] = v48;
  a1[16] = v49;
  if (v49)
  {
    atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v49->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v49->__on_zero_shared)(v49);
      std::__shared_weak_count::__release_weak(v49);
    }
  }

  *a1 = &unk_2A1E14938;
  v50 = a1[3];
  object = v50;
  if (v50)
  {
    dispatch_retain(v50);
  }

  Registry::getRouterServer(&v62, *a2);
  v51 = v62;
  if (v62)
  {
    Registry::getRouterServer(v56, *a2);
    abb::router::Server::createLocalLink(&v57, v56[0]);
  }

  else
  {
    v57 = 0;
    v58 = 0;
  }

  MEMORY[0x29C266EF0](a1 + 17, "coredump.drv", &object, &v57);
  v52 = v58;
  if (v51)
  {
    if (v58 && !atomic_fetch_add(&v58->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v52->__on_zero_shared)(v52);
      std::__shared_weak_count::__release_weak(v52);
    }

    v52 = v56[1];
  }

  if (v52 && !atomic_fetch_add(&v52->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v52->__on_zero_shared)(v52);
    std::__shared_weak_count::__release_weak(v52);
  }

  v53 = v63;
  if (v63 && !atomic_fetch_add(v63 + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v53->__on_zero_shared)(v53);
    std::__shared_weak_count::__release_weak(v53);
  }

  if (object)
  {
    dispatch_release(object);
  }

  a1[20] = dispatch_group_create();
  v54 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_296EB2280(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, dispatch_object_t object, uint64_t a16, uint64_t a17, char a18)
{
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a11);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a18);
  if (object)
  {
    dispatch_release(object);
  }

  coredump::CommandDriver::~CommandDriver(v18);
  _Unwind_Resume(a1);
}

void sub_296EB22D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, char a18)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    boost::checked_delete<boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>>(v18);
    __cxa_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void coredump::CommandDriver::~CommandDriver(coredump::CommandDriver *this)
{
  *this = &unk_2A1E14A30;
  v2 = *(this + 16);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    *(this + 12) = &unk_2A1E14E58;
    v3 = *(this + 14);
    if (!v3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    *(this + 12) = &unk_2A1E14E58;
    v3 = *(this + 14);
    if (!v3)
    {
      goto LABEL_8;
    }
  }

  if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v3 + 16))(v3);
    if (atomic_fetch_add(v3 + 3, 0xFFFFFFFF) == 1)
    {
      (*(*v3 + 24))(v3);
    }
  }

LABEL_8:
  *(this + 9) = &unk_2A1E14CC8;
  v4 = *(this + 11);
  if (v4)
  {
    if (atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v4 + 16))(v4);
      if (atomic_fetch_add(v4 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v4 + 24))(v4);
      }
    }
  }

  *(this + 6) = &unk_2A1E14A78;
  v5 = *(this + 8);
  if (v5)
  {
    if (atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v5 + 16))(v5);
      if (atomic_fetch_add(v5 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v5 + 24))(v5);
      }
    }
  }

  MEMORY[0x29C2667C0](this + 40);
  v6 = *(this + 4);
  if (v6)
  {
    dispatch_release(v6);
  }

  v7 = *(this + 3);
  if (v7)
  {
    dispatch_release(v7);
  }

  v8 = *(this + 2);
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }
}

void coredump::MipcCommandDriver::crashBaseband(uint64_t a1)
{
  v40 = *MEMORY[0x29EDCA608];
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v25 = v2;
  v26 = v2;
  v23 = v2;
  v24 = v2;
  v21 = v2;
  v22 = v2;
  v20 = v2;
  mipc::sys::Trigger_Coredump_Req::Trigger_Coredump_Req();
  dispatch_group_enter(*(a1 + 160));
  v28 = 0xAAAAAAAAAAAAAAAALL;
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v27[1] = v3;
  v27[2] = v3;
  v27[0] = v3;
  mipc::sys::Trigger_Coredump_Req::serialize(v27, &v20);
  if (v28)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::logic_error::logic_error(exception, "Serialization error");
    exception->__vftable = (MEMORY[0x29EDC95F0] + 16);
    __cxa_throw(exception, off_29EE5C750, MEMORY[0x29EDC9360]);
  }

  v39 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v37 = v4;
  v38 = v4;
  v35 = v4;
  v36 = v4;
  v33 = v4;
  v34 = v4;
  v31 = v4;
  v32 = v4;
  MEMORY[0x29C266720](&v31, v27);
  abb::router::SendProxy::SendProxy(v30, (a1 + 136), &v31);
  MEMORY[0x29C266730](&v31);
  if (v28 != -1)
  {
    *&v31 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_6vectorIhNS_9allocatorIhEEEEN4mipc5ErrorEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSF_1EJSB_SD_EEEEEEDcSH_DpT0_;
    *(&v31 + 1) = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_6vectorIhNS_9allocatorIhEEEEN4mipc5ErrorEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSF_1EJSB_SD_EEEEEEDcSH_DpT0_;
    (*(&v31 + v28))(&v29, v27);
  }

  v5 = abb::router::SendProxy::timeout();
  v6 = *(a1 + 16);
  if (!v6 || (v7 = *(a1 + 8), (v8 = std::__shared_weak_count::lock(v6)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v9 = v8;
  atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v9);
  }

  v10 = operator new(0x20uLL);
  *v10 = &unk_2A1E15038;
  v10[1] = a1;
  v10[2] = v7;
  v10[3] = v9;
  *(&v32 + 1) = v10;
  std::__function::__value_func<void ()(abb::router::Message const&)>::swap[abi:ne200100](&v31, (v5 + 152));
  if (*(&v32 + 1) == &v31)
  {
    (*(**(&v32 + 1) + 32))(*(&v32 + 1));
  }

  else if (*(&v32 + 1))
  {
    (*(**(&v32 + 1) + 40))(*(&v32 + 1), v11, v12, v13, v14, v15, v16, v17, v20, *(&v20 + 1), v21, *(&v21 + 1), v22, *(&v22 + 1));
  }

  MEMORY[0x29C266750](v30);
  dispatch_group_wait(*(a1 + 160), 0xFFFFFFFFFFFFFFFFLL);
  mipc::sys::Trigger_Coredump_Req::~Trigger_Coredump_Req(&v20);
  v18 = *MEMORY[0x29EDCA608];
}

void sub_296EB2C84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  std::variant<std::vector<unsigned char>,mipc::Error>::~variant[abi:ne200100](&a23);
  mipc::sys::Trigger_Coredump_Req::~Trigger_Coredump_Req(&a9);
  _Unwind_Resume(a1);
}

void coredump::MipcCommandDriver::~MipcCommandDriver(coredump::MipcCommandDriver *this)
{
  *this = &unk_2A1E14938;
  v2 = *(this + 20);
  if (v2)
  {
    dispatch_release(v2);
  }

  *(this + 17) = &unk_2A1E11970;
  v3 = *(this + 19);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    v4 = this;
  }

  else
  {
    v4 = this;
  }

  coredump::CommandDriver::~CommandDriver(v4);
}

{
  *this = &unk_2A1E14938;
  v2 = *(this + 20);
  if (v2)
  {
    dispatch_release(v2);
  }

  *(this + 17) = &unk_2A1E11970;
  v3 = *(this + 19);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    coredump::CommandDriver::~CommandDriver(this);
  }

  else
  {
    coredump::CommandDriver::~CommandDriver(this);
  }

  operator delete(v4);
}

void *boost::signals2::signal<void ()(std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>)>,boost::function<void ()(boost::signals2::connection const&,std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>)>,boost::signals2::mutex>::~signal(void *result)
{
  *result = &unk_2A1E14CC8;
  v1 = result[2];
  if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
    if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 24))(v1);
      return v2;
    }
  }

  return result;
}

{
  *result = &unk_2A1E14CC8;
  v1 = result[2];
  if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
    if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 24))(v1);
      return v2;
    }
  }

  return result;
}

void *boost::signals2::signal<void ()(coredump::CommandDriver::Status),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(coredump::CommandDriver::Status)>,boost::function<void ()(boost::signals2::connection const&,coredump::CommandDriver::Status)>,boost::signals2::mutex>::~signal(void *result)
{
  *result = &unk_2A1E14A78;
  v1 = result[2];
  if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
    if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 24))(v1);
      return v2;
    }
  }

  return result;
}

{
  *result = &unk_2A1E14A78;
  v1 = result[2];
  if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
    if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 24))(v1);
      return v2;
    }
  }

  return result;
}

void boost::signals2::signal<void ()(coredump::CommandDriver::Status),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(coredump::CommandDriver::Status)>,boost::function<void ()(boost::signals2::connection const&,coredump::CommandDriver::Status)>,boost::signals2::mutex>::~signal(void *a1)
{
  *a1 = &unk_2A1E14A78;
  v1 = a1[2];
  if (v1)
  {
    if (atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
    {
      v2 = a1;
      (*(*v1 + 16))(v1);
      a1 = v2;
      if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v1 + 24))(v1);
        a1 = v2;
      }
    }
  }

  operator delete(a1);
}

uint64_t boost::signals2::signal<void ()(coredump::CommandDriver::Status),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(coredump::CommandDriver::Status)>,boost::function<void ()(boost::signals2::connection const&,coredump::CommandDriver::Status)>,boost::signals2::mutex>::lock_pimpl@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  *a2 = *(result + 8);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1u, memory_order_relaxed);
  }

  return result;
}

void boost::checked_delete<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coredump::CommandDriver::Status),boost::function<void ()(coredump::CommandDriver::Status)>>,boost::signals2::mutex>>>>(uint64_t *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>>,boost::signals2::mutex>>,void *>>>>::destroy(a1[4]);
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
          v6 = v2[3];
          if (v6)
          {
            if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v6 + 16))(v6);
              if (atomic_fetch_add(v6 + 3, 0xFFFFFFFF) == 1)
              {
                (*(*v6 + 24))(v6);
              }
            }
          }

          operator delete(v2);
          v2 = v5;
        }

        while (v5 != a1);
      }
    }

    operator delete(a1);
  }
}

void boost::detail::sp_counted_impl_p<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coredump::CommandDriver::Status),boost::function<void ()(coredump::CommandDriver::Status)>>,boost::signals2::mutex>>>>::dispose(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>>,boost::signals2::mutex>>,void *>>>>::destroy(v1[4]);
    if (v1[2])
    {
      v2 = v1[1];
      v3 = *(*v1 + 8);
      v4 = *v2;
      *(v4 + 8) = v3;
      *v3 = v4;
      v1[2] = 0;
      if (v2 != v1)
      {
        do
        {
          v5 = v2[1];
          v6 = v2[3];
          if (v6)
          {
            if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v6 + 16))(v6);
              if (atomic_fetch_add(v6 + 3, 0xFFFFFFFF) == 1)
              {
                (*(*v6 + 24))(v6);
              }
            }
          }

          operator delete(v2);
          v2 = v5;
        }

        while (v5 != v1);
      }
    }

    operator delete(v1);
  }
}

atomic_uint *boost::detail::sp_pointer_construct<boost::signals2::optional_last_value<void>,boost::signals2::optional_last_value<void>>(uint64_t a1, atomic_uint **a2)
{
  result = operator new(0x18uLL);
  *(result + 1) = 0x100000001;
  *result = &unk_2A1E14B48;
  *(result + 2) = a1;
  v5 = *a2;
  *a2 = result;
  if (v5 && atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
  {
    result = (*(*v5 + 16))(v5);
    if (atomic_fetch_add(v5 + 3, 0xFFFFFFFF) == 1)
    {
      return (*(*v5 + 24))(v5);
    }
  }

  return result;
}

void sub_296EB351C(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    operator delete(v1);
  }

  __cxa_rethrow();
}

void boost::detail::sp_counted_impl_p<boost::signals2::optional_last_value<void>>::dispose(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    operator delete(v1);
  }
}

uint64_t boost::shared_ptr<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coredump::CommandDriver::Status),boost::function<void ()(coredump::CommandDriver::Status)>>,boost::signals2::mutex>>>>::~shared_ptr(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
    if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 24))(v1);
      return v2;
    }
  }

  return result;
}

void boost::checked_delete<boost::signals2::detail::signal_impl<void ()(coredump::CommandDriver::Status),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(coredump::CommandDriver::Status)>,boost::function<void ()(boost::signals2::connection const&,coredump::CommandDriver::Status)>,boost::signals2::mutex>::invocation_state>(void *a1)
{
  if (a1)
  {
    v1 = a1[3];
    if (v1)
    {
      if (atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
      {
        v2 = a1;
        (*(*v1 + 16))(v1);
        a1 = v2;
        if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v1 + 24))(v1);
          a1 = v2;
        }
      }
    }

    v3 = a1[1];
    if (v3)
    {
      if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
      {
        v4 = a1;
        (*(*v3 + 16))(v3);
        a1 = v4;
        if (atomic_fetch_add(v3 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v3 + 24))(v3);
          a1 = v4;
        }
      }
    }

    operator delete(a1);
  }
}

void boost::detail::sp_counted_impl_p<boost::signals2::detail::signal_impl<void ()(coredump::CommandDriver::Status),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(coredump::CommandDriver::Status)>,boost::function<void ()(boost::signals2::connection const&,coredump::CommandDriver::Status)>,boost::signals2::mutex>::invocation_state>::dispose(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = v1[3];
    if (v2)
    {
      if (atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v2 + 16))(v2);
        if (atomic_fetch_add(v2 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v2 + 24))(v2);
        }
      }
    }

    v3 = v1[1];
    if (v3)
    {
      if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v3 + 16))(v3);
        if (atomic_fetch_add(v3 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v3 + 24))(v3);
        }
      }
    }

    operator delete(v1);
  }
}

uint64_t *boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coredump::CommandDriver::Status),boost::function<void ()(coredump::CommandDriver::Status)>>,boost::signals2::mutex>>>::~grouped_list(uint64_t *a1)
{
  std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>>,boost::signals2::mutex>>,void *>>>>::destroy(a1[4]);
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
        v6 = v2[3];
        if (v6)
        {
          if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v6 + 16))(v6);
            if (atomic_fetch_add(v6 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v6 + 24))(v6);
            }
          }
        }

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }

  return a1;
}

atomic_uint *boost::detail::sp_pointer_construct<boost::signals2::mutex,boost::signals2::mutex>(uint64_t a1, atomic_uint **a2)
{
  result = operator new(0x18uLL);
  *(result + 1) = 0x100000001;
  *result = &unk_2A1E14C08;
  *(result + 2) = a1;
  v5 = *a2;
  *a2 = result;
  if (v5 && atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
  {
    result = (*(*v5 + 16))(v5);
    if (atomic_fetch_add(v5 + 3, 0xFFFFFFFF) == 1)
    {
      return (*(*v5 + 24))(v5);
    }
  }

  return result;
}

void sub_296EB3ACC(void *a1)
{
  __cxa_begin_catch(a1);
  boost::checked_delete<boost::signals2::mutex>(v1);
  __cxa_rethrow();
}

void boost::checked_delete<boost::signals2::mutex>(pthread_mutex_t *a1)
{
  if (a1)
  {
    pthread_mutex_destroy(a1);

    operator delete(a1);
  }
}

void boost::detail::sp_counted_impl_p<boost::signals2::mutex>::dispose(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    pthread_mutex_destroy(*(a1 + 16));

    operator delete(v1);
  }
}

uint64_t boost::shared_ptr<boost::signals2::detail::signal_impl<void ()(coredump::CommandDriver::Status),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(coredump::CommandDriver::Status)>,boost::function<void ()(boost::signals2::connection const&,coredump::CommandDriver::Status)>,boost::signals2::mutex>::invocation_state>::~shared_ptr(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
    if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 24))(v1);
      return v2;
    }
  }

  return result;
}

void boost::checked_delete<boost::signals2::detail::signal_impl<void ()(coredump::CommandDriver::Status),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(coredump::CommandDriver::Status)>,boost::function<void ()(boost::signals2::connection const&,coredump::CommandDriver::Status)>,boost::signals2::mutex>>(void *a1)
{
  if (a1)
  {
    v1 = a1[4];
    if (v1)
    {
      if (atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
      {
        v2 = a1;
        (*(*v1 + 16))(v1);
        a1 = v2;
        if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v1 + 24))(v1);
          a1 = v2;
        }
      }
    }

    v3 = a1[1];
    if (v3)
    {
      if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
      {
        v4 = a1;
        (*(*v3 + 16))(v3);
        a1 = v4;
        if (atomic_fetch_add(v3 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v3 + 24))(v3);
          a1 = v4;
        }
      }
    }

    operator delete(a1);
  }
}

void boost::detail::sp_counted_impl_p<boost::signals2::detail::signal_impl<void ()(coredump::CommandDriver::Status),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(coredump::CommandDriver::Status)>,boost::function<void ()(boost::signals2::connection const&,coredump::CommandDriver::Status)>,boost::signals2::mutex>>::dispose(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = v1[4];
    if (v2)
    {
      if (atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v2 + 16))(v2);
        if (atomic_fetch_add(v2 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v2 + 24))(v2);
        }
      }
    }

    v3 = v1[1];
    if (v3)
    {
      if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v3 + 16))(v3);
        if (atomic_fetch_add(v3 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v3 + 24))(v3);
        }
      }
    }

    operator delete(v1);
  }
}

void boost::signals2::signal<void ()(std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>)>,boost::function<void ()(boost::signals2::connection const&,std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>)>,boost::signals2::mutex>::~signal(void *a1)
{
  *a1 = &unk_2A1E14CC8;
  v1 = a1[2];
  if (v1)
  {
    if (atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
    {
      v2 = a1;
      (*(*v1 + 16))(v1);
      a1 = v2;
      if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v1 + 24))(v1);
        a1 = v2;
      }
    }
  }

  operator delete(a1);
}

uint64_t boost::signals2::signal<void ()(std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>)>,boost::function<void ()(boost::signals2::connection const&,std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>)>,boost::signals2::mutex>::lock_pimpl@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  *a2 = *(result + 8);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1u, memory_order_relaxed);
  }

  return result;
}

void boost::checked_delete<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>),boost::function<void ()(std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>)>>,boost::signals2::mutex>>>>(uint64_t *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>>,boost::signals2::mutex>>,void *>>>>::destroy(a1[4]);
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
          v6 = v2[3];
          if (v6)
          {
            if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v6 + 16))(v6);
              if (atomic_fetch_add(v6 + 3, 0xFFFFFFFF) == 1)
              {
                (*(*v6 + 24))(v6);
              }
            }
          }

          operator delete(v2);
          v2 = v5;
        }

        while (v5 != a1);
      }
    }

    operator delete(a1);
  }
}

void boost::detail::sp_counted_impl_p<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>),boost::function<void ()(std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>)>>,boost::signals2::mutex>>>>::dispose(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>>,boost::signals2::mutex>>,void *>>>>::destroy(v1[4]);
    if (v1[2])
    {
      v2 = v1[1];
      v3 = *(*v1 + 8);
      v4 = *v2;
      *(v4 + 8) = v3;
      *v3 = v4;
      v1[2] = 0;
      if (v2 != v1)
      {
        do
        {
          v5 = v2[1];
          v6 = v2[3];
          if (v6)
          {
            if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v6 + 16))(v6);
              if (atomic_fetch_add(v6 + 3, 0xFFFFFFFF) == 1)
              {
                (*(*v6 + 24))(v6);
              }
            }
          }

          operator delete(v2);
          v2 = v5;
        }

        while (v5 != v1);
      }
    }

    operator delete(v1);
  }
}

uint64_t boost::shared_ptr<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>),boost::function<void ()(std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>)>>,boost::signals2::mutex>>>>::~shared_ptr(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
    if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 24))(v1);
      return v2;
    }
  }

  return result;
}

void boost::checked_delete<boost::signals2::detail::signal_impl<void ()(std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>)>,boost::function<void ()(boost::signals2::connection const&,std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>)>,boost::signals2::mutex>::invocation_state>(void *a1)
{
  if (a1)
  {
    v1 = a1[3];
    if (v1)
    {
      if (atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
      {
        v2 = a1;
        (*(*v1 + 16))(v1);
        a1 = v2;
        if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v1 + 24))(v1);
          a1 = v2;
        }
      }
    }

    v3 = a1[1];
    if (v3)
    {
      if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
      {
        v4 = a1;
        (*(*v3 + 16))(v3);
        a1 = v4;
        if (atomic_fetch_add(v3 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v3 + 24))(v3);
          a1 = v4;
        }
      }
    }

    operator delete(a1);
  }
}

void boost::detail::sp_counted_impl_p<boost::signals2::detail::signal_impl<void ()(std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>)>,boost::function<void ()(boost::signals2::connection const&,std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>)>,boost::signals2::mutex>::invocation_state>::dispose(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = v1[3];
    if (v2)
    {
      if (atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v2 + 16))(v2);
        if (atomic_fetch_add(v2 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v2 + 24))(v2);
        }
      }
    }

    v3 = v1[1];
    if (v3)
    {
      if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v3 + 16))(v3);
        if (atomic_fetch_add(v3 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v3 + 24))(v3);
        }
      }
    }

    operator delete(v1);
  }
}

uint64_t *boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>),boost::function<void ()(std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>)>>,boost::signals2::mutex>>>::~grouped_list(uint64_t *a1)
{
  std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>>,boost::signals2::mutex>>,void *>>>>::destroy(a1[4]);
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
        v6 = v2[3];
        if (v6)
        {
          if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v6 + 16))(v6);
            if (atomic_fetch_add(v6 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v6 + 24))(v6);
            }
          }
        }

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }

  return a1;
}

uint64_t boost::shared_ptr<boost::signals2::detail::signal_impl<void ()(std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>)>,boost::function<void ()(boost::signals2::connection const&,std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>)>,boost::signals2::mutex>::invocation_state>::~shared_ptr(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
    if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 24))(v1);
      return v2;
    }
  }

  return result;
}

void boost::checked_delete<boost::signals2::detail::signal_impl<void ()(std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>)>,boost::function<void ()(boost::signals2::connection const&,std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>)>,boost::signals2::mutex>>(void *a1)
{
  if (a1)
  {
    v1 = a1[4];
    if (v1)
    {
      if (atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
      {
        v2 = a1;
        (*(*v1 + 16))(v1);
        a1 = v2;
        if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v1 + 24))(v1);
          a1 = v2;
        }
      }
    }

    v3 = a1[1];
    if (v3)
    {
      if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
      {
        v4 = a1;
        (*(*v3 + 16))(v3);
        a1 = v4;
        if (atomic_fetch_add(v3 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v3 + 24))(v3);
          a1 = v4;
        }
      }
    }

    operator delete(a1);
  }
}

void boost::detail::sp_counted_impl_p<boost::signals2::detail::signal_impl<void ()(std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>)>,boost::function<void ()(boost::signals2::connection const&,std::list<coredump::CommandDriver::EURCoreDumpTraceProtocolCrash>)>,boost::signals2::mutex>>::dispose(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = v1[4];
    if (v2)
    {
      if (atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v2 + 16))(v2);
        if (atomic_fetch_add(v2 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v2 + 24))(v2);
        }
      }
    }

    v3 = v1[1];
    if (v3)
    {
      if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v3 + 16))(v3);
        if (atomic_fetch_add(v3 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v3 + 24))(v3);
        }
      }
    }

    operator delete(v1);
  }
}

void *boost::signals2::signal<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::~signal(void *result)
{
  *result = &unk_2A1E14E58;
  v1 = result[2];
  if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
    if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 24))(v1);
      return v2;
    }
  }

  return result;
}

void boost::signals2::signal<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::~signal(void *a1)
{
  *a1 = &unk_2A1E14E58;
  v1 = a1[2];
  if (v1)
  {
    if (atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
    {
      v2 = a1;
      (*(*v1 + 16))(v1);
      a1 = v2;
      if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v1 + 24))(v1);
        a1 = v2;
      }
    }
  }

  operator delete(a1);
}

uint64_t boost::signals2::signal<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::lock_pimpl@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  *a2 = *(result + 8);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1u, memory_order_relaxed);
  }

  return result;
}

void boost::checked_delete<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>>>(uint64_t *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>>,boost::signals2::mutex>>,void *>>>>::destroy(a1[4]);
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
          v6 = v2[3];
          if (v6)
          {
            if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v6 + 16))(v6);
              if (atomic_fetch_add(v6 + 3, 0xFFFFFFFF) == 1)
              {
                (*(*v6 + 24))(v6);
              }
            }
          }

          operator delete(v2);
          v2 = v5;
        }

        while (v5 != a1);
      }
    }

    operator delete(a1);
  }
}

void boost::detail::sp_counted_impl_p<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>>>::dispose(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>>,boost::signals2::mutex>>,void *>>>>::destroy(v1[4]);
    if (v1[2])
    {
      v2 = v1[1];
      v3 = *(*v1 + 8);
      v4 = *v2;
      *(v4 + 8) = v3;
      *v3 = v4;
      v1[2] = 0;
      if (v2 != v1)
      {
        do
        {
          v5 = v2[1];
          v6 = v2[3];
          if (v6)
          {
            if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
            {
              (*(*v6 + 16))(v6);
              if (atomic_fetch_add(v6 + 3, 0xFFFFFFFF) == 1)
              {
                (*(*v6 + 24))(v6);
              }
            }
          }

          operator delete(v2);
          v2 = v5;
        }

        while (v5 != v1);
      }
    }

    operator delete(v1);
  }
}

uint64_t boost::shared_ptr<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>>>::~shared_ptr(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
    if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 24))(v1);
      return v2;
    }
  }

  return result;
}

void boost::checked_delete<boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::invocation_state>(void *a1)
{
  if (a1)
  {
    v1 = a1[3];
    if (v1)
    {
      if (atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
      {
        v2 = a1;
        (*(*v1 + 16))(v1);
        a1 = v2;
        if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v1 + 24))(v1);
          a1 = v2;
        }
      }
    }

    v3 = a1[1];
    if (v3)
    {
      if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
      {
        v4 = a1;
        (*(*v3 + 16))(v3);
        a1 = v4;
        if (atomic_fetch_add(v3 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v3 + 24))(v3);
          a1 = v4;
        }
      }
    }

    operator delete(a1);
  }
}

void boost::detail::sp_counted_impl_p<boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::invocation_state>::dispose(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = v1[3];
    if (v2)
    {
      if (atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v2 + 16))(v2);
        if (atomic_fetch_add(v2 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v2 + 24))(v2);
        }
      }
    }

    v3 = v1[1];
    if (v3)
    {
      if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v3 + 16))(v3);
        if (atomic_fetch_add(v3 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v3 + 24))(v3);
        }
      }
    }

    operator delete(v1);
  }
}

uint64_t *boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>>::~grouped_list(uint64_t *a1)
{
  std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>)>>,boost::signals2::mutex>>,void *>>>>::destroy(a1[4]);
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
        v6 = v2[3];
        if (v6)
        {
          if (atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v6 + 16))(v6);
            if (atomic_fetch_add(v6 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v6 + 24))(v6);
            }
          }
        }

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }

  return a1;
}

uint64_t boost::shared_ptr<boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::invocation_state>::~shared_ptr(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    v2 = result;
    (*(*v1 + 16))(v1);
    result = v2;
    if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 24))(v1);
      return v2;
    }
  }

  return result;
}

void boost::checked_delete<boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>>(void *a1)
{
  if (a1)
  {
    v1 = a1[4];
    if (v1)
    {
      if (atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
      {
        v2 = a1;
        (*(*v1 + 16))(v1);
        a1 = v2;
        if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v1 + 24))(v1);
          a1 = v2;
        }
      }
    }

    v3 = a1[1];
    if (v3)
    {
      if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
      {
        v4 = a1;
        (*(*v3 + 16))(v3);
        a1 = v4;
        if (atomic_fetch_add(v3 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v3 + 24))(v3);
          a1 = v4;
        }
      }
    }

    operator delete(a1);
  }
}

void boost::detail::sp_counted_impl_p<boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>>::dispose(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = v1[4];
    if (v2)
    {
      if (atomic_fetch_add(v2 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v2 + 16))(v2);
        if (atomic_fetch_add(v2 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v2 + 24))(v2);
        }
      }
    }

    v3 = v1[1];
    if (v3)
    {
      if (atomic_fetch_add(v3 + 2, 0xFFFFFFFF) == 1)
      {
        (*(*v3 + 16))(v3);
        if (atomic_fetch_add(v3 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v3 + 24))(v3);
        }
      }
    }

    operator delete(v1);
  }
}

atomic_ullong *std::shared_ptr<coredump::MipcCommandDriver>::shared_ptr[abi:ne200100]<coredump::MipcCommandDriver,std::shared_ptr<coredump::MipcCommandDriver> ctu::SharedSynchronizable<coredump::CommandDriver>::make_shared_ptr<coredump::MipcCommandDriver>(coredump::MipcCommandDriver*)::{lambda(coredump::MipcCommandDriver*)#1},0>(atomic_ullong *a1, atomic_ullong a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_2A1E14FE8;
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

void sub_296EB594C(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, std::shared_ptr<coredump::MipcCommandDriver> ctu::SharedSynchronizable<coredump::CommandDriver>::make_shared_ptr<coredump::MipcCommandDriver>(coredump::MipcCommandDriver*)::{lambda(coredump::MipcCommandDriver*)#1}::operator() const(coredump::MipcCommandDriver*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<coredump::MipcCommandDriver *,std::shared_ptr<coredump::MipcCommandDriver> ctu::SharedSynchronizable<coredump::CommandDriver>::make_shared_ptr<coredump::MipcCommandDriver>(coredump::MipcCommandDriver*)::{lambda(coredump::MipcCommandDriver *)#1},std::allocator<coredump::MipcCommandDriver>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<coredump::MipcCommandDriver *,std::shared_ptr<coredump::MipcCommandDriver> ctu::SharedSynchronizable<coredump::CommandDriver>::make_shared_ptr<coredump::MipcCommandDriver>(coredump::MipcCommandDriver*)::{lambda(coredump::MipcCommandDriver *)#1},std::allocator<coredump::MipcCommandDriver>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableIN8coredump13CommandDriverEE15make_shared_ptrINS1_17MipcCommandDriverEEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableIN8coredump13CommandDriverEE15make_shared_ptrINS1_17MipcCommandDriverEEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableIN8coredump13CommandDriverEE15make_shared_ptrINS1_17MipcCommandDriverEEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableIN8coredump13CommandDriverEE15make_shared_ptrINS1_17MipcCommandDriverEEENSt3__110shared_ptrIT_EEPS8_EUlPS5_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::shared_ptr<coredump::MipcCommandDriver> ctu::SharedSynchronizable<coredump::CommandDriver>::make_shared_ptr<coredump::MipcCommandDriver>(coredump::MipcCommandDriver*)::{lambda(coredump::MipcCommandDriver*)#1}::operator() const(coredump::MipcCommandDriver*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

uint64_t std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<coredump::MipcCommandDriver::crashBaseband(std::string)::$_0>(coredump::MipcCommandDriver::crashBaseband(std::string)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::~__func(uint64_t result)
{
  *result = &unk_2A1E15038;
  if (*(result + 24))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 24));
    return v1;
  }

  return result;
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<coredump::MipcCommandDriver::crashBaseband(std::string)::$_0>(coredump::MipcCommandDriver::crashBaseband(std::string)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::~__func(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E15038;
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

char *std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<coredump::MipcCommandDriver::crashBaseband(std::string)::$_0>(coredump::MipcCommandDriver::crashBaseband(std::string)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(uint64_t a1)
{
  result = operator new(0x20uLL);
  *result = &unk_2A1E15038;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<coredump::MipcCommandDriver::crashBaseband(std::string)::$_0>(coredump::MipcCommandDriver::crashBaseband(std::string)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A1E15038;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<coredump::MipcCommandDriver::crashBaseband(std::string)::$_0>(coredump::MipcCommandDriver::crashBaseband(std::string)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<coredump::MipcCommandDriver::crashBaseband(std::string)::$_0>(coredump::MipcCommandDriver::crashBaseband(std::string)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::destroy_deallocate(std::__shared_weak_count **a1)
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

void std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<coredump::MipcCommandDriver::crashBaseband(std::string)::$_0>(coredump::MipcCommandDriver::crashBaseband(std::string)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::operator()(void *a1, abb::router::Message *this)
{
  v17 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v16[3] = v4;
  v16[4] = v4;
  v16[1] = v4;
  v16[2] = v4;
  v16[0] = v4;
  if (abb::router::Message::isError(this))
  {
    abb::router::Message::getError(&v18.__val_, this);
    if ((v19 & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v24 = v18;
    v6 = mipc::toErrorCode(v18.__val_, v5);
    std::error_code::message(&v21, &v24);
    v22 = 0;
    v23 = 0;
    *buf = v6;
    MEMORY[0x29C266C40](v16, buf, 1);
    v7 = v23;
    if (v23 && !atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
      if ((SHIBYTE(v21.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_6;
    }

    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_6:
      operator delete(v21.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    abb::router::Message::getRawMsg(buf, this);
    v8 = **buf;
    abb::router::Message::getRawMsg(&v18.__val_, this);
    MEMORY[0x29C266C50](v16, v8, *(*&v18.__val_ + 8) - **&v18.__val_);
    cat = v18.__cat_;
    if (v18.__cat_ && !atomic_fetch_add(&v18.__cat_[1], 0xFFFFFFFFFFFFFFFFLL))
    {
      (cat->__on_zero_shared)(cat);
      std::__shared_weak_count::__release_weak(cat);
    }

    v10 = v21.__r_.__value_.__r.__words[0];
    if (v21.__r_.__value_.__r.__words[0] && !atomic_fetch_add((v21.__r_.__value_.__r.__words[0] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
    }
  }

LABEL_14:
  v11 = a1[3];
  if (v11)
  {
    v12 = a1[1];
    v13 = std::__shared_weak_count::lock(v11);
    if (v13)
    {
      v14 = v13;
      if (a1[2])
      {
        v15 = *(v12 + 40);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_296E3E000, v15, OS_LOG_TYPE_DEFAULT, "#I Received coredump command completion callback", buf, 2u);
        }

        dispatch_group_leave(*(v12 + 160));
      }

      if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v14->__on_zero_shared)(v14);
        std::__shared_weak_count::__release_weak(v14);
      }
    }
  }

  mipc::sys::Trigger_Coredump_Cnf::~Trigger_Coredump_Cnf(v16);
}

void sub_296EB5EA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v13 - 96);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<abb::router::SendProxy&& abb::router::SendProxy::callback<coredump::MipcCommandDriver::crashBaseband(std::string)::$_0>(coredump::MipcCommandDriver::crashBaseband(std::string)::$_0 &&)::{lambda(abb::router::Message const&)#1},std::allocator<abb::router::Message const>,void ()(abb::router::Message)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZNO3abb6router9SendProxy8callbackIZN8coredump17MipcCommandDriver13crashBasebandENSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEEE3$_0EEOS1_OT_EUlRKNS0_7MessageEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZNO3abb6router9SendProxy8callbackIZN8coredump17MipcCommandDriver13crashBasebandENSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEEE3$_0EEOS1_OT_EUlRKNS0_7MessageEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZNO3abb6router9SendProxy8callbackIZN8coredump17MipcCommandDriver13crashBasebandENSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEEE3$_0EEOS1_OT_EUlRKNS0_7MessageEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZNO3abb6router9SendProxy8callbackIZN8coredump17MipcCommandDriver13crashBasebandENSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEEE3$_0EEOS1_OT_EUlRKNS0_7MessageEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t ctu::OsLogLogger::OsLogLogger()
{
  return MEMORY[0x2A1C6F118]();
}

{
  return MEMORY[0x2A1C6F120]();
}

uint64_t ctu::operator<<()
{
  return MEMORY[0x2A1C6F408]();
}

{
  return MEMORY[0x2A1C6F410]();
}

uint64_t xpc::dyn_cast_or_default()
{
  return MEMORY[0x2A1C6F438]();
}

{
  return MEMORY[0x2A1C6F478]();
}

uint64_t trace::toString()
{
  return MEMORY[0x2A1C6D160]();
}

{
  return MEMORY[0x2A1C6D168]();
}

uint64_t abb::router::Client::regEventHandler()
{
  return MEMORY[0x2A1C5F410]();
}

{
  return MEMORY[0x2A1C5F418]();
}

uint64_t awd::AppContext::operator()()
{
  return MEMORY[0x2A1C6D1B8]();
}

{
  return MEMORY[0x2A1C6D1C0]();
}

{
  return MEMORY[0x2A1C6D1C8]();
}

{
  return MEMORY[0x2A1C6D1D0]();
}

{
  return MEMORY[0x2A1C6D1D8]();
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2A1C6FE18]();
}

{
  return MEMORY[0x2A1C6FE20]();
}

{
  return MEMORY[0x2A1C6FE28]();
}

uint64_t std::to_chars(std::__1 *this, char *a2, char *a3, double a4)
{
  return MEMORY[0x2A1C70218](this, a2, a3, a4);
}

{
  return MEMORY[0x2A1C70230](this, a2, a3, a4);
}

uint64_t std::to_chars()
{
  return MEMORY[0x2A1C70220]();
}

{
  return MEMORY[0x2A1C70228]();
}

{
  return MEMORY[0x2A1C70238]();
}

{
  return MEMORY[0x2A1C70240]();
}

{
  return MEMORY[0x2A1C70250]();
}

{
  return MEMORY[0x2A1C70258]();
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