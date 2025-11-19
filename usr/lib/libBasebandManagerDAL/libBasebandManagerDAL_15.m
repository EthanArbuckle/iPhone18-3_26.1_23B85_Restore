void sub_29733A07C(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[2], v1, std::shared_ptr<PowerManager::State> ctu::SharedSynchronizable<PowerManager::State>::make_shared_ptr<PowerManager::State>(PowerManager::State*)::{lambda(PowerManager::State*)#1}::operator() const(PowerManager::State*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<PowerManager::State *,std::shared_ptr<PowerManager::State> ctu::SharedSynchronizable<PowerManager::State>::make_shared_ptr<PowerManager::State>(PowerManager::State*)::{lambda(PowerManager::State *)#1},std::allocator<PowerManager::State>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<PowerManager::State *,std::shared_ptr<PowerManager::State> ctu::SharedSynchronizable<PowerManager::State>::make_shared_ptr<PowerManager::State>(PowerManager::State*)::{lambda(PowerManager::State *)#1},std::allocator<PowerManager::State>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableIN12PowerManager5StateEE15make_shared_ptrIS2_EENSt3__110shared_ptrIT_EEPS7_EUlPS2_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableIN12PowerManager5StateEE15make_shared_ptrIS2_EENSt3__110shared_ptrIT_EEPS7_EUlPS2_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableIN12PowerManager5StateEE15make_shared_ptrIS2_EENSt3__110shared_ptrIT_EEPS7_EUlPS2_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableIN12PowerManager5StateEE15make_shared_ptrIS2_EENSt3__110shared_ptrIT_EEPS7_EUlPS2_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void std::shared_ptr<PowerManager::State> ctu::SharedSynchronizable<PowerManager::State>::make_shared_ptr<PowerManager::State>(PowerManager::State*)::{lambda(PowerManager::State*)#1}::operator() const(PowerManager::State*)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  if (!a1)
  {
    return;
  }

  v2 = *(a1 + 96);
  if (v2)
  {
    (*(v2 + 16))(v2, 1);
    v3 = *(a1 + 96);
    *(a1 + 96) = 0;
    if (v3)
    {
      _Block_release(v3);
    }
  }

  v4 = *(a1 + 32);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v15 = 0;
    _os_log_impl(&dword_297288000, v4, OS_LOG_TYPE_DEFAULT, "#I Gone!", v15, 2u);
  }

  v5 = *(a1 + 216);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  std::__tree<std::__value_type<std::string,dispatch::group_session>,std::__map_value_compare<std::string,std::__value_type<std::string,dispatch::group_session>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dispatch::group_session>>>::destroy(*(a1 + 192));
  std::__tree<std::__value_type<std::string,std::shared_ptr<support::misc::Watchdog>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<support::misc::Watchdog>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<support::misc::Watchdog>>>>::destroy(*(a1 + 168));
  std::__tree<std::__value_type<std::string,std::shared_ptr<support::misc::Watchdog>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<support::misc::Watchdog>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<support::misc::Watchdog>>>>::destroy(*(a1 + 144));
  v6 = *(a1 + 128);
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = *(a1 + 112);
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    v8 = *(a1 + 96);
    if (!v8)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v8 = *(a1 + 96);
  if (v8)
  {
LABEL_15:
    _Block_release(v8);
  }

LABEL_16:
  v9 = *(a1 + 88);
  if (v9)
  {
    _Block_release(v9);
  }

  v10 = *(a1 + 80);
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  v11 = *(a1 + 48);
  if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  MEMORY[0x29C26DE80](a1 + 32);
  v12 = *(a1 + 24);
  if (v12)
  {
    dispatch_release(v12);
  }

  v13 = *(a1 + 16);
  if (v13)
  {
    dispatch_release(v13);
  }

  v14 = *(a1 + 8);
  if (v14)
  {
    std::__shared_weak_count::__release_weak(v14);
  }

  operator delete(a1);
}

void std::__tree<std::__value_type<std::string,dispatch::group_session>,std::__map_value_compare<std::string,std::__value_type<std::string,dispatch::group_session>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dispatch::group_session>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,dispatch::group_session>,std::__map_value_compare<std::string,std::__value_type<std::string,dispatch::group_session>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dispatch::group_session>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,dispatch::group_session>,std::__map_value_compare<std::string,std::__value_type<std::string,dispatch::group_session>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dispatch::group_session>>>::destroy(*(a1 + 1));
    v2 = *(a1 + 7);
    if (v2)
    {
      dispatch_group_leave(v2);
      v3 = *(a1 + 7);
      if (v3)
      {
        dispatch_release(v3);
      }
    }

    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
      v4 = a1;
    }

    else
    {
      v4 = a1;
    }

    operator delete(v4);
  }
}

uint64_t std::pair<std::string const,dispatch::group_session>::~pair(uint64_t a1)
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

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__tree<std::__value_type<std::string,std::shared_ptr<support::misc::Watchdog>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<support::misc::Watchdog>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<support::misc::Watchdog>>>>::destroy(uint64_t a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,std::shared_ptr<support::misc::Watchdog>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<support::misc::Watchdog>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<support::misc::Watchdog>>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,std::shared_ptr<support::misc::Watchdog>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<support::misc::Watchdog>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<support::misc::Watchdog>>>>::destroy(*(a1 + 8));
    v2 = *(a1 + 64);
    if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v2->__on_zero_shared)(v2);
      std::__shared_weak_count::__release_weak(v2);
      if ((*(a1 + 55) & 0x80000000) == 0)
      {
LABEL_5:
        v3 = a1;

LABEL_7:
        operator delete(v3);
        return;
      }
    }

    else if ((*(a1 + 55) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    operator delete(*(a1 + 32));
    v3 = a1;

    goto LABEL_7;
  }
}

uint64_t PowerManager::State::State(uint64_t a1, void *a2)
{
  ctu::OsLogContext::OsLogContext(v10, "com.apple.telephony.abm", "power.mgr");
  initially_inactive = dispatch_queue_attr_make_initially_inactive(0);
  v5 = dispatch_queue_create_with_target_V2("power.mgr", initially_inactive, 0);
  dispatch_set_qos_class_floor(v5, QOS_CLASS_USER_INITIATED, 0);
  dispatch_activate(v5);
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = v5;
  if (v5)
  {
    dispatch_retain(v5);
    *(a1 + 24) = 0;
    dispatch_release(v5);
  }

  else
  {
    *(a1 + 24) = 0;
  }

  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x29C26DE70](a1 + 32, v11);
  MEMORY[0x29C26DE80](v11);
  ctu::OsLogContext::~OsLogContext(v10);
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0x200000001;
  *(a1 + 64) = -536870144;
  v6 = operator new(0x88uLL);
  PowerStats::PowerStats(v6);
  *(a1 + 72) = v6;
  v10[0] = v6;
  v7 = operator new(0x20uLL);
  *v7 = &unk_2A1E3A728;
  v7[1] = 0;
  v7[2] = 0;
  v7[3] = v6;
  *(a1 + 80) = v7;
  *(a1 + 144) = 0;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = a1 + 144;
  *(a1 + 168) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = a1 + 168;
  *(a1 + 200) = 0;
  *(a1 + 192) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = a1 + 192;
  *(a1 + 208) = *a2;
  v8 = a2[1];
  *(a1 + 216) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 16), 1uLL, memory_order_relaxed);
  }

  return a1;
}

void sub_29733A71C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<PowerStats>::~unique_ptr[abi:ne200100](va);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](v3);
  MEMORY[0x29C26DE80](v2 + 4);
  ctu::SharedSynchronizable<WorkoutModule>::~SharedSynchronizable(v2);
  _Unwind_Resume(a1);
}

void ___ZN12PowerManager5State4initEv_block_invoke(uint64_t a1)
{
  v41.__r_.__value_.__r.__words[2] = 0xAAAAAAAAAAAAAAAALL;
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v40 = v2;
  *&v41.__r_.__value_.__l.__data_ = v2;
  v39 = v2;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN12PowerManager5State4initEv_block_invoke_2;
  aBlock[3] = &__block_descriptor_tmp_26;
  v22 = *(a1 + 32);
  v37 = v22;
  v3 = *(a1 + 48);
  v38 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = _Block_copy(aBlock);
  v5 = *(v22 + 16);
  *&v39 = 1;
  *(&v39 + 1) = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  if (v4)
  {
    v40 = _Block_copy(v4);
    v41.__r_.__value_.__r.__words[0] = 5063233;
    *(&v41.__r_.__value_.__s + 23) = 3;
    _Block_release(v4);
  }

  else
  {
    v40 = 0uLL;
    v41.__r_.__value_.__r.__words[0] = 5063233;
    *(&v41.__r_.__value_.__s + 23) = 3;
  }

  ctu::power::manager::get(buf, v5);
  v6 = *buf;
  memset(buf, 0, 16);
  v7 = *(v22 + 112);
  *(v22 + 104) = v6;
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  v8 = buf[1];
  if (buf[1] && !atomic_fetch_add((buf[1] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  v9 = *(v22 + 104);
  v31 = v39;
  if (*(&v39 + 1))
  {
    dispatch_retain(*(&v39 + 1));
  }

  v10 = v40;
  if (v40)
  {
    v10 = _Block_copy(v40);
  }

  v32 = v10;
  v11 = *(&v40 + 1);
  if (*(&v40 + 1))
  {
    v11 = _Block_copy(*(&v40 + 1));
  }

  v33 = v11;
  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v41.__r_.__value_.__l.__data_, v41.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v41;
  }

  ctu::power::manager::registerListener();
  v12 = *buf;
  memset(buf, 0, 16);
  v13 = *(v22 + 128);
  *(v22 + 120) = v12;
  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

  v14 = buf[1];
  if (!buf[1] || atomic_fetch_add((buf[1] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_29;
    }

LABEL_32:
    operator delete(__p.__r_.__value_.__l.__data_);
    v15 = v33;
    if (!v33)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  (v14->__on_zero_shared)(v14);
  std::__shared_weak_count::__release_weak(v14);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_32;
  }

LABEL_29:
  v15 = v33;
  if (v33)
  {
LABEL_33:
    _Block_release(v15);
  }

LABEL_34:
  if (v32)
  {
    _Block_release(v32);
  }

  if (*(&v31 + 1))
  {
    dispatch_release(*(&v31 + 1));
  }

  v16 = *(v22 + 32);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_297288000, v16, OS_LOG_TYPE_DEFAULT, "#I Registered power listener", buf, 2u);
  }

  memset(buf, 170, 16);
  abm::AWDHelperGetConnection(buf);
  if (buf[0])
  {
    v24 = MEMORY[0x29EDCA5F8];
    v25 = 1174405120;
    v26 = ___ZN12PowerManager5State4initEv_block_invoke_11;
    v27 = &__block_descriptor_tmp_18_0;
    v18 = *(a1 + 40);
    v17 = *(a1 + 48);
    v28 = v22;
    v29 = v18;
    v30 = v17;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    wis::WISServerConnection::RegisterQueriableMetricCallbackForIdentifier();
    if (v30)
    {
      std::__shared_weak_count::__release_weak(v30);
      v19 = buf[1];
      if (!buf[1])
      {
        goto LABEL_50;
      }

      goto LABEL_48;
    }
  }

  else
  {
    v20 = *(v22 + 32);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *v23 = 0;
      _os_log_error_impl(&dword_297288000, v20, OS_LOG_TYPE_ERROR, "AWD connection setup failed", v23, 2u);
      v19 = buf[1];
      if (!buf[1])
      {
        goto LABEL_50;
      }

      goto LABEL_48;
    }
  }

  v19 = buf[1];
  if (!buf[1])
  {
    goto LABEL_50;
  }

LABEL_48:
  if (!atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v19);
  }

LABEL_50:
  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__r_.__value_.__l.__data_);
    v21 = *(&v40 + 1);
    if (!*(&v40 + 1))
    {
      goto LABEL_55;
    }

    goto LABEL_54;
  }

  v21 = *(&v40 + 1);
  if (*(&v40 + 1))
  {
LABEL_54:
    _Block_release(v21);
  }

LABEL_55:
  if (v40)
  {
    _Block_release(v40);
  }

  if (*(&v39 + 1))
  {
    dispatch_release(*(&v39 + 1));
  }

  if (v38)
  {
    std::__shared_weak_count::__release_weak(v38);
  }
}

void sub_29733AC84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, char a20, dispatch_object_t object, void *a22, void *aBlock, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, std::__shared_weak_count *a36)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (a22)
  {
    _Block_release(a22);
  }

  if (object)
  {
    dispatch_release(object);
    ctu::power::manager::parameters::~parameters((v36 - 128));
    v38 = a36;
    if (!a36)
    {
LABEL_7:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    ctu::power::manager::parameters::~parameters((v36 - 128));
    v38 = a36;
    if (!a36)
    {
      goto LABEL_7;
    }
  }

  std::__shared_weak_count::__release_weak(v38);
  _Unwind_Resume(a1);
}

void ___ZN12PowerManager5State4initEv_block_invoke_2(void *a1, ctu::power::manager *a2, const void **a3)
{
  v68 = *MEMORY[0x29EDCA608];
  v5 = a1[4];
  v6 = a1[6];
  if (!v6)
  {
    v8 = 0;
    goto LABEL_7;
  }

  v8 = std::__shared_weak_count::lock(v6);
  if (!v8 || !a1[5])
  {
LABEL_7:
    (*(*a3 + 2))();
    if (!v8)
    {
      goto LABEL_91;
    }

    goto LABEL_89;
  }

  if (*a3)
  {
    v9 = _Block_copy(*a3);
  }

  else
  {
    v9 = 0;
  }

  v10 = *(v5 + 14);
  v11 = *(v5 + 60);
  v50 = v11;
  HIDWORD(v13) = a2 + 536870288;
  LODWORD(v13) = a2 + 536870288;
  v12 = v13 >> 4;
  if (v12 > 1)
  {
    if (v12 == 2)
    {
      if (v11)
      {
        goto LABEL_33;
      }

      v15 = 2;
    }

    else
    {
      if (v12 != 9)
      {
        if (v12 != 11 || v10 || v11 == 2)
        {
          goto LABEL_33;
        }

        v14 = 0;
        v15 = 2;
        goto LABEL_29;
      }

      if (v10)
      {
        goto LABEL_33;
      }

      v15 = v11;
      if (v11 != 2)
      {
        goto LABEL_33;
      }
    }

LABEL_28:
    v14 = 1;
    goto LABEL_29;
  }

  if (!v12)
  {
    if (v10 != 1)
    {
      goto LABEL_33;
    }

    v15 = 0;
    goto LABEL_28;
  }

  if (v12 != 1 || v10 != 1)
  {
    goto LABEL_33;
  }

  v14 = 0;
  v15 = v11 != 0;
LABEL_29:
  if (v5[19])
  {
    if (a2 == -536870288)
    {
      goto LABEL_33;
    }

    if (a2 == -536870272)
    {
      if (!v5[25])
      {
        if (v9)
        {
          v48 = _Block_copy(v9);
        }

        else
        {
          v48 = 0;
        }

        v49 = v5[12];
        v5[12] = v48;
        if (v49)
        {
          _Block_release(v49);
        }

        v16 = 1;
        v17 = v5[4];
        if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
LABEL_41:
          if (a2 == -536870144 || a2 == -536870256)
          {
            v23 = v5[25];
            if (v23)
            {
              v24 = v5[4];
              if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 134217984;
                *&buf[4] = v23;
                _os_log_impl(&dword_297288000, v24, OS_LOG_TYPE_DEFAULT, "#I Allowing deferred work to run (skipping power event); count=%zd", buf, 0xCu);
              }

              v26 = v5[24];
              v25 = v5 + 24;
              std::__tree<std::__value_type<std::string,dispatch::group_session>,std::__map_value_compare<std::string,std::__value_type<std::string,dispatch::group_session>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dispatch::group_session>>>::destroy(v26);
              *v25 = 0;
              v25[1] = 0;
              *(v25 - 1) = v25;
              if (!v9)
              {
                goto LABEL_89;
              }

              goto LABEL_88;
            }
          }

LABEL_87:
          if (!v9)
          {
            goto LABEL_89;
          }

          goto LABEL_88;
        }

LABEL_34:
        v18 = ctu::power::manager::asCString(a2);
        v19 = v5[19];
        v20 = "Unknown";
        v21 = v5[25];
        if (v10 == 1)
        {
          v20 = "PoweredOn";
        }

        *buf = 136316418;
        *&buf[4] = v18;
        v62 = 1024;
        if (!v10)
        {
          v20 = "LowPower";
        }

        *v63 = v50;
        v22 = "false";
        *&v63[4] = 2080;
        *&v63[6] = v20;
        *&v63[14] = 2048;
        if (v16)
        {
          v22 = "true";
        }

        *&v63[16] = v19;
        v64 = 2048;
        v65 = v21;
        v66 = 2080;
        v67 = v22;
        _os_log_impl(&dword_297288000, v17, OS_LOG_TYPE_DEFAULT, "#I Cannot accept notification: %s, SleepState: %u, PowerState: %s, Assertions: %lu, Assertions-deferred: %lu, Deferred-ack: %s", buf, 0x3Au);
        goto LABEL_41;
      }

LABEL_33:
      (*(v9 + 2))(v9, 0);
      v16 = 0;
      v17 = v5[4];
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_41;
      }

      goto LABEL_34;
    }
  }

  *(v5 + 14) = v14;
  *(v5 + 15) = v15;
  *(v5 + 16) = a2;
  v27 = v5[9];
  v58 = a2;
  v59 = v10;
  v60 = v11;
  v57 = __PAIR64__(v15, v14);
  PowerStats::reportSystemStateChange(v27, &v59, &v57);
  v28 = v5[4];
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = ctu::power::manager::asCString(a2);
    v30 = "Unknown";
    v31 = "PoweredOn";
    v33 = *(v5 + 14);
    v32 = *(v5 + 15);
    if (v33 != 1)
    {
      v31 = "Unknown";
    }

    if (!v33)
    {
      v31 = "LowPower";
    }

    if (v32 <= 2)
    {
      v30 = off_29EE67E18[v32];
    }

    *buf = 136315650;
    *&buf[4] = v29;
    v62 = 2080;
    *v63 = v31;
    *&v63[8] = 2080;
    *&v63[10] = v30;
    _os_log_impl(&dword_297288000, v28, OS_LOG_TYPE_DEFAULT, "#I Power notification: %s, Power state: %s, Sleep state: %s", buf, 0x20u);
  }

  v34 = *(v5 + 16);
  switch(v34)
  {
    case -536870144:
LABEL_59:
      v35 = *(v5 + 14);
      v36 = dispatch_group_create();
      v37 = v5[11];
      if (v37)
      {
        if (v36)
        {
          dispatch_retain(v36);
          dispatch_group_enter(v36);
          v37 = v5[11];
        }

        *buf = v36;
        (*(v37 + 16))(v37, v35, buf);
        if (*buf)
        {
          dispatch_group_leave(*buf);
          if (*buf)
          {
            dispatch_release(*buf);
          }
        }
      }

      v38 = v5[1];
      if (!v38 || (v39 = *v5, (v40 = std::__shared_weak_count::lock(v38)) == 0))
      {
        std::__throw_bad_weak_ptr[abi:ne200100]();
      }

      v41 = v40;
      atomic_fetch_add_explicit(&v40->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      if (!atomic_fetch_add(&v40->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v40->__on_zero_shared)(v40);
        std::__shared_weak_count::__release_weak(v41);
      }

      block[0] = MEMORY[0x29EDCA5F8];
      block[1] = 1174405120;
      block[2] = ___ZN12PowerManager5State28handlePowerNotification_syncEN8dispatch5blockIU13block_pointerFvbEEEj_block_invoke;
      block[3] = &__block_descriptor_tmp_26_0;
      block[4] = v5;
      object = v36;
      if (v36)
      {
        dispatch_retain(v36);
      }

      if (v9)
      {
        v42 = _Block_copy(v9);
      }

      else
      {
        v42 = 0;
      }

      aBlock = v42;
      v54 = v39;
      v55 = v41;
      atomic_fetch_add_explicit(&v41->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v56 = v35;
      dispatch_group_notify(v36, v5[2], block);
      if (v55)
      {
        std::__shared_weak_count::__release_weak(v55);
      }

      if (aBlock)
      {
        _Block_release(aBlock);
      }

      if (object)
      {
        dispatch_release(object);
      }

      std::__shared_weak_count::__release_weak(v41);
      if (v36)
      {
        dispatch_release(v36);
      }

      goto LABEL_87;
    case -536870256:
      (*(v9 + 2))(v9, 1);
      v43 = v5[25];
      if (v43)
      {
        v44 = v5[4];
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          *&buf[4] = v43;
          _os_log_impl(&dword_297288000, v44, OS_LOG_TYPE_DEFAULT, "#I Allowing deferred work to run (after WillNotSleep); count=%zd", buf, 0xCu);
        }

        v46 = v5[24];
        v45 = v5 + 24;
        std::__tree<std::__value_type<std::string,dispatch::group_session>,std::__map_value_compare<std::string,std::__value_type<std::string,dispatch::group_session>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dispatch::group_session>>>::destroy(v46);
        *v45 = 0;
        v45[1] = 0;
        *(v45 - 1) = v45;
      }

      break;
    case -536870272:
      goto LABEL_59;
    default:
      (*(v9 + 2))(v9, 1);
      break;
  }

LABEL_88:
  _Block_release(v9);
LABEL_89:
  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

LABEL_91:
  v47 = *MEMORY[0x29EDCA608];
}

void sub_29733B46C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, dispatch_group_t group)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_40c45_ZTSNSt3__18weak_ptrIN12PowerManager5StateEEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c45_ZTSNSt3__18weak_ptrIN12PowerManager5StateEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZN12PowerManager5State4initEv_block_invoke_11(void *a1, int a2)
{
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (a1[5])
      {
        v8[0] = MEMORY[0x29EDCA5F8];
        v8[1] = 0x40000000;
        v8[2] = ___ZN12PowerManager5State4initEv_block_invoke_2_12;
        v8[3] = &__block_descriptor_tmp_14;
        v8[4] = v5;
        v9 = a2;
        ctu::SharedSynchronizable<PowerManager::State>::execute_wrapped(v5, v8);
      }

      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
      }
    }
  }
}

void ___ZN12PowerManager5State4initEv_block_invoke_2_12(uint64_t a1)
{
  if (*(a1 + 40) == 524466)
  {
    PowerStats::submitLowPowerStatsMetric_sync(*(*(a1 + 32) + 72));
  }
}

void ___ZN12PowerManager5State28handlePowerNotification_syncEN8dispatch5blockIU13block_pointerFvbEEEj_block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  (*(*(a1 + 48) + 16))();
  v3 = *(a1 + 64);
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      if (*(a1 + 56))
      {
        if (*(a1 + 72) == 1)
        {
          v5 = v2[25];
          if (v5)
          {
            v6 = v4;
            v7 = v2[4];
            if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
            {
              v12 = 134217984;
              v13 = v5;
              _os_log_impl(&dword_297288000, v7, OS_LOG_TYPE_DEFAULT, "#I Allowing deferred work to run; count=%zd", &v12, 0xCu);
            }

            v9 = v2[24];
            v8 = v2 + 24;
            std::__tree<std::__value_type<std::string,dispatch::group_session>,std::__map_value_compare<std::string,std::__value_type<std::string,dispatch::group_session>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dispatch::group_session>>>::destroy(v9);
            *v8 = 0;
            v8[1] = 0;
            *(v8 - 1) = v8;
            v4 = v6;
          }
        }
      }

      if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v10 = v4;
        (v4->__on_zero_shared)();
        std::__shared_weak_count::__release_weak(v10);
      }
    }
  }

  v11 = *MEMORY[0x29EDCA608];
}

void *__copy_helper_block_e8_40c21_ZTSN8dispatch5groupE48c43_ZTSN8dispatch5blockIU13block_pointerFvbEEE56c45_ZTSNSt3__18weak_ptrIN12PowerManager5StateEEE(void *a1, void *a2)
{
  v4 = a2[5];
  a1[5] = v4;
  if (v4)
  {
    dispatch_retain(v4);
  }

  result = a2[6];
  if (result)
  {
    result = _Block_copy(result);
  }

  v7 = a2[7];
  v6 = a2[8];
  a1[6] = result;
  a1[7] = v7;
  a1[8] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_40c21_ZTSN8dispatch5groupE48c43_ZTSN8dispatch5blockIU13block_pointerFvbEEE56c45_ZTSNSt3__18weak_ptrIN12PowerManager5StateEEE(void *a1)
{
  v2 = a1[8];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = a1[5];
  if (v4)
  {

    dispatch_release(v4);
  }
}

void ctu::power::manager::parameters::~parameters(void **this)
{
  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
    v2 = this[3];
    if (!v2)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v2 = this[3];
  if (v2)
  {
LABEL_5:
    _Block_release(v2);
  }

LABEL_6:
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

void ctu::SharedSynchronizable<PowerManager::State>::execute_wrapped(uint64_t *a1, uint64_t a2)
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
  block[2] = ___ZNK3ctu20SharedSynchronizableIN12PowerManager5StateEE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_2A1E39390;
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

uint64_t __copy_helper_block_e8_40c49_ZTSNSt3__110shared_ptrIKN12PowerManager5StateEEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c49_ZTSNSt3__110shared_ptrIKN12PowerManager5StateEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZN12PowerManager5State22registerForPowerEventsEN8dispatch5blockIU13block_pointerFv10PowerStateNS1_13group_sessionEEEE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  if (v1)
  {
    v1 = _Block_copy(v1);
  }

  v3 = *(v2 + 88);
  *(v2 + 88) = v1;
  if (v3)
  {
    _Block_release(v3);
  }
}

void *__copy_helper_block_e8_40c73_ZTSN8dispatch5blockIU13block_pointerFv10PowerStateNS_13group_sessionEEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 40) = result;
  return result;
}

void __destroy_helper_block_e8_40c73_ZTSN8dispatch5blockIU13block_pointerFv10PowerStateNS_13group_sessionEEEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    _Block_release(v1);
  }
}

void dispatch::async<void ctu::SharedSynchronizable<PowerManager::State>::execute_wrapped<PowerManager::State::createPowerAssertion(std::string,std::chrono::duration<long long,std::ratio<1l,1000l>>)::{lambda(void)#1}>(PowerManager::State::createPowerAssertion(std::string,std::chrono::duration<long long,std::ratio<1l,1000l>>)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<PowerManager::State::createPowerAssertion(std::string,std::chrono::duration<long long,std::ratio<1l,1000l>>)::{lambda(void)#1},std::default_delete<PowerManager::State::createPowerAssertion(std::string,std::chrono::duration<long long,std::ratio<1l,1000l>>)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(uint64_t ***a1)
{
  v179 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  v2 = **a1;
  v3 = (*a1)[4] / 1000 + 60;
  v169 = 0xAAAAAAAAAAAAAAAALL;
  v170 = 0xAAAAAAAAAAAAAAAALL;
  pthread_mutex_lock(&ctu::Singleton<ctu::power::assertion,ctu::power::assertion,ctu::PthreadMutexGuardPolicy<ctu::power::assertion>>::sInstance);
  v4 = qword_2A1399588;
  if (qword_2A1399588)
  {
    goto LABEL_12;
  }

  v5 = operator new(0x38uLL);
  MEMORY[0x29C26E280]();
  v6 = operator new(0x20uLL);
  v6->__shared_owners_ = 0;
  p_shared_owners = &v6->__shared_owners_;
  v6->__vftable = &unk_2A1E39430;
  v6->__shared_weak_owners_ = 0;
  v6[1].__vftable = v5;
  v8 = v5->~__shared_weak_count_0;
  if (v8)
  {
    if (v8->__shared_owners_ != -1)
    {
      goto LABEL_8;
    }

    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v5->~__shared_weak_count = v5;
    v5->~__shared_weak_count_0 = v6;
    std::__shared_weak_count::__release_weak(v8);
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_8;
    }
  }

  else
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v5->~__shared_weak_count = v5;
    v5->~__shared_weak_count_0 = v6;
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_8;
    }
  }

  (v6->__on_zero_shared)(v6);
  std::__shared_weak_count::__release_weak(v6);
LABEL_8:
  v9 = off_2A1399590;
  qword_2A1399588 = v5;
  off_2A1399590 = v6;
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  v4 = qword_2A1399588;
LABEL_12:
  v10 = off_2A1399590;
  buf.__r_.__value_.__r.__words[0] = v4;
  buf.__r_.__value_.__l.__size_ = off_2A1399590;
  if (off_2A1399590)
  {
    atomic_fetch_add_explicit(off_2A1399590 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ctu::power::assertion,ctu::power::assertion,ctu::PthreadMutexGuardPolicy<ctu::power::assertion>>::sInstance);
  v166 = (v1 + 1);
  ctu::power::assertion::createInternal();
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
    v11 = v169;
    if (v169)
    {
      goto LABEL_17;
    }

LABEL_58:
    v33 = v2[4];
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = v1 + 1;
      if (*(v1 + 31) < 0)
      {
        v34 = *v166;
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
      *(buf.__r_.__value_.__r.__words + 4) = v34;
      _os_log_error_impl(&dword_297288000, v33, OS_LOG_TYPE_ERROR, "Failed to create power assertion '%s'", &buf, 0xCu);
    }

    goto LABEL_331;
  }

  v11 = v169;
  if (!v169)
  {
    goto LABEL_58;
  }

LABEL_17:
  v160 = v11;
  v164 = v2;
  v14 = v2[18];
  v13 = (v2 + 18);
  v12 = v14;
  v162 = (v13 - 1);
  if (!v14)
  {
    v19 = v13;
    if (*(v13 - 1) == v13)
    {
      v35 = 0;
      v19 = v13;
      v36 = v13;
      if (*v13)
      {
        goto LABEL_134;
      }

      goto LABEL_122;
    }

    goto LABEL_71;
  }

  v15 = *(v1 + 31);
  v16 = v1[2];
  v156 = v1[1];
  if ((v15 & 0x80u) == 0)
  {
    v17 = (v1 + 1);
  }

  else
  {
    v17 = v1[1];
  }

  if ((v15 & 0x80u) == 0)
  {
    v18 = *(v1 + 31);
  }

  else
  {
    v18 = v1[2];
  }

  v19 = v13;
  v20 = v12;
  do
  {
    while (1)
    {
      v21 = *(v20 + 55);
      v22 = v21 >= 0 ? v20 + 4 : v20[4];
      v23 = v21 >= 0 ? *(v20 + 55) : v20[5];
      v24 = v18 >= v23 ? v23 : v18;
      v25 = memcmp(v22, v17, v24);
      if (v25)
      {
        break;
      }

      if (v23 >= v18)
      {
        goto LABEL_39;
      }

LABEL_25:
      v20 = v20[1];
      if (!v20)
      {
        goto LABEL_40;
      }
    }

    if (v25 < 0)
    {
      goto LABEL_25;
    }

LABEL_39:
    v19 = v20;
    v20 = *v20;
  }

  while (v20);
LABEL_40:
  if (v19 != v13)
  {
    v26 = *(v19 + 55);
    if (v26 >= 0)
    {
      v27 = (v19 + 4);
    }

    else
    {
      v27 = v19[4];
    }

    if (v26 >= 0)
    {
      v28 = *(v19 + 55);
    }

    else
    {
      v28 = v19[5];
    }

    if (v28 >= v18)
    {
      v29 = v18;
    }

    else
    {
      v29 = v28;
    }

    v30 = memcmp(v17, v27, v29);
    if (v30)
    {
      if ((v30 & 0x80000000) == 0)
      {
LABEL_52:
        v31 = v170;
        if (v170)
        {
          atomic_fetch_add_explicit((v170 + 8), 1uLL, memory_order_relaxed);
        }

        v32 = v19[8];
        v19[7] = v160;
        v19[8] = v31;
        if (v32 && !atomic_fetch_add(&v32->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v32->__on_zero_shared)(v32);
          std::__shared_weak_count::__release_weak(v32);
        }

        goto LABEL_134;
      }
    }

    else if (v18 >= v28)
    {
      goto LABEL_52;
    }
  }

  v35 = *v19;
  if (v162->__vftable == v19)
  {
    v36 = v19;
    if (v35)
    {
      v13 = v19 + 1;
    }

    else
    {
      v13 = v19;
    }

    if (*v13)
    {
      goto LABEL_134;
    }

LABEL_122:
    if (v35)
    {
      v47 = v36;
    }

    else
    {
      v47 = v19;
    }

    v54 = *(v1 + 31);
    goto LABEL_128;
  }

  if (!v35)
  {
LABEL_71:
    v36 = v19;
    do
    {
      v40 = v36;
      v36 = v36[2];
    }

    while (*v36 == v40);
    v35 = 0;
    v15 = *(v1 + 31);
    v39 = v1[1];
    v16 = v1[2];
    v38 = *(v1 + 31);
    goto LABEL_74;
  }

  v37 = *v19;
  do
  {
    v36 = v37;
    v37 = v37[1];
  }

  while (v37);
  v38 = v15;
  v39 = v156;
LABEL_74:
  v41 = *(v36 + 55);
  if (v41 >= 0)
  {
    v42 = (v36 + 4);
  }

  else
  {
    v42 = v36[4];
  }

  if (v41 >= 0)
  {
    v43 = *(v36 + 55);
  }

  else
  {
    v43 = v36[5];
  }

  v158 = v38;
  if (v38 >= 0)
  {
    v44 = (v1 + 1);
  }

  else
  {
    v44 = v39;
  }

  if (v38 < 0)
  {
    v15 = v16;
  }

  if (v15 >= v43)
  {
    v45 = v43;
  }

  else
  {
    v45 = v15;
  }

  v46 = memcmp(v42, v44, v45);
  if (!v46)
  {
    if (v43 >= v15)
    {
      goto LABEL_90;
    }

    goto LABEL_113;
  }

  if (v46 < 0)
  {
LABEL_113:
    if (v35)
    {
      v13 = v36 + 1;
    }

    else
    {
      v13 = v19;
    }

    if (*v13)
    {
      goto LABEL_134;
    }

    goto LABEL_122;
  }

LABEL_90:
  if (!v12)
  {
    v47 = v13;
    goto LABEL_127;
  }

  while (2)
  {
    while (2)
    {
      v47 = v12;
      v48 = *(v12 + 55);
      if (v48 >= 0)
      {
        v49 = v12 + 4;
      }

      else
      {
        v49 = v12[4];
      }

      if (v48 >= 0)
      {
        v50 = *(v12 + 55);
      }

      else
      {
        v50 = v12[5];
      }

      if (v50 >= v15)
      {
        v51 = v15;
      }

      else
      {
        v51 = v50;
      }

      v52 = memcmp(v44, v49, v51);
      if (v52)
      {
        if (v52 < 0)
        {
          break;
        }

        goto LABEL_106;
      }

      if (v15 >= v50)
      {
LABEL_106:
        v53 = memcmp(v49, v44, v51);
        if (v53)
        {
          if ((v53 & 0x80000000) == 0)
          {
            goto LABEL_134;
          }
        }

        else if (v50 >= v15)
        {
          goto LABEL_134;
        }

        v12 = v47[1];
        if (!v12)
        {
          v13 = v47 + 1;
          goto LABEL_127;
        }

        continue;
      }

      break;
    }

    v12 = *v47;
    if (*v47)
    {
      continue;
    }

    break;
  }

  v13 = v47;
LABEL_127:
  v54 = v158;
LABEL_128:
  v55 = operator new(0x48uLL);
  v56 = v55;
  buf.__r_.__value_.__r.__words[0] = v55;
  *&buf.__r_.__value_.__r.__words[1] = v162;
  if (v54 < 0)
  {
    std::string::__init_copy_ctor_external((v55 + 32), v1[1], v1[2]);
    v58 = v170;
    v56[7] = v169;
    v56[8] = v58;
    if (v58)
    {
LABEL_130:
      atomic_fetch_add_explicit((v58 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v57 = *v166;
    *(v55 + 6) = v1[3];
    *(v55 + 2) = v57;
    v58 = v170;
    *(v55 + 7) = v160;
    *(v55 + 8) = v58;
    if (v58)
    {
      goto LABEL_130;
    }
  }

  *v56 = 0;
  v56[1] = 0;
  v56[2] = v47;
  *v13 = v56;
  v59 = v162->~__shared_weak_count;
  if (v59)
  {
    v162->__vftable = v59;
  }

  std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v164[18], v56);
  ++v164[19];
LABEL_134:
  v60 = *(v169 + 32);
  v61 = *(v164 + 14);
  v62 = v164[4];
  v63 = os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT);
  if (!v61)
  {
    if (!v63)
    {
LABEL_149:
      v71 = v164[12];
      if (v71)
      {
        (*(v71 + 16))(v71, 1);
        v72 = v164[12];
        v164[12] = 0;
        if (v72)
        {
          _Block_release(v72);
        }

        v73 = v164[4];
        if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf.__r_.__value_.__l.__data_) = 0;
          v60 = 2;
          _os_log_impl(&dword_297288000, v73, OS_LOG_TYPE_DEFAULT, "#I Assertion held, but action will be deferred; acknowledging previous notification", &buf, 2u);
          v66 = v164[9];
          if (*(v1 + 31) < 0)
          {
            goto LABEL_139;
          }
        }

        else
        {
          v60 = 2;
          v66 = v164[9];
          if (*(v1 + 31) < 0)
          {
            goto LABEL_139;
          }
        }

        goto LABEL_157;
      }

      v60 = 2;
      goto LABEL_156;
    }

    v67 = (v1 + 1);
    if (*(v1 + 31) < 0)
    {
      v67 = *v166;
      v68 = v1[4];
      v69 = *(v164 + 15);
      if (v69 <= 2)
      {
        goto LABEL_143;
      }
    }

    else
    {
      v68 = v1[4];
      v69 = *(v164 + 15);
      if (v69 <= 2)
      {
LABEL_143:
        v70 = off_29EE67E18[v69];
LABEL_148:
        LODWORD(buf.__r_.__value_.__l.__data_) = 136316162;
        *(buf.__r_.__value_.__r.__words + 4) = v67;
        WORD2(buf.__r_.__value_.__r.__words[1]) = 2048;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = v68;
        HIWORD(buf.__r_.__value_.__r.__words[2]) = 1024;
        *group = v60;
        *&group[4] = 1024;
        *&group[6] = 2;
        *&group[10] = 2080;
        *&group[12] = v70;
        _os_log_impl(&dword_297288000, v62, OS_LOG_TYPE_DEFAULT, "#I Power assertion created for '%s' during sleep; Timeout (millisec): %llu, Status = %d, Override = %d; Sleep state: %s", &buf, 0x2Cu);
        goto LABEL_149;
      }
    }

    v70 = "Unknown";
    goto LABEL_148;
  }

  if (!v63)
  {
LABEL_156:
    v66 = v164[9];
    if (*(v1 + 31) < 0)
    {
      goto LABEL_139;
    }

    goto LABEL_157;
  }

  v64 = (v1 + 1);
  if (*(v1 + 31) < 0)
  {
    v64 = *v166;
  }

  v65 = v1[4];
  LODWORD(buf.__r_.__value_.__l.__data_) = 136315650;
  *(buf.__r_.__value_.__r.__words + 4) = v64;
  WORD2(buf.__r_.__value_.__r.__words[1]) = 2048;
  *(&buf.__r_.__value_.__r.__words[1] + 6) = v65;
  HIWORD(buf.__r_.__value_.__r.__words[2]) = 1024;
  *group = v60;
  _os_log_impl(&dword_297288000, v62, OS_LOG_TYPE_DEFAULT, "#I Power assertion created for '%s'; Timeout (millisec): %llu, Status = %d", &buf, 0x1Cu);
  v66 = v164[9];
  if (*(v1 + 31) < 0)
  {
LABEL_139:
    std::string::__init_copy_ctor_external(&v168, v1[1], v1[2]);
    goto LABEL_158;
  }

LABEL_157:
  v74 = *v166;
  v168.__r_.__value_.__r.__words[2] = v1[3];
  *&v168.__r_.__value_.__l.__data_ = v74;
LABEL_158:
  PowerStats::gotAssertion(v66, &v168, v60);
  if ((SHIBYTE(v168.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (v60 == 2)
    {
      goto LABEL_160;
    }

LABEL_163:
    if (v1[4] < 1)
    {
      goto LABEL_331;
    }

    v76 = v164[1];
    if (!v76 || (v77 = *v164, (v78 = std::__shared_weak_count::lock(v76)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v79 = v78;
    p_shared_weak_owners = &v78->__shared_weak_owners_;
    atomic_fetch_add_explicit(&v78->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v78->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v78->__on_zero_shared)(v78);
      std::__shared_weak_count::__release_weak(v79);
    }

    v81 = *(v1 + 8);
    buf.__r_.__value_.__r.__words[0] = MEMORY[0x29EDCA5F8];
    buf.__r_.__value_.__l.__size_ = 1174405120;
    buf.__r_.__value_.__r.__words[2] = ___ZZN12PowerManager5State20createPowerAssertionENSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEENS1_6chrono8durationIxNS1_5ratioILl1ELl1000EEEEEENKUlvE_clEv_block_invoke;
    *group = &__block_descriptor_tmp_31_0;
    *&group[8] = v164;
    *&group[16] = v77;
    v176 = v79;
    atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
    v163 = v79;
    if (*(v1 + 31) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v1[1], v1[2]);
    }

    else
    {
      v82 = *v166;
      __p.__r_.__value_.__r.__words[2] = v1[3];
      *&__p.__r_.__value_.__l.__data_ = v82;
    }

    v178 = v1[4];
    v102 = operator new(0x10uLL);
    v103 = _Block_copy(&buf);
    *v102 = "Watchdog timed out";
    TelephonyBasebandWatchdogStart();
    v159 = v102;
    v167 = v102;
    if (v103)
    {
      _Block_release(v103);
    }

    v104 = (v164 + 21);
    v105 = v164[21];
    v161 = (v164 + 20);
    if (!v105)
    {
      v110 = (v164 + 21);
      if (v164[20] == v104)
      {
        v124 = 0;
        v110 = (v164 + 21);
        v125 = v164 + 21;
        goto LABEL_308;
      }

      goto LABEL_264;
    }

    v106 = *(v1 + 31);
    v107 = v1[2];
    v155 = v1[1];
    if ((v106 & 0x80u) == 0)
    {
      v108 = (v1 + 1);
    }

    else
    {
      v108 = v1[1];
    }

    if ((v106 & 0x80u) == 0)
    {
      v109 = *(v1 + 31);
    }

    else
    {
      v109 = v1[2];
    }

    v110 = (v164 + 21);
    v111 = v164[21];
    while (1)
    {
      v112 = *(v111 + 55);
      if (v112 >= 0)
      {
        v113 = v111 + 4;
      }

      else
      {
        v113 = v111[4];
      }

      if (v112 >= 0)
      {
        v114 = *(v111 + 55);
      }

      else
      {
        v114 = v111[5];
      }

      if (v109 >= v114)
      {
        v115 = v114;
      }

      else
      {
        v115 = v109;
      }

      v116 = memcmp(v113, v108, v115);
      if (v116)
      {
        if (v116 < 0)
        {
          goto LABEL_226;
        }
      }

      else if (v114 < v109)
      {
LABEL_226:
        v111 = v111[1];
        if (!v111)
        {
          goto LABEL_241;
        }

        continue;
      }

      v110 = v111;
      v111 = *v111;
      if (!v111)
      {
LABEL_241:
        if (v110 != v104)
        {
          v117 = *(v110 + 55);
          if (v117 >= 0)
          {
            v118 = (v110 + 4);
          }

          else
          {
            v118 = v110[4];
          }

          if (v117 >= 0)
          {
            v119 = *(v110 + 55);
          }

          else
          {
            v119 = v110[5];
          }

          if (v119 >= v109)
          {
            v120 = v109;
          }

          else
          {
            v120 = v119;
          }

          v121 = memcmp(v108, v118, v120);
          if (v121)
          {
            if ((v121 & 0x80000000) == 0)
            {
LABEL_253:
              v122 = operator new(0x20uLL);
              *v122 = &unk_2A1E39480;
              v122[1] = 0;
              v122[2] = 0;
              v122[3] = v159;
              v167 = 0;
              v123 = v110[8];
              v110[7] = v159;
              v110[8] = v122;
              if (v123 && !atomic_fetch_add(&v123->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v123->__on_zero_shared)(v123);
                std::__shared_weak_count::__release_weak(v123);
              }

              goto LABEL_324;
            }
          }

          else if (v109 >= v119)
          {
            goto LABEL_253;
          }
        }

        v124 = *v110;
        if (*v161 == v110)
        {
          v125 = v110;
          goto LABEL_308;
        }

        if (v124)
        {
          v126 = *v110;
          do
          {
            v125 = v126;
            v126 = v126[1];
          }

          while (v126);
          v127 = v106;
          v128 = v155;
LABEL_267:
          v130 = *(v125 + 55);
          if (v130 >= 0)
          {
            v131 = v125 + 4;
          }

          else
          {
            v131 = v125[4];
          }

          if (v130 >= 0)
          {
            v132 = *(v125 + 55);
          }

          else
          {
            v132 = v125[5];
          }

          v157 = v127;
          if (v127 >= 0)
          {
            v133 = (v1 + 1);
          }

          else
          {
            v133 = v128;
          }

          if (v127 >= 0)
          {
            v107 = v106;
          }

          if (v107 >= v132)
          {
            v134 = v132;
          }

          else
          {
            v134 = v107;
          }

          v135 = memcmp(v131, v133, v134);
          if (v135)
          {
            if (v135 < 0)
            {
              goto LABEL_308;
            }

LABEL_285:
            v136 = (v164 + 21);
            v137 = v164;
            if (!v105)
            {
LABEL_315:
              v144 = *(v1 + 31);
              goto LABEL_318;
            }

            while (1)
            {
              v136 = v105;
              v138 = *(v105 + 55);
              if (v138 >= 0)
              {
                v139 = v105 + 4;
              }

              else
              {
                v139 = v105[4];
              }

              if (v138 >= 0)
              {
                v140 = *(v105 + 55);
              }

              else
              {
                v140 = v105[5];
              }

              if (v140 >= v107)
              {
                v141 = v107;
              }

              else
              {
                v141 = v140;
              }

              v142 = memcmp(v133, v139, v141);
              if (v142)
              {
                if ((v142 & 0x80000000) == 0)
                {
                  goto LABEL_301;
                }
              }

              else if (v107 >= v140)
              {
LABEL_301:
                v143 = memcmp(v139, v133, v141);
                if (v143)
                {
                  if ((v143 & 0x80000000) == 0)
                  {
                    goto LABEL_324;
                  }
                }

                else if (v140 >= v107)
                {
                  goto LABEL_324;
                }

                v105 = v136[1];
                if (!v105)
                {
                  v104 = v136 + 1;
                  goto LABEL_317;
                }

                continue;
              }

              v105 = *v136;
              if (!*v136)
              {
                v104 = v136;
LABEL_317:
                v144 = v157;
LABEL_318:
                v145 = operator new(0x48uLL);
                v146 = v145;
                v171 = v145;
                v172 = v164 + 20;
                v173 = 0;
                if (v144 < 0)
                {
                  std::string::__init_copy_ctor_external((v145 + 32), v1[1], v1[2]);
                }

                else
                {
                  v147 = *v166;
                  *(v145 + 6) = v1[3];
                  *(v145 + 2) = v147;
                }

                v146[7] = v159;
                v148 = operator new(0x20uLL);
                *v148 = &unk_2A1E39480;
                v148[1] = 0;
                v148[2] = 0;
                v148[3] = v159;
                v146[8] = v148;
                v167 = 0;
                *v146 = 0;
                v146[1] = 0;
                v146[2] = v136;
                *v104 = v146;
                v149 = **v161;
                if (v149)
                {
                  *v161 = v149;
                }

                std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v137[21], v146);
                ++v137[22];
LABEL_324:
                if (v167)
                {
                  TelephonyBasebandWatchdogStop();
                  operator delete(v167);
                }

                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                }

                if (v176)
                {
                  std::__shared_weak_count::__release_weak(v176);
                }

                std::__shared_weak_count::__release_weak(v163);
                goto LABEL_331;
              }
            }
          }

          if (v132 >= v107)
          {
            goto LABEL_285;
          }

LABEL_308:
          if (v124)
          {
            v136 = v125;
          }

          else
          {
            v136 = v110;
          }

          if (v124)
          {
            v104 = (v125 + 1);
          }

          else
          {
            v104 = v110;
          }

          v137 = v164;
          if (*v104)
          {
            goto LABEL_324;
          }

          goto LABEL_315;
        }

LABEL_264:
        v125 = v110;
        do
        {
          v129 = v125;
          v125 = v125[2];
        }

        while (*v125 == v129);
        v124 = 0;
        v106 = *(v1 + 31);
        v128 = v1[1];
        v107 = v1[2];
        v127 = *(v1 + 31);
        goto LABEL_267;
      }
    }
  }

  operator delete(v168.__r_.__value_.__l.__data_);
  if (v60 != 2)
  {
    goto LABEL_163;
  }

LABEL_160:
  if (*(v1 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&buf, v1[1], v1[2]);
  }

  else
  {
    v75 = *v166;
    buf.__r_.__value_.__r.__words[2] = v1[3];
    *&buf.__r_.__value_.__l.__data_ = v75;
  }

  v83 = v1[5];
  *group = v83;
  if (v83)
  {
    dispatch_retain(v83);
    if (*group)
    {
      dispatch_group_enter(*group);
    }
  }

  v84 = v164[24];
  if (!v84)
  {
    v87 = (v164 + 24);
    v88 = (v164 + 24);
    goto LABEL_202;
  }

  if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_buf = &buf;
  }

  else
  {
    p_buf = buf.__r_.__value_.__r.__words[0];
  }

  if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(buf.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = buf.__r_.__value_.__l.__size_;
  }

  do
  {
    while (2)
    {
      v88 = v84;
      v91 = v84[4];
      v89 = v84 + 4;
      v90 = v91;
      v92 = *(v89 + 23);
      if (v92 >= 0)
      {
        v93 = v89;
      }

      else
      {
        v93 = v90;
      }

      if (v92 >= 0)
      {
        v94 = *(v89 + 23);
      }

      else
      {
        v94 = v89[1];
      }

      if (v94 >= size)
      {
        v95 = size;
      }

      else
      {
        v95 = v94;
      }

      v96 = memcmp(p_buf, v93, v95);
      if (v96)
      {
        if (v96 < 0)
        {
          goto LABEL_181;
        }
      }

      else if (size < v94)
      {
LABEL_181:
        v84 = *v88;
        v87 = v88;
        if (!*v88)
        {
          goto LABEL_202;
        }

        continue;
      }

      break;
    }

    v97 = memcmp(v93, p_buf, v95);
    if (v97)
    {
      if ((v97 & 0x80000000) == 0)
      {
        goto LABEL_208;
      }
    }

    else if (v94 >= size)
    {
      goto LABEL_208;
    }

    v84 = v88[1];
  }

  while (v84);
  v87 = v88 + 1;
LABEL_202:
  v98 = operator new(0x40uLL);
  v99 = v98;
  v100 = (v164 + 23);
  v171 = v98;
  v172 = v164 + 23;
  v173 = 0;
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((v98 + 32), buf.__r_.__value_.__l.__data_, buf.__r_.__value_.__l.__size_);
  }

  else
  {
    *(v98 + 32) = buf;
  }

  v99[7] = *group;
  *group = 0;
  *v99 = 0;
  v99[1] = 0;
  v99[2] = v88;
  *v87 = v99;
  v101 = **v100;
  if (v101)
  {
    *v100 = v101;
  }

  std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v164[24], v99);
  ++v164[25];
LABEL_208:
  if (*group)
  {
    dispatch_group_leave(*group);
    if (*group)
    {
      dispatch_release(*group);
    }
  }

  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

LABEL_331:
  v150 = v170;
  if (v170 && !atomic_fetch_add((v170 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v150->__on_zero_shared)(v150);
    std::__shared_weak_count::__release_weak(v150);
  }

  v151 = v1[5];
  if (v151)
  {
    dispatch_group_leave(v151);
    v152 = v1[5];
    if (v152)
    {
      dispatch_release(v152);
    }
  }

  if (*(v1 + 31) < 0)
  {
    operator delete(*v166);
  }

  operator delete(v1);
  v153 = a1[2];
  if (v153 && !atomic_fetch_add(&v153->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v153->__on_zero_shared)(v153);
    std::__shared_weak_count::__release_weak(v153);
  }

  v154 = *MEMORY[0x29EDCA608];

  operator delete(a1);
}

void sub_29733CD34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v9 = va_arg(va1, void *);
  __cxa_end_catch();
  pthread_mutex_unlock(&ctu::Singleton<ctu::power::assertion,ctu::power::assertion,ctu::PthreadMutexGuardPolicy<ctu::power::assertion>>::sInstance);
  std::unique_ptr<PowerManager::State::createPowerAssertion(std::string,std::chrono::duration<long long,std::ratio<1l,1000l>>)::{lambda(void)#1},std::default_delete<PowerManager::State::createPowerAssertion(std::string,std::chrono::duration<long long,std::ratio<1l,1000l>>)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](va1);
  std::unique_ptr<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>(WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](va);
  JUMPOUT(0x29733CDD0);
}

void sub_29733CD68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va2, a9);
  va_start(va1, a9);
  va_start(va, a9);
  v9 = va_arg(va1, void *);
  va_copy(va2, va1);
  v11 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  v14 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  v16 = va_arg(va2, void);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](va2);
  std::unique_ptr<PowerManager::State::createPowerAssertion(std::string,std::chrono::duration<long long,std::ratio<1l,1000l>>)::{lambda(void)#1},std::default_delete<PowerManager::State::createPowerAssertion(std::string,std::chrono::duration<long long,std::ratio<1l,1000l>>)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](va1);
  std::unique_ptr<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>(WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](va);
  JUMPOUT(0x29733CDD0);
}

void sub_29733CD74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](va);
  JUMPOUT(0x29733CDC0);
}

void sub_29733CD7C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](&a27);
  JUMPOUT(0x29733CDC0);
}

void sub_29733CD9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](&a29);
  std::unique_ptr<PowerManager::State::createPowerAssertion(std::string,std::chrono::duration<long long,std::ratio<1l,1000l>>)::{lambda(void)#1},std::default_delete<PowerManager::State::createPowerAssertion(std::string,std::chrono::duration<long long,std::ratio<1l,1000l>>)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&a19);
  std::unique_ptr<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>(WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a18);
  JUMPOUT(0x29733CDD0);
}

void sub_29733CDAC(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ___ZZN12PowerManager5State20createPowerAssertionENSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEENS1_6chrono8durationIxNS1_5ratioILl1ELl1000EEEEEENKUlvE_clEv_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = std::__shared_weak_count::lock(v2);
    v19 = v4;
    if (v4)
    {
      v5 = *(a1 + 40);
      v18 = v5;
      if (!v5)
      {
LABEL_18:
        if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v14 = v4;
          (v4->__on_zero_shared)();
          std::__shared_weak_count::__release_weak(v14);
        }

        return;
      }

      v15 = v3;
      if (*(a1 + 79) < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *(a1 + 56), *(a1 + 64));
      }

      else
      {
        __p = *(a1 + 56);
      }

      v17 = *(a1 + 80);
      v6 = v5[1];
      if (!v6 || (v7 = *v5, (v8 = std::__shared_weak_count::lock(v6)) == 0))
      {
        std::__throw_bad_weak_ptr[abi:ne200100]();
      }

      v9 = v8;
      v10 = operator new(0x28uLL);
      *v10 = v15;
      v11 = (v10 + 1);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(v11, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
      }

      else
      {
        *&v11->__r_.__value_.__l.__data_ = *&__p.__r_.__value_.__l.__data_;
        v10[3] = *(&__p.__r_.__value_.__l + 2);
      }

      v10[4] = v17;
      v12 = v5[2];
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      v13 = operator new(0x18uLL);
      *v13 = v10;
      v13[1] = v7;
      v13[2] = v9;
      dispatch_async_f(v12, v13, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableIN12PowerManager5StateEE15execute_wrappedIZZZNS4_20createPowerAssertionENSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEENS7_6chrono8durationIxNS7_5ratioILl1ELl1000EEEEEENKUlvE_clEvEUb_EUlvE_EEvOT_EUlvE_EEvP16dispatch_queue_sNS7_10unique_ptrISL_NS7_14default_deleteISL_EEEEENUlPvE_8__invokeESU_);
      if (atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_14:
          v4 = v19;
          if (!v19)
          {
            return;
          }

          goto LABEL_18;
        }
      }

      operator delete(__p.__r_.__value_.__l.__data_);
      v4 = v19;
      if (!v19)
      {
        return;
      }

      goto LABEL_18;
    }
  }
}

void sub_29733CFC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void __copy_helper_block_e8_40c45_ZTSNSt3__18weak_ptrIN12PowerManager5StateEEE56c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 79) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 56), *(a2 + 56), *(a2 + 64));
  }

  else
  {
    v3 = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 56) = v3;
  }
}

void sub_29733D04C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_40c45_ZTSNSt3__18weak_ptrIN12PowerManager5StateEEE56c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1)
{
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
    v2 = *(a1 + 48);
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = *(a1 + 48);
    if (!v2)
    {
      return;
    }
  }

  std::__shared_weak_count::__release_weak(v2);
}

void std::__shared_ptr_pointer<ctu::power::assertion *,std::shared_ptr<ctu::power::assertion> ctu::SharedSynchronizable<ctu::power::assertion>::make_shared_ptr<ctu::power::assertion>(ctu::power::assertion*)::{lambda(ctu::power::assertion *)#1},std::allocator<ctu::power::assertion>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<ctu::power::assertion *,std::shared_ptr<ctu::power::assertion> ctu::SharedSynchronizable<ctu::power::assertion>::make_shared_ptr<ctu::power::assertion>(ctu::power::assertion*)::{lambda(ctu::power::assertion *)#1},std::allocator<ctu::power::assertion>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableINS_5power9assertionEE15make_shared_ptrIS2_EENSt3__110shared_ptrIT_EEPS7_EUlPS2_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableINS_5power9assertionEE15make_shared_ptrIS2_EENSt3__110shared_ptrIT_EEPS7_EUlPS2_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableINS_5power9assertionEE15make_shared_ptrIS2_EENSt3__110shared_ptrIT_EEPS7_EUlPS2_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableINS_5power9assertionEE15make_shared_ptrIS2_EENSt3__110shared_ptrIT_EEPS7_EUlPS2_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void std::shared_ptr<ctu::power::assertion> ctu::SharedSynchronizable<ctu::power::assertion>::make_shared_ptr<ctu::power::assertion>(ctu::power::assertion*)::{lambda(ctu::power::assertion*)#1}::operator() const(ctu::power::assertion*)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,std::weak_ptr<ctu::power::assertion::HandleRaw>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::weak_ptr<ctu::power::assertion::HandleRaw>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::weak_ptr<ctu::power::assertion::HandleRaw>>>>::destroy(*(a1 + 40));
    v2 = *(a1 + 24);
    if (v2)
    {
      dispatch_release(v2);
    }

    v3 = *(a1 + 16);
    if (v3)
    {
      dispatch_release(v3);
    }

    v4 = *(a1 + 8);
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
    }

    operator delete(a1);
  }
}

void std::__tree<std::__value_type<std::string,std::weak_ptr<ctu::power::assertion::HandleRaw>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::weak_ptr<ctu::power::assertion::HandleRaw>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::weak_ptr<ctu::power::assertion::HandleRaw>>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,std::weak_ptr<ctu::power::assertion::HandleRaw>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::weak_ptr<ctu::power::assertion::HandleRaw>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::weak_ptr<ctu::power::assertion::HandleRaw>>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,std::weak_ptr<ctu::power::assertion::HandleRaw>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::weak_ptr<ctu::power::assertion::HandleRaw>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::weak_ptr<ctu::power::assertion::HandleRaw>>>>::destroy(*(a1 + 1));
    v2 = *(a1 + 8);
    if (v2)
    {
      std::__shared_weak_count::__release_weak(v2);
    }

    if (a1[55] < 0)
    {
      operator delete(*(a1 + 4));
      v3 = a1;
    }

    else
    {
      v3 = a1;
    }

    operator delete(v3);
  }
}

uint64_t *std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::shared_ptr<ctu::power::assertion::HandleRaw>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::shared_ptr<ctu::power::assertion::HandleRaw>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      v3 = *(v2 + 64);
      if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v6 = v2;
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        v2 = v6;
        if ((*(v6 + 55) & 0x80000000) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_6;
      }

      if (*(v2 + 55) < 0)
      {
LABEL_6:
        v4 = v2;
        operator delete(*(v2 + 32));
        v2 = v4;
      }
    }

LABEL_7:
    operator delete(v2);
  }

  return a1;
}

uint64_t *std::unique_ptr<std::__tree_node<std::__value_type<std::string,dispatch::group_session>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,dispatch::group_session>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*(result + 16) == 1)
    {
      v3 = *(v1 + 56);
      if (v3)
      {
        dispatch_group_leave(v3);
        v4 = *(v1 + 56);
        if (v4)
        {
          dispatch_release(v4);
        }
      }

      if (*(v1 + 55) < 0)
      {
        operator delete(*(v1 + 32));
      }
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableIN12PowerManager5StateEE15execute_wrappedIZZZNS4_20createPowerAssertionENSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEENS7_6chrono8durationIxNS7_5ratioILl1ELl1000EEEEEENKUlvE_clEvEUb_EUlvE_EEvOT_EUlvE_EEvP16dispatch_queue_sNS7_10unique_ptrISL_NS7_14default_deleteISL_EEEEENUlPvE_8__invokeESU_(std::__shared_weak_count **a1)
{
  v68 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  v50 = *a1;
  v2 = (*a1)->__vftable;
  v66 = 0xAAAAAAAAAAAAAAAALL;
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v65[7] = v3;
  v65[8] = v3;
  v65[5] = v3;
  v65[6] = v3;
  v65[3] = v3;
  v65[4] = v3;
  v65[1] = v3;
  v65[2] = v3;
  v64 = v3;
  v65[0] = v3;
  *__p = v3;
  v63 = v3;
  v60 = v3;
  v61 = v3;
  v58 = v3;
  v59 = v3;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v58);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v58, "Power assertion watchdog fired for '", 36);
  shared_owners = v1->__shared_owners_;
  v6 = SHIBYTE(v1[1].__vftable);
  if (v6 >= 0)
  {
    p_shared_owners = &v1->__shared_owners_;
  }

  else
  {
    p_shared_owners = v1->__shared_owners_;
  }

  if (v6 >= 0)
  {
    shared_weak_owners = HIBYTE(v1[1].__vftable);
  }

  else
  {
    shared_weak_owners = v1->__shared_weak_owners_;
  }

  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, p_shared_owners, shared_weak_owners);
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "'; Timeout (millisec): ", 23);
  MEMORY[0x29C26EA90](v10, v1[1].__shared_owners_);
  if (SHIBYTE(v1[1].__vftable) < 0)
  {
    std::string::__init_copy_ctor_external(&v57, v1->__shared_owners_, v1->__shared_weak_owners_);
  }

  else
  {
    v11 = *&v1->__shared_owners_;
    v57.__r_.__value_.__r.__words[2] = v1[1].__vftable;
    *&v57.__r_.__value_.__l.__data_ = v11;
  }

  PowerManager::State::releasePowerAssertion_sync(v2, &v57.__r_.__value_.__l.__data_);
  if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v57.__r_.__value_.__l.__data_);
  }

  if (!TelephonyUtilIsInternalBuild())
  {
    on_zero_shared_weak = v2->__on_zero_shared_weak;
    if (!os_log_type_enabled(on_zero_shared_weak, OS_LOG_TYPE_FAULT))
    {
      goto LABEL_21;
    }

    if ((BYTE8(v64) & 0x10) != 0)
    {
      v44 = v64;
      if (v64 < *(&v61 + 1))
      {
        *&v64 = *(&v61 + 1);
        v44 = *(&v61 + 1);
      }

      v45 = &v61;
    }

    else
    {
      if ((BYTE8(v64) & 8) == 0)
      {
        v22 = 0;
        HIBYTE(v54) = 0;
        p_dst = &__dst;
        goto LABEL_103;
      }

      v45 = &v59 + 1;
      v44 = *(&v60 + 1);
    }

    v46 = *v45;
    v22 = v44 - *v45;
    if (v22 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v22 >= 0x17)
    {
      if ((v22 | 7) == 0x17)
      {
        v47 = 25;
      }

      else
      {
        v47 = (v22 | 7) + 1;
      }

      p_dst = operator new(v47);
      v53 = v22;
      v54 = v47 | 0x8000000000000000;
      __dst = p_dst;
    }

    else
    {
      HIBYTE(v54) = v44 - *v45;
      p_dst = &__dst;
      if (!v22)
      {
        goto LABEL_103;
      }
    }

    memmove(p_dst, v46, v22);
LABEL_103:
    *(p_dst + v22) = 0;
    v48 = &__dst;
    if (v54 < 0)
    {
      v48 = __dst;
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = v48;
    _os_log_fault_impl(&dword_297288000, on_zero_shared_weak, OS_LOG_TYPE_FAULT, "%s", &buf, 0xCu);
    if (SHIBYTE(v54) < 0)
    {
      operator delete(__dst);
    }

    goto LABEL_21;
  }

  on_zero_shared = v2[5].__on_zero_shared;
  if (!on_zero_shared)
  {
    goto LABEL_21;
  }

  v13 = std::__shared_weak_count::lock(on_zero_shared);
  v56 = v13;
  if (!v13)
  {
    goto LABEL_21;
  }

  v55 = v2[5].~__shared_weak_count_0;
  if (!v55)
  {
    if (atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_21;
    }

    v21 = v13;
    (v13->__on_zero_shared)(v13);
    goto LABEL_87;
  }

  v14 = xpc_dictionary_create(0, 0, 0);
  if (v14 || (v14 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C26F9F0](v14) == MEMORY[0x29EDCAA00])
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
  if ((BYTE8(v64) & 0x10) != 0)
  {
    v26 = v64;
    if (v64 < *(&v61 + 1))
    {
      *&v64 = *(&v61 + 1);
      v26 = *(&v61 + 1);
    }

    v27 = v61;
    v24 = v26 - v61;
    if ((v26 - v61) > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_89;
    }
  }

  else
  {
    if ((BYTE8(v64) & 8) == 0)
    {
      v24 = 0;
      HIBYTE(v54) = 0;
      v25 = &__dst;
      goto LABEL_54;
    }

    v27 = *(&v59 + 1);
    v24 = *(&v60 + 1) - *(&v59 + 1);
    if (*(&v60 + 1) - *(&v59 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
    {
LABEL_89:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v24 >= 0x17)
  {
    if ((v24 | 7) == 0x17)
    {
      v28 = 25;
    }

    else
    {
      v28 = (v24 | 7) + 1;
    }

    v25 = operator new(v28);
    v53 = v24;
    v54 = v28 | 0x8000000000000000;
    __dst = v25;
    goto LABEL_53;
  }

  HIBYTE(v54) = v24;
  v25 = &__dst;
  if (v24)
  {
LABEL_53:
    memmove(v25, v27, v24);
  }

LABEL_54:
  *(v25 + v24) = 0;
  if (v54 >= 0)
  {
    v29 = &__dst;
  }

  else
  {
    v29 = __dst;
  }

  v30 = xpc_string_create(v29);
  if (!v30)
  {
    v30 = xpc_null_create();
  }

  xpc_dictionary_set_value(v15, *MEMORY[0x29EDBEF60], v30);
  v31 = xpc_null_create();
  xpc_release(v30);
  xpc_release(v31);
  if (SHIBYTE(v54) < 0)
  {
    operator delete(__dst);
  }

  v32 = xpc_int64_create(0);
  if (!v32)
  {
    v32 = xpc_null_create();
  }

  xpc_dictionary_set_value(v15, *MEMORY[0x29EDBE578], v32);
  v33 = xpc_null_create();
  xpc_release(v32);
  xpc_release(v33);
  Timestamp::Timestamp(&buf);
  Timestamp::asString(v34, 0, 9, &__dst);
  if (v54 >= 0)
  {
    v35 = &__dst;
  }

  else
  {
    v35 = __dst;
  }

  v36 = xpc_string_create(v35);
  if (!v36)
  {
    v36 = xpc_null_create();
  }

  xpc_dictionary_set_value(v15, *MEMORY[0x29EDBE930], v36);
  v37 = xpc_null_create();
  xpc_release(v36);
  xpc_release(v37);
  if (SHIBYTE(v54) < 0)
  {
    operator delete(__dst);
  }

  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(&buf, *(&buf + 1));
  v38 = v55;
  v39 = *MEMORY[0x29EDBEBE0];
  v40 = strlen(*MEMORY[0x29EDBEBE0]);
  if (v40 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v41 = v40;
  if (v40 >= 0x17)
  {
    if ((v40 | 7) == 0x17)
    {
      v43 = 25;
    }

    else
    {
      v43 = (v40 | 7) + 1;
    }

    v42 = operator new(v43);
    v53 = v41;
    v54 = v43 | 0x8000000000000000;
    __dst = v42;
    goto LABEL_78;
  }

  HIBYTE(v54) = v40;
  v42 = &__dst;
  if (v40)
  {
LABEL_78:
    memmove(v42, v39, v41);
  }

  *(v42 + v41) = 0;
  *&buf = v15;
  if (v15)
  {
    xpc_retain(v15);
  }

  else
  {
    *&buf = xpc_null_create();
  }

  v51 = 0;
  ServiceManager::runCommand(v38, &__dst, &buf, &v51);
  xpc_release(buf);
  *&buf = 0;
  if (SHIBYTE(v54) < 0)
  {
    operator delete(__dst);
  }

  xpc_release(v15);
  v21 = v56;
  if (v56 && !atomic_fetch_add(&v56->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v21->__on_zero_shared)(v21);
LABEL_87:
    std::__shared_weak_count::__release_weak(v21);
  }

LABEL_21:
  *&v58 = *MEMORY[0x29EDC9538];
  *(&v58 + *(v58 - 24)) = *(MEMORY[0x29EDC9538] + 24);
  *(&v58 + 1) = MEMORY[0x29EDC9570] + 16;
  if (SHIBYTE(v63) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v58 + 1) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(&v59);
  std::ostream::~ostream();
  MEMORY[0x29C26EC90](v65);
  v17 = v50;
  if (v50)
  {
    if (SHIBYTE(v50[1].__vftable) < 0)
    {
      operator delete(v50->__shared_owners_);
      v17 = v50;
    }

    operator delete(v17);
  }

  v18 = a1;
  if (a1)
  {
    v19 = a1[2];
    if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v19->__on_zero_shared)(v19);
      std::__shared_weak_count::__release_weak(v19);
      v18 = a1;
    }

    operator delete(v18);
  }

  v20 = *MEMORY[0x29EDCA608];
}

void sub_29733DB5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, char a27)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void PowerManager::State::releasePowerAssertion_sync(void *a1, const void **a2)
{
  v2 = a2;
  v59 = *MEMORY[0x29EDCA608];
  v5 = a1 + 18;
  v4 = a1[18];
  if (!v4)
  {
    goto LABEL_40;
  }

  v6 = *(a2 + 23);
  if (v6 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = *(a2 + 23);
  }

  else
  {
    v8 = a2[1];
  }

  v9 = a1 + 18;
  v10 = a1[18];
  do
  {
    while (1)
    {
      v11 = *(v10 + 55);
      v12 = v11 >= 0 ? v10 + 4 : v10[4];
      v13 = v11 >= 0 ? *(v10 + 55) : v10[5];
      v14 = v8 >= v13 ? v13 : v8;
      v15 = memcmp(v12, v7, v14);
      if (v15)
      {
        break;
      }

      if (v13 >= v8)
      {
        goto LABEL_23;
      }

LABEL_9:
      v10 = v10[1];
      if (!v10)
      {
        goto LABEL_24;
      }
    }

    if (v15 < 0)
    {
      goto LABEL_9;
    }

LABEL_23:
    v9 = v10;
    v10 = *v10;
  }

  while (v10);
LABEL_24:
  if (v9 == v5)
  {
    goto LABEL_40;
  }

  v16 = v9[4];
  v17 = *(v9 + 55);
  if (v17 >= 0)
  {
    v18 = v9 + 4;
  }

  else
  {
    v18 = v9[4];
  }

  if (v17 >= 0)
  {
    v19 = *(v9 + 55);
  }

  else
  {
    v19 = v9[5];
  }

  if (v19 >= v8)
  {
    v20 = v8;
  }

  else
  {
    v20 = v19;
  }

  v21 = memcmp(v7, v18, v20);
  if (v21)
  {
    if ((v21 & 0x80000000) == 0)
    {
      goto LABEL_36;
    }

LABEL_40:
    v24 = a1[4];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = v2;
      if (*(v2 + 23) < 0)
      {
        v25 = *v2;
      }

      v57 = 136315138;
      v58 = v25;
      v26 = "#I Attempt to release non-existent power assertion '%s'";
LABEL_58:
      _os_log_impl(&dword_297288000, v24, OS_LOG_TYPE_DEFAULT, v26, &v57, 0xCu);
    }
  }

  else
  {
    if (v8 < v19)
    {
      goto LABEL_40;
    }

LABEL_36:
    v22 = v9[1];
    if (v22)
    {
      do
      {
        v23 = v22;
        v22 = *v22;
      }

      while (v22);
    }

    else
    {
      v27 = v9;
      do
      {
        v23 = v27[2];
        v28 = *v23 == v27;
        v27 = v23;
      }

      while (!v28);
    }

    if (a1[17] == v9)
    {
      a1[17] = v23;
    }

    --a1[19];
    std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v4, v9);
    v29 = v9[8];
    if (v29 && !atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v29->__on_zero_shared)(v29);
      std::__shared_weak_count::__release_weak(v29);
    }

    if (*(v9 + 55) < 0)
    {
      operator delete(v9[4]);
    }

    operator delete(v9);
    v24 = a1[4];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v30 = v2;
      if (*(v2 + 23) < 0)
      {
        v30 = *v2;
      }

      v57 = 136315138;
      v58 = v30;
      v26 = "#I Released power assertion '%s'";
      goto LABEL_58;
    }
  }

  v31 = a1[21];
  if (!v31)
  {
    goto LABEL_113;
  }

  v32 = *(v2 + 23);
  if (v32 >= 0)
  {
    v33 = v2;
  }

  else
  {
    v33 = *v2;
  }

  if (v32 >= 0)
  {
    v34 = *(v2 + 23);
  }

  else
  {
    v34 = v2[1];
  }

  v35 = a1 + 21;
  v36 = a1[21];
  while (2)
  {
    while (2)
    {
      v37 = *(v36 + 55);
      if (v37 >= 0)
      {
        v38 = v36 + 4;
      }

      else
      {
        v38 = v36[4];
      }

      if (v37 >= 0)
      {
        v39 = *(v36 + 55);
      }

      else
      {
        v39 = v36[5];
      }

      if (v34 >= v39)
      {
        v40 = v39;
      }

      else
      {
        v40 = v34;
      }

      v41 = memcmp(v38, v33, v40);
      if (v41)
      {
        if ((v41 & 0x80000000) == 0)
        {
          break;
        }

        goto LABEL_67;
      }

      if (v39 < v34)
      {
LABEL_67:
        v36 = v36[1];
        if (!v36)
        {
          goto LABEL_82;
        }

        continue;
      }

      break;
    }

    v35 = v36;
    v36 = *v36;
    if (v36)
    {
      continue;
    }

    break;
  }

LABEL_82:
  if (v35 != a1 + 21)
  {
    v42 = v35[4];
    v43 = *(v35 + 55);
    if (v43 >= 0)
    {
      v44 = v35 + 4;
    }

    else
    {
      v44 = v35[4];
    }

    if (v43 >= 0)
    {
      v45 = *(v35 + 55);
    }

    else
    {
      v45 = v35[5];
    }

    if (v45 >= v34)
    {
      v46 = v34;
    }

    else
    {
      v46 = v45;
    }

    v47 = memcmp(v33, v44, v46);
    if (v47)
    {
      if (v47 < 0)
      {
        goto LABEL_113;
      }

LABEL_96:
      v48 = v35[1];
      if (v48)
      {
        do
        {
          v49 = v48;
          v48 = *v48;
        }

        while (v48);
      }

      else
      {
        v50 = v35;
        do
        {
          v49 = v50[2];
          v28 = *v49 == v50;
          v50 = v49;
        }

        while (!v28);
      }

      if (a1[20] == v35)
      {
        a1[20] = v49;
      }

      --a1[22];
      std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v31, v35);
      v51 = v35[8];
      if (v51 && !atomic_fetch_add(&v51->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v51->__on_zero_shared)(v51);
        std::__shared_weak_count::__release_weak(v51);
      }

      if (*(v35 + 55) < 0)
      {
        operator delete(v35[4]);
      }

      operator delete(v35);
      v52 = a1[4];
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
      {
        if (*(v2 + 23) < 0)
        {
          v2 = *v2;
        }

        v57 = 136315138;
        v58 = v2;
        _os_log_impl(&dword_297288000, v52, OS_LOG_TYPE_DEFAULT, "#I Clear watchdog timer for power assertion '%s'", &v57, 0xCu);
      }
    }

    else if (v34 >= v45)
    {
      goto LABEL_96;
    }
  }

LABEL_113:
  if (!a1[19])
  {
    *(a1[9] + 88) = 0;
    v54 = a1[12];
    if (v54)
    {
      v55 = a1[4];
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v57) = 0;
        _os_log_impl(&dword_297288000, v55, OS_LOG_TYPE_DEFAULT, "#I No more assertions held, acknowledging previous notification", &v57, 2u);
        v54 = a1[12];
      }

      (*(v54 + 16))(v54, 1);
      v56 = a1[12];
      a1[12] = 0;
      if (v56)
      {
        _Block_release(v56);
      }
    }
  }

  v53 = *MEMORY[0x29EDCA608];
}

void sub_29733E190(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void std::__shared_ptr_pointer<support::misc::Watchdog  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<support::misc::Watchdog  *>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    TelephonyBasebandWatchdogStop();

    operator delete(v1);
  }
}

uint64_t std::__shared_ptr_pointer<support::misc::Watchdog  *>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x80000002974326C3)
  {
    if (((v2 & 0x80000002974326C3 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000002974326C3))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000002974326C3 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void *std::unique_ptr<PowerManager::State::createPowerAssertion(std::string,std::chrono::duration<long long,std::ratio<1l,1000l>>)::{lambda(void)#1},std::default_delete<PowerManager::State::createPowerAssertion(std::string,std::chrono::duration<long long,std::ratio<1l,1000l>>)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = *(v1 + 40);
    if (v3)
    {
      dispatch_group_leave(v3);
      v4 = *(v1 + 40);
      if (v4)
      {
        dispatch_release(v4);
      }
    }

    if (*(v1 + 31) < 0)
    {
      operator delete(*(v1 + 8));
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void dispatch::async<void ctu::SharedSynchronizable<PowerManager::State>::execute_wrapped<PowerManager::State::releasePowerAssertion(std::string)::{lambda(void)#1}>(PowerManager::State::releasePowerAssertion(std::string)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<PowerManager::State::releasePowerAssertion(std::string)::{lambda(void)#1},std::default_delete<PowerManager::State::releasePowerAssertion(std::string)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v2 = *a1;
  v3 = **a1;
  if (*(*a1 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v6, v2[1], v2[2]);
  }

  else
  {
    v4 = *(v2 + 1);
    v6.__r_.__value_.__r.__words[2] = v2[3];
    *&v6.__r_.__value_.__l.__data_ = v4;
  }

  PowerManager::State::releasePowerAssertion_sync(v3, &v6.__r_.__value_.__l.__data_);
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
    if ((*(v2 + 31) & 0x80000000) == 0)
    {
LABEL_6:
      operator delete(v2);
      v5 = *(a1 + 2);
      if (!v5)
      {
        goto LABEL_12;
      }

      goto LABEL_10;
    }
  }

  else if ((*(v2 + 31) & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  operator delete(v2[1]);
  operator delete(v2);
  v5 = *(a1 + 2);
  if (!v5)
  {
    goto LABEL_12;
  }

LABEL_10:
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

LABEL_12:

  operator delete(a1);
}

void sub_29733E400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10)
{
  std::unique_ptr<MipcTransportService::snapshot(std::string)::$_0,std::default_delete<MipcTransportService::snapshot(std::string)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>(WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void sub_29733E41C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  std::unique_ptr<MipcTransportService::snapshot(std::string)::$_0,std::default_delete<MipcTransportService::snapshot(std::string)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>(WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void ___ZN12PowerManager5State10initializeEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1[1];
  if (!v2 || (v3 = *v1, (v4 = std::__shared_weak_count::lock(v2)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v5 = v4;
  atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v66 = 0;
    v67 = 0;
    v6 = v1[27];
    if (!v6)
    {
      goto LABEL_93;
    }
  }

  else
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v5);
    v66 = 0;
    v67 = 0;
    v6 = v1[27];
    if (!v6)
    {
      goto LABEL_93;
    }
  }

  v67 = std::__shared_weak_count::lock(v6);
  if (!v67)
  {
    goto LABEL_96;
  }

  v7 = v1[26];
  v66 = v7;
  if (v7)
  {
    v8 = abm::kCommandSetPowerDownMessageList[0];
    v9 = strlen(abm::kCommandSetPowerDownMessageList[0]);
    if (v9 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v10 = v9;
    if (v9 >= 0x17)
    {
      if ((v9 | 7) == 0x17)
      {
        v12 = 25;
      }

      else
      {
        v12 = (v9 | 7) + 1;
      }

      p_dst = operator new(v12);
      *(&__dst + 1) = v10;
      v65 = v12 | 0x8000000000000000;
      *&__dst = p_dst;
    }

    else
    {
      HIBYTE(v65) = v9;
      p_dst = &__dst;
      if (!v9)
      {
LABEL_18:
        *(p_dst + v10) = 0;
        aBlock[0] = MEMORY[0x29EDCA5F8];
        aBlock[1] = 1174405120;
        aBlock[2] = ___ZN12PowerManager5State10initializeEv_block_invoke_2;
        aBlock[3] = &__block_descriptor_tmp_39_0;
        aBlock[4] = v1;
        aBlock[5] = v3;
        v62 = v5;
        atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v13 = _Block_copy(aBlock);
        v63 = v13;
        ServiceManager::registerCommandHandler(v7, &__dst, &v63);
        if (v13)
        {
          _Block_release(v13);
        }

        if (SHIBYTE(v65) < 0)
        {
          operator delete(__dst);
        }

        v60 = 9;
        v58 = 0;
        strcpy(v59, "power.mgr");
        AppleBasebandManager::create();
        v14 = __dst;
        __dst = 0uLL;
        v15 = v1[6];
        *(v1 + 5) = v14;
        if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v15->__on_zero_shared)(v15);
          std::__shared_weak_count::__release_weak(v15);
        }

        v16 = *(&__dst + 1);
        if (*(&__dst + 1) && !atomic_fetch_add((*(&__dst + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          (v16->__on_zero_shared)(v16);
          std::__shared_weak_count::__release_weak(v16);
          v17 = v58;
          if (!v58)
          {
LABEL_29:
            if (v60 < 0)
            {
              operator delete(v59[0]);
            }

            v18 = v1[5];
            v19 = *MEMORY[0x29EDBEFF0];
            v20 = strlen(*MEMORY[0x29EDBEFF0]);
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
              __p[1] = v21;
              v57 = v23 | 0x8000000000000000;
              __p[0] = v22;
            }

            else
            {
              HIBYTE(v57) = v20;
              v22 = __p;
              if (!v20)
              {
LABEL_40:
                *(v21 + v22) = 0;
                v52[0] = MEMORY[0x29EDCA5F8];
                v52[1] = 1174405120;
                v52[2] = ___ZN12PowerManager5State10initializeEv_block_invoke_40;
                v52[3] = &__block_descriptor_tmp_44;
                v52[4] = v1;
                v52[5] = v3;
                v53 = v5;
                atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                v24 = _Block_copy(v52);
                v25 = v1[2];
                if (v25)
                {
                  dispatch_retain(v1[2]);
                }

                v54 = v24;
                object = v25;
                AppleBasebandManager::setEventHandler();
                if (object)
                {
                  dispatch_release(object);
                }

                if (v54)
                {
                  _Block_release(v54);
                }

                if (SHIBYTE(v57) < 0)
                {
                  operator delete(__p[0]);
                }

                v26 = v1[5];
                v27 = *MEMORY[0x29EDBEFF8];
                v28 = strlen(*MEMORY[0x29EDBEFF8]);
                if (v28 > 0x7FFFFFFFFFFFFFF7)
                {
                  std::string::__throw_length_error[abi:ne200100]();
                }

                v29 = v28;
                if (v28 >= 0x17)
                {
                  if ((v28 | 7) == 0x17)
                  {
                    v31 = 25;
                  }

                  else
                  {
                    v31 = (v28 | 7) + 1;
                  }

                  v30 = operator new(v31);
                  v50[1] = v29;
                  v51 = v31 | 0x8000000000000000;
                  v50[0] = v30;
                }

                else
                {
                  HIBYTE(v51) = v28;
                  v30 = v50;
                  if (!v28)
                  {
LABEL_57:
                    *(v29 + v30) = 0;
                    v46[0] = MEMORY[0x29EDCA5F8];
                    v46[1] = 1174405120;
                    v46[2] = ___ZN12PowerManager5State10initializeEv_block_invoke_45;
                    v46[3] = &__block_descriptor_tmp_48_1;
                    v46[4] = v1;
                    v46[5] = v3;
                    v47 = v5;
                    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                    v32 = _Block_copy(v46);
                    v33 = v1[2];
                    if (v33)
                    {
                      dispatch_retain(v1[2]);
                    }

                    v48 = v32;
                    v49 = v33;
                    AppleBasebandManager::setEventHandler();
                    if (v49)
                    {
                      dispatch_release(v49);
                    }

                    if (v48)
                    {
                      _Block_release(v48);
                    }

                    if (SHIBYTE(v51) < 0)
                    {
                      operator delete(v50[0]);
                    }

                    AppleBasebandManager::eventsOn(v1[5]);
                    v34 = v1[9];
                    v42[0] = MEMORY[0x29EDCA5F8];
                    v42[1] = 1174405120;
                    v42[2] = ___ZN12PowerManager5State10initializeEv_block_invoke_49;
                    v42[3] = &__block_descriptor_tmp_51_0;
                    v42[4] = v3;
                    v43 = v5;
                    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                    v44 = v66;
                    v45 = v67;
                    if (v67)
                    {
                      atomic_fetch_add_explicit(&v67->__shared_owners_, 1uLL, memory_order_relaxed);
                    }

                    v35 = _Block_copy(v42);
                    v36 = v1[2];
                    if (v36)
                    {
                      dispatch_retain(v1[2]);
                    }

                    if (v35)
                    {
                      v37 = _Block_copy(v35);
                      v38 = *(v34 + 104);
                      *(v34 + 104) = v37;
                      if (!v38)
                      {
                        goto LABEL_74;
                      }
                    }

                    else
                    {
                      v38 = *(v34 + 104);
                      *(v34 + 104) = 0;
                      if (!v38)
                      {
LABEL_74:
                        if (v36)
                        {
                          dispatch_retain(v36);
                        }

                        v39 = *(v34 + 112);
                        *(v34 + 112) = v36;
                        if (v39)
                        {
                          dispatch_release(v39);
                        }

                        if (v36)
                        {
                          dispatch_release(v36);
                        }

                        if (v35)
                        {
                          _Block_release(v35);
                        }

                        v40 = v45;
                        if (v45 && !atomic_fetch_add(&v45->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                        {
                          (v40->__on_zero_shared)(v40);
                          std::__shared_weak_count::__release_weak(v40);
                        }

                        if (v43)
                        {
                          std::__shared_weak_count::__release_weak(v43);
                        }

                        if (v47)
                        {
                          std::__shared_weak_count::__release_weak(v47);
                        }

                        if (v53)
                        {
                          std::__shared_weak_count::__release_weak(v53);
                        }

                        if (v62)
                        {
                          std::__shared_weak_count::__release_weak(v62);
                        }

                        goto LABEL_93;
                      }
                    }

                    _Block_release(v38);
                    goto LABEL_74;
                  }
                }

                memmove(v30, v27, v29);
                goto LABEL_57;
              }
            }

            memmove(v22, v19, v21);
            goto LABEL_40;
          }
        }

        else
        {
          v17 = v58;
          if (!v58)
          {
            goto LABEL_29;
          }
        }

        CFRelease(v17);
        goto LABEL_29;
      }
    }

    memmove(p_dst, v8, v10);
    goto LABEL_18;
  }

LABEL_93:
  v41 = v67;
  if (v67 && !atomic_fetch_add(&v67->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v41->__on_zero_shared)(v41);
    std::__shared_weak_count::__release_weak(v41);
  }

LABEL_96:
  std::__shared_weak_count::__release_weak(v5);
}

void sub_29733EB6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23, char a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, std::__shared_weak_count *a38, char a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if (a23)
  {
    std::__shared_weak_count::__release_weak(a23);
  }

  if (a38)
  {
    std::__shared_weak_count::__release_weak(a38);
  }

  v49 = *(v47 - 160);
  if (v49)
  {
    std::__shared_weak_count::__release_weak(v49);
    std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](v47 - 112);
    std::__shared_weak_count::__release_weak(v46);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](v47 - 112);
  std::__shared_weak_count::__release_weak(v46);
  _Unwind_Resume(a1);
}

void ___ZN12PowerManager5State10initializeEv_block_invoke_2(void *a1, void **a2, void **a3)
{
  v4 = a1[6];
  if (v4)
  {
    v7 = a1[4];
    v8 = std::__shared_weak_count::lock(v4);
    if (v8)
    {
      v9 = v8;
      if (!a1[5])
      {
LABEL_12:
        if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v9->__on_zero_shared)(v9);
          std::__shared_weak_count::__release_weak(v9);
        }

        return;
      }

      v12[0] = MEMORY[0x29EDCA5F8];
      v12[1] = 1174405120;
      v12[2] = ___ZN12PowerManager5State10initializeEv_block_invoke_3;
      v12[3] = &__block_descriptor_tmp_35_0;
      v10 = *a2;
      v12[4] = v7;
      object = v10;
      if (v10)
      {
        xpc_retain(v10);
        v11 = *a3;
        if (!*a3)
        {
          goto LABEL_9;
        }
      }

      else
      {
        object = xpc_null_create();
        v11 = *a3;
        if (!*a3)
        {
LABEL_9:
          aBlock = v11;
          ctu::SharedSynchronizable<PowerManager::State>::execute_wrapped(v7, v12);
          if (aBlock)
          {
            _Block_release(aBlock);
          }

          xpc_release(object);
          object = 0;
          goto LABEL_12;
        }
      }

      v11 = _Block_copy(v11);
      goto LABEL_9;
    }
  }
}

void ___ZN12PowerManager5State10initializeEv_block_invoke_3(void *a1)
{
  v3 = a1[4];
  v2 = a1[5];
  v4 = *(v3 + 72);
  object = v2;
  if (v2)
  {
    xpc_retain(v2);
  }

  else
  {
    object = xpc_null_create();
  }

  PowerStats::setPowerdownMessage(v4, &object);
  xpc_release(object);
  object = 0;
  v5 = xpc_null_create();
  v6 = a1[6];
  v9 = v5;
  v7 = xpc_null_create();
  (*(v6 + 16))(v6, 0, &v9);
  xpc_release(v9);
  xpc_release(v7);
}

void sub_29733EEAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t a9, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(v10);
  _Unwind_Resume(a1);
}

void ___ZN12PowerManager5State10initializeEv_block_invoke_40(void *a1)
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
        PowerStats::dumpState(*(v3 + 72));
      }

      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);

        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }
}

uint64_t dispatch::callback<void({block_pointer})(std::shared_ptr<abm::client::Event>)>::~callback(uint64_t a1)
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

void ___ZN12PowerManager5State10initializeEv_block_invoke_45(void *a1)
{
  v22 = *MEMORY[0x29EDCA608];
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = a1[5];
      if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v6 = v4;
        (v4->__on_zero_shared)();
        std::__shared_weak_count::__release_weak(v6);
      }

      if (v5)
      {
        v7 = v3[9];
        if (v7)
        {
          PowerStats::dumpState(v7);
        }

        v8 = v3[17];
        if (v8 != v3 + 18)
        {
          do
          {
            v9 = v3[4];
            if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
            {
              v10 = v8 + 4;
              if (*(v8 + 55) < 0)
              {
                v10 = *v10;
              }

              *buf = 136315138;
              v21 = v10;
              _os_log_impl(&dword_297288000, v9, OS_LOG_TYPE_DEFAULT, "#I Pending power assertion '%s'", buf, 0xCu);
            }

            v11 = v8[1];
            if (v11)
            {
              do
              {
                v12 = v11;
                v11 = *v11;
              }

              while (v11);
            }

            else
            {
              do
              {
                v12 = v8[2];
                v13 = *v12 == v8;
                v8 = v12;
              }

              while (!v13);
            }

            v8 = v12;
          }

          while (v12 != v3 + 18);
        }

        v14 = v3[23];
        if (v14 != v3 + 24)
        {
          do
          {
            v15 = v3[4];
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              v16 = v14 + 4;
              if (*(v14 + 55) < 0)
              {
                v16 = *v16;
              }

              *buf = 136315138;
              v21 = v16;
              _os_log_impl(&dword_297288000, v15, OS_LOG_TYPE_DEFAULT, "#I Deferred work due to sleep '%s'", buf, 0xCu);
            }

            v17 = v14[1];
            if (v17)
            {
              do
              {
                v18 = v17;
                v17 = *v17;
              }

              while (v17);
            }

            else
            {
              do
              {
                v18 = v14[2];
                v13 = *v18 == v14;
                v14 = v18;
              }

              while (!v13);
            }

            v14 = v18;
          }

          while (v18 != v3 + 24);
        }
      }
    }
  }

  v19 = *MEMORY[0x29EDCA608];
}

void ___ZN12PowerManager5State10initializeEv_block_invoke_49(void *a1, xpc_object_t *a2)
{
  v3 = a1[5];
  if (!v3)
  {
    return;
  }

  v5 = std::__shared_weak_count::lock(v3);
  v19 = v5;
  if (!v5)
  {
    return;
  }

  v18 = a1[4];
  if (!v18 || (v6 = a1[6]) == 0)
  {
LABEL_19:
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v13 = v5;
      (v5->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v13);
    }

    return;
  }

  v7 = *MEMORY[0x29EDBEBD0];
  v8 = strlen(*MEMORY[0x29EDBEBD0]);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    if ((v8 | 7) == 0x17)
    {
      v12 = 25;
    }

    else
    {
      v12 = (v8 | 7) + 1;
    }

    v10 = operator new(v12);
    __dst[1] = v9;
    v17 = v12 | 0x8000000000000000;
    __dst[0] = v10;
LABEL_14:
    memmove(v10, v7, v9);
    *(v9 + v10) = 0;
    v11 = *a2;
    v15 = v11;
    if (v11)
    {
      goto LABEL_9;
    }

    goto LABEL_15;
  }

  HIBYTE(v17) = v8;
  v10 = __dst;
  if (v8)
  {
    goto LABEL_14;
  }

  LOBYTE(__dst[0]) = 0;
  v11 = *a2;
  v15 = v11;
  if (v11)
  {
LABEL_9:
    xpc_retain(v11);
    goto LABEL_16;
  }

LABEL_15:
  v11 = xpc_null_create();
  v15 = v11;
LABEL_16:
  v14 = 0;
  ServiceManager::runCommand(v6, __dst, &v15, &v14);
  xpc_release(v11);
  v15 = 0;
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__dst[0]);
  }

  v5 = v19;
  if (v19)
  {
    goto LABEL_19;
  }
}

void sub_29733F3F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  xpc_release(v18);
  if (a17 < 0)
  {
    operator delete(__p);
    std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](&a18);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](&a18);
  _Unwind_Resume(a1);
}

void *__copy_helper_block_e8_32c45_ZTSNSt3__18weak_ptrIN12PowerManager5StateEEE48c42_ZTSNSt3__110shared_ptrI14ServiceManagerEE(void *result, void *a2)
{
  v2 = a2[5];
  result[4] = a2[4];
  result[5] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v3 = a2[7];
  result[6] = a2[6];
  result[7] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c45_ZTSNSt3__18weak_ptrIN12PowerManager5StateEEE48c42_ZTSNSt3__110shared_ptrI14ServiceManagerEE(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    v2 = *(a1 + 40);
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = *(a1 + 40);
    if (!v2)
    {
      return;
    }
  }

  std::__shared_weak_count::__release_weak(v2);
}

uint64_t dispatch::callback<void({block_pointer})(xpc::dict)>::~callback(uint64_t a1)
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

void ___ZN12PowerManager5State8shutdownEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1[1];
  if (!v2 || (v3 = *v1, (v4 = std::__shared_weak_count::lock(v2)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v5 = v4;
  v6 = operator new(8uLL);
  *v6 = v1;
  v7 = v1[2];
  atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  v8 = operator new(0x18uLL);
  *v8 = v6;
  v8[1] = v3;
  v8[2] = v5;
  dispatch_async_f(v7, v8, dispatch::async<void ctu::SharedSynchronizable<PowerManager::State>::execute_wrapped<PowerManager::State::releasePendingPowerAssertions(void)::{lambda(void)#1}>(PowerManager::State::releasePendingPowerAssertions(void)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<PowerManager::State::releasePendingPowerAssertions(void)::{lambda(void)#1},dispatch_queue_s *::default_delete<PowerManager::State::releasePendingPowerAssertions(void)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
  if (atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v9 = v1[6];
    v1[5] = 0;
    v1[6] = 0;
    if (!v9)
    {
      return;
    }
  }

  else
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    v9 = v1[6];
    v1[5] = 0;
    v1[6] = 0;
    if (!v9)
    {
      return;
    }
  }

  if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);

    std::__shared_weak_count::__release_weak(v9);
  }
}

void dispatch::async<void ctu::SharedSynchronizable<PowerManager::State>::execute_wrapped<PowerManager::State::releasePendingPowerAssertions(void)::{lambda(void)#1}>(PowerManager::State::releasePendingPowerAssertions(void)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<PowerManager::State::releasePendingPowerAssertions(void)::{lambda(void)#1},dispatch_queue_s *::default_delete<PowerManager::State::releasePendingPowerAssertions(void)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v19 = *MEMORY[0x29EDCA608];
  v2 = *a1;
  v3 = **a1;
  v4 = v3[17];
  v5 = v3 + 18;
  if (v4 != v3 + 18)
  {
    do
    {
      v6 = v3[4];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = v4 + 4;
        if (*(v4 + 55) < 0)
        {
          v7 = *v7;
        }

        *buf = 136315138;
        v18 = v7;
        _os_log_impl(&dword_297288000, v6, OS_LOG_TYPE_DEFAULT, "#I Forcefully releasing power assertion '%s'", buf, 0xCu);
      }

      v8 = v4[1];
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
          v9 = v4[2];
          v10 = *v9 == v4;
          v4 = v9;
        }

        while (!v10);
      }

      v4 = v9;
    }

    while (v9 != v5);
  }

  std::__tree<std::__value_type<std::string,std::shared_ptr<support::misc::Watchdog>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<support::misc::Watchdog>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<support::misc::Watchdog>>>>::destroy(v3[18]);
  v11 = v3[21];
  v3[17] = v5;
  v3[18] = 0;
  v3[19] = 0;
  std::__tree<std::__value_type<std::string,std::shared_ptr<support::misc::Watchdog>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<support::misc::Watchdog>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<support::misc::Watchdog>>>>::destroy(v11);
  v3[21] = 0;
  v3[22] = 0;
  v3[20] = v3 + 21;
  *(v3[9] + 88) = 0;
  v12 = v3[12];
  if (v12)
  {
    v13 = v3[4];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_297288000, v13, OS_LOG_TYPE_DEFAULT, "#I No more assertions held, acknowledging previous notification", buf, 2u);
      v12 = v3[12];
    }

    (*(v12 + 16))(v12, 1);
    v14 = v3[12];
    v3[12] = 0;
    if (v14)
    {
      _Block_release(v14);
    }
  }

  operator delete(v2);
  v15 = a1[2];
  if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v15->__on_zero_shared)(v15);
    std::__shared_weak_count::__release_weak(v15);
  }

  v16 = *MEMORY[0x29EDCA608];

  operator delete(a1);
}

void sub_29733F8D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<PowerManager *,std::shared_ptr<PowerManager>::__shared_ptr_default_delete<PowerManager,PowerManager>,std::allocator<PowerManager>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<PowerManager *,std::shared_ptr<PowerManager>::__shared_ptr_default_delete<PowerManager,PowerManager>,std::allocator<PowerManager>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 48))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<PowerManager *,std::shared_ptr<PowerManager>::__shared_ptr_default_delete<PowerManager,PowerManager>,std::allocator<PowerManager>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x8000000297432773)
  {
    if (((v2 & 0x8000000297432773 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x8000000297432773))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x8000000297432773 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

atomic_ullong *ABMServer::create_default_global@<X0>(atomic_ullong **a1@<X8>)
{
  v3 = operator new(0x10uLL);
  *v3 = 0xAAAAAAAAAAAAAAAALL;
  v3[1] = 0xAAAAAAAAAAAAAAAALL;
  v4 = operator new(0xF0uLL);
  ABMServerInternal::ABMServerInternal(v4);
  std::shared_ptr<ABMServerInternal>::shared_ptr[abi:ne200100]<ABMServerInternal,std::shared_ptr<ABMServerInternal> ctu::SharedSynchronizable<ctu::XpcServer>::make_shared_ptr<ABMServerInternal>(ABMServerInternal*)::{lambda(ABMServerInternal*)#1},0>(v3, v4);
  *a1 = v3;
  result = operator new(0x20uLL);
  *result = &unk_2A1E399A0;
  result[1] = 0;
  result[2] = 0;
  result[3] = v3;
  a1[1] = result;
  return result;
}

void sub_29733FA9C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<abm::AWDHelper>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_29733FAB0(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void ABMServer::ABMServer(ABMServer *this)
{
  *this = 0xAAAAAAAAAAAAAAAALL;
  *(this + 1) = 0xAAAAAAAAAAAAAAAALL;
  v2 = operator new(0xF0uLL);
  ABMServerInternal::ABMServerInternal(v2);

  std::shared_ptr<ABMServerInternal>::shared_ptr[abi:ne200100]<ABMServerInternal,std::shared_ptr<ABMServerInternal> ctu::SharedSynchronizable<ctu::XpcServer>::make_shared_ptr<ABMServerInternal>(ABMServerInternal*)::{lambda(ABMServerInternal*)#1},0>(this, v2);
}

{
  *this = 0xAAAAAAAAAAAAAAAALL;
  *(this + 1) = 0xAAAAAAAAAAAAAAAALL;
  v2 = operator new(0xF0uLL);
  ABMServerInternal::ABMServerInternal(v2);

  std::shared_ptr<ABMServerInternal>::shared_ptr[abi:ne200100]<ABMServerInternal,std::shared_ptr<ABMServerInternal> ctu::SharedSynchronizable<ctu::XpcServer>::make_shared_ptr<ABMServerInternal>(ABMServerInternal*)::{lambda(ABMServerInternal*)#1},0>(this, v2);
}

atomic_ullong *ABMServerInternal::create@<X0>(atomic_ullong *a1@<X8>)
{
  *a1 = 0xAAAAAAAAAAAAAAAALL;
  a1[1] = 0xAAAAAAAAAAAAAAAALL;
  v3 = operator new(0xF0uLL);
  ABMServerInternal::ABMServerInternal(v3);

  return std::shared_ptr<ABMServerInternal>::shared_ptr[abi:ne200100]<ABMServerInternal,std::shared_ptr<ABMServerInternal> ctu::SharedSynchronizable<ctu::XpcServer>::make_shared_ptr<ABMServerInternal>(ABMServerInternal*)::{lambda(ABMServerInternal*)#1},0>(a1, v3);
}

void ABMServer::init(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  if (*(a2 + 23) < 0)
  {
    v4 = a3;
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
    a3 = v4;
  }

  else
  {
    __p = *a2;
  }

  ABMServerInternal::init(v3, &__p, a3);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_29733FC98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ABMServerInternal::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1 + 8;
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 1174405120;
  v6[2] = ___ZN17ABMServerInternal4initENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEERKN3abm9OverridesE_block_invoke;
  v6[3] = &__block_descriptor_tmp_6_2;
  v6[4] = a1;
  v6[5] = a3;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  v8 = v6;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableINS_9XpcServerEE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  block[3] = &__block_descriptor_tmp_66_0;
  block[4] = v4;
  block[5] = &v8;
  v5 = *(a1 + 24);
  if (*(a1 + 32))
  {
    dispatch_async_and_wait(v5, block);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_8:
    operator delete(__p.__r_.__value_.__l.__data_);
    return;
  }

  dispatch_sync(v5, block);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_8;
  }
}

uint64_t ABMServerInternal::start(ABMServerInternal *this, NSObject *a2)
{
  v4 = *(this + 9);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_297288000, v4, OS_LOG_TYPE_DEFAULT, "#I Request to start server", buf, 2u);
  }

  if (a2)
  {
    dispatch_retain(a2);
    dispatch_retain(a2);
    dispatch_group_enter(a2);
    dispatch_release(a2);
  }

  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 1174405120;
  v9[2] = ___ZN17ABMServerInternal5startEP16dispatch_group_s_block_invoke;
  v9[3] = &unk_2A1E39678;
  v9[5] = this;
  group = a2;
  if (a2)
  {
    dispatch_retain(a2);
    dispatch_group_enter(group);
  }

  v9[4] = &v11;
  v15 = v9;
  *buf = MEMORY[0x29EDCA5F8];
  v17 = 0x40000000;
  v18 = ___ZNK3ctu20SharedSynchronizableINS_9XpcServerEE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  v19 = &__block_descriptor_tmp_66_0;
  v20 = this + 8;
  v21 = &v15;
  v5 = *(this + 3);
  if (*(this + 4))
  {
    dispatch_async_and_wait(v5, buf);
    v6 = *(v12 + 24);
    v7 = group;
    if (!group)
    {
      goto LABEL_13;
    }
  }

  else
  {
    dispatch_sync(v5, buf);
    v6 = *(v12 + 24);
    v7 = group;
    if (!group)
    {
      goto LABEL_13;
    }
  }

  dispatch_group_leave(v7);
  if (group)
  {
    dispatch_release(group);
  }

LABEL_13:
  _Block_object_dispose(&v11, 8);
  if (a2)
  {
    dispatch_group_leave(a2);
    dispatch_release(a2);
  }

  return v6;
}

uint64_t ABMServerInternal::stop(ABMServerInternal *this, NSObject *a2)
{
  v4 = *(this + 9);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_297288000, v4, OS_LOG_TYPE_DEFAULT, "#I Request to stop server", buf, 2u);
  }

  if (a2)
  {
    dispatch_retain(a2);
    dispatch_retain(a2);
    dispatch_group_enter(a2);
    dispatch_release(a2);
  }

  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v14 = 0;
  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 1174405120;
  v9[2] = ___ZN17ABMServerInternal4stopEP16dispatch_group_s_block_invoke;
  v9[3] = &unk_2A1E396B0;
  v9[5] = this;
  group = a2;
  if (a2)
  {
    dispatch_retain(a2);
    dispatch_group_enter(group);
  }

  v9[4] = &v11;
  v15 = v9;
  *buf = MEMORY[0x29EDCA5F8];
  v17 = 0x40000000;
  v18 = ___ZNK3ctu20SharedSynchronizableINS_9XpcServerEE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  v19 = &__block_descriptor_tmp_66_0;
  v20 = this + 8;
  v21 = &v15;
  v5 = *(this + 3);
  if (*(this + 4))
  {
    dispatch_async_and_wait(v5, buf);
    v6 = *(v12 + 24);
    v7 = group;
    if (!group)
    {
      goto LABEL_13;
    }
  }

  else
  {
    dispatch_sync(v5, buf);
    v6 = *(v12 + 24);
    v7 = group;
    if (!group)
    {
      goto LABEL_13;
    }
  }

  dispatch_group_leave(v7);
  if (group)
  {
    dispatch_release(group);
  }

LABEL_13:
  _Block_object_dispose(&v11, 8);
  if (a2)
  {
    dispatch_group_leave(a2);
    dispatch_release(a2);
  }

  return v6;
}

uint64_t ABMServerInternal::shutdown(ABMServerInternal *this, NSObject *a2)
{
  v4 = *(this + 9);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_297288000, v4, OS_LOG_TYPE_DEFAULT, "#I Request to shutdown server", buf, 2u);
  }

  if (a2)
  {
    dispatch_retain(a2);
    dispatch_retain(a2);
    dispatch_group_enter(a2);
    dispatch_release(a2);
LABEL_5:
    v5 = 0;
    goto LABEL_8;
  }

  v6 = dispatch_group_create();
  a2 = v6;
  if (!v6)
  {
    goto LABEL_5;
  }

  dispatch_retain(v6);
  dispatch_group_enter(a2);
  v5 = a2;
LABEL_8:
  v13 = 0;
  v14 = &v13;
  v15 = 0x2000000000;
  v16 = 0;
  v11[0] = MEMORY[0x29EDCA5F8];
  v11[1] = 1174405120;
  v11[2] = ___ZN17ABMServerInternal8shutdownEP16dispatch_group_s_block_invoke;
  v11[3] = &unk_2A1E396E8;
  v11[4] = &v13;
  v11[5] = this;
  group = a2;
  if (a2)
  {
    dispatch_retain(a2);
    dispatch_group_enter(group);
  }

  v17 = v11;
  *buf = MEMORY[0x29EDCA5F8];
  v19 = 0x40000000;
  v20 = ___ZNK3ctu20SharedSynchronizableINS_9XpcServerEE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  v21 = &__block_descriptor_tmp_66_0;
  v22 = this + 8;
  v23 = &v17;
  v7 = *(this + 3);
  if (*(this + 4))
  {
    dispatch_async_and_wait(v7, buf);
    v8 = *(v14 + 24);
    v9 = group;
    if (!group)
    {
      goto LABEL_16;
    }
  }

  else
  {
    dispatch_sync(v7, buf);
    v8 = *(v14 + 24);
    v9 = group;
    if (!group)
    {
      goto LABEL_16;
    }
  }

  dispatch_group_leave(v9);
  if (group)
  {
    dispatch_release(group);
  }

LABEL_16:
  _Block_object_dispose(&v13, 8);
  if (v5)
  {
    dispatch_release(v5);
  }

  if (a2)
  {
    dispatch_group_leave(a2);
    dispatch_release(a2);
  }

  return v8;
}

void ABMServer::broadcast(uint64_t *a1, uint64_t a2, const void **a3, const void **a4)
{
  v6 = *a1;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v11, *a2, *(a2 + 8));
    v7 = *a3;
    v10 = v7;
    if (!v7)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v11 = *a2;
  v7 = *a3;
  v10 = v7;
  if (v7)
  {
LABEL_5:
    CFRetain(v7);
  }

LABEL_6:
  if (*a4)
  {
    v8 = _Block_copy(*a4);
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  ABMServerInternal::broadcast(v6, &v11, &v10, &v9);
  if (v8)
  {
    _Block_release(v8);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }
}

void sub_2973404AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (v16)
  {
    _Block_release(v16);
  }

  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&a10);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void ABMServerInternal::broadcast(uint64_t a1, uint64_t a2, const void **a3, void **a4)
{
  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 1174405120;
  v9[2] = ___ZN17ABMServerInternal9broadcastENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK14__CFDictionaryEEN8dispatch5blockIU13block_pointerFvvEEE_block_invoke;
  v9[3] = &__block_descriptor_tmp_29_2;
  v9[4] = a1;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
    v7 = *a3;
    cf = v7;
    if (!v7)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  __p = *a2;
  v7 = *a3;
  cf = v7;
  if (v7)
  {
LABEL_5:
    CFRetain(v7);
  }

LABEL_6:
  v8 = *a4;
  if (*a4)
  {
    v8 = _Block_copy(v8);
  }

  aBlock = v8;
  ctu::SharedSynchronizable<ctu::XpcServer>::execute_wrapped((a1 + 8), v9);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void ABMServerInternal::ABMServerInternal(ABMServerInternal *this)
{
  *this = &unk_2A1E39610;
  v12 = 11;
  strcpy(__p, "server.main");
  object = 0;
  v10 = xpc_null_create();
  ctu::XpcServer::XpcServer();
  xpc_release(v10);
  v10 = 0;
  *this = &unk_2A1E39610;
  ctu::OsLogContext::OsLogContext(__p, "com.apple.telephony.abm", "server.main");
  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x29C26DE70](this + 72, &object);
  MEMORY[0x29C26DE80](&object);
  ctu::OsLogContext::~OsLogContext(__p);
  *this = &unk_2A1E39610;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 10) = this + 88;
  *(this + 14) = 0;
  *(this + 15) = 0;
  *(this + 128) = 3;
  *(this + 17) = 0;
  *(this + 18) = 0;
  *(this + 19) = 0;
  v2 = operator new(0x38uLL);
  v2->__shared_owners_ = 0;
  p_shared_owners = &v2->__shared_owners_;
  v2->__shared_weak_owners_ = 0;
  v2->__vftable = &unk_2A1E39A40;
  Registry::Registry(&v2[1]);
  *(this + 20) = v4;
  *(this + 21) = v2;
  shared_owners = v2[1].__shared_owners_;
  if (!shared_owners)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v2[1].__vftable = &v2[1];
    v2[1].__shared_owners_ = v2;
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (shared_owners->__shared_owners_ == -1)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v2[1].__vftable = &v2[1];
    v2[1].__shared_owners_ = v2;
    std::__shared_weak_count::__release_weak(shared_owners);
    if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
LABEL_6:
      (v2->__on_zero_shared)(v2);
      std::__shared_weak_count::__release_weak(v2);
    }
  }

LABEL_7:
  _ZNSt3__115allocate_sharedB8ne200100I16ABMServerFactoryNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_(__p);
  v7 = __p[0];
  v6 = __p[1];
  *(this + 22) = __p[0];
  *(this + 23) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = operator new(0x28uLL);
  v8[1] = 0;
  v8[2] = 0;
  *v8 = &unk_2A1E3A940;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    v8[3] = v7;
    v8[4] = v6;
    *(this + 24) = v8 + 3;
    *(this + 25) = v8;
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }

  else
  {
    v8[3] = v7;
    v8[4] = 0;
    *(this + 24) = v8 + 3;
    *(this + 25) = v8;
  }

  *(this + 13) = 0u;
  *(this + 14) = 0u;
}

void sub_297340900(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](va);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100]((v2 + 176));
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100]((v2 + 160));
  if (*v6)
  {
    dispatch_group_leave(*v6);
    if (*v6)
    {
      dispatch_release(*v6);
    }
  }

  if (v2[127] < 0)
  {
    operator delete(*v5);
  }

  std::__tree<std::__value_type<xpc::connection,ServerClientState>,std::__map_value_compare<xpc::connection,std::__value_type<xpc::connection,ServerClientState>,std::less<xpc::connection>,true>,std::allocator<std::__value_type<xpc::connection,ServerClientState>>>::destroy(*v4);
  MEMORY[0x29C26DE80](v3);
  ctu::XpcServer::~XpcServer(v2);
  _Unwind_Resume(a1);
}

void sub_2973409B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, dispatch_object_t object, xpc_object_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (object)
  {
    dispatch_release(object);
  }

  xpc_release(a13);
  if (a19 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x2973409ACLL);
}

void ABMServerInternal::~ABMServerInternal(void **this)
{
  *this = &unk_2A1E39610;
  ABMServerInternal::finishShutdown_sync(this);
  v2 = this[29];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = this[27];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = this[25];
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = this[23];
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  v6 = this[21];
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = this[17];
  if (v7)
  {
    dispatch_group_leave(v7);
    v8 = this[17];
    if (v8)
    {
      dispatch_release(v8);
    }
  }

  if (*(this + 127) < 0)
  {
    operator delete(this[13]);
  }

  std::__tree<std::__value_type<xpc::connection,ServerClientState>,std::__map_value_compare<xpc::connection,std::__value_type<xpc::connection,ServerClientState>,std::less<xpc::connection>,true>,std::allocator<std::__value_type<xpc::connection,ServerClientState>>>::destroy(this[11]);
  MEMORY[0x29C26DE80](this + 9);

  ctu::XpcServer::~XpcServer(this);
}

{
  ABMServerInternal::~ABMServerInternal(this);

  operator delete(v1);
}

void ABMServerInternal::finishShutdown_sync(ABMServerInternal *this)
{
  v2 = (this + 88);
  std::__tree<std::__value_type<xpc::connection,ServerClientState>,std::__map_value_compare<xpc::connection,std::__value_type<xpc::connection,ServerClientState>,std::less<xpc::connection>,true>,std::allocator<std::__value_type<xpc::connection,ServerClientState>>>::destroy(*(this + 11));
  *(this + 10) = v2;
  *(this + 12) = 0;
  *v2 = 0;
  group = 0xAAAAAAAAAAAAAAAALL;
  ServiceManager::shutdownGlobalServices(*(this + 28), &group);
  dispatch_group_wait(group, 0xFFFFFFFFFFFFFFFFLL);
  Listener_sync = ctu::XpcServer::getListener_sync(this);
  xpc_connection_cancel(*Listener_sync);
  object = xpc_null_create();
  ctu::XpcServer::setListener_sync();
  xpc_release(object);
  object = 0;
  ABMServerInternal::changeState_sync(this, 5);
  (*(**(this + 26) + 40))(*(this + 26), 5);
  v4 = *(this + 9);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_297288000, v4, OS_LOG_TYPE_DEFAULT, "#I --------- ABM shutdown completed ---------", v5, 2u);
  }

  ABMServerInternal::stopRunLoop_sync(this);
  if (group)
  {
    dispatch_release(group);
  }
}

void sub_297340D48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, dispatch_object_t a12)
{
  xpc_release(object);
  if (a12)
  {
    dispatch_release(a12);
  }

  _Unwind_Resume(a1);
}

void ___ZN17ABMServerInternal4initENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEERKN3abm9OverridesE_block_invoke(uint64_t a1)
{
  v43 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  v3 = *(v2 + 72);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_297288000, v3, OS_LOG_TYPE_DEFAULT, "#I Request to init server", buf, 2u);
  }

  v4 = *(v2 + 192);
  v5 = *(a1 + 40);
  v7 = *(v5 + 16);
  v6 = *(v5 + 24);
  v40 = v7;
  v41 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  ABMServerRegistryBuilder::setupQMIServer(v4, (v2 + 160), &v40);
  v8 = v41;
  if (v41 && !atomic_fetch_add(&v41->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  ABMServerRegistryBuilder::setupAdaptiveTimerService(*(v2 + 192), (v2 + 160));
  if (capabilities::radio::vendor(v9) == 4)
  {
    _ZNSt3__115allocate_sharedB8ne200100I17BootControllerDALNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_(buf);
    v10 = *buf;
    memset(buf, 0, 16);
    v11 = *(v2 + 216);
    *(v2 + 208) = v10;
    if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
    }

    v12 = buf[1];
    if (buf[1] && !atomic_fetch_add(&buf[1][1], 0xFFFFFFFFFFFFFFFFLL))
    {
      (v12->__on_zero_shared)(v12);
      std::__shared_weak_count::__release_weak(v12);
    }
  }

  ABMServerInternal::startRunLoop_sync(v2);
  object = xpc_connection_create_mach_service(kABMDefaultServiceName, 0, 1uLL);
  if (!object)
  {
    object = xpc_null_create();
  }

  ctu::XpcServer::setListener_sync();
  xpc_release(object);
  object = 0;
  ctu::XpcServer::startListener_sync(v2);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"kAppleBasebandManagerDaemonReady", 0, 0, 1u);
  v14 = (a1 + 48);
  v15 = (v2 + 104);
  if (v2 + 104 != a1 + 48)
  {
    v16 = *(a1 + 71);
    if (*(v2 + 127) < 0)
    {
      if (v16 >= 0)
      {
        v18 = (a1 + 48);
      }

      else
      {
        v18 = *(a1 + 48);
      }

      if (v16 >= 0)
      {
        v19 = *(a1 + 71);
      }

      else
      {
        v19 = *(a1 + 56);
      }

      std::string::__assign_no_alias<false>(v15, v18, v19);
    }

    else if ((*(a1 + 71) & 0x80) != 0)
    {
      std::string::__assign_no_alias<true>(v15, *(a1 + 48), *(a1 + 56));
    }

    else
    {
      v17 = *&v14->isa;
      *(v2 + 120) = *(a1 + 64);
      *v15 = v17;
    }
  }

  v20 = *(v2 + 72);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 71) < 0)
    {
      v14 = v14->isa;
    }

    LODWORD(buf[0]) = 136315138;
    *(buf + 4) = v14;
    _os_log_impl(&dword_297288000, v20, OS_LOG_TYPE_DEFAULT, "#I host: %s", buf, 0xCu);
  }

  ABMServerInternal::changeState_sync(v2, 3u);
  v22 = *(v2 + 168);
  v21 = *(v2 + 176);
  aBlock[5] = *(v2 + 160);
  v38 = v22;
  if (v22)
  {
    atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (**v21)(buf);
  v23 = *buf;
  memset(buf, 0, 16);
  v24 = *(v2 + 232);
  *(v2 + 224) = v23;
  if (v24 && !atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v24->__on_zero_shared)(v24);
    std::__shared_weak_count::__release_weak(v24);
  }

  v25 = buf[1];
  if (buf[1] && !atomic_fetch_add(&buf[1][1], 0xFFFFFFFFFFFFFFFFLL))
  {
    (v25->__on_zero_shared)(v25);
    std::__shared_weak_count::__release_weak(v25);
  }

  if (v38 && !atomic_fetch_add(&v38->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v38->__on_zero_shared)(v38);
    std::__shared_weak_count::__release_weak(v38);
  }

  v26 = *(v2 + 224);
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZN17ABMServerInternal4initENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEERKN3abm9OverridesE_block_invoke_3;
  aBlock[3] = &__block_descriptor_tmp_9;
  aBlock[4] = v2;
  v27 = _Block_copy(aBlock);
  v28 = v27;
  if (!v27)
  {
    v30 = *(v26 + 128);
    *(v26 + 128) = 0;
    if (!v30)
    {
      goto LABEL_49;
    }

    goto LABEL_48;
  }

  v29 = _Block_copy(v27);
  v30 = *(v26 + 128);
  *(v26 + 128) = v29;
  if (v30)
  {
LABEL_48:
    _Block_release(v30);
  }

LABEL_49:
  if (v28)
  {
    _Block_release(v28);
  }

  (*(**(v2 + 224) + 16))(*(v2 + 224));
  buf[0] = 0xAAAAAAAAAAAAAAAALL;
  ServiceManager::bootstrapGlobalServices(*(v2 + 224), buf);
  dispatch_group_wait(buf[0], 0xFFFFFFFFFFFFFFFFLL);
  v36 = 6;
  v31 = (*(**(v2 + 208) + 48))(*(v2 + 208), &v36);
  if (v36 > 2)
  {
    v32 = v31;
  }

  else
  {
    v32 = 0;
  }

  if ((v32 & 1) == 0)
  {
    v33 = *(v2 + 72);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v35[0] = 0;
      _os_log_impl(&dword_297288000, v33, OS_LOG_TYPE_DEFAULT, "#I Previous shutdown was not clean", v35, 2u);
    }

    (*(**(v2 + 208) + 32))(*(v2 + 208));
    (*(**(v2 + 208) + 40))(*(v2 + 208), 3);
  }

  if (buf[0])
  {
    dispatch_release(buf[0]);
  }

  v34 = *MEMORY[0x29EDCA608];
}

void sub_29734138C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, xpc_object_t object, char a19)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ABMServerInternal::startRunLoop_sync(ABMServerInternal *this)
{
  v9 = *MEMORY[0x29EDCA608];
  v2 = *(this + 9);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.__sig) = 0;
    _os_log_impl(&dword_297288000, v2, OS_LOG_TYPE_DEFAULT, "#I Starting ABM RunLoop", &buf, 2u);
  }

  v3 = dispatch_group_create();
  dispatch_group_enter(v3);
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 1174405120;
  v6[2] = ___ZN17ABMServerInternal17startRunLoop_syncEv_block_invoke;
  v6[3] = &__block_descriptor_tmp_15_2;
  v6[4] = this;
  object = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }

  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&buf.__opaque[24] = v4;
  *&buf.__opaque[40] = v4;
  *&buf.__sig = v4;
  *&buf.__opaque[8] = v4;
  pthread_attr_init(&buf);
  pthread_attr_set_qos_class_np(&buf, QOS_CLASS_USER_INITIATED, 0);
  pthread_create(this + 19, &buf, sServerRunLoopMain, v6);
  dispatch_group_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
  if (object)
  {
    dispatch_release(object);
  }

  if (v3)
  {
    dispatch_release(v3);
  }

  v5 = *MEMORY[0x29EDCA608];
}

void sub_297341568(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
    if (!v14)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if (!v14)
  {
    goto LABEL_3;
  }

  dispatch_release(v14);
  _Unwind_Resume(exception_object);
}

void ABMServerInternal::changeState_sync(uint64_t a1, unsigned int a2)
{
  v13 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 72);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = to_string(*(a1 + 128));
    *buf = 136315394;
    v10 = v5;
    v11 = 2080;
    v12 = to_string(a2);
    _os_log_impl(&dword_297288000, v4, OS_LOG_TYPE_DEFAULT, "#I State change: %s -> %s", buf, 0x16u);
  }

  *(a1 + 128) = a2;
  v6 = *(a1 + 136);
  if (v6)
  {
    v8 = *(a1 + 136);
    dispatch_retain(v6);
    dispatch_group_enter(v6);
    ABMServerInternal::checkShutdown_sync(a1, &v8);
    dispatch_group_leave(v6);
    dispatch_release(v6);
  }

  v7 = *MEMORY[0x29EDCA608];
}

void sub_29734169C(_Unwind_Exception *a1)
{
  dispatch_group_leave(v1);
  dispatch_release(v1);
  _Unwind_Resume(a1);
}

void ___ZN17ABMServerInternal4initENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEERKN3abm9OverridesE_block_invoke_3(uint64_t a1, uint64_t a2, void **a3, void **a4)
{
  v6 = *(a1 + 32);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
    v7 = *a3;
    aBlock[0] = v7;
    if (!v7)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  __p = *a2;
  v7 = *a3;
  aBlock[0] = v7;
  if (v7)
  {
LABEL_5:
    CFRetain(v7);
  }

LABEL_6:
  v8 = *a4;
  if (*a4)
  {
    v8 = _Block_copy(v8);
  }

  aBlock[1] = v8;
  v9 = v6[2];
  if (!v9 || (v10 = v6[1], (v11 = std::__shared_weak_count::lock(v9)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v12 = v11;
  v13 = operator new(0x30uLL);
  *v13 = v6;
  v14 = (v13 + 8);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v14, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v14->__r_.__value_.__l.__data_ = *&__p.__r_.__value_.__l.__data_;
    *(v13 + 3) = *(&__p.__r_.__value_.__l + 2);
  }

  *(v13 + 2) = *aBlock;
  aBlock[0] = 0;
  aBlock[1] = 0;
  v15 = v6[3];
  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  v16 = operator new(0x18uLL);
  *v16 = v13;
  v16[1] = v10;
  v16[2] = v12;
  dispatch_async_f(v15, v16, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableINS1_9XpcServerEE15execute_wrappedIZZZN17ABMServerInternal4initENSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEERKN3abm9OverridesEEUb_EUb0_E3__0EEvOT_EUlvE_EEvP16dispatch_queue_sNS7_10unique_ptrISJ_NS7_14default_deleteISJ_EEEEENUlPvE_8__invokeESS_);
  if (!atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
    v17 = aBlock[1];
    if (!aBlock[1])
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v17 = aBlock[1];
  if (aBlock[1])
  {
LABEL_17:
    _Block_release(v17);
  }

LABEL_18:
  if (aBlock[0])
  {
    CFRelease(aBlock[0]);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void __copy_helper_block_e8_48c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(std::string *a1, uint64_t a2)
{
  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(a1 + 2, *(a2 + 48), *(a2 + 56));
  }

  else
  {
    v2 = *(a2 + 48);
    a1[2].__r_.__value_.__r.__words[2] = *(a2 + 64);
    *&a1[2].__r_.__value_.__l.__data_ = v2;
  }
}

void __destroy_helper_block_e8_48c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1)
{
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }
}

void ___ZN17ABMServerInternal5startEP16dispatch_group_s_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(v1 + 128);
  if (v2 > 5)
  {
    return;
  }

  if (((1 << v2) & 0x35) != 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    return;
  }

  if (v2 == 1)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    return;
  }

  ABMServerInternal::changeState_sync(*(a1 + 40), 0);
  v4 = *MEMORY[0x29EDBEA58];
  v5 = strlen(*MEMORY[0x29EDBEA58]);
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
    v13 = v8 | 0x8000000000000000;
    __dst[0] = v7;
  }

  else
  {
    HIBYTE(v13) = v5;
    v7 = __dst;
    if (!v5)
    {
      goto LABEL_16;
    }
  }

  memmove(v7, v4, v6);
LABEL_16:
  *(v6 + v7) = 0;
  ABMServerInternal::broadcastServerState_sync(v1, __dst);
  v9 = a1;
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__dst[0]);
    v9 = a1;
  }

  *(*(*(v9 + 32) + 8) + 24) = 1;
  v10 = *(v9 + 48);
  v11 = v10;
  if (v10)
  {
    dispatch_retain(v10);
    dispatch_group_enter(v10);
  }

  ABMServerInternal::start_sync(v1, &v11);
  if (v10)
  {
    dispatch_group_leave(v10);

    dispatch_release(v10);
  }
}

void sub_297341A8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (v15)
  {
    dispatch_group_leave(v15);
    dispatch_release(v15);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ABMServerInternal::broadcastServerState_sync(void *a1, uint64_t a2)
{
  cf = 0;
  v4 = *MEMORY[0x29EDB8ED8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (Mutable)
  {
    cf = Mutable;
  }

  if (*(a2 + 23) < 0)
  {
    v7 = *a2;
    v8 = *(a2 + 8);
    v9 = Mutable;
    std::string::__init_copy_ctor_external(&v23, v7, v8);
    Mutable = v9;
  }

  else
  {
    v23 = *a2;
  }

  ctu::cf::insert<char const*,std::string>(Mutable, *MEMORY[0x29EDBE658], &v23, v4, v6);
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  v10 = *MEMORY[0x29EDBED30];
  v11 = strlen(*MEMORY[0x29EDBED30]);
  if (v11 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v12 = v11;
  if (v11 >= 0x17)
  {
    if ((v11 | 7) == 0x17)
    {
      v15 = 25;
    }

    else
    {
      v15 = (v11 | 7) + 1;
    }

    v13 = operator new(v15);
    __dst[1] = v12;
    v21 = v15 | 0x8000000000000000;
    __dst[0] = v13;
LABEL_17:
    memmove(v13, v10, v12);
    *(v12 + v13) = 0;
    v14 = cf;
    if (!cf)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  HIBYTE(v21) = v11;
  v13 = __dst;
  if (v11)
  {
    goto LABEL_17;
  }

  LOBYTE(__dst[0]) = 0;
  v14 = cf;
  if (!cf)
  {
    goto LABEL_20;
  }

LABEL_18:
  v16 = CFGetTypeID(v14);
  if (v16 == CFDictionaryGetTypeID())
  {
    v19 = v14;
    CFRetain(v14);
    v17 = v14;
    goto LABEL_21;
  }

LABEL_20:
  v17 = 0;
  v19 = 0;
LABEL_21:
  v18 = 0;
  ABMServerInternal::broadcast_sync(a1, __dst, &v19, &v18);
  if (v17)
  {
    CFRelease(v17);
  }

  if (SHIBYTE(v21) < 0)
  {
    operator delete(__dst[0]);
    if (!v14)
    {
      return;
    }
  }

  else if (!v14)
  {
    return;
  }

  CFRelease(v14);
}

void sub_297341CB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, const void *a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&a10);
  if (a16 < 0)
  {
    operator delete(__p);
    ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(&a17);
    _Unwind_Resume(a1);
  }

  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(&a17);
  _Unwind_Resume(a1);
}

void ABMServerInternal::start_sync(uint64_t a1, NSObject **a2)
{
  v22 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 72);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    abm::asString();
    v5 = v19 >= 0 ? __p : __p[0];
    *buf = 136315138;
    v21 = v5;
    _os_log_impl(&dword_297288000, v4, OS_LOG_TYPE_DEFAULT, "#I Starting ABM with profile: %s", buf, 0xCu);
    if (v19 < 0)
    {
      operator delete(__p[0]);
    }
  }

  (*(**(a1 + 208) + 40))(*(a1 + 208), 0);
  (*(**(a1 + 224) + 24))(*(a1 + 224));
  __p[0] = 0xAAAAAAAAAAAAAAAALL;
  ServiceManager::bootstrapDynamicServices(*(a1 + 224), __p);
  v6 = *(a1 + 16);
  if (!v6 || (v7 = *(a1 + 8), (v8 = std::__shared_weak_count::lock(v6)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v9 = v8;
  v10 = __p[0];
  v11 = *(a1 + 24);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZN17ABMServerInternal10start_syncEN8dispatch13group_sessionE_block_invoke;
  block[3] = &__block_descriptor_tmp_16_0;
  block[4] = a1;
  block[5] = v7;
  v16 = v8;
  atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  v12 = *a2;
  group = v12;
  if (v12)
  {
    dispatch_retain(v12);
    dispatch_group_enter(group);
  }

  dispatch_group_notify(v10, v11, block);
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  v13 = v16;
  if (!v16 || atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  (v13->__on_zero_shared)(v13);
  std::__shared_weak_count::__release_weak(v13);
  if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
LABEL_17:
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

LABEL_18:
  if (__p[0])
  {
    dispatch_release(__p[0]);
  }

  v14 = *MEMORY[0x29EDCA608];
}

void sub_297341FC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void __copy_helper_block_e8_48c30_ZTSN8dispatch13group_sessionE(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 48);
  *(a1 + 48) = v3;
  if (v3)
  {
    dispatch_retain(v3);
    v4 = *(a1 + 48);
    if (v4)
    {

      dispatch_group_enter(v4);
    }
  }
}

void __destroy_helper_block_e8_48c30_ZTSN8dispatch13group_sessionE(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = *(a1 + 48);
    if (v3)
    {

      dispatch_release(v3);
    }
  }
}

void ___ZN17ABMServerInternal4stopEP16dispatch_group_s_block_invoke(void *a1)
{
  v1 = a1[5];
  v2 = *(v1 + 128);
  if (v2 <= 5)
  {
    v4 = 1;
    if (((1 << v2) & 0x15) != 0)
    {
      v4 = 0;
LABEL_21:
      *(*(a1[4] + 8) + 24) = v4;
      return;
    }

    if (((1 << v2) & 0x28) != 0)
    {
      goto LABEL_21;
    }

    ABMServerInternal::changeState_sync(a1[5], 2u);
    v5 = *MEMORY[0x29EDBEA60];
    v6 = strlen(*MEMORY[0x29EDBEA60]);
    if (v6 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v7 = v6;
    if (v6 >= 0x17)
    {
      if ((v6 | 7) == 0x17)
      {
        v9 = 25;
      }

      else
      {
        v9 = (v6 | 7) + 1;
      }

      v8 = operator new(v9);
      __dst[1] = v7;
      v13 = v9 | 0x8000000000000000;
      __dst[0] = v8;
    }

    else
    {
      HIBYTE(v13) = v6;
      v8 = __dst;
      if (!v6)
      {
        goto LABEL_14;
      }
    }

    memmove(v8, v5, v7);
LABEL_14:
    *(v7 + v8) = 0;
    ABMServerInternal::broadcastServerState_sync(v1, __dst);
    if (SHIBYTE(v13) < 0)
    {
      operator delete(__dst[0]);
    }

    v10 = a1[6];
    v11 = v10;
    if (v10)
    {
      dispatch_retain(v10);
      dispatch_group_enter(v10);
    }

    ABMServerInternal::stop_sync(v1, &v11);
    if (v10)
    {
      dispatch_group_leave(v10);
      dispatch_release(v10);
    }

    v4 = 1;
    goto LABEL_21;
  }
}

void sub_2973421F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (v15)
  {
    dispatch_group_leave(v15);
    dispatch_release(v15);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ABMServerInternal::stop_sync(uint64_t a1, NSObject **a2)
{
  (*(**(a1 + 208) + 40))(*(a1 + 208), 2);
  v15 = 0xAAAAAAAAAAAAAAAALL;
  ServiceManager::shutdownDynamicServices(*(a1 + 224), &v15);
  v4 = *(a1 + 16);
  if (!v4 || (v5 = *(a1 + 8), (v6 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = v15;
  v9 = *(a1 + 24);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZN17ABMServerInternal9stop_syncEN8dispatch13group_sessionE_block_invoke;
  block[3] = &__block_descriptor_tmp_19_1;
  block[4] = a1;
  block[5] = v5;
  v13 = v6;
  atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  v10 = *a2;
  group = v10;
  if (v10)
  {
    dispatch_retain(v10);
    dispatch_group_enter(group);
  }

  dispatch_group_notify(v8, v9, block);
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  v11 = v13;
  if (!v13 || atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  (v11->__on_zero_shared)(v11);
  std::__shared_weak_count::__release_weak(v11);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
LABEL_11:
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

LABEL_12:
  if (v15)
  {
    dispatch_release(v15);
  }
}

void sub_29734241C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 56);
  if (v3)
  {
    dispatch_release(v3);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN17ABMServerInternal8shutdownEP16dispatch_group_s_block_invoke(void *a1)
{
  v3 = a1[5];
  v2 = a1[6];
  v4 = v2;
  if (v2)
  {
    dispatch_retain(v2);
    dispatch_group_enter(v2);
  }

  *(*(a1[4] + 8) + 24) = ABMServerInternal::checkShutdown_sync(v3, &v4);
  if (v2)
  {
    dispatch_group_leave(v2);

    dispatch_release(v2);
  }
}

void sub_2973424CC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    dispatch_group_leave(v1);
    dispatch_release(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ABMServerInternal::checkShutdown_sync(ABMServerInternal *this, dispatch_object_t *a2)
{
  v3 = *(this + 128);
  result = 1;
  if (v3 <= 2)
  {
    if (v3 != 1)
    {
      v5 = *a2;
      if (*a2)
      {
        dispatch_retain(*a2);
        dispatch_group_enter(v5);
      }

      v6 = *(this + 17);
      *(this + 17) = v5;
      if (!v6)
      {
        return 1;
      }

      dispatch_group_leave(v6);
      v7 = v6;
      goto LABEL_30;
    }

    ABMServerInternal::changeState_sync(this, 4);
    v10 = *MEMORY[0x29EDBEA60];
    v11 = strlen(*MEMORY[0x29EDBEA60]);
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
      __dst[1] = v12;
      v18 = v14 | 0x8000000000000000;
      __dst[0] = v13;
    }

    else
    {
      HIBYTE(v18) = v11;
      v13 = __dst;
      if (!v11)
      {
LABEL_24:
        *(v12 + v13) = 0;
        ABMServerInternal::broadcastServerState_sync(this, __dst);
        v15 = a2;
        if (SHIBYTE(v18) < 0)
        {
          operator delete(__dst[0]);
          v15 = a2;
        }

        v8 = *v15;
        v16 = v8;
        if (v8)
        {
          dispatch_retain(v8);
          dispatch_group_enter(v8);
        }

        ABMServerInternal::shutdown_sync(this, &v16);
        if (!v8)
        {
          return 1;
        }

        goto LABEL_29;
      }
    }

    memmove(v13, v10, v12);
    goto LABEL_24;
  }

  switch(v3)
  {
    case 3:
      ABMServerInternal::finishShutdown_sync(this);
      v8 = *(this + 17);
      *(this + 17) = 0;
      if (!v8)
      {
        return 1;
      }

      goto LABEL_29;
    case 4:
      return 0;
    case 5:
      v8 = *(this + 17);
      *(this + 17) = 0;
      if (v8)
      {
LABEL_29:
        dispatch_group_leave(v8);
        v7 = v8;
LABEL_30:
        dispatch_release(v7);
        return 1;
      }

      break;
  }

  return result;
}

void sub_2973426DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (v15)
  {
    dispatch_group_leave(v15);
    dispatch_release(v15);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ABMServerInternal::shutdown_sync(uint64_t a1, NSObject **a2)
{
  (*(**(a1 + 208) + 40))(*(a1 + 208), 4);
  v4 = *a2;
  v5 = v4;
  if (v4)
  {
    dispatch_retain(v4);
    dispatch_group_enter(v4);
  }

  ABMServerInternal::stop_sync(a1, &v5);
  if (v4)
  {
    dispatch_group_leave(v4);

    dispatch_release(v4);
  }
}

void sub_2973427D0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    dispatch_group_leave(v1);
    dispatch_release(v1);
  }

  _Unwind_Resume(exception_object);
}

char *to_string(unsigned int a1)
{
  v14 = *MEMORY[0x29EDCA608];
  if (a1 >= 6)
  {
    v3 = GetOsLogContext()[1];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      *buf = 67109120;
      LODWORD(v7) = a1;
      _os_log_fault_impl(&dword_297288000, v3, OS_LOG_TYPE_FAULT, "Unknown server state %d", buf, 8u);
    }

    v4 = GetOsLogContext()[1];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315906;
      v7 = "ABM ASSERT";
      v8 = 2080;
      v9 = "false";
      v10 = 2080;
      v11 = "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices_Manager/AppleBasebandManager/BasebandManager/Server/ABMServer.cpp";
      v12 = 1024;
      v13 = 77;
      _os_log_fault_impl(&dword_297288000, v4, OS_LOG_TYPE_FAULT, "%s (%s): File: %s Line: %d", buf, 0x26u);
    }

    __break(1u);
  }

  result = off_29EE67EB8[a1];
  v2 = *MEMORY[0x29EDCA608];
  return result;
}

void ___ZN17ABMServerInternal17startRunLoop_syncEv_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  pthread_setname_np("ABM.Server.RunLoop");
  pthread_set_qos_class_self_np(QOS_CLASS_DEFAULT, 0);
  *(v2 + 144) = CFRunLoopGetCurrent();
  dispatch_group_leave(*(a1 + 40));
  v3 = *(v2 + 72);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_297288000, v3, OS_LOG_TYPE_DEFAULT, "#I ABM RunLoop Started", v4, 2u);
  }
}

void __copy_helper_block_e8_40c21_ZTSN8dispatch5groupE(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  *(a1 + 40) = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }
}

void __destroy_helper_block_e8_40c21_ZTSN8dispatch5groupE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    dispatch_release(v1);
  }
}

uint64_t sServerRunLoopMain(void (**a1)(void))
{
  memset(&context, 0, sizeof(context));
  v2 = CFRunLoopSourceCreate(*MEMORY[0x29EDB8ED8], 0, &context);
  if (!v2)
  {
    {
      GetOsLogContext(void)::sOsLogContext = 0;
      qword_2A1399CD8 = 0;
    }

    if (GetOsLogContext(void)::onceToken == -1)
    {
      v7 = qword_2A1399CD8;
      if (!os_log_type_enabled(qword_2A1399CD8, OS_LOG_TYPE_DEFAULT))
      {
        return 0;
      }
    }

    else
    {
      dispatch_once(&GetOsLogContext(void)::onceToken, &__block_literal_global_13);
      v7 = qword_2A1399CD8;
      if (!os_log_type_enabled(qword_2A1399CD8, OS_LOG_TYPE_DEFAULT))
      {
        return 0;
      }
    }

    *v9 = 0;
    _os_log_impl(&dword_297288000, v7, OS_LOG_TYPE_DEFAULT, "Failed to create dummySource for ABM server runloop", v9, 2u);
    return 0;
  }

  v3 = v2;
  Current = CFRunLoopGetCurrent();
  v5 = *MEMORY[0x29EDB8FC0];
  CFRunLoopAddSource(Current, v3, *MEMORY[0x29EDB8FC0]);
  a1[2](a1);
    ;
  }

  v6 = CFRunLoopGetCurrent();
  CFRunLoopRemoveSource(v6, v3, v5);
  CFRelease(v3);
  return 0;
}

void ABMServerInternal::stopRunLoop_sync(ABMServerInternal *this)
{
  v7 = *MEMORY[0x29EDCA608];
  v2 = *(this + 9);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v6[0]) = 0;
    _os_log_impl(&dword_297288000, v2, OS_LOG_TYPE_DEFAULT, "#I Stopping ABM RunLoop", v6, 2u);
  }

  usleep(0x7A120u);
  CFRunLoopStop(*(this + 18));
  *(this + 18) = 0;
  v3 = pthread_join(*(this + 19), 0);
  *(this + 19) = 0;
  v4 = *(this + 9);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = v3;
    _os_log_impl(&dword_297288000, v4, OS_LOG_TYPE_DEFAULT, "#I Stopped ABM RunLoop: %d", v6, 8u);
  }

  v5 = *MEMORY[0x29EDCA608];
}

uint64_t ___ZN17ABMServerInternal10start_syncEN8dispatch13group_sessionE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  ABMServerInternal::changeState_sync(v1, 1u);
  v2 = *MEMORY[0x29EDBE940];
  v3 = strlen(*MEMORY[0x29EDBE940]);
  if (v3 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = v3;
  if (v3 >= 0x17)
  {
    if ((v3 | 7) == 0x17)
    {
      v6 = 25;
    }

    else
    {
      v6 = (v3 | 7) + 1;
    }

    v5 = operator new(v6);
    __dst[1] = v4;
    v14 = v6 | 0x8000000000000000;
    __dst[0] = v5;
    goto LABEL_9;
  }

  HIBYTE(v14) = v3;
  v5 = __dst;
  if (v3)
  {
LABEL_9:
    memmove(v5, v2, v4);
  }

  *(v4 + v5) = 0;
  ABMServerInternal::broadcastServerState_sync(v1, __dst);
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__dst[0]);
    isBootSessionChanged = sys::isBootSessionChanged(v9);
    if (!isBootSessionChanged)
    {
      return (*(**(v1 + 208) + 40))(*(v1 + 208), 1);
    }
  }

  else
  {
    isBootSessionChanged = sys::isBootSessionChanged(v7);
    if (!isBootSessionChanged)
    {
      return (*(**(v1 + 208) + 40))(*(v1 + 208), 1);
    }
  }

  if ((sys::updateBootSessionUUID(isBootSessionChanged) & 1) == 0)
  {
    v10 = *(v1 + 72);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      _os_log_error_impl(&dword_297288000, v10, OS_LOG_TYPE_ERROR, "Failed to update session id", v12, 2u);
    }
  }

  return (*(**(v1 + 208) + 40))(*(v1 + 208), 1);
}

void sub_297342DF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void __copy_helper_block_e8_40c42_ZTSNSt3__110shared_ptrIN3ctu9XpcServerEEE56c30_ZTSN8dispatch13group_sessionE(void *a1, void *a2)
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

void __destroy_helper_block_e8_40c42_ZTSNSt3__110shared_ptrIN3ctu9XpcServerEEE56c30_ZTSN8dispatch13group_sessionE(uint64_t a1)
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

void ___ZN17ABMServerInternal9stop_syncEN8dispatch13group_sessionE_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = v2;
  if (*(v2 + 128) == 4)
  {
    ABMServerInternal::finishShutdown_sync(v2);
  }

  else
  {
    ABMServerInternal::changeState_sync(v2, 3);
    (*(**(v1 + 26) + 40))(*(v1 + 26), 3);
    v4 = *(v1 + 9);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.__pn_.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&dword_297288000, v4, OS_LOG_TYPE_DEFAULT, "#I --------- ABM stop completed ---------", &buf, 2u);
    }
  }

  *(&buf.__pn_.__r_.__value_.__s + 23) = 17;
  strcpy(&buf, "/tmp/abm.shutdown");
  if (remove(&buf, v3))
  {
    unlink(&buf);
  }

  v5 = *MEMORY[0x29EDBE948];
  v6 = strlen(*MEMORY[0x29EDBE948]);
  if (v6 > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_29:
    std::string::__throw_length_error[abi:ne200100]();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    if ((v6 | 7) == 0x17)
    {
      v9 = 25;
    }

    else
    {
      v9 = (v6 | 7) + 1;
    }

    v8 = operator new(v9);
    __dst[1] = v7;
    v20 = v9 | 0x8000000000000000;
    __dst[0] = v8;
    goto LABEL_15;
  }

  HIBYTE(v20) = v6;
  v8 = __dst;
  if (v6)
  {
LABEL_15:
    memmove(v8, v5, v7);
  }

  *(v7 + v8) = 0;
  ABMServerInternal::broadcastServerState_sync(v1, __dst);
  if (SHIBYTE(v20) < 0)
  {
    operator delete(__dst[0]);
  }

  v10 = *MEMORY[0x29EDBE980];
  v11 = strlen(*MEMORY[0x29EDBE980]);
  if (v11 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_29;
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
    __p[1] = v12;
    v18 = v14 | 0x8000000000000000;
    __p[0] = v13;
    goto LABEL_26;
  }

  HIBYTE(v18) = v11;
  v13 = __p;
  if (v11)
  {
LABEL_26:
    memmove(v13, v10, v12);
  }

  *(v12 + v13) = 0;
  v15 = 0;
  v16 = 0;
  ABMServerInternal::broadcast_sync(v1, __p, &v16, &v15);
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_297343154(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, const void *a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&a10);
  if (a16 < 0)
  {
    operator delete(a11);
  }

  _Unwind_Resume(a1);
}

void ABMServerInternal::finishStop_sync(ABMServerInternal *this)
{
  ABMServerInternal::changeState_sync(this, 3u);
  (*(**(this + 26) + 40))(*(this + 26), 3);
  v2 = *(this + 9);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_297288000, v2, OS_LOG_TYPE_DEFAULT, "#I --------- ABM stop completed ---------", v3, 2u);
  }
}

void ABMServerInternal::broadcast_sync(void *a1, uint64_t a2, ctu **a3, void **a4)
{
  v76 = *MEMORY[0x29EDCA608];
  v6 = xpc_dictionary_create(0, 0, 0);
  if (v6 || (v6 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C26F9F0](v6) == MEMORY[0x29EDCAA00])
    {
      xpc_retain(v6);
      v7 = v6;
    }

    else
    {
      v7 = xpc_null_create();
    }
  }

  else
  {
    v7 = xpc_null_create();
    v6 = 0;
  }

  xpc_release(v6);
  v43 = v7;
  if (*a3)
  {
    ctu::cf_to_xpc(&v70, *a3, v8);
    xpc_dictionary_set_value(v7, kKeyEventData, v70);
    v9 = v70;
    v70 = xpc_null_create();
    xpc_release(v9);
    xpc_release(v70);
    v70 = 0;
  }

  v10 = xpc_string_create(kCommandSignalNotification);
  if (!v10)
  {
    v10 = xpc_null_create();
  }

  xpc_dictionary_set_value(v7, kKeyCommand, v10);
  v11 = xpc_null_create();
  xpc_release(v10);
  xpc_release(v11);
  v12 = a2;
  if (*(a2 + 23) < 0)
  {
    v12 = *a2;
  }

  v13 = xpc_string_create(v12);
  if (!v13)
  {
    v13 = xpc_null_create();
  }

  xpc_dictionary_set_value(v7, kKeyEvent, v13);
  v14 = xpc_null_create();
  xpc_release(v13);
  xpc_release(v14);
  v15 = dispatch_group_create();
  v16 = a1[2];
  if (!v16 || (v44 = a1[1], (v17 = std::__shared_weak_count::lock(v16)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v18 = v17;
  atomic_fetch_add_explicit(&v17->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v18);
    v45 = v18;
    v19 = a1[10];
    v47 = a1;
    v20 = a1 + 11;
    if (v19 == v20)
    {
      goto LABEL_90;
    }

LABEL_23:
    while (1)
    {
      v68 = 0xAAAAAAAAAAAAAAAALL;
      v69 = 0xAAAAAAAAAAAAAAAALL;
      v21 = v19[4];
      v67 = v21;
      if (v21)
      {
        break;
      }

      v21 = xpc_null_create();
      v67 = v21;
      v23 = v19[5];
      v22 = v19[6];
      v68 = v23;
      v69 = v22;
      if (v22)
      {
        goto LABEL_25;
      }

LABEL_26:
      if (v21)
      {
        xpc_retain(v21);
        v65 = v23;
        v66 = v22;
        if (!v22)
        {
          goto LABEL_29;
        }

LABEL_28:
        atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
        goto LABEL_29;
      }

      v21 = xpc_null_create();
      v65 = v23;
      v66 = v22;
      if (v22)
      {
        goto LABEL_28;
      }

LABEL_29:
      v64 = *a3;
      v24 = v64;
      if (v64)
      {
        CFRetain(v64);
        *buf = v24;
        CFRetain(v24);
      }

      else
      {
        *buf = 0;
      }

      isNotificationRegistered = ServerClientState::State::isNotificationRegistered(v23, a2, buf);
      if (*buf)
      {
        CFRelease(*buf);
      }

      if (v24)
      {
        CFRelease(v24);
      }

      if (!isNotificationRegistered)
      {
        goto LABEL_76;
      }

      SystemTime = TelephonyUtilGetSystemTime();
      v27 = v47[9];
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = a2;
        if (*(a2 + 23) < 0)
        {
          v28 = *a2;
          if (*(v23 + 23) < 0)
          {
            goto LABEL_46;
          }

LABEL_44:
          v29 = *v23;
          v63.__r_.__value_.__r.__words[2] = *(v23 + 16);
          *&v63.__r_.__value_.__l.__data_ = v29;
        }

        else
        {
          if ((*(v23 + 23) & 0x80000000) == 0)
          {
            goto LABEL_44;
          }

LABEL_46:
          std::string::__init_copy_ctor_external(&v63, *v23, *(v23 + 8));
        }

        v30 = &v63;
        if ((v63.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v30 = v63.__r_.__value_.__r.__words[0];
        }

        *buf = 136315650;
        *&buf[4] = v28;
        v72 = 2080;
        v73 = v30;
        v74 = 2048;
        v75 = SystemTime;
        _os_log_impl(&dword_297288000, v27, OS_LOG_TYPE_DEFAULT, "#I Sending %s to %s at %llu", buf, 0x20u);
        if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v63.__r_.__value_.__l.__data_);
        }

        v7 = v43;
      }

      if (*a4)
      {
        if (v15)
        {
          dispatch_retain(v15);
          dispatch_group_enter(v15);
        }

        v31 = v47[3];
        handler[0] = MEMORY[0x29EDCA5F8];
        handler[1] = 1174405120;
        handler[2] = ___ZN17ABMServerInternal14broadcast_syncENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK14__CFDictionaryEEN8dispatch5blockIU13block_pointerFvvEEE_block_invoke;
        handler[3] = &__block_descriptor_tmp_31_1;
        handler[4] = v47;
        group = v15;
        if (v15)
        {
          dispatch_retain(v15);
          if (group)
          {
            dispatch_group_enter(group);
          }
        }

        v57 = v44;
        v58 = v45;
        atomic_fetch_add_explicit(&v45->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v59 = v23;
        v60 = v22;
        if (v22)
        {
          atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
        }

        if (*(a2 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
        }

        else
        {
          __p = *a2;
        }

        v62 = SystemTime;
        xpc_connection_send_message_with_reply(v21, v7, v31, handler);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
          v32 = v60;
          if (!v60)
          {
            goto LABEL_69;
          }
        }

        else
        {
          v32 = v60;
          if (!v60)
          {
LABEL_69:
            v33 = v58;
            if (v58)
            {
              goto LABEL_70;
            }

            goto LABEL_71;
          }
        }

        if (atomic_fetch_add(&v32->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_69;
        }

        (v32->__on_zero_shared)(v32);
        std::__shared_weak_count::__release_weak(v32);
        v33 = v58;
        if (v58)
        {
LABEL_70:
          std::__shared_weak_count::__release_weak(v33);
        }

LABEL_71:
        if (group)
        {
          dispatch_group_leave(group);
          if (group)
          {
            dispatch_release(group);
          }
        }

        if (v15)
        {
          dispatch_group_leave(v15);
          dispatch_release(v15);
        }

        goto LABEL_76;
      }

      xpc_connection_send_message(v21, v7);
LABEL_76:
      v34 = v66;
      if (v66 && !atomic_fetch_add(&v66->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v34->__on_zero_shared)(v34);
        std::__shared_weak_count::__release_weak(v34);
      }

      xpc_release(v21);
      v35 = v69;
      if (v69 && !atomic_fetch_add((v69 + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v35->__on_zero_shared)(v35);
        std::__shared_weak_count::__release_weak(v35);
      }

      xpc_release(v67);
      v36 = v19[1];
      if (v36)
      {
        do
        {
          v37 = v36;
          v36 = *v36;
        }

        while (v36);
      }

      else
      {
        do
        {
          v37 = v19[2];
          v38 = *v37 == v19;
          v19 = v37;
        }

        while (!v38);
      }

      v19 = v37;
      if (v37 == v20)
      {
        goto LABEL_90;
      }
    }

    xpc_retain(v21);
    v23 = v19[5];
    v22 = v19[6];
    v68 = v23;
    v69 = v22;
    if (!v22)
    {
      goto LABEL_26;
    }

LABEL_25:
    atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
    goto LABEL_26;
  }

  v45 = v17;
  v19 = a1[10];
  v47 = a1;
  v20 = a1 + 11;
  if (v19 != v20)
  {
    goto LABEL_23;
  }

LABEL_90:
  v39 = v47[28];
  object = v15;
  if (v15)
  {
    dispatch_retain(v15);
  }

  v53 = v7;
  if (v7)
  {
    xpc_retain(v7);
    v40 = v53;
  }

  else
  {
    v40 = xpc_null_create();
    v53 = v40;
  }

  ServiceManager::handleBroadcastEvent(v39, &object, &v53);
  xpc_release(v40);
  v53 = 0;
  if (object)
  {
    dispatch_release(object);
  }

  if (*a4)
  {
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN17ABMServerInternal14broadcast_syncENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK14__CFDictionaryEEN8dispatch5blockIU13block_pointerFvvEEE_block_invoke_32;
    block[3] = &__block_descriptor_tmp_33;
    block[4] = v47;
    block[5] = v44;
    v50 = v45;
    atomic_fetch_add_explicit(&v45->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v51, *a2, *(a2 + 8));
    }

    else
    {
      v51 = *a2;
    }

    v41 = *a4;
    if (*a4)
    {
      v41 = _Block_copy(v41);
    }

    aBlock = v41;
    dispatch_group_notify(v15, v47[3], block);
    if (aBlock)
    {
      _Block_release(aBlock);
    }

    if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v51.__r_.__value_.__l.__data_);
    }

    if (v50)
    {
      std::__shared_weak_count::__release_weak(v50);
    }
  }

  std::__shared_weak_count::__release_weak(v45);
  if (v15)
  {
    dispatch_release(v15);
  }

  xpc_release(v7);
  v42 = *MEMORY[0x29EDCA608];
}

void sub_297343A7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, dispatch_group_t group, uint64_t a37, std::__shared_weak_count *a38, uint64_t a39, uint64_t a40, void *__p, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if (a24)
  {
    std::__shared_weak_count::__release_weak(a24);
  }

  std::__shared_weak_count::__release_weak(a14);
  if (v46)
  {
    dispatch_release(v46);
  }

  xpc_release(object);
  _Unwind_Resume(a1);
}

void *ABMServerInternal::getClientState_sync@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  v5 = *(a1 + 88);
  result = (a1 + 88);
  v4 = v5;
  if (v5)
  {
    v6 = *a2;
    v7 = result;
    do
    {
      v8 = v4[4];
      v9 = v8 >= v6;
      v10 = v8 < v6;
      if (v9)
      {
        v7 = v4;
      }

      v4 = v4[v10];
    }

    while (v4);
    if (v7 != result && v6 >= v7[4])
    {
      v12 = v7[5];
      v11 = v7[6];
      if (v11)
      {
        atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
      }

      *a3 = v12;
      a3[1] = v11;
    }
  }

  return result;
}

void ABMServerInternal::handleServerError_sync(uint64_t a1, xpc::object *a2)
{
  v13 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 128);
  if (v2 != 3 && v2 != 5)
  {
    v5 = *(a1 + 72);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      xpc::object::to_string(__p, a2);
      if (v10 >= 0)
      {
        v8 = __p;
      }

      else
      {
        v8 = __p[0];
      }

      *buf = 136315138;
      v12 = v8;
      _os_log_impl(&dword_297288000, v5, OS_LOG_TYPE_DEFAULT, "#I Server error: %s", buf, 0xCu);
      if (v10 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  v4 = *MEMORY[0x29EDCA608];
}

void ABMServerInternal::handleNewClient_sync(uint64_t a1@<X0>, xpc::object *a2@<X1>, const void **a3@<X8>)
{
  v43[3] = *MEMORY[0x29EDCA608];
  *a3 = 0;
  if ((*(a1 + 128) & 0xFE) == 4)
  {
    v6 = *(a1 + 72);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_59;
    }

    v7 = MEMORY[0x29C26F920](*a2);
    memset(__p, 170, sizeof(__p));
    v8 = strlen(v7);
    if (v8 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v9 = v8;
    if (v8 >= 0x17)
    {
      if ((v8 | 7) == 0x17)
      {
        v19 = 25;
      }

      else
      {
        v19 = (v8 | 7) + 1;
      }

      v10 = operator new(v19);
      __p[1] = v9;
      __p[2] = (v19 | 0x8000000000000000);
      __p[0] = v10;
    }

    else
    {
      HIBYTE(__p[2]) = v8;
      v10 = __p;
      if (!v8)
      {
        goto LABEL_23;
      }
    }

    memcpy(v10, v7, v9);
LABEL_23:
    *(v9 + v10) = 0;
    free(v7);
    v20 = SHIBYTE(__p[2]);
    v21 = __p[0];
    v22 = to_string(*(a1 + 128));
    v23 = __p;
    if (v20 < 0)
    {
      v23 = v21;
    }

    *buf = 136315394;
    *&buf[4] = v23;
    *&buf[12] = 2080;
    *&buf[14] = v22;
    _os_log_impl(&dword_297288000, v6, OS_LOG_TYPE_DEFAULT, "#I Rejecting new client %s because server state is '%s'", buf, 0x16u);
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }

    goto LABEL_59;
  }

  xpc::object::to_string(__p, a2);
  v11 = operator new(0x38uLL);
  v12 = v11;
  if (SHIBYTE(__p[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v11, __p[0], __p[1]);
  }

  else
  {
    *&v11->__r_.__value_.__l.__data_ = *__p;
    v11->__r_.__value_.__r.__words[2] = __p[2];
  }

  v12[1].__r_.__value_.__s.__data_[0] = 0;
  v12[2].__r_.__value_.__r.__words[0] = 0;
  v12[1].__r_.__value_.__r.__words[2] = 0;
  v12[1].__r_.__value_.__l.__size_ = &v12[1].__r_.__value_.__r.__words[2];
  *buf = v12;
  v43[0] = v12;
  v13 = operator new(0x20uLL);
  *v13 = &unk_2A1E3C9A8;
  v13[1] = 0;
  v13[2] = 0;
  v13[3] = v12;
  *&buf[8] = v13;
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
    v14 = *(a1 + 72);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_35;
    }
  }

  else
  {
    v14 = *(a1 + 72);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_35;
    }
  }

  v15 = MEMORY[0x29C26F920](*a2);
  memset(__p, 170, sizeof(__p));
  v16 = strlen(v15);
  if (v16 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v17 = v16;
  if (v16 >= 0x17)
  {
    if ((v16 | 7) == 0x17)
    {
      v24 = 25;
    }

    else
    {
      v24 = (v16 | 7) + 1;
    }

    v18 = operator new(v24);
    __p[1] = v17;
    __p[2] = (v24 | 0x8000000000000000);
    __p[0] = v18;
    goto LABEL_31;
  }

  HIBYTE(__p[2]) = v16;
  v18 = __p;
  if (v16)
  {
LABEL_31:
    memcpy(v18, v15, v17);
  }

  *(v17 + v18) = 0;
  free(v15);
  v25 = __p;
  if (SHIBYTE(__p[2]) < 0)
  {
    v25 = __p[0];
  }

  LODWORD(v43[0]) = 136315138;
  *(v43 + 4) = v25;
  _os_log_impl(&dword_297288000, v14, OS_LOG_TYPE_DEFAULT, "#I New client: %s", v43, 0xCu);
  if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
  {
LABEL_35:
    v26 = *a2;
    v28 = (a1 + 88);
    v27 = *(a1 + 88);
    if (v27)
    {
      goto LABEL_40;
    }

    goto LABEL_36;
  }

  operator delete(__p[0]);
  v26 = *a2;
  v28 = (a1 + 88);
  v27 = *(a1 + 88);
  if (!v27)
  {
LABEL_36:
    v29 = v28;
LABEL_44:
    v31 = operator new(0x38uLL);
    v31[4] = v26;
    if (v26)
    {
      xpc_retain(v26);
    }

    else
    {
      v31[4] = xpc_null_create();
    }

    v31[5] = 0;
    v31[6] = 0;
    *v31 = 0;
    v31[1] = 0;
    v31[2] = v29;
    *v28 = v31;
    v32 = **(a1 + 80);
    if (v32)
    {
      *(a1 + 80) = v32;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(a1 + 88), v31);
    ++*(a1 + 96);
    v34 = *buf;
    v33 = *&buf[8];
    if (!*&buf[8])
    {
      goto LABEL_51;
    }

    goto LABEL_50;
  }

  while (1)
  {
LABEL_40:
    while (1)
    {
      v29 = v27;
      v30 = v27[4];
      if (v30 <= v26)
      {
        break;
      }

      v27 = *v29;
      v28 = v29;
      if (!*v29)
      {
        goto LABEL_44;
      }
    }

    if (v30 >= v26)
    {
      break;
    }

    v27 = v29[1];
    if (!v27)
    {
      v28 = v29 + 1;
      goto LABEL_44;
    }
  }

  v31 = v29;
  v34 = *buf;
  v33 = *&buf[8];
  if (!*&buf[8])
  {
    goto LABEL_51;
  }

LABEL_50:
  atomic_fetch_add_explicit((v33 + 8), 1uLL, memory_order_relaxed);
LABEL_51:
  v35 = v31[6];
  v31[5] = v34;
  v31[6] = v33;
  if (v35 && !atomic_fetch_add(&v35->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v35->__on_zero_shared)(v35);
    std::__shared_weak_count::__release_weak(v35);
  }

  v40[0] = MEMORY[0x29EDCA5F8];
  v40[1] = 0x40000000;
  v40[2] = ___ZN17ABMServerInternal20handleNewClient_syncEN3xpc10connectionE_block_invoke;
  v40[3] = &__block_descriptor_tmp_21_0;
  v40[4] = a1;
  v36 = _Block_copy(v40);
  v37 = *a3;
  *a3 = v36;
  if (v37)
  {
    _Block_release(v37);
  }

  v38 = *&buf[8];
  if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v38->__on_zero_shared)(v38);
    std::__shared_weak_count::__release_weak(v38);
  }

LABEL_59:
  v39 = *MEMORY[0x29EDCA608];
}

void sub_297344298(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  operator delete(v25);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (*v24)
  {
    _Block_release(*v24);
  }

  _Unwind_Resume(a1);
}

void ___ZN17ABMServerInternal20handleNewClient_syncEN3xpc10connectionE_block_invoke(uint64_t a1, void **a2, void **a3)
{
  v4 = *(a1 + 32);
  v5 = *a2;
  v8 = v5;
  if (!v5)
  {
    v8 = xpc_null_create();
    v6 = *a3;
    object = v6;
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_5:
    object = xpc_null_create();
    goto LABEL_6;
  }

  xpc_retain(v5);
  v6 = *a3;
  object = v6;
  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_3:
  xpc_retain(v6);
LABEL_6:
  (*(*v4 + 40))(v4, &v8, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v8);
}

void sub_2973443EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, xpc_object_t a10)
{
  xpc_release(object);
  xpc_release(a10);
  _Unwind_Resume(a1);
}

void ABMServerInternal::handleClientError_sync(void *a1, xpc_object_t *a2, xpc::object *a3)
{
  v53 = *MEMORY[0x29EDCA608];
  v6 = *a2;
  if (*a2)
  {
    xpc_retain(*a2);
    v48 = 0;
    v49 = 0;
    v8 = a1 + 11;
    v7 = a1[11];
    if (!v7)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v6 = xpc_null_create();
    v48 = 0;
    v49 = 0;
    v8 = a1 + 11;
    v7 = a1[11];
    if (!v7)
    {
LABEL_12:
      v13 = 0;
      v14 = 0;
      goto LABEL_13;
    }
  }

  v9 = v8;
  do
  {
    v10 = v7[4];
    v11 = v10 >= v6;
    v12 = v10 < v6;
    if (v11)
    {
      v9 = v7;
    }

    v7 = v7[v12];
  }

  while (v7);
  if (v9 == v8 || v6 < v9[4])
  {
    goto LABEL_12;
  }

  v14 = v9[5];
  v13 = v9[6];
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v48 = v14;
  v49 = v13;
LABEL_13:
  xpc_release(v6);
  if (v14)
  {
    memset(v47, 170, 24);
    if (*(v14 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v50, *v14, *(v14 + 1));
    }

    else
    {
      v15 = *v14;
      v50.__r_.__value_.__r.__words[2] = *(v14 + 2);
      *&v50.__r_.__value_.__l.__data_ = v15;
    }

    v16 = std::string::insert(&v50, 0, "Client '", 8uLL);
    v17 = *&v16->__r_.__value_.__l.__data_;
    v52 = v16->__r_.__value_.__r.__words[2];
    *__p = v17;
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    v18 = SHIBYTE(v52);
    if ((SHIBYTE(v52) & 0x8000000000000000) != 0)
    {
      v18 = __p[1];
      v21 = v52 & 0x7FFFFFFFFFFFFFFFLL;
      v20 = (v52 & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v20 == __p[1])
      {
        v22 = 0x7FFFFFFFFFFFFFF7;
        if (v21 == 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v19 = __p[0];
        if (v20 > 0x3FFFFFFFFFFFFFF2)
        {
          v25 = 0;
LABEL_32:
          v26 = operator new(v22);
          v27 = v26;
          if (v20)
          {
            memmove(v26, v19, v20);
          }

          v27[v20] = 39;
          if (!v25)
          {
            operator delete(v19);
          }

          __p[1] = v21;
          v52 = v22 | 0x8000000000000000;
          __p[0] = v27;
          v28 = &v27[v21];
LABEL_45:
          *v28 = 0;
          *v47 = *__p;
          v47[2] = v52;
          __p[1] = 0;
          v52 = 0;
          __p[0] = 0;
          if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v50.__r_.__value_.__l.__data_);
            v30 = *a3;
            if (*a3 != MEMORY[0x29EDCA9C0])
            {
LABEL_47:
              if (v30 == MEMORY[0x29EDCA9B8])
              {
                v32 = a1[9];
                if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
                {
                  goto LABEL_77;
                }

                v43 = v47;
                if (SHIBYTE(v47[2]) < 0)
                {
                  v43 = v47[0];
                }

                LODWORD(__p[0]) = 136315138;
                *(__p + 4) = v43;
                v44 = "#D %s connection interrupted";
              }

              else
              {
                v31 = MEMORY[0x29EDCA9D0];
                v32 = a1[9];
                v33 = os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG);
                if (v30 != v31)
                {
                  if (v33)
                  {
                    xpc::object::to_string(__p, a3);
                    v34 = v47;
                    if (SHIBYTE(v47[2]) < 0)
                    {
                      v34 = v47[0];
                    }

                    v35 = v52 >= 0 ? __p : __p[0];
                    LODWORD(v50.__r_.__value_.__l.__data_) = 136315394;
                    *(v50.__r_.__value_.__r.__words + 4) = v34;
                    WORD2(v50.__r_.__value_.__r.__words[1]) = 2080;
                    *(&v50.__r_.__value_.__r.__words[1] + 6) = v35;
                    _os_log_debug_impl(&dword_297288000, v32, OS_LOG_TYPE_DEBUG, "#D %s %s", &v50, 0x16u);
                    if (SHIBYTE(v52) < 0)
                    {
                      operator delete(__p[0]);
                      if (SHIBYTE(v47[2]) < 0)
                      {
                        goto LABEL_78;
                      }

                      goto LABEL_79;
                    }
                  }

LABEL_77:
                  if (SHIBYTE(v47[2]) < 0)
                  {
LABEL_78:
                    operator delete(v47[0]);
                  }

LABEL_79:
                  v13 = v49;
                  goto LABEL_80;
                }

                if (!v33)
                {
                  goto LABEL_77;
                }

                v46 = v47;
                if (SHIBYTE(v47[2]) < 0)
                {
                  v46 = v47[0];
                }

                LODWORD(__p[0]) = 136315138;
                *(__p + 4) = v46;
                v44 = "#D %s will be terminated";
              }

              _os_log_debug_impl(&dword_297288000, v32, OS_LOG_TYPE_DEBUG, v44, __p, 0xCu);
              if ((SHIBYTE(v47[2]) & 0x80000000) == 0)
              {
                goto LABEL_79;
              }

              goto LABEL_78;
            }
          }

          else
          {
            v30 = *a3;
            if (*a3 != MEMORY[0x29EDCA9C0])
            {
              goto LABEL_47;
            }
          }

          v36 = a1[9];
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            v37 = v47;
            if (SHIBYTE(v47[2]) < 0)
            {
              v37 = v47[0];
            }

            LODWORD(__p[0]) = 136315138;
            *(__p + 4) = v37;
            _os_log_impl(&dword_297288000, v36, OS_LOG_TYPE_DEFAULT, "#I %s disappeared", __p, 0xCu);
          }

          v38 = a1[11];
          if (v38)
          {
            v39 = *a2;
            v40 = v8;
            do
            {
              v41 = *(v38 + 32);
              v11 = v41 >= v39;
              v42 = v41 < v39;
              if (v11)
              {
                v40 = v38;
              }

              v38 = *(v38 + 8 * v42);
            }

            while (v38);
            if (v40 != v8 && v39 >= *(v40 + 32))
            {
              std::__tree<std::__value_type<xpc::connection,ServerClientState>,std::__map_value_compare<xpc::connection,std::__value_type<xpc::connection,ServerClientState>,std::less<xpc::connection>,true>,std::allocator<std::__value_type<xpc::connection,ServerClientState>>>::erase(a1 + 10, v40);
            }
          }

          goto LABEL_77;
        }

LABEL_23:
        v23 = 2 * v20;
        if (v21 > 2 * v20)
        {
          v23 = v21;
        }

        if ((v23 | 7) == 0x17)
        {
          v24 = 25;
        }

        else
        {
          v24 = (v23 | 7) + 1;
        }

        if (v23 >= 0x17)
        {
          v22 = v24;
        }

        else
        {
          v22 = 23;
        }

        v25 = v20 == 22;
        goto LABEL_32;
      }

      v19 = __p[0];
    }

    else
    {
      v19 = __p;
      if (SHIBYTE(v52) == 22)
      {
        v20 = 22;
        v21 = 23;
        goto LABEL_23;
      }
    }

    *(v18 + v19) = 39;
    v29 = v18 + 1;
    if (SHIBYTE(v52) < 0)
    {
      __p[1] = v29;
    }

    else
    {
      HIBYTE(v52) = v29 & 0x7F;
    }

    v28 = &v29[v19];
    goto LABEL_45;
  }

LABEL_80:
  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

  v45 = *MEMORY[0x29EDCA608];
}

void sub_29734495C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](&a16);
  _Unwind_Resume(a1);
}

void sub_2973449C4(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void ABMServerInternal::handleMessage_sync(uint64_t a1, xpc_object_t *a2, xpc::object *a3)
{
  v42 = *MEMORY[0x29EDCA608];
  v6 = *a2;
  if (*a2)
  {
    xpc_retain(*a2);
    v36 = 0;
    v37 = 0;
    v7 = (a1 + 88);
    v8 = *(a1 + 88);
    if (!v8)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v6 = xpc_null_create();
    v36 = 0;
    v37 = 0;
    v7 = (a1 + 88);
    v8 = *(a1 + 88);
    if (!v8)
    {
LABEL_12:
      v13 = 0;
      goto LABEL_13;
    }
  }

  v9 = v7;
  do
  {
    v10 = v8[4];
    v11 = v10 >= v6;
    v12 = v10 < v6;
    if (v11)
    {
      v9 = v8;
    }

    v8 = v8[v12];
  }

  while (v8);
  if (v9 == v7 || v6 < v9[4])
  {
    goto LABEL_12;
  }

  v13 = v9[5];
  v20 = v9[6];
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v36 = v13;
  v37 = v20;
LABEL_13:
  xpc_release(v6);
  v14 = *(a1 + 72);
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG);
  if (v13)
  {
    if (!v15)
    {
      goto LABEL_18;
    }

    if (*(v13 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v35, *v13, *(v13 + 1));
    }

    else
    {
      v28 = *v13;
      v35.__r_.__value_.__r.__words[2] = *(v13 + 2);
      *&v35.__r_.__value_.__l.__data_ = v28;
    }

    v29 = SHIBYTE(v35.__r_.__value_.__r.__words[2]);
    v30 = v35.__r_.__value_.__r.__words[0];
    xpc::object::to_string(__p, a3);
    v26 = &v35;
    if (v29 < 0)
    {
      v26 = v30;
    }

    if (v34 >= 0)
    {
      v27 = __p;
    }

    else
    {
      v27 = __p[0];
    }
  }

  else
  {
    if (!v15)
    {
      goto LABEL_18;
    }

    xpc::object::to_string(&v35, a2);
    v24 = SHIBYTE(v35.__r_.__value_.__r.__words[2]);
    v25 = v35.__r_.__value_.__r.__words[0];
    xpc::object::to_string(__p, a3);
    v26 = &v35;
    if (v24 < 0)
    {
      v26 = v25;
    }

    if (v34 >= 0)
    {
      v27 = __p;
    }

    else
    {
      v27 = __p[0];
    }
  }

  *buf = 136315394;
  v39 = v26;
  v40 = 2080;
  v41 = v27;
  _os_log_debug_impl(&dword_297288000, v14, OS_LOG_TYPE_DEBUG, "#D Message from %s:\n%s", buf, 0x16u);
  if (v34 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

LABEL_18:
  v16 = *a3;
  v35.__r_.__value_.__r.__words[0] = v16;
  if (v16)
  {
    xpc_retain(v16);
  }

  else
  {
    v16 = xpc_null_create();
    v35.__r_.__value_.__r.__words[0] = v16;
  }

  v17 = MEMORY[0x29C26F9F0](v16);
  v18 = MEMORY[0x29EDCAA00];
  if (v17 == MEMORY[0x29EDCAA00])
  {
    v19 = *a2;
    v32 = v19;
    if (v19)
    {
      xpc_retain(v19);
    }

    else
    {
      v19 = xpc_null_create();
      v32 = v19;
    }

    ABMServerInternal::handleInternalMessage_sync(a1, &v32, &v35.__r_.__value_.__l.__data_);
    xpc_release(v19);
    v32 = 0;
    v16 = v35.__r_.__value_.__r.__words[0];
  }

  if (MEMORY[0x29C26F9F0](v16) == v18)
  {
    v21 = *a2;
    v31 = v21;
    if (v21)
    {
      xpc_retain(v21);
    }

    else
    {
      v21 = xpc_null_create();
      v31 = v21;
    }

    ABMServerInternal::handlePublicMessage_sync(a1, &v31, &v35.__r_.__value_.__l.__data_);
    xpc_release(v21);
    v31 = 0;
  }

  xpc_release(v35.__r_.__value_.__l.__data_);
  v22 = v37;
  if (v37 && !atomic_fetch_add(&v37->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v22->__on_zero_shared)(v22);
    std::__shared_weak_count::__release_weak(v22);
  }

  v23 = *MEMORY[0x29EDCA608];
}

void sub_297344D74(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, xpc_object_t object)
{
  xpc_release(v15);
  xpc_release(object);
  JUMPOUT(0x297344DF0);
}

void sub_297344D94(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15)
{
  xpc_release(v15);
  xpc_release(a15);
  JUMPOUT(0x297344DF0);
}

void sub_297344E00(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void ABMServerInternal::handleInternalMessage_sync(uint64_t a1, xpc_object_t *a2, xpc_object_t *a3)
{
  v71 = *MEMORY[0x29EDCA608];
  memset(__s1, 170, sizeof(__s1));
  value = xpc_dictionary_get_value(*a3, kKeyCommand);
  object[0] = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object[0] = xpc_null_create();
  }

  memset(buf, 0, sizeof(buf));
  xpc::dyn_cast_or_default();
  xpc_release(object[0]);
  v7 = strlen(kCommandCheckIn);
  v8 = SHIBYTE(__s1[2]);
  if ((SHIBYTE(__s1[2]) & 0x8000000000000000) != 0)
  {
    if (v7 == __s1[1])
    {
      if (v7 == -1)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      if (!memcmp(__s1[0], kCommandCheckIn, v7))
      {
LABEL_34:
        memset(object, 170, sizeof(object));
        v14 = xpc_dictionary_get_value(*a3, kKeyClientName);
        v67 = v14;
        if (v14)
        {
          xpc_retain(v14);
        }

        else
        {
          v67 = xpc_null_create();
        }

        memset(buf, 0, sizeof(buf));
        xpc::dyn_cast_or_default();
        if (buf[23] < 0)
        {
          operator delete(*buf);
        }

        xpc_release(v67);
        memset(buf, 170, 16);
        v18 = *a2;
        if (*a2)
        {
          xpc_retain(*a2);
          *buf = 0;
          *&buf[8] = 0;
          v19 = (a1 + 88);
          v20 = *(a1 + 88);
          if (!v20)
          {
            goto LABEL_54;
          }
        }

        else
        {
          v18 = xpc_null_create();
          *buf = 0;
          *&buf[8] = 0;
          v19 = (a1 + 88);
          v20 = *(a1 + 88);
          if (!v20)
          {
            goto LABEL_54;
          }
        }

        v21 = v19;
        do
        {
          v22 = v20[4];
          v23 = v22 >= v18;
          v24 = v22 < v18;
          if (v23)
          {
            v21 = v20;
          }

          v20 = v20[v24];
        }

        while (v20);
        if (v21 != v19 && v18 >= v21[4])
        {
          v26 = v21[5];
          v25 = v21[6];
          if (v25)
          {
            atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          *buf = v26;
          *&buf[8] = v25;
          goto LABEL_55;
        }

LABEL_54:
        v25 = 0;
        v26 = 0;
LABEL_55:
        xpc_release(v18);
        if (v26)
        {
          if (v26 != object)
          {
            if (*(v26 + 23) < 0)
            {
              if (SHIBYTE(object[2]) >= 0)
              {
                v46 = object;
              }

              else
              {
                v46 = object[0];
              }

              if (SHIBYTE(object[2]) >= 0)
              {
                v47 = HIBYTE(object[2]);
              }

              else
              {
                v47 = object[1];
              }

              std::string::__assign_no_alias<false>(v26, v46, v47);
            }

            else if ((HIBYTE(object[2]) & 0x80) != 0)
            {
              std::string::__assign_no_alias<true>(v26, object[0], object[1]);
            }

            else
            {
              v27 = *object;
              *(v26 + 16) = object[2];
              *v26 = v27;
            }
          }

          *(v26 + 24) = 1;
        }

        if (v25 && !atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v25->__on_zero_shared)(v25);
          std::__shared_weak_count::__release_weak(v25);
        }

        if (SHIBYTE(object[2]) < 0)
        {
          operator delete(object[0]);
        }

        goto LABEL_117;
      }
    }
  }

  else if (v7 == SHIBYTE(__s1[2]) && !memcmp(__s1, kCommandCheckIn, v7))
  {
    goto LABEL_34;
  }

  v9 = strlen(kCommandCheckOut);
  if ((v8 & 0x80000000) != 0)
  {
    if (v9 == __s1[1])
    {
      if (v9 == -1)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      if (!memcmp(__s1[0], kCommandCheckOut, v9))
      {
        goto LABEL_36;
      }
    }

LABEL_18:
    v10 = strlen(kCommandEventsOn);
    if ((v8 & 0x80000000) != 0)
    {
      if (v10 == __s1[1])
      {
        if (v10 == -1)
        {
          std::string::__throw_out_of_range[abi:ne200100]();
        }

        if (!memcmp(__s1[0], kCommandEventsOn, v10))
        {
LABEL_38:
          v16 = xpc_dictionary_get_value(*a3, kKeyEventsList);
          object[0] = v16;
          if (v16)
          {
            xpc_retain(v16);
          }

          else
          {
            object[0] = xpc_null_create();
          }

          xpc::bridge(buf, object, v17);
          v37 = *buf;
          if (*buf)
          {
            v38 = CFGetTypeID(*buf);
            if (v38 == CFArrayGetTypeID())
            {
              CFRetain(v37);
              v39 = *buf;
              if (!*buf)
              {
                goto LABEL_82;
              }
            }

            else
            {
              v37 = 0;
              v39 = *buf;
              if (!*buf)
              {
                goto LABEL_82;
              }
            }

            CFRelease(v39);
          }

LABEL_82:
          xpc_release(object[0]);
          if (v37)
          {
            v40 = *a2;
            v66 = v40;
            if (v40)
            {
              xpc_retain(v40);
            }

            else
            {
              v66 = xpc_null_create();
            }

            v65 = v37;
            CFRetain(v37);
            ABMServerInternal::registerNotification(a1, &v66, 1, &v65);
            CFRelease(v37);
            xpc_release(v66);
            v66 = 0;
            CFRelease(v37);
LABEL_117:
            v45 = 0;
            goto LABEL_118;
          }

          goto LABEL_98;
        }
      }
    }

    else if (v10 == v8 && !memcmp(__s1, kCommandEventsOn, v10))
    {
      goto LABEL_38;
    }

    v11 = strlen(kCommandEventsOff);
    if ((v8 & 0x80000000) != 0)
    {
      if (v11 != __s1[1])
      {
        goto LABEL_143;
      }

      if (v11 == -1)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      if (memcmp(__s1[0], kCommandEventsOff, v11))
      {
        goto LABEL_143;
      }
    }

    else if (v11 != v8 || memcmp(__s1, kCommandEventsOff, v11))
    {
      goto LABEL_143;
    }

    v12 = xpc_dictionary_get_value(*a3, kKeyEventsList);
    object[0] = v12;
    if (v12)
    {
      xpc_retain(v12);
    }

    else
    {
      object[0] = xpc_null_create();
    }

    xpc::bridge(buf, object, v13);
    v41 = *buf;
    if (*buf)
    {
      v42 = CFGetTypeID(*buf);
      if (v42 == CFArrayGetTypeID())
      {
        CFRetain(v41);
        v43 = *buf;
        if (!*buf)
        {
          goto LABEL_95;
        }
      }

      else
      {
        v41 = 0;
        v43 = *buf;
        if (!*buf)
        {
          goto LABEL_95;
        }
      }

      CFRelease(v43);
    }

LABEL_95:
    xpc_release(object[0]);
    if (v41)
    {
      v44 = *a2;
      v64 = v44;
      if (v44)
      {
        xpc_retain(v44);
      }

      else
      {
        v64 = xpc_null_create();
      }

      v63 = v41;
      CFRetain(v41);
      ABMServerInternal::registerNotification(a1, &v64, 0, &v63);
      CFRelease(v41);
      xpc_release(v64);
      v64 = 0;
      CFRelease(v41);
      goto LABEL_117;
    }

LABEL_98:
    v45 = -534716414;
LABEL_118:
    reply = xpc_dictionary_create_reply(*a3);
    if (reply || (reply = xpc_null_create()) != 0)
    {
      if (MEMORY[0x29C26F9F0](reply) == MEMORY[0x29EDCAA00])
      {
        xpc_retain(reply);
        v49 = reply;
      }

      else
      {
        v49 = xpc_null_create();
      }
    }

    else
    {
      v49 = xpc_null_create();
      reply = 0;
    }

    xpc_release(reply);
    v50 = xpc_int64_create(v45);
    if (!v50)
    {
      v50 = xpc_null_create();
    }

    xpc_dictionary_set_value(v49, kKeyCommandResult, v50);
    v51 = xpc_null_create();
    xpc_release(v50);
    xpc_release(v51);
    v52 = *(a1 + 72);
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
    {
      v58 = __s1;
      if (SHIBYTE(__s1[2]) < 0)
      {
        v58 = __s1[0];
      }

      *buf = 136315394;
      *&buf[4] = v58;
      *&buf[12] = 1024;
      *&buf[14] = v45;
      _os_log_debug_impl(&dword_297288000, v52, OS_LOG_TYPE_DEBUG, "#D Replying to client's command: %s, with return code: 0x%x", buf, 0x12u);
    }

    xpc_connection_send_message(*a2, v49);
    v53 = xpc_null_create();
    v54 = xpc_null_create();
    v55 = *a3;
    *a3 = v53;
    xpc_release(v55);
    xpc_release(v54);
    v56 = strlen(kCommandEventsOn);
    if ((SHIBYTE(__s1[2]) & 0x8000000000000000) != 0)
    {
      if (v56 != __s1[1])
      {
        goto LABEL_142;
      }

      if (v56 == -1)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      if (memcmp(__s1[0], kCommandEventsOn, v56))
      {
        goto LABEL_142;
      }
    }

    else if (v56 != SHIBYTE(__s1[2]) || memcmp(__s1, kCommandEventsOn, v56))
    {
LABEL_142:
      xpc_release(v49);
      goto LABEL_143;
    }

    if (*(a1 + 128) == 1)
    {
      v61[0] = MEMORY[0x29EDCA5F8];
      v61[1] = 1174405120;
      v61[2] = ___ZN17ABMServerInternal26handleInternalMessage_syncEN3xpc10connectionERNS0_4dictE_block_invoke;
      v61[3] = &__block_descriptor_tmp_24_1;
      v57 = *a2;
      v61[4] = a1;
      v62 = v57;
      if (v57)
      {
        xpc_retain(v57);
      }

      else
      {
        v62 = xpc_null_create();
      }

      ctu::SharedSynchronizable<ctu::XpcServer>::execute_wrapped((a1 + 8), v61);
      xpc_release(v62);
      v62 = 0;
    }

    goto LABEL_142;
  }

  if (v9 != v8 || memcmp(__s1, kCommandCheckOut, v9))
  {
    goto LABEL_18;
  }

LABEL_36:
  memset(object, 170, sizeof(object));
  v15 = xpc_dictionary_get_value(*a3, kKeyClientName);
  v67 = v15;
  if (v15)
  {
    xpc_retain(v15);
  }

  else
  {
    v67 = xpc_null_create();
  }

  memset(buf, 0, sizeof(buf));
  xpc::dyn_cast_or_default();
  if (buf[23] < 0)
  {
    operator delete(*buf);
  }

  xpc_release(v67);
  v28 = *(a1 + 88);
  if (v28)
  {
    v29 = *a2;
    v30 = a1 + 88;
    do
    {
      v31 = *(v28 + 32);
      v23 = v31 >= v29;
      v32 = v31 < v29;
      if (v23)
      {
        v30 = v28;
      }

      v28 = *(v28 + 8 * v32);
    }

    while (v28);
    if (v30 != a1 + 88 && v29 >= *(v30 + 32))
    {
      std::__tree<std::__value_type<xpc::connection,ServerClientState>,std::__map_value_compare<xpc::connection,std::__value_type<xpc::connection,ServerClientState>,std::less<xpc::connection>,true>,std::allocator<std::__value_type<xpc::connection,ServerClientState>>>::erase((a1 + 80), v30);
    }
  }

  v33 = xpc_null_create();
  v34 = xpc_null_create();
  v35 = *a3;
  *a3 = v33;
  xpc_release(v35);
  xpc_release(v34);
  v36 = *(a1 + 72);
  if (!os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
  {
    if ((SHIBYTE(object[2]) & 0x80000000) == 0)
    {
      goto LABEL_143;
    }

    goto LABEL_74;
  }

  v60 = object;
  if (SHIBYTE(object[2]) < 0)
  {
    v60 = object[0];
  }

  *buf = 136315138;
  *&buf[4] = v60;
  _os_log_debug_impl(&dword_297288000, v36, OS_LOG_TYPE_DEBUG, "#D Client '%s' checked out", buf, 0xCu);
  if (SHIBYTE(object[2]) < 0)
  {
LABEL_74:
    operator delete(object[0]);
  }

LABEL_143:
  if (SHIBYTE(__s1[2]) < 0)
  {
    operator delete(__s1[0]);
  }

  v59 = *MEMORY[0x29EDCA608];
}

void sub_2973457C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, xpc_object_t object, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a32 < 0)
  {
    operator delete(a27);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ABMServerInternal::handlePublicMessage_sync(uint64_t a1, xpc_connection_t *a2, xpc_object_t *a3)
{
  reply = xpc_dictionary_create_reply(*a3);
  v7 = MEMORY[0x29EDCAA00];
  if (reply || (reply = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C26F9F0](reply) == v7)
    {
      xpc_retain(reply);
      v8 = reply;
    }

    else
    {
      v8 = xpc_null_create();
    }
  }

  else
  {
    v8 = xpc_null_create();
    reply = 0;
  }

  xpc_release(reply);
  if (*(a1 + 128) == 5)
  {
    if (MEMORY[0x29C26F9F0](v8) == v7)
    {
      v9 = xpc_int64_create(-534716415);
      if (!v9)
      {
        v9 = xpc_null_create();
      }

      xpc_dictionary_set_value(v8, kKeyCommandResult, v9);
      v10 = xpc_null_create();
      xpc_release(v9);
      xpc_release(v10);
      v11 = xpc_dictionary_create(0, 0, 0);
      if (v11 || (v11 = xpc_null_create()) != 0)
      {
        if (MEMORY[0x29C26F9F0](v11) == v7)
        {
          xpc_retain(v11);
          v12 = v11;
        }

        else
        {
          v12 = xpc_null_create();
        }
      }

      else
      {
        v12 = xpc_null_create();
        v11 = 0;
      }

      xpc_release(v11);
      v18 = xpc_string_create("Server not available");
      if (!v18)
      {
        v18 = xpc_null_create();
      }

      xpc_dictionary_set_value(v12, *MEMORY[0x29EDBE648], v18);
      v19 = xpc_null_create();
      xpc_release(v18);
      xpc_release(v19);
      if (v12)
      {
        xpc_retain(v12);
        v20 = v12;
      }

      else
      {
        v20 = xpc_null_create();
      }

      xpc_dictionary_set_value(v8, kKeyCommandData, v20);
      v21 = xpc_null_create();
      xpc_release(v20);
      xpc_release(v21);
      xpc_connection_send_message(*a2, v8);
      xpc_release(v12);
    }

    goto LABEL_38;
  }

  memset(__p, 170, 24);
  value = xpc_dictionary_get_value(*a3, kKeyCommand);
  object = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object = xpc_null_create();
  }

  memset(&__p[3], 0, 24);
  xpc::dyn_cast_or_default();
  xpc_release(object);
  v14 = *(a1 + 224);
  v15 = *a3;
  v29 = v15;
  if (v15)
  {
    xpc_retain(v15);
  }

  else
  {
    v29 = xpc_null_create();
  }

  v25[0] = MEMORY[0x29EDCA5F8];
  v25[1] = 1174405120;
  v25[2] = ___ZN17ABMServerInternal24handlePublicMessage_syncEN3xpc10connectionERNS0_4dictE_block_invoke;
  v25[3] = &__block_descriptor_tmp_27_1;
  v25[4] = a1;
  v26 = v8;
  if (!v8)
  {
    v26 = xpc_null_create();
    v16 = *a2;
    v27 = v16;
    if (v16)
    {
      goto LABEL_23;
    }

LABEL_25:
    v27 = xpc_null_create();
    goto LABEL_26;
  }

  xpc_retain(v8);
  v16 = *a2;
  v27 = v16;
  if (!v16)
  {
    goto LABEL_25;
  }

LABEL_23:
  xpc_retain(v16);
LABEL_26:
  v17 = _Block_copy(v25);
  v28 = v17;
  ServiceManager::runCommand(v14, __p, &v29, &v28);
  if (v17)
  {
    _Block_release(v17);
  }

  xpc_release(v29);
  v29 = 0;
  xpc_release(v27);
  v27 = 0;
  xpc_release(v26);
  v26 = 0;
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

LABEL_38:
  v22 = xpc_null_create();
  v23 = xpc_null_create();
  v24 = *a3;
  *a3 = v22;
  xpc_release(v24);
  xpc_release(v23);
  xpc_release(v8);
}