uint64_t std::__function::__func<Simulator::registerEventHandlers_sync(void)::$_0,std::allocator<Simulator::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::~__func(uint64_t result)
{
  *result = &unk_2A1E36D68;
  if (*(result + 24))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 24));
    return v1;
  }

  return result;
}

void std::__function::__func<Simulator::registerEventHandlers_sync(void)::$_0,std::allocator<Simulator::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::~__func(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E36D68;
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

char *std::__function::__func<Simulator::registerEventHandlers_sync(void)::$_0,std::allocator<Simulator::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t a1)
{
  result = operator new(0x20uLL);
  *result = &unk_2A1E36D68;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<Simulator::registerEventHandlers_sync(void)::$_0,std::allocator<Simulator::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A1E36D68;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<Simulator::registerEventHandlers_sync(void)::$_0,std::allocator<Simulator::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<Simulator::registerEventHandlers_sync(void)::$_0,std::allocator<Simulator::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::destroy_deallocate(std::__shared_weak_count **a1)
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

void std::__function::__func<Simulator::registerEventHandlers_sync(void)::$_0,std::allocator<Simulator::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::operator()(void *a1, NSObject **a2, void **a3)
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
    if (v8)
    {
      v9 = v8;
      if (!a1[2])
      {
        goto LABEL_21;
      }

      if (v4)
      {
        dispatch_retain(v4);
        dispatch_group_enter(v4);
      }

      v10 = v7[10];
      if (!v10 || (v11 = v7[9], (v12 = std::__shared_weak_count::lock(v10)) == 0))
      {
        std::__throw_bad_weak_ptr[abi:ne200100]();
      }

      v13 = v12;
      v14 = operator new(0x10uLL);
      *v14 = v7;
      v14[1] = v4;
      v15 = v7[11];
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      v16 = operator new(0x18uLL);
      *v16 = v14;
      v16[1] = v11;
      v16[2] = v13;
      dispatch_async_f(v15, v16, dispatch::async<void ctu::SharedSynchronizable<Simulator>::execute_wrapped<Simulator::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(Simulator::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<Simulator::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<Simulator::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
      if (atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
LABEL_21:
        if (atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_11;
        }

        goto LABEL_10;
      }

      (v13->__on_zero_shared)(v13);
      std::__shared_weak_count::__release_weak(v13);
      if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
LABEL_10:
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
      }
    }
  }

LABEL_11:
  xpc_release(v5);
  if (v4)
  {
    dispatch_group_leave(v4);

    dispatch_release(v4);
  }
}

uint64_t std::__function::__func<Simulator::registerEventHandlers_sync(void)::$_0,std::allocator<Simulator::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN9Simulator26registerEventHandlers_syncEvE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN9Simulator26registerEventHandlers_syncEvE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN9Simulator26registerEventHandlers_syncEvE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN9Simulator26registerEventHandlers_syncEvE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void dispatch::async<void ctu::SharedSynchronizable<Simulator>::execute_wrapped<Simulator::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(Simulator::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<Simulator::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<Simulator::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v2 = *a1;
  v3 = **a1;
  if (*(v3 + 112) == 1)
  {
    v4 = *(v3 + 104);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_297288000, v4, OS_LOG_TYPE_DEFAULT, "#I Baseband reset during simulated low power, simulating exit low power", v8, 2u);
    }

    *(v3 + 112) = 0;
  }

  v5 = v2[1];
  if (v5)
  {
    dispatch_group_leave(v5);
    v6 = v2[1];
    if (v6)
    {
      dispatch_release(v6);
    }
  }

  operator delete(v2);
  v7 = a1[2];
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  operator delete(a1);
}

void TransportService::create(uint64_t *a1@<X0>, uint64_t *a2@<X1>, MipcTransportService **a3@<X8>)
{
  {
    GetOsLogContext(void)::sOsLogContext = 0;
    qword_2A1399CD8 = 0;
  }

  if (GetOsLogContext(void)::onceToken == -1)
  {
    v6 = qword_2A1399CD8;
    if (!os_log_type_enabled(qword_2A1399CD8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  dispatch_once(&GetOsLogContext(void)::onceToken, &__block_literal_global_13);
  v6 = qword_2A1399CD8;
  if (os_log_type_enabled(qword_2A1399CD8, OS_LOG_TYPE_DEFAULT))
  {
LABEL_4:
    *buf = 0;
    _os_log_impl(&dword_297288000, v6, OS_LOG_TYPE_DEFAULT, "IPC: Creating MIPC transport service", buf, 2u);
  }

LABEL_5:
  v8 = *a1;
  v7 = a1[1];
  v9 = operator new(0xD0uLL);
  v10 = v9;
  v9->__shared_owners_ = 0;
  p_shared_owners = &v9->__shared_owners_;
  v9->__shared_weak_owners_ = 0;
  v9->__vftable = &unk_2A1E37000;
  v12 = &v9[1];
  *buf = v8;
  v18 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = *a2;
  v14 = a2[1];
  v16[0] = v13;
  v16[1] = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  MipcTransportService::MipcTransportService(&v9[1], buf, v16);
  if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
  }

  if (v18)
  {
    std::__shared_weak_count::__release_weak(v18);
  }

  shared_owners = v10[2].__shared_owners_;
  if (shared_owners)
  {
    if (shared_owners->__shared_owners_ == -1)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v10[2].__vftable = v12;
      v10[2].__shared_owners_ = v10;
      std::__shared_weak_count::__release_weak(shared_owners);
      if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
      {
        goto LABEL_19;
      }
    }
  }

  else
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v10[2].__vftable = v12;
    v10[2].__shared_owners_ = v10;
    if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
LABEL_19:
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
    }
  }

  MipcTransportService::init(v12);
  *a3 = v12;
  a3[1] = v10;
}

void sub_2972EA7C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](&a9);
  if (v10)
  {
    std::__shared_weak_count::__release_weak(v10);
  }

  std::__shared_weak_count::~__shared_weak_count(v9);
  operator delete(v12);
  _Unwind_Resume(a1);
}

void MipcTransportService::init(MipcTransportService *this)
{
  v2 = *(this + 4);
  if (!v2 || (v3 = *(this + 3), (v4 = std::__shared_weak_count::lock(v2)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v5 = v4;
  v6 = operator new(8uLL);
  *v6 = this;
  v7 = *(this + 5);
  atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  v8 = operator new(0x18uLL);
  *v8 = v6;
  v8[1] = v3;
  v8[2] = v5;
  dispatch_async_f(v7, v8, dispatch::async<void ctu::SharedSynchronizable<MipcTransportService>::execute_wrapped<MipcTransportService::init(void)::$_0>(MipcTransportService::init(void)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<MipcTransportService::init(void)::$_0,dispatch_queue_s *::default_delete<MipcTransportService::init(void)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);

    std::__shared_weak_count::__release_weak(v5);
  }
}

uint64_t MipcTransportService::MipcTransportService(uint64_t a1, void *a2, uint64_t *a3)
{
  *a1 = &unk_2A1E36DE8;
  ctu::OsLogContext::OsLogContext(v12, "com.apple.telephony.abm", "ipc.svc.mipc");
  initially_inactive = dispatch_queue_attr_make_initially_inactive(0);
  v7 = dispatch_queue_create_with_target_V2("ipc.svc.mipc", initially_inactive, 0);
  dispatch_set_qos_class_floor(v7, QOS_CLASS_DEFAULT, 0);
  dispatch_activate(v7);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = v7;
  if (v7)
  {
    dispatch_retain(v7);
    *(a1 + 48) = 0;
    dispatch_release(v7);
  }

  else
  {
    *(a1 + 48) = 0;
  }

  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x29C26DE70](a1 + 56, v13);
  MEMORY[0x29C26DE80](v13);
  ctu::OsLogContext::~OsLogContext(v12);
  v8 = *a3;
  v9 = a3[1];
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    *a1 = &unk_2A1E36F80;
    *(a1 + 8) = v8;
    *(a1 + 16) = v9;
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
    }
  }

  else
  {
    *a1 = &unk_2A1E36F80;
    *(a1 + 8) = v8;
    *(a1 + 16) = 0;
  }

  *a1 = &unk_2A1E36DE8;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 64) = 0;
  *(a1 + 104) = 0u;
  v10 = a2[1];
  *(a1 + 120) = *a2;
  *(a1 + 128) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 16), 1uLL, memory_order_relaxed);
  }

  *(a1 + 136) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  std::string::append((a1 + 136), 0x100uLL, 0);
  return a1;
}

void sub_2972EAB0C(_Unwind_Exception *a1)
{
  v9 = v3;
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](v9);
  if (*(v1 + 159) < 0)
  {
    operator delete(*v8);
    v11 = *(v1 + 128);
    if (!v11)
    {
LABEL_3:
      std::unique_ptr<support::misc::Watchdog>::~unique_ptr[abi:ne200100]((v1 + 112));
      v12 = *(v1 + 104);
      if (!v12)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else
  {
    v11 = *(v1 + 128);
    if (!v11)
    {
      goto LABEL_3;
    }
  }

  std::__shared_weak_count::__release_weak(v11);
  std::unique_ptr<support::misc::Watchdog>::~unique_ptr[abi:ne200100]((v1 + 112));
  v12 = *(v1 + 104);
  if (!v12)
  {
LABEL_5:
    dispatch::callback<void({block_pointer})(WakeReason)>::~callback(v7);
    std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](v4);
    *v1 = v5;
    std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](v6);
    MEMORY[0x29C26DE80](v1 + 56);
    ctu::SharedSynchronizable<WorkoutModule>::~SharedSynchronizable(v2);
    _Unwind_Resume(a1);
  }

LABEL_4:
  dispatch_release(v12);
  goto LABEL_5;
}

void MipcTransportService::~MipcTransportService(void **this)
{
  *this = &unk_2A1E36DE8;
  MipcTransportService::shutdown_sync(this);
  v2 = this[7];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_297288000, v2, OS_LOG_TYPE_DEFAULT, "#I Gone!", v14, 2u);
  }

  v3 = this[22];
  if (!v3 || atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((*(this + 159) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  if (*(this + 159) < 0)
  {
LABEL_6:
    operator delete(this[17]);
  }

LABEL_7:
  v4 = this[16];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = this[14];
  this[14] = 0;
  if (v5)
  {
    TelephonyBasebandWatchdogStop();
    operator delete(v5);
  }

  v6 = this[13];
  if (v6)
  {
    dispatch_release(v6);
  }

  v7 = this[12];
  if (v7)
  {
    dispatch_release(v7);
  }

  v8 = this[11];
  if (v8)
  {
    _Block_release(v8);
  }

  v9 = this[10];
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  *this = &unk_2A1E36F80;
  v10 = this[2];
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  MEMORY[0x29C26DE80](this + 7);
  v11 = this[6];
  if (v11)
  {
    dispatch_release(v11);
  }

  v12 = this[5];
  if (v12)
  {
    dispatch_release(v12);
  }

  v13 = this[4];
  if (v13)
  {
    std::__shared_weak_count::__release_weak(v13);
  }
}

void MipcTransportService::shutdown_sync(MipcTransportService *this)
{
  MipcTransportService::cancelWakeRequest_sync(this);
  v2 = dispatch_group_create();
  v3 = v2;
  v4 = *(this + 9);
  group = v2;
  if (v2)
  {
    dispatch_retain(v2);
    dispatch_group_enter(v3);
  }

  abb::router::Server::shutdown();
  if (group)
  {
    dispatch_group_leave(group);
    dispatch_release(group);
  }

  v5 = *(this + 9);
  if (v3)
  {
    dispatch_retain(v3);
    dispatch_group_enter(v3);
  }

  abb::router::Server::statedump();
  if (v3)
  {
    dispatch_group_leave(v3);
    dispatch_release(v3);
  }

  dispatch_group_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
  if (v3)
  {
    dispatch_release(v3);
  }
}

void sub_2972EAEE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_group_t group, dispatch_group_t a10)
{
  if (group)
  {
    dispatch_group_leave(group);
    dispatch_release(group);
  }

  if (v10)
  {
    dispatch_release(v10);
  }

  _Unwind_Resume(exception_object);
}

void MipcTransportService::cancelWakeRequest_sync(MipcTransportService *this)
{
  v2 = *(this + 13);
  if (v2)
  {
    dispatch_source_cancel(v2);
    v3 = *(this + 13);
    *(this + 13) = 0;
    if (v3)
    {
      dispatch_release(v3);
    }

    if (*(this + 11) && *(this + 12))
    {
      if ((*(this + 159) & 0x8000000000000000) != 0)
      {
        if (*(this + 18))
        {
          goto LABEL_8;
        }
      }

      else if (*(this + 159))
      {
LABEL_8:
        v4 = xpc_dictionary_create(0, 0, 0);
        if (v4 || (v4 = xpc_null_create()) != 0)
        {
          if (MEMORY[0x29C26F9F0](v4) == MEMORY[0x29EDCAA00])
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
        v10 = xpc_string_create(*MEMORY[0x29EDBE7C0]);
        if (!v10)
        {
          v10 = xpc_null_create();
        }

        xpc_dictionary_set_value(v5, *MEMORY[0x29EDBE848], v10);
        v11 = xpc_null_create();
        xpc_release(v10);
        xpc_release(v11);
        v12 = this + 136;
        if (*(this + 159) < 0)
        {
          v12 = *v12;
        }

        v13 = xpc_string_create(v12);
        if (!v13)
        {
          v13 = xpc_null_create();
        }

        xpc_dictionary_set_value(v5, *MEMORY[0x29EDBEA28], v13);
        v14 = xpc_null_create();
        xpc_release(v13);
        xpc_release(v14);
        v15 = xpc_BOOL_create(*(this + 160));
        if (!v15)
        {
          v15 = xpc_null_create();
        }

        xpc_dictionary_set_value(v5, *MEMORY[0x29EDBF4F8], v15);
        v16 = xpc_null_create();
        xpc_release(v15);
        xpc_release(v16);
        if (v5)
        {
          xpc_retain(v5);
          v17 = v5;
          v18 = *(this + 11);
          if (v18)
          {
LABEL_38:
            v19 = _Block_copy(v18);
            goto LABEL_41;
          }
        }

        else
        {
          v17 = xpc_null_create();
          v18 = *(this + 11);
          if (v18)
          {
            goto LABEL_38;
          }
        }

        v19 = 0;
LABEL_41:
        v20 = *(this + 12);
        block = MEMORY[0x29EDCA5F8];
        v22 = 1174405120;
        v23 = ___ZNK8dispatch8callbackIU13block_pointerFv10WakeReasonEEclIJS1_EEEvDpT__block_invoke;
        v24 = &__block_descriptor_tmp_71_0;
        if (v19)
        {
          aBlock = _Block_copy(v19);
          v26 = 3;
          object = v17;
          if (v17)
          {
LABEL_43:
            xpc_retain(v17);
LABEL_46:
            dispatch_async(v20, &block);
            xpc_release(object);
            object = 0;
            if (aBlock)
            {
              _Block_release(aBlock);
            }

            if (v19)
            {
              _Block_release(v19);
            }

            xpc_release(v17);
            xpc_release(v5);
            return;
          }
        }

        else
        {
          aBlock = 0;
          v26 = 3;
          object = v17;
          if (v17)
          {
            goto LABEL_43;
          }
        }

        object = xpc_null_create();
        goto LABEL_46;
      }

      v6 = xpc_null_create();
      v7 = *(this + 11);
      if (v7)
      {
        v8 = _Block_copy(v7);
      }

      else
      {
        v8 = 0;
      }

      v9 = *(this + 12);
      block = MEMORY[0x29EDCA5F8];
      v22 = 1174405120;
      v23 = ___ZNK8dispatch8callbackIU13block_pointerFv10WakeReasonEEclIJS1_EEEvDpT__block_invoke;
      v24 = &__block_descriptor_tmp_71_0;
      if (v8)
      {
        aBlock = _Block_copy(v8);
        v26 = 4;
        object = v6;
        if (v6)
        {
LABEL_19:
          xpc_retain(v6);
LABEL_22:
          dispatch_async(v9, &block);
          xpc_release(object);
          object = 0;
          if (aBlock)
          {
            _Block_release(aBlock);
          }

          if (v8)
          {
            _Block_release(v8);
          }

          xpc_release(v6);
          return;
        }
      }

      else
      {
        aBlock = 0;
        v26 = 4;
        object = v6;
        if (v6)
        {
          goto LABEL_19;
        }
      }

      object = xpc_null_create();
      goto LABEL_22;
    }
  }
}

void MipcTransportService::shutdown(MipcTransportService *this)
{
  v3[0] = MEMORY[0x29EDCA5F8];
  v3[1] = 0x40000000;
  v3[2] = ___ZN20MipcTransportService8shutdownEv_block_invoke;
  v3[3] = &__block_descriptor_tmp_4;
  v3[4] = this;
  v4 = v3;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI20MipcTransportServiceE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  block[3] = &__block_descriptor_tmp_29;
  block[4] = this + 24;
  block[5] = &v4;
  v2 = this + 40;
  v1 = *(this + 5);
  if (*(v2 + 1))
  {
    dispatch_async_and_wait(v1, block);
  }

  else
  {
    dispatch_sync(v1, block);
  }
}

uint64_t MipcTransportService::engage(MipcTransportService *this)
{
  v4 = this;
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 0x40000000;
  v5[2] = ___ZNK3ctu20SharedSynchronizableI20MipcTransportServiceE20execute_wrapped_syncIZNS1_6engageEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS5__block_invoke;
  v5[3] = &__block_descriptor_tmp_58;
  v5[4] = this + 24;
  v5[5] = &v4;
  v6 = v5;
  v2 = this + 40;
  v1 = *(this + 5);
  if (*(v2 + 1))
  {
    v13 = -86;
    block = MEMORY[0x29EDCA5F8];
    v8 = 0x40000000;
    v9 = ___ZN8dispatch19async_and_wait_implIRU13block_pointerFbvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS4_17integral_constantIbLb0EEE_block_invoke_0;
    v10 = &__block_descriptor_tmp_65;
    v11 = &v13;
    v12 = &v6;
    dispatch_async_and_wait(v1, &block);
  }

  else
  {
    v13 = -86;
    block = MEMORY[0x29EDCA5F8];
    v8 = 0x40000000;
    v9 = ___ZN8dispatch9sync_implIRU13block_pointerFbvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS4_17integral_constantIbLb0EEE_block_invoke_0;
    v10 = &__block_descriptor_tmp_64;
    v11 = &v13;
    v12 = &v6;
    dispatch_sync(v1, &block);
  }

  return v13 & 1;
}

void MipcTransportService::resetBaseband_sync(void *a1, const char *a2, int a3)
{
  v33 = *MEMORY[0x29EDCA608];
  v6 = a1[7];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    if (a2[23] >= 0)
    {
      v11 = a2;
    }

    else
    {
      v11 = *a2;
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = v11;
    _os_log_error_impl(&dword_297288000, v6, OS_LOG_TYPE_ERROR, "%s", &buf, 0xCu);
    v7 = a1[16];
    if (!v7)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v7 = a1[16];
    if (!v7)
    {
      goto LABEL_45;
    }
  }

  v8 = std::__shared_weak_count::lock(v7);
  v30 = v8;
  if (!v8)
  {
    goto LABEL_45;
  }

  v29 = a1[15];
  if (!v29)
  {
    goto LABEL_43;
  }

  v9 = xpc_dictionary_create(0, 0, 0);
  if (v9 || (v9 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C26F9F0](v9) == MEMORY[0x29EDCAA00])
    {
      xpc_retain(v9);
      v10 = v9;
    }

    else
    {
      v10 = xpc_null_create();
    }
  }

  else
  {
    v10 = xpc_null_create();
    v9 = 0;
  }

  xpc_release(v9);
  v12 = xpc_string_create(*MEMORY[0x29EDBEB60]);
  if (!v12)
  {
    v12 = xpc_null_create();
  }

  xpc_dictionary_set_value(v10, *MEMORY[0x29EDBEB00], v12);
  v13 = xpc_null_create();
  xpc_release(v12);
  xpc_release(v13);
  if (a3 == 1)
  {
    v14 = xpc_string_create(*MEMORY[0x29EDBF740]);
    if (!v14)
    {
      v14 = xpc_null_create();
    }
  }

  else
  {
    v14 = xpc_string_create(*MEMORY[0x29EDBF750]);
    if (!v14)
    {
      v14 = xpc_null_create();
    }
  }

  xpc_dictionary_set_value(v10, *MEMORY[0x29EDBEEE0], v14);
  v15 = xpc_null_create();
  xpc_release(v14);
  xpc_release(v15);
  if (a2[23] >= 0)
  {
    v16 = a2;
  }

  else
  {
    v16 = *a2;
  }

  v17 = xpc_string_create(v16);
  if (!v17)
  {
    v17 = xpc_null_create();
  }

  xpc_dictionary_set_value(v10, *MEMORY[0x29EDBED88], v17);
  v18 = xpc_null_create();
  xpc_release(v17);
  xpc_release(v18);
  v19 = v29;
  v20 = *MEMORY[0x29EDBEAA8];
  v21 = strlen(*MEMORY[0x29EDBEAA8]);
  if (v21 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v22 = v21;
  if (v21 >= 0x17)
  {
    if ((v21 | 7) == 0x17)
    {
      v24 = 25;
    }

    else
    {
      v24 = (v21 | 7) + 1;
    }

    p_buf = operator new(v24);
    *(&buf + 1) = v22;
    v32 = v24 | 0x8000000000000000;
    *&buf = p_buf;
LABEL_38:
    memmove(p_buf, v20, v22);
    *(p_buf + v22) = 0;
    object = v10;
    if (v10)
    {
      goto LABEL_33;
    }

    goto LABEL_39;
  }

  HIBYTE(v32) = v21;
  p_buf = &buf;
  if (v21)
  {
    goto LABEL_38;
  }

  LOBYTE(buf) = 0;
  object = v10;
  if (v10)
  {
LABEL_33:
    xpc_retain(v10);
    goto LABEL_40;
  }

LABEL_39:
  object = xpc_null_create();
LABEL_40:
  v27 = 0;
  Service::runCommand(v19, &buf, &object, &v27);
  xpc_release(object);
  object = 0;
  if (SHIBYTE(v32) < 0)
  {
    operator delete(buf);
  }

  xpc_release(v10);
  v8 = v30;
  if (v30)
  {
LABEL_43:
    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v25 = v8;
      (v8->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v25);
    }
  }

LABEL_45:
  v26 = *MEMORY[0x29EDCA608];
}

void sub_2972EB988(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, char a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void MipcTransportService::enterLowPower(void *a1, dispatch_object_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
  }

  v4 = a1[4];
  if (!v4 || (v5 = a1[3], (v6 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = operator new(0x10uLL);
  *v8 = a1;
  v8[1] = v3;
  v9 = a1[5];
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  v10 = operator new(0x18uLL);
  *v10 = v8;
  v10[1] = v5;
  v10[2] = v7;
  dispatch_async_f(v9, v10, dispatch::async<void ctu::SharedSynchronizable<MipcTransportService>::execute_wrapped<MipcTransportService::enterLowPower(dispatch::group_session)::$_0>(MipcTransportService::enterLowPower(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<MipcTransportService::enterLowPower(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<MipcTransportService::enterLowPower(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);

    std::__shared_weak_count::__release_weak(v7);
  }
}

uint64_t MipcTransportService::tearDown(MipcTransportService *this)
{
  v4 = this;
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 0x40000000;
  v5[2] = ___ZNK3ctu20SharedSynchronizableI20MipcTransportServiceE20execute_wrapped_syncIZNS1_8tearDownEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS5__block_invoke;
  v5[3] = &__block_descriptor_tmp_68;
  v5[4] = this + 24;
  v5[5] = &v4;
  v6 = v5;
  v2 = this + 40;
  v1 = *(this + 5);
  if (*(v2 + 1))
  {
    v13 = -86;
    block = MEMORY[0x29EDCA5F8];
    v8 = 0x40000000;
    v9 = ___ZN8dispatch19async_and_wait_implIRU13block_pointerFbvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS4_17integral_constantIbLb0EEE_block_invoke_0;
    v10 = &__block_descriptor_tmp_65;
    v11 = &v13;
    v12 = &v6;
    dispatch_async_and_wait(v1, &block);
  }

  else
  {
    v13 = -86;
    block = MEMORY[0x29EDCA5F8];
    v8 = 0x40000000;
    v9 = ___ZN8dispatch9sync_implIRU13block_pointerFbvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS4_17integral_constantIbLb0EEE_block_invoke_0;
    v10 = &__block_descriptor_tmp_64;
    v11 = &v13;
    v12 = &v6;
    dispatch_sync(v1, &block);
  }

  return v13 & 1;
}

void MipcTransportService::exitLowPower(void *a1, dispatch_object_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
  }

  v4 = a1[4];
  if (!v4 || (v5 = a1[3], (v6 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = operator new(0x10uLL);
  *v8 = a1;
  v8[1] = v3;
  v9 = a1[5];
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  v10 = operator new(0x18uLL);
  *v10 = v8;
  v10[1] = v5;
  v10[2] = v7;
  dispatch_async_f(v9, v10, dispatch::async<void ctu::SharedSynchronizable<MipcTransportService>::execute_wrapped<MipcTransportService::exitLowPower(dispatch::group_session)::$_0>(MipcTransportService::exitLowPower(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<MipcTransportService::exitLowPower(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<MipcTransportService::exitLowPower(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);

    std::__shared_weak_count::__release_weak(v7);
  }
}

void MipcTransportService::dumpState(MipcTransportService *this)
{
  v3 = this;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI20MipcTransportServiceE20execute_wrapped_syncIZNS1_9dumpStateEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS5__block_invoke;
  block[3] = &__block_descriptor_tmp_69;
  block[4] = this + 24;
  block[5] = &v3;
  v2 = this + 40;
  v1 = *(this + 5);
  if (*(v2 + 1))
  {
    dispatch_async_and_wait(v1, block);
  }

  else
  {
    dispatch_sync(v1, block);
  }
}

void MipcTransportService::snapshot(void *a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
    v3 = a1[4];
    if (!v3)
    {
      goto LABEL_14;
    }
  }

  else
  {
    __p = *a2;
    v3 = a1[4];
    if (!v3)
    {
LABEL_14:
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }
  }

  v4 = a1[3];
  v5 = std::__shared_weak_count::lock(v3);
  if (!v5)
  {
    goto LABEL_14;
  }

  v6 = v5;
  v7 = operator new(0x20uLL);
  *v7 = a1;
  v8 = (v7 + 1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v8, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v8->__r_.__value_.__l.__data_ = *&__p.__r_.__value_.__l.__data_;
    v7[3] = *(&__p.__r_.__value_.__l + 2);
  }

  v9 = a1[5];
  atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  v10 = operator new(0x18uLL);
  *v10 = v7;
  v10[1] = v4;
  v10[2] = v6;
  dispatch_async_f(v9, v10, dispatch::async<void ctu::SharedSynchronizable<MipcTransportService>::execute_wrapped<MipcTransportService::snapshot(std::string)::$_0>(MipcTransportService::snapshot(std::string)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<MipcTransportService::snapshot(std::string)::$_0,std::default_delete<MipcTransportService::snapshot(std::string)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_13:
    operator delete(__p.__r_.__value_.__l.__data_);
    return;
  }

  (v6->__on_zero_shared)(v6);
  std::__shared_weak_count::__release_weak(v6);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_13;
  }
}

void MipcTransportService::registerForWakeReason(void *a1, __int128 *a2)
{
  v10 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v3 = a1[4];
  if (!v3 || (v4 = a1[3], (v5 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v6 = v5;
  v7 = operator new(0x18uLL);
  *v7 = a1;
  *(v7 + 8) = v10;
  v8 = a1[5];
  atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  v9 = operator new(0x18uLL);
  *v9 = v7;
  v9[1] = v4;
  v9[2] = v6;
  dispatch_async_f(v8, v9, dispatch::async<void ctu::SharedSynchronizable<MipcTransportService>::execute_wrapped<MipcTransportService::registerForWakeReason(dispatch::callback<void({block_pointer})(WakeReason)>)::$_0>(MipcTransportService::registerForWakeReason(dispatch::callback<void({block_pointer})(WakeReason)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<MipcTransportService::registerForWakeReason(dispatch::callback<void({block_pointer})(WakeReason)>)::$_0,dispatch_queue_s *::default_delete<MipcTransportService::registerForWakeReason(dispatch::callback<void({block_pointer})(WakeReason)>)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);

    std::__shared_weak_count::__release_weak(v6);
  }
}

void MipcTransportService::updateWakeReason_sync(MipcTransportService *this)
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = (this + 136);
  if ((*(this + 159) & 0x80000000) == 0)
  {
    SystemWakeReason = TelephonyUtilGetSystemWakeReason();
    v4 = *(this + 7);
    if (SystemWakeReason)
    {
      goto LABEL_3;
    }

LABEL_9:
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v9) = 0;
      _os_log_error_impl(&dword_297288000, v4, OS_LOG_TYPE_ERROR, "Failed to fetch system wake reason", &v9, 2u);
      if (!*(this + 11))
      {
        goto LABEL_13;
      }

      goto LABEL_11;
    }

LABEL_10:
    if (!*(this + 11))
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  v5 = *(this + 17);
  v6 = *(this + 19) & 0x7FFFFFFFFFFFFFFFLL;
  v7 = TelephonyUtilGetSystemWakeReason();
  v4 = *(this + 7);
  if ((v7 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_10;
  }

  if (*(this + 159) < 0)
  {
    v2 = *v2;
  }

  v9 = 136315138;
  v10 = v2;
  _os_log_impl(&dword_297288000, v4, OS_LOG_TYPE_DEFAULT, "#I System wake reason: %s", &v9, 0xCu);
  if (*(this + 11))
  {
LABEL_11:
    if (*(this + 12))
    {
      MipcTransportService::getWakeReason_sync(this, 2);
    }
  }

LABEL_13:
  v8 = *MEMORY[0x29EDCA608];
}

void MipcTransportService::getWakeReason_sync(MipcTransportService *this, int a2)
{
  v33 = *MEMORY[0x29EDCA608];
  v3 = *(this + 4);
  if (!v3 || (v5 = *(this + 3), (v6 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v8 = *(this + 7);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  (v6->__on_zero_shared)(v6);
  std::__shared_weak_count::__release_weak(v7);
  v8 = *(this + 7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
LABEL_5:
    --a2;
    *buf = 67109120;
    *&buf[4] = a2;
    _os_log_impl(&dword_297288000, v8, OS_LOG_TYPE_DEFAULT, "#I Sending request to get wake reason. Remaining-attempts=%u", buf, 8u);
  }

LABEL_6:
  v30 = 0xAAAAAAAAAAAAAAAALL;
  v31 = 0xAAAAAAAAAAAAAAAALL;
  v9 = pthread_mutex_lock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  v10 = off_2A1399388;
  if (!off_2A1399388)
  {
    CommandDriverFactory::create_default_global(buf, v9);
    v11 = *buf;
    memset(buf, 0, sizeof(buf));
    v12 = *(&off_2A1399388 + 1);
    off_2A1399388 = v11;
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

    v10 = off_2A1399388;
  }

  v14 = *(&off_2A1399388 + 1);
  v26 = v10;
  v27 = *(&off_2A1399388 + 1);
  if (*(&off_2A1399388 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A1399388 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  (*(*v10 + 16))(&v28, v10);
  v30 = 0;
  v31 = 0;
  if (v29)
  {
    v31 = std::__shared_weak_count::lock(v29);
    if (v31)
    {
      v30 = v28;
    }

    if (v29)
    {
      std::__shared_weak_count::__release_weak(v29);
    }
  }

  if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
    v15 = v30;
    if (v30)
    {
LABEL_24:
      v21[0] = MEMORY[0x29EDCA5F8];
      v21[1] = 1174405120;
      v21[2] = ___ZN20MipcTransportService18getWakeReason_syncEj_block_invoke;
      v21[3] = &__block_descriptor_tmp_8_1;
      v21[4] = this;
      v21[5] = v5;
      v22 = v7;
      atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v23 = a2;
      v16 = _Block_copy(v21);
      v17 = *(this + 5);
      if (v17)
      {
        dispatch_retain(v17);
      }

      aBlock = v16;
      object = v17;
      (*(*v15 + 88))(v15, &aBlock);
      if (object)
      {
        dispatch_release(object);
      }

      if (aBlock)
      {
        _Block_release(aBlock);
      }

      if (v22)
      {
        std::__shared_weak_count::__release_weak(v22);
        v18 = v31;
        if (!v31)
        {
          goto LABEL_40;
        }

        goto LABEL_38;
      }

LABEL_37:
      v18 = v31;
      if (!v31)
      {
        goto LABEL_40;
      }

      goto LABEL_38;
    }
  }

  else
  {
    v15 = v30;
    if (v30)
    {
      goto LABEL_24;
    }
  }

  v19 = *(this + 7);
  if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_37;
  }

  *buf = 0;
  _os_log_error_impl(&dword_297288000, v19, OS_LOG_TYPE_ERROR, "Failed to get radio command driver!", buf, 2u);
  v18 = v31;
  if (!v31)
  {
    goto LABEL_40;
  }

LABEL_38:
  if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
  }

LABEL_40:
  std::__shared_weak_count::__release_weak(v7);
  v20 = *MEMORY[0x29EDCA608];
}

void sub_2972EC6A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, char a17, uint64_t a18, char a19)
{
  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  std::__shared_weak_count::__release_weak(v19);
  _Unwind_Resume(a1);
}

void ___ZN20MipcTransportService18getWakeReason_syncEj_block_invoke(uint64_t a1, void *a2, ctu **a3)
{
  v4 = *(a1 + 48);
  if (v4)
  {
    v7 = *(a1 + 32);
    v8 = std::__shared_weak_count::lock(v4);
    v47 = v8;
    if (v8)
    {
      if (!*(a1 + 40))
      {
LABEL_75:
        if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v40 = v8;
          (v8->__on_zero_shared)();
          std::__shared_weak_count::__release_weak(v40);
        }

        return;
      }

      xdict = 0xAAAAAAAAAAAAAAAALL;
      v9 = xpc_dictionary_create(0, 0, 0);
      v10 = v9;
      if (v9)
      {
        xdict = v9;
      }

      else
      {
        v10 = xpc_null_create();
        xdict = v10;
        if (!v10)
        {
          v11 = xpc_null_create();
          v10 = 0;
          goto LABEL_11;
        }
      }

      if (MEMORY[0x29C26F9F0](v10) == MEMORY[0x29EDCAA00])
      {
        xpc_retain(v10);
        goto LABEL_12;
      }

      v11 = xpc_null_create();
LABEL_11:
      xdict = v11;
LABEL_12:
      xpc_release(v10);
      v12 = xpc_string_create(*MEMORY[0x29EDBE7C0]);
      if (!v12)
      {
        v12 = xpc_null_create();
      }

      xpc_dictionary_set_value(xdict, *MEMORY[0x29EDBE848], v12);
      v13 = xpc_null_create();
      xpc_release(v12);
      xpc_release(v13);
      v14 = (v7 + 136);
      if (*(v7 + 159) < 0)
      {
        v14 = *v14;
      }

      v15 = xpc_string_create(v14);
      if (!v15)
      {
        v15 = xpc_null_create();
      }

      xpc_dictionary_set_value(xdict, *MEMORY[0x29EDBEA28], v15);
      v16 = xpc_null_create();
      xpc_release(v15);
      xpc_release(v16);
      v17 = xpc_BOOL_create(*(v7 + 160));
      if (!v17)
      {
        v17 = xpc_null_create();
      }

      xpc_dictionary_set_value(xdict, *MEMORY[0x29EDBF4F8], v17);
      v18 = xpc_null_create();
      xpc_release(v17);
      xpc_release(v18);
      if (*a2 || (v27 = *a3) == 0)
      {
        v20 = *(a1 + 56);
        if (v20)
        {
          v21 = dispatch_source_create(MEMORY[0x29EDCA5D0], 1uLL, 0, *(v7 + 40));
          v22 = *(v7 + 104);
          *(v7 + 104) = v21;
          if (v22)
          {
            dispatch_release(v22);
            v21 = *(v7 + 104);
          }

          if (v21)
          {
            v23 = dispatch_time(0, 1000000000);
            dispatch_source_set_timer(v21, v23, 0xFFFFFFFFFFFFFFFFLL, 0xBEBC200uLL);
            v24 = *(v7 + 104);
            handler[0] = MEMORY[0x29EDCA5F8];
            handler[1] = 1174405120;
            handler[2] = ___ZN20MipcTransportService18getWakeReason_syncEj_block_invoke_2;
            handler[3] = &__block_descriptor_tmp_4_2;
            v26 = *(a1 + 40);
            v25 = *(a1 + 48);
            handler[4] = v7;
            handler[5] = v26;
            v42 = v25;
            if (v25)
            {
              atomic_fetch_add_explicit(&v25->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            }

            v43 = *(a1 + 56);
            dispatch_source_set_event_handler(v24, handler);
            dispatch_activate(*(v7 + 104));
            if (v42)
            {
              std::__shared_weak_count::__release_weak(v42);
            }
          }

LABEL_74:
          xpc_release(xdict);
          v8 = v47;
          if (!v47)
          {
            return;
          }

          goto LABEL_75;
        }
      }

      else
      {
        if (*(v7 + 88) && *(v7 + 96))
        {
          block = 0xAAAAAAAAAAAAAAAALL;
          ctu::cf_to_xpc(&object, v27, v19);
          v28 = object;
          block = object;
          if (object && MEMORY[0x29C26F9F0](object) == MEMORY[0x29EDCAA00])
          {
            xpc_retain(v28);
          }

          else
          {
            block = xpc_null_create();
          }

          xpc_release(object);
          abm::ParseWakeDataDale(&block, &xdict, v29);
          xpc_release(block);
        }

        v20 = 1;
      }

      if (*(v7 + 88) && *(v7 + 96))
      {
        v30 = *(v7 + 159);
        if (v30 < 0)
        {
          v30 = *(v7 + 144);
        }

        if (((v30 == 0) & ~v20) != 0)
        {
          v31 = xpc_null_create();
          v32 = *(v7 + 88);
          if (v32)
          {
            v33 = _Block_copy(v32);
          }

          else
          {
            v33 = 0;
          }

          v36 = *(v7 + 96);
          block = MEMORY[0x29EDCA5F8];
          v49 = 1174405120;
          v50 = ___ZNK8dispatch8callbackIU13block_pointerFv10WakeReasonEEclIJS1_EEEvDpT__block_invoke;
          v51 = &__block_descriptor_tmp_71_0;
          if (v33)
          {
            v37 = _Block_copy(v33);
          }

          else
          {
            v37 = 0;
          }

          aBlock = v37;
          v53 = 4;
          v54 = v31;
          if (v31)
          {
            xpc_retain(v31);
          }

          else
          {
            v54 = xpc_null_create();
          }

          dispatch_async(v36, &block);
          xpc_release(v54);
          v54 = 0;
          if (aBlock)
          {
            _Block_release(aBlock);
          }

          if (v33)
          {
            _Block_release(v33);
          }
        }

        else
        {
          v31 = xdict;
          if (xdict)
          {
            xpc_retain(xdict);
          }

          else
          {
            v31 = xpc_null_create();
          }

          v34 = *(v7 + 88);
          if (v34)
          {
            v35 = _Block_copy(v34);
          }

          else
          {
            v35 = 0;
          }

          v38 = *(v7 + 96);
          block = MEMORY[0x29EDCA5F8];
          v49 = 1174405120;
          v50 = ___ZNK8dispatch8callbackIU13block_pointerFv10WakeReasonEEclIJS1_EEEvDpT__block_invoke;
          v51 = &__block_descriptor_tmp_71_0;
          if (v35)
          {
            v39 = _Block_copy(v35);
          }

          else
          {
            v39 = 0;
          }

          aBlock = v39;
          v53 = 3;
          v54 = v31;
          if (v31)
          {
            xpc_retain(v31);
          }

          else
          {
            v54 = xpc_null_create();
          }

          dispatch_async(v38, &block);
          xpc_release(v54);
          v54 = 0;
          if (aBlock)
          {
            _Block_release(aBlock);
          }

          if (v35)
          {
            _Block_release(v35);
          }
        }

        xpc_release(v31);
      }

      goto LABEL_74;
    }
  }
}

void sub_2972ECCEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, xpc_object_t a19, char a20, uint64_t a21, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(a19);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](&a20);
  _Unwind_Resume(a1);
}

void ___ZN20MipcTransportService18getWakeReason_syncEj_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(a1 + 40))
      {
        dispatch_source_cancel(v3[13]);
        v6 = v3[13];
        v3[13] = 0;
        if (v6)
        {
          dispatch_release(v6);
        }

        MipcTransportService::getWakeReason_sync(v3, *(a1 + 56));
      }

      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);

        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }
}

uint64_t __copy_helper_block_e8_40c45_ZTSNSt3__18weak_ptrI20MipcTransportServiceEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c45_ZTSNSt3__18weak_ptrI20MipcTransportServiceEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t dispatch::callback<void({block_pointer})(WakeReason)>::~callback(uint64_t a1)
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

void std::__shared_ptr_emplace<MipcTransportService>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E37000;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
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

void dispatch::async<void ctu::SharedSynchronizable<MipcTransportService>::execute_wrapped<MipcTransportService::init(void)::$_0>(MipcTransportService::init(void)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<MipcTransportService::init(void)::$_0,dispatch_queue_s *::default_delete<MipcTransportService::init(void)::$_0>>)::{lambda(void *)#1}::__invoke(std::__shared_weak_count **a1)
{
  v66 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  v2 = (*a1)->__vftable;
  on_zero_shared = v2[1].__on_zero_shared;
  v4 = os_log_type_enabled(on_zero_shared, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    *buf = 0;
    _os_log_impl(&dword_297288000, on_zero_shared, OS_LOG_TYPE_DEFAULT, "#I ----------------- Setting up ----------------", buf, 2u);
  }

  if ((capabilities::ipc::supportsPCI(v4) & 1) == 0)
  {
    v43 = GetOsLogContext()[1];
    if (os_log_type_enabled(v43, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315906;
      *&buf[4] = "ABM ASSERT";
      *&buf[12] = 2080;
      *&buf[14] = "capabilities::ipc::supportsPCI()";
      *&buf[22] = 2080;
      v52[0] = "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices_Manager/AppleBasebandManager/BasebandManager/Server/Transport/MIPC/Service/MipcTransportService.cpp";
      LOWORD(v52[1]) = 1024;
      *(&v52[1] + 2) = 118;
      _os_log_fault_impl(&dword_297288000, v43, OS_LOG_TYPE_FAULT, "%s (%s): File: %s Line: %d", buf, 0x26u);
    }

    __break(1u);
  }

  v5 = v2->~__shared_weak_count_0;
  if (!v5)
  {
    v16 = v2[1].__on_zero_shared;
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_65;
    }

    *buf = 0;
    v17 = "Invalid registry; skipping router server setup";
LABEL_24:
    _os_log_error_impl(&dword_297288000, v16, OS_LOG_TYPE_ERROR, v17, buf, 2u);
    goto LABEL_65;
  }

  Registry::getRouterServer(buf, v5);
  v6 = *buf;
  *buf = 0;
  *&buf[8] = 0;
  v7 = v2[2].~__shared_weak_count;
  *&v2[1].__on_zero_shared_weak = v6;
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    v8 = *&buf[8];
    if (!*&buf[8])
    {
      goto LABEL_9;
    }
  }

  else
  {
    v8 = *&buf[8];
    if (!*&buf[8])
    {
      goto LABEL_9;
    }
  }

  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
    if (v2[1].__on_zero_shared_weak)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

LABEL_9:
  if (!v2[1].__on_zero_shared_weak)
  {
LABEL_22:
    v16 = v2[1].__on_zero_shared;
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_65;
    }

    *buf = 0;
    v17 = "Invalid router server in registry";
    goto LABEL_24;
  }

LABEL_10:
  on_zero_shared_weak = v2->__on_zero_shared_weak;
  if (!on_zero_shared_weak || (get_deleter = v2->__get_deleter, (v11 = std::__shared_weak_count::lock(on_zero_shared_weak)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v12 = v11;
  p_shared_weak_owners = &v11->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v12);
  }

  v14 = v2[1].__on_zero_shared_weak;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  v60 = 0;
  v15 = operator new(0x20uLL);
  *v15 = &unk_2A1E37050;
  *(v15 + 1) = v2;
  *(v15 + 2) = get_deleter;
  *(v15 + 3) = v12;
  v60 = v15;
  abb::router::Server::registerErrorHandler();
  if (v60 == &v59)
  {
    (*(*v60 + 32))(v60);
  }

  else if (v60)
  {
    (*(*v60 + 40))(v60);
  }

  v18 = v2[1].__on_zero_shared_weak;
  atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v58 = 0;
  v19 = operator new(0x20uLL);
  *v19 = &unk_2A1E370E0;
  *(v19 + 1) = v2;
  *(v19 + 2) = get_deleter;
  *(v19 + 3) = v12;
  v58 = v19;
  abb::router::Server::registerMetricSummaryHandler();
  v20 = v58;
  if (v58 == &v57)
  {
    v20 = (*(*v58 + 32))(v58);
  }

  else if (v58)
  {
    v20 = (*(*v58 + 40))();
  }

  if (!capabilities::abs::supportsMipcMetricStreaming(v20) || !TelephonyUtilIsInternalBuild())
  {
    goto LABEL_49;
  }

  v21 = v2[1].__on_zero_shared;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_297288000, v21, OS_LOG_TYPE_DEFAULT, "#I Create and open metric log writer", buf, 2u);
  }

  v56 = 0xAAAAAAAAAAAAAAAALL;
  *&v22 = 0xAAAAAAAAAAAAAAAALL;
  *(&v22 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v55 = v22;
  v54 = v22;
  *__p = v22;
  *v52 = v22;
  v23 = operator new(0x48uLL);
  strcpy(v23, "/var/wireless/Library/Logs/AppleBasebandManager/metric.mipc.scratch/");
  strcpy(buf, "metric.mipc");
  *&buf[12] = 0;
  *&buf[16] = *v45;
  *&buf[19] = *&v45[3];
  buf[23] = 11;
  std::string::__init_copy_ctor_external(v52, v23, 0x44uLL);
  v54 = 0uLL;
  v55 = xmmword_2974310E0;
  LOBYTE(v56) = 0;
  HIBYTE(v54) = 4;
  __p[1] = 1735355438;
  operator delete(v23);
  v24 = operator new(0xB8uLL);
  CircularFileLogWriter::CircularFileLogWriter(v24, buf);
  std::shared_ptr<CircularFileLogWriter>::shared_ptr[abi:ne200100]<CircularFileLogWriter,std::shared_ptr<CircularFileLogWriter> ctu::SharedSynchronizable<CircularFileLogWriter>::make_shared_ptr<CircularFileLogWriter>(CircularFileLogWriter*)::{lambda(CircularFileLogWriter*)#1},0>(&block, v24);
  v25 = block;
  block = 0uLL;
  v26 = v2[4].__on_zero_shared;
  *&v2[4].~__shared_weak_count_0 = v25;
  if (v26 && !atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v26->__on_zero_shared)(v26);
    std::__shared_weak_count::__release_weak(v26);
  }

  v27 = *(&block + 1);
  if (*(&block + 1) && !atomic_fetch_add((*(&block + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v27->__on_zero_shared)(v27);
    std::__shared_weak_count::__release_weak(v27);
  }

  v28 = v2[4].~__shared_weak_count_0;
  group[0] = MEMORY[0x29EDCA5F8];
  group[1] = 0x40000000;
  v47 = ___ZN21CircularFileLogWriter4openEv_block_invoke;
  v48 = &__block_descriptor_tmp_11;
  v49 = v28;
  v50 = group;
  *&block = MEMORY[0x29EDCA5F8];
  *(&block + 1) = 0x40000000;
  v62 = ___ZNK3ctu20SharedSynchronizableI21CircularFileLogWriterE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  v63 = &__block_descriptor_tmp_21_1;
  v64 = v28 + 8;
  v65 = &v50;
  v29 = *(v28 + 3);
  if (*(v28 + 4))
  {
    dispatch_async_and_wait(v29, &block);
  }

  else
  {
    dispatch_sync(v29, &block);
  }

  v30 = v2[1].__on_zero_shared_weak;
  atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v63 = 0;
  v31 = operator new(0x20uLL);
  *v31 = &unk_2A1E37170;
  *(v31 + 1) = v2;
  *(v31 + 2) = get_deleter;
  *(v31 + 3) = v12;
  v63 = v31;
  abb::router::Server::registerMetricStreamHandler();
  if (v63 == &block)
  {
    (*(*v63 + 32))(v63);
    if ((SHIBYTE(v54) & 0x80000000) == 0)
    {
      goto LABEL_47;
    }
  }

  else
  {
    if (v63)
    {
      (*(*v63 + 40))(v63);
    }

    if ((SHIBYTE(v54) & 0x80000000) == 0)
    {
LABEL_47:
      if ((SHIBYTE(__p[0]) & 0x80000000) == 0)
      {
        goto LABEL_48;
      }

LABEL_73:
      operator delete(v52[0]);
      if ((buf[23] & 0x80000000) == 0)
      {
        goto LABEL_49;
      }

LABEL_74:
      operator delete(*buf);
      goto LABEL_49;
    }
  }

  operator delete(__p[1]);
  if (SHIBYTE(__p[0]) < 0)
  {
    goto LABEL_73;
  }

LABEL_48:
  if ((buf[23] & 0x80000000) != 0)
  {
    goto LABEL_74;
  }

LABEL_49:
  v32 = v2[1].__on_zero_shared_weak;
  v33 = operator new(0xB8uLL);
  *(v33 + 2) = 0;
  *(v33 + 1) = 0;
  *v33 = &unk_2A1E371F0;
  *(v33 + 3) = 0u;
  *(v33 + 4) = 0u;
  *(v33 + 5) = 0u;
  *(v33 + 6) = 0u;
  *(v33 + 7) = 0u;
  *(v33 + 8) = 0u;
  *(v33 + 9) = 0u;
  *(v33 + 10) = 0u;
  *(v33 + 3) = &unk_2A1E39AC8;
  *(v33 + 4) = v33 + 24;
  *(v33 + 21) = 0;
  *(v33 + 22) = 0;
  *(v33 + 20) = 0;
  *(v33 + 88) = 0;
  group[0] = (v33 + 24);
  group[1] = v33;
  atomic_fetch_add_explicit(v33 + 1, 1uLL, memory_order_relaxed);
  atomic_fetch_add_explicit(v33 + 2, 1uLL, memory_order_relaxed);
  *(v33 + 5) = v33;
  if (!atomic_fetch_add(v33 + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    v34 = v33;
    (*(*v33 + 16))();
    std::__shared_weak_count::__release_weak(v34);
  }

  *buf = *group;
  group[0] = 0;
  group[1] = 0;
  abb::router::Server::addTransport();
  v35 = *&buf[8];
  if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v35->__on_zero_shared)(v35);
    std::__shared_weak_count::__release_weak(v35);
  }

  v36 = group[1];
  if (group[1] && !atomic_fetch_add(&group[1][1], 0xFFFFFFFFFFFFFFFFLL))
  {
    (v36->__on_zero_shared)(v36);
    std::__shared_weak_count::__release_weak(v36);
  }

  v37 = dispatch_group_create();
  v38 = v37;
  v39 = v2[1].__on_zero_shared_weak;
  group[0] = v37;
  if (v37)
  {
    dispatch_retain(v37);
    dispatch_group_enter(v38);
  }

  abb::router::Server::init();
  if (group[0])
  {
    dispatch_group_leave(group[0]);
    if (group[0])
    {
      dispatch_release(group[0]);
    }
  }

  if (v38)
  {
    dispatch_release(v38);
  }

  std::__shared_weak_count::__release_weak(v12);
LABEL_65:
  operator delete(v1);
  v40 = a1;
  if (a1)
  {
    v41 = a1[2];
    if (v41 && !atomic_fetch_add(&v41->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v41->__on_zero_shared)(v41);
      std::__shared_weak_count::__release_weak(v41);
      v40 = a1;
    }

    operator delete(v40);
  }

  v42 = *MEMORY[0x29EDCA608];
}

void sub_2972EDA04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, dispatch_group_t group, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  std::function<void ()(xpc::dict)>::~function(v34 - 128);
  support::ui::NotificationInfo::~NotificationInfo(&__p);
  std::__shared_weak_count::__release_weak(v33);
  operator delete(v32);
  std::unique_ptr<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>(WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void sub_2972EDB08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  operator delete(v9);
  std::unique_ptr<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>(WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::function<void ()(xpc::dict)>::~function(uint64_t a1)
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

uint64_t std::__function::__func<MipcTransportService::init(void)::$_0::operator() const(void)::{lambda(abb::router::Error,std::string const&)#1},std::allocator<MipcTransportService::init(void)::$_0::operator() const(void)::{lambda(abb::router::Error,std::string const&)#1}>,void ()(abb::router::Error,std::string const&)>::~__func(uint64_t result)
{
  *result = &unk_2A1E37050;
  if (*(result + 24))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 24));
    return v1;
  }

  return result;
}

void std::__function::__func<MipcTransportService::init(void)::$_0::operator() const(void)::{lambda(abb::router::Error,std::string const&)#1},std::allocator<MipcTransportService::init(void)::$_0::operator() const(void)::{lambda(abb::router::Error,std::string const&)#1}>,void ()(abb::router::Error,std::string const&)>::~__func(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E37050;
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

char *std::__function::__func<MipcTransportService::init(void)::$_0::operator() const(void)::{lambda(abb::router::Error,std::string const&)#1},std::allocator<MipcTransportService::init(void)::$_0::operator() const(void)::{lambda(abb::router::Error,std::string const&)#1}>,void ()(abb::router::Error,std::string const&)>::__clone(uint64_t a1)
{
  result = operator new(0x20uLL);
  *result = &unk_2A1E37050;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<MipcTransportService::init(void)::$_0::operator() const(void)::{lambda(abb::router::Error,std::string const&)#1},std::allocator<MipcTransportService::init(void)::$_0::operator() const(void)::{lambda(abb::router::Error,std::string const&)#1}>,void ()(abb::router::Error,std::string const&)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A1E37050;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<MipcTransportService::init(void)::$_0::operator() const(void)::{lambda(abb::router::Error,std::string const&)#1},std::allocator<MipcTransportService::init(void)::$_0::operator() const(void)::{lambda(abb::router::Error,std::string const&)#1}>,void ()(abb::router::Error,std::string const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<MipcTransportService::init(void)::$_0::operator() const(void)::{lambda(abb::router::Error,std::string const&)#1},std::allocator<MipcTransportService::init(void)::$_0::operator() const(void)::{lambda(abb::router::Error,std::string const&)#1}>,void ()(abb::router::Error,std::string const&)>::destroy_deallocate(std::__shared_weak_count **a1)
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

void std::__function::__func<MipcTransportService::init(void)::$_0::operator() const(void)::{lambda(abb::router::Error,std::string const&)#1},std::allocator<MipcTransportService::init(void)::$_0::operator() const(void)::{lambda(abb::router::Error,std::string const&)#1}>,void ()(abb::router::Error,std::string const&)>::operator()(void *a1, int *a2, uint64_t a3)
{
  v4 = a1[3];
  if (v4)
  {
    v6 = *a2;
    v7 = a1[1];
    v8 = std::__shared_weak_count::lock(v4);
    v21 = v8;
    if (v8)
    {
      v9 = a1[2];
      v20 = v9;
      if (!v9)
      {
LABEL_15:
        if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v17 = v8;
          (v8->__on_zero_shared)();
          std::__shared_weak_count::__release_weak(v17);
        }

        return;
      }

      v18 = v7;
      if (*(a3 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *a3, *(a3 + 8));
      }

      else
      {
        __p = *a3;
      }

      v10 = v9[4];
      if (!v10 || (v11 = v9[3], (v12 = std::__shared_weak_count::lock(v10)) == 0))
      {
        std::__throw_bad_weak_ptr[abi:ne200100]();
      }

      v13 = v12;
      v14 = operator new(0x28uLL);
      *v14 = v18;
      *(v14 + 2) = v6;
      *(v14 + 16) = __p;
      memset(&__p, 0, sizeof(__p));
      v15 = v9[5];
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      v16 = operator new(0x18uLL);
      *v16 = v14;
      v16[1] = v11;
      v16[2] = v13;
      dispatch_async_f(v15, v16, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI20MipcTransportServiceE15execute_wrappedIZZZNS3_4initEvENK3__0clEvENKUlN3abb6router5ErrorERKNSt3__112basic_stringIcNSA_11char_traitsIcEENSA_9allocatorIcEEEEE_clES9_SI_EUlvE_EEvOT_EUlvE_EEvP16dispatch_queue_sNSA_10unique_ptrISL_NSA_14default_deleteISL_EEEEENUlPvE_8__invokeESU_);
      if (atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_11;
        }
      }

      else
      {
        (v13->__on_zero_shared)(v13);
        std::__shared_weak_count::__release_weak(v13);
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_11:
          v8 = v21;
          if (!v21)
          {
            return;
          }

          goto LABEL_15;
        }
      }

      operator delete(__p.__r_.__value_.__l.__data_);
      v8 = v21;
      if (!v21)
      {
        return;
      }

      goto LABEL_15;
    }
  }
}

void sub_2972EDF40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<MipcTransportService::init(void)::$_0::operator() const(void)::{lambda(abb::router::Error,std::string const&)#1},std::allocator<MipcTransportService::init(void)::$_0::operator() const(void)::{lambda(abb::router::Error,std::string const&)#1}>,void ()(abb::router::Error,std::string const&)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZZN20MipcTransportService4initEvENK3$_0clEvEUlN3abb6router5ErrorERKNSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZZN20MipcTransportService4initEvENK3$_0clEvEUlN3abb6router5ErrorERKNSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZZN20MipcTransportService4initEvENK3$_0clEvEUlN3abb6router5ErrorERKNSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZZN20MipcTransportService4initEvENK3$_0clEvEUlN3abb6router5ErrorERKNSt3__112basic_stringIcNS4_11char_traitsIcEENS4_9allocatorIcEEEEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI20MipcTransportServiceE15execute_wrappedIZZZNS3_4initEvENK3__0clEvENKUlN3abb6router5ErrorERKNSt3__112basic_stringIcNSA_11char_traitsIcEENSA_9allocatorIcEEEEE_clES9_SI_EUlvE_EEvOT_EUlvE_EEvP16dispatch_queue_sNSA_10unique_ptrISL_NSA_14default_deleteISL_EEEEENUlPvE_8__invokeESU_(void *a1)
{
  v14 = *MEMORY[0x29EDCA608];
  v2 = *a1;
  v3 = **a1;
  v4 = v3[7];
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);
  if (v5)
  {
    v8 = v2 + 2;
    if (*(v2 + 39) < 0)
    {
      v8 = *v8;
    }

    *buf = 136315138;
    v13 = v8;
    _os_log_error_impl(&dword_297288000, v4, OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
    v6 = *(v2 + 2);
    if (v6)
    {
      v9 = v6 == 2;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v6 = *(v2 + 2);
    if (v6)
    {
      v7 = v6 == 2;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      goto LABEL_7;
    }
  }

  if (v6 == 1 && capabilities::abs::resetOnControlMessageTimeout(v5))
  {
    v6 = *(v2 + 2);
LABEL_7:
    MipcTransportService::resetBaseband_sync(v3, v2 + 16, v6);
  }

  if (*(v2 + 39) < 0)
  {
    operator delete(v2[2]);
  }

  operator delete(v2);
  v10 = a1[2];
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  operator delete(a1);
  v11 = *MEMORY[0x29EDCA608];
}

void sub_2972EE148(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10)
{
  std::unique_ptr<MipcTransportService::init(void)::$_0::operator() const(void)::{lambda(abb::router::Error,std::string const&)#1}::operator() const(abb::router::Error,std::string const&)::{lambda(void)#1},std::default_delete<MipcTransportService::init(void)::$_0::operator() const(void)::{lambda(abb::router::Error,std::string const&)#1}::operator() const(abb::router::Error,std::string const&)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>(WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *std::unique_ptr<MipcTransportService::init(void)::$_0::operator() const(void)::{lambda(abb::router::Error,std::string const&)#1}::operator() const(abb::router::Error,std::string const&)::{lambda(void)#1},std::default_delete<MipcTransportService::init(void)::$_0::operator() const(void)::{lambda(abb::router::Error,std::string const&)#1}::operator() const(abb::router::Error,std::string const&)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*(v1 + 39) < 0)
    {
      operator delete(*(v1 + 16));
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

uint64_t std::function<void ()(abb::router::Error,std::string const&)>::~function(uint64_t a1)
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

uint64_t std::__function::__func<MipcTransportService::init(void)::$_0::operator() const(void)::{lambda(xpc::dict)#1},std::allocator<MipcTransportService::init(void)::$_0::operator() const(void)::{lambda(xpc::dict)#1}>,void ()(xpc::dict)>::~__func(uint64_t result)
{
  *result = &unk_2A1E370E0;
  if (*(result + 24))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 24));
    return v1;
  }

  return result;
}

void std::__function::__func<MipcTransportService::init(void)::$_0::operator() const(void)::{lambda(xpc::dict)#1},std::allocator<MipcTransportService::init(void)::$_0::operator() const(void)::{lambda(xpc::dict)#1}>,void ()(xpc::dict)>::~__func(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E370E0;
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

char *std::__function::__func<MipcTransportService::init(void)::$_0::operator() const(void)::{lambda(xpc::dict)#1},std::allocator<MipcTransportService::init(void)::$_0::operator() const(void)::{lambda(xpc::dict)#1}>,void ()(xpc::dict)>::__clone(uint64_t a1)
{
  result = operator new(0x20uLL);
  *result = &unk_2A1E370E0;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<MipcTransportService::init(void)::$_0::operator() const(void)::{lambda(xpc::dict)#1},std::allocator<MipcTransportService::init(void)::$_0::operator() const(void)::{lambda(xpc::dict)#1}>,void ()(xpc::dict)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A1E370E0;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<MipcTransportService::init(void)::$_0::operator() const(void)::{lambda(xpc::dict)#1},std::allocator<MipcTransportService::init(void)::$_0::operator() const(void)::{lambda(xpc::dict)#1}>,void ()(xpc::dict)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<MipcTransportService::init(void)::$_0::operator() const(void)::{lambda(xpc::dict)#1},std::allocator<MipcTransportService::init(void)::$_0::operator() const(void)::{lambda(xpc::dict)#1}>,void ()(xpc::dict)>::destroy_deallocate(std::__shared_weak_count **a1)
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

void std::__function::__func<MipcTransportService::init(void)::$_0::operator() const(void)::{lambda(xpc::dict)#1},std::allocator<MipcTransportService::init(void)::$_0::operator() const(void)::{lambda(xpc::dict)#1}>,void ()(xpc::dict)>::operator()(void *a1, void **a2)
{
  v3 = *a2;
  *a2 = xpc_null_create();
  v4 = a1[3];
  if (v4)
  {
    v5 = a1[1];
    v6 = std::__shared_weak_count::lock(v4);
    if (v6)
    {
      v7 = v6;
      v8 = a1[2];
      if (v8)
      {
        if (v3)
        {
          xpc_retain(v3);
          v9 = v3;
          v10 = v8[4];
          if (!v10)
          {
LABEL_15:
            std::__throw_bad_weak_ptr[abi:ne200100]();
          }
        }

        else
        {
          v9 = xpc_null_create();
          v10 = v8[4];
          if (!v10)
          {
            goto LABEL_15;
          }
        }

        v11 = v8[3];
        v12 = std::__shared_weak_count::lock(v10);
        if (!v12)
        {
          goto LABEL_15;
        }

        v13 = v12;
        v14 = operator new(0x10uLL);
        *v14 = v5;
        v14[1] = v9;
        v15 = xpc_null_create();
        v16 = v8[5];
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        v17 = operator new(0x18uLL);
        *v17 = v14;
        v17[1] = v11;
        v17[2] = v13;
        dispatch_async_f(v16, v17, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI20MipcTransportServiceE15execute_wrappedIZZZNS3_4initEvENK3__0clEvENKUlN3xpc4dictEE_clES8_EUlvE_EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrISB_NSG_14default_deleteISB_EEEEENUlPvE_8__invokeESL_);
        if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v13->__on_zero_shared)(v13);
          std::__shared_weak_count::__release_weak(v13);
        }

        xpc_release(v15);
      }

      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
      }
    }
  }

  xpc_release(v3);
}

uint64_t std::__function::__func<MipcTransportService::init(void)::$_0::operator() const(void)::{lambda(xpc::dict)#1},std::allocator<MipcTransportService::init(void)::$_0::operator() const(void)::{lambda(xpc::dict)#1}>,void ()(xpc::dict)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZZN20MipcTransportService4initEvENK3$_0clEvEUlN3xpc4dictEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZZN20MipcTransportService4initEvENK3$_0clEvEUlN3xpc4dictEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZZN20MipcTransportService4initEvENK3$_0clEvEUlN3xpc4dictEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZZN20MipcTransportService4initEvENK3$_0clEvEUlN3xpc4dictEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI20MipcTransportServiceE15execute_wrappedIZZZNS3_4initEvENK3__0clEvENKUlN3xpc4dictEE_clES8_EUlvE_EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrISB_NSG_14default_deleteISB_EEEEENUlPvE_8__invokeESL_(uint64_t **a1)
{
  v11 = *MEMORY[0x29EDCA608];
  v2 = *a1;
  v3 = **a1;
  memset(__p, 170, sizeof(__p));
  xpc::object::to_string(__p, (v2 + 1));
  v4 = *(v3 + 56);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = __p;
    if (SHIBYTE(__p[2]) < 0)
    {
      v5 = __p[0];
    }

    *buf = 136315138;
    v10 = v5;
    _os_log_impl(&dword_297288000, v4, OS_LOG_TYPE_DEFAULT, "#I Mipc Metric Summary: %s", buf, 0xCu);
  }

  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  xpc_release(v2[1]);
  operator delete(v2);
  v6 = a1[2];
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  operator delete(a1);
  v7 = *MEMORY[0x29EDCA608];
}

void sub_2972EE75C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

xpc_object_t **std::unique_ptr<MipcTransportService::init(void)::$_0::operator() const(void)::{lambda(xpc::dict)#1}::operator() const(xpc::dict)::{lambda(void)#1},std::default_delete<MipcTransportService::init(void)::$_0::operator() const(void)::{lambda(xpc::dict)#1}::operator() const(xpc::dict)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](xpc_object_t **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    xpc_release(v1[1]);
    operator delete(v1);
    return v2;
  }

  return result;
}

uint64_t std::__function::__func<MipcTransportService::init(void)::$_0::operator() const(void)::{lambda(xpc::dict)#2},std::allocator<MipcTransportService::init(void)::$_0::operator() const(void)::{lambda(xpc::dict)#2}>,void ()(xpc::dict)>::~__func(uint64_t result)
{
  *result = &unk_2A1E37170;
  if (*(result + 24))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 24));
    return v1;
  }

  return result;
}

void std::__function::__func<MipcTransportService::init(void)::$_0::operator() const(void)::{lambda(xpc::dict)#2},std::allocator<MipcTransportService::init(void)::$_0::operator() const(void)::{lambda(xpc::dict)#2}>,void ()(xpc::dict)>::~__func(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E37170;
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

char *std::__function::__func<MipcTransportService::init(void)::$_0::operator() const(void)::{lambda(xpc::dict)#2},std::allocator<MipcTransportService::init(void)::$_0::operator() const(void)::{lambda(xpc::dict)#2}>,void ()(xpc::dict)>::__clone(uint64_t a1)
{
  result = operator new(0x20uLL);
  *result = &unk_2A1E37170;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<MipcTransportService::init(void)::$_0::operator() const(void)::{lambda(xpc::dict)#2},std::allocator<MipcTransportService::init(void)::$_0::operator() const(void)::{lambda(xpc::dict)#2}>,void ()(xpc::dict)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A1E37170;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<MipcTransportService::init(void)::$_0::operator() const(void)::{lambda(xpc::dict)#2},std::allocator<MipcTransportService::init(void)::$_0::operator() const(void)::{lambda(xpc::dict)#2}>,void ()(xpc::dict)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<MipcTransportService::init(void)::$_0::operator() const(void)::{lambda(xpc::dict)#2},std::allocator<MipcTransportService::init(void)::$_0::operator() const(void)::{lambda(xpc::dict)#2}>,void ()(xpc::dict)>::destroy_deallocate(std::__shared_weak_count **a1)
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

void std::__function::__func<MipcTransportService::init(void)::$_0::operator() const(void)::{lambda(xpc::dict)#2},std::allocator<MipcTransportService::init(void)::$_0::operator() const(void)::{lambda(xpc::dict)#2}>,void ()(xpc::dict)>::operator()(void *a1, void **a2)
{
  v3 = *a2;
  *a2 = xpc_null_create();
  v4 = a1[3];
  if (v4)
  {
    v5 = a1[1];
    v6 = std::__shared_weak_count::lock(v4);
    if (v6)
    {
      v7 = v6;
      v8 = a1[2];
      if (v8)
      {
        if (v3)
        {
          xpc_retain(v3);
          v9 = v3;
          v10 = v8[4];
          if (!v10)
          {
LABEL_15:
            std::__throw_bad_weak_ptr[abi:ne200100]();
          }
        }

        else
        {
          v9 = xpc_null_create();
          v10 = v8[4];
          if (!v10)
          {
            goto LABEL_15;
          }
        }

        v11 = v8[3];
        v12 = std::__shared_weak_count::lock(v10);
        if (!v12)
        {
          goto LABEL_15;
        }

        v13 = v12;
        v14 = operator new(0x10uLL);
        *v14 = v5;
        v14[1] = v9;
        v15 = xpc_null_create();
        v16 = v8[5];
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        v17 = operator new(0x18uLL);
        *v17 = v14;
        v17[1] = v11;
        v17[2] = v13;
        dispatch_async_f(v16, v17, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI20MipcTransportServiceE15execute_wrappedIZZZNS3_4initEvENK3__0clEvENKUlN3xpc4dictEE0_clES8_EUlvE_EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrISB_NSG_14default_deleteISB_EEEEENUlPvE_8__invokeESL_);
        if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v13->__on_zero_shared)(v13);
          std::__shared_weak_count::__release_weak(v13);
        }

        xpc_release(v15);
      }

      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
      }
    }
  }

  xpc_release(v3);
}

uint64_t std::__function::__func<MipcTransportService::init(void)::$_0::operator() const(void)::{lambda(xpc::dict)#2},std::allocator<MipcTransportService::init(void)::$_0::operator() const(void)::{lambda(xpc::dict)#2}>,void ()(xpc::dict)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZZN20MipcTransportService4initEvENK3$_0clEvEUlN3xpc4dictEE0_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZZN20MipcTransportService4initEvENK3$_0clEvEUlN3xpc4dictEE0_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZZN20MipcTransportService4initEvENK3$_0clEvEUlN3xpc4dictEE0_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZZN20MipcTransportService4initEvENK3$_0clEvEUlN3xpc4dictEE0_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI20MipcTransportServiceE15execute_wrappedIZZZNS3_4initEvENK3__0clEvENKUlN3xpc4dictEE0_clES8_EUlvE_EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrISB_NSG_14default_deleteISB_EEEEENUlPvE_8__invokeESL_(uint64_t **a1)
{
  v2 = *a1;
  v3 = **a1;
  if (*(v3 + 168))
  {
    memset(__p, 170, sizeof(__p));
    xpc::object::to_string(__p, (v2 + 1));
    v4 = SHIBYTE(__p[2]) >= 0 ? __p : __p[0];
    v5 = SHIBYTE(__p[2]) >= 0 ? HIBYTE(__p[2]) : __p[1];
    (*(**(v3 + 168) + 72))(*(v3 + 168), v4, v5);
    (*(**(v3 + 168) + 72))(*(v3 + 168), "\n", 1);
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }
  }

  xpc_release(v2[1]);
  operator delete(v2);
  v6 = a1[2];
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  operator delete(a1);
}

void sub_2972EECE4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void *);
  std::unique_ptr<MipcTransportService::init(void)::$_0::operator() const(void)::{lambda(xpc::dict)#2}::operator() const(xpc::dict)::{lambda(void)#1},std::default_delete<MipcTransportService::init(void)::$_0::operator() const(void)::{lambda(xpc::dict)#2}::operator() const(xpc::dict)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](va1);
  std::unique_ptr<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>(WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2972EED04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, xpc_object_t *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  std::unique_ptr<MipcTransportService::init(void)::$_0::operator() const(void)::{lambda(xpc::dict)#2}::operator() const(xpc::dict)::{lambda(void)#1},std::default_delete<MipcTransportService::init(void)::$_0::operator() const(void)::{lambda(xpc::dict)#2}::operator() const(xpc::dict)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&a11);
  std::unique_ptr<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>(WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

xpc_object_t **std::unique_ptr<MipcTransportService::init(void)::$_0::operator() const(void)::{lambda(xpc::dict)#2}::operator() const(xpc::dict)::{lambda(void)#1},std::default_delete<MipcTransportService::init(void)::$_0::operator() const(void)::{lambda(xpc::dict)#2}::operator() const(xpc::dict)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](xpc_object_t **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    xpc_release(v1[1]);
    operator delete(v1);
    return v2;
  }

  return result;
}

void std::__shared_ptr_emplace<abb::router::MipcTransport>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E371F0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t ___ZNK3ctu20SharedSynchronizableI20MipcTransportServiceE20execute_wrapped_syncIZNS1_6engageEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS5__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  v3 = *(*v1 + 32);
  if (!v3 || (v4 = v2[3], (v5 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v6 = v5;
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v7 = v2[7];
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v6);
  v7 = v2[7];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
LABEL_5:
    *buf = 0;
    _os_log_impl(&dword_297288000, v7, OS_LOG_TYPE_DEFAULT, "#I Requesting start transition", buf, 2u);
  }

LABEL_6:
  *buf = MEMORY[0x29EDCA5F8];
  v19 = 1174405120;
  v20 = ___ZZN20MipcTransportService6engageEvENK3__0clEv_block_invoke;
  v21 = &__block_descriptor_tmp_61_0;
  v22 = v2;
  v23 = v4;
  v24 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v8 = operator new(0x10uLL);
  v9 = _Block_copy(buf);
  *v8 = "Watchdog timed out";
  TelephonyBasebandWatchdogStart();
  if (v9)
  {
    _Block_release(v9);
  }

  v10 = v2[14];
  v2[14] = v8;
  if (v10)
  {
    TelephonyBasebandWatchdogStop();
    operator delete(v10);
  }

  v11 = dispatch_group_create();
  v12 = v11;
  v13 = v2[9];
  group = v11;
  if (v11)
  {
    dispatch_retain(v11);
    dispatch_group_enter(v12);
  }

  abb::router::Server::start();
  if (group)
  {
    dispatch_group_leave(group);
    dispatch_release(group);
  }

  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v14 = v2[5];
  v15 = operator new(0x18uLL);
  *v15 = v2;
  v15[1] = v4;
  v15[2] = v6;
  dispatch_group_notify_f(v12, v14, v15, dispatch::detail::group_notify<MipcTransportService::engage(void)::$_0::operator() const(void)::{lambda(void)#1}>(dispatch_group_s *,dispatch_queue_s *,MipcTransportService::engage(void)::$_0::operator() const(void)::{lambda(void)#1} &&,std::integral_constant<BOOL,false>)::{lambda(void *)#1}::__invoke);
  if (v12)
  {
    dispatch_release(v12);
  }

  if (v24)
  {
    std::__shared_weak_count::__release_weak(v24);
  }

  std::__shared_weak_count::__release_weak(v6);
  return 1;
}

void sub_2972EF060(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_group_t group, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  std::__shared_weak_count::__release_weak(v17);
  if (v18)
  {
    dispatch_release(v18);
    v20 = a17;
    if (!a17)
    {
LABEL_3:
      std::__shared_weak_count::__release_weak(v17);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v20 = a17;
    if (!a17)
    {
      goto LABEL_3;
    }
  }

  std::__shared_weak_count::__release_weak(v20);
  std::__shared_weak_count::__release_weak(v17);
  _Unwind_Resume(a1);
}

void ___ZZN20MipcTransportService6engageEvENK3__0clEv_block_invoke(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (!a1[5])
      {
        goto LABEL_16;
      }

      v6 = v3[4];
      if (!v6 || (v7 = v3[3], (v8 = std::__shared_weak_count::lock(v6)) == 0))
      {
        std::__throw_bad_weak_ptr[abi:ne200100]();
      }

      v9 = v8;
      v10 = operator new(8uLL);
      *v10 = v3;
      v11 = v3[5];
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      v12 = operator new(0x18uLL);
      *v12 = v10;
      v12[1] = v7;
      v12[2] = v9;
      dispatch_async_f(v11, v12, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI20MipcTransportServiceE15execute_wrappedIZZZNS3_6engageEvENK3__0clEvEUb_EUlvE_EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS8_NSD_14default_deleteIS8_EEEEENUlPvE_8__invokeESI_);
      if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
        if (atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          return;
        }
      }

      else
      {
LABEL_16:
        if (atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          return;
        }
      }

      (v5->__on_zero_shared)(v5);

      std::__shared_weak_count::__release_weak(v5);
    }
  }
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI20MipcTransportServiceE15execute_wrappedIZZZNS3_6engageEvENK3__0clEvEUb_EUlvE_EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS8_NSD_14default_deleteIS8_EEEEENUlPvE_8__invokeESI_(uint64_t **a1)
{
  v2 = *a1;
  v3 = **a1;
  if (*(v3 + 64) != 2)
  {
    __p = operator new(0x20uLL);
    v6 = xmmword_29742C690;
    strcpy(__p, "Transport engage timeout");
    MipcTransportService::resetBaseband_sync(v3, &__p, 1);
    if (SHIBYTE(v6) < 0)
    {
      operator delete(__p);
    }
  }

  operator delete(v2);
  v4 = a1[2];
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  operator delete(a1);
}

void sub_2972EF374(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    operator delete(v15);
    std::unique_ptr<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>(WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
    _Unwind_Resume(a1);
  }

  operator delete(v15);
  std::unique_ptr<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>(WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void **std::unique_ptr<MipcTransportService::engage(void)::$_0::operator() const(void)::{lambda(void)#1},std::default_delete<MipcTransportService::engage(void)::$_0::operator() const(void)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](void **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = v1[2];
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void dispatch::detail::group_notify<MipcTransportService::engage(void)::$_0::operator() const(void)::{lambda(void)#1}>(dispatch_group_s *,dispatch_queue_s *,MipcTransportService::engage(void)::$_0::operator() const(void)::{lambda(void)#1} &&,std::integral_constant<BOOL,false>)::{lambda(void *)#1}::__invoke(uint64_t *a1)
{
  v2 = a1[2];
  if (!v2)
  {
    goto LABEL_34;
  }

  v3 = *a1;
  v4 = std::__shared_weak_count::lock(v2);
  v27 = v4;
  if (!v4)
  {
    goto LABEL_34;
  }

  if (a1[1])
  {
    v5 = *(v3 + 56);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_297288000, v5, OS_LOG_TYPE_DEFAULT, "#I Start transition complete", buf, 2u);
    }

    *(v3 + 64) = 2;
    v6 = *(v3 + 112);
    *(v3 + 112) = 0;
    if (v6)
    {
      TelephonyBasebandWatchdogStop();
      operator delete(v6);
    }

    v24 = 0;
    v25 = 0;
    v7 = *(v3 + 128);
    if (!v7)
    {
      goto LABEL_28;
    }

    v25 = std::__shared_weak_count::lock(v7);
    if (!v25)
    {
      goto LABEL_31;
    }

    v8 = *(v3 + 120);
    v24 = v8;
    if (!v8)
    {
LABEL_28:
      v15 = v25;
      if (v25 && !atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v15->__on_zero_shared)(v15);
        std::__shared_weak_count::__release_weak(v15);
      }

LABEL_31:
      v4 = v27;
      if (!v27)
      {
        goto LABEL_34;
      }

      goto LABEL_32;
    }

    v9 = *(v3 + 56);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_297288000, v9, OS_LOG_TYPE_DEFAULT, "#I ----------------- TransportIsReady -----------------", buf, 2u);
    }

    v10 = abm::kEventTransportIsReady[0];
    v11 = strlen(abm::kEventTransportIsReady[0]);
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
      v22 = v12;
      v23 = v14 | 0x8000000000000000;
      *buf = v13;
    }

    else
    {
      HIBYTE(v23) = v11;
      v13 = buf;
      if (!v11)
      {
        goto LABEL_22;
      }
    }

    memmove(v13, v10, v12);
LABEL_22:
    *(v13 + v12) = 0;
    aBlock = 0;
    cf = 0;
    Service::broadcastEvent(v8, buf, &cf, &aBlock);
    if (aBlock)
    {
      _Block_release(aBlock);
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if (SHIBYTE(v23) < 0)
    {
      operator delete(*buf);
    }

    goto LABEL_28;
  }

LABEL_32:
  if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v16 = v4;
    (v4->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v16);
  }

LABEL_34:
  if (a1)
  {
    v17 = a1[2];
    if (v17)
    {
      std::__shared_weak_count::__release_weak(v17);
    }

    operator delete(a1);
  }
}

void sub_2972EF694(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *aBlock, const void *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&a12);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](&a20);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](v20 - 64);
  std::unique_ptr<MipcTransportService::engage(void)::$_0::operator() const(void)::{lambda(void)#1},std::default_delete<MipcTransportService::engage(void)::$_0::operator() const(void)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

uint64_t ___ZN8dispatch9sync_implIRU13block_pointerFbvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS4_17integral_constantIbLb0EEE_block_invoke_0(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

uint64_t ___ZN8dispatch19async_and_wait_implIRU13block_pointerFbvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS4_17integral_constantIbLb0EEE_block_invoke_0(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

void dispatch::async<void ctu::SharedSynchronizable<MipcTransportService>::execute_wrapped<MipcTransportService::enterLowPower(dispatch::group_session)::$_0>(MipcTransportService::enterLowPower(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<MipcTransportService::enterLowPower(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<MipcTransportService::enterLowPower(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke(std::__shared_weak_count **a1)
{
  v1 = *a1;
  __p = *a1;
  v2 = (*a1)->__vftable;
  on_zero_shared = v2[1].__on_zero_shared;
  if (os_log_type_enabled(on_zero_shared, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_297288000, on_zero_shared, OS_LOG_TYPE_DEFAULT, "#I Requesting sleep transition", buf, 2u);
  }

  LOBYTE(v2[4].~__shared_weak_count) = 0;
  if (SHIBYTE(v2[3].__on_zero_shared_weak) < 0)
  {
    v2[3].__get_deleter = 0;
    *v2[3].__on_zero_shared = 0;
    v4 = v2[2].~__shared_weak_count_0;
    if (!v4)
    {
      goto LABEL_15;
    }
  }

  else
  {
    HIBYTE(v2[3].__on_zero_shared_weak) = 0;
    LOBYTE(v2[3].__on_zero_shared) = 0;
    v4 = v2[2].~__shared_weak_count_0;
    if (!v4)
    {
      goto LABEL_15;
    }
  }

  if (v2[2].__on_zero_shared)
  {
    v5 = _Block_copy(v4);
    v6 = v5;
    v7 = v2[2].__on_zero_shared;
    *buf = MEMORY[0x29EDCA5F8];
    v28 = 1174405120;
    v29 = ___ZNK8dispatch8callbackIU13block_pointerFv10WakeReasonEEclIJNS1_6StatusEEEEvDpT__block_invoke;
    v30 = &__block_descriptor_tmp_67_1;
    if (v5)
    {
      v8 = _Block_copy(v5);
    }

    else
    {
      v8 = 0;
    }

    aBlock = v8;
    v32 = 2;
    dispatch_async(v7, buf);
    if (aBlock)
    {
      _Block_release(aBlock);
    }

    if (v6)
    {
      _Block_release(v6);
    }
  }

LABEL_15:
  v9 = dispatch_group_create();
  v10 = v9;
  on_zero_shared_weak = v2[1].__on_zero_shared_weak;
  group = v9;
  if (v9)
  {
    dispatch_retain(v9);
    dispatch_group_enter(v10);
  }

  abb::router::Server::sleep();
  if (group)
  {
    dispatch_group_leave(group);
    dispatch_release(group);
  }

  v12 = v2->__on_zero_shared_weak;
  if (!v12 || (get_deleter = v2->__get_deleter, (v14 = std::__shared_weak_count::lock(v12)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v15 = v14;
  p_shared_weak_owners = &v14->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v15);
  }

  *buf = v2;
  v28 = get_deleter;
  v29 = v15;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  shared_owners = v1->__shared_owners_;
  v30 = shared_owners;
  if (shared_owners)
  {
    dispatch_retain(shared_owners);
    dispatch_group_enter(shared_owners);
  }

  v18 = v2[1].~__shared_weak_count;
  v19 = operator new(0x20uLL);
  *v19 = v2;
  v19[1] = get_deleter;
  v19[2] = v15;
  v19[3] = shared_owners;
  dispatch_group_notify_f(v10, v18, v19, dispatch::detail::group_notify<MipcTransportService::enterLowPower(dispatch::group_session)::$_0::operator() const(void)::{lambda(void)#1}>(dispatch_group_s *,dispatch_queue_s *,MipcTransportService::enterLowPower(dispatch::group_session)::$_0::operator() const(void)::{lambda(void)#1} &&,std::integral_constant<BOOL,false>)::{lambda(void *)#1}::__invoke);
  std::__shared_weak_count::__release_weak(v15);
  if (v10)
  {
    dispatch_release(v10);
  }

  if (__p)
  {
    v20 = __p->__shared_owners_;
    if (v20)
    {
      dispatch_group_leave(v20);
      v21 = __p->__shared_owners_;
      if (v21)
      {
        dispatch_release(v21);
      }
    }

    operator delete(__p);
  }

  v22 = a1;
  if (a1)
  {
    v23 = a1[2];
    if (v23)
    {
      if (!atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v23->__on_zero_shared)(v23);
        std::__shared_weak_count::__release_weak(v23);
        v22 = a1;
      }
    }

    operator delete(v22);
  }
}

void sub_2972EFA74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, dispatch_group_t group, char a13)
{
  MipcTransportService::enterLowPower(dispatch::group_session)::$_0::operator() const(void)::{lambda(void)#1}::~(&a13);
  std::__shared_weak_count::__release_weak(v14);
  if (v13)
  {
    dispatch_release(v13);
  }

  std::unique_ptr<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0,std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a11);
  std::unique_ptr<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>(WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

uint64_t MipcTransportService::enterLowPower(dispatch::group_session)::$_0::operator() const(void)::{lambda(void)#1}::~(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = *(a1 + 24);
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

void ___ZNK8dispatch8callbackIU13block_pointerFv10WakeReasonEEclIJNS1_6StatusEEEEvDpT__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  object = xpc_null_create();
  (*(v1 + 16))(v1, &v2);
  xpc_release(object);
}

void *__copy_helper_block_e8_32c54_ZTSN8dispatch5blockIU13block_pointerFv10WakeReasonEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 32) = result;
  return result;
}

void __destroy_helper_block_e8_32c54_ZTSN8dispatch5blockIU13block_pointerFv10WakeReasonEEE(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    _Block_release(v1);
  }
}

void dispatch::detail::group_notify<MipcTransportService::enterLowPower(dispatch::group_session)::$_0::operator() const(void)::{lambda(void)#1}>(dispatch_group_s *,dispatch_queue_s *,MipcTransportService::enterLowPower(dispatch::group_session)::$_0::operator() const(void)::{lambda(void)#1} &&,std::integral_constant<BOOL,false>)::{lambda(void *)#1}::__invoke(uint64_t *__p)
{
  v2 = __p[2];
  if (v2)
  {
    v3 = *__p;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (__p[1])
      {
        v6 = *(v3 + 56);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *v10 = 0;
          _os_log_impl(&dword_297288000, v6, OS_LOG_TYPE_DEFAULT, "#I Sleep transition complete", v10, 2u);
        }
      }

      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }

  v7 = __p[3];
  if (v7)
  {
    dispatch_group_leave(v7);
    v8 = __p[3];
    if (v8)
    {
      dispatch_release(v8);
    }
  }

  v9 = __p[2];
  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }

  operator delete(__p);
}

uint64_t ___ZNK3ctu20SharedSynchronizableI20MipcTransportServiceE20execute_wrapped_syncIZNS1_8tearDownEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS5__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  v3 = *(*v1 + 112);
  *(*v1 + 112) = 0;
  if (v3)
  {
    TelephonyBasebandWatchdogStop();
    operator delete(v3);
  }

  if (*(v2 + 64))
  {
    MipcTransportService::cancelWakeRequest_sync(v2);
    v4 = *(v2 + 56);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_297288000, v4, OS_LOG_TYPE_DEFAULT, "#I Teardown mipc router transport", buf, 2u);
    }

    v5 = dispatch_group_create();
    v6 = v5;
    v7 = *(v2 + 72);
    group = v5;
    if (v5)
    {
      dispatch_retain(v5);
      dispatch_group_enter(v6);
    }

    abb::router::Server::abort();
    if (group)
    {
      dispatch_group_leave(group);
      dispatch_release(group);
    }

    *(v2 + 64) = 0;
    if (v6)
    {
      dispatch_release(v6);
    }

    return 1;
  }

  v9 = *(v2 + 56);
  if (!os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    return 1;
  }

  *v10 = 0;
  _os_log_impl(&dword_297288000, v9, OS_LOG_TYPE_DEFAULT, "#I Ignoring tear down request as transport state is already reset", v10, 2u);
  return 1;
}

void sub_2972EFE2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_group_t group)
{
  if (group)
  {
    dispatch_group_leave(group);
    dispatch_release(group);
  }

  if (v10)
  {
    dispatch_release(v10);
  }

  _Unwind_Resume(exception_object);
}

void dispatch::async<void ctu::SharedSynchronizable<MipcTransportService>::execute_wrapped<MipcTransportService::exitLowPower(dispatch::group_session)::$_0>(MipcTransportService::exitLowPower(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<MipcTransportService::exitLowPower(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<MipcTransportService::exitLowPower(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke(std::__shared_weak_count **a1)
{
  v1 = *a1;
  __p = *a1;
  v2 = (*a1)->__vftable;
  on_zero_shared = v2[1].__on_zero_shared;
  if (os_log_type_enabled(on_zero_shared, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_297288000, on_zero_shared, OS_LOG_TYPE_DEFAULT, "#I Requesting wake transition", buf, 2u);
  }

  if (LODWORD(v2[1].__get_deleter) == 2)
  {
    MipcTransportService::updateWakeReason_sync(v2);
    v4 = dispatch_group_create();
    v5 = v4;
    on_zero_shared_weak = v2[1].__on_zero_shared_weak;
    group = v4;
    if (v4)
    {
      dispatch_retain(v4);
      dispatch_group_enter(v5);
    }

    abb::router::Server::wakeup();
    if (group)
    {
      dispatch_group_leave(group);
      if (group)
      {
        dispatch_release(group);
      }
    }

    v7 = v2->__on_zero_shared_weak;
    if (!v7 || (get_deleter = v2->__get_deleter, (v9 = std::__shared_weak_count::lock(v7)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v10 = v9;
    p_shared_weak_owners = &v9->__shared_weak_owners_;
    atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v10);
    }

    *buf = v2;
    v23 = get_deleter;
    v24 = v10;
    atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
    shared_owners = v1->__shared_owners_;
    v25 = shared_owners;
    if (shared_owners)
    {
      dispatch_retain(shared_owners);
      dispatch_group_enter(shared_owners);
    }

    v13 = v2[1].~__shared_weak_count;
    v14 = operator new(0x20uLL);
    *v14 = v2;
    v14[1] = get_deleter;
    v14[2] = v10;
    v14[3] = shared_owners;
    dispatch_group_notify_f(v5, v13, v14, dispatch::detail::group_notify<MipcTransportService::exitLowPower(dispatch::group_session)::$_0::operator() const(void)::{lambda(void)#1}>(dispatch_group_s *,dispatch_queue_s *,MipcTransportService::exitLowPower(dispatch::group_session)::$_0::operator() const(void)::{lambda(void)#1} &&,std::integral_constant<BOOL,false>)::{lambda(void *)#1}::__invoke);
    std::__shared_weak_count::__release_weak(v10);
    if (v5)
    {
      dispatch_release(v5);
    }
  }

  else
  {
    v15 = v2[1].__on_zero_shared;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_297288000, v15, OS_LOG_TYPE_DEFAULT, "#I Skipping wake transition as baseband ready is pending", buf, 2u);
    }
  }

  if (__p)
  {
    v16 = __p->__shared_owners_;
    if (v16)
    {
      dispatch_group_leave(v16);
      v17 = __p->__shared_owners_;
      if (v17)
      {
        dispatch_release(v17);
      }
    }

    operator delete(__p);
  }

  v18 = a1;
  if (a1)
  {
    v19 = a1[2];
    if (v19)
    {
      if (!atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v19->__on_zero_shared)(v19);
        std::__shared_weak_count::__release_weak(v19);
        v18 = a1;
      }
    }

    operator delete(v18);
  }
}

void sub_2972F00E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, dispatch_group_t group)
{
  MipcTransportService::enterLowPower(dispatch::group_session)::$_0::operator() const(void)::{lambda(void)#1}::~(&a11);
  std::__shared_weak_count::__release_weak(v19);
  if (v18)
  {
    dispatch_release(v18);
  }

  std::unique_ptr<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0,std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>(WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void dispatch::detail::group_notify<MipcTransportService::exitLowPower(dispatch::group_session)::$_0::operator() const(void)::{lambda(void)#1}>(dispatch_group_s *,dispatch_queue_s *,MipcTransportService::exitLowPower(dispatch::group_session)::$_0::operator() const(void)::{lambda(void)#1} &&,std::integral_constant<BOOL,false>)::{lambda(void *)#1}::__invoke(uint64_t *__p)
{
  v2 = __p[2];
  if (v2)
  {
    v3 = *__p;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (__p[1])
      {
        v6 = *(v3 + 56);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *v10 = 0;
          _os_log_impl(&dword_297288000, v6, OS_LOG_TYPE_DEFAULT, "#I Wake transition complete", v10, 2u);
        }
      }

      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }

  v7 = __p[3];
  if (v7)
  {
    dispatch_group_leave(v7);
    v8 = __p[3];
    if (v8)
    {
      dispatch_release(v8);
    }
  }

  v9 = __p[2];
  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }

  operator delete(__p);
}

void dispatch::async<void ctu::SharedSynchronizable<MipcTransportService>::execute_wrapped<MipcTransportService::snapshot(std::string)::$_0>(MipcTransportService::snapshot(std::string)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<MipcTransportService::snapshot(std::string)::$_0,std::default_delete<MipcTransportService::snapshot(std::string)::$_0>>)::{lambda(void *)#1}::__invoke(std::__shared_weak_count **a1)
{
  v1 = *a1;
  v18 = *a1;
  v2 = (*a1)->__vftable;
  v3 = dispatch_group_create();
  v4 = v3;
  on_zero_shared_weak = v2[1].__on_zero_shared_weak;
  v22 = v3;
  if (v3)
  {
    dispatch_retain(v3);
    dispatch_group_enter(v4);
  }

  abb::router::Server::statedump();
  if (v22)
  {
    dispatch_group_leave(v22);
    dispatch_release(v22);
  }

  *&v19 = v2;
  v6 = v2->__on_zero_shared_weak;
  if (!v6 || (get_deleter = v2->__get_deleter, (v8 = std::__shared_weak_count::lock(v6)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  *(&v19 + 1) = get_deleter;
  v20 = v8;
  atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((SHIBYTE(v1[1].__vftable) & 0x80000000) == 0)
    {
LABEL_9:
      v9 = *&v1->__shared_owners_;
      __p.__r_.__value_.__r.__words[2] = v1[1].__vftable;
      *&__p.__r_.__value_.__l.__data_ = v9;
      goto LABEL_12;
    }
  }

  else
  {
    v10 = v8;
    (v8->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v10);
    if ((SHIBYTE(v1[1].__vftable) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }
  }

  std::string::__init_copy_ctor_external(&__p, v1->__shared_owners_, v1->__shared_weak_owners_);
LABEL_12:
  v11 = v2[1].~__shared_weak_count;
  v12 = operator new(0x30uLL);
  v13 = v12;
  *&v12->__r_.__value_.__l.__data_ = v19;
  v12->__r_.__value_.__r.__words[2] = v20;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v12 + 1, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v12[1] = __p;
  }

  dispatch_group_notify_f(v4, v11, v13, dispatch::detail::group_notify<MipcTransportService::snapshot(std::string)::$_0::operator() const(void)::{lambda(void)#1}>(dispatch_group_s *,dispatch_queue_s *,MipcTransportService::snapshot(std::string)::$_0::operator() const(void)::{lambda(void)#1} &&,std::integral_constant<BOOL,false>)::{lambda(void *)#1}::__invoke);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v4)
  {
    dispatch_release(v4);
  }

  v14 = v18;
  if (v18)
  {
    if (SHIBYTE(v18[1].__vftable) < 0)
    {
      operator delete(v18->__shared_owners_);
      v14 = v18;
    }

    operator delete(v14);
  }

  v15 = a1;
  if (a1)
  {
    v16 = a1[2];
    if (v16)
    {
      if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v16->__on_zero_shared)(v16);
        std::__shared_weak_count::__release_weak(v16);
        v15 = a1;
      }
    }

    operator delete(v15);
  }
}

void sub_2972F04AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int16 a11, char a12, char a13, uint64_t a14, std::__shared_weak_count *a15)
{
  v18 = v16[2];
  if (v18)
  {
    std::__shared_weak_count::__release_weak(v18);
  }

  operator delete(v16);
  MipcTransportService::snapshot(std::string)::$_0::operator() const(void)::{lambda(void)#1}::~(&a11);
  if (v15)
  {
    dispatch_release(v15);
  }

  std::unique_ptr<MipcTransportService::snapshot(std::string)::$_0,std::default_delete<MipcTransportService::snapshot(std::string)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>(WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *std::unique_ptr<MipcTransportService::snapshot(std::string)::$_0,std::default_delete<MipcTransportService::snapshot(std::string)::$_0>>::~unique_ptr[abi:ne200100](void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*(v1 + 31) < 0)
    {
      operator delete(*(v1 + 8));
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

uint64_t MipcTransportService::snapshot(std::string)::$_0::operator() const(void)::{lambda(void)#1}::~(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

uint64_t *std::unique_ptr<MipcTransportService::snapshot(std::string)::$_0::operator() const(void)::{lambda(void)#1},std::default_delete<MipcTransportService::snapshot(std::string)::$_0::operator() const(void)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(v2 + 47) < 0)
    {
      operator delete(*(v2 + 24));
    }

    v3 = *(v2 + 16);
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    operator delete(v2);
  }

  return a1;
}

void dispatch::detail::group_notify<MipcTransportService::snapshot(std::string)::$_0::operator() const(void)::{lambda(void)#1}>(dispatch_group_s *,dispatch_queue_s *,MipcTransportService::snapshot(std::string)::$_0::operator() const(void)::{lambda(void)#1} &&,std::integral_constant<BOOL,false>)::{lambda(void *)#1}::__invoke(uint64_t *a1)
{
  v46 = *MEMORY[0x29EDCA608];
  v36 = a1;
  v2 = a1[2];
  if (!v2)
  {
    goto LABEL_57;
  }

  v3 = *a1;
  v4 = std::__shared_weak_count::lock(v2);
  v40 = v4;
  if (!v4)
  {
    goto LABEL_57;
  }

  if (!a1[1])
  {
    goto LABEL_55;
  }

  v5 = *(v3 + 168);
  if (!v5)
  {
    goto LABEL_55;
  }

  v6 = v4;
  (*(*v5 + 16))(*(v3 + 168));
  memset(&__p, 170, sizeof(__p));
  v7 = *(a1 + 47);
  if (v7 >= 0)
  {
    v8 = *(a1 + 47);
  }

  else
  {
    v8 = a1[4];
  }

  v9 = v8 + 12;
  if (v8 + 12 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v9 < 0x17)
  {
    memset(&__p, 0, sizeof(__p));
    p_p = &__p;
    *(&__p.__r_.__value_.__s + 23) = v8 + 12;
    if (!v8)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if ((v9 | 7) == 0x17)
    {
      v10 = 25;
    }

    else
    {
      v10 = (v9 | 7) + 1;
    }

    p_p = operator new(v10);
    __p.__r_.__value_.__l.__size_ = v8 + 12;
    __p.__r_.__value_.__r.__words[2] = v10 | 0x8000000000000000;
    __p.__r_.__value_.__r.__words[0] = p_p;
  }

  if (v7 >= 0)
  {
    v12 = a1 + 3;
  }

  else
  {
    v12 = a1[3];
  }

  memmove(p_p, v12, v8);
LABEL_19:
  strcpy(p_p + v8, "-metric-mipc");
  v13 = operator new(0x48uLL);
  *buf = v13;
  *&buf[8] = xmmword_2974310F0;
  strcpy(v13, "/var/wireless/Library/Logs/AppleBasebandManager/metric.mipc.scratch/");
  qmemcpy(v35, "metric.mipc.scraBasebandManager/brary/Logs/Apple/var/wireless/Li", sizeof(v35));
  v14.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v14.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&block.st_blksize = v14;
  *block.st_qspare = v14;
  block.st_birthtimespec = v14;
  *&block.st_size = v14;
  block.st_ctimespec = v14;
  block.st_atimespec = v14;
  block.st_mtimespec = v14;
  *&block.st_dev = v14;
  *&block.st_uid = v14;
  if (stat(v13, &block))
  {
    LODWORD(v15) = 0;
  }

  else
  {
    if (buf[23] >= 0)
    {
      v16 = buf;
    }

    else
    {
      v16 = *buf;
    }

    v17 = opendir(v16);
    v15 = v17;
    if (v17)
    {
      v18 = readdir(v17);
      closedir(v15);
      LODWORD(v15) = v18 != 0;
    }
  }

  if ((buf[23] & 0x80000000) == 0)
  {
    if (!v15)
    {
      goto LABEL_52;
    }

LABEL_30:
    support::fs::getBasePath(&__p, &block);
    support::fs::createDir(&block, 0x1EDu, 1);
    if (SHIBYTE(block.st_gid) < 0)
    {
      operator delete(*&block.st_dev);
    }

    memset(&block, 170, 24);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&v37, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      v37 = __p;
    }

    support::fs::createUniquePath(&v37, &block);
    if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v37.__r_.__value_.__l.__data_);
    }

    v19 = operator new(0x48uLL);
    strcpy(&v19[2].__pn_.__r_.__value_.__s.__data_[16], "tch/");
    *&v19->__pn_.__r_.__value_.__l.__data_ = v35[3];
    *&v19->__pn_.__r_.__value_.__r.__words[2] = v35[2];
    *&v19[1].__pn_.__r_.__value_.__r.__words[1] = v35[1];
    *&v19[2].__pn_.__r_.__value_.__l.__data_ = v35[0];
    if ((block.st_gid & 0x80000000) == 0)
    {
      p_block = &block;
    }

    else
    {
      p_block = *&block.st_dev;
    }

    v22 = v19;
    rename(v19, p_block, v20);
    v24 = v23;
    operator delete(v22);
    v25 = *(v3 + 56);
    v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
    if (v24)
    {
      if (!v26)
      {
        goto LABEL_50;
      }

      v27 = &block;
      if ((block.st_gid & 0x80000000) != 0)
      {
        v27 = *&block.st_dev;
      }

      *buf = 136315138;
      *&buf[4] = v27;
      v28 = "#E Failed to move scratch logs to snapshot path [%s]";
    }

    else
    {
      if (!v26)
      {
        goto LABEL_50;
      }

      v29 = &block;
      if ((block.st_gid & 0x80000000) != 0)
      {
        v29 = *&block.st_dev;
      }

      *buf = 136315138;
      *&buf[4] = v29;
      v28 = "#I Snapshot files are in path [%s]";
    }

    _os_log_impl(&dword_297288000, v25, OS_LOG_TYPE_DEFAULT, v28, buf, 0xCu);
LABEL_50:
    if (SHIBYTE(block.st_gid) < 0)
    {
      operator delete(*&block.st_dev);
    }

    goto LABEL_52;
  }

  operator delete(*buf);
  if (v15)
  {
    goto LABEL_30;
  }

LABEL_52:
  v30 = *(v3 + 168);
  v42 = buf;
  *buf = MEMORY[0x29EDCA5F8];
  *&buf[8] = 0x40000000;
  *&buf[16] = ___ZN21CircularFileLogWriter4openEv_block_invoke;
  v44 = &__block_descriptor_tmp_11;
  v45 = v30;
  *&block.st_dev = MEMORY[0x29EDCA5F8];
  block.st_ino = 0x40000000;
  *&block.st_uid = ___ZNK3ctu20SharedSynchronizableI21CircularFileLogWriterE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  *&block.st_rdev = &__block_descriptor_tmp_21_1;
  block.st_atimespec.tv_sec = v30 + 8;
  block.st_atimespec.tv_nsec = &v42;
  v31 = *(v30 + 24);
  if (*(v30 + 32))
  {
    dispatch_async_and_wait(v31, &block);
    v4 = v6;
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_55;
    }

    goto LABEL_54;
  }

  dispatch_sync(v31, &block);
  v4 = v6;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_54:
    operator delete(__p.__r_.__value_.__l.__data_);
    v4 = v6;
  }

LABEL_55:
  if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v32 = v4;
    (v4->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v32);
  }

LABEL_57:
  if (v36)
  {
    if (*(v36 + 47) < 0)
    {
      operator delete(*(v36 + 3));
    }

    v33 = *(v36 + 2);
    if (v33)
    {
      std::__shared_weak_count::__release_weak(v33);
    }

    operator delete(v36);
  }

  v34 = *MEMORY[0x29EDCA608];
}

void sub_2972F0B24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, char a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](&a31);
  std::unique_ptr<MipcTransportService::snapshot(std::string)::$_0::operator() const(void)::{lambda(void)#1},std::default_delete<MipcTransportService::snapshot(std::string)::$_0::operator() const(void)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&a18);
  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<MipcTransportService>::execute_wrapped<MipcTransportService::registerForWakeReason(dispatch::callback<void({block_pointer})(WakeReason)>)::$_0>(MipcTransportService::registerForWakeReason(dispatch::callback<void({block_pointer})(WakeReason)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<MipcTransportService::registerForWakeReason(dispatch::callback<void({block_pointer})(WakeReason)>)::$_0,dispatch_queue_s *::default_delete<MipcTransportService::registerForWakeReason(dispatch::callback<void({block_pointer})(WakeReason)>)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  if (v3)
  {
    v3 = _Block_copy(v3);
  }

  v5 = *(v4 + 88);
  *(v4 + 88) = v3;
  if (v5)
  {
    _Block_release(v5);
  }

  v6 = v2[2];
  if (v6)
  {
    dispatch_retain(v2[2]);
  }

  v7 = *(v4 + 96);
  *(v4 + 96) = v6;
  if (v7)
  {
    dispatch_release(v7);
  }

  v8 = v2[2];
  if (v8)
  {
    dispatch_release(v8);
  }

  v9 = v2[1];
  if (v9)
  {
    _Block_release(v9);
  }

  operator delete(v2);
  v10 = a1[2];
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
    v11 = a1;
  }

  else
  {
    v11 = a1;
  }

  operator delete(v11);
}

void ___ZNK8dispatch8callbackIU13block_pointerFv10WakeReasonEEclIJS1_EEEvDpT__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v4 = v2;
  object = v3;
  if (v3)
  {
    xpc_retain(v3);
  }

  else
  {
    object = xpc_null_create();
  }

  (*(v1 + 16))(v1, &v4);
  xpc_release(object);
}

xpc_object_t __copy_helper_block_e8_32c54_ZTSN8dispatch5blockIU13block_pointerFv10WakeReasonEEE40c16_ZTS10WakeReason(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (v4)
  {
    v4 = _Block_copy(v4);
  }

  *(a1 + 32) = v4;
  *(a1 + 40) = *(a2 + 40);
  v5 = *(a2 + 48);
  *(a1 + 48) = v5;
  if (v5)
  {
    return xpc_retain(v5);
  }

  result = xpc_null_create();
  *(a1 + 48) = result;
  return result;
}

void __destroy_helper_block_e8_32c54_ZTSN8dispatch5blockIU13block_pointerFv10WakeReasonEEE40c16_ZTS10WakeReason(uint64_t a1)
{
  xpc_release(*(a1 + 48));
  *(a1 + 48) = 0;
  v2 = *(a1 + 32);
  if (v2)
  {
    _Block_release(v2);
  }
}

uint64_t __cxx_global_var_init_9_0()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<CommandDriverFactory>::~PthreadMutexGuardPolicy, &ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance, &dword_297288000);
  }

  return result;
}

uint64_t awd::metrics::protobuf_ShutdownFile_CCMetricsABMPower_2eproto(awd::metrics *this)
{
  if (awd::metrics::CommCenterPowerVotingRecord::default_instance_)
  {
    (*(*awd::metrics::CommCenterPowerVotingRecord::default_instance_ + 8))(awd::metrics::CommCenterPowerVotingRecord::default_instance_);
  }

  if (awd::metrics::CommCenterPowerTransitionSuccess::default_instance_)
  {
    (*(*awd::metrics::CommCenterPowerTransitionSuccess::default_instance_ + 8))(awd::metrics::CommCenterPowerTransitionSuccess::default_instance_);
  }

  if (awd::metrics::CommCenterPowerTransitionFailure::default_instance_)
  {
    (*(*awd::metrics::CommCenterPowerTransitionFailure::default_instance_ + 8))(awd::metrics::CommCenterPowerTransitionFailure::default_instance_);
  }

  if (awd::metrics::CommCenterMissedMTMessage::default_instance_)
  {
    (*(*awd::metrics::CommCenterMissedMTMessage::default_instance_ + 8))(awd::metrics::CommCenterMissedMTMessage::default_instance_);
  }

  if (awd::metrics::CommCenterLowPowerEvent::default_instance_)
  {
    (*(*awd::metrics::CommCenterLowPowerEvent::default_instance_ + 8))(awd::metrics::CommCenterLowPowerEvent::default_instance_);
  }

  if (awd::metrics::CommCenterWakeInfo::default_instance_)
  {
    (*(*awd::metrics::CommCenterWakeInfo::default_instance_ + 8))(awd::metrics::CommCenterWakeInfo::default_instance_);
  }

  if (awd::metrics::CommCenterLowPowerStats::default_instance_)
  {
    (*(*awd::metrics::CommCenterLowPowerStats::default_instance_ + 8))(awd::metrics::CommCenterLowPowerStats::default_instance_);
  }

  result = awd::metrics::CommCenterWakeReasonInfo::default_instance_;
  if (awd::metrics::CommCenterWakeReasonInfo::default_instance_)
  {
    v2 = *(*awd::metrics::CommCenterWakeReasonInfo::default_instance_ + 8);

    return v2();
  }

  return result;
}

void awd::metrics::protobuf_AddDesc_CCMetricsABMPower_2eproto(awd::metrics *this, uint64_t a2, uint64_t a3, const char *a4)
{
  if ((awd::metrics::protobuf_AddDesc_CCMetricsABMPower_2eproto(void)::already_here & 1) == 0)
  {
    awd::metrics::protobuf_AddDesc_CCMetricsABMPower_2eproto(void)::already_here = 1;
    wireless_diagnostics::google::protobuf::internal::VerifyVersion(0x1E9808, 2005000, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices_Manager/AppleBasebandManager/BasebandManager/Server/AWD/Generated/CCMetricsABMPower.pb.cc", a4);
    v5 = operator new(0x18uLL);
    v5[1] = 0;
    v5[2] = 0;
    *v5 = &unk_2A1E372D0;
    awd::metrics::CommCenterPowerVotingRecord::default_instance_ = v5;
    v6 = operator new(0x38uLL);
    v6[5] = 0;
    v6[6] = 0;
    *v6 = &unk_2A1E37348;
    v6[1] = 0;
    v6[2] = 0;
    v6[3] = 0;
    *(v6 + 8) = 0;
    awd::metrics::CommCenterPowerTransitionSuccess::default_instance_ = v6;
    v7 = operator new(0x38uLL);
    v7[5] = 0;
    v7[6] = 0;
    *v7 = &unk_2A1E373C0;
    v7[1] = 0;
    v7[2] = 0;
    v7[3] = 0;
    *(v7 + 8) = 0;
    awd::metrics::CommCenterPowerTransitionFailure::default_instance_ = v7;
    v8 = operator new(0x20uLL);
    *v8 = &unk_2A1E37438;
    v8[1] = 0;
    v8[2] = 0;
    v8[3] = 0;
    awd::metrics::CommCenterMissedMTMessage::default_instance_ = v8;
    v9 = operator new(0x28uLL);
    *v9 = &unk_2A1E374B0;
    v9[1] = 0;
    v10 = MEMORY[0x29EDC9758];
    v9[2] = 0;
    v9[3] = v10;
    v9[4] = 0;
    awd::metrics::CommCenterLowPowerEvent::default_instance_ = v9;
    v11 = operator new(0x28uLL);
    *v11 = &unk_2A1E37528;
    v11[1] = 0;
    v11[2] = 0;
    v11[3] = 0;
    *(v11 + 8) = 0;
    awd::metrics::CommCenterWakeInfo::default_instance_ = v11;
    v12 = operator new(0x50uLL);
    *v12 = &unk_2A1E375A0;
    *(v12 + 8) = 0;
    *(v12 + 18) = 0;
    *(v12 + 8) = 0u;
    *(v12 + 24) = 0u;
    *(v12 + 40) = 0u;
    *(v12 + 14) = 0;
    awd::metrics::CommCenterLowPowerStats::default_instance_ = v12;
    v13 = operator new(0x68uLL);
    *v13 = &unk_2A1E37618;
    v13[1] = 0;
    *(v13 + 26) = 0;
    v13[2] = v10;
    v13[3] = v10;
    *(v13 + 12) = 0;
    v13[4] = v10;
    v13[5] = v10;
    v13[7] = v10;
    v13[8] = v10;
    v13[9] = v10;
    *(v13 + 5) = 0u;
    *(v13 + 24) = 0;
    awd::metrics::CommCenterWakeReasonInfo::default_instance_ = v13;

    MEMORY[0x2A1C71448](awd::metrics::protobuf_ShutdownFile_CCMetricsABMPower_2eproto);
  }
}

void *awd::metrics::CommCenterPowerVotingRecord::CommCenterPowerVotingRecord(void *this)
{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_2A1E372D0;
  return this;
}

{
  this[1] = 0;
  this[2] = 0;
  *this = &unk_2A1E372D0;
  return this;
}

uint64_t awd::metrics::CommCenterPowerTransitionSuccess::CommCenterPowerTransitionSuccess(uint64_t this)
{
  *(this + 40) = 0;
  *(this + 48) = 0;
  *this = &unk_2A1E37348;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

{
  *(this + 40) = 0;
  *(this + 48) = 0;
  *this = &unk_2A1E37348;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

uint64_t awd::metrics::CommCenterPowerTransitionFailure::CommCenterPowerTransitionFailure(uint64_t this)
{
  *(this + 40) = 0;
  *(this + 48) = 0;
  *this = &unk_2A1E373C0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

{
  *(this + 40) = 0;
  *(this + 48) = 0;
  *this = &unk_2A1E373C0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

void *awd::metrics::CommCenterMissedMTMessage::CommCenterMissedMTMessage(void *this)
{
  *this = &unk_2A1E37438;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

{
  *this = &unk_2A1E37438;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

void *awd::metrics::CommCenterLowPowerEvent::CommCenterLowPowerEvent(void *this)
{
  v1 = MEMORY[0x29EDC9758];
  *this = &unk_2A1E374B0;
  this[1] = 0;
  this[2] = 0;
  this[3] = v1;
  this[4] = 0;
  return this;
}

{
  v1 = MEMORY[0x29EDC9758];
  *this = &unk_2A1E374B0;
  this[1] = 0;
  this[2] = 0;
  this[3] = v1;
  this[4] = 0;
  return this;
}

uint64_t awd::metrics::CommCenterWakeInfo::CommCenterWakeInfo(uint64_t this)
{
  *this = &unk_2A1E37528;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

{
  *this = &unk_2A1E37528;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

double awd::metrics::CommCenterLowPowerStats::CommCenterLowPowerStats(awd::metrics::CommCenterLowPowerStats *this)
{
  *this = &unk_2A1E375A0;
  *(this + 8) = 0;
  *(this + 18) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 14) = 0;
  return result;
}

{
  *this = &unk_2A1E375A0;
  *(this + 8) = 0;
  *(this + 18) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 14) = 0;
  return result;
}

uint64_t awd::metrics::CommCenterWakeReasonInfo::CommCenterWakeReasonInfo(uint64_t this)
{
  *this = &unk_2A1E37618;
  *(this + 8) = 0;
  v1 = MEMORY[0x29EDC9758];
  *(this + 52) = 0;
  *(this + 16) = v1;
  *(this + 24) = v1;
  *(this + 48) = 0;
  *(this + 32) = v1;
  *(this + 40) = v1;
  *(this + 56) = v1;
  *(this + 64) = v1;
  *(this + 72) = v1;
  *(this + 80) = 0;
  *(this + 88) = 0;
  *(this + 96) = 0;
  return this;
}

{
  *this = &unk_2A1E37618;
  *(this + 8) = 0;
  v1 = MEMORY[0x29EDC9758];
  *(this + 52) = 0;
  *(this + 16) = v1;
  *(this + 24) = v1;
  *(this + 48) = 0;
  *(this + 32) = v1;
  *(this + 40) = v1;
  *(this + 56) = v1;
  *(this + 64) = v1;
  *(this + 72) = v1;
  *(this + 80) = 0;
  *(this + 88) = 0;
  *(this + 96) = 0;
  return this;
}

uint64_t awd::metrics::CommCenterPowerVotingRecord::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  return this;
}

awd::metrics::CommCenterPowerVotingRecord *awd::metrics::CommCenterPowerVotingRecord::CommCenterPowerVotingRecord(awd::metrics::CommCenterPowerVotingRecord *this, const awd::metrics::CommCenterPowerVotingRecord *a2)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_2A1E372D0;
  awd::metrics::CommCenterPowerVotingRecord::MergeFrom(this, a2);
  return this;
}

{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_2A1E372D0;
  awd::metrics::CommCenterPowerVotingRecord::MergeFrom(this, a2);
  return this;
}

const awd::metrics::CommCenterPowerVotingRecord *awd::metrics::CommCenterPowerVotingRecord::MergeFrom(const awd::metrics::CommCenterPowerVotingRecord *this, const awd::metrics::CommCenterPowerVotingRecord *a2)
{
  if (a2 == this)
  {
    v2 = a2;
    v3 = this;
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v7);
    this = v3;
    a2 = v2;
  }

  LOBYTE(v4) = *(a2 + 20);
  if (v4)
  {
    if (*(a2 + 20))
    {
      v5 = *(a2 + 2);
      *(this + 5) |= 1u;
      *(this + 2) = v5;
      v4 = *(a2 + 5);
    }

    if ((v4 & 2) != 0)
    {
      v6 = *(a2 + 3);
      *(this + 5) |= 2u;
      *(this + 3) = v6;
    }
  }

  return this;
}

void sub_2972F1538(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2972F154C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::CommCenterPowerVotingRecord::~CommCenterPowerVotingRecord(awd::metrics::CommCenterPowerVotingRecord *this)
{
  *this = &unk_2A1E372D0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1E372D0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1E372D0;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete(v1);
}

uint64_t awd::metrics::CommCenterPowerVotingRecord::default_instance(awd::metrics::CommCenterPowerVotingRecord *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::CommCenterPowerVotingRecord::default_instance_;
  if (!awd::metrics::CommCenterPowerVotingRecord::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_CCMetricsABMPower_2eproto(0, a2, a3, a4);
    return awd::metrics::CommCenterPowerVotingRecord::default_instance_;
  }

  return result;
}

void *awd::metrics::CommCenterPowerVotingRecord::New(awd::metrics::CommCenterPowerVotingRecord *this)
{
  result = operator new(0x18uLL);
  result[1] = 0;
  result[2] = 0;
  *result = &unk_2A1E372D0;
  return result;
}

uint64_t awd::metrics::CommCenterPowerVotingRecord::Clear(uint64_t this)
{
  if (*(this + 20))
  {
    *(this + 8) = 0;
  }

  *(this + 20) = 0;
  return this;
}

uint64_t awd::metrics::CommCenterPowerVotingRecord::MergePartialFromCodedStream(awd::metrics::CommCenterPowerVotingRecord *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

        if (TagFallback >> 3 != 2)
        {
          break;
        }

        if ((TagFallback & 7) != 0)
        {
          goto LABEL_14;
        }

        v10 = *(a2 + 1);
        v6 = *(a2 + 2);
        if (v10 >= v6)
        {
          goto LABEL_26;
        }

LABEL_23:
        v11 = *v10;
        if (v11 < 0)
        {
          goto LABEL_26;
        }

        *(this + 3) = v11;
        v12 = v10 + 1;
        *(a2 + 1) = v12;
        *(this + 5) |= 2u;
        if (v12 == v6)
        {
LABEL_28:
          if (*(a2 + 11) || *(a2 + 6) == *(a2 + 10))
          {
            *(a2 + 8) = 0;
            result = 1;
            *(a2 + 36) = 1;
            return result;
          }
        }
      }

      if (TagFallback >> 3 != 1 || (TagFallback & 7) != 0)
      {
        break;
      }

      v7 = *(a2 + 1);
      v6 = *(a2 + 2);
      if (v7 >= v6 || (v8 = *v7, v8 < 0))
      {
        result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 2);
        if (!result)
        {
          return result;
        }

        v9 = *(a2 + 1);
        v6 = *(a2 + 2);
        *(this + 5) |= 1u;
        if (v9 < v6)
        {
          goto LABEL_21;
        }
      }

      else
      {
        *(this + 2) = v8;
        v9 = v7 + 1;
        *(a2 + 1) = v9;
        *(this + 5) |= 1u;
        if (v9 < v6)
        {
LABEL_21:
          if (*v9 == 16)
          {
            v10 = v9 + 1;
            *(a2 + 1) = v10;
            if (v10 < v6)
            {
              goto LABEL_23;
            }

LABEL_26:
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 3);
            if (!result)
            {
              return result;
            }

            v14 = *(a2 + 1);
            v13 = *(a2 + 2);
            *(this + 5) |= 2u;
            if (v14 == v13)
            {
              goto LABEL_28;
            }
          }
        }
      }
    }

LABEL_14:
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

uint64_t awd::metrics::CommCenterPowerVotingRecord::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 20);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 8), a2, a4);
    v6 = *(v5 + 20);
  }

  if ((v6 & 2) != 0)
  {
    v7 = *(v5 + 12);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v7, a2, a4);
  }

  return this;
}

uint64_t awd::metrics::CommCenterPowerVotingRecord::ByteSize(awd::metrics::CommCenterPowerVotingRecord *this)
{
  if (!*(this + 20))
  {
    v1 = 0;
    goto LABEL_6;
  }

  if ((*(this + 20) & 1) == 0)
  {
    v1 = 0;
    if ((*(this + 20) & 2) != 0)
    {
      goto LABEL_11;
    }

LABEL_6:
    *(this + 4) = v1;
    return v1;
  }

  if (*(this + 2) < 0x80u)
  {
    v1 = 2;
    if ((*(this + 20) & 2) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_6;
  }

  v3 = this;
  v4 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(*(this + 2));
  this = v3;
  v1 = (v4 + 1);
  if ((*(this + 5) & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_11:
  if (*(this + 3) >= 0x80u)
  {
    v6 = this;
    v5 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(*(this + 3)) + 1 + v1;
    *(v6 + 4) = v5;
  }

  else
  {
    v5 = (v1 + 2);
    *(this + 4) = v5;
  }

  return v5;
}

const awd::metrics::CommCenterPowerVotingRecord *awd::metrics::CommCenterPowerVotingRecord::CopyFrom(const awd::metrics::CommCenterPowerVotingRecord *this, const awd::metrics::CommCenterPowerVotingRecord *a2)
{
  if (a2 != this)
  {
    v4 = this;
    (*(*this + 32))();

    return awd::metrics::CommCenterPowerVotingRecord::MergeFrom(v4, a2);
  }

  return this;
}

awd::metrics::CommCenterPowerVotingRecord *awd::metrics::CommCenterPowerVotingRecord::Swap(awd::metrics::CommCenterPowerVotingRecord *this, awd::metrics::CommCenterPowerVotingRecord *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v2;
    v3 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = v3;
    v4 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v4;
    v5 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v5;
  }

  return this;
}

char *awd::metrics::CommCenterPowerVotingRecord::GetTypeName@<X0>(uint64_t a1@<X8>)
{
  result = operator new(0x28uLL);
  *a1 = result;
  *(a1 + 8) = xmmword_2974315E0;
  strcpy(result, "awd.metrics.CommCenterPowerVotingRecord");
  return result;
}

void *awd::metrics::CommCenterPowerTransitionSuccess::SharedCtor(void *this)
{
  this[1] = 0;
  this[5] = 0;
  this[6] = 0;
  return this;
}

uint64_t wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::CommCenterPowerVotingRecord>::~RepeatedPtrField(uint64_t a1)
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

awd::metrics::CommCenterPowerTransitionSuccess *awd::metrics::CommCenterPowerTransitionSuccess::CommCenterPowerTransitionSuccess(awd::metrics::CommCenterPowerTransitionSuccess *this, const awd::metrics::CommCenterPowerTransitionSuccess *a2)
{
  *(this + 5) = 0;
  *(this + 6) = 0;
  *this = &unk_2A1E37348;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  awd::metrics::CommCenterPowerTransitionSuccess::MergeFrom(this, a2);
  return this;
}

{
  *(this + 5) = 0;
  *(this + 6) = 0;
  *this = &unk_2A1E37348;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  awd::metrics::CommCenterPowerTransitionSuccess::MergeFrom(this, a2);
  return this;
}

void sub_2972F1BF4(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::CommCenterPowerVotingRecord>::~RepeatedPtrField(v1 + 16);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

uint64_t awd::metrics::CommCenterPowerTransitionSuccess::MergeFrom(awd::metrics::CommCenterPowerTransitionSuccess *this, const awd::metrics::CommCenterPowerTransitionSuccess *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v19);
  }

  v4 = *(this + 6);
  v5 = *(a2 + 6);
  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 16));
  if (*(a2 + 6) >= 1)
  {
    v7 = 0;
    do
    {
      while (1)
      {
        v11 = *(*(a2 + 2) + 8 * v7);
        v12 = *(this + 7);
        v13 = *(this + 6);
        if (v13 >= v12)
        {
          break;
        }

        v14 = *(this + 2);
        *(this + 6) = v13 + 1;
        result = awd::metrics::CommCenterPowerVotingRecord::MergeFrom(*(v14 + 8 * v13), v11);
        if (++v7 >= *(a2 + 6))
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
      v8 = operator new(0x18uLL);
      *(v8 + 1) = 0;
      *(v8 + 2) = 0;
      *v8 = &unk_2A1E372D0;
      v9 = *(this + 2);
      v10 = *(this + 6);
      *(this + 6) = v10 + 1;
      *(v9 + 8 * v10) = v8;
      result = awd::metrics::CommCenterPowerVotingRecord::MergeFrom(v8, v11);
      ++v7;
    }

    while (v7 < *(a2 + 6));
  }

LABEL_11:
  LOBYTE(v15) = *(a2 + 52);
  if (v15)
  {
    if (*(a2 + 52))
    {
      v17 = *(a2 + 2);
      *(this + 13) |= 1u;
      *(this + 2) = v17;
      v15 = *(a2 + 13);
      if ((v15 & 2) == 0)
      {
LABEL_14:
        if ((v15 & 8) == 0)
        {
          return result;
        }

        goto LABEL_15;
      }
    }

    else if ((*(a2 + 52) & 2) == 0)
    {
      goto LABEL_14;
    }

    v18 = *(a2 + 3);
    *(this + 13) |= 2u;
    *(this + 3) = v18;
    if ((*(a2 + 13) & 8) == 0)
    {
      return result;
    }

LABEL_15:
    v16 = *(a2 + 5);
    *(this + 13) |= 8u;
    *(this + 5) = v16;
  }

  return result;
}

void sub_2972F1DD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2972F1DE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2972F1E4C(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::CommCenterPowerVotingRecord>::~RepeatedPtrField(v1 + 16);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void awd::metrics::CommCenterPowerTransitionSuccess::~CommCenterPowerTransitionSuccess(awd::metrics::CommCenterPowerTransitionSuccess *this)
{
  *this = &unk_2A1E37348;
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
  *this = &unk_2A1E37348;
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
  *this = &unk_2A1E37348;
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

uint64_t awd::metrics::CommCenterPowerTransitionSuccess::default_instance(awd::metrics::CommCenterPowerTransitionSuccess *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::CommCenterPowerTransitionSuccess::default_instance_;
  if (!awd::metrics::CommCenterPowerTransitionSuccess::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_CCMetricsABMPower_2eproto(0, a2, a3, a4);
    return awd::metrics::CommCenterPowerTransitionSuccess::default_instance_;
  }

  return result;
}

void *awd::metrics::CommCenterPowerTransitionSuccess::New(awd::metrics::CommCenterPowerTransitionSuccess *this)
{
  result = operator new(0x38uLL);
  result[5] = 0;
  result[6] = 0;
  *result = &unk_2A1E37348;
  result[1] = 0;
  result[2] = 0;
  result[3] = 0;
  *(result + 8) = 0;
  return result;
}

uint64_t awd::metrics::CommCenterPowerTransitionSuccess::Clear(uint64_t this)
{
  v1 = this;
  if (*(this + 52))
  {
    *(this + 8) = 0;
    *(this + 40) = 0;
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
  *(v1 + 52) = 0;
  return this;
}

uint64_t awd::metrics::CommCenterPowerTransitionSuccess::MergePartialFromCodedStream(awd::metrics::CommCenterPowerTransitionSuccess *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  do
  {
    do
    {
      while (1)
      {
        while (1)
        {
LABEL_1:
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
          v7 = TagFallback & 7;
          if (TagFallback >> 3 > 2)
          {
            break;
          }

          if (v6 == 1)
          {
            if ((TagFallback & 7) != 0)
            {
              goto LABEL_23;
            }

            v12 = *(a2 + 1);
            v8 = *(a2 + 2);
            if (v12 >= v8 || (v13 = *v12, v13 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 2);
              if (!result)
              {
                return result;
              }

              v14 = *(a2 + 1);
              v8 = *(a2 + 2);
              *(this + 13) |= 1u;
              if (v14 < v8)
              {
                goto LABEL_28;
              }
            }

            else
            {
              *(this + 2) = v13;
              v14 = v12 + 1;
              *(a2 + 1) = v14;
              *(this + 13) |= 1u;
              if (v14 < v8)
              {
LABEL_28:
                if (*v14 == 16)
                {
                  v9 = v14 + 1;
                  *(a2 + 1) = v9;
                  if (v9 < v8)
                  {
                    goto LABEL_30;
                  }

LABEL_33:
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 3);
                  if (!result)
                  {
                    return result;
                  }

                  v17 = *(a2 + 1);
                  v18 = *(a2 + 2);
                  *(this + 13) |= 2u;
                  if (v17 < v18)
                  {
                    goto LABEL_35;
                  }
                }
              }
            }
          }

          else
          {
            if (v6 != 2 || (TagFallback & 7) != 0)
            {
              goto LABEL_23;
            }

            v9 = *(a2 + 1);
            v8 = *(a2 + 2);
            if (v9 >= v8)
            {
              goto LABEL_33;
            }

LABEL_30:
            v16 = *v9;
            if (v16 < 0)
            {
              goto LABEL_33;
            }

            *(this + 3) = v16;
            v17 = v9 + 1;
            *(a2 + 1) = v17;
            *(this + 13) |= 2u;
            if (v17 < v8)
            {
LABEL_35:
              if (*v17 == 26)
              {
                while (1)
                {
                  *(a2 + 1) = v17 + 1;
LABEL_37:
                  v19 = *(this + 7);
                  v20 = *(this + 6);
                  if (v20 >= v19)
                  {
                    if (v19 == *(this + 8))
                    {
                      wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 16));
                      v19 = *(this + 7);
                    }

                    *(this + 7) = v19 + 1;
                    v22 = operator new(0x18uLL);
                    *(v22 + 1) = 0;
                    *(v22 + 2) = 0;
                    *v22 = &unk_2A1E372D0;
                    v23 = *(this + 2);
                    v24 = *(this + 6);
                    *(this + 6) = v24 + 1;
                    *(v23 + 8 * v24) = v22;
                  }

                  else
                  {
                    v21 = *(this + 2);
                    *(this + 6) = v20 + 1;
                    v22 = *(v21 + 8 * v20);
                  }

                  v36 = -1431655766;
                  v25 = *(a2 + 1);
                  if (v25 >= *(a2 + 2) || *v25 < 0)
                  {
                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v36))
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    v36 = *v25;
                    *(a2 + 1) = v25 + 1;
                  }

                  v26 = *(a2 + 14);
                  v27 = *(a2 + 15);
                  *(a2 + 14) = v26 + 1;
                  if (v26 >= v27)
                  {
                    return 0;
                  }

                  wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
                  if (!awd::metrics::CommCenterPowerVotingRecord::MergePartialFromCodedStream(v22, a2) || *(a2 + 36) != 1)
                  {
                    return 0;
                  }

                  wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
                  v28 = *(a2 + 14);
                  v29 = __OFSUB__(v28, 1);
                  v30 = v28 - 1;
                  if (v30 < 0 == v29)
                  {
                    *(a2 + 14) = v30;
                  }

                  v17 = *(a2 + 1);
                  v10 = *(a2 + 2);
                  if (v17 >= v10)
                  {
                    break;
                  }

                  v31 = *v17;
                  if (v31 != 26)
                  {
                    if (v31 == 32)
                    {
                      v11 = v17 + 1;
                      *(a2 + 1) = v11;
                      if (v11 >= v10)
                      {
                        goto LABEL_58;
                      }

LABEL_55:
                      v32 = *v11;
                      if (v32 < 0)
                      {
                        goto LABEL_58;
                      }

                      *(this + 5) = v32;
                      v33 = v11 + 1;
                      *(a2 + 1) = v33;
                      *(this + 13) |= 8u;
                      if (v33 == v10)
                      {
                        goto LABEL_60;
                      }
                    }

                    goto LABEL_1;
                  }
                }
              }
            }
          }
        }

        if (v6 != 3)
        {
          break;
        }

        if (v7 == 2)
        {
          goto LABEL_37;
        }

LABEL_23:
        if (v7 == 4)
        {
          return 1;
        }

        if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
        {
          return 0;
        }
      }

      if (v6 != 4 || (TagFallback & 7) != 0)
      {
        goto LABEL_23;
      }

      v11 = *(a2 + 1);
      v10 = *(a2 + 2);
      if (v11 < v10)
      {
        goto LABEL_55;
      }

LABEL_58:
      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 5);
      if (!result)
      {
        return result;
      }

      v35 = *(a2 + 1);
      v34 = *(a2 + 2);
      *(this + 13) |= 8u;
    }

    while (v35 != v34);
LABEL_60:
    ;
  }

  while (!*(a2 + 11) && *(a2 + 6) != *(a2 + 10));
  *(a2 + 8) = 0;
  result = 1;
  *(a2 + 36) = 1;
  return result;
}

uint64_t awd::metrics::CommCenterPowerTransitionSuccess::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 52);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 8), a2, a4);
    if ((*(v5 + 52) & 2) == 0)
    {
LABEL_3:
      if (*(v5 + 24) < 1)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 12), a2, a4);
  if (*(v5 + 24) < 1)
  {
    goto LABEL_9;
  }

LABEL_7:
  v7 = 0;
  do
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, *(*(v5 + 16) + 8 * v7++), a2, a4);
  }

  while (v7 < *(v5 + 24));
LABEL_9:
  if ((*(v5 + 52) & 8) != 0)
  {
    v8 = *(v5 + 40);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(4, v8, a2, a4);
  }

  return this;
}

uint64_t awd::metrics::CommCenterPowerTransitionSuccess::ByteSize(awd::metrics::CommCenterPowerTransitionSuccess *this)
{
  LOBYTE(v2) = *(this + 52);
  if (!v2)
  {
    v6 = *(this + 6);
    v5 = v6;
    if (v6 < 1)
    {
      goto LABEL_36;
    }

    goto LABEL_18;
  }

  if ((*(this + 52) & 1) == 0)
  {
    v3 = 0;
    if ((*(this + 52) & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_13:
    v8 = *(this + 3);
    if (v8 >= 0x80)
    {
      v3 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8) + 1;
      if ((*(this + 13) & 8) != 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v3 += 2;
      if ((v2 & 8) != 0)
      {
        goto LABEL_17;
      }
    }

LABEL_5:
    v4 = *(this + 6);
    v5 = (v4 + v3);
    if (v4 < 1)
    {
      goto LABEL_36;
    }

    goto LABEL_18;
  }

  v7 = *(this + 2);
  if (v7 >= 0x80)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
    v2 = *(this + 13);
    if ((v2 & 2) != 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v3 = 2;
    if ((v2 & 2) != 0)
    {
      goto LABEL_13;
    }
  }

LABEL_4:
  if ((v2 & 8) == 0)
  {
    goto LABEL_5;
  }

LABEL_17:
  v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 5));
  v10 = *(this + 6);
  v5 = (v10 + v3 + v9 + 1);
  if (v10 >= 1)
  {
LABEL_18:
    for (i = 0; i < *(this + 6); ++i)
    {
      while (1)
      {
        v13 = *(*(this + 2) + 8 * i);
        if (!*(v13 + 20))
        {
          LODWORD(v12) = 0;
          *(v13 + 16) = 0;
          goto LABEL_20;
        }

        if ((*(v13 + 20) & 1) == 0)
        {
          v12 = 0;
          if ((*(v13 + 20) & 2) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_31;
        }

        v14 = *(v13 + 8);
        if (v14 < 0x80)
        {
          break;
        }

        v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14) + 1;
        if ((*(v13 + 20) & 2) == 0)
        {
          goto LABEL_24;
        }

LABEL_31:
        v15 = *(v13 + 12);
        if (v15 >= 0x80)
        {
          v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15) + 1 + v12;
          *(v13 + 16) = v12;
          if (v12 >= 0x80)
          {
            goto LABEL_25;
          }
        }

        else
        {
          v12 = (v12 + 2);
          *(v13 + 16) = v12;
          if (v12 >= 0x80)
          {
            goto LABEL_25;
          }
        }

LABEL_20:
        v5 = (v12 + v5 + 1);
        if (++i >= *(this + 6))
        {
          goto LABEL_36;
        }
      }

      v12 = 2;
      if ((*(v13 + 20) & 2) != 0)
      {
        goto LABEL_31;
      }

LABEL_24:
      *(v13 + 16) = v12;
      if (v12 < 0x80)
      {
        goto LABEL_20;
      }

LABEL_25:
      v5 = v12 + v5 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12);
    }
  }

LABEL_36:
  *(this + 12) = v5;
  return v5;
}

const awd::metrics::CommCenterPowerTransitionSuccess *awd::metrics::CommCenterPowerTransitionSuccess::CopyFrom(const awd::metrics::CommCenterPowerTransitionSuccess *this, const awd::metrics::CommCenterPowerTransitionSuccess *a2)
{
  if (a2 != this)
  {
    v4 = this;
    (*(*this + 32))();

    return awd::metrics::CommCenterPowerTransitionSuccess::MergeFrom(v4, a2);
  }

  return this;
}

awd::metrics::CommCenterPowerTransitionSuccess *awd::metrics::CommCenterPowerTransitionSuccess::Swap(awd::metrics::CommCenterPowerTransitionSuccess *this, awd::metrics::CommCenterPowerTransitionSuccess *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v2;
    v3 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = v3;
    v4 = this;
    this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v6 = *(v4 + 5);
    *(v4 + 5) = *(a2 + 5);
    *(a2 + 5) = v6;
    LODWORD(v6) = *(v4 + 13);
    *(v4 + 13) = *(a2 + 13);
    *(a2 + 13) = v6;
    LODWORD(v6) = *(v4 + 12);
    *(v4 + 12) = *(a2 + 12);
    *(a2 + 12) = v6;
  }

  return this;
}

double awd::metrics::CommCenterPowerTransitionSuccess::GetTypeName@<D0>(uint64_t a1@<X8>)
{
  v3 = operator new(0x30uLL);
  *a1 = v3;
  *(a1 + 8) = xmmword_297430140;
  strcpy(v3, "awd.metrics.CommCenterPowerTransitionSuccess");
  return *"ransitionSuccess";
}

void *awd::metrics::CommCenterPowerTransitionFailure::SharedCtor(void *this)
{
  this[1] = 0;
  this[5] = 0;
  this[6] = 0;
  return this;
}

awd::metrics::CommCenterPowerTransitionFailure *awd::metrics::CommCenterPowerTransitionFailure::CommCenterPowerTransitionFailure(awd::metrics::CommCenterPowerTransitionFailure *this, const awd::metrics::CommCenterPowerTransitionFailure *a2)
{
  *(this + 5) = 0;
  *(this + 6) = 0;
  *this = &unk_2A1E373C0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  awd::metrics::CommCenterPowerTransitionFailure::MergeFrom(this, a2);
  return this;
}

{
  *(this + 5) = 0;
  *(this + 6) = 0;
  *this = &unk_2A1E373C0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  awd::metrics::CommCenterPowerTransitionFailure::MergeFrom(this, a2);
  return this;
}

void sub_2972F29FC(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::CommCenterPowerVotingRecord>::~RepeatedPtrField(v1 + 16);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

uint64_t awd::metrics::CommCenterPowerTransitionFailure::MergeFrom(awd::metrics::CommCenterPowerTransitionFailure *this, const awd::metrics::CommCenterPowerTransitionFailure *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v19);
  }

  v4 = *(this + 6);
  v5 = *(a2 + 6);
  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 16));
  if (*(a2 + 6) >= 1)
  {
    v7 = 0;
    do
    {
      while (1)
      {
        v11 = *(*(a2 + 2) + 8 * v7);
        v12 = *(this + 7);
        v13 = *(this + 6);
        if (v13 >= v12)
        {
          break;
        }

        v14 = *(this + 2);
        *(this + 6) = v13 + 1;
        result = awd::metrics::CommCenterPowerVotingRecord::MergeFrom(*(v14 + 8 * v13), v11);
        if (++v7 >= *(a2 + 6))
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
      v8 = operator new(0x18uLL);
      *(v8 + 1) = 0;
      *(v8 + 2) = 0;
      *v8 = &unk_2A1E372D0;
      v9 = *(this + 2);
      v10 = *(this + 6);
      *(this + 6) = v10 + 1;
      *(v9 + 8 * v10) = v8;
      result = awd::metrics::CommCenterPowerVotingRecord::MergeFrom(v8, v11);
      ++v7;
    }

    while (v7 < *(a2 + 6));
  }

LABEL_11:
  LOBYTE(v15) = *(a2 + 52);
  if (v15)
  {
    if (*(a2 + 52))
    {
      v17 = *(a2 + 2);
      *(this + 13) |= 1u;
      *(this + 2) = v17;
      v15 = *(a2 + 13);
      if ((v15 & 2) == 0)
      {
LABEL_14:
        if ((v15 & 8) == 0)
        {
          return result;
        }

        goto LABEL_15;
      }
    }

    else if ((*(a2 + 52) & 2) == 0)
    {
      goto LABEL_14;
    }

    v18 = *(a2 + 3);
    *(this + 13) |= 2u;
    *(this + 3) = v18;
    if ((*(a2 + 13) & 8) == 0)
    {
      return result;
    }

LABEL_15:
    v16 = *(a2 + 5);
    *(this + 13) |= 8u;
    *(this + 5) = v16;
  }

  return result;
}

void sub_2972F2BDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2972F2BF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2972F2C54(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::CommCenterPowerVotingRecord>::~RepeatedPtrField(v1 + 16);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void awd::metrics::CommCenterPowerTransitionFailure::~CommCenterPowerTransitionFailure(awd::metrics::CommCenterPowerTransitionFailure *this)
{
  *this = &unk_2A1E373C0;
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
  *this = &unk_2A1E373C0;
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
  *this = &unk_2A1E373C0;
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

uint64_t awd::metrics::CommCenterPowerTransitionFailure::default_instance(awd::metrics::CommCenterPowerTransitionFailure *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::CommCenterPowerTransitionFailure::default_instance_;
  if (!awd::metrics::CommCenterPowerTransitionFailure::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_CCMetricsABMPower_2eproto(0, a2, a3, a4);
    return awd::metrics::CommCenterPowerTransitionFailure::default_instance_;
  }

  return result;
}

void *awd::metrics::CommCenterPowerTransitionFailure::New(awd::metrics::CommCenterPowerTransitionFailure *this)
{
  result = operator new(0x38uLL);
  result[5] = 0;
  result[6] = 0;
  *result = &unk_2A1E373C0;
  result[1] = 0;
  result[2] = 0;
  result[3] = 0;
  *(result + 8) = 0;
  return result;
}

uint64_t awd::metrics::CommCenterPowerTransitionFailure::Clear(uint64_t this)
{
  v1 = this;
  if (*(this + 52))
  {
    *(this + 8) = 0;
    *(this + 40) = 0;
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
  *(v1 + 52) = 0;
  return this;
}

uint64_t awd::metrics::CommCenterPowerTransitionFailure::MergePartialFromCodedStream(awd::metrics::CommCenterPowerTransitionFailure *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
{
  do
  {
    do
    {
      while (1)
      {
        while (1)
        {
LABEL_1:
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
          v7 = TagFallback & 7;
          if (TagFallback >> 3 > 2)
          {
            break;
          }

          if (v6 == 1)
          {
            if ((TagFallback & 7) != 0)
            {
              goto LABEL_23;
            }

            v12 = *(a2 + 1);
            v8 = *(a2 + 2);
            if (v12 >= v8 || (v13 = *v12, v13 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 2);
              if (!result)
              {
                return result;
              }

              v14 = *(a2 + 1);
              v8 = *(a2 + 2);
              *(this + 13) |= 1u;
              if (v14 < v8)
              {
                goto LABEL_28;
              }
            }

            else
            {
              *(this + 2) = v13;
              v14 = v12 + 1;
              *(a2 + 1) = v14;
              *(this + 13) |= 1u;
              if (v14 < v8)
              {
LABEL_28:
                if (*v14 == 16)
                {
                  v9 = v14 + 1;
                  *(a2 + 1) = v9;
                  if (v9 < v8)
                  {
                    goto LABEL_30;
                  }

LABEL_33:
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 3);
                  if (!result)
                  {
                    return result;
                  }

                  v17 = *(a2 + 1);
                  v18 = *(a2 + 2);
                  *(this + 13) |= 2u;
                  if (v17 < v18)
                  {
                    goto LABEL_35;
                  }
                }
              }
            }
          }

          else
          {
            if (v6 != 2 || (TagFallback & 7) != 0)
            {
              goto LABEL_23;
            }

            v9 = *(a2 + 1);
            v8 = *(a2 + 2);
            if (v9 >= v8)
            {
              goto LABEL_33;
            }

LABEL_30:
            v16 = *v9;
            if (v16 < 0)
            {
              goto LABEL_33;
            }

            *(this + 3) = v16;
            v17 = v9 + 1;
            *(a2 + 1) = v17;
            *(this + 13) |= 2u;
            if (v17 < v8)
            {
LABEL_35:
              if (*v17 == 26)
              {
                while (1)
                {
                  *(a2 + 1) = v17 + 1;
LABEL_37:
                  v19 = *(this + 7);
                  v20 = *(this + 6);
                  if (v20 >= v19)
                  {
                    if (v19 == *(this + 8))
                    {
                      wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 16));
                      v19 = *(this + 7);
                    }

                    *(this + 7) = v19 + 1;
                    v22 = operator new(0x18uLL);
                    *(v22 + 1) = 0;
                    *(v22 + 2) = 0;
                    *v22 = &unk_2A1E372D0;
                    v23 = *(this + 2);
                    v24 = *(this + 6);
                    *(this + 6) = v24 + 1;
                    *(v23 + 8 * v24) = v22;
                  }

                  else
                  {
                    v21 = *(this + 2);
                    *(this + 6) = v20 + 1;
                    v22 = *(v21 + 8 * v20);
                  }

                  v36 = -1431655766;
                  v25 = *(a2 + 1);
                  if (v25 >= *(a2 + 2) || *v25 < 0)
                  {
                    if (!wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, &v36))
                    {
                      return 0;
                    }
                  }

                  else
                  {
                    v36 = *v25;
                    *(a2 + 1) = v25 + 1;
                  }

                  v26 = *(a2 + 14);
                  v27 = *(a2 + 15);
                  *(a2 + 14) = v26 + 1;
                  if (v26 >= v27)
                  {
                    return 0;
                  }

                  wireless_diagnostics::google::protobuf::io::CodedInputStream::PushLimit(a2);
                  if (!awd::metrics::CommCenterPowerVotingRecord::MergePartialFromCodedStream(v22, a2) || *(a2 + 36) != 1)
                  {
                    return 0;
                  }

                  wireless_diagnostics::google::protobuf::io::CodedInputStream::PopLimit(a2);
                  v28 = *(a2 + 14);
                  v29 = __OFSUB__(v28, 1);
                  v30 = v28 - 1;
                  if (v30 < 0 == v29)
                  {
                    *(a2 + 14) = v30;
                  }

                  v17 = *(a2 + 1);
                  v10 = *(a2 + 2);
                  if (v17 >= v10)
                  {
                    break;
                  }

                  v31 = *v17;
                  if (v31 != 26)
                  {
                    if (v31 == 32)
                    {
                      v11 = v17 + 1;
                      *(a2 + 1) = v11;
                      if (v11 >= v10)
                      {
                        goto LABEL_58;
                      }

LABEL_55:
                      v32 = *v11;
                      if (v32 < 0)
                      {
                        goto LABEL_58;
                      }

                      *(this + 5) = v32;
                      v33 = v11 + 1;
                      *(a2 + 1) = v33;
                      *(this + 13) |= 8u;
                      if (v33 == v10)
                      {
                        goto LABEL_60;
                      }
                    }

                    goto LABEL_1;
                  }
                }
              }
            }
          }
        }

        if (v6 != 3)
        {
          break;
        }

        if (v7 == 2)
        {
          goto LABEL_37;
        }

LABEL_23:
        if (v7 == 4)
        {
          return 1;
        }

        if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
        {
          return 0;
        }
      }

      if (v6 != 4 || (TagFallback & 7) != 0)
      {
        goto LABEL_23;
      }

      v11 = *(a2 + 1);
      v10 = *(a2 + 2);
      if (v11 < v10)
      {
        goto LABEL_55;
      }

LABEL_58:
      result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 5);
      if (!result)
      {
        return result;
      }

      v35 = *(a2 + 1);
      v34 = *(a2 + 2);
      *(this + 13) |= 8u;
    }

    while (v35 != v34);
LABEL_60:
    ;
  }

  while (!*(a2 + 11) && *(a2 + 6) != *(a2 + 10));
  *(a2 + 8) = 0;
  result = 1;
  *(a2 + 36) = 1;
  return result;
}

uint64_t awd::metrics::CommCenterPowerTransitionFailure::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 52);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, *(this + 8), a2, a4);
    if ((*(v5 + 52) & 2) == 0)
    {
LABEL_3:
      if (*(v5 + 24) < 1)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 12), a2, a4);
  if (*(v5 + 24) < 1)
  {
    goto LABEL_9;
  }

LABEL_7:
  v7 = 0;
  do
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteMessage(3, *(*(v5 + 16) + 8 * v7++), a2, a4);
  }

  while (v7 < *(v5 + 24));
LABEL_9:
  if ((*(v5 + 52) & 8) != 0)
  {
    v8 = *(v5 + 40);

    return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(4, v8, a2, a4);
  }

  return this;
}

uint64_t awd::metrics::CommCenterPowerTransitionFailure::ByteSize(awd::metrics::CommCenterPowerTransitionFailure *this)
{
  LOBYTE(v2) = *(this + 52);
  if (!v2)
  {
    v6 = *(this + 6);
    v5 = v6;
    if (v6 < 1)
    {
      goto LABEL_36;
    }

    goto LABEL_18;
  }

  if ((*(this + 52) & 1) == 0)
  {
    v3 = 0;
    if ((*(this + 52) & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_13:
    v8 = *(this + 3);
    if (v8 >= 0x80)
    {
      v3 += wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8) + 1;
      if ((*(this + 13) & 8) != 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v3 += 2;
      if ((v2 & 8) != 0)
      {
        goto LABEL_17;
      }
    }

LABEL_5:
    v4 = *(this + 6);
    v5 = (v4 + v3);
    if (v4 < 1)
    {
      goto LABEL_36;
    }

    goto LABEL_18;
  }

  v7 = *(this + 2);
  if (v7 >= 0x80)
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1;
    v2 = *(this + 13);
    if ((v2 & 2) != 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v3 = 2;
    if ((v2 & 2) != 0)
    {
      goto LABEL_13;
    }
  }

LABEL_4:
  if ((v2 & 8) == 0)
  {
    goto LABEL_5;
  }

LABEL_17:
  v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 5));
  v10 = *(this + 6);
  v5 = (v10 + v3 + v9 + 1);
  if (v10 >= 1)
  {
LABEL_18:
    for (i = 0; i < *(this + 6); ++i)
    {
      while (1)
      {
        v13 = *(*(this + 2) + 8 * i);
        if (!*(v13 + 20))
        {
          LODWORD(v12) = 0;
          *(v13 + 16) = 0;
          goto LABEL_20;
        }

        if ((*(v13 + 20) & 1) == 0)
        {
          v12 = 0;
          if ((*(v13 + 20) & 2) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_31;
        }

        v14 = *(v13 + 8);
        if (v14 < 0x80)
        {
          break;
        }

        v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v14) + 1;
        if ((*(v13 + 20) & 2) == 0)
        {
          goto LABEL_24;
        }

LABEL_31:
        v15 = *(v13 + 12);
        if (v15 >= 0x80)
        {
          v12 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v15) + 1 + v12;
          *(v13 + 16) = v12;
          if (v12 >= 0x80)
          {
            goto LABEL_25;
          }
        }

        else
        {
          v12 = (v12 + 2);
          *(v13 + 16) = v12;
          if (v12 >= 0x80)
          {
            goto LABEL_25;
          }
        }

LABEL_20:
        v5 = (v12 + v5 + 1);
        if (++i >= *(this + 6))
        {
          goto LABEL_36;
        }
      }

      v12 = 2;
      if ((*(v13 + 20) & 2) != 0)
      {
        goto LABEL_31;
      }

LABEL_24:
      *(v13 + 16) = v12;
      if (v12 < 0x80)
      {
        goto LABEL_20;
      }

LABEL_25:
      v5 = v12 + v5 + wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12);
    }
  }

LABEL_36:
  *(this + 12) = v5;
  return v5;
}

const awd::metrics::CommCenterPowerTransitionFailure *awd::metrics::CommCenterPowerTransitionFailure::CopyFrom(const awd::metrics::CommCenterPowerTransitionFailure *this, const awd::metrics::CommCenterPowerTransitionFailure *a2)
{
  if (a2 != this)
  {
    v4 = this;
    (*(*this + 32))();

    return awd::metrics::CommCenterPowerTransitionFailure::MergeFrom(v4, a2);
  }

  return this;
}

awd::metrics::CommCenterPowerTransitionFailure *awd::metrics::CommCenterPowerTransitionFailure::Swap(awd::metrics::CommCenterPowerTransitionFailure *this, awd::metrics::CommCenterPowerTransitionFailure *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v2;
    v3 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = v3;
    v4 = this;
    this = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Swap();
    v6 = *(v4 + 5);
    *(v4 + 5) = *(a2 + 5);
    *(a2 + 5) = v6;
    LODWORD(v6) = *(v4 + 13);
    *(v4 + 13) = *(a2 + 13);
    *(a2 + 13) = v6;
    LODWORD(v6) = *(v4 + 12);
    *(v4 + 12) = *(a2 + 12);
    *(a2 + 12) = v6;
  }

  return this;
}

double awd::metrics::CommCenterPowerTransitionFailure::GetTypeName@<D0>(uint64_t a1@<X8>)
{
  v3 = operator new(0x30uLL);
  *a1 = v3;
  *(a1 + 8) = xmmword_297430140;
  strcpy(v3, "awd.metrics.CommCenterPowerTransitionFailure");
  return *"ransitionFailure";
}

void *awd::metrics::CommCenterMissedMTMessage::SharedCtor(void *this)
{
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

awd::metrics::CommCenterMissedMTMessage *awd::metrics::CommCenterMissedMTMessage::CommCenterMissedMTMessage(awd::metrics::CommCenterMissedMTMessage *this, const awd::metrics::CommCenterMissedMTMessage *a2)
{
  *this = &unk_2A1E37438;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  awd::metrics::CommCenterMissedMTMessage::MergeFrom(this, a2);
  return this;
}

{
  *this = &unk_2A1E37438;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  awd::metrics::CommCenterMissedMTMessage::MergeFrom(this, a2);
  return this;
}

const awd::metrics::CommCenterMissedMTMessage *awd::metrics::CommCenterMissedMTMessage::MergeFrom(const awd::metrics::CommCenterMissedMTMessage *this, const awd::metrics::CommCenterMissedMTMessage *a2)
{
  if (a2 == this)
  {
    v2 = a2;
    v3 = this;
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
    this = v3;
    a2 = v2;
  }

  LOBYTE(v4) = *(a2 + 28);
  if (v4)
  {
    if (*(a2 + 28))
    {
      v6 = *(a2 + 2);
      *(this + 7) |= 1u;
      *(this + 2) = v6;
      v4 = *(a2 + 7);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_12;
      }
    }

    else if ((*(a2 + 28) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 3);
    *(this + 7) |= 2u;
    *(this + 3) = v7;
    v4 = *(a2 + 7);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        return this;
      }

      goto LABEL_8;
    }

LABEL_12:
    v8 = *(a2 + 4);
    *(this + 7) |= 4u;
    *(this + 4) = v8;
    if ((*(a2 + 7) & 8) == 0)
    {
      return this;
    }

LABEL_8:
    v5 = *(a2 + 5);
    *(this + 7) |= 8u;
    *(this + 5) = v5;
  }

  return this;
}

void sub_2972F3904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2972F3918(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::CommCenterMissedMTMessage::~CommCenterMissedMTMessage(awd::metrics::CommCenterMissedMTMessage *this)
{
  *this = &unk_2A1E37438;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1E37438;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1E37438;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete(v1);
}

uint64_t awd::metrics::CommCenterMissedMTMessage::default_instance(awd::metrics::CommCenterMissedMTMessage *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::CommCenterMissedMTMessage::default_instance_;
  if (!awd::metrics::CommCenterMissedMTMessage::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_CCMetricsABMPower_2eproto(0, a2, a3, a4);
    return awd::metrics::CommCenterMissedMTMessage::default_instance_;
  }

  return result;
}

void *awd::metrics::CommCenterMissedMTMessage::New(awd::metrics::CommCenterMissedMTMessage *this)
{
  result = operator new(0x20uLL);
  *result = &unk_2A1E37438;
  result[1] = 0;
  result[2] = 0;
  result[3] = 0;
  return result;
}

uint64_t awd::metrics::CommCenterMissedMTMessage::Clear(uint64_t this)
{
  if (*(this + 28))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
  }

  *(this + 28) = 0;
  return this;
}

uint64_t awd::metrics::CommCenterMissedMTMessage::MergePartialFromCodedStream(awd::metrics::CommCenterMissedMTMessage *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
              goto LABEL_23;
            }

            v10 = *(a2 + 1);
            v7 = *(a2 + 2);
            if (v10 >= v7 || (v11 = *v10, v11 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 2);
              if (!result)
              {
                return result;
              }

              v12 = *(a2 + 1);
              v7 = *(a2 + 2);
              *(this + 7) |= 1u;
              if (v12 < v7)
              {
                goto LABEL_30;
              }
            }

            else
            {
              *(this + 2) = v11;
              v12 = v10 + 1;
              *(a2 + 1) = v12;
              *(this + 7) |= 1u;
              if (v12 < v7)
              {
LABEL_30:
                if (*v12 == 16)
                {
                  v8 = v12 + 1;
                  *(a2 + 1) = v8;
                  if (v8 < v7)
                  {
                    goto LABEL_32;
                  }

LABEL_35:
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 3);
                  if (!result)
                  {
                    return result;
                  }

                  v15 = *(a2 + 1);
                  v7 = *(a2 + 2);
                  *(this + 7) |= 2u;
                  if (v15 < v7)
                  {
                    goto LABEL_37;
                  }
                }
              }
            }
          }

          else
          {
            if (v6 != 2 || (TagFallback & 7) != 0)
            {
              goto LABEL_23;
            }

            v8 = *(a2 + 1);
            v7 = *(a2 + 2);
            if (v8 >= v7)
            {
              goto LABEL_35;
            }

LABEL_32:
            v14 = *v8;
            if (v14 < 0)
            {
              goto LABEL_35;
            }

            *(this + 3) = v14;
            v15 = v8 + 1;
            *(a2 + 1) = v15;
            *(this + 7) |= 2u;
            if (v15 < v7)
            {
LABEL_37:
              if (*v15 == 24)
              {
                v13 = v15 + 1;
                *(a2 + 1) = v13;
                if (v13 < v7)
                {
                  goto LABEL_39;
                }

LABEL_42:
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
                if (!result)
                {
                  return result;
                }

                v17 = *(a2 + 1);
                v7 = *(a2 + 2);
                *(this + 7) |= 4u;
                if (v17 < v7)
                {
                  goto LABEL_44;
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
          goto LABEL_23;
        }

        v13 = *(a2 + 1);
        v7 = *(a2 + 2);
        if (v13 >= v7)
        {
          goto LABEL_42;
        }

LABEL_39:
        v16 = *v13;
        if (v16 < 0)
        {
          goto LABEL_42;
        }

        *(this + 4) = v16;
        v17 = v13 + 1;
        *(a2 + 1) = v17;
        *(this + 7) |= 4u;
        if (v17 < v7)
        {
LABEL_44:
          if (*v17 == 32)
          {
            v9 = v17 + 1;
            *(a2 + 1) = v9;
            if (v9 < v7)
            {
              goto LABEL_46;
            }

LABEL_49:
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
            if (!result)
            {
              return result;
            }

            v21 = *(a2 + 1);
            v20 = *(a2 + 2);
            *(this + 7) |= 8u;
            if (v21 == v20)
            {
              goto LABEL_51;
            }
          }
        }
      }

      if (v6 != 4 || (TagFallback & 7) != 0)
      {
        break;
      }

      v9 = *(a2 + 1);
      v7 = *(a2 + 2);
      if (v9 >= v7)
      {
        goto LABEL_49;
      }

LABEL_46:
      v18 = *v9;
      if (v18 < 0)
      {
        goto LABEL_49;
      }

      *(this + 5) = v18;
      v19 = v9 + 1;
      *(a2 + 1) = v19;
      *(this + 7) |= 8u;
      if (v19 == v7)
      {
LABEL_51:
        if (*(a2 + 11) || *(a2 + 6) == *(a2 + 10))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }
    }

LABEL_23:
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

unsigned int *awd::metrics::CommCenterMissedMTMessage::SerializeWithCachedSizes(unsigned int *this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = this[7];
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(1, this[2], a2, a4);
    v6 = v5[7];
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, v5[4], a2, a4);
      if ((v5[7] & 8) == 0)
      {
        return this;
      }

      goto LABEL_9;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v5[3], a2, a4);
  v6 = v5[7];
  if ((v6 & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v6 & 8) == 0)
  {
    return this;
  }

LABEL_9:
  v7 = v5[5];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, v7, a2, a4);
}

uint64_t awd::metrics::CommCenterMissedMTMessage::ByteSize(awd::metrics::CommCenterMissedMTMessage *this)
{
  LOBYTE(v2) = *(this + 28);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_6;
  }

  if (*(this + 28))
  {
    v5 = *(this + 2);
    if (v5 >= 0x80)
    {
      v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
      v2 = *(this + 7);
      if ((v2 & 2) == 0)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v3 = 2;
      if ((v2 & 2) == 0)
      {
        goto LABEL_15;
      }
    }
  }

  else
  {
    v3 = 0;
    if ((*(this + 28) & 2) == 0)
    {
      goto LABEL_15;
    }
  }

  v6 = *(this + 3);
  if (v6 >= 0x80)
  {
    v7 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v6) + 1;
    v2 = *(this + 7);
  }

  else
  {
    v7 = 2;
  }

  v3 = (v7 + v3);
LABEL_15:
  if ((v2 & 4) == 0)
  {
    if ((v2 & 8) != 0)
    {
      goto LABEL_22;
    }

LABEL_6:
    *(this + 6) = v3;
    return v3;
  }

  v8 = *(this + 4);
  if (v8 < 0x80)
  {
    v3 = (v3 + 2);
    if ((v2 & 8) != 0)
    {
      goto LABEL_22;
    }

    goto LABEL_6;
  }

  v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8) + 1 + v3;
  if ((*(this + 7) & 8) == 0)
  {
    goto LABEL_6;
  }

LABEL_22:
  v9 = *(this + 5);
  if (v9 >= 0x80)
  {
    v10 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v9) + 1 + v3;
  }

  else
  {
    v10 = (v3 + 2);
  }

  *(this + 6) = v10;
  return v10;
}

const awd::metrics::CommCenterMissedMTMessage *awd::metrics::CommCenterMissedMTMessage::CopyFrom(const awd::metrics::CommCenterMissedMTMessage *this, const awd::metrics::CommCenterMissedMTMessage *a2)
{
  if (a2 != this)
  {
    v4 = this;
    (*(*this + 32))();

    return awd::metrics::CommCenterMissedMTMessage::MergeFrom(v4, a2);
  }

  return this;
}

awd::metrics::CommCenterMissedMTMessage *awd::metrics::CommCenterMissedMTMessage::Swap(awd::metrics::CommCenterMissedMTMessage *this, awd::metrics::CommCenterMissedMTMessage *a2)
{
  if (a2 != this)
  {
    v2 = *(this + 2);
    *(this + 2) = *(a2 + 2);
    *(a2 + 2) = v2;
    v3 = *(this + 3);
    *(this + 3) = *(a2 + 3);
    *(a2 + 3) = v3;
    v4 = *(this + 4);
    *(this + 4) = *(a2 + 4);
    *(a2 + 4) = v4;
    v5 = *(this + 5);
    *(this + 5) = *(a2 + 5);
    *(a2 + 5) = v5;
    v6 = *(this + 7);
    *(this + 7) = *(a2 + 7);
    *(a2 + 7) = v6;
    v7 = *(this + 6);
    *(this + 6) = *(a2 + 6);
    *(a2 + 6) = v7;
  }

  return this;
}

char *awd::metrics::CommCenterMissedMTMessage::GetTypeName@<X0>(uint64_t a1@<X8>)
{
  result = operator new(0x28uLL);
  *a1 = result;
  *(a1 + 8) = xmmword_2974315F0;
  strcpy(result, "awd.metrics.CommCenterMissedMTMessage");
  return result;
}

double awd::metrics::CommCenterLowPowerEvent::SharedCtor(awd::metrics::CommCenterLowPowerEvent *this)
{
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 3) = MEMORY[0x29EDC9758];
  *(this + 4) = 0;
  return result;
}

awd::metrics::CommCenterLowPowerEvent *awd::metrics::CommCenterLowPowerEvent::CommCenterLowPowerEvent(awd::metrics::CommCenterLowPowerEvent *this, const awd::metrics::CommCenterLowPowerEvent *a2)
{
  *this = &unk_2A1E374B0;
  *(this + 1) = 0;
  v3 = MEMORY[0x29EDC9758];
  *(this + 2) = 0;
  *(this + 3) = v3;
  *(this + 4) = 0;
  awd::metrics::CommCenterLowPowerEvent::MergeFrom(this, a2);
  return this;
}

{
  *this = &unk_2A1E374B0;
  *(this + 1) = 0;
  v3 = MEMORY[0x29EDC9758];
  *(this + 2) = 0;
  *(this + 3) = v3;
  *(this + 4) = 0;
  awd::metrics::CommCenterLowPowerEvent::MergeFrom(this, a2);
  return this;
}

void awd::metrics::CommCenterLowPowerEvent::MergeFrom(awd::metrics::CommCenterLowPowerEvent *this, const awd::metrics::CommCenterLowPowerEvent *a2)
{
  if (a2 == this)
  {
    v3 = a2;
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v14);
    a2 = v3;
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
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_11;
      }
    }

    else if ((*(a2 + 36) & 2) == 0)
    {
      goto LABEL_6;
    }

    v6 = *(a2 + 4);
    *(this + 9) |= 2u;
    *(this + 4) = v6;
    v4 = *(a2 + 9);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        return;
      }

LABEL_12:
      v8 = *(a2 + 3);
      *(this + 9) |= 8u;
      v9 = *(this + 3);
      if (v9 == MEMORY[0x29EDC9758])
      {
        v9 = operator new(0x18uLL);
        v9[1] = 0;
        v9[2] = 0;
        *v9 = 0;
        *(this + 3) = v9;
      }

      if (v9 != v8)
      {
        v10 = *(v8 + 23);
        if (*(v9 + 23) < 0)
        {
          if (v10 >= 0)
          {
            v12 = v8;
          }

          else
          {
            v12 = *v8;
          }

          if (v10 >= 0)
          {
            v13 = *(v8 + 23);
          }

          else
          {
            v13 = v8[1];
          }

          std::string::__assign_no_alias<false>(v9, v12, v13);
        }

        else if ((*(v8 + 23) & 0x80) != 0)
        {
          std::string::__assign_no_alias<true>(v9, *v8, v8[1]);
        }

        else
        {
          v11 = *v8;
          v9[2] = v8[2];
          *v9 = v11;
        }
      }

      return;
    }

LABEL_11:
    v7 = *(a2 + 5);
    *(this + 9) |= 4u;
    *(this + 5) = v7;
    if ((*(a2 + 9) & 8) == 0)
    {
      return;
    }

    goto LABEL_12;
  }
}

void sub_2972F42B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2972F42CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::CommCenterLowPowerEvent::~CommCenterLowPowerEvent(awd::metrics::CommCenterLowPowerEvent *this)
{
  *this = &unk_2A1E374B0;
  v1 = *(this + 3);
  if (v1 != MEMORY[0x29EDC9758] && v1 != 0)
  {
    v3 = this;
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    operator delete(v1);
    this = v3;
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1E374B0;
  v1 = *(this + 3);
  if (v1 != MEMORY[0x29EDC9758] && v1 != 0)
  {
    v3 = this;
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    operator delete(v1);
    this = v3;
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1E374B0;
  v2 = *(this + 3);
  if (v2 != MEMORY[0x29EDC9758] && v2 != 0)
  {
    if (*(v2 + 23) < 0)
    {
      operator delete(*v2);
    }

    operator delete(v2);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete(v4);
}

void awd::metrics::CommCenterLowPowerEvent::SharedDtor(awd::metrics::CommCenterLowPowerEvent *this)
{
  v1 = *(this + 3);
  if (v1 != MEMORY[0x29EDC9758] && v1 != 0)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
      v3 = v1;
    }

    else
    {
      v3 = *(this + 3);
    }

    operator delete(v3);
  }
}

uint64_t awd::metrics::CommCenterLowPowerEvent::default_instance(awd::metrics::CommCenterLowPowerEvent *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::CommCenterLowPowerEvent::default_instance_;
  if (!awd::metrics::CommCenterLowPowerEvent::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_CCMetricsABMPower_2eproto(0, a2, a3, a4);
    return awd::metrics::CommCenterLowPowerEvent::default_instance_;
  }

  return result;
}

void *awd::metrics::CommCenterLowPowerEvent::New(awd::metrics::CommCenterLowPowerEvent *this)
{
  result = operator new(0x28uLL);
  v2 = MEMORY[0x29EDC9758];
  *result = &unk_2A1E374B0;
  result[1] = 0;
  result[2] = 0;
  result[3] = v2;
  result[4] = 0;
  return result;
}

uint64_t awd::metrics::CommCenterLowPowerEvent::Clear(uint64_t this)
{
  v1 = *(this + 36);
  if (!v1)
  {
    goto LABEL_6;
  }

  *(this + 8) = 0;
  *(this + 16) = 0;
  if ((v1 & 8) == 0)
  {
    goto LABEL_6;
  }

  v2 = *(this + 24);
  if (v2 == MEMORY[0x29EDC9758])
  {
    goto LABEL_6;
  }

  if ((*(v2 + 23) & 0x80000000) == 0)
  {
    *v2 = 0;
    *(v2 + 23) = 0;
LABEL_6:
    *(this + 36) = 0;
    return this;
  }

  **v2 = 0;
  *(v2 + 8) = 0;
  *(this + 36) = 0;
  return this;
}

uint64_t awd::metrics::CommCenterLowPowerEvent::MergePartialFromCodedStream(awd::metrics::CommCenterLowPowerEvent *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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

          v7 = TagFallback >> 3;
          v8 = TagFallback & 7;
          if (TagFallback >> 3 > 2)
          {
            break;
          }

          if (v7 == 1)
          {
            if ((TagFallback & 7) != 0)
            {
              goto LABEL_29;
            }

            v13 = *(a2 + 1);
            v9 = *(a2 + 2);
            if (v13 >= v9 || (v14 = *v13, v14 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
              if (!result)
              {
                return result;
              }

              v15 = *(a2 + 1);
              v9 = *(a2 + 2);
              *(this + 9) |= 1u;
              if (v15 < v9)
              {
                goto LABEL_36;
              }
            }

            else
            {
              *(this + 1) = v14;
              v15 = v13 + 1;
              *(a2 + 1) = v15;
              *(this + 9) |= 1u;
              if (v15 < v9)
              {
LABEL_36:
                if (*v15 == 16)
                {
                  v10 = v15 + 1;
                  *(a2 + 1) = v10;
                  if (v10 < v9)
                  {
                    goto LABEL_38;
                  }

LABEL_41:
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
                  if (!result)
                  {
                    return result;
                  }

                  v18 = *(a2 + 1);
                  v9 = *(a2 + 2);
                  *(this + 9) |= 2u;
                  if (v18 < v9)
                  {
                    goto LABEL_43;
                  }
                }
              }
            }
          }

          else
          {
            if (v7 != 2 || (TagFallback & 7) != 0)
            {
              goto LABEL_29;
            }

            v10 = *(a2 + 1);
            v9 = *(a2 + 2);
            if (v10 >= v9)
            {
              goto LABEL_41;
            }

LABEL_38:
            v17 = *v10;
            if (v17 < 0)
            {
              goto LABEL_41;
            }

            *(this + 4) = v17;
            v18 = v10 + 1;
            *(a2 + 1) = v18;
            *(this + 9) |= 2u;
            if (v18 < v9)
            {
LABEL_43:
              if (*v18 == 24)
              {
                v16 = v18 + 1;
                *(a2 + 1) = v16;
                if (v16 < v9)
                {
                  goto LABEL_45;
                }

LABEL_48:
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
                if (!result)
                {
                  return result;
                }

                v20 = *(a2 + 1);
                v22 = *(a2 + 2);
                v21 = *(this + 9) | 4;
                *(this + 9) = v21;
                if (v20 < v22)
                {
                  goto LABEL_50;
                }
              }
            }
          }
        }

        if (v7 == 3)
        {
          break;
        }

        if (v7 == 4 && v8 == 2)
        {
          *(this + 9) |= 8u;
          if (*(this + 3) != v4)
          {
            goto LABEL_18;
          }

LABEL_17:
          v11 = operator new(0x18uLL);
          v11[1] = 0;
          v11[2] = 0;
          *v11 = 0;
          *(this + 3) = v11;
          goto LABEL_18;
        }

LABEL_29:
        if (v8 == 4)
        {
          return 1;
        }

        if ((wireless_diagnostics::google::protobuf::internal::WireFormatLite::SkipField(a2, TagFallback) & 1) == 0)
        {
          return 0;
        }
      }

      if ((TagFallback & 7) != 0)
      {
        goto LABEL_29;
      }

      v16 = *(a2 + 1);
      v9 = *(a2 + 2);
      if (v16 >= v9)
      {
        goto LABEL_48;
      }

LABEL_45:
      v19 = *v16;
      if (v19 < 0)
      {
        goto LABEL_48;
      }

      *(this + 5) = v19;
      v20 = v16 + 1;
      *(a2 + 1) = v20;
      v21 = *(this + 9) | 4;
      *(this + 9) = v21;
    }

    while (v20 >= v9);
LABEL_50:
    if (*v20 == 34)
    {
      *(a2 + 1) = v20 + 1;
      *(this + 9) = v21 | 8;
      if (*(this + 3) == v4)
      {
        goto LABEL_17;
      }

LABEL_18:
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

uint64_t awd::metrics::CommCenterLowPowerEvent::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
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

LABEL_8:
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, *(v5 + 20), a2, a4);
      if ((*(v5 + 36) & 8) == 0)
      {
        return this;
      }

      goto LABEL_9;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, *(v5 + 16), a2, a4);
  v6 = *(v5 + 36);
  if ((v6 & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v6 & 8) == 0)
  {
    return this;
  }

LABEL_9:
  v7 = *(v5 + 24);

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteString();
}

uint64_t awd::metrics::CommCenterLowPowerEvent::ByteSize(awd::metrics::CommCenterLowPowerEvent *this)
{
  LOBYTE(v2) = *(this + 36);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_6;
  }

  if (*(this + 36))
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 9);
    if ((v2 & 2) == 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v3 = 0;
    if ((*(this + 36) & 2) == 0)
    {
      goto LABEL_12;
    }
  }

  v5 = *(this + 4);
  if (v5 >= 0x80)
  {
    v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    v2 = *(this + 9);
  }

  else
  {
    v6 = 2;
  }

  v3 = (v6 + v3);
LABEL_12:
  if ((v2 & 4) == 0)
  {
    if ((v2 & 8) != 0)
    {
      goto LABEL_19;
    }

LABEL_6:
    *(this + 8) = v3;
    return v3;
  }

  v7 = *(this + 5);
  if (v7 < 0x80)
  {
    v3 = (v3 + 2);
    if ((v2 & 8) != 0)
    {
      goto LABEL_19;
    }

    goto LABEL_6;
  }

  v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1 + v3;
  if ((*(this + 9) & 8) == 0)
  {
    goto LABEL_6;
  }

LABEL_19:
  v8 = *(this + 3);
  v9 = *(v8 + 23);
  v10 = v9;
  v11 = *(v8 + 8);
  if ((v9 & 0x80u) == 0)
  {
    v12 = *(v8 + 23);
  }

  else
  {
    v12 = v11;
  }

  if (v12 >= 0x80)
  {
    v13 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v12);
    v9 = *(v8 + 23);
    v11 = *(v8 + 8);
    v10 = *(v8 + 23);
  }

  else
  {
    v13 = 1;
  }

  if (v10 < 0)
  {
    v9 = v11;
  }

  v14 = v3 + v13 + v9;
  *(this + 8) = v14 + 1;
  return (v14 + 1);
}

void awd::metrics::CommCenterLowPowerEvent::CopyFrom(awd::metrics::CommCenterLowPowerEvent *this, const awd::metrics::CommCenterLowPowerEvent *a2)
{
  if (a2 != this)
  {
    (*(*this + 32))();

    awd::metrics::CommCenterLowPowerEvent::MergeFrom(this, a2);
  }
}

uint64_t awd::metrics::CommCenterLowPowerEvent::Swap(uint64_t this, awd::metrics::CommCenterLowPowerEvent *a2)
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
    v3 = *(this + 24);
    *(this + 24) = *(a2 + 3);
    *(a2 + 3) = v3;
    LODWORD(v3) = *(this + 36);
    *(this + 36) = *(a2 + 9);
    *(a2 + 9) = v3;
    LODWORD(v3) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v3;
  }

  return this;
}

char *awd::metrics::CommCenterLowPowerEvent::GetTypeName@<X0>(uint64_t a1@<X8>)
{
  result = operator new(0x28uLL);
  *a1 = result;
  *(a1 + 8) = xmmword_297431600;
  strcpy(result, "awd.metrics.CommCenterLowPowerEvent");
  return result;
}

uint64_t awd::metrics::CommCenterWakeInfo::SharedCtor(uint64_t this)
{
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 32) = 0;
  *(this + 24) = 0;
  return this;
}

awd::metrics::CommCenterWakeInfo *awd::metrics::CommCenterWakeInfo::CommCenterWakeInfo(awd::metrics::CommCenterWakeInfo *this, const awd::metrics::CommCenterWakeInfo *a2)
{
  *this = &unk_2A1E37528;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  awd::metrics::CommCenterWakeInfo::MergeFrom(this, a2);
  return this;
}

{
  *this = &unk_2A1E37528;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  awd::metrics::CommCenterWakeInfo::MergeFrom(this, a2);
  return this;
}

uint64_t awd::metrics::CommCenterWakeInfo::MergeFrom(uint64_t this, const awd::metrics::CommCenterWakeInfo *a2)
{
  if (a2 == this)
  {
    v2 = a2;
    v3 = this;
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v9);
    this = v3;
    a2 = v2;
  }

  LOBYTE(v4) = *(a2 + 32);
  if (v4)
  {
    if (*(a2 + 32))
    {
      v6 = *(a2 + 1);
      *(this + 32) |= 1u;
      *(this + 8) = v6;
      v4 = *(a2 + 8);
      if ((v4 & 2) == 0)
      {
LABEL_6:
        if ((v4 & 4) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_12;
      }
    }

    else if ((*(a2 + 32) & 2) == 0)
    {
      goto LABEL_6;
    }

    v7 = *(a2 + 4);
    *(this + 32) |= 2u;
    *(this + 16) = v7;
    v4 = *(a2 + 8);
    if ((v4 & 4) == 0)
    {
LABEL_7:
      if ((v4 & 8) == 0)
      {
        return this;
      }

      goto LABEL_8;
    }

LABEL_12:
    v8 = *(a2 + 5);
    *(this + 32) |= 4u;
    *(this + 20) = v8;
    if ((*(a2 + 8) & 8) == 0)
    {
      return this;
    }

LABEL_8:
    v5 = *(a2 + 6);
    *(this + 32) |= 8u;
    *(this + 24) = v5;
  }

  return this;
}

void sub_2972F4DD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2972F4DE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::CommCenterWakeInfo::~CommCenterWakeInfo(awd::metrics::CommCenterWakeInfo *this)
{
  *this = &unk_2A1E37528;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1E37528;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1E37528;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete(v1);
}

uint64_t awd::metrics::CommCenterWakeInfo::default_instance(awd::metrics::CommCenterWakeInfo *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::CommCenterWakeInfo::default_instance_;
  if (!awd::metrics::CommCenterWakeInfo::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_CCMetricsABMPower_2eproto(0, a2, a3, a4);
    return awd::metrics::CommCenterWakeInfo::default_instance_;
  }

  return result;
}

void *awd::metrics::CommCenterWakeInfo::New(awd::metrics::CommCenterWakeInfo *this)
{
  result = operator new(0x28uLL);
  *result = &unk_2A1E37528;
  result[1] = 0;
  result[2] = 0;
  result[3] = 0;
  *(result + 8) = 0;
  return result;
}

uint64_t awd::metrics::CommCenterWakeInfo::Clear(uint64_t this)
{
  if (*(this + 32))
  {
    *(this + 8) = 0;
    *(this + 16) = 0;
    *(this + 24) = 0;
  }

  *(this + 32) = 0;
  return this;
}

uint64_t awd::metrics::CommCenterWakeInfo::MergePartialFromCodedStream(awd::metrics::CommCenterWakeInfo *this, wireless_diagnostics::google::protobuf::io::CodedInputStream *a2)
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
              goto LABEL_23;
            }

            v10 = *(a2 + 1);
            v7 = *(a2 + 2);
            if (v10 >= v7 || (v11 = *v10, v11 < 0))
            {
              result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint64Fallback(a2, this + 1);
              if (!result)
              {
                return result;
              }

              v12 = *(a2 + 1);
              v7 = *(a2 + 2);
              *(this + 8) |= 1u;
              if (v12 < v7)
              {
                goto LABEL_30;
              }
            }

            else
            {
              *(this + 1) = v11;
              v12 = v10 + 1;
              *(a2 + 1) = v12;
              *(this + 8) |= 1u;
              if (v12 < v7)
              {
LABEL_30:
                if (*v12 == 16)
                {
                  v8 = v12 + 1;
                  *(a2 + 1) = v8;
                  if (v8 < v7)
                  {
                    goto LABEL_32;
                  }

LABEL_35:
                  result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 4);
                  if (!result)
                  {
                    return result;
                  }

                  v15 = *(a2 + 1);
                  v7 = *(a2 + 2);
                  *(this + 8) |= 2u;
                  if (v15 < v7)
                  {
                    goto LABEL_37;
                  }
                }
              }
            }
          }

          else
          {
            if (v6 != 2 || (TagFallback & 7) != 0)
            {
              goto LABEL_23;
            }

            v8 = *(a2 + 1);
            v7 = *(a2 + 2);
            if (v8 >= v7)
            {
              goto LABEL_35;
            }

LABEL_32:
            v14 = *v8;
            if (v14 < 0)
            {
              goto LABEL_35;
            }

            *(this + 4) = v14;
            v15 = v8 + 1;
            *(a2 + 1) = v15;
            *(this + 8) |= 2u;
            if (v15 < v7)
            {
LABEL_37:
              if (*v15 == 24)
              {
                v13 = v15 + 1;
                *(a2 + 1) = v13;
                if (v13 < v7)
                {
                  goto LABEL_39;
                }

LABEL_42:
                result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 5);
                if (!result)
                {
                  return result;
                }

                v17 = *(a2 + 1);
                v7 = *(a2 + 2);
                *(this + 8) |= 4u;
                if (v17 < v7)
                {
                  goto LABEL_44;
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
          goto LABEL_23;
        }

        v13 = *(a2 + 1);
        v7 = *(a2 + 2);
        if (v13 >= v7)
        {
          goto LABEL_42;
        }

LABEL_39:
        v16 = *v13;
        if (v16 < 0)
        {
          goto LABEL_42;
        }

        *(this + 5) = v16;
        v17 = v13 + 1;
        *(a2 + 1) = v17;
        *(this + 8) |= 4u;
        if (v17 < v7)
        {
LABEL_44:
          if (*v17 == 32)
          {
            v9 = v17 + 1;
            *(a2 + 1) = v9;
            if (v9 < v7)
            {
              goto LABEL_46;
            }

LABEL_49:
            result = wireless_diagnostics::google::protobuf::io::CodedInputStream::ReadVarint32Fallback(a2, this + 6);
            if (!result)
            {
              return result;
            }

            v21 = *(a2 + 1);
            v20 = *(a2 + 2);
            *(this + 8) |= 8u;
            if (v21 == v20)
            {
              goto LABEL_51;
            }
          }
        }
      }

      if (v6 != 4 || (TagFallback & 7) != 0)
      {
        break;
      }

      v9 = *(a2 + 1);
      v7 = *(a2 + 2);
      if (v9 >= v7)
      {
        goto LABEL_49;
      }

LABEL_46:
      v18 = *v9;
      if (v18 < 0)
      {
        goto LABEL_49;
      }

      *(this + 6) = v18;
      v19 = v9 + 1;
      *(a2 + 1) = v19;
      *(this + 8) |= 8u;
      if (v19 == v7)
      {
LABEL_51:
        if (*(a2 + 11) || *(a2 + 6) == *(a2 + 10))
        {
          *(a2 + 8) = 0;
          result = 1;
          *(a2 + 36) = 1;
          return result;
        }
      }
    }

LABEL_23:
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

uint64_t awd::metrics::CommCenterWakeInfo::SerializeWithCachedSizes(uint64_t this, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a2, uint64_t a3, wireless_diagnostics::google::protobuf::io::CodedOutputStream *a4)
{
  v5 = this;
  v6 = *(this + 32);
  if (v6)
  {
    this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt64(1, *(this + 8), a2, a4);
    v6 = v5[8];
    if ((v6 & 2) == 0)
    {
LABEL_3:
      if ((v6 & 4) == 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(3, v5[5], a2, a4);
      if ((v5[8] & 8) == 0)
      {
        return this;
      }

      goto LABEL_9;
    }
  }

  else if ((v6 & 2) == 0)
  {
    goto LABEL_3;
  }

  this = wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(2, v5[4], a2, a4);
  v6 = v5[8];
  if ((v6 & 4) != 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  if ((v6 & 8) == 0)
  {
    return this;
  }

LABEL_9:
  v7 = v5[6];

  return wireless_diagnostics::google::protobuf::internal::WireFormatLite::WriteUInt32(4, v7, a2, a4);
}

uint64_t awd::metrics::CommCenterWakeInfo::ByteSize(awd::metrics::CommCenterWakeInfo *this)
{
  LOBYTE(v2) = *(this + 32);
  if (!v2)
  {
    v3 = 0;
    goto LABEL_6;
  }

  if (*(this + 32))
  {
    v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize64(*(this + 1)) + 1;
    v2 = *(this + 8);
    if ((v2 & 2) == 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v3 = 0;
    if ((*(this + 32) & 2) == 0)
    {
      goto LABEL_12;
    }
  }

  v5 = *(this + 4);
  if (v5 >= 0x80)
  {
    v6 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v5) + 1;
    v2 = *(this + 8);
  }

  else
  {
    v6 = 2;
  }

  v3 = (v6 + v3);
LABEL_12:
  if ((v2 & 4) == 0)
  {
    if ((v2 & 8) != 0)
    {
      goto LABEL_19;
    }

LABEL_6:
    *(this + 7) = v3;
    return v3;
  }

  v7 = *(this + 5);
  if (v7 < 0x80)
  {
    v3 = (v3 + 2);
    if ((v2 & 8) != 0)
    {
      goto LABEL_19;
    }

    goto LABEL_6;
  }

  v3 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v7) + 1 + v3;
  if ((*(this + 8) & 8) == 0)
  {
    goto LABEL_6;
  }

LABEL_19:
  v8 = *(this + 6);
  if (v8 >= 0x80)
  {
    v9 = wireless_diagnostics::google::protobuf::io::CodedOutputStream::VarintSize32Fallback(v8) + 1 + v3;
  }

  else
  {
    v9 = (v3 + 2);
  }

  *(this + 7) = v9;
  return v9;
}

const awd::metrics::CommCenterWakeInfo *awd::metrics::CommCenterWakeInfo::CopyFrom(const awd::metrics::CommCenterWakeInfo *this, const awd::metrics::CommCenterWakeInfo *a2)
{
  if (a2 != this)
  {
    v4 = this;
    (*(*this + 32))();

    return awd::metrics::CommCenterWakeInfo::MergeFrom(v4, a2);
  }

  return this;
}

uint64_t awd::metrics::CommCenterWakeInfo::Swap(uint64_t this, awd::metrics::CommCenterWakeInfo *a2)
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
    LODWORD(v2) = *(this + 24);
    *(this + 24) = *(a2 + 6);
    *(a2 + 6) = v2;
    LODWORD(v2) = *(this + 32);
    *(this + 32) = *(a2 + 8);
    *(a2 + 8) = v2;
    LODWORD(v2) = *(this + 28);
    *(this + 28) = *(a2 + 7);
    *(a2 + 7) = v2;
  }

  return this;
}

double awd::metrics::CommCenterWakeInfo::GetTypeName@<D0>(uint64_t a1@<X8>)
{
  v3 = operator new(0x20uLL);
  *a1 = v3;
  *(a1 + 8) = xmmword_297431610;
  strcpy(v3, "awd.metrics.CommCenterWakeInfo");
  return *"mmCenterWakeInfo";
}

double awd::metrics::CommCenterLowPowerStats::SharedCtor(awd::metrics::CommCenterLowPowerStats *this)
{
  *(this + 8) = 0;
  *(this + 18) = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  return result;
}

awd::metrics::CommCenterLowPowerStats *awd::metrics::CommCenterLowPowerStats::CommCenterLowPowerStats(awd::metrics::CommCenterLowPowerStats *this, const awd::metrics::CommCenterLowPowerStats *a2)
{
  *this = &unk_2A1E375A0;
  *(this + 8) = 0;
  *(this + 18) = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 14) = 0;
  awd::metrics::CommCenterLowPowerStats::MergeFrom(this, a2);
  return this;
}

{
  *this = &unk_2A1E375A0;
  *(this + 8) = 0;
  *(this + 18) = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 14) = 0;
  awd::metrics::CommCenterLowPowerStats::MergeFrom(this, a2);
  return this;
}

void sub_2972F55EC(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::CommCenterPowerVotingRecord>::~RepeatedPtrField(v1 + 40);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

uint64_t awd::metrics::CommCenterLowPowerStats::MergeFrom(awd::metrics::CommCenterLowPowerStats *this, const awd::metrics::CommCenterLowPowerStats *a2)
{
  if (a2 == this)
  {
    wireless_diagnostics::google::protobuf::internal::LogMessage::LogMessage();
    wireless_diagnostics::google::protobuf::internal::LogMessage::operator<<();
    wireless_diagnostics::google::protobuf::internal::LogFinisher::operator=();
    wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(v24);
  }

  v4 = *(this + 12);
  v5 = *(a2 + 12);
  result = wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 40));
  if (*(a2 + 12) >= 1)
  {
    v7 = 0;
    do
    {
      while (1)
      {
        v11 = *(*(a2 + 5) + 8 * v7);
        v12 = *(this + 13);
        v13 = *(this + 12);
        if (v13 >= v12)
        {
          break;
        }

        v14 = *(this + 5);
        *(this + 12) = v13 + 1;
        result = awd::metrics::CommCenterMissedMTMessage::MergeFrom(*(v14 + 8 * v13), v11);
        if (++v7 >= *(a2 + 12))
        {
          goto LABEL_11;
        }
      }

      if (v12 == *(this + 14))
      {
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((this + 40));
        v12 = *(this + 13);
      }

      *(this + 13) = v12 + 1;
      v8 = operator new(0x20uLL);
      *v8 = &unk_2A1E37438;
      *(v8 + 1) = 0;
      *(v8 + 2) = 0;
      *(v8 + 3) = 0;
      v9 = *(this + 5);
      v10 = *(this + 12);
      *(this + 12) = v10 + 1;
      *(v9 + 8 * v10) = v8;
      result = awd::metrics::CommCenterMissedMTMessage::MergeFrom(v8, v11);
      ++v7;
    }

    while (v7 < *(a2 + 12));
  }

LABEL_11:
  LOBYTE(v15) = *(a2 + 72);
  if (v15)
  {
    if (*(a2 + 72))
    {
      v17 = *(a2 + 1);
      *(this + 18) |= 1u;
      *(this + 1) = v17;
      v15 = *(a2 + 18);
      if ((v15 & 2) == 0)
      {
LABEL_14:
        if ((v15 & 4) == 0)
        {
          goto LABEL_15;
        }

        goto LABEL_24;
      }
    }

    else if ((*(a2 + 72) & 2) == 0)
    {
      goto LABEL_14;
    }

    v18 = *(a2 + 4);
    *(this + 18) |= 2u;
    *(this + 4) = v18;
    v15 = *(a2 + 18);
    if ((v15 & 4) == 0)
    {
LABEL_15:
      if ((v15 & 8) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_25;
    }

LABEL_24:
    v19 = *(a2 + 5);
    *(this + 18) |= 4u;
    *(this + 5) = v19;
    v15 = *(a2 + 18);
    if ((v15 & 8) == 0)
    {
LABEL_16:
      if ((v15 & 0x10) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_26;
    }

LABEL_25:
    v20 = *(a2 + 6);
    *(this + 18) |= 8u;
    *(this + 6) = v20;
    v15 = *(a2 + 18);
    if ((v15 & 0x10) == 0)
    {
LABEL_17:
      if ((v15 & 0x20) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_27;
    }

LABEL_26:
    v21 = *(a2 + 7);
    *(this + 18) |= 0x10u;
    *(this + 7) = v21;
    v15 = *(a2 + 18);
    if ((v15 & 0x20) == 0)
    {
LABEL_18:
      if ((v15 & 0x40) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_28;
    }

LABEL_27:
    v22 = *(a2 + 8);
    *(this + 18) |= 0x20u;
    *(this + 8) = v22;
    v15 = *(a2 + 18);
    if ((v15 & 0x40) == 0)
    {
LABEL_19:
      if ((v15 & 0x80) == 0)
      {
        return result;
      }

      goto LABEL_20;
    }

LABEL_28:
    v23 = *(a2 + 9);
    *(this + 18) |= 0x40u;
    *(this + 9) = v23;
    if ((*(a2 + 18) & 0x80) == 0)
    {
      return result;
    }

LABEL_20:
    v16 = *(a2 + 16);
    *(this + 18) |= 0x80u;
    *(this + 16) = v16;
  }

  return result;
}

void sub_2972F586C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2972F5880(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2972F58F4(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::CommCenterPowerVotingRecord>::~RepeatedPtrField(v1 + 40);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void awd::metrics::CommCenterLowPowerStats::~CommCenterLowPowerStats(awd::metrics::CommCenterLowPowerStats *this)
{
  *this = &unk_2A1E375A0;
  v2 = *(this + 13);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*(this + 5) + 8 * i);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *(this + 13);
      }
    }
  }

  v5 = *(this + 5);
  if (v5)
  {
    operator delete[](v5);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1E375A0;
  v2 = *(this + 13);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*(this + 5) + 8 * i);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *(this + 13);
      }
    }
  }

  v5 = *(this + 5);
  if (v5)
  {
    operator delete[](v5);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1E375A0;
  v2 = *(this + 13);
  if (v2 >= 1)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*(this + 5) + 8 * i);
      if (v4)
      {
        (*(*v4 + 8))(v4);
        v2 = *(this + 13);
      }
    }
  }

  v5 = *(this + 5);
  if (v5)
  {
    operator delete[](v5);
  }

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);

  operator delete(v6);
}

uint64_t awd::metrics::CommCenterLowPowerStats::default_instance(awd::metrics::CommCenterLowPowerStats *this, uint64_t a2, uint64_t a3, const char *a4)
{
  result = awd::metrics::CommCenterLowPowerStats::default_instance_;
  if (!awd::metrics::CommCenterLowPowerStats::default_instance_)
  {
    awd::metrics::protobuf_AddDesc_CCMetricsABMPower_2eproto(0, a2, a3, a4);
    return awd::metrics::CommCenterLowPowerStats::default_instance_;
  }

  return result;
}

double awd::metrics::CommCenterLowPowerStats::New(awd::metrics::CommCenterLowPowerStats *this)
{
  v1 = operator new(0x50uLL);
  *v1 = &unk_2A1E375A0;
  *(v1 + 8) = 0;
  *(v1 + 18) = 0;
  result = 0.0;
  *(v1 + 8) = 0u;
  *(v1 + 24) = 0u;
  *(v1 + 40) = 0u;
  *(v1 + 14) = 0;
  return result;
}