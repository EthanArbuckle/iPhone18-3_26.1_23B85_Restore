void sub_2975F80E4(_Unwind_Exception *a1)
{
  PowerBudget::~PowerBudget((v1 + 43));
  PowerBudget::~PowerBudget((v1 + 39));
  PowerBudget::~PowerBudget((v1 + 35));
  PowerBudget::~PowerBudget(v4);
  PowerBudget::~PowerBudget(v5);
  PowerBudget::~PowerBudget(v3);
  v7 = v1[21];
  v1[21] = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100]((v1 + 19));
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100]((v1 + 17));
  MEMORY[0x29C270D60](v1 + 13);
  ctu::SharedSynchronizable<data::TransportService::State>::~SharedSynchronizable(v2);
  Service::~Service(v1);
  _Unwind_Resume(a1);
}

void CPMSModule::~CPMSModule(CPMSModule *this)
{
  *this = &unk_2A1E4BF40;
  v2 = this + 104;
  v3 = *(this + 13);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v18 = 0;
    _os_log_impl(&dword_297476000, v3, OS_LOG_TYPE_DEFAULT, "#I Gone!", v18, 2u);
  }

  v4 = *(this + 47);
  if (v4)
  {
    CFRelease(v4);
  }

  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(this + 344, *(this + 44));
  *(this + 44) = 0;
  *(this + 45) = 0;
  *(this + 43) = this + 352;

  *(this + 46) = 0;
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(this + 344, *(this + 44));
  *(this + 44) = 0;
  *(this + 45) = 0;
  *(this + 43) = this + 352;
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(this + 312, *(this + 40));
  *(this + 40) = 0;
  *(this + 41) = 0;
  *(this + 39) = this + 320;

  *(this + 42) = 0;
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(this + 312, *(this + 40));
  *(this + 40) = 0;
  *(this + 41) = 0;
  *(this + 39) = this + 320;
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(this + 280, *(this + 36));
  *(this + 36) = 0;
  *(this + 37) = 0;
  *(this + 35) = this + 288;

  *(this + 38) = 0;
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(this + 280, *(this + 36));
  *(this + 36) = 0;
  *(this + 37) = 0;
  *(this + 35) = this + 288;
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(this + 248, *(this + 32));
  *(this + 32) = 0;
  *(this + 33) = 0;
  *(this + 31) = this + 256;

  *(this + 34) = 0;
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(this + 248, *(this + 32));
  v5 = *(this + 28);
  *(this + 31) = this + 256;
  *(this + 32) = 0;
  *(this + 33) = 0;
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(this + 216, v5);
  *(this + 28) = 0;
  *(this + 29) = 0;
  *(this + 27) = this + 224;

  *(this + 30) = 0;
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(this + 216, *(this + 28));
  v6 = *(this + 24);
  *(this + 27) = this + 224;
  *(this + 28) = 0;
  *(this + 29) = 0;
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(this + 184, v6);
  *(this + 24) = 0;
  *(this + 25) = 0;
  *(this + 23) = this + 192;

  *(this + 26) = 0;
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(this + 184, *(this + 24));
  *(this + 24) = 0;
  *(this + 25) = 0;
  *(this + 23) = this + 192;
  v7 = *(this + 21);
  *(this + 21) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(this + 20);
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  v9 = *(this + 18);
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  MEMORY[0x29C270D60](v2);
  v10 = *(this + 12);
  if (v10)
  {
    dispatch_release(v10);
  }

  v11 = *(this + 11);
  if (v11)
  {
    dispatch_release(v11);
  }

  v12 = *(this + 10);
  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }

  *this = &unk_2A1E500C0;
  std::__tree<std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>>>::destroy(this + 48, *(this + 7));
  v13 = *(this + 3);
  if (v13)
  {
    v14 = *(this + 4);
    v15 = *(this + 3);
    if (v14 != v13)
    {
      do
      {
        v16 = *(v14 - 1);
        v14 -= 3;
        if (v16 < 0)
        {
          operator delete(*v14);
        }
      }

      while (v14 != v13);
      v15 = *(this + 3);
    }

    *(this + 4) = v13;
    operator delete(v15);
  }

  v17 = *(this + 2);
  if (v17)
  {
    std::__shared_weak_count::__release_weak(v17);
  }
}

{
  CPMSModule::~CPMSModule(this);

  operator delete(v1);
}

_WORD *CPMSModule::getBootstrapStages@<X0>(void *a1@<X8>)
{
  v3 = operator new(2uLL);
  *a1 = v3;
  *v3 = 256;
  result = v3 + 1;
  a1[1] = result;
  a1[2] = result;
  return result;
}

void CPMSModule::shutdown(void *a1, dispatch_object_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
  }

  v4 = a1[10];
  if (!v4 || (v5 = a1[9], (v6 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = operator new(0x10uLL);
  *v8 = a1;
  v8[1] = v3;
  v9 = a1[11];
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  v10 = operator new(0x18uLL);
  *v10 = v8;
  v10[1] = v5;
  v10[2] = v7;
  dispatch_async_f(v9, v10, dispatch::async<void ctu::SharedSynchronizable<CPMSModule>::execute_wrapped<CPMSModule::shutdown(dispatch::group_session)::$_0>(CPMSModule::shutdown(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<CPMSModule::shutdown(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<CPMSModule::shutdown(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);

    std::__shared_weak_count::__release_weak(v7);
  }
}

void CPMSModule::bootstrap(void *a1, int a2, dispatch_object_t *a3)
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
    dispatch_async_f(v10, v11, dispatch::async<void ctu::SharedSynchronizable<CPMSModule>::execute_wrapped<CPMSModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(CPMSModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<CPMSModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<CPMSModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke);
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
  dispatch_async_f(v18, v19, dispatch::async<void ctu::SharedSynchronizable<CPMSModule>::execute_wrapped<CPMSModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1>(CPMSModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<CPMSModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1,dispatch_queue_s *::default_delete<CPMSModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1>>)::{lambda(void *)#1}::__invoke);
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
  dispatch_async_f(v24, v25, dispatch::async<void ctu::SharedSynchronizable<CPMSModule>::execute_wrapped<CPMSModule::bootstrap(BootstrapStage,dispatch::group_session)::$_2>(CPMSModule::bootstrap(BootstrapStage,dispatch::group_session)::$_2 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<CPMSModule::bootstrap(BootstrapStage,dispatch::group_session)::$_2,dispatch_queue_s *::default_delete<CPMSModule::bootstrap(BootstrapStage,dispatch::group_session)::$_2>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_18;
  }
}

void CPMSModule::registerCommandHandlers_sync(CPMSModule *this)
{
  v2 = *(this + 13);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(__dst) = 0;
    _os_log_debug_impl(&dword_297476000, v2, OS_LOG_TYPE_DEBUG, "#D Registering command handlers", &__dst, 2u);
    v3 = *(this + 10);
    if (!v3)
    {
LABEL_105:
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }
  }

  else
  {
    v3 = *(this + 10);
    if (!v3)
    {
      goto LABEL_105;
    }
  }

  v4 = *(this + 9);
  v5 = std::__shared_weak_count::lock(v3);
  if (!v5)
  {
    goto LABEL_105;
  }

  v6 = v5;
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = pthread_mutex_lock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  v8 = off_2A18CADD8;
  if (!off_2A18CADD8)
  {
    CommandDriverFactory::create_default_global(&__dst, v7);
    v9 = __dst;
    __dst = 0uLL;
    v10 = *(&off_2A18CADD8 + 1);
    off_2A18CADD8 = v9;
    if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
    }

    v11 = *(&__dst + 1);
    if (*(&__dst + 1) && !atomic_fetch_add((*(&__dst + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
    }

    v8 = off_2A18CADD8;
  }

  v64 = v8;
  v65 = *(&off_2A18CADD8 + 1);
  if (*(&off_2A18CADD8 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18CADD8 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  (*(*v8 + 96))(&v66, v8);
  v12 = v66;
  v66 = 0uLL;
  v13 = *(this + 18);
  *(this + 136) = v12;
  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

  v14 = *(&v66 + 1);
  if (*(&v66 + 1) && !atomic_fetch_add((*(&v66 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
  }

  v15 = v65;
  if (v65 && !atomic_fetch_add(&v65->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v15->__on_zero_shared)(v15);
    std::__shared_weak_count::__release_weak(v15);
    if (*(this + 17))
    {
LABEL_25:
      v16 = *MEMORY[0x29EDBE708];
      v17 = strlen(*MEMORY[0x29EDBE708]);
      if (v17 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v18 = v17;
      if (v17 >= 0x17)
      {
        if ((v17 | 7) == 0x17)
        {
          v20 = 25;
        }

        else
        {
          v20 = (v17 | 7) + 1;
        }

        p_dst = operator new(v20);
        *(&__dst + 1) = v18;
        v63 = v20 | 0x8000000000000000;
        *&__dst = p_dst;
      }

      else
      {
        HIBYTE(v63) = v17;
        p_dst = &__dst;
        if (!v17)
        {
LABEL_34:
          *(p_dst + v18) = 0;
          aBlock[0] = MEMORY[0x29EDCA5F8];
          aBlock[1] = 3321888768;
          aBlock[2] = ___ZN10CPMSModule28registerCommandHandlers_syncEv_block_invoke;
          aBlock[3] = &__block_descriptor_56_e8_40c35_ZTSNSt3__18weak_ptrI10CPMSModuleEE_e63_v24__0_dict__object__v__8_block_void_____int__xpc::dict______16l;
          aBlock[4] = this;
          aBlock[5] = v4;
          v60 = v6;
          atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          v21 = _Block_copy(aBlock);
          v61 = v21;
          Service::registerCommandHandler(this, &__dst, &v61);
          if (v21)
          {
            _Block_release(v21);
          }

          if (SHIBYTE(v63) < 0)
          {
            operator delete(__dst);
          }

          v22 = *MEMORY[0x29EDBF458];
          v23 = strlen(*MEMORY[0x29EDBF458]);
          if (v23 > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          v24 = v23;
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

            v25 = operator new(v26);
            *(&__dst + 1) = v24;
            v63 = v26 | 0x8000000000000000;
            *&__dst = v25;
          }

          else
          {
            HIBYTE(v63) = v23;
            v25 = &__dst;
            if (!v23)
            {
LABEL_47:
              *(v25 + v24) = 0;
              v56[0] = MEMORY[0x29EDCA5F8];
              v56[1] = 3321888768;
              v56[2] = ___ZN10CPMSModule28registerCommandHandlers_syncEv_block_invoke_4;
              v56[3] = &__block_descriptor_56_e8_40c35_ZTSNSt3__18weak_ptrI10CPMSModuleEE_e63_v24__0_dict__object__v__8_block_void_____int__xpc::dict______16l;
              v56[4] = this;
              v56[5] = v4;
              v57 = v6;
              atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
              v27 = _Block_copy(v56);
              v58 = v27;
              Service::registerCommandHandler(this, &__dst, &v58);
              if (v27)
              {
                _Block_release(v27);
              }

              if (SHIBYTE(v63) < 0)
              {
                operator delete(__dst);
              }

              v28 = *MEMORY[0x29EDBEB38];
              v29 = strlen(*MEMORY[0x29EDBEB38]);
              if (v29 > 0x7FFFFFFFFFFFFFF7)
              {
                std::string::__throw_length_error[abi:ne200100]();
              }

              v30 = v29;
              if (v29 >= 0x17)
              {
                if ((v29 | 7) == 0x17)
                {
                  v32 = 25;
                }

                else
                {
                  v32 = (v29 | 7) + 1;
                }

                v31 = operator new(v32);
                *(&__dst + 1) = v30;
                v63 = v32 | 0x8000000000000000;
                *&__dst = v31;
              }

              else
              {
                HIBYTE(v63) = v29;
                v31 = &__dst;
                if (!v29)
                {
LABEL_60:
                  *(v31 + v30) = 0;
                  v53[0] = MEMORY[0x29EDCA5F8];
                  v53[1] = 3321888768;
                  v53[2] = ___ZN10CPMSModule28registerCommandHandlers_syncEv_block_invoke_2;
                  v53[3] = &__block_descriptor_56_e8_40c35_ZTSNSt3__18weak_ptrI10CPMSModuleEE_e63_v24__0_dict__object__v__8_block_void_____int__xpc::dict______16l;
                  v53[4] = this;
                  v53[5] = v4;
                  v54 = v6;
                  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                  v33 = _Block_copy(v53);
                  v55 = v33;
                  Service::registerCommandHandler(this, &__dst, &v55);
                  if (v33)
                  {
                    _Block_release(v33);
                  }

                  if (SHIBYTE(v63) < 0)
                  {
                    operator delete(__dst);
                  }

                  v34 = *MEMORY[0x29EDBE688];
                  v35 = strlen(*MEMORY[0x29EDBE688]);
                  if (v35 > 0x7FFFFFFFFFFFFFF7)
                  {
                    std::string::__throw_length_error[abi:ne200100]();
                  }

                  v36 = v35;
                  if (v35 >= 0x17)
                  {
                    if ((v35 | 7) == 0x17)
                    {
                      v38 = 25;
                    }

                    else
                    {
                      v38 = (v35 | 7) + 1;
                    }

                    v37 = operator new(v38);
                    *(&__dst + 1) = v36;
                    v63 = v38 | 0x8000000000000000;
                    *&__dst = v37;
                  }

                  else
                  {
                    HIBYTE(v63) = v35;
                    v37 = &__dst;
                    if (!v35)
                    {
LABEL_73:
                      *(v37 + v36) = 0;
                      v50[0] = MEMORY[0x29EDCA5F8];
                      v50[1] = 3321888768;
                      v50[2] = ___ZN10CPMSModule28registerCommandHandlers_syncEv_block_invoke_3;
                      v50[3] = &__block_descriptor_56_e8_40c35_ZTSNSt3__18weak_ptrI10CPMSModuleEE_e63_v24__0_dict__object__v__8_block_void_____int__xpc::dict______16l;
                      v50[4] = this;
                      v50[5] = v4;
                      v51 = v6;
                      atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                      v39 = _Block_copy(v50);
                      v52 = v39;
                      Service::registerCommandHandler(this, &__dst, &v52);
                      if (v39)
                      {
                        _Block_release(v39);
                      }

                      if (SHIBYTE(v63) < 0)
                      {
                        operator delete(__dst);
                      }

                      v40 = *MEMORY[0x29EDBE620];
                      v41 = strlen(*MEMORY[0x29EDBE620]);
                      if (v41 > 0x7FFFFFFFFFFFFFF7)
                      {
                        std::string::__throw_length_error[abi:ne200100]();
                      }

                      v42 = v41;
                      if (v41 >= 0x17)
                      {
                        if ((v41 | 7) == 0x17)
                        {
                          v44 = 25;
                        }

                        else
                        {
                          v44 = (v41 | 7) + 1;
                        }

                        v43 = operator new(v44);
                        *(&__dst + 1) = v42;
                        v63 = v44 | 0x8000000000000000;
                        *&__dst = v43;
                      }

                      else
                      {
                        HIBYTE(v63) = v41;
                        v43 = &__dst;
                        if (!v41)
                        {
                          goto LABEL_86;
                        }
                      }

                      memmove(v43, v40, v42);
LABEL_86:
                      *(v43 + v42) = 0;
                      v47[0] = MEMORY[0x29EDCA5F8];
                      v47[1] = 3321888768;
                      v47[2] = ___ZN10CPMSModule28registerCommandHandlers_syncEv_block_invoke_4;
                      v47[3] = &__block_descriptor_56_e8_40c35_ZTSNSt3__18weak_ptrI10CPMSModuleEE_e63_v24__0_dict__object__v__8_block_void_____int__xpc::dict______16l;
                      v47[4] = this;
                      v47[5] = v4;
                      v48 = v6;
                      atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                      v45 = _Block_copy(v47);
                      v49 = v45;
                      Service::registerCommandHandler(this, &__dst, &v49);
                      if (v45)
                      {
                        _Block_release(v45);
                      }

                      if (SHIBYTE(v63) < 0)
                      {
                        operator delete(__dst);
                      }

                      if (v48)
                      {
                        std::__shared_weak_count::__release_weak(v48);
                      }

                      if (v51)
                      {
                        std::__shared_weak_count::__release_weak(v51);
                      }

                      if (v54)
                      {
                        std::__shared_weak_count::__release_weak(v54);
                      }

                      if (v57)
                      {
                        std::__shared_weak_count::__release_weak(v57);
                      }

                      if (v60)
                      {
                        std::__shared_weak_count::__release_weak(v60);
                      }

                      goto LABEL_103;
                    }
                  }

                  memmove(v37, v34, v36);
                  goto LABEL_73;
                }
              }

              memmove(v31, v28, v30);
              goto LABEL_60;
            }
          }

          memmove(v25, v22, v24);
          goto LABEL_47;
        }
      }

      memmove(p_dst, v16, v18);
      goto LABEL_34;
    }
  }

  else if (*(this + 17))
  {
    goto LABEL_25;
  }

  v46 = *(this + 13);
  if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
  {
    LOWORD(__dst) = 0;
    _os_log_error_impl(&dword_297476000, v46, OS_LOG_TYPE_ERROR, "Failed to create CPMS Command Driver", &__dst, 2u);
  }

LABEL_103:
  std::__shared_weak_count::__release_weak(v6);
}

void sub_2975F91D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, std::__shared_weak_count *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, std::__shared_weak_count *a39)
{
  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  std::__shared_weak_count::__release_weak(v39);
  _Unwind_Resume(a1);
}

void ___ZN10CPMSModule28registerCommandHandlers_syncEv_block_invoke(void *a1, uint64_t a2, const void **a3)
{
  v4 = a1[6];
  if (v4)
  {
    v6 = a1[4];
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = a1[5];
      if (atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        if (!v8)
        {
          return;
        }
      }

      else
      {
        v9 = v7;
        (v7->__on_zero_shared)();
        std::__shared_weak_count::__release_weak(v9);
        if (!v8)
        {
          return;
        }
      }

      v11 = a1[5];
      v10 = a1[6];
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      if (*a3)
      {
        v12 = _Block_copy(*a3);
        v13 = v6[10];
        if (!v13)
        {
LABEL_23:
          std::__throw_bad_weak_ptr[abi:ne200100]();
        }
      }

      else
      {
        v12 = 0;
        v13 = v6[10];
        if (!v13)
        {
          goto LABEL_23;
        }
      }

      v14 = v6[9];
      v15 = std::__shared_weak_count::lock(v13);
      if (!v15)
      {
        goto LABEL_23;
      }

      v16 = v15;
      v17 = operator new(0x20uLL);
      v18 = v17;
      *v17 = v11;
      v17[1] = v10;
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v17[2] = v6;
      v17[3] = v12;
      v19 = v6[11];
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      v20 = operator new(0x18uLL);
      *v20 = v18;
      v20[1] = v14;
      v20[2] = v16;
      dispatch_async_f(v19, v20, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI10CPMSModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb_E3__4EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_);
      if (atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        if (!v10)
        {
          return;
        }
      }

      else
      {
        (v16->__on_zero_shared)(v16);
        std::__shared_weak_count::__release_weak(v16);
        if (!v10)
        {
          return;
        }
      }

      std::__shared_weak_count::__release_weak(v10);
    }
  }
}

uint64_t __copy_helper_block_e8_40c35_ZTSNSt3__18weak_ptrI10CPMSModuleEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c35_ZTSNSt3__18weak_ptrI10CPMSModuleEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZN10CPMSModule28registerCommandHandlers_syncEv_block_invoke_4(void *a1, xpc_object_t *a2, const void **a3)
{
  v4 = a1[6];
  if (v4)
  {
    v7 = a1[4];
    v8 = std::__shared_weak_count::lock(v4);
    if (v8)
    {
      v9 = a1[5];
      if (atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        if (!v9)
        {
          return;
        }
      }

      else
      {
        v10 = v8;
        (v8->__on_zero_shared)();
        std::__shared_weak_count::__release_weak(v10);
        if (!v9)
        {
          return;
        }
      }

      value = xpc_dictionary_get_value(*a2, *MEMORY[0x29EDBE568]);
      object = value;
      if (value)
      {
        xpc_retain(value);
      }

      else
      {
        object = xpc_null_create();
      }

      v12 = xpc::dyn_cast_or_default(&object, 0);
      xpc_release(object);
      v14 = a1[5];
      v13 = a1[6];
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      if (*a3)
      {
        v15 = _Block_copy(*a3);
        v16 = v7[10];
        if (!v16)
        {
LABEL_24:
          std::__throw_bad_weak_ptr[abi:ne200100]();
        }
      }

      else
      {
        v15 = 0;
        v16 = v7[10];
        if (!v16)
        {
          goto LABEL_24;
        }
      }

      v17 = v7[9];
      v18 = std::__shared_weak_count::lock(v16);
      if (!v18)
      {
        goto LABEL_24;
      }

      v19 = v18;
      v20 = operator new(0x28uLL);
      v21 = v20;
      *v20 = v14;
      v20[1] = v13;
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v20[2] = v7;
      *(v20 + 6) = v12;
      v20[4] = v15;
      v22 = v7[11];
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      v23 = operator new(0x18uLL);
      *v23 = v21;
      v23[1] = v17;
      v23[2] = v19;
      dispatch_async_f(v22, v23, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI10CPMSModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb0_E3__5EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_);
      if (!atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v19->__on_zero_shared)(v19);
        std::__shared_weak_count::__release_weak(v19);
      }

      if (v13)
      {
        std::__shared_weak_count::__release_weak(v13);
      }
    }
  }
}

void ___ZN10CPMSModule28registerCommandHandlers_syncEv_block_invoke_2(void *a1, uint64_t a2, const void **a3)
{
  v4 = a1[6];
  if (v4)
  {
    v6 = a1[4];
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = a1[5];
      if (atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        if (!v8)
        {
          return;
        }
      }

      else
      {
        v9 = v7;
        (v7->__on_zero_shared)();
        std::__shared_weak_count::__release_weak(v9);
        if (!v8)
        {
          return;
        }
      }

      v11 = a1[5];
      v10 = a1[6];
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      if (*a3)
      {
        v12 = _Block_copy(*a3);
        v13 = v6[10];
        if (!v13)
        {
LABEL_23:
          std::__throw_bad_weak_ptr[abi:ne200100]();
        }
      }

      else
      {
        v12 = 0;
        v13 = v6[10];
        if (!v13)
        {
          goto LABEL_23;
        }
      }

      v14 = v6[9];
      v15 = std::__shared_weak_count::lock(v13);
      if (!v15)
      {
        goto LABEL_23;
      }

      v16 = v15;
      v17 = operator new(0x20uLL);
      v18 = v17;
      *v17 = v11;
      v17[1] = v10;
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v17[2] = v6;
      v17[3] = v12;
      v19 = v6[11];
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      v20 = operator new(0x18uLL);
      *v20 = v18;
      v20[1] = v14;
      v20[2] = v16;
      dispatch_async_f(v19, v20, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI10CPMSModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb1_E3__6EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_);
      if (atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        if (!v10)
        {
          return;
        }
      }

      else
      {
        (v16->__on_zero_shared)(v16);
        std::__shared_weak_count::__release_weak(v16);
        if (!v10)
        {
          return;
        }
      }

      std::__shared_weak_count::__release_weak(v10);
    }
  }
}

void ___ZN10CPMSModule28registerCommandHandlers_syncEv_block_invoke_3(void *a1, xpc_object_t *a2, const void **a3)
{
  v4 = a1[6];
  if (!v4)
  {
    return;
  }

  v7 = a1[4];
  v8 = std::__shared_weak_count::lock(v4);
  if (!v8)
  {
    return;
  }

  v9 = a1[5];
  if (atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (!v9)
    {
      return;
    }
  }

  else
  {
    v10 = v8;
    (v8->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v10);
    if (!v9)
    {
      return;
    }
  }

  v12 = a1[5];
  v11 = a1[6];
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = *a2;
  if (v13)
  {
    xpc_retain(v13);
    v14 = *a3;
    if (*a3)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v13 = xpc_null_create();
    v14 = *a3;
    if (*a3)
    {
LABEL_11:
      v15 = _Block_copy(v14);
      v16 = v7[10];
      if (!v16)
      {
LABEL_25:
        std::__throw_bad_weak_ptr[abi:ne200100]();
      }

      goto LABEL_15;
    }
  }

  v15 = 0;
  v16 = v7[10];
  if (!v16)
  {
    goto LABEL_25;
  }

LABEL_15:
  v17 = v7[9];
  v18 = std::__shared_weak_count::lock(v16);
  if (!v18)
  {
    goto LABEL_25;
  }

  v19 = v18;
  v20 = operator new(0x28uLL);
  v21 = v20;
  *v20 = v12;
  v20[1] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v20[2] = v7;
  v20[3] = v13;
  v22 = xpc_null_create();
  v21[4] = v15;
  v23 = v7[11];
  atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
  v24 = operator new(0x18uLL);
  *v24 = v21;
  v24[1] = v17;
  v24[2] = v19;
  dispatch_async_f(v23, v24, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI10CPMSModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb2_E3__7EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_);
  if (!atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v19);
  }

  xpc_release(v22);
  if (v11)
  {

    std::__shared_weak_count::__release_weak(v11);
  }
}

void ___ZN10CPMSModule28registerCommandHandlers_syncEv_block_invoke_4(void *a1, uint64_t a2, const void **a3)
{
  v4 = a1[6];
  if (v4)
  {
    v6 = a1[4];
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = a1[5];
      if (atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        if (!v8)
        {
          return;
        }
      }

      else
      {
        v9 = v7;
        (v7->__on_zero_shared)();
        std::__shared_weak_count::__release_weak(v9);
        if (!v8)
        {
          return;
        }
      }

      v10 = *a3;
      if (*a3)
      {
        v13 = 0;
        aBlock = _Block_copy(v10);
        CPMSModule::getCurrentPower(v6, &v13, &aBlock);
        if (aBlock)
        {
          _Block_release(aBlock);
        }
      }

      else
      {
        v11 = *(v6 + 104);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_297476000, v11, OS_LOG_TYPE_ERROR, "Expected response handler", buf, 2u);
        }
      }
    }
  }
}

void sub_2975F9CF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *aBlock)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  _Unwind_Resume(exception_object);
}

void CPMSModule::getCurrentPower(uint64_t a1, NSObject **a2, uint64_t *a3)
{
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v6 = a1 + 72;
  v32[0] = MEMORY[0x29EDCA5F8];
  v32[1] = 3221225472;
  v32[2] = ___ZN10CPMSModule15getCurrentPowerEN8dispatch13group_sessionENS0_5blockIU13block_pointerFviN3xpc4dictEEEE_block_invoke;
  v32[3] = &unk_29EE6C590;
  v32[5] = &v33;
  v32[6] = a1;
  v32[4] = &v37;
  v41 = v32;
  block = MEMORY[0x29EDCA5F8];
  v43 = 3221225472;
  v44 = ___ZNK3ctu20SharedSynchronizableI10CPMSModuleE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  v45 = &__block_descriptor_48_e5_v8__0l;
  v46 = a1 + 72;
  v47 = &v41;
  v8 = a1 + 88;
  v7 = *(a1 + 88);
  if (*(v8 + 8))
  {
    dispatch_async_and_wait(v7, &block);
    if (*(v38 + 24) != 1)
    {
      goto LABEL_28;
    }
  }

  else
  {
    dispatch_sync(v7, &block);
    if (*(v38 + 24) != 1)
    {
      goto LABEL_28;
    }
  }

  if (*(v34 + 24) == 1)
  {
    v9 = *(a1 + 80);
    if (!v9 || (v10 = *(a1 + 72), (v11 = std::__shared_weak_count::lock(v9)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v12 = v11;
    atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v12);
    }

    v13 = *(a1 + 136);
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 3321888768;
    aBlock[2] = ___ZN10CPMSModule15getCurrentPowerEN8dispatch13group_sessionENS0_5blockIU13block_pointerFviN3xpc4dictEEEE_block_invoke_2;
    aBlock[3] = &__block_descriptor_72_e8_40c30_ZTSN8dispatch13group_sessionE48c35_ZTSNSt3__18weak_ptrI10CPMSModuleEE64c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE_e670_v32__0_BudgetData__map_abm::BasebandCPMSPowerBudgetScale__std::optional_unsigned_int___std::less_abm::BasebandCPMSPowerBudgetScale___std::allocator_std::pair_const_abm::BasebandCPMSPowerBudgetScale__std::optional_unsigned_int________tree_std::__value_type_abm::BasebandCPMSPowerBudgetScale__std::optional_unsigned_int____std::__map_value_compare_abm::BasebandCPMSPowerBudgetScale__std::__value_type_abm::BasebandCPMSPowerBudgetScale__std::optional_unsigned_int____std::less_abm::BasebandCPMSPowerBudgetScale____std::allocator_std::__value_type_abm::BasebandCPMSPowerBudgetScale__std::optional_unsigned_int______v___tree_end_node_std::__tree_node_base_void________v_Q___8l;
    v14 = *a2;
    aBlock[4] = a1;
    group = v14;
    if (v14)
    {
      dispatch_retain(v14);
      dispatch_group_enter(group);
    }

    v27 = v10;
    v28 = v12;
    atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v15 = *a3;
    if (*a3)
    {
      v15 = _Block_copy(v15);
    }

    v29 = v15;
    v16 = _Block_copy(aBlock);
    v17 = *(a1 + 88);
    if (v17)
    {
      dispatch_retain(v17);
    }

    v30 = v16;
    object = v17;
    (*(*v13 + 40))(v13, &v30);
    if (object)
    {
      dispatch_release(object);
    }

    if (v30)
    {
      _Block_release(v30);
    }

    if (v29)
    {
      _Block_release(v29);
    }

    if (v28)
    {
      std::__shared_weak_count::__release_weak(v28);
    }

    if (group)
    {
      dispatch_group_leave(group);
      if (group)
      {
        dispatch_release(group);
      }
    }

    std::__shared_weak_count::__release_weak(v12);
    goto LABEL_40;
  }

LABEL_28:
  v24[0] = MEMORY[0x29EDCA5F8];
  v24[1] = 3221225472;
  v24[2] = ___ZN10CPMSModule15getCurrentPowerEN8dispatch13group_sessionENS0_5blockIU13block_pointerFviN3xpc4dictEEEE_block_invoke_64;
  v24[3] = &unk_29EE6C590;
  v24[4] = &v37;
  v24[5] = &v33;
  v24[6] = a1;
  v41 = v24;
  block = MEMORY[0x29EDCA5F8];
  v43 = 3221225472;
  v44 = ___ZNK3ctu20SharedSynchronizableI10CPMSModuleE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  v45 = &__block_descriptor_48_e5_v8__0l;
  v46 = v6;
  v47 = &v41;
  v18 = *(a1 + 88);
  if (*(a1 + 96))
  {
    dispatch_async_and_wait(v18, &block);
    if (!*a3)
    {
      goto LABEL_40;
    }
  }

  else
  {
    dispatch_sync(v18, &block);
    if (!*a3)
    {
      goto LABEL_40;
    }
  }

  NSDict = PowerBudget::getNSDict((a1 + 344));
  ctu::cf_to_xpc(&v41, NSDict, v20);
  v21 = v41;
  block = v41;
  v22 = MEMORY[0x29EDCAA00];
  if (v41 && MEMORY[0x29C272BA0](v41) == v22)
  {
    xpc_retain(v21);
  }

  else
  {
    v21 = xpc_null_create();
    block = v21;
  }

  xpc_release(v41);
  if (MEMORY[0x29C272BA0](v21) == v22)
  {
    v23 = 0;
  }

  else
  {
    v23 = -534716416;
  }

  LODWORD(v41) = v23;
  dispatch::block<void({block_pointer})(int,xpc::dict)>::operator()<int,xpc::dict&>(a3, &v41, &block);
  xpc_release(block);
LABEL_40:
  _Block_object_dispose(&v33, 8);
  _Block_object_dispose(&v37, 8);
}

void sub_2975FA15C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, dispatch_group_t group, uint64_t a22, std::__shared_weak_count *a23, void *aBlock, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  dispatch::callback<void({block_pointer})(BudgetData)>::~callback(&a25);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (a23)
  {
    std::__shared_weak_count::__release_weak(a23);
  }

  if (group)
  {
    dispatch_group_leave(group);
    dispatch_release(group);
  }

  std::__shared_weak_count::__release_weak(v34);
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose((v35 - 168), 8);
  _Unwind_Resume(a1);
}

void CPMSModule::registerEventHandlers_sync(CPMSModule *this)
{
  v42 = *MEMORY[0x29EDCA608];
  v2 = *(this + 13);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(__dst) = 0;
    _os_log_debug_impl(&dword_297476000, v2, OS_LOG_TYPE_DEBUG, "#D Registering event handlers", &__dst, 2u);
    v3 = *(this + 10);
    if (!v3)
    {
LABEL_62:
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }
  }

  else
  {
    v3 = *(this + 10);
    if (!v3)
    {
      goto LABEL_62;
    }
  }

  v4 = *(this + 9);
  v5 = std::__shared_weak_count::lock(v3);
  if (!v5)
  {
    goto LABEL_62;
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

    p_dst = operator new(v11);
    *(&__dst + 1) = v9;
    v35 = v11 | 0x8000000000000000;
    *&__dst = p_dst;
    goto LABEL_14;
  }

  HIBYTE(v35) = v8;
  p_dst = &__dst;
  if (v8)
  {
LABEL_14:
    memmove(p_dst, v7, v9);
  }

  *(p_dst + v9) = 0;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v41 = 0;
  v12 = operator new(0x20uLL);
  *v12 = &unk_2A1E4C2C0;
  v12[1] = this;
  v12[2] = v4;
  v12[3] = v6;
  v41 = v12;
  Service::registerEventHandler(this, &__dst, v40);
  if (v41 == v40)
  {
    (*(*v41 + 32))(v41);
    if ((SHIBYTE(v35) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_56;
  }

  if (v41)
  {
    (*(*v41 + 40))(v41);
  }

  if (SHIBYTE(v35) < 0)
  {
LABEL_56:
    operator delete(__dst);
  }

LABEL_19:
  v13 = *MEMORY[0x29EDBF6A0];
  v14 = strlen(*MEMORY[0x29EDBF6A0]);
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
    *(&__dst + 1) = v15;
    v35 = v17 | 0x8000000000000000;
    *&__dst = v16;
    goto LABEL_27;
  }

  HIBYTE(v35) = v14;
  v16 = &__dst;
  if (v14)
  {
LABEL_27:
    memmove(v16, v13, v15);
  }

  *(v16 + v15) = 0;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v39 = 0;
  v18 = operator new(0x20uLL);
  *v18 = &unk_2A1E4C340;
  v18[1] = this;
  v18[2] = v4;
  v18[3] = v6;
  v39 = v18;
  Service::registerEventHandler(this, &__dst, v38);
  if (v39 == v38)
  {
    (*(*v39 + 32))(v39);
    if ((SHIBYTE(v35) & 0x80000000) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_58;
  }

  if (v39)
  {
    (*(*v39 + 40))();
  }

  if (SHIBYTE(v35) < 0)
  {
LABEL_58:
    operator delete(__dst);
  }

LABEL_32:
  v19 = *MEMORY[0x29EDBF348];
  v20 = strlen(*MEMORY[0x29EDBF348]);
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
    *(&__dst + 1) = v21;
    v35 = v23 | 0x8000000000000000;
    *&__dst = v22;
    goto LABEL_40;
  }

  HIBYTE(v35) = v20;
  v22 = &__dst;
  if (v20)
  {
LABEL_40:
    memmove(v22, v19, v21);
  }

  *(v22 + v21) = 0;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v37 = 0;
  v24 = operator new(0x20uLL);
  *v24 = &unk_2A1E4C3C0;
  v24[1] = this;
  v24[2] = v4;
  v24[3] = v6;
  v37 = v24;
  Service::registerEventHandler(this, &__dst, v36);
  if (v37 == v36)
  {
    (*(*v37 + 32))(v37);
    if ((SHIBYTE(v35) & 0x80000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_60;
  }

  if (v37)
  {
    (*(*v37 + 40))();
  }

  if (SHIBYTE(v35) < 0)
  {
LABEL_60:
    operator delete(__dst);
  }

LABEL_45:
  Service::eventsOn(this);
  if ((config::hw::watch(v25) & 1) == 0)
  {
    v26 = *(this + 17);
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 3321888768;
    aBlock[2] = ___ZN10CPMSModule26registerEventHandlers_syncEv_block_invoke;
    aBlock[3] = &__block_descriptor_56_e8_40c35_ZTSNSt3__18weak_ptrI10CPMSModuleEE_e670_v32__0_BudgetData__map_abm::BasebandCPMSPowerBudgetScale__std::optional_unsigned_int___std::less_abm::BasebandCPMSPowerBudgetScale___std::allocator_std::pair_const_abm::BasebandCPMSPowerBudgetScale__std::optional_unsigned_int________tree_std::__value_type_abm::BasebandCPMSPowerBudgetScale__std::optional_unsigned_int____std::__map_value_compare_abm::BasebandCPMSPowerBudgetScale__std::__value_type_abm::BasebandCPMSPowerBudgetScale__std::optional_unsigned_int____std::less_abm::BasebandCPMSPowerBudgetScale____std::allocator_std::__value_type_abm::BasebandCPMSPowerBudgetScale__std::optional_unsigned_int______v___tree_end_node_std::__tree_node_base_void________v_Q___8l;
    aBlock[4] = this;
    aBlock[5] = v4;
    v31 = v6;
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v27 = _Block_copy(aBlock);
    v28 = *(this + 11);
    if (v28)
    {
      dispatch_retain(v28);
    }

    v32 = v27;
    object = v28;
    (*(*v26 + 32))(v26, &v32);
    if (object)
    {
      dispatch_release(object);
    }

    if (v32)
    {
      _Block_release(v32);
    }

    if (v31)
    {
      std::__shared_weak_count::__release_weak(v31);
    }
  }

  std::__shared_weak_count::__release_weak(v6);
  v29 = *MEMORY[0x29EDCA608];
}

void sub_2975FA7D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, char a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN10CPMSModule26registerEventHandlers_syncEv_block_invoke(void *a1, void **a2)
{
  v24 = *MEMORY[0x29EDCA608];
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
          goto LABEL_16;
        }
      }

      else
      {
        v8 = v6;
        (v6->__on_zero_shared)();
        std::__shared_weak_count::__release_weak(v8);
        if (!v7)
        {
          goto LABEL_16;
        }
      }

      v18 = &v19;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      if (&v18 != a2)
      {
        std::__tree<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__map_value_compare<abm::BasebandCPMSPowerBudgetScale,std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::less<abm::BasebandCPMSPowerBudgetScale>,true>,std::allocator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__tree_node<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,void *> *,long>>(&v18, *a2, a2 + 1);
      }

      v9 = *(v5 + 104);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        PowerBudget::to_string(&v18, __p);
        if (v17 >= 0)
        {
          v10 = __p;
        }

        else
        {
          v10 = __p[0];
        }

        *buf = 136315138;
        v23 = v10;
        _os_log_impl(&dword_297476000, v9, OS_LOG_TYPE_DEFAULT, "#I Baseband power budget need is %s", buf, 0xCu);
        if (v17 < 0)
        {
          operator delete(__p[0]);
        }
      }

      v12 = &v13;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      std::__tree<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__map_value_compare<abm::BasebandCPMSPowerBudgetScale,std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::less<abm::BasebandCPMSPowerBudgetScale>,true>,std::allocator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__tree_node<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,void *> *,long>>(&v12, v18, &v19);
      v15 = [v21 copy];
      CPMSModule::reportPowerBudgetNeed_sync(v5, &v12);
      std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(&v12, v13);
      v13 = 0;
      v14 = 0;
      v12 = &v13;

      v15 = 0;
      std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(&v12, v13);
      v13 = 0;
      v14 = 0;
      v12 = &v13;
      std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(&v18, v19);
      v19 = 0;
      v20 = 0;
      v18 = &v19;

      v21 = 0;
      std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(&v18, v19);
    }
  }

LABEL_16:
  v11 = *MEMORY[0x29EDCA608];
}

void sub_2975FAA9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  PowerBudget::~PowerBudget(va);
  _Unwind_Resume(a1);
}

void CPMSModule::reportPowerBudgetNeed_sync(uint64_t a1, id *a2)
{
  v35 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 180);
  v5 = *(a1 + 104);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4 != 1)
  {
    if (v6)
    {
      *__p = 138412290;
      *&__p[4] = PowerBudget::getNSDict(a2);
      _os_log_impl(&dword_297476000, v5, OS_LOG_TYPE_DEFAULT, "#I Reporting to CPMS with power budget need %@", __p, 0xCu);
    }

    v8 = [*(a1 + 112) copyPowerBudgetForRequest:PowerBudget::getNSDict(a2) forClient:4 error:0];
    if (!v8)
    {
      v16 = *(a1 + 104);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *__p = 0;
        _os_log_error_impl(&dword_297476000, v16, OS_LOG_TYPE_ERROR, "Reporting to CPMS with power budget need failed", __p, 2u);
      }

      goto LABEL_29;
    }

    v9 = (a1 + 184);
    PowerBudget::fill((a1 + 184), v8);
    v10 = *(a1 + 104);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT) && ((PowerBudget::to_string((a1 + 184), __p), v32 >= 0) ? (v11 = __p) : (v11 = *__p), *buf = 136315138, v34 = v11, _os_log_impl(&dword_297476000, v10, OS_LOG_TYPE_DEFAULT, "#I CPMS responded with power budget allocation %s", buf, 0xCu), v32 < 0))
    {
      operator delete(*__p);
      v25 = &v26;
      v26 = 0;
      v27 = 0;
      v28 = 0;
      if (v9 == &v25)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v25 = &v26;
      v26 = 0;
      v27 = 0;
      v28 = 0;
      if (v9 == &v25)
      {
LABEL_18:
        v28 = [*(a1 + 208) copy];
        v12 = [*(a1 + 112) acknowledgePowerBudget:PowerBudget::getNSDict(&v25) forClientId:4 error:0];
        v13 = *(a1 + 104);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          NSDict = PowerBudget::getNSDict(&v25);
          v15 = "failed";
          if (v12)
          {
            v15 = "succeeded";
          }

          *__p = 136315394;
          *&__p[4] = v15;
          v30 = 2112;
          v31 = NSDict;
          _os_log_impl(&dword_297476000, v13, OS_LOG_TYPE_DEFAULT, "#I Acked CPMS %s for power budget %@", __p, 0x16u);
        }

        std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(&v25, v26);
        v26 = 0;
        v27 = 0;
        v25 = &v26;

        v28 = 0;
        std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(&v25, v26);
        v26 = 0;
        v27 = 0;
        v24 = 0;
        v25 = &v26;
        *(&v22 + 1) = 0;
        v23 = 0;
        *&v22 = &v22 + 8;
        if (v9 != &v22)
        {
          std::__tree<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__map_value_compare<abm::BasebandCPMSPowerBudgetScale,std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::less<abm::BasebandCPMSPowerBudgetScale>,true>,std::allocator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__tree_node<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,void *> *,long>>(&v22, *(a1 + 184), (a1 + 192));
        }

        v24 = [*(a1 + 208) copy];
        CPMSModule::evaluateBrickMode_sync(a1, &v22);
        std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(&v22, *(&v22 + 1));
        *(&v22 + 1) = 0;
        v23 = 0;
        *&v22 = &v22 + 8;

        v24 = 0;
        std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(&v22, *(&v22 + 1));
        *(&v22 + 1) = 0;
        v23 = 0;
        v21 = 0;
        *&v22 = &v22 + 8;
        v19 = 0;
        v20 = 0;
        v18 = &v19;
        if (v9 != &v18)
        {
          std::__tree<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__map_value_compare<abm::BasebandCPMSPowerBudgetScale,std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::less<abm::BasebandCPMSPowerBudgetScale>,true>,std::allocator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__tree_node<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,void *> *,long>>(&v18, *(a1 + 184), (a1 + 192));
        }

        v21 = [*(a1 + 208) copy];
        CPMSModule::sendPowerBudgetToBB_sync(a1, &v18);
        std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(&v18, v19);
        v19 = 0;
        v20 = 0;
        v18 = &v19;

        v21 = 0;
        std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(&v18, v19);
        v19 = 0;
        v20 = 0;
        v18 = &v19;
LABEL_29:

        goto LABEL_30;
      }
    }

    std::__tree<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__map_value_compare<abm::BasebandCPMSPowerBudgetScale,std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::less<abm::BasebandCPMSPowerBudgetScale>,true>,std::allocator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__tree_node<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,void *> *,long>>(&v25, *(a1 + 184), (a1 + 192));
    goto LABEL_18;
  }

  if (v6)
  {
    PowerBudget::to_string(a2, __p);
    if (v32 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = *__p;
    }

    *buf = 136315138;
    v34 = v7;
    _os_log_impl(&dword_297476000, v5, OS_LOG_TYPE_DEFAULT, "#I Brick mode is still enabled; ignoring power budget request for %s", buf, 0xCu);
    if (v32 < 0)
    {
      operator delete(*__p);
    }
  }

LABEL_30:
  v17 = *MEMORY[0x29EDCA608];
}

void sub_2975FAF38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t dispatch::callback<void({block_pointer})(BudgetData)>::~callback(uint64_t a1)
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

void CPMSModule::getErrorMsg(NSError *a1@<X1>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0xAAAAAAAAAAAAAAAALL;
  *(a2 + 16) = 0xAAAAAAAAAAAAAAAALL;
  *(a2 + 23) = 13;
  strcpy(a2, "Unknown error");
  if (a1)
  {
    v5 = [(NSError *)a1 localizedDescription];
    if ([(NSError *)a1 localizedFailureReason])
    {
      v6 = [(NSError *)a1 localizedFailureReason];
    }

    else
    {
      v6 = [objc_msgSend(MEMORY[0x29EDB9F48] "mainBundle")];
    }

    std::string::__assign_external(a2, [objc_msgSend(MEMORY[0x29EDBA0F8] stringWithFormat:@"%@: %@", v5, v6), "UTF8String"]);
  }
}

void sub_2975FB0F8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void CPMSModule::evaluatePowerBudgetNeed_sync(CPMSModule *this)
{
  v34 = *MEMORY[0x29EDCA608];
  v2 = *(this + 13);
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    v4 = "false";
    if (*(this + 179))
    {
      v5 = "true";
    }

    else
    {
      v5 = "false";
    }

    v6 = *(this + 176);
    if (*(this + 177))
    {
      v7 = "true";
    }

    else
    {
      v7 = "false";
    }

    *buf = 136315650;
    v29 = v5;
    if (v6)
    {
      v4 = "true";
    }

    v30 = 2080;
    v31 = v7;
    v32 = 2080;
    v33 = v4;
    _os_log_impl(&dword_297476000, v2, OS_LOG_TYPE_DEFAULT, "#I Evaluating power budget need; IsConnected(debounce)=%s, IsOnline=%s IsReady=%s", buf, 0x20u);
  }

  v8 = capabilities::abs::supportsCPMSConnectedState(v3);
  if (v8 && *(this + 179) == 1 && *(this + 176) == 1 && *(this + 177) == 1)
  {
    v9 = v26;
    v26[0] = 0;
    v26[1] = 0;
    v25 = v26;
    v27 = 0;
    if ((this + 248) != &v25)
    {
      std::__tree<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__map_value_compare<abm::BasebandCPMSPowerBudgetScale,std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::less<abm::BasebandCPMSPowerBudgetScale>,true>,std::allocator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__tree_node<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,void *> *,long>>(&v25, *(this + 31), this + 32);
    }

    v27 = [*(this + 34) copy];
    v10 = &v25;
    CPMSModule::reportPowerBudgetNeed_sync(this, &v25);
  }

  else if (*(this + 176) == 1)
  {
    if (*(this + 177) == 1)
    {
      v11 = capabilities::abs::supportsCPMSConnectedState(v8);
      v9 = v23;
      v12 = 248;
      if (v11)
      {
        v12 = 280;
      }

      v13 = this + v12;
      v23[0] = 0;
      v23[1] = 0;
      v22 = v23;
      v24 = 0;
      if ((this + v12) != &v22)
      {
        std::__tree<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__map_value_compare<abm::BasebandCPMSPowerBudgetScale,std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::less<abm::BasebandCPMSPowerBudgetScale>,true>,std::allocator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__tree_node<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,void *> *,long>>(&v22, *v13, v13 + 1);
      }

      v24 = [*(v13 + 3) copy];
      v10 = &v22;
      CPMSModule::reportPowerBudgetNeed_sync(this, &v22);
    }

    else
    {
      v9 = v20;
      v20[0] = 0;
      v20[1] = 0;
      v19 = v20;
      v21 = 0;
      if ((this + 312) != &v19)
      {
        std::__tree<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__map_value_compare<abm::BasebandCPMSPowerBudgetScale,std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::less<abm::BasebandCPMSPowerBudgetScale>,true>,std::allocator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__tree_node<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,void *> *,long>>(&v19, *(this + 39), this + 40);
      }

      v21 = [*(this + 42) copy];
      v10 = &v19;
      CPMSModule::reportPowerBudgetNeed_sync(this, &v19);
    }
  }

  else
  {
    v9 = &v16;
    v16 = 0;
    v17 = 0;
    v15 = &v16;
    v18 = 0;
    if ((this + 312) != &v15)
    {
      std::__tree<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__map_value_compare<abm::BasebandCPMSPowerBudgetScale,std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::less<abm::BasebandCPMSPowerBudgetScale>,true>,std::allocator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__tree_node<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,void *> *,long>>(&v15, *(this + 39), this + 40);
    }

    v18 = [*(this + 42) copy];
    v10 = &v15;
    CPMSModule::reportPowerBudgetNeed_sync(this, &v15);
  }

  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v10, v10[1]);
  v10[1] = 0;
  v10[2] = 0;
  *v10 = v9;

  v10[3] = 0;
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v10, v10[1]);
  v10[1] = 0;
  v10[2] = 0;
  *v10 = v9;
  v14 = *MEMORY[0x29EDCA608];
}

void sub_2975FB3DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  PowerBudget::~PowerBudget(va);
  _Unwind_Resume(a1);
}

void sub_2975FB408(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  PowerBudget::~PowerBudget(va);
  _Unwind_Resume(a1);
}

void sub_2975FB41C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  PowerBudget::~PowerBudget(va);
  _Unwind_Resume(a1);
}

void sub_2975FB48C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void CPMSModule::debounceConnectedState_sync(CPMSModule *this)
{
  v27 = *MEMORY[0x29EDCA608];
  v2 = *(this + 13);
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG);
  if (v3)
  {
    if (*(this + 178))
    {
      v7 = "connected";
    }

    else
    {
      v7 = "idle";
    }

    *buf = 136315138;
    *&buf[4] = v7;
    _os_log_debug_impl(&dword_297476000, v2, OS_LOG_TYPE_DEBUG, "#D Baseband is in %s state", buf, 0xCu);
    if (*(this + 178) == 1)
    {
      goto LABEL_3;
    }
  }

  else if (*(this + 178) == 1)
  {
LABEL_3:
    v4 = *(this + 21);
    if (v4)
    {
      v5 = *(this + 13);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_297476000, v5, OS_LOG_TYPE_DEBUG, "#D Cancelling idle timer", buf, 2u);
        v4 = *(this + 21);
      }

      (*(*v4 + 16))(v4);
      v6 = *(this + 21);
      *(this + 21) = 0;
      if (v6)
      {
        (*(*v6 + 8))(v6);
      }
    }

    if ((*(this + 179) & 1) == 0)
    {
      *(this + 179) = 1;
      CPMSModule::evaluatePowerBudgetNeed_sync(this);
    }

    goto LABEL_33;
  }

  v8 = capabilities::abs::CPMSDebounceTimer(v3);
  v9 = *(this + 13);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    *&buf[4] = v8;
    _os_log_debug_impl(&dword_297476000, v9, OS_LOG_TYPE_DEBUG, "#D Starting idle timer for %lld secs", buf, 0xCu);
    v10 = *(this + 10);
    if (!v10)
    {
LABEL_35:
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }
  }

  else
  {
    v10 = *(this + 10);
    if (!v10)
    {
      goto LABEL_35;
    }
  }

  v11 = *(this + 9);
  v12 = std::__shared_weak_count::lock(v10);
  if (!v12)
  {
    goto LABEL_35;
  }

  v13 = v12;
  atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v13);
  }

  v14 = *(this + 19);
  v25 = 16;
  strcpy(__p, "Idle state timer");
  v15 = *(this + 11);
  object = v15;
  if (v15)
  {
    dispatch_retain(v15);
  }

  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 3321888768;
  aBlock[2] = ___ZN10CPMSModule27debounceConnectedState_syncEv_block_invoke;
  aBlock[3] = &__block_descriptor_56_e8_40c35_ZTSNSt3__18weak_ptrI10CPMSModuleEE_e5_v8__0l;
  aBlock[4] = this;
  aBlock[5] = v11;
  v21 = v13;
  atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v22 = _Block_copy(aBlock);
  ctu::TimerService::createOneShotTimer(v14, __p, 0, 1000000 * v8, &object, &v22);
  v16 = *buf;
  *buf = 0;
  v17 = *(this + 21);
  *(this + 21) = v16;
  if (v17)
  {
    (*(*v17 + 8))(v17);
    v18 = *buf;
    *buf = 0;
    if (v18)
    {
      (*(*v18 + 8))(v18);
    }
  }

  if (v22)
  {
    _Block_release(v22);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v25 < 0)
  {
    operator delete(*__p);
  }

  if (v21)
  {
    std::__shared_weak_count::__release_weak(v21);
  }

  std::__shared_weak_count::__release_weak(v13);
LABEL_33:
  v19 = *MEMORY[0x29EDCA608];
}

void sub_2975FB86C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, void *aBlock, dispatch_object_t object, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN10CPMSModule27debounceConnectedState_syncEv_block_invoke(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    v9 = v4;
    if (v4)
    {
      v5 = v4;
      if (!a1[5])
      {
        goto LABEL_7;
      }

      v6 = *(v3 + 104);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        *v7 = 0;
        _os_log_debug_impl(&dword_297476000, v6, OS_LOG_TYPE_DEBUG, "#D Idle timer expired", v7, 2u);
        if (*(v3 + 178))
        {
LABEL_7:
          if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v5->__on_zero_shared)(v5);
            std::__shared_weak_count::__release_weak(v5);
          }

          return;
        }
      }

      else if (*(v3 + 178))
      {
        goto LABEL_7;
      }

      *(v3 + 179) = 0;
      CPMSModule::evaluatePowerBudgetNeed_sync(v3);
      goto LABEL_7;
    }
  }
}

void sub_2975FBA00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void CPMSModule::sendPowerBudgetToBB_sync(uint64_t a1, void **a2)
{
  v38 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 180);
  if ((v3 & 1) == 0 && *(a1 + 176) == 1 && *(a1 + 177) == 1)
  {
    v4 = *(a1 + 80);
    if (!v4 || (v6 = *(a1 + 72), (v7 = std::__shared_weak_count::lock(v4)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v8 = v7;
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v9 = a2;
    if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v8);
      v9 = a2;
    }

    v10 = *(a1 + 136);
    v30 = 0;
    v31 = 0;
    v29 = &v30;
    if (&v29 != v9)
    {
      std::__tree<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__map_value_compare<abm::BasebandCPMSPowerBudgetScale,std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::less<abm::BasebandCPMSPowerBudgetScale>,true>,std::allocator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__tree_node<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,void *> *,long>>(&v29, *v9, v9 + 1);
      v9 = a2;
    }

    v21[0] = MEMORY[0x29EDCA5F8];
    v21[1] = 3321888768;
    v21[2] = ___ZN10CPMSModule24sendPowerBudgetToBB_syncE11PowerBudget_block_invoke;
    v21[3] = &__block_descriptor_88_e8_40c35_ZTSNSt3__18weak_ptrI10CPMSModuleEE56c17_ZTS11PowerBudget_e44_v16__0_CFSharedRef___CFError______CFError__8l;
    v21[4] = a1;
    v21[5] = v6;
    v22 = v8;
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v23 = &v24;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    if (&v23 != v9)
    {
      std::__tree<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__map_value_compare<abm::BasebandCPMSPowerBudgetScale,std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::less<abm::BasebandCPMSPowerBudgetScale>,true>,std::allocator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__tree_node<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,void *> *,long>>(&v23, *v9, v9 + 1);
      v9 = a2;
    }

    v26 = [v9[3] copy];
    v11 = _Block_copy(v21);
    v12 = *(a1 + 88);
    if (v12)
    {
      dispatch_retain(v12);
    }

    aBlock = v11;
    object = v12;
    (*(*v10 + 24))(v10, &v29, &aBlock);
    if (object)
    {
      dispatch_release(object);
    }

    if (aBlock)
    {
      _Block_release(aBlock);
    }

    std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(&v29, v30);
    v30 = 0;
    v31 = 0;
    v29 = &v30;
    std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(&v23, v24);
    v24 = 0;
    v25 = 0;
    v23 = &v24;

    v26 = 0;
    std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(&v23, v24);
    v24 = 0;
    v25 = 0;
    v23 = &v24;
    if (v22)
    {
      std::__shared_weak_count::__release_weak(v22);
    }

    std::__shared_weak_count::__release_weak(v8);
    v13 = *MEMORY[0x29EDCA608];
  }

  else
  {
    v14 = *(a1 + 104);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v16 = "false";
      if (v3)
      {
        v17 = "true";
      }

      else
      {
        v17 = "false";
      }

      v18 = *(a1 + 177);
      if (*(a1 + 176))
      {
        v19 = "true";
      }

      else
      {
        v19 = "false";
      }

      *buf = 136315650;
      v33 = v17;
      v34 = 2080;
      if (v18)
      {
        v16 = "true";
      }

      v35 = v19;
      v36 = 2080;
      v37 = v16;
      _os_log_debug_impl(&dword_297476000, v14, OS_LOG_TYPE_DEBUG, "#D Not sending budget to BB due to this condition: BrickMode: %s, Baseband is ready: %s, Baseband is online: %s", buf, 0x20u);
      v20 = *MEMORY[0x29EDCA608];
    }

    else
    {
      v15 = *MEMORY[0x29EDCA608];
    }
  }
}

void sub_2975FBD54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN10CPMSModule24sendPowerBudgetToBB_syncE11PowerBudget_block_invoke(void *a1, void *a2)
{
  v19 = *MEMORY[0x29EDCA608];
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = a1[5];
      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v8 = v6;
        (v6->__on_zero_shared)();
        std::__shared_weak_count::__release_weak(v8);
      }

      if (v7)
      {
        v9 = *(v5 + 104);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          if (*a2)
          {
            v10 = "failed";
          }

          else
          {
            v10 = "succeeded";
          }

          PowerBudget::to_string((a1 + 7), __p);
          if (v14 >= 0)
          {
            v11 = __p;
          }

          else
          {
            v11 = __p[0];
          }

          *buf = 136315394;
          v16 = v10;
          v17 = 2080;
          v18 = v11;
          _os_log_impl(&dword_297476000, v9, OS_LOG_TYPE_DEFAULT, "#I Sent power budget to baseband %s for %s", buf, 0x16u);
          if (v14 < 0)
          {
            operator delete(__p[0]);
          }
        }
      }
    }
  }

  v12 = *MEMORY[0x29EDCA608];
}

uint64_t __copy_helper_block_e8_40c35_ZTSNSt3__18weak_ptrI10CPMSModuleEE56c17_ZTS11PowerBudget(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  *(a1 + 64) = 0;
  *(a1 + 56) = a1 + 64;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  if (a2 != a1)
  {
    std::__tree<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__map_value_compare<abm::BasebandCPMSPowerBudgetScale,std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::less<abm::BasebandCPMSPowerBudgetScale>,true>,std::allocator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__tree_node<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,void *> *,long>>((a1 + 56), *(a2 + 56), (a2 + 64));
  }

  result = [*(a2 + 80) copy];
  *(a1 + 80) = result;
  return result;
}

void sub_2975FBFC0(_Unwind_Exception *a1)
{
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v2, *(v1 + 64));
  *(v1 + 64) = 0;
  *(v1 + 72) = 0;
  *(v1 + 56) = v3;
  v5 = *(v1 + 48);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  _Unwind_Resume(a1);
}

void __destroy_helper_block_e8_40c35_ZTSNSt3__18weak_ptrI10CPMSModuleEE56c17_ZTS11PowerBudget(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = a1 + 56;
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(a1 + 56, *(a1 + 64));
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 - 8) = v2;

  *(a1 + 80) = 0;
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v3, *(a1 + 64));
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 56) = v2;
  v4 = *(a1 + 48);
  if (v4)
  {

    std::__shared_weak_count::__release_weak(v4);
  }
}

void CPMSModule::ackPowerBudgetToCPMS_sync(uint64_t a1, id *a2)
{
  v12 = *MEMORY[0x29EDCA608];
  v4 = [*(a1 + 112) acknowledgePowerBudget:PowerBudget::getNSDict(a2) forClientId:4 error:0];
  v5 = *(a1 + 104);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if (v4)
    {
      v6 = "succeeded";
    }

    else
    {
      v6 = "failed";
    }

    v8 = 136315394;
    v9 = v6;
    v10 = 2112;
    NSDict = PowerBudget::getNSDict(a2);
    _os_log_impl(&dword_297476000, v5, OS_LOG_TYPE_DEFAULT, "#I Acked CPMS %s for power budget %@", &v8, 0x16u);
  }

  v7 = *MEMORY[0x29EDCA608];
}

uint64_t CPMSModule::initPowerConfig_sync(id *this)
{
  v53 = *MEMORY[0x29EDCA608];
  memset(&__p, 170, sizeof(__p));
  CPMSModule::getCPMSBudgetPlistPath(this, &__p);
  cf = 0xAAAAAAAAAAAAAAAALL;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v45, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v45 = __p;
  }

  util::readPlistToCFDictionary(&v45, &cf);
  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  v2 = cf;
  v3 = objc_alloc_init(MEMORY[0x29EDB8E00]);
  v43 = 0u;
  v44 = 0u;
  v42 = 0u;
  v41 = 0u;
  v4 = [v2 countByEnumeratingWithState:&v41 objects:v52 count:16];
  if (v4)
  {
    v5 = *v42;
    v33 = *MEMORY[0x29EDC0AB8];
    v34 = *MEMORY[0x29EDC0AB0];
    v35 = *MEMORY[0x29EDC0AA0];
    v32 = 5000;
    v6 = *MEMORY[0x29EDC0AA8];
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v42 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v8 = *(*(&v41 + 1) + 8 * i);
        if ([v8 isEqualToString:@"CPMSPowerTimeScale1s"])
        {
          CPMSModule::initPowerConfig_sync(void)::$_1::operator()(this, v6, [v2 valueForKey:v8], v3);
        }

        else if ([v8 isEqualToString:@"CPMSPowerTimeScale100ms"])
        {
          CPMSModule::initPowerConfig_sync(void)::$_1::operator()(this, v35, [v2 valueForKey:v8], v3);
        }

        else if ([v8 isEqualToString:@"CPMSPowerTimeScaleInstantaneous"])
        {
          CPMSModule::initPowerConfig_sync(void)::$_1::operator()(this, v34, [v2 valueForKey:v8], v3);
        }

        else if ([v8 isEqualToString:@"CPMSPowerTimeScaleThermal"])
        {
          CPMSModule::initPowerConfig_sync(void)::$_1::operator()(this, v33, [v2 valueForKey:v8], v3);
        }

        else if ([v8 isEqualToString:@"CPMSPowerBudgetPeriodms"])
        {
          v32 = [objc_msgSend(v2 valueForKey:{v8), "intValue"}];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v41 objects:v52 count:16];
    }

    while (v4);
  }

  else
  {
    v32 = 5000;
  }

  std::__tree<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__map_value_compare<abm::BasebandCPMSPowerBudgetScale,std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::less<abm::BasebandCPMSPowerBudgetScale>,true>,std::allocator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__tree_node<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,void *> *,long>>(this + 23, this[39], this + 40);

  this[26] = [this[42] copy];
  v9 = this[13];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [objc_msgSend(v3 "description")];
    *buf = 136315138;
    *&buf[4] = v10;
    _os_log_impl(&dword_297476000, v9, OS_LOG_TYPE_DEFAULT, "#I Power budget config to be registered with CPMS %s", buf, 0xCu);
    v9 = this[13];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    PowerBudget::to_string((this + 27), buf);
    if (v49 >= 0)
    {
      v11 = buf;
    }

    else
    {
      v11 = *buf;
    }

    *v50 = 136315138;
    v51 = v11;
    _os_log_impl(&dword_297476000, v9, OS_LOG_TYPE_DEFAULT, "#I Min default budget %s", v50, 0xCu);
    if (v49 < 0)
    {
      operator delete(*buf);
    }

    v9 = this[13];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    PowerBudget::to_string((this + 31), buf);
    if (v49 >= 0)
    {
      v12 = buf;
    }

    else
    {
      v12 = *buf;
    }

    *v50 = 136315138;
    v51 = v12;
    _os_log_impl(&dword_297476000, v9, OS_LOG_TYPE_DEFAULT, "#I Max default budget %s", v50, 0xCu);
    if (v49 < 0)
    {
      operator delete(*buf);
    }

    v9 = this[13];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    PowerBudget::to_string((this + 35), buf);
    if (v49 >= 0)
    {
      v13 = buf;
    }

    else
    {
      v13 = *buf;
    }

    *v50 = 136315138;
    v51 = v13;
    _os_log_impl(&dword_297476000, v9, OS_LOG_TYPE_DEFAULT, "#I Idle default budget %s", v50, 0xCu);
    if (v49 < 0)
    {
      operator delete(*buf);
    }

    v9 = this[13];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    PowerBudget::to_string((this + 39), buf);
    if (v49 >= 0)
    {
      v14 = buf;
    }

    else
    {
      v14 = *buf;
    }

    *v50 = 136315138;
    v51 = v14;
    _os_log_impl(&dword_297476000, v9, OS_LOG_TYPE_DEFAULT, "#I Low default budget %s", v50, 0xCu);
    if (v49 < 0)
    {
      operator delete(*buf);
    }

    v9 = this[13];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v32;
    _os_log_impl(&dword_297476000, v9, OS_LOG_TYPE_DEFAULT, "#I Power budget update period (ms) %u", buf, 8u);
    v9 = this[13];
  }

  v15 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v15)
  {
    v16 = capabilities::abs::supportsCPMSConnectedState(v15);
    v17 = " not";
    if (v16)
    {
      v17 = "";
    }

    *buf = 136315138;
    *&buf[4] = v17;
    _os_log_impl(&dword_297476000, v9, OS_LOG_TYPE_DEFAULT, "#I Connected state evaluation is%s supported", buf, 0xCu);
  }

  v18 = this[10];
  if (!v18 || (v19 = this[9], (v20 = std::__shared_weak_count::lock(v18)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v21 = v20;
  p_shared_weak_owners = &v20->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v20->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v20->__on_zero_shared)(v20);
    std::__shared_weak_count::__release_weak(v21);
  }

  v39[0] = MEMORY[0x29EDCA5F8];
  v39[1] = 3321888768;
  v39[2] = ___ZN10CPMSModule20initPowerConfig_syncEv_block_invoke;
  v39[3] = &__block_descriptor_56_e8_40c35_ZTSNSt3__18weak_ptrI10CPMSModuleEE_e22_v16__0__NSDictionary_8l;
  v39[4] = this;
  v39[5] = v19;
  v40 = v21;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  this[15] = v39;
  v36 = 0;
  v37[0] = MEMORY[0x29EDCA5F8];
  v37[1] = 3321888768;
  v37[2] = ___ZN10CPMSModule20initPowerConfig_syncEv_block_invoke_38;
  v37[3] = &__block_descriptor_56_e8_40c35_ZTSNSt3__18weak_ptrI10CPMSModuleEE_e19___NSDictionary_8__0l;
  v37[4] = this;
  v37[5] = v19;
  v38 = v21;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  this[16] = v37;
  v23 = objc_alloc_init(MEMORY[0x29EDC0A98]);
  [v23 setClientId:4];
  [v23 setPowerLevels:v3];
  [v23 setIsContinuous:1];
  [v23 setNotificationCallback:this[15]];
  [v23 setGetCurrentPower:this[16]];
  [v23 setPowerBudgetUpdateMinimumPeriod:v32];
  v24 = [this[14] registerClientWithDescription:v23 error:&v36];
  v25 = v24;
  v26 = v36;
  if (v36)
  {
    v27 = 0;
  }

  else
  {
    v27 = v24;
  }

  if ((v27 & 1) == 0)
  {
    v28 = this[13];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      CPMSModule::getErrorMsg(v26, buf);
      v31 = v49 >= 0 ? buf : *buf;
      *v50 = 136315138;
      v51 = v31;
      _os_log_error_impl(&dword_297476000, v28, OS_LOG_TYPE_ERROR, "Failed to register CPMS: %s", v50, 0xCu);
      if (v49 < 0)
      {
        operator delete(*buf);
      }
    }
  }

  if (v38)
  {
    std::__shared_weak_count::__release_weak(v38);
  }

  if (v40)
  {
    std::__shared_weak_count::__release_weak(v40);
  }

  std::__shared_weak_count::__release_weak(v21);
  if (cf)
  {
    CFRelease(cf);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v29 = *MEMORY[0x29EDCA608];
  return v25;
}

void sub_2975FC9A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, std::__shared_weak_count *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, char a44, void *__p, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  if (a50 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void CPMSModule::getCPMSBudgetPlistPath(CPMSModule *this@<X0>, std::string::size_type *a2@<X8>)
{
  v95 = *MEMORY[0x29EDCA608];
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  v3 = a2 + 1;
  a2[2] = 0xAAAAAAAAAAAAAAAALL;
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  v4 = operator new(0x48uLL);
  strcpy(v4, "/System/Library/PrivateFrameworks/AppleBasebandManager.framework/");
  qmemcpy(v90, "anager.frameworks/AppleBasebandMPrivateFramework/System/Library/", sizeof(v90));
  v5 = operator new(0x90uLL);
  strcpy(v5 + 64, "/cpms.budgets");
  *v5 = v90[3];
  *(v5 + 1) = v90[2];
  *(v5 + 2) = v90[1];
  *(v5 + 3) = v90[0];
  operator delete(v4);
  __p.__r_.__value_.__r.__words[0] = v5;
  *&__p.__r_.__value_.__r.__words[1] = xmmword_2976A4F50;
  qmemcpy(v5 + 77, ".override.", 10);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    __p.__r_.__value_.__l.__size_ = 87;
  }

  else
  {
    *(&__p.__r_.__value_.__s + 23) = 87;
  }

  v5[87] = 0;
  v92 = __p;
  memset(&__p, 0, sizeof(__p));
  v7 = capabilities::radio::product(v6);
  std::to_string(&v91, v7);
  if ((v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = &v91;
  }

  else
  {
    v8 = v91.__r_.__value_.__r.__words[0];
  }

  if ((v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v91.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v91.__r_.__value_.__l.__size_;
  }

  v10 = std::string::append(&v92, v8, size);
  v11 = *&v10->__r_.__value_.__l.__data_;
  buf.__r_.__value_.__r.__words[2] = v10->__r_.__value_.__r.__words[2];
  *&buf.__r_.__value_.__l.__data_ = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  v12 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
  {
    if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) - 17) < 6)
    {
      v13 = SHIBYTE(buf.__r_.__value_.__r.__words[2]) + 6;
      p_buf = &buf;
      v15 = 22;
LABEL_16:
      v17 = 2 * v15;
      if (v13 > 2 * v15)
      {
        v17 = v13;
      }

      if ((v17 | 7) == 0x17)
      {
        v18 = 25;
      }

      else
      {
        v18 = (v17 | 7) + 1;
      }

      if (v17 >= 0x17)
      {
        v16 = v18;
      }

      else
      {
        v16 = 23;
      }

      v19 = v15 == 22;
      goto LABEL_25;
    }

    v24 = &buf;
LABEL_32:
    v25 = v24 + v12;
    *v25 = 1768714286;
    *(v25 + 2) = 29811;
    v26 = v12 + 6;
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      buf.__r_.__value_.__l.__size_ = v12 + 6;
    }

    else
    {
      *(&buf.__r_.__value_.__s + 23) = v26 & 0x7F;
    }

    v23 = v24 + v26;
    goto LABEL_36;
  }

  v12 = buf.__r_.__value_.__l.__size_;
  v15 = (buf.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v15 - buf.__r_.__value_.__l.__size_ >= 6)
  {
    v24 = buf.__r_.__value_.__r.__words[0];
    goto LABEL_32;
  }

  v16 = 0x7FFFFFFFFFFFFFF7;
  v13 = buf.__r_.__value_.__l.__size_ + 6;
  if (0x7FFFFFFFFFFFFFF7 - (buf.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < buf.__r_.__value_.__l.__size_ + 6 - v15)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  p_buf = buf.__r_.__value_.__r.__words[0];
  if (v15 < 0x3FFFFFFFFFFFFFF3)
  {
    goto LABEL_16;
  }

  v19 = 0;
LABEL_25:
  v20 = operator new(v16);
  v21 = v20;
  if (v12)
  {
    memmove(v20, p_buf, v12);
  }

  v22 = v21 + v12;
  *v22 = 1768714286;
  *(v22 + 4) = 29811;
  if (!v19)
  {
    operator delete(p_buf);
  }

  buf.__r_.__value_.__l.__size_ = v13;
  buf.__r_.__value_.__r.__words[2] = v16 | 0x8000000000000000;
  buf.__r_.__value_.__r.__words[0] = v21;
  v23 = (v21 + v13);
LABEL_36:
  *v23 = 0;
  *a2 = buf;
  memset(&buf, 0, sizeof(buf));
  if ((SHIBYTE(v91.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v92.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_38;
    }

LABEL_48:
    operator delete(v92.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_49;
  }

  operator delete(v91.__r_.__value_.__l.__data_);
  if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_48;
  }

LABEL_38:
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_39;
  }

LABEL_49:
  operator delete(__p.__r_.__value_.__l.__data_);
LABEL_39:
  v27 = *(a2 + 23);
  if (v27 < 0)
  {
    v28 = *a2;
  }

  if (v27 >= 0)
  {
    v29 = *(a2 + 23);
  }

  else
  {
    v29 = a2[1];
  }

  v30 = ctu::fs::file_exists();
  if (v30)
  {
    goto LABEL_141;
  }

  if (!config::hw::watch(v30))
  {
    v33 = operator new(0x48uLL);
    v33[32] = 47;
    *v33 = v90[3];
    *(v33 + 1) = v90[2];
    *(v33 + 2) = v90[1];
    *(v33 + 3) = v90[0];
    v34 = operator new(0x90uLL);
    strcpy(v34 + 64, "/cpms.budgets");
    *v34 = v90[3];
    *(v34 + 1) = v90[2];
    *(v34 + 2) = v90[1];
    *(v34 + 3) = v90[0];
    operator delete(v33);
    v92.__r_.__value_.__r.__words[0] = v34;
    *&v92.__r_.__value_.__r.__words[1] = xmmword_2976A4F50;
    v47 = v92.__r_.__value_.__l.__size_;
    v48 = (v92.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v48 - v92.__r_.__value_.__l.__size_ >= 7)
    {
      v62 = v92.__r_.__value_.__r.__words[0];
      v63 = v92.__r_.__value_.__r.__words[0] + v92.__r_.__value_.__l.__size_;
      *v63 = 1752197422;
      *(v63 + 6) = 101;
      *(v63 + 4) = 28271;
      v64 = v47 + 7;
      if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
      {
        v92.__r_.__value_.__l.__size_ = v47 + 7;
      }

      else
      {
        *(&v92.__r_.__value_.__s + 23) = v64 & 0x7F;
      }

      v58 = (v62 + v64);
    }

    else
    {
      v49 = 0x7FFFFFFFFFFFFFF7;
      v50 = v92.__r_.__value_.__l.__size_ + 7;
      if (0x7FFFFFFFFFFFFFF7 - (v92.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < v92.__r_.__value_.__l.__size_ + 7 - v48)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v51 = v92.__r_.__value_.__r.__words[0];
      if (v48 >= 0x3FFFFFFFFFFFFFF3)
      {
        v54 = 0;
      }

      else
      {
        v52 = 2 * v48;
        if (v50 > 2 * v48)
        {
          v52 = v92.__r_.__value_.__l.__size_ + 7;
        }

        if ((v52 | 7) == 0x17)
        {
          v53 = 25;
        }

        else
        {
          v53 = (v52 | 7) + 1;
        }

        if (v52 >= 0x17)
        {
          v49 = v53;
        }

        else
        {
          v49 = 23;
        }

        v54 = v48 == 22;
      }

      v55 = operator new(v49);
      v56 = v55;
      if (v47)
      {
        memmove(v55, v51, v47);
      }

      v57 = v56 + v47;
      *v57 = 1752197422;
      *(v57 + 6) = 101;
      *(v57 + 4) = 28271;
      if (!v54)
      {
        operator delete(v51);
      }

      v92.__r_.__value_.__l.__size_ = v50;
      v92.__r_.__value_.__r.__words[2] = v49 | 0x8000000000000000;
      v92.__r_.__value_.__r.__words[0] = v56;
      v58 = (v56 + v50);
    }

    *v58 = 0;
    buf = v92;
    memset(&v92, 0, sizeof(v92));
    v65 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      v65 = buf.__r_.__value_.__l.__size_;
      v73 = (buf.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v73 - buf.__r_.__value_.__l.__size_ >= 6)
      {
        goto LABEL_130;
      }

      v69 = 0x7FFFFFFFFFFFFFF7;
      v66 = buf.__r_.__value_.__l.__size_ + 6;
      if (0x7FFFFFFFFFFFFFF7 - (buf.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < buf.__r_.__value_.__l.__size_ + 6 - v73)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v67 = buf.__r_.__value_.__r.__words[0];
      if (v73 >= 0x3FFFFFFFFFFFFFF3)
      {
        v72 = 0;
        goto LABEL_125;
      }
    }

    else
    {
      if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) - 17) >= 6)
      {
LABEL_112:
        v74 = &buf;
LABEL_131:
        v81 = v74 + v65;
        *v81 = 1768714286;
        *(v81 + 2) = 29811;
        v82 = v65 + 6;
        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          buf.__r_.__value_.__l.__size_ = v65 + 6;
        }

        else
        {
          *(&buf.__r_.__value_.__s + 23) = v82 & 0x7F;
        }

        v80 = v74 + v82;
        goto LABEL_135;
      }

      v66 = SHIBYTE(buf.__r_.__value_.__r.__words[2]) + 6;
      v67 = &buf;
      v73 = 22;
    }

    v75 = 2 * v73;
    if (v66 > 2 * v73)
    {
      v75 = v66;
    }

    if ((v75 | 7) == 0x17)
    {
      v76 = 25;
    }

    else
    {
      v76 = (v75 | 7) + 1;
    }

    if (v75 >= 0x17)
    {
      v69 = v76;
    }

    else
    {
      v69 = 23;
    }

    v72 = v73 == 22;
    goto LABEL_125;
  }

  v31 = operator new(0x48uLL);
  v31[32] = 47;
  *v31 = v90[3];
  *(v31 + 1) = v90[2];
  *(v31 + 2) = v90[1];
  *(v31 + 3) = v90[0];
  v32 = operator new(0x90uLL);
  strcpy(v32 + 64, "/cpms.budgets");
  *v32 = v90[3];
  *(v32 + 1) = v90[2];
  *(v32 + 2) = v90[1];
  *(v32 + 3) = v90[0];
  operator delete(v31);
  v92.__r_.__value_.__r.__words[0] = v32;
  *&v92.__r_.__value_.__r.__words[1] = xmmword_2976A4F50;
  v35 = v92.__r_.__value_.__l.__size_;
  v36 = (v92.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v36 - v92.__r_.__value_.__l.__size_ >= 6)
  {
    v59 = v92.__r_.__value_.__r.__words[0];
    v60 = v92.__r_.__value_.__r.__words[0] + v92.__r_.__value_.__l.__size_;
    *v60 = 1952544558;
    *(v60 + 4) = 26723;
    v61 = v35 + 6;
    if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
    {
      v92.__r_.__value_.__l.__size_ = v35 + 6;
    }

    else
    {
      *(&v92.__r_.__value_.__s + 23) = v61 & 0x7F;
    }

    v46 = (v59 + v61);
  }

  else
  {
    v37 = 0x7FFFFFFFFFFFFFF7;
    v38 = v92.__r_.__value_.__l.__size_ + 6;
    if (0x7FFFFFFFFFFFFFF7 - (v92.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < v92.__r_.__value_.__l.__size_ + 6 - v36)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v39 = v92.__r_.__value_.__r.__words[0];
    if (v36 >= 0x3FFFFFFFFFFFFFF3)
    {
      v42 = 0;
    }

    else
    {
      v40 = 2 * v36;
      if (v38 > 2 * v36)
      {
        v40 = v92.__r_.__value_.__l.__size_ + 6;
      }

      if ((v40 | 7) == 0x17)
      {
        v41 = 25;
      }

      else
      {
        v41 = (v40 | 7) + 1;
      }

      if (v40 >= 0x17)
      {
        v37 = v41;
      }

      else
      {
        v37 = 23;
      }

      v42 = v36 == 22;
    }

    v43 = operator new(v37);
    v44 = v43;
    if (v35)
    {
      memmove(v43, v39, v35);
    }

    v45 = v44 + v35;
    *v45 = 1952544558;
    *(v45 + 4) = 26723;
    if (!v42)
    {
      operator delete(v39);
    }

    v92.__r_.__value_.__l.__size_ = v38;
    v92.__r_.__value_.__r.__words[2] = v37 | 0x8000000000000000;
    v92.__r_.__value_.__r.__words[0] = v44;
    v46 = (v44 + v38);
  }

  *v46 = 0;
  buf = v92;
  memset(&v92, 0, sizeof(v92));
  v65 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
  {
    if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) - 17) < 6)
    {
      v66 = SHIBYTE(buf.__r_.__value_.__r.__words[2]) + 6;
      v67 = &buf;
      v68 = 22;
LABEL_98:
      v70 = 2 * v68;
      if (v66 > 2 * v68)
      {
        v70 = v66;
      }

      if ((v70 | 7) == 0x17)
      {
        v71 = 25;
      }

      else
      {
        v71 = (v70 | 7) + 1;
      }

      if (v70 >= 0x17)
      {
        v69 = v71;
      }

      else
      {
        v69 = 23;
      }

      v72 = v68 == 22;
      goto LABEL_125;
    }

    goto LABEL_112;
  }

  v65 = buf.__r_.__value_.__l.__size_;
  v68 = (buf.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v68 - buf.__r_.__value_.__l.__size_ >= 6)
  {
LABEL_130:
    v74 = buf.__r_.__value_.__r.__words[0];
    goto LABEL_131;
  }

  v69 = 0x7FFFFFFFFFFFFFF7;
  v66 = buf.__r_.__value_.__l.__size_ + 6;
  if (0x7FFFFFFFFFFFFFF7 - (buf.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < buf.__r_.__value_.__l.__size_ + 6 - v68)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v67 = buf.__r_.__value_.__r.__words[0];
  if (v68 < 0x3FFFFFFFFFFFFFF3)
  {
    goto LABEL_98;
  }

  v72 = 0;
LABEL_125:
  v77 = operator new(v69);
  v78 = v77;
  if (v65)
  {
    memmove(v77, v67, v65);
  }

  v79 = v78 + v65;
  *v79 = 1768714286;
  *(v79 + 4) = 29811;
  if (!v72)
  {
    operator delete(v67);
  }

  buf.__r_.__value_.__l.__size_ = v66;
  buf.__r_.__value_.__r.__words[2] = v69 | 0x8000000000000000;
  buf.__r_.__value_.__r.__words[0] = v78;
  v80 = (v78 + v66);
LABEL_135:
  *v80 = 0;
  __p.__r_.__value_.__r.__words[0] = buf.__r_.__value_.__l.__size_;
  v83 = buf.__r_.__value_.__r.__words[0];
  *(__p.__r_.__value_.__r.__words + 7) = *(&buf.__r_.__value_.__r.__words[1] + 7);
  v84 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
  memset(&buf, 0, sizeof(buf));
  if ((*(a2 + 23) & 0x80000000) == 0)
  {
    *a2 = v83;
    *v3 = __p.__r_.__value_.__r.__words[0];
    *(a2 + 15) = *(__p.__r_.__value_.__r.__words + 7);
    *(a2 + 23) = v84;
    if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_137;
    }

LABEL_141:
    v85 = *(this + 13);
    if (!os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_146;
    }

    goto LABEL_142;
  }

  operator delete(*a2);
  v86 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
  *a2 = v83;
  *v3 = __p.__r_.__value_.__r.__words[0];
  *(a2 + 15) = *(__p.__r_.__value_.__r.__words + 7);
  *(a2 + 23) = v84;
  if (v86 < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v92.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_141;
    }
  }

  else if ((SHIBYTE(v92.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_141;
  }

LABEL_137:
  operator delete(v92.__r_.__value_.__l.__data_);
  v85 = *(this + 13);
  if (!os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_146;
  }

LABEL_142:
  if (*(a2 + 23) >= 0)
  {
    v87 = a2;
  }

  else
  {
    v87 = *a2;
  }

  LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
  *(buf.__r_.__value_.__r.__words + 4) = v87;
  _os_log_impl(&dword_297476000, v85, OS_LOG_TYPE_DEFAULT, "#I CPMS Power Budget List: %s", &buf, 0xCu);
LABEL_146:
  v88 = *MEMORY[0x29EDCA608];
}

void sub_2975FD5F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, __int128 a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (v39 < 0)
  {
    operator delete(*(v40 - 128));
  }

  if (a32 < 0)
  {
    operator delete(__p);
  }

  if (*(v38 + 23) < 0)
  {
    operator delete(*v38);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *CPMSModule::initPowerConfig_sync(void)::$_1::operator()(void *a1, void *a2, void *a3, void *a4)
{
  v8 = *MEMORY[0x29EDC0AA8];
  if ([a2 isEqualToString:*MEMORY[0x29EDC0AA8]])
  {
    v9 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    [v9 addObject:{objc_msgSend(a3, "valueForKey:", @"Min"}];
    [v9 addObject:{objc_msgSend(a3, "valueForKey:", @"Max"}];
    [a4 setObject:v9 forKey:v8];
    v10 = [objc_msgSend(a3 valueForKey:{@"Min", "unsignedIntValue"}];
    v12 = a1 + 28;
    v11 = a1[28];
    if (v11)
    {
      while (1)
      {
        v12 = v11;
        if (!v11[28])
        {
          break;
        }

        v11 = *v11;
        if (!*v12)
        {
          goto LABEL_5;
        }
      }
    }

    else
    {
LABEL_5:
      v13 = v12;
      v12 = operator new(0x28uLL);
      *(v12 + 28) = 0;
      *(v12 + 32) = 0;
      *(v12 + 36) = 0;
      *v12 = 0;
      v12[1] = 0;
      v12[2] = v13;
      *v13 = v12;
      v14 = *a1[27];
      if (v14)
      {
        a1[27] = v14;
      }

      std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[28], v12);
      ++a1[29];
    }

    *(v12 + 8) = v10;
    *(v12 + 36) = 1;
    v15 = [objc_msgSend(a3 valueForKey:{@"Max", "unsignedIntValue"}];
    v16 = a1[32];
    if (v16)
    {
      while (1)
      {
        v17 = v16;
        if (!v16[28])
        {
          break;
        }

        v16 = *v16;
        if (!*v17)
        {
          goto LABEL_93;
        }
      }
    }

    else
    {
      v17 = a1 + 32;
LABEL_93:
      v75 = v17;
      v17 = operator new(0x28uLL);
      *(v17 + 28) = 0;
      *(v17 + 32) = 0;
      *(v17 + 36) = 0;
      *v17 = 0;
      v17[1] = 0;
      v17[2] = v75;
      *v75 = v17;
      v76 = *a1[31];
      if (v76)
      {
        a1[31] = v76;
      }

      std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[32], v17);
      ++a1[33];
    }

    *(v17 + 8) = v15;
    *(v17 + 36) = 1;
    result = [objc_msgSend(a3 valueForKey:{@"Idle", "unsignedIntValue"}];
    v77 = result;
    v78 = a1[36];
    if (v78)
    {
      while (1)
      {
        v79 = v78;
        if (!v78[28])
        {
          break;
        }

        v78 = *v78;
        if (!*v79)
        {
          goto LABEL_101;
        }
      }
    }

    else
    {
      v79 = a1 + 36;
LABEL_101:
      v80 = v79;
      v79 = operator new(0x28uLL);
      *(v79 + 28) = 0;
      *(v79 + 32) = 0;
      *(v79 + 36) = 0;
      *v79 = 0;
      v79[1] = 0;
      v79[2] = v80;
      *v80 = v79;
      v81 = *a1[35];
      if (v81)
      {
        a1[35] = v81;
      }

      result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[36], v79);
      ++a1[37];
    }

    *(v79 + 8) = v77;
    *(v79 + 36) = 1;
    v82 = a1[40];
    if (v82)
    {
      while (1)
      {
        v44 = v82;
        if (!v82[28])
        {
          goto LABEL_112;
        }

        v82 = *v82;
        if (!*v44)
        {
          goto LABEL_109;
        }
      }
    }

    v44 = a1 + 40;
LABEL_109:
    v83 = v44;
    v44 = operator new(0x28uLL);
    *(v44 + 28) = 0;
    *(v44 + 32) = 0;
    *(v44 + 36) = 0;
    *v44 = 0;
    v44[1] = 0;
    v44[2] = v83;
    *v83 = v44;
    v47 = *a1[39];
    if (!v47)
    {
LABEL_111:
      result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[40], v44);
      ++a1[41];
LABEL_112:
      *(v44 + 8) = 1;
      *(v44 + 36) = 1;
      return result;
    }

LABEL_110:
    a1[39] = v47;
    goto LABEL_111;
  }

  v18 = *MEMORY[0x29EDC0AA0];
  if ([a2 isEqualToString:*MEMORY[0x29EDC0AA0]])
  {
    v19 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    [v19 addObject:{objc_msgSend(a3, "valueForKey:", @"Min"}];
    [v19 addObject:{objc_msgSend(a3, "valueForKey:", @"Max"}];
    [a4 setObject:v19 forKey:v18];
    v20 = [objc_msgSend(a3 valueForKey:{@"Min", "unsignedIntValue"}];
    v22 = a1 + 28;
    v21 = a1[28];
    if (v21)
    {
      while (1)
      {
        while (1)
        {
          v23 = v21;
          v24 = *(v21 + 28);
          if (v24 < 2)
          {
            break;
          }

          v21 = *v23;
          v22 = v23;
          if (!*v23)
          {
            goto LABEL_20;
          }
        }

        if (v24)
        {
          break;
        }

        v21 = v23[1];
        if (!v21)
        {
          v22 = v23 + 1;
          goto LABEL_20;
        }
      }
    }

    else
    {
      v23 = a1 + 28;
LABEL_20:
      v25 = v23;
      v23 = operator new(0x28uLL);
      *(v23 + 28) = 1;
      *(v23 + 32) = 0;
      *(v23 + 36) = 0;
      *v23 = 0;
      v23[1] = 0;
      v23[2] = v25;
      *v22 = v23;
      v26 = *a1[27];
      if (v26)
      {
        a1[27] = v26;
      }

      std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[28], v23);
      ++a1[29];
    }

    *(v23 + 8) = v20;
    *(v23 + 36) = 1;
    v27 = [objc_msgSend(a3 valueForKey:{@"Max", "unsignedIntValue"}];
    v28 = a1[32];
    if (v28)
    {
      while (1)
      {
        while (1)
        {
          v30 = v28;
          v31 = *(v28 + 28);
          if (v31 < 2)
          {
            break;
          }

          v28 = *v30;
          v29 = v30;
          if (!*v30)
          {
            goto LABEL_30;
          }
        }

        if (v31)
        {
          break;
        }

        v28 = v30[1];
        if (!v28)
        {
          v29 = v30 + 1;
          goto LABEL_30;
        }
      }
    }

    else
    {
      v29 = a1 + 32;
      v30 = a1 + 32;
LABEL_30:
      v32 = v30;
      v30 = operator new(0x28uLL);
      *(v30 + 28) = 1;
      *(v30 + 32) = 0;
      *(v30 + 36) = 0;
      *v30 = 0;
      v30[1] = 0;
      v30[2] = v32;
      *v29 = v30;
      v33 = *a1[31];
      if (v33)
      {
        a1[31] = v33;
      }

      std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[32], v30);
      ++a1[33];
    }

    *(v30 + 8) = v27;
    *(v30 + 36) = 1;
    result = [objc_msgSend(a3 valueForKey:{@"Idle", "unsignedIntValue"}];
    v35 = result;
    v36 = a1[36];
    if (v36)
    {
      while (1)
      {
        while (1)
        {
          v38 = v36;
          v39 = *(v36 + 28);
          if (v39 < 2)
          {
            break;
          }

          v36 = *v38;
          v37 = v38;
          if (!*v38)
          {
            goto LABEL_40;
          }
        }

        if (v39)
        {
          break;
        }

        v36 = v38[1];
        if (!v36)
        {
          v37 = v38 + 1;
          goto LABEL_40;
        }
      }
    }

    else
    {
      v37 = a1 + 36;
      v38 = a1 + 36;
LABEL_40:
      v40 = v38;
      v38 = operator new(0x28uLL);
      *(v38 + 28) = 1;
      *(v38 + 32) = 0;
      *(v38 + 36) = 0;
      *v38 = 0;
      v38[1] = 0;
      v38[2] = v40;
      *v37 = v38;
      v41 = *a1[35];
      if (v41)
      {
        a1[35] = v41;
      }

      result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[36], v38);
      ++a1[37];
    }

    *(v38 + 8) = v35;
    *(v38 + 36) = 1;
    v42 = a1[40];
    if (v42)
    {
      while (1)
      {
        while (1)
        {
          v44 = v42;
          v45 = *(v42 + 28);
          if (v45 < 2)
          {
            break;
          }

          v42 = *v44;
          v43 = v44;
          if (!*v44)
          {
            goto LABEL_50;
          }
        }

        if (v45)
        {
          goto LABEL_112;
        }

        v42 = v44[1];
        if (!v42)
        {
          v43 = v44 + 1;
          goto LABEL_50;
        }
      }
    }

    v43 = a1 + 40;
    v44 = a1 + 40;
LABEL_50:
    v46 = v44;
    v44 = operator new(0x28uLL);
    *(v44 + 28) = 1;
    *(v44 + 32) = 0;
    *(v44 + 36) = 0;
    *v44 = 0;
    v44[1] = 0;
    v44[2] = v46;
    *v43 = v44;
    v47 = *a1[39];
    if (!v47)
    {
      goto LABEL_111;
    }

    goto LABEL_110;
  }

  v48 = *MEMORY[0x29EDC0AB0];
  if ([a2 isEqualToString:*MEMORY[0x29EDC0AB0]])
  {
    v49 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    [v49 addObject:{objc_msgSend(a3, "valueForKey:", @"Min"}];
    [v49 addObject:{objc_msgSend(a3, "valueForKey:", @"Max"}];
    [a4 setObject:v49 forKey:v48];
    v50 = [objc_msgSend(a3 valueForKey:{@"Min", "unsignedIntValue"}];
    v52 = a1 + 28;
    v51 = a1[28];
    if (v51)
    {
      while (1)
      {
        while (1)
        {
          v53 = v51;
          v54 = *(v51 + 28);
          if (v54 < 3)
          {
            break;
          }

          v51 = *v53;
          v52 = v53;
          if (!*v53)
          {
            goto LABEL_60;
          }
        }

        if (v54 == 2)
        {
          break;
        }

        v51 = v53[1];
        if (!v51)
        {
          v52 = v53 + 1;
          goto LABEL_60;
        }
      }
    }

    else
    {
      v53 = a1 + 28;
LABEL_60:
      v55 = v53;
      v53 = operator new(0x28uLL);
      *(v53 + 28) = 2;
      *(v53 + 32) = 0;
      *(v53 + 36) = 0;
      *v53 = 0;
      v53[1] = 0;
      v53[2] = v55;
      *v52 = v53;
      v56 = *a1[27];
      if (v56)
      {
        a1[27] = v56;
      }

      std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[28], v53);
      ++a1[29];
    }

    *(v53 + 8) = v50;
    *(v53 + 36) = 1;
    v57 = [objc_msgSend(a3 valueForKey:{@"Max", "unsignedIntValue"}];
    v58 = a1[32];
    if (v58)
    {
      while (1)
      {
        while (1)
        {
          v60 = v58;
          v61 = *(v58 + 28);
          if (v61 < 3)
          {
            break;
          }

          v58 = *v60;
          v59 = v60;
          if (!*v60)
          {
            goto LABEL_70;
          }
        }

        if (v61 == 2)
        {
          break;
        }

        v58 = v60[1];
        if (!v58)
        {
          v59 = v60 + 1;
          goto LABEL_70;
        }
      }
    }

    else
    {
      v59 = a1 + 32;
      v60 = a1 + 32;
LABEL_70:
      v62 = v60;
      v60 = operator new(0x28uLL);
      *(v60 + 28) = 2;
      *(v60 + 32) = 0;
      *(v60 + 36) = 0;
      *v60 = 0;
      v60[1] = 0;
      v60[2] = v62;
      *v59 = v60;
      v63 = *a1[31];
      if (v63)
      {
        a1[31] = v63;
      }

      std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[32], v60);
      ++a1[33];
    }

    *(v60 + 8) = v57;
    *(v60 + 36) = 1;
    result = [objc_msgSend(a3 valueForKey:{@"Idle", "unsignedIntValue"}];
    v64 = result;
    v65 = a1[36];
    if (v65)
    {
      while (1)
      {
        while (1)
        {
          v67 = v65;
          v68 = *(v65 + 28);
          if (v68 < 3)
          {
            break;
          }

          v65 = *v67;
          v66 = v67;
          if (!*v67)
          {
            goto LABEL_80;
          }
        }

        if (v68 == 2)
        {
          break;
        }

        v65 = v67[1];
        if (!v65)
        {
          v66 = v67 + 1;
          goto LABEL_80;
        }
      }
    }

    else
    {
      v66 = a1 + 36;
      v67 = a1 + 36;
LABEL_80:
      v69 = v67;
      v67 = operator new(0x28uLL);
      *(v67 + 28) = 2;
      *(v67 + 32) = 0;
      *(v67 + 36) = 0;
      *v67 = 0;
      v67[1] = 0;
      v67[2] = v69;
      *v66 = v67;
      v70 = *a1[35];
      if (v70)
      {
        a1[35] = v70;
      }

      result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[36], v67);
      ++a1[37];
    }

    *(v67 + 8) = v64;
    *(v67 + 36) = 1;
    v71 = a1[40];
    if (v71)
    {
      while (1)
      {
        while (1)
        {
          v44 = v71;
          v73 = *(v71 + 28);
          if (v73 < 3)
          {
            break;
          }

          v71 = *v44;
          v72 = v44;
          if (!*v44)
          {
            goto LABEL_90;
          }
        }

        if (v73 == 2)
        {
          goto LABEL_112;
        }

        v71 = v44[1];
        if (!v71)
        {
          v72 = v44 + 1;
          goto LABEL_90;
        }
      }
    }

    v72 = a1 + 40;
    v44 = a1 + 40;
LABEL_90:
    v74 = v44;
    v44 = operator new(0x28uLL);
    *(v44 + 28) = 2;
    *(v44 + 32) = 0;
    *(v44 + 36) = 0;
    *v44 = 0;
    v44[1] = 0;
    v44[2] = v74;
    *v72 = v44;
    v47 = *a1[39];
    if (!v47)
    {
      goto LABEL_111;
    }

    goto LABEL_110;
  }

  result = [a2 isEqualToString:*MEMORY[0x29EDC0AB8]];
  if (result)
  {
    v84 = [objc_msgSend(a3 valueForKey:{@"Min", "unsignedIntValue"}];
    v86 = a1 + 28;
    v85 = a1[28];
    v87 = a1 + 28;
    v88 = a1 + 28;
    if (v85)
    {
      while (1)
      {
        while (1)
        {
          v88 = v85;
          v89 = *(v85 + 28);
          if (v89 < 0xB)
          {
            break;
          }

          v85 = *v88;
          v87 = v88;
          if (!*v88)
          {
            goto LABEL_122;
          }
        }

        if (v89 == 10)
        {
          break;
        }

        v85 = v88[1];
        if (!v85)
        {
          v87 = v88 + 1;
          goto LABEL_122;
        }
      }
    }

    else
    {
LABEL_122:
      v90 = v88;
      v88 = operator new(0x28uLL);
      *(v88 + 28) = 10;
      *(v88 + 32) = 0;
      *(v88 + 36) = 0;
      *v88 = 0;
      v88[1] = 0;
      v88[2] = v90;
      *v87 = v88;
      v91 = *a1[27];
      if (v91)
      {
        a1[27] = v91;
      }

      std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[28], v88);
      ++a1[29];
    }

    *(v88 + 8) = v84;
    *(v88 + 36) = 1;
    v92 = [objc_msgSend(a3 valueForKey:{@"Max", "unsignedIntValue"}];
    v93 = a1 + 32;
    v94 = a1[32];
    v95 = a1 + 32;
    v96 = a1 + 32;
    if (v94)
    {
      while (1)
      {
        while (1)
        {
          v96 = v94;
          v97 = *(v94 + 28);
          if (v97 < 0xB)
          {
            break;
          }

          v94 = *v96;
          v95 = v96;
          if (!*v96)
          {
            goto LABEL_132;
          }
        }

        if (v97 == 10)
        {
          break;
        }

        v94 = v96[1];
        if (!v94)
        {
          v95 = v96 + 1;
          goto LABEL_132;
        }
      }
    }

    else
    {
LABEL_132:
      v98 = v96;
      v96 = operator new(0x28uLL);
      *(v96 + 28) = 10;
      *(v96 + 32) = 0;
      *(v96 + 36) = 0;
      *v96 = 0;
      v96[1] = 0;
      v96[2] = v98;
      *v95 = v96;
      v99 = *a1[31];
      if (v99)
      {
        a1[31] = v99;
      }

      std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[32], v96);
      ++a1[33];
    }

    *(v96 + 8) = v92;
    *(v96 + 36) = 1;
    v100 = [objc_msgSend(a3 valueForKey:{@"Idle", "unsignedIntValue"}];
    v101 = a1 + 36;
    v102 = a1[36];
    v103 = a1 + 36;
    v104 = a1 + 36;
    if (v102)
    {
      while (1)
      {
        while (1)
        {
          v104 = v102;
          v105 = *(v102 + 28);
          if (v105 < 0xB)
          {
            break;
          }

          v102 = *v104;
          v103 = v104;
          if (!*v104)
          {
            goto LABEL_142;
          }
        }

        if (v105 == 10)
        {
          break;
        }

        v102 = v104[1];
        if (!v102)
        {
          v103 = v104 + 1;
          goto LABEL_142;
        }
      }
    }

    else
    {
LABEL_142:
      v106 = v104;
      v104 = operator new(0x28uLL);
      *(v104 + 28) = 10;
      *(v104 + 32) = 0;
      *(v104 + 36) = 0;
      *v104 = 0;
      v104[1] = 0;
      v104[2] = v106;
      *v103 = v104;
      v107 = *a1[35];
      if (v107)
      {
        a1[35] = v107;
      }

      std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[36], v104);
      ++a1[37];
    }

    *(v104 + 8) = v100;
    *(v104 + 36) = 1;
    v108 = a1 + 40;
    v109 = a1[40];
    v110 = a1 + 40;
    v111 = a1 + 40;
    if (v109)
    {
      while (1)
      {
        while (1)
        {
          v111 = v109;
          v112 = *(v109 + 28);
          if (v112 < 0xB)
          {
            break;
          }

          v109 = *v111;
          v110 = v111;
          if (!*v111)
          {
            goto LABEL_152;
          }
        }

        if (v112 == 10)
        {
          break;
        }

        v109 = v111[1];
        if (!v109)
        {
          v110 = v111 + 1;
          goto LABEL_152;
        }
      }
    }

    else
    {
LABEL_152:
      v113 = v111;
      v111 = operator new(0x28uLL);
      *(v111 + 28) = 10;
      *(v111 + 32) = 0;
      *(v111 + 36) = 0;
      *v111 = 0;
      v111[1] = 0;
      v111[2] = v113;
      *v110 = v111;
      v114 = *a1[39];
      if (v114)
      {
        a1[39] = v114;
      }

      std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[40], v111);
      ++a1[41];
    }

    *(v111 + 8) = 1;
    *(v111 + 36) = 1;
    v115 = [objc_msgSend(a3 valueForKey:{@"Min", "unsignedIntValue"}];
    v116 = *v86;
    v117 = a1 + 28;
    v118 = a1 + 28;
    if (*v86)
    {
      while (1)
      {
        while (1)
        {
          v118 = v116;
          v119 = *(v116 + 28);
          if (v119 < 0xC)
          {
            break;
          }

          v116 = *v118;
          v117 = v118;
          if (!*v118)
          {
            goto LABEL_162;
          }
        }

        if (v119 == 11)
        {
          break;
        }

        v116 = v118[1];
        if (!v116)
        {
          v117 = v118 + 1;
          goto LABEL_162;
        }
      }
    }

    else
    {
LABEL_162:
      v120 = v118;
      v118 = operator new(0x28uLL);
      *(v118 + 28) = 11;
      *(v118 + 32) = 0;
      *(v118 + 36) = 0;
      *v118 = 0;
      v118[1] = 0;
      v118[2] = v120;
      *v117 = v118;
      v121 = *a1[27];
      if (v121)
      {
        a1[27] = v121;
      }

      std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[28], v118);
      ++a1[29];
    }

    *(v118 + 8) = v115;
    *(v118 + 36) = 1;
    v122 = [objc_msgSend(a3 valueForKey:{@"Max", "unsignedIntValue"}];
    v123 = *v93;
    v124 = a1 + 32;
    v125 = a1 + 32;
    if (*v93)
    {
      while (1)
      {
        while (1)
        {
          v125 = v123;
          v126 = *(v123 + 28);
          if (v126 < 0xC)
          {
            break;
          }

          v123 = *v125;
          v124 = v125;
          if (!*v125)
          {
            goto LABEL_172;
          }
        }

        if (v126 == 11)
        {
          break;
        }

        v123 = v125[1];
        if (!v123)
        {
          v124 = v125 + 1;
          goto LABEL_172;
        }
      }
    }

    else
    {
LABEL_172:
      v127 = v125;
      v125 = operator new(0x28uLL);
      *(v125 + 28) = 11;
      *(v125 + 32) = 0;
      *(v125 + 36) = 0;
      *v125 = 0;
      v125[1] = 0;
      v125[2] = v127;
      *v124 = v125;
      v128 = *a1[31];
      if (v128)
      {
        a1[31] = v128;
      }

      std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[32], v125);
      ++a1[33];
    }

    *(v125 + 8) = v122;
    *(v125 + 36) = 1;
    v129 = [objc_msgSend(a3 valueForKey:{@"Idle", "unsignedIntValue"}];
    v130 = *v101;
    v131 = a1 + 36;
    v132 = a1 + 36;
    if (*v101)
    {
      while (1)
      {
        while (1)
        {
          v132 = v130;
          v133 = *(v130 + 28);
          if (v133 < 0xC)
          {
            break;
          }

          v130 = *v132;
          v131 = v132;
          if (!*v132)
          {
            goto LABEL_182;
          }
        }

        if (v133 == 11)
        {
          break;
        }

        v130 = v132[1];
        if (!v130)
        {
          v131 = v132 + 1;
          goto LABEL_182;
        }
      }
    }

    else
    {
LABEL_182:
      v134 = v132;
      v132 = operator new(0x28uLL);
      *(v132 + 28) = 11;
      *(v132 + 32) = 0;
      *(v132 + 36) = 0;
      *v132 = 0;
      v132[1] = 0;
      v132[2] = v134;
      *v131 = v132;
      v135 = *a1[35];
      if (v135)
      {
        a1[35] = v135;
      }

      std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[36], v132);
      ++a1[37];
    }

    *(v132 + 8) = v129;
    *(v132 + 36) = 1;
    v136 = *v108;
    v137 = a1 + 40;
    v138 = a1 + 40;
    if (*v108)
    {
      while (1)
      {
        while (1)
        {
          v138 = v136;
          v139 = *(v136 + 28);
          if (v139 < 0xC)
          {
            break;
          }

          v136 = *v138;
          v137 = v138;
          if (!*v138)
          {
            goto LABEL_192;
          }
        }

        if (v139 == 11)
        {
          break;
        }

        v136 = v138[1];
        if (!v136)
        {
          v137 = v138 + 1;
          goto LABEL_192;
        }
      }
    }

    else
    {
LABEL_192:
      v140 = v138;
      v138 = operator new(0x28uLL);
      *(v138 + 28) = 11;
      *(v138 + 32) = 0;
      *(v138 + 36) = 0;
      *v138 = 0;
      v138[1] = 0;
      v138[2] = v140;
      *v137 = v138;
      v141 = *a1[39];
      if (v141)
      {
        a1[39] = v141;
      }

      std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[40], v138);
      ++a1[41];
    }

    *(v138 + 8) = 1;
    *(v138 + 36) = 1;
    v142 = [objc_msgSend(a3 valueForKey:{@"Min", "unsignedIntValue"}];
    v143 = *v86;
    v144 = a1 + 28;
    v145 = a1 + 28;
    if (*v86)
    {
      while (1)
      {
        while (1)
        {
          v145 = v143;
          v146 = *(v143 + 28);
          if (v146 < 0xD)
          {
            break;
          }

          v143 = *v145;
          v144 = v145;
          if (!*v145)
          {
            goto LABEL_202;
          }
        }

        if (v146 == 12)
        {
          break;
        }

        v143 = v145[1];
        if (!v143)
        {
          v144 = v145 + 1;
          goto LABEL_202;
        }
      }
    }

    else
    {
LABEL_202:
      v147 = v145;
      v145 = operator new(0x28uLL);
      *(v145 + 28) = 12;
      *(v145 + 32) = 0;
      *(v145 + 36) = 0;
      *v145 = 0;
      v145[1] = 0;
      v145[2] = v147;
      *v144 = v145;
      v148 = *a1[27];
      if (v148)
      {
        a1[27] = v148;
      }

      std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[28], v145);
      ++a1[29];
    }

    *(v145 + 8) = v142;
    *(v145 + 36) = 1;
    v149 = [objc_msgSend(a3 valueForKey:{@"Max", "unsignedIntValue"}];
    v150 = *v93;
    v151 = a1 + 32;
    v152 = a1 + 32;
    if (*v93)
    {
      while (1)
      {
        while (1)
        {
          v152 = v150;
          v153 = *(v150 + 28);
          if (v153 < 0xD)
          {
            break;
          }

          v150 = *v152;
          v151 = v152;
          if (!*v152)
          {
            goto LABEL_212;
          }
        }

        if (v153 == 12)
        {
          break;
        }

        v150 = v152[1];
        if (!v150)
        {
          v151 = v152 + 1;
          goto LABEL_212;
        }
      }
    }

    else
    {
LABEL_212:
      v154 = v152;
      v152 = operator new(0x28uLL);
      *(v152 + 28) = 12;
      *(v152 + 32) = 0;
      *(v152 + 36) = 0;
      *v152 = 0;
      v152[1] = 0;
      v152[2] = v154;
      *v151 = v152;
      v155 = *a1[31];
      if (v155)
      {
        a1[31] = v155;
      }

      std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[32], v152);
      ++a1[33];
    }

    *(v152 + 8) = v149;
    *(v152 + 36) = 1;
    v156 = [objc_msgSend(a3 valueForKey:{@"Idle", "unsignedIntValue"}];
    v157 = *v101;
    v158 = a1 + 36;
    v159 = a1 + 36;
    if (*v101)
    {
      while (1)
      {
        while (1)
        {
          v159 = v157;
          v160 = *(v157 + 28);
          if (v160 < 0xD)
          {
            break;
          }

          v157 = *v159;
          v158 = v159;
          if (!*v159)
          {
            goto LABEL_222;
          }
        }

        if (v160 == 12)
        {
          break;
        }

        v157 = v159[1];
        if (!v157)
        {
          v158 = v159 + 1;
          goto LABEL_222;
        }
      }
    }

    else
    {
LABEL_222:
      v161 = v159;
      v159 = operator new(0x28uLL);
      *(v159 + 28) = 12;
      *(v159 + 32) = 0;
      *(v159 + 36) = 0;
      *v159 = 0;
      v159[1] = 0;
      v159[2] = v161;
      *v158 = v159;
      v162 = *a1[35];
      if (v162)
      {
        a1[35] = v162;
      }

      std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[36], v159);
      ++a1[37];
    }

    *(v159 + 8) = v156;
    *(v159 + 36) = 1;
    v163 = *v108;
    v164 = a1 + 40;
    v165 = a1 + 40;
    if (*v108)
    {
      while (1)
      {
        while (1)
        {
          v165 = v163;
          v166 = *(v163 + 28);
          if (v166 < 0xD)
          {
            break;
          }

          v163 = *v165;
          v164 = v165;
          if (!*v165)
          {
            goto LABEL_232;
          }
        }

        if (v166 == 12)
        {
          break;
        }

        v163 = v165[1];
        if (!v163)
        {
          v164 = v165 + 1;
          goto LABEL_232;
        }
      }
    }

    else
    {
LABEL_232:
      v167 = v165;
      v165 = operator new(0x28uLL);
      *(v165 + 28) = 12;
      *(v165 + 32) = 0;
      *(v165 + 36) = 0;
      *v165 = 0;
      v165[1] = 0;
      v165[2] = v167;
      *v164 = v165;
      v168 = *a1[39];
      if (v168)
      {
        a1[39] = v168;
      }

      std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[40], v165);
      ++a1[41];
    }

    *(v165 + 8) = 1;
    *(v165 + 36) = 1;
    v169 = [objc_msgSend(a3 valueForKey:{@"Min", "unsignedIntValue"}];
    v170 = *v86;
    v171 = a1 + 28;
    if (*v86)
    {
      while (1)
      {
        while (1)
        {
          v171 = v170;
          v172 = *(v170 + 28);
          if (v172 < 0xE)
          {
            break;
          }

          v170 = *v171;
          v86 = v171;
          if (!*v171)
          {
            goto LABEL_242;
          }
        }

        if (v172 == 13)
        {
          break;
        }

        v170 = v171[1];
        if (!v170)
        {
          v86 = v171 + 1;
          goto LABEL_242;
        }
      }
    }

    else
    {
LABEL_242:
      v173 = v171;
      v171 = operator new(0x28uLL);
      *(v171 + 28) = 13;
      *(v171 + 32) = 0;
      *(v171 + 36) = 0;
      *v171 = 0;
      v171[1] = 0;
      v171[2] = v173;
      *v86 = v171;
      v174 = *a1[27];
      if (v174)
      {
        a1[27] = v174;
      }

      std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[28], v171);
      ++a1[29];
    }

    *(v171 + 8) = v169;
    *(v171 + 36) = 1;
    v175 = [objc_msgSend(a3 valueForKey:{@"Max", "unsignedIntValue"}];
    v176 = *v93;
    v177 = a1 + 32;
    if (*v93)
    {
      while (1)
      {
        while (1)
        {
          v177 = v176;
          v178 = *(v176 + 28);
          if (v178 < 0xE)
          {
            break;
          }

          v176 = *v177;
          v93 = v177;
          if (!*v177)
          {
            goto LABEL_252;
          }
        }

        if (v178 == 13)
        {
          break;
        }

        v176 = v177[1];
        if (!v176)
        {
          v93 = v177 + 1;
          goto LABEL_252;
        }
      }
    }

    else
    {
LABEL_252:
      v179 = v177;
      v177 = operator new(0x28uLL);
      *(v177 + 28) = 13;
      *(v177 + 32) = 0;
      *(v177 + 36) = 0;
      *v177 = 0;
      v177[1] = 0;
      v177[2] = v179;
      *v93 = v177;
      v180 = *a1[31];
      if (v180)
      {
        a1[31] = v180;
      }

      std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[32], v177);
      ++a1[33];
    }

    *(v177 + 8) = v175;
    *(v177 + 36) = 1;
    result = [objc_msgSend(a3 valueForKey:{@"Idle", "unsignedIntValue"}];
    v181 = result;
    v182 = *v101;
    v183 = a1 + 36;
    if (*v101)
    {
      while (1)
      {
        while (1)
        {
          v183 = v182;
          v184 = *(v182 + 28);
          if (v184 < 0xE)
          {
            break;
          }

          v182 = *v183;
          v101 = v183;
          if (!*v183)
          {
            goto LABEL_262;
          }
        }

        if (v184 == 13)
        {
          break;
        }

        v182 = v183[1];
        if (!v182)
        {
          v101 = v183 + 1;
          goto LABEL_262;
        }
      }
    }

    else
    {
LABEL_262:
      v185 = v183;
      v183 = operator new(0x28uLL);
      *(v183 + 28) = 13;
      *(v183 + 32) = 0;
      *(v183 + 36) = 0;
      *v183 = 0;
      v183[1] = 0;
      v183[2] = v185;
      *v101 = v183;
      v186 = *a1[35];
      if (v186)
      {
        a1[35] = v186;
      }

      result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[36], v183);
      ++a1[37];
    }

    *(v183 + 8) = v181;
    *(v183 + 36) = 1;
    v187 = *v108;
    v44 = a1 + 40;
    if (*v108)
    {
      while (1)
      {
        while (1)
        {
          v44 = v187;
          v188 = *(v187 + 28);
          if (v188 < 0xE)
          {
            break;
          }

          v187 = *v44;
          v108 = v44;
          if (!*v44)
          {
            goto LABEL_272;
          }
        }

        if (v188 == 13)
        {
          goto LABEL_112;
        }

        v187 = v44[1];
        if (!v187)
        {
          v108 = v44 + 1;
          break;
        }
      }
    }

LABEL_272:
    v189 = v44;
    v44 = operator new(0x28uLL);
    *(v44 + 28) = 13;
    *(v44 + 32) = 0;
    *(v44 + 36) = 0;
    *v44 = 0;
    v44[1] = 0;
    v44[2] = v189;
    *v108 = v44;
    v47 = *a1[39];
    if (!v47)
    {
      goto LABEL_111;
    }

    goto LABEL_110;
  }

  return result;
}

void ___ZN10CPMSModule20initPowerConfig_syncEv_block_invoke(void *a1, void *a2)
{
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
          return;
        }
      }

      else
      {
        v8 = v6;
        (v6->__on_zero_shared)();
        std::__shared_weak_count::__release_weak(v8);
        if (!v7)
        {
          return;
        }
      }

      v9 = [a2 copy];
      v10 = v5[10];
      if (!v10 || (v11 = v5[9], (v12 = std::__shared_weak_count::lock(v10)) == 0))
      {
        std::__throw_bad_weak_ptr[abi:ne200100]();
      }

      v13 = v12;
      v14 = operator new(0x10uLL);
      *v14 = v9;
      v14[1] = v5;
      v15 = v5[11];
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      v16 = operator new(0x18uLL);
      *v16 = v14;
      v16[1] = v11;
      v16[2] = v13;
      dispatch_async_f(v15, v16, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI10CPMSModuleE15execute_wrappedIZZNS3_20initPowerConfig_syncEvEUb3_E4__13EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_);
      if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v13->__on_zero_shared)(v13);

        std::__shared_weak_count::__release_weak(v13);
      }
    }
  }
}

std::__shared_weak_count *___ZN10CPMSModule20initPowerConfig_syncEv_block_invoke_38(void *a1)
{
  result = a1[6];
  if (result)
  {
    v3 = a1[4];
    result = std::__shared_weak_count::lock(result);
    v16 = result;
    if (result)
    {
      v4 = result;
      if (!a1[5])
      {
        goto LABEL_15;
      }

      if (capabilities::abs::supportsCPMSGetPowerFromBB(result))
      {
        v5 = dispatch_group_create();
        v6 = v5;
        if (v5)
        {
          dispatch_retain(v5);
          dispatch_group_enter(v6);
          dispatch_retain(v6);
          dispatch_group_enter(v6);
        }

        aBlock = 0;
        v14 = v6;
        CPMSModule::getCurrentPower(v3, &v14, &aBlock);
        if (aBlock)
        {
          _Block_release(aBlock);
        }

        if (v6)
        {
          dispatch_group_leave(v6);
          dispatch_release(v6);
          dispatch_group_leave(v6);
          dispatch_release(v6);
        }

        v7 = dispatch_time(0, 3000000000);
        if (dispatch_group_wait(v6, v7))
        {
          v8 = v3[13];
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            LOWORD(block) = 0;
            _os_log_error_impl(&dword_297476000, v8, OS_LOG_TYPE_ERROR, "Timeout for getting power estimation", &block, 2u);
            if (!v6)
            {
LABEL_15:
              result = 0;
              if (atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                return result;
              }

LABEL_23:
              v10 = result;
              (v4->__on_zero_shared)(v4);
              std::__shared_weak_count::__release_weak(v4);
              return v10;
            }
          }

          else if (!v6)
          {
            goto LABEL_15;
          }

          dispatch_release(v6);
          goto LABEL_15;
        }

        if (v6)
        {
          dispatch_release(v6);
        }
      }

      v11[0] = MEMORY[0x29EDCA5F8];
      v11[1] = 3221225472;
      v11[2] = ___ZN10CPMSModule20initPowerConfig_syncEv_block_invoke_39;
      v11[3] = &__block_descriptor_40_e19___NSDictionary_8__0l;
      v11[4] = v3;
      v12 = v11;
      v17[0] = MEMORY[0x29EDCA5F8];
      v17[1] = 3221225472;
      v17[2] = ___ZNK3ctu20SharedSynchronizableI10CPMSModuleE20execute_wrapped_syncIU13block_pointerFP12NSDictionaryvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS8__block_invoke;
      v17[3] = &__block_descriptor_48_e19___NSDictionary_8__0l;
      v17[4] = v3 + 9;
      v17[5] = &v12;
      v18 = v17;
      v9 = v3[11];
      if (v3[12])
      {
        v25 = 0xAAAAAAAAAAAAAAAALL;
        block = MEMORY[0x29EDCA5F8];
        v20 = 3221225472;
        v21 = ___ZN8dispatch19async_and_wait_implIRU13block_pointerFP12NSDictionaryvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS6_17integral_constantIbLb0EEE_block_invoke;
        v22 = &__block_descriptor_48_e5_v8__0l;
        v23 = &v25;
        v24 = &v18;
        dispatch_async_and_wait(v9, &block);
        result = v25;
        if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_23;
        }
      }

      else
      {
        v25 = 0xAAAAAAAAAAAAAAAALL;
        block = MEMORY[0x29EDCA5F8];
        v20 = 3221225472;
        v21 = ___ZN8dispatch9sync_implIRU13block_pointerFP12NSDictionaryvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS6_17integral_constantIbLb0EEE_block_invoke;
        v22 = &__block_descriptor_48_e5_v8__0l;
        v23 = &v25;
        v24 = &v18;
        dispatch_sync(v9, &block);
        result = v25;
        if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_23;
        }
      }
    }
  }

  return result;
}

void sub_2975FF088(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *aBlock, uint64_t a17, char a18)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v18)
  {
    dispatch_group_leave(v18);
    dispatch_release(v18);
    dispatch_group_leave(v18);
    dispatch_release(v18);
    dispatch_release(v18);
    std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a18);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a18);
  _Unwind_Resume(a1);
}

void CPMSModule::evaluateBrickMode_sync(uint64_t a1, __int128 *a2)
{
  v33 = *MEMORY[0x29EDCA608];
  if (!config::hw::watch(a1))
  {
    goto LABEL_49;
  }

  v28 = 0;
  *(&buf + 1) = 0;
  v32 = 0;
  *&buf = &buf + 8;
  if (&buf == a2)
  {
    v4 = &buf + 8;
  }

  else
  {
    std::__tree<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__map_value_compare<abm::BasebandCPMSPowerBudgetScale,std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::less<abm::BasebandCPMSPowerBudgetScale>,true>,std::allocator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__tree_node<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,void *> *,long>>(&buf, *a2, a2 + 1);
    v4 = buf;
  }

  v5 = &unk_2A1E4C440;
  v29[0] = &unk_2A1E4C440;
  v29[1] = &v28;
  v30 = v29;
  v6 = v29;
  if (v4 == &buf + 8)
  {
    goto LABEL_19;
  }

  while ((*(*v6 + 48))(v6, v4 + 28, v4 + 32))
  {
    v7 = *(v4 + 1);
    v8 = v4;
    if (v7)
    {
      do
      {
        v4 = v7;
        v7 = *v7;
      }

      while (v7);
    }

    else
    {
      do
      {
        v4 = *(v8 + 2);
        v9 = *v4 == v8;
        v8 = v4;
      }

      while (!v9);
    }

    if (v4 == &buf + 8)
    {
      break;
    }

    v6 = v30;
    if (!v30)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }
  }

  if (v30 == v29)
  {
    v5 = *v30;
LABEL_19:
    v5[4]();
    goto LABEL_20;
  }

  if (v30)
  {
    (*(*v30 + 40))();
  }

LABEL_20:
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(&buf, *(&buf + 1));
  v10 = v28;
  if (*(a1 + 180) == v28)
  {
    goto LABEL_49;
  }

  *(a1 + 180) = v28;
  v11 = *(a1 + 104);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = "disabled";
    if (v10)
    {
      v12 = "enabled";
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = v12;
    _os_log_impl(&dword_297476000, v11, OS_LOG_TYPE_DEFAULT, "#I Brick mode is %s", &buf, 0xCu);
  }

  *&buf = 0;
  v13 = *MEMORY[0x29EDB8ED8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (Mutable)
  {
    *&buf = Mutable;
  }

  ctu::cf::insert<char const*,BOOL>(Mutable, *MEMORY[0x29EDBEA98], *(a1 + 180), v13, v15);
  v16 = *MEMORY[0x29EDBE748];
  v17 = strlen(*MEMORY[0x29EDBE748]);
  if (v17 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v18 = v17;
  if (v17 >= 0x17)
  {
    if ((v17 | 7) == 0x17)
    {
      v21 = 25;
    }

    else
    {
      v21 = (v17 | 7) + 1;
    }

    v19 = operator new(v21);
    __dst[1] = v18;
    v27 = v21 | 0x8000000000000000;
    __dst[0] = v19;
  }

  else
  {
    HIBYTE(v27) = v17;
    v19 = __dst;
    if (!v17)
    {
      LOBYTE(__dst[0]) = 0;
      v20 = buf;
      if (!buf)
      {
        goto LABEL_39;
      }

      goto LABEL_37;
    }
  }

  memmove(v19, v16, v18);
  *(v18 + v19) = 0;
  v20 = buf;
  if (!buf)
  {
LABEL_39:
    cf = 0;
    goto LABEL_40;
  }

LABEL_37:
  v22 = CFGetTypeID(v20);
  if (v22 != CFDictionaryGetTypeID())
  {
    goto LABEL_39;
  }

  cf = v20;
  CFRetain(v20);
LABEL_40:
  aBlock = 0;
  Service::broadcastEvent(a1, __dst, &cf, &aBlock);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if ((SHIBYTE(v27) & 0x80000000) == 0)
  {
    if (!v20)
    {
      goto LABEL_49;
    }

    goto LABEL_48;
  }

  operator delete(__dst[0]);
  if (v20)
  {
LABEL_48:
    CFRelease(v20);
  }

LABEL_49:
  v23 = *MEMORY[0x29EDCA608];
}

void sub_2975FF48C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *aBlock, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void CPMSModule::reportThermalDataToSMC_sync(uint64_t a1, float **a2)
{
  v26 = *MEMORY[0x29EDCA608];
  if ((atomic_load_explicit(&qword_2A18CB2C8, memory_order_acquire) & 1) == 0)
  {
    v21 = __cxa_guard_acquire(&qword_2A18CB2C8);
    if (v21)
    {
      dword_2A18CB2C4 = capabilities::abs::thermalSensorMaxCount(v21);
      __cxa_guard_release(&qword_2A18CB2C8);
    }
  }

  v23 = 0;
  memset(v22, 0, sizeof(v22));
  v4 = dword_2A18CB2C4;
  if (dword_2A18CB2C4 == 2)
  {
    v5 = 2;
  }

  else
  {
    if (dword_2A18CB2C4 != 3)
    {
      v14 = *(a1 + 104);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        *v25 = v4;
        _os_log_error_impl(&dword_297476000, v14, OS_LOG_TYPE_ERROR, "Failed to find the SMC Exchange BB version with the number of sensor capability %u", buf, 8u);
      }

      goto LABEL_28;
    }

    v5 = 1;
  }

  v6 = _MergedGlobals_11++;
  v7 = *(a1 + 104);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    *v25 = v5;
    _os_log_debug_impl(&dword_297476000, v7, OS_LOG_TYPE_DEBUG, "#D Thermal Report to SMC: Version: %u", buf, 8u);
    v7 = *(a1 + 104);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
LABEL_8:
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_9;
      }

      goto LABEL_23;
    }
  }

  else if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    goto LABEL_8;
  }

  *buf = 67109120;
  *v25 = v4;
  _os_log_debug_impl(&dword_297476000, v7, OS_LOG_TYPE_DEBUG, "#D Thermal Report to SMC: Number of Sensors: %u", buf, 8u);
  v7 = *(a1 + 104);
  if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
LABEL_9:
    v8 = *a2;
    v9 = a2[1];
    if (*a2 != v9)
    {
      goto LABEL_10;
    }

LABEL_24:
    v16 = *(a1 + 376);
    v17 = TelephonyBasebandReportThermalData();
    v18 = *(a1 + 104);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = "Failed";
      if (v17)
      {
        v19 = "Succeeded";
      }

      *buf = 136315394;
      *v25 = v19;
      *&v25[8] = 1024;
      *&v25[10] = 255;
      _os_log_impl(&dword_297476000, v18, OS_LOG_TYPE_DEFAULT, "#I %s to report the thermal data to SMC, result: %u", buf, 0x12u);
    }

    goto LABEL_28;
  }

LABEL_23:
  *buf = 67109120;
  *v25 = v6;
  _os_log_debug_impl(&dword_297476000, v7, OS_LOG_TYPE_DEBUG, "#D Thermal Report to SMC: Sequence Number: %u", buf, 8u);
  v8 = *a2;
  v9 = a2[1];
  if (*a2 == v9)
  {
    goto LABEL_24;
  }

LABEL_10:
  v10 = dword_2A18CB2C4;
  while (1)
  {
    v11 = *v8;
    if (v10 <= v11)
    {
      break;
    }

    v12 = v8[1];
    *(v22 + *v8) = v12;
    v13 = *(a1 + 104);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109376;
      *v25 = v11;
      *&v25[4] = 2048;
      *&v25[6] = v12;
      _os_log_debug_impl(&dword_297476000, v13, OS_LOG_TYPE_DEBUG, "#D Thermal Report to SMC: Sensor ID: %d, Sensor Data: %f", buf, 0x12u);
      v10 = dword_2A18CB2C4;
      v8 += 2;
      if (v8 == v9)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v8 += 2;
      if (v8 == v9)
      {
        goto LABEL_24;
      }
    }
  }

  v15 = *(a1 + 104);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109376;
    *v25 = v11;
    *&v25[4] = 1024;
    *&v25[6] = v10;
    _os_log_error_impl(&dword_297476000, v15, OS_LOG_TYPE_ERROR, "Sensor ID (%d) cannot exceed the max number of sensors (%u) in the device", buf, 0xEu);
  }

LABEL_28:
  v20 = *MEMORY[0x29EDCA608];
}

void CPMSModule::configureThermalReportFrequency_sync(void *a1, uint64_t a2, void **a3)
{
  v34 = *MEMORY[0x29EDCA608];
  v4 = a1[10];
  if (!v4 || (v7 = a1[9], (v8 = std::__shared_weak_count::lock(v4)) == 0))
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

  v10 = capabilities::abs::supportsSMCThermalReport(v8);
  v11 = a1[13];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = "Thermal Monitor";
    if (v10)
    {
      v12 = "SMC";
    }

    *buf = 136315138;
    v33 = v12;
    _os_log_impl(&dword_297476000, v11, OS_LOG_TYPE_DEFAULT, "#I Thermal Report to %s", buf, 0xCu);
  }

  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 3321888768;
  aBlock[2] = ___ZN10CPMSModule36configureThermalReportFrequency_syncEjN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE_block_invoke;
  aBlock[3] = &__block_descriptor_57_e8_40c35_ZTSNSt3__18weak_ptrI10CPMSModuleEE_e140_v32__0_vector_abm::ThermalSensorData__std::allocator_abm::ThermalSensorData_____ThermalSensorData___ThermalSensorData___ThermalSensorData__8l;
  aBlock[4] = a1;
  aBlock[5] = v7;
  v30 = v9;
  atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v31 = v10;
  v13 = _Block_copy(aBlock);
  v14 = v13;
  v15 = a1[17];
  if (v10)
  {
    v16 = 2;
  }

  else
  {
    v16 = 1;
  }

  if (v13)
  {
    v17 = _Block_copy(v13);
  }

  else
  {
    v17 = 0;
  }

  v28 = v17;
  v22[0] = MEMORY[0x29EDCA5F8];
  v22[1] = 3321888768;
  v22[2] = ___ZN10CPMSModule36configureThermalReportFrequency_syncEjN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE_block_invoke_61;
  v22[3] = &__block_descriptor_68_e8_40c35_ZTSNSt3__18weak_ptrI10CPMSModuleEE56c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE_e44_v16__0_CFSharedRef___CFError______CFError__8l;
  v22[4] = a1;
  v22[5] = v7;
  v23 = v9;
  atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v25 = a2;
  v18 = *a3;
  if (*a3)
  {
    v18 = _Block_copy(v18);
  }

  v24 = v18;
  v19 = _Block_copy(v22);
  v20 = a1[11];
  if (v20)
  {
    dispatch_retain(v20);
  }

  v26 = v19;
  object = v20;
  (*(*v15 + 64))(v15, v16, a2, &v28, &v26);
  if (object)
  {
    dispatch_release(object);
  }

  if (v26)
  {
    _Block_release(v26);
  }

  if (v28)
  {
    _Block_release(v28);
  }

  if (v24)
  {
    _Block_release(v24);
  }

  if (v23)
  {
    std::__shared_weak_count::__release_weak(v23);
  }

  if (v14)
  {
    _Block_release(v14);
  }

  if (v30)
  {
    std::__shared_weak_count::__release_weak(v30);
  }

  std::__shared_weak_count::__release_weak(v9);
  v21 = *MEMORY[0x29EDCA608];
}

void sub_2975FFC5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, void *aBlock, uint64_t a17, char a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, std::__shared_weak_count *a27)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN10CPMSModule36configureThermalReportFrequency_syncEjN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE_block_invoke(uint64_t a1, float **a2)
{
  v49 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 48);
  if (v3)
  {
    v5 = *(a1 + 32);
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = *(a1 + 40);
      if (atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        if (!v7)
        {
          goto LABEL_65;
        }
      }

      else
      {
        v8 = v6;
        (v6->__on_zero_shared)();
        std::__shared_weak_count::__release_weak(v8);
        if (!v7)
        {
          goto LABEL_65;
        }
      }

      v9 = *a2;
      v10 = a2[1];
      if (*a2 != v10)
      {
        if (*(a1 + 56))
        {
          v11 = *(v5 + 104);
          if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
          {
            if (v9 != v10)
            {
              goto LABEL_14;
            }

            goto LABEL_64;
          }

          *buf = 0;
          _os_log_debug_impl(&dword_297476000, v11, OS_LOG_TYPE_DEBUG, "#D Reporting thermal data to SMC:", buf, 2u);
          v9 = *a2;
          v10 = a2[1];
          if (*a2 == v10)
          {
LABEL_64:
            CPMSModule::reportThermalDataToSMC_sync(v5, a2);
            goto LABEL_65;
          }

          while (1)
          {
LABEL_14:
            v12 = *(v5 + 104);
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
            {
              v19 = *v9;
              *buf = 67109120;
              *&buf[4] = v19;
              _os_log_debug_impl(&dword_297476000, v12, OS_LOG_TYPE_DEBUG, "#D Sensor ID: %d", buf, 8u);
              v12 = *(v5 + 104);
              v20 = *(a1 + 56);
              v14 = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);
              if (v20)
              {
LABEL_16:
                if (v14)
                {
                  v15 = v9[1];
                  *buf = 134217984;
                  *&buf[4] = v15;
                  v16 = v12;
                  v17 = "#D Sensor Data (float): %f";
                  v18 = 12;
LABEL_21:
                  _os_log_debug_impl(&dword_297476000, v16, OS_LOG_TYPE_DEBUG, v17, buf, v18);
                  goto LABEL_13;
                }

                goto LABEL_13;
              }
            }

            else
            {
              v13 = *(a1 + 56);
              v14 = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);
              if (v13)
              {
                goto LABEL_16;
              }
            }

            if (v14)
            {
              v21 = *(v9 + 1);
              *buf = 67109120;
              *&buf[4] = v21;
              v16 = v12;
              v17 = "#D Sensor Data (int32): %d";
              v18 = 8;
              goto LABEL_21;
            }

LABEL_13:
            v9 += 2;
            if (v9 == v10)
            {
              goto LABEL_64;
            }
          }
        }

        xdict = 0xAAAAAAAAAAAAAAAALL;
        v23 = xpc_dictionary_create(0, 0, 0);
        v24 = v23;
        v25 = MEMORY[0x29EDCAA00];
        if (v23)
        {
          xdict = v23;
        }

        else
        {
          v24 = xpc_null_create();
          xdict = v24;
          if (!v24)
          {
            v26 = xpc_null_create();
            v24 = 0;
            goto LABEL_31;
          }
        }

        if (MEMORY[0x29C272BA0](v24) == v25)
        {
          xpc_retain(v24);
          goto LABEL_32;
        }

        v26 = xpc_null_create();
LABEL_31:
        xdict = v26;
LABEL_32:
        xpc_release(v24);
        if (MEMORY[0x29C272BA0](xdict) != v25)
        {
          v27 = *(v5 + 104);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_297476000, v27, OS_LOG_TYPE_ERROR, "Failed to create xpc dictionary!", buf, 2u);
          }

LABEL_62:
          xpc_release(xdict);
          goto LABEL_65;
        }

        v28 = xpc_data_create(*a2, a2[1] - *a2);
        if (!v28)
        {
          v28 = xpc_null_create();
        }

        xpc_dictionary_set_value(xdict, *MEMORY[0x29EDBE668], v28);
        v29 = xpc_null_create();
        xpc_release(v28);
        xpc_release(v29);
        v30 = *(v5 + 104);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
        {
          xpc::dict::to_debug_string(&xdict, buf);
          v40 = v47 >= 0 ? buf : *buf;
          *object = 136315138;
          *&object[4] = v40;
          _os_log_debug_impl(&dword_297476000, v30, OS_LOG_TYPE_DEBUG, "#D Reporting thermal data to Thermal Monitor: %s", object, 0xCu);
          if (v47 < 0)
          {
            operator delete(*buf);
          }
        }

        v31 = *MEMORY[0x29EDBE8C8];
        v32 = strlen(*MEMORY[0x29EDBE8C8]);
        if (v32 >= 0x7FFFFFFFFFFFFFF8)
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
          __dst[1] = v33;
          v44 = v35 | 0x8000000000000000;
          __dst[0] = v34;
        }

        else
        {
          HIBYTE(v44) = v32;
          v34 = __dst;
          if (!v32)
          {
            goto LABEL_47;
          }
        }

        memmove(v34, v31, v33);
LABEL_47:
        *(v33 + v34) = 0;
        *object = xdict;
        if (xdict)
        {
          xpc_retain(xdict);
        }

        else
        {
          *object = xpc_null_create();
        }

        xpc::bridge(buf, object, v36);
        v37 = *buf;
        if (*buf && (v38 = CFGetTypeID(*buf), v38 == CFDictionaryGetTypeID()))
        {
          cf = v37;
          CFRetain(v37);
        }

        else
        {
          cf = 0;
        }

        aBlock = 0;
        Service::broadcastEvent(v5, __dst, &cf, &aBlock);
        if (aBlock)
        {
          _Block_release(aBlock);
        }

        if (cf)
        {
          CFRelease(cf);
        }

        if (*buf)
        {
          CFRelease(*buf);
        }

        xpc_release(*object);
        if (SHIBYTE(v44) < 0)
        {
          operator delete(__dst[0]);
        }

        goto LABEL_62;
      }

      v22 = *(v5 + 104);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_297476000, v22, OS_LOG_TYPE_DEFAULT, "#I Thermal Data is empty!", buf, 2u);
      }
    }
  }

LABEL_65:
  v39 = *MEMORY[0x29EDCA608];
}

void sub_297600268(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *aBlock, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, xpc_object_t object, char a22, uint64_t a23, uint64_t a24, uint64_t a25, xpc_object_t a26)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void ___ZN10CPMSModule36configureThermalReportFrequency_syncEjN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE_block_invoke_61(uint64_t a1, void *a2)
{
  object[1] = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 48);
  if (v3)
  {
    v5 = *(a1 + 32);
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = *(a1 + 40);
      if (atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        if (!v7)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v8 = v6;
        (v6->__on_zero_shared)();
        std::__shared_weak_count::__release_weak(v8);
        if (!v7)
        {
          goto LABEL_14;
        }
      }

      if (!*a2 && (v9 = *(v5 + 104), os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG)))
      {
        v16 = *(a1 + 64);
        LODWORD(object[0]) = 67109120;
        HIDWORD(object[0]) = v16;
        _os_log_debug_impl(&dword_297476000, v9, OS_LOG_TYPE_DEBUG, "#D Thermal Report Interval (%u ms) is set.", object, 8u);
        if (!*(a1 + 56))
        {
          goto LABEL_14;
        }
      }

      else if (!*(a1 + 56))
      {
        goto LABEL_14;
      }

      if (*a2)
      {
        v10 = xpc_null_create();
        v11 = *(a1 + 56);
        object[0] = v10;
        v12 = xpc_null_create();
        (*(v11 + 16))(v11, 3760250880, object);
      }

      else
      {
        v13 = xpc_null_create();
        v14 = *(a1 + 56);
        object[0] = v13;
        v12 = xpc_null_create();
        (*(v14 + 16))(v14, 0, object);
      }

      xpc_release(object[0]);
      xpc_release(v12);
    }
  }

LABEL_14:
  v15 = *MEMORY[0x29EDCA608];
}

void sub_2976004EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void *__copy_helper_block_e8_40c35_ZTSNSt3__18weak_ptrI10CPMSModuleEE56c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE(void *a1, void *a2)
{
  v3 = a2[6];
  a1[5] = a2[5];
  a1[6] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  result = a2[7];
  if (result)
  {
    result = _Block_copy(result);
  }

  a1[7] = result;
  return result;
}

void __destroy_helper_block_e8_40c35_ZTSNSt3__18weak_ptrI10CPMSModuleEE56c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void *___ZN10CPMSModule15getCurrentPowerEN8dispatch13group_sessionENS0_5blockIU13block_pointerFviN3xpc4dictEEEE_block_invoke(void *result)
{
  v1 = result[6];
  *(*(result[4] + 8) + 24) = *(v1 + 178);
  *(*(result[5] + 8) + 24) = *(v1 + 177);
  return result;
}

void ___ZN10CPMSModule15getCurrentPowerEN8dispatch13group_sessionENS0_5blockIU13block_pointerFviN3xpc4dictEEEE_block_invoke_2(void *a1, uint64_t a2)
{
  v28 = *MEMORY[0x29EDCA608];
  v3 = a1[7];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = a1[6];
      if (atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        if (!v7)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v8 = v6;
        (v6->__on_zero_shared)();
        std::__shared_weak_count::__release_weak(v8);
        if (!v7)
        {
          goto LABEL_19;
        }
      }

      v9 = (v5 + 344);

      *(v5 + 368) = 0;
      if (v5 + 344 != a2)
      {
        std::__tree<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__map_value_compare<abm::BasebandCPMSPowerBudgetScale,std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::less<abm::BasebandCPMSPowerBudgetScale>,true>,std::allocator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__tree_node<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,void *> *,long>>((v5 + 344), *a2, (a2 + 8));
      }

      v10 = *(v5 + 104);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        PowerBudget::to_string((v5 + 344), __p);
        v19 = v24;
        v20 = __p[0];
        NSDict = PowerBudget::getNSDict(v9);
        v22 = __p;
        if (v19 < 0)
        {
          v22 = v20;
        }

        *object = 136315394;
        *&object[4] = v22;
        v26 = 2112;
        v27 = NSDict;
        _os_log_debug_impl(&dword_297476000, v10, OS_LOG_TYPE_DEBUG, "#D Current power estimation in baseband side: %s, and reporting back to CPMS: %@", object, 0x16u);
        if (v24 < 0)
        {
          operator delete(__p[0]);
        }
      }

      v12 = a1[8];
      v11 = a1 + 8;
      if (v12)
      {
        v13 = PowerBudget::getNSDict(v9);
        ctu::cf_to_xpc(object, v13, v14);
        v15 = *object;
        __p[0] = *object;
        v16 = MEMORY[0x29EDCAA00];
        if (*object && MEMORY[0x29C272BA0](*object) == v16)
        {
          xpc_retain(v15);
        }

        else
        {
          v15 = xpc_null_create();
          __p[0] = v15;
        }

        xpc_release(*object);
        if (MEMORY[0x29C272BA0](v15) == v16)
        {
          v17 = 0;
        }

        else
        {
          v17 = -534716416;
        }

        *object = v17;
        dispatch::block<void({block_pointer})(int,xpc::dict)>::operator()<int,xpc::dict&>(v11, object, __p);
        xpc_release(__p[0]);
      }
    }
  }

LABEL_19:
  v18 = *MEMORY[0x29EDCA608];
}

void sub_297600844(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *__copy_helper_block_e8_40c30_ZTSN8dispatch13group_sessionE48c35_ZTSNSt3__18weak_ptrI10CPMSModuleEE64c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE(void *a1, void *a2)
{
  v4 = a2[5];
  a1[5] = v4;
  if (v4)
  {
    dispatch_retain(v4);
    v5 = a1[5];
    if (v5)
    {
      dispatch_group_enter(v5);
    }
  }

  v6 = a2[7];
  a1[6] = a2[6];
  a1[7] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
  }

  result = a2[8];
  if (result)
  {
    result = _Block_copy(result);
  }

  a1[8] = result;
  return result;
}

void __destroy_helper_block_e8_40c30_ZTSN8dispatch13group_sessionE48c35_ZTSNSt3__18weak_ptrI10CPMSModuleEE64c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE(void *a1)
{
  v2 = a1[8];
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = a1[7];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = a1[5];
  if (v4)
  {
    dispatch_group_leave(v4);
    v5 = a1[5];
    if (v5)
    {

      dispatch_release(v5);
    }
  }
}

void ___ZN10CPMSModule15getCurrentPowerEN8dispatch13group_sessionENS0_5blockIU13block_pointerFviN3xpc4dictEEEE_block_invoke_64(void *a1)
{
  v15 = *MEMORY[0x29EDCA608];
  v2 = a1[6];
  std::__tree<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__map_value_compare<abm::BasebandCPMSPowerBudgetScale,std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::less<abm::BasebandCPMSPowerBudgetScale>,true>,std::allocator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__tree_node<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,void *> *,long>>((v2 + 344), *(v2 + 280), (v2 + 288));

  *(v2 + 368) = [*(v2 + 304) copy];
  v3 = *(v2 + 104);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v5 = a1[5];
    if (*(*(a1[4] + 8) + 24))
    {
      v6 = "true";
    }

    else
    {
      v6 = "false";
    }

    if (*(*(v5 + 8) + 24))
    {
      v7 = "true";
    }

    else
    {
      v7 = "false";
    }

    v9 = 136315650;
    v10 = v6;
    v11 = 2080;
    v12 = v7;
    v13 = 2112;
    NSDict = PowerBudget::getNSDict((v2 + 344));
    _os_log_debug_impl(&dword_297476000, v3, OS_LOG_TYPE_DEBUG, "#D Because baseband is not in traffic(%s) or online(%s), reporting idle power estimation back to CPMS: %@", &v9, 0x20u);
    v8 = *MEMORY[0x29EDCA608];
  }

  else
  {
    v4 = *MEMORY[0x29EDCA608];
  }
}

void std::__shared_ptr_pointer<CPMSModule *,std::shared_ptr<CPMSModule> ctu::SharedSynchronizable<CPMSModule>::make_shared_ptr<CPMSModule>(CPMSModule*)::{lambda(CPMSModule *)#1},std::allocator<CPMSModule>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<CPMSModule *,std::shared_ptr<CPMSModule> ctu::SharedSynchronizable<CPMSModule>::make_shared_ptr<CPMSModule>(CPMSModule*)::{lambda(CPMSModule *)#1},std::allocator<CPMSModule>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableI10CPMSModuleE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableI10CPMSModuleE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableI10CPMSModuleE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableI10CPMSModuleE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::shared_ptr<CPMSModule> ctu::SharedSynchronizable<CPMSModule>::make_shared_ptr<CPMSModule>(CPMSModule*)::{lambda(CPMSModule*)#1}::operator() const(CPMSModule*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void dispatch::async<void ctu::SharedSynchronizable<CPMSModule>::execute_wrapped<CPMSModule::shutdown(dispatch::group_session)::$_0>(CPMSModule::shutdown(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<CPMSModule::shutdown(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<CPMSModule::shutdown(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke(config::hw *a1)
{
  v2 = *a1;
  v3 = **a1;
  if ((config::hw::watch(a1) & 1) == 0)
  {
    v4 = *(v3 + 136);
    if (v4)
    {
      (*(*v4 + 48))(v4, 0, 5);
    }
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
  v7 = *(a1 + 2);
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  operator delete(a1);
}

void sub_297600C74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  std::unique_ptr<TransportModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,std::default_delete<TransportModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a9);
  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<CPMSModule>::execute_wrapped<CPMSModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(CPMSModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<CPMSModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<CPMSModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v2 = *a1;
  CPMSModule::registerCommandHandlers_sync(**a1);
  v3 = v2[1];
  if (v3)
  {
    dispatch_group_leave(v3);
    v4 = v2[1];
    if (v4)
    {
      dispatch_release(v4);
    }
  }

  operator delete(v2);
  v5 = *(a1 + 16);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    v6 = a1;
  }

  else
  {
    v6 = a1;
  }

  operator delete(v6);
}

void sub_297600D6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  std::unique_ptr<TransportModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,std::default_delete<TransportModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a9);
  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<CPMSModule>::execute_wrapped<CPMSModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1>(CPMSModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<CPMSModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1,dispatch_queue_s *::default_delete<CPMSModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1>>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v2 = *a1;
  CPMSModule::registerEventHandlers_sync(**a1);
  v3 = v2[1];
  if (v3)
  {
    dispatch_group_leave(v3);
    v4 = v2[1];
    if (v4)
    {
      dispatch_release(v4);
    }
  }

  operator delete(v2);
  v5 = *(a1 + 16);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    v6 = a1;
  }

  else
  {
    v6 = a1;
  }

  operator delete(v6);
}

void sub_297600E64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  std::unique_ptr<TransportModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,std::default_delete<TransportModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a9);
  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<CPMSModule>::execute_wrapped<CPMSModule::bootstrap(BootstrapStage,dispatch::group_session)::$_2>(CPMSModule::bootstrap(BootstrapStage,dispatch::group_session)::$_2 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<CPMSModule::bootstrap(BootstrapStage,dispatch::group_session)::$_2,dispatch_queue_s *::default_delete<CPMSModule::bootstrap(BootstrapStage,dispatch::group_session)::$_2>>)::{lambda(void *)#1}::__invoke(ctu::DispatchTimerService *a1)
{
  v19 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  v2 = **a1;
  ctu::DispatchTimerService::create(buf, a1);
  v3 = *buf;
  *buf = 0;
  *&buf[8] = 0;
  v4 = *(v2 + 160);
  *(v2 + 152) = v3;
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = *&buf[8];
  if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  v6 = [MEMORY[0x29EDC0A90] sharedCPMSAgent];
  *(v2 + 112) = v6;
  if (!v6)
  {
    v12 = GetOsLogContext()[1];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315906;
      *&buf[4] = "ABM ASSERT";
      *&buf[12] = 2080;
      *&buf[14] = "fCPMSAgent";
      v15 = 2080;
      v16 = "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices_Manager/AppleBasebandManager/BasebandManager/Server/CPMS/CPMSModule.mm";
      v17 = 1024;
      v18 = 123;
      _os_log_fault_impl(&dword_297476000, v12, OS_LOG_TYPE_FAULT, "%s (%s): File: %s Line: %d", buf, 0x26u);
    }

    __break(1u);
  }

  if (CPMSModule::initPowerConfig_sync(v2))
  {
    CPMSModule::evaluatePowerBudgetNeed_sync(v2);
    goto LABEL_11;
  }

  v7 = *(v2 + 104);
  if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
LABEL_11:
    operator delete(v1);
    v8 = a1;
    if (!a1)
    {
      goto LABEL_16;
    }

    goto LABEL_12;
  }

  *buf = 0;
  _os_log_error_impl(&dword_297476000, v7, OS_LOG_TYPE_ERROR, "Failed to initialization of CPMS power config.", buf, 2u);
  operator delete(v1);
  v8 = a1;
  if (!a1)
  {
    goto LABEL_16;
  }

LABEL_12:
  v9 = *(v8 + 2);
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v10 = v8;
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
    v8 = v10;
  }

  operator delete(v8);
LABEL_16:
  v11 = *MEMORY[0x29EDCA608];
}

void sub_2976010FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  operator delete(v10);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a10);
  _Unwind_Resume(a1);
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI10CPMSModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb_E3__4EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_(void *a1)
{
  v2 = *a1;
  v4 = *(*a1 + 16);
  v3 = *(*a1 + 24);
  if (v3)
  {
    v5 = v4[17];
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 3321888768;
    aBlock[2] = ___ZZZN10CPMSModule28registerCommandHandlers_syncEvEUb_ENK3__4clEv_block_invoke;
    aBlock[3] = &__block_descriptor_64_e8_40c35_ZTSNSt3__18weak_ptrI10CPMSModuleEE56c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE_e86_v32__0_vector_abm::BasebandThermalID__std::allocator_abm::BasebandThermalID____C_C_C_8l;
    aBlock[4] = v4;
    aBlock[5] = *v2;
    v6 = v2[1];
    v14 = v6;
    if (!v6 || (atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed), (v3 = v2[3]) != 0))
    {
      v3 = _Block_copy(v3);
    }

    v15 = v3;
    v7 = _Block_copy(aBlock);
    v8 = v4[11];
    if (v8)
    {
      dispatch_retain(v8);
    }

    v16 = v7;
    v17 = v8;
    (*(*v5 + 56))(v5, &v16);
    if (v17)
    {
      dispatch_release(v17);
    }

    if (v16)
    {
      _Block_release(v16);
    }

    if (v15)
    {
      _Block_release(v15);
    }

    if (v14)
    {
      std::__shared_weak_count::__release_weak(v14);
      v9 = v2[3];
      if (!v9)
      {
        goto LABEL_19;
      }

LABEL_18:
      _Block_release(v9);
      goto LABEL_19;
    }

LABEL_17:
    v9 = v2[3];
    if (!v9)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v10 = v4[13];
  if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_17;
  }

  LOWORD(aBlock[0]) = 0;
  _os_log_error_impl(&dword_297476000, v10, OS_LOG_TYPE_ERROR, "Expected response handler", aBlock, 2u);
  v9 = v2[3];
  if (v9)
  {
    goto LABEL_18;
  }

LABEL_19:
  v11 = v2[1];
  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }

  operator delete(v2);
  v12 = a1[2];
  if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  operator delete(a1);
}

void sub_29760133C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *aBlock)
{
  dispatch::callback<void({block_pointer})(std::vector<abm::BasebandThermalID>)>::~callback(v18 - 64);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_weak(a17);
  }

  _ZNSt3__110unique_ptrIZZN10CPMSModule28registerCommandHandlers_syncEvEUb_E3__4NS_14default_deleteIS2_EEED1B8ne200100Ev(&a10);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a9);
  _Unwind_Resume(a1);
}

void **_ZNSt3__110unique_ptrIZZN10CPMSModule28registerCommandHandlers_syncEvEUb_E3__4NS_14default_deleteIS2_EEED1B8ne200100Ev(void **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = v2[3];
    if (v3)
    {
      _Block_release(v3);
    }

    v4 = v2[1];
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
    }

    operator delete(v2);
  }

  return a1;
}

void ___ZZZN10CPMSModule28registerCommandHandlers_syncEvEUb_ENK3__4clEv_block_invoke(void *a1, uint64_t a2)
{
  v3 = a1[6];
  if (!v3)
  {
    return;
  }

  v5 = a1[4];
  v6 = std::__shared_weak_count::lock(v3);
  if (!v6)
  {
    return;
  }

  v7 = a1[5];
  if (atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (!v7)
    {
      return;
    }
  }

  else
  {
    v8 = v6;
    (v6->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v8);
    if (!v7)
    {
      return;
    }
  }

  v9 = xpc_dictionary_create(0, 0, 0);
  v10 = v9;
  v11 = MEMORY[0x29EDCAA00];
  if (v9)
  {
    v24 = v9;
  }

  else
  {
    v10 = xpc_null_create();
    v24 = v10;
    if (!v10)
    {
      v12 = xpc_null_create();
      v10 = 0;
      goto LABEL_14;
    }
  }

  if (MEMORY[0x29C272BA0](v10) != v11)
  {
    v12 = xpc_null_create();
LABEL_14:
    v24 = v12;
    goto LABEL_15;
  }

  xpc_retain(v10);
LABEL_15:
  xpc_release(v10);
  v13 = v24;
  if (MEMORY[0x29C272BA0](v24) == v11)
  {
    v17 = *(a2 + 8);
    if (*a2 == v17)
    {
      v20 = *(v5 + 104);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(object[0]) = 0;
        _os_log_impl(&dword_297476000, v20, OS_LOG_TYPE_DEFAULT, "#I Thermal IDs are empty!", object, 2u);
      }

      v21 = xpc_null_create();
      v22 = a1[7];
      object[0] = v21;
      v23 = xpc_null_create();
      (*(v22 + 16))(v22, 3760250880, object);
      xpc_release(object[0]);
      xpc_release(v23);
    }

    else
    {
      v18 = xpc_data_create(*a2, v17 - *a2);
      if (!v18)
      {
        v18 = xpc_null_create();
      }

      xpc_dictionary_set_value(v24, *MEMORY[0x29EDBE5D8], v18);
      v19 = xpc_null_create();
      xpc_release(v18);
      xpc_release(v19);
      LODWORD(object[0]) = 0;
      dispatch::block<void({block_pointer})(int,xpc::dict)>::operator()<int,xpc::dict&>(a1 + 7, object, &v24);
      v13 = v24;
    }
  }

  else
  {
    v14 = xpc_null_create();
    v15 = a1[7];
    object[0] = v14;
    v16 = xpc_null_create();
    (*(v15 + 16))(v15, 3760250880, object);
    xpc_release(object[0]);
    xpc_release(v16);
  }

  xpc_release(v13);
}

void sub_29760163C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(v12);
  xpc_release(v11);
  _Unwind_Resume(a1);
}

uint64_t dispatch::callback<void({block_pointer})(std::vector<abm::BasebandThermalID>)>::~callback(uint64_t a1)
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

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI10CPMSModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb0_E3__5EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_(void *a1)
{
  v2 = *a1;
  v3 = *(*a1 + 16);
  v4 = *(*a1 + 24);
  v5 = *(*a1 + 32);
  if (v5)
  {
    v6 = _Block_copy(v5);
  }

  else
  {
    v6 = 0;
  }

  v10 = v6;
  CPMSModule::configureThermalReportFrequency_sync(v3, v4, &v10);
  if (v6)
  {
    _Block_release(v6);
  }

  v7 = v2[4];
  if (v7)
  {
    _Block_release(v7);
  }

  v8 = v2[1];
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  operator delete(v2);
  v9 = a1[2];
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  operator delete(a1);
}

void sub_29760182C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11)
{
  if (v11)
  {
    _Block_release(v11);
  }

  _ZNSt3__110unique_ptrIZZN10CPMSModule28registerCommandHandlers_syncEvEUb0_E3__5NS_14default_deleteIS2_EEED1B8ne200100Ev(&a11);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a10);
  _Unwind_Resume(a1);
}

void **_ZNSt3__110unique_ptrIZZN10CPMSModule28registerCommandHandlers_syncEvEUb0_E3__5NS_14default_deleteIS2_EEED1B8ne200100Ev(void **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = v2[4];
    if (v3)
    {
      _Block_release(v3);
    }

    v4 = v2[1];
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
    }

    operator delete(v2);
  }

  return a1;
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI10CPMSModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb1_E3__6EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_(void *a1)
{
  v2 = *a1;
  v4 = *(*a1 + 16);
  v3 = *(*a1 + 24);
  if (v3)
  {
    v5 = v4[17];
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 3321888768;
    aBlock[2] = ___ZZZN10CPMSModule28registerCommandHandlers_syncEvEUb1_ENK3__6clEv_block_invoke;
    aBlock[3] = &__block_descriptor_64_e8_40c35_ZTSNSt3__18weak_ptrI10CPMSModuleEE56c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE_e150_v32__0_vector_abm::PowerMitigationData__std::allocator_abm::PowerMitigationData_____PowerMitigationData___PowerMitigationData___PowerMitigationData__8l;
    aBlock[4] = v4;
    aBlock[5] = *v2;
    v6 = v2[1];
    v14 = v6;
    if (!v6 || (atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed), (v3 = v2[3]) != 0))
    {
      v3 = _Block_copy(v3);
    }

    v15 = v3;
    v7 = _Block_copy(aBlock);
    v8 = v4[11];
    if (v8)
    {
      dispatch_retain(v8);
    }

    v16 = v7;
    v17 = v8;
    (*(*v5 + 72))(v5, &v16);
    if (v17)
    {
      dispatch_release(v17);
    }

    if (v16)
    {
      _Block_release(v16);
    }

    if (v15)
    {
      _Block_release(v15);
    }

    if (v14)
    {
      std::__shared_weak_count::__release_weak(v14);
      v9 = v2[3];
      if (!v9)
      {
        goto LABEL_19;
      }

LABEL_18:
      _Block_release(v9);
      goto LABEL_19;
    }

LABEL_17:
    v9 = v2[3];
    if (!v9)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  v10 = v4[13];
  if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_17;
  }

  LOWORD(aBlock[0]) = 0;
  _os_log_error_impl(&dword_297476000, v10, OS_LOG_TYPE_ERROR, "Expected response handler", aBlock, 2u);
  v9 = v2[3];
  if (v9)
  {
    goto LABEL_18;
  }

LABEL_19:
  v11 = v2[1];
  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }

  operator delete(v2);
  v12 = a1[2];
  if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  operator delete(a1);
}

void sub_297601AD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *aBlock)
{
  dispatch::callback<void({block_pointer})(std::vector<abm::PowerMitigationData>)>::~callback(v18 - 64);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_weak(a17);
  }

  _ZNSt3__110unique_ptrIZZN10CPMSModule28registerCommandHandlers_syncEvEUb1_E3__6NS_14default_deleteIS2_EEED1B8ne200100Ev(&a10);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a9);
  _Unwind_Resume(a1);
}

void **_ZNSt3__110unique_ptrIZZN10CPMSModule28registerCommandHandlers_syncEvEUb1_E3__6NS_14default_deleteIS2_EEED1B8ne200100Ev(void **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = v2[3];
    if (v3)
    {
      _Block_release(v3);
    }

    v4 = v2[1];
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
    }

    operator delete(v2);
  }

  return a1;
}

void ___ZZZN10CPMSModule28registerCommandHandlers_syncEvEUb1_ENK3__6clEv_block_invoke(void *a1, uint64_t a2)
{
  v3 = a1[6];
  if (!v3)
  {
    return;
  }

  v5 = a1[4];
  v6 = std::__shared_weak_count::lock(v3);
  if (!v6)
  {
    return;
  }

  v7 = a1[5];
  if (atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (!v7)
    {
      return;
    }
  }

  else
  {
    v8 = v6;
    (v6->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v8);
    if (!v7)
    {
      return;
    }
  }

  v9 = xpc_dictionary_create(0, 0, 0);
  v10 = v9;
  v11 = MEMORY[0x29EDCAA00];
  if (v9)
  {
    v24 = v9;
  }

  else
  {
    v10 = xpc_null_create();
    v24 = v10;
    if (!v10)
    {
      v12 = xpc_null_create();
      v10 = 0;
      goto LABEL_14;
    }
  }

  if (MEMORY[0x29C272BA0](v10) != v11)
  {
    v12 = xpc_null_create();
LABEL_14:
    v24 = v12;
    goto LABEL_15;
  }

  xpc_retain(v10);
LABEL_15:
  xpc_release(v10);
  v13 = v24;
  if (MEMORY[0x29C272BA0](v24) == v11)
  {
    v17 = *(a2 + 8);
    if (*a2 == v17)
    {
      v20 = *(v5 + 104);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(object[0]) = 0;
        _os_log_impl(&dword_297476000, v20, OS_LOG_TYPE_DEFAULT, "#I Power Mitigation Data are empty!", object, 2u);
      }

      v21 = xpc_null_create();
      v22 = a1[7];
      object[0] = v21;
      v23 = xpc_null_create();
      (*(v22 + 16))(v22, 3760250880, object);
      xpc_release(object[0]);
      xpc_release(v23);
    }

    else
    {
      v18 = xpc_data_create(*a2, v17 - *a2);
      if (!v18)
      {
        v18 = xpc_null_create();
      }

      xpc_dictionary_set_value(v24, *MEMORY[0x29EDBEDC8], v18);
      v19 = xpc_null_create();
      xpc_release(v18);
      xpc_release(v19);
      LODWORD(object[0]) = 0;
      dispatch::block<void({block_pointer})(int,xpc::dict)>::operator()<int,xpc::dict&>(a1 + 7, object, &v24);
      v13 = v24;
    }
  }

  else
  {
    v14 = xpc_null_create();
    v15 = a1[7];
    object[0] = v14;
    v16 = xpc_null_create();
    (*(v15 + 16))(v15, 3760250880, object);
    xpc_release(object[0]);
    xpc_release(v16);
  }

  xpc_release(v13);
}

void sub_297601DD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(v12);
  xpc_release(v11);
  _Unwind_Resume(a1);
}

uint64_t dispatch::callback<void({block_pointer})(std::vector<abm::PowerMitigationData>)>::~callback(uint64_t a1)
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

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI10CPMSModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb2_E3__7EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_(void *a1)
{
  v1 = a1;
  v54 = *MEMORY[0x29EDCA608];
  v2 = *a1;
  v3 = *(*a1 + 16);
  if (MEMORY[0x29C272BA0](*(*a1 + 24)) != MEMORY[0x29EDCAA00] || (v8 = *(v2 + 24)) == 0)
  {
    v4 = *(v3 + 104);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      LOWORD(object) = 0;
      _os_log_error_impl(&dword_297476000, v4, OS_LOG_TYPE_ERROR, "Expected intput/response handler", &object, 2u);
      if (!*(v2 + 32))
      {
        goto LABEL_49;
      }
    }

    else if (!*(v2 + 32))
    {
      goto LABEL_49;
    }

    v5 = xpc_null_create();
    v6 = *(v2 + 32);
    object = v5;
    v7 = xpc_null_create();
    (*(v6 + 16))(v6, 3760250880, &object);
    xpc_release(object);
    xpc_release(v7);
    goto LABEL_49;
  }

  memset(__p, 170, sizeof(__p));
  value = xpc_dictionary_get_value(v8, *MEMORY[0x29EDBEB10]);
  *buf = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    *buf = xpc_null_create();
  }

  object = 0;
  v47 = 0;
  v48 = 0;
  xpc::dyn_cast_or_default();
  xpc_release(*buf);
  v10 = xpc_dictionary_get_value(*(v2 + 24), *MEMORY[0x29EDBE6D0]);
  v11 = v10;
  if (v10)
  {
    xpc_retain(v10);
  }

  else
  {
    v11 = xpc_null_create();
  }

  v43 = v11;
  bytes_ptr = xpc_data_get_bytes_ptr(v11);
  length = xpc_data_get_length(v11);
  v14 = length;
  v15 = length >> 2;
  v41 = v2;
  v42 = v1;
  if (length >> 2 >= 1)
  {
    v16 = operator new(length & 0xFFFFFFFFFFFFFFFCLL);
    memcpy(v16, bytes_ptr, v14 & 0xFFFFFFFFFFFFFFFCLL);
    v17 = &v16[4 * v15];
    v18 = __p[0];
    v44 = __p[1];
    if (__p[0] == __p[1])
    {
      goto LABEL_41;
    }

LABEL_16:
    v19 = 0;
    v45 = (v17 - v16) >> 2;
    v20 = (v3 + 192);
    do
    {
      v21 = *v18;
      v22 = *(v3 + 104);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        abm::asString();
        if (v45 <= v19)
        {
          std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
        }

        p_object = &object;
        if (v48 < 0)
        {
          p_object = object;
        }

        v24 = *&v16[4 * v19];
        *buf = 136315394;
        *&buf[4] = p_object;
        v52 = 1024;
        v53 = v24;
        _os_log_impl(&dword_297476000, v22, OS_LOG_TYPE_DEFAULT, "#I Budget Scale: %s, value: %d", buf, 0x12u);
        if (SHIBYTE(v48) < 0)
        {
          operator delete(object);
        }
      }

      if (v19 == v45)
      {
        std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
      }

      if (v21 <= 0xD && ((1 << v21) & 0x3C07) != 0)
      {
        v26 = v16;
        v27 = *&v16[4 * v19];
        v28 = *v20;
        v29 = (v3 + 192);
        v30 = (v3 + 192);
        if (*v20)
        {
          while (1)
          {
            while (1)
            {
              v30 = v28;
              v31 = *(v28 + 28);
              if (v31 <= v21)
              {
                break;
              }

              v28 = *v30;
              v29 = v30;
              if (!*v30)
              {
                goto LABEL_38;
              }
            }

            if (v31 >= v21)
            {
              break;
            }

            v28 = v30[1];
            if (!v28)
            {
              v29 = v30 + 1;
              goto LABEL_38;
            }
          }

          v32 = v30;
        }

        else
        {
LABEL_38:
          v32 = operator new(0x28uLL);
          v32[28] = v21;
          v32[32] = 0;
          v32[36] = 0;
          *v32 = 0;
          *(v32 + 1) = 0;
          *(v32 + 2) = v30;
          *v29 = v32;
          v33 = **(v3 + 184);
          if (v33)
          {
            *(v3 + 184) = v33;
          }

          std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v3 + 192), v32);
          ++*(v3 + 200);
        }

        v16 = v26;
        *(v32 + 8) = v27;
        v32[36] = 1;
      }

      ++v19;
      ++v18;
    }

    while (v18 != v44);
    goto LABEL_41;
  }

  v16 = 0;
  v17 = 0;
  v18 = __p[0];
  v44 = __p[1];
  if (__p[0] != __p[1])
  {
    goto LABEL_16;
  }

LABEL_41:
  object = &v47;
  v47 = 0;
  v48 = 0;
  v49 = 0;
  if ((v3 + 184) != &object)
  {
    std::__tree<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__map_value_compare<abm::BasebandCPMSPowerBudgetScale,std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::less<abm::BasebandCPMSPowerBudgetScale>,true>,std::allocator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__tree_node<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,void *> *,long>>(&object, *(v3 + 184), (v3 + 192));
  }

  v49 = [*(v3 + 208) copy];
  CPMSModule::sendPowerBudgetToBB_sync(v3, &object);
  v2 = v41;
  v1 = v42;
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(&object, v47);
  v47 = 0;
  v48 = 0;
  object = &v47;

  v49 = 0;
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(&object, v47);
  v47 = 0;
  v48 = 0;
  object = &v47;
  if (*(v41 + 32))
  {
    v34 = xpc_null_create();
    v35 = *(v41 + 32);
    *buf = v34;
    v36 = xpc_null_create();
    (*(v35 + 16))(v35, 0, buf);
    xpc_release(*buf);
    xpc_release(v36);
  }

  if (v16)
  {
    operator delete(v16);
  }

  xpc_release(v43);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

LABEL_49:
  v37 = *(v2 + 32);
  if (v37)
  {
    _Block_release(v37);
  }

  xpc_release(*(v2 + 24));
  *(v2 + 24) = 0;
  v38 = *(v2 + 8);
  if (v38)
  {
    std::__shared_weak_count::__release_weak(v38);
  }

  operator delete(v2);
  v39 = v1[2];
  if (v39 && !atomic_fetch_add(&v39->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v39->__on_zero_shared)(v39);
    std::__shared_weak_count::__release_weak(v39);
  }

  operator delete(v1);
  v40 = *MEMORY[0x29EDCA608];
}

void sub_297602414(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, int a18, __int16 a19, char a20, char a21, xpc_object_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t *_ZNSt3__110unique_ptrIZZN10CPMSModule28registerCommandHandlers_syncEvEUb2_E3__7NS_14default_deleteIS2_EEED1B8ne200100Ev(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 32);
    if (v3)
    {
      _Block_release(v3);
    }

    xpc_release(*(v2 + 24));
    *(v2 + 24) = 0;
    v4 = *(v2 + 8);
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::__function::__func<CPMSModule::registerEventHandlers_sync(void)::$_0,std::allocator<CPMSModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::~__func(uint64_t result)
{
  *result = &unk_2A1E4C2C0;
  if (*(result + 24))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 24));
    return v1;
  }

  return result;
}

void std::__function::__func<CPMSModule::registerEventHandlers_sync(void)::$_0,std::allocator<CPMSModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::~__func(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E4C2C0;
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

char *std::__function::__func<CPMSModule::registerEventHandlers_sync(void)::$_0,std::allocator<CPMSModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t a1)
{
  result = operator new(0x20uLL);
  *result = &unk_2A1E4C2C0;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<CPMSModule::registerEventHandlers_sync(void)::$_0,std::allocator<CPMSModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A1E4C2C0;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<CPMSModule::registerEventHandlers_sync(void)::$_0,std::allocator<CPMSModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<CPMSModule::registerEventHandlers_sync(void)::$_0,std::allocator<CPMSModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::destroy_deallocate(std::__shared_weak_count **a1)
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

void std::__function::__func<CPMSModule::registerEventHandlers_sync(void)::$_0,std::allocator<CPMSModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::operator()(void *a1, NSObject **a2, void **a3)
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
      dispatch_async_f(v17, v18, dispatch::async<void ctu::SharedSynchronizable<CPMSModule>::execute_wrapped<CPMSModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(CPMSModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<CPMSModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<CPMSModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
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

void sub_2976029F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
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

uint64_t std::__function::__func<CPMSModule::registerEventHandlers_sync(void)::$_0,std::allocator<CPMSModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN10CPMSModule26registerEventHandlers_syncEvE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN10CPMSModule26registerEventHandlers_syncEvE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN10CPMSModule26registerEventHandlers_syncEvE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN10CPMSModule26registerEventHandlers_syncEvE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void dispatch::async<void ctu::SharedSynchronizable<CPMSModule>::execute_wrapped<CPMSModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(CPMSModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<CPMSModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<CPMSModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
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
  v6 = *(v3 + 176);
  v7 = *MEMORY[0x29EDBEFB8];
  v8 = strlen(*MEMORY[0x29EDBEFB8]);
  if ((SHIBYTE(__s1[2]) & 0x8000000000000000) == 0)
  {
    if (v8 == SHIBYTE(__s1[2]))
    {
      v9 = memcmp(__s1, v7, v8);
      *(v3 + 176) = v9 == 0;
      if (v9)
      {
        goto LABEL_15;
      }

      goto LABEL_11;
    }

LABEL_17:
    *(v3 + 176) = 0;
    if (!v6)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  if (v8 != __s1[1])
  {
    goto LABEL_17;
  }

  if (v8 == -1)
  {
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  v9 = memcmp(__s1[0], v7, v8);
  *(v3 + 176) = v9 == 0;
  if (!v9)
  {
LABEL_11:
    v10 = config::hw::watch(v9);
    if ((v10 & 1) == 0)
    {
      v11 = capabilities::abs::supportsSMCThermalReport(v10);
      if (v11)
      {
        v12 = capabilities::abs::SMCThermalReportInterval(v11);
        object = 0;
        CPMSModule::configureThermalReportFrequency_sync(v3, v12, &object);
      }

      (*(**(v3 + 136) + 48))(*(v3 + 136), 1, 5);
    }
  }

LABEL_15:
  if (*(v3 + 176) != v6)
  {
LABEL_18:
    CPMSModule::evaluatePowerBudgetNeed_sync(v3);
  }

LABEL_19:
  if (SHIBYTE(__s1[2]) < 0)
  {
    operator delete(__s1[0]);
  }

  xpc_release(v2[2]);
  v2[2] = 0;
  v13 = v2[1];
  if (v13)
  {
    dispatch_group_leave(v13);
    v14 = v2[1];
    if (v14)
    {
      dispatch_release(v14);
    }
  }

  operator delete(v2);
  v15 = a1[2];
  if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v15->__on_zero_shared)(v15);
    std::__shared_weak_count::__release_weak(v15);
  }

  operator delete(a1);
}

void sub_297602CE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    std::unique_ptr<CPMSModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},std::default_delete<CPMSModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&a10);
    _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a9);
    _Unwind_Resume(a1);
  }

  std::unique_ptr<CPMSModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},std::default_delete<CPMSModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&a10);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a9);
  _Unwind_Resume(a1);
}

void *std::unique_ptr<CPMSModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},std::default_delete<CPMSModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](void *result)
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

uint64_t std::__function::__func<CPMSModule::registerEventHandlers_sync(void)::$_1,std::allocator<CPMSModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::~__func(uint64_t result)
{
  *result = &unk_2A1E4C340;
  if (*(result + 24))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 24));
    return v1;
  }

  return result;
}

void std::__function::__func<CPMSModule::registerEventHandlers_sync(void)::$_1,std::allocator<CPMSModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::~__func(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E4C340;
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

char *std::__function::__func<CPMSModule::registerEventHandlers_sync(void)::$_1,std::allocator<CPMSModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t a1)
{
  result = operator new(0x20uLL);
  *result = &unk_2A1E4C340;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<CPMSModule::registerEventHandlers_sync(void)::$_1,std::allocator<CPMSModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A1E4C340;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<CPMSModule::registerEventHandlers_sync(void)::$_1,std::allocator<CPMSModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<CPMSModule::registerEventHandlers_sync(void)::$_1,std::allocator<CPMSModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::destroy_deallocate(std::__shared_weak_count **a1)
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

void std::__function::__func<CPMSModule::registerEventHandlers_sync(void)::$_1,std::allocator<CPMSModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::operator()(void *a1, NSObject **a2, void **a3)
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
      dispatch_async_f(v17, v18, dispatch::async<void ctu::SharedSynchronizable<CPMSModule>::execute_wrapped<CPMSModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(CPMSModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<CPMSModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<CPMSModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
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

void sub_297603188(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
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

uint64_t std::__function::__func<CPMSModule::registerEventHandlers_sync(void)::$_1,std::allocator<CPMSModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN10CPMSModule26registerEventHandlers_syncEvE3$_1")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN10CPMSModule26registerEventHandlers_syncEvE3$_1" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN10CPMSModule26registerEventHandlers_syncEvE3$_1"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN10CPMSModule26registerEventHandlers_syncEvE3$_1" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void dispatch::async<void ctu::SharedSynchronizable<CPMSModule>::execute_wrapped<CPMSModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(CPMSModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<CPMSModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<CPMSModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v2 = *a1;
  v3 = **a1;
  v4 = v3[177];
  value = xpc_dictionary_get_value(*(*a1 + 16), *MEMORY[0x29EDBF030]);
  object = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object = xpc_null_create();
  }

  v6 = xpc::dyn_cast_or_default(&object, 8);
  xpc_release(object);
  v7 = v6 == 0;
  v3[177] = v7;
  if (v4 != v7)
  {
    CPMSModule::evaluatePowerBudgetNeed_sync(v3);
  }

  xpc_release(v2[2]);
  v2[2] = 0;
  v8 = v2[1];
  if (v8)
  {
    dispatch_group_leave(v8);
    v9 = v2[1];
    if (v9)
    {
      dispatch_release(v9);
    }
  }

  operator delete(v2);
  v10 = *(a1 + 2);
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  operator delete(a1);
}

void sub_297603374(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, xpc_object_t object)
{
  xpc_release(object);
  std::unique_ptr<CPMSModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},std::default_delete<CPMSModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&a11);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a10);
  _Unwind_Resume(a1);
}

void *std::unique_ptr<CPMSModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},std::default_delete<CPMSModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](void *result)
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

uint64_t std::__function::__func<CPMSModule::registerEventHandlers_sync(void)::$_2,std::allocator<CPMSModule::registerEventHandlers_sync(void)::$_2>,void ()(dispatch::group_session,xpc::dict)>::~__func(uint64_t result)
{
  *result = &unk_2A1E4C3C0;
  if (*(result + 24))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 24));
    return v1;
  }

  return result;
}

void std::__function::__func<CPMSModule::registerEventHandlers_sync(void)::$_2,std::allocator<CPMSModule::registerEventHandlers_sync(void)::$_2>,void ()(dispatch::group_session,xpc::dict)>::~__func(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E4C3C0;
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

char *std::__function::__func<CPMSModule::registerEventHandlers_sync(void)::$_2,std::allocator<CPMSModule::registerEventHandlers_sync(void)::$_2>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t a1)
{
  result = operator new(0x20uLL);
  *result = &unk_2A1E4C3C0;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<CPMSModule::registerEventHandlers_sync(void)::$_2,std::allocator<CPMSModule::registerEventHandlers_sync(void)::$_2>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A1E4C3C0;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<CPMSModule::registerEventHandlers_sync(void)::$_2,std::allocator<CPMSModule::registerEventHandlers_sync(void)::$_2>,void ()(dispatch::group_session,xpc::dict)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<CPMSModule::registerEventHandlers_sync(void)::$_2,std::allocator<CPMSModule::registerEventHandlers_sync(void)::$_2>,void ()(dispatch::group_session,xpc::dict)>::destroy_deallocate(std::__shared_weak_count **a1)
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

void std::__function::__func<CPMSModule::registerEventHandlers_sync(void)::$_2,std::allocator<CPMSModule::registerEventHandlers_sync(void)::$_2>,void ()(dispatch::group_session,xpc::dict)>::operator()(void *a1, NSObject **a2, void **a3)
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
      dispatch_async_f(v17, v18, dispatch::async<void ctu::SharedSynchronizable<CPMSModule>::execute_wrapped<CPMSModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(CPMSModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<CPMSModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<CPMSModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
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

void sub_2976037DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
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

uint64_t std::__function::__func<CPMSModule::registerEventHandlers_sync(void)::$_2,std::allocator<CPMSModule::registerEventHandlers_sync(void)::$_2>,void ()(dispatch::group_session,xpc::dict)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN10CPMSModule26registerEventHandlers_syncEvE3$_2")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN10CPMSModule26registerEventHandlers_syncEvE3$_2" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN10CPMSModule26registerEventHandlers_syncEvE3$_2"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN10CPMSModule26registerEventHandlers_syncEvE3$_2" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void dispatch::async<void ctu::SharedSynchronizable<CPMSModule>::execute_wrapped<CPMSModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(CPMSModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<CPMSModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<CPMSModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  __p[3] = *MEMORY[0x29EDCA608];
  v2 = *a1;
  v3 = **a1;
  v4 = *(v3 + 178);
  memset(__s1, 170, sizeof(__s1));
  value = xpc_dictionary_get_value(v2[2], *MEMORY[0x29EDBF2A0]);
  object = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object = xpc_null_create();
  }

  memset(__p, 0, 24);
  xpc::dyn_cast_or_default();
  xpc_release(object);
  v6 = strlen(*MEMORY[0x29EDBF668]);
  v7 = v6;
  if ((SHIBYTE(__s1[2]) & 0x8000000000000000) != 0)
  {
    if (v6 == __s1[1])
    {
      if (v6 == -1)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      v8 = __s1[0];
LABEL_10:
      v9 = memcmp(v8, *MEMORY[0x29EDBF668], v7) == 0;
      *(v3 + 178) = v9;
      v10 = *(v3 + 104);
      v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);
      if (!v11)
      {
        goto LABEL_15;
      }

      goto LABEL_11;
    }
  }

  else if (v6 == SHIBYTE(__s1[2]))
  {
    v8 = __s1;
    goto LABEL_10;
  }

  v9 = 0;
  *(v3 + 178) = 0;
  v10 = *(v3 + 104);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);
  if (!v11)
  {
    goto LABEL_15;
  }

LABEL_11:
  v12 = "disconnected";
  if (v9)
  {
    v12 = "connected";
  }

  LODWORD(__p[0]) = 136315138;
  *(__p + 4) = v12;
  _os_log_debug_impl(&dword_297476000, v10, OS_LOG_TYPE_DEBUG, "#D Baseband is in %s state", __p, 0xCu);
LABEL_15:
  if (capabilities::abs::supportsCPMSConnectedState(v11) && *(v3 + 178) != v4)
  {
    CPMSModule::debounceConnectedState_sync(v3);
  }

  if (SHIBYTE(__s1[2]) < 0)
  {
    operator delete(__s1[0]);
  }

  xpc_release(v2[2]);
  v2[2] = 0;
  v13 = v2[1];
  if (v13)
  {
    dispatch_group_leave(v13);
    v14 = v2[1];
    if (v14)
    {
      dispatch_release(v14);
    }
  }

  operator delete(v2);
  v15 = a1[2];
  if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v15->__on_zero_shared)(v15);
    std::__shared_weak_count::__release_weak(v15);
  }

  operator delete(a1);
  v16 = *MEMORY[0x29EDCA608];
}

void sub_297603B04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, xpc_object_t object, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *std::unique_ptr<CPMSModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},std::default_delete<CPMSModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](void *result)
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

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI10CPMSModuleE15execute_wrappedIZZNS3_20initPowerConfig_syncEvEUb3_E4__13EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_(void *a1)
{
  v28 = *MEMORY[0x29EDCA608];
  v2 = *a1;
  v3 = **a1;
  if (!v3)
  {
    goto LABEL_17;
  }

  v4 = v2[1];
  v5 = *(v4 + 104);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_297476000, v5, OS_LOG_TYPE_DEFAULT, "#I Given budget from CPMS is %@", &buf, 0xCu);
    v3 = *v2;
  }

  PowerBudget::fill((v4 + 184), v3);
  *&buf = &buf + 8;
  *(&buf + 1) = 0;
  v26 = 0;
  v27 = 0;
  PowerBudget::fill(&buf, *v2);
  v6 = *(v4 + 104);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    PowerBudget::to_string(&buf, &__p);
    v7 = SHIBYTE(v19);
    v8 = __p;
    PowerBudget::to_string((v4 + 184), v23);
    p_p = &__p;
    if (v7 < 0)
    {
      p_p = v8;
    }

    if (v23[23] >= 0)
    {
      v10 = v23;
    }

    else
    {
      v10 = *v23;
    }

    *v21 = 136315394;
    *&v21[4] = p_p;
    *&v21[12] = 2080;
    *&v21[14] = v10;
    _os_log_impl(&dword_297476000, v6, OS_LOG_TYPE_DEFAULT, "#I Budget from CPMS: %s, Cached Budgets: %s", v21, 0x16u);
    if ((v23[23] & 0x80000000) != 0)
    {
      operator delete(*v23);
      if ((SHIBYTE(v19) & 0x80000000) == 0)
      {
        goto LABEL_12;
      }
    }

    else if ((SHIBYTE(v19) & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

    operator delete(__p);
  }

LABEL_12:
  __p = &v18;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  std::__tree<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__map_value_compare<abm::BasebandCPMSPowerBudgetScale,std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::less<abm::BasebandCPMSPowerBudgetScale>,true>,std::allocator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__tree_node<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,void *> *,long>>(&__p, buf, &buf + 1);
  v20 = [v27 copy];
  v11 = [*(v4 + 112) acknowledgePowerBudget:PowerBudget::getNSDict(&__p) forClientId:4 error:0];
  v12 = *(v4 + 104);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    NSDict = PowerBudget::getNSDict(&__p);
    v14 = "failed";
    if (v11)
    {
      v14 = "succeeded";
    }

    *v23 = 136315394;
    *&v23[4] = v14;
    *&v23[12] = 2112;
    *&v23[14] = NSDict;
    _os_log_impl(&dword_297476000, v12, OS_LOG_TYPE_DEFAULT, "#I Acked CPMS %s for power budget %@", v23, 0x16u);
  }

  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(&__p, v18);
  v18 = 0;
  v19 = 0;
  __p = &v18;

  v20 = 0;
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(&__p, v18);
  v18 = 0;
  v19 = 0;
  __p = &v18;
  v24 = 0;
  *v23 = &v23[8];
  *&v23[8] = 0uLL;
  std::__tree<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__map_value_compare<abm::BasebandCPMSPowerBudgetScale,std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::less<abm::BasebandCPMSPowerBudgetScale>,true>,std::allocator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__tree_node<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,void *> *,long>>(v23, buf, &buf + 1);
  v24 = [v27 copy];
  CPMSModule::evaluateBrickMode_sync(v4, v23);
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v23, *&v23[8]);
  *&v23[8] = 0uLL;
  *v23 = &v23[8];

  v24 = 0;
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v23, *&v23[8]);
  *&v23[8] = 0uLL;
  v22 = 0;
  *v23 = &v23[8];
  *&v21[8] = 0uLL;
  *v21 = &v21[8];
  std::__tree<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__map_value_compare<abm::BasebandCPMSPowerBudgetScale,std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::less<abm::BasebandCPMSPowerBudgetScale>,true>,std::allocator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,std::__tree_node<std::__value_type<abm::BasebandCPMSPowerBudgetScale,std::optional<unsigned int>>,void *> *,long>>(v21, buf, &buf + 1);
  v22 = [v27 copy];
  CPMSModule::sendPowerBudgetToBB_sync(v4, v21);
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v21, *&v21[8]);
  *&v21[8] = 0uLL;
  *v21 = &v21[8];

  v22 = 0;
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v21, *&v21[8]);
  *&v21[8] = 0uLL;
  *v21 = &v21[8];

  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(&buf, *(&buf + 1));
  *(&buf + 1) = 0;
  v26 = 0;
  *&buf = &buf + 8;

  v27 = 0;
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(&buf, *(&buf + 1));
LABEL_17:
  operator delete(v2);
  v15 = *(a1 + 2);
  if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v15->__on_zero_shared)(v15);
    std::__shared_weak_count::__release_weak(v15);
  }

  operator delete(a1);
  v16 = *MEMORY[0x29EDCA608];
}

void sub_297603FEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  PowerBudget::~PowerBudget(&a26);
  operator delete(v26);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a10);
  _Unwind_Resume(a1);
}

uint64_t ___ZN8dispatch9sync_implIRU13block_pointerFP12NSDictionaryvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS6_17integral_constantIbLb0EEE_block_invoke(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

uint64_t ___ZN8dispatch19async_and_wait_implIRU13block_pointerFP12NSDictionaryvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS6_17integral_constantIbLb0EEE_block_invoke(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

void *std::__function::__func<CPMSModule::evaluateBrickMode_sync(PowerBudget)::$_0,std::allocator<CPMSModule::evaluateBrickMode_sync(PowerBudget)::$_0>,BOOL ()(abm::BasebandCPMSPowerBudgetScale const&,std::optional<unsigned int> const&)>::__clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_2A1E4C440;
  result[1] = v3;
  return result;
}

uint64_t std::__function::__func<CPMSModule::evaluateBrickMode_sync(PowerBudget)::$_0,std::allocator<CPMSModule::evaluateBrickMode_sync(PowerBudget)::$_0>,BOOL ()(abm::BasebandCPMSPowerBudgetScale const&,std::optional<unsigned int> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1E4C440;
  a2[1] = v2;
  return result;
}

BOOL std::__function::__func<CPMSModule::evaluateBrickMode_sync(PowerBudget)::$_0,std::allocator<CPMSModule::evaluateBrickMode_sync(PowerBudget)::$_0>,BOOL ()(abm::BasebandCPMSPowerBudgetScale const&,std::optional<unsigned int> const&)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 4) != 1)
  {
    return 1;
  }

  v3 = *(a1 + 8);
  result = *a3 != 0;
  *v3 = *a3 == 0;
  return result;
}

uint64_t std::__function::__func<CPMSModule::evaluateBrickMode_sync(PowerBudget)::$_0,std::allocator<CPMSModule::evaluateBrickMode_sync(PowerBudget)::$_0>,BOOL ()(abm::BasebandCPMSPowerBudgetScale const&,std::optional<unsigned int> const&)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN10CPMSModule22evaluateBrickMode_syncE11PowerBudgetE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN10CPMSModule22evaluateBrickMode_syncE11PowerBudgetE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN10CPMSModule22evaluateBrickMode_syncE11PowerBudgetE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN10CPMSModule22evaluateBrickMode_syncE11PowerBudgetE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t std::function<BOOL ()(abm::BasebandCPMSPowerBudgetScale const&,std::optional<unsigned int> const&)>::~function(uint64_t a1)
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

uint64_t __cxx_global_var_init_65()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<CommandDriverFactory>::~PthreadMutexGuardPolicy, &ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance, &dword_297476000);
  }

  return result;
}

BOOL prop::get(char *a1, char *a2, uint64_t a3)
{
  v28 = *MEMORY[0x29EDCA608];
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

                          return prop::tracesettings::get(a2, a3);
                        }

                        else
                        {
                          sGetOsLogContext();
                          v7 = qword_2A18CB2E8;
                          if (os_log_type_enabled(qword_2A18CB2E8, OS_LOG_TYPE_ERROR))
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

                            v24 = 136315394;
                            v25 = v21;
                            v26 = 2080;
                            v27 = v22;
                            _os_log_error_impl(&dword_297476000, v7, OS_LOG_TYPE_ERROR, "get: Invalid domain; domain='%s' key='%s'", &v24, 0x16u);
                            v23 = *MEMORY[0x29EDCA608];
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

                    return prop::tailspin::get(a2, a3);
                  }

LABEL_61:
                  v19 = *MEMORY[0x29EDCA608];

                  return prop::profile::get(a2, a3);
                }

LABEL_58:
                v18 = *MEMORY[0x29EDCA608];

                return prop::systemlogs::get(a2, a3);
              }

LABEL_55:
              v17 = *MEMORY[0x29EDCA608];

              return prop::logfilter::get(a2, a3);
            }

LABEL_52:
            v16 = *MEMORY[0x29EDCA608];

            return prop::ttr::get(a2, a3);
          }

LABEL_49:
          v15 = *MEMORY[0x29EDCA608];

          return prop::compression::get(a2, a3);
        }

LABEL_46:
        v14 = *MEMORY[0x29EDCA608];

        return prop::bbipc::get(a2, a3);
      }

LABEL_40:
      v12 = *MEMORY[0x29EDCA608];

      return prop::ipc::get(a2, a3);
    }

LABEL_43:
    v13 = *MEMORY[0x29EDCA608];

    return prop::coredump::get(a2, a3);
  }

  v11 = *MEMORY[0x29EDCA608];

  return prop::bbtrace::get(a2, a3);
}

BOOL prop::bbtrace::get(char *a1, uint64_t a2)
{
  v4 = *MEMORY[0x29EDBF8A0];
  v5 = strlen(*MEMORY[0x29EDBF8A0]);
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

void sub_297604B4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
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