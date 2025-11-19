void sub_297386170(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, xpc_object_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *aBlock)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  _ZNSt3__110unique_ptrIZZN10BootModule28registerCommandHandlers_syncEvEUb1_E3__3NS_14default_deleteIS2_EEED1B8ne200100Ev(&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>(WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t *_ZNSt3__110unique_ptrIZZN10BootModule28registerCommandHandlers_syncEvEUb1_E3__3NS_14default_deleteIS2_EEED1B8ne200100Ev(uint64_t *a1)
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

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI10BootModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb2_E3__4EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_(void *a1)
{
  v25 = *MEMORY[0x29EDCA608];
  v2 = *a1;
  v3 = **a1;
  value = xpc_dictionary_get_value(*(*a1 + 8), "BasebandHealthy");
  *buf = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    *buf = xpc_null_create();
  }

  v5 = xpc::dyn_cast_or_default(buf, 1);
  xpc_release(*buf);
  v6 = *(v3 + 104);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(v3 + 192);
    if (v7 > 4)
    {
      v8 = "UNKNOWN";
    }

    else
    {
      v8 = off_29EE68428[v7];
    }

    *buf = 67109378;
    *&buf[4] = v5;
    v23 = 2080;
    v24 = v8;
    _os_log_impl(&dword_297288000, v6, OS_LOG_TYPE_DEFAULT, "#I Received BasebandHealthEvent: isHealthy=%d, current PT status=%s", buf, 0x12u);
  }

  if (*(v3 + 192) == 2)
  {
    if (v5)
    {
      v21[23] = 7;
      strcpy(v21, "Healthy");
      v20[23] = 0;
      v9 = v20;
      v10 = v21;
      v11 = 3;
      v20[0] = 0;
    }

    else
    {
      v19[23] = 10;
      strcpy(v19, "NotHealthy");
      v18[23] = 0;
      v18[0] = 0;
      v9 = v18;
      v10 = v19;
      v11 = 4;
    }

    BootModule::updateMobileAssetPTStatus_sync(v3, v11, v10, v9);
  }

  if (v2[2])
  {
    v12 = xpc_null_create();
    v13 = v2[2];
    *buf = v12;
    v14 = xpc_null_create();
    (*(v13 + 16))(v13, 0, buf);
    xpc_release(*buf);
    xpc_release(v14);
    v15 = v2[2];
    if (v15)
    {
      _Block_release(v15);
    }
  }

  xpc_release(v2[1]);
  operator delete(v2);
  v16 = *(a1 + 2);
  if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
  }

  operator delete(a1);
  v17 = *MEMORY[0x29EDCA608];
}

void sub_297386690(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *_ZNSt3__110unique_ptrIZZN10BootModule28registerCommandHandlers_syncEvEUb2_E3__4NS_14default_deleteIS2_EEED1B8ne200100Ev(uint64_t *a1)
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

void dispatch::async<void ctu::SharedSynchronizable<BootModule>::execute_wrapped<BootModule::start(dispatch::group_session)::$_0>(BootModule::start(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<BootModule::start(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<BootModule::start(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke(std::string::size_type **a1)
{
  v1 = *a1;
  __p = *a1;
  v2 = (*a1)[3];
  v3 = v2[11];
  v62 = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }

  pthread_mutex_lock(&ctu::Singleton<ABMServer,ABMServer,ctu::PthreadMutexGuardPolicy<ABMServer>>::sInstance);
  v4 = off_2A1399448;
  if (!off_2A1399448)
  {
    ABMServer::create_default_global(&v55);
    v5 = *&v55.__r_.__value_.__l.__data_;
    *&v55.__r_.__value_.__l.__data_ = 0uLL;
    v6 = *(&off_2A1399448 + 1);
    off_2A1399448 = v5;
    if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }

    size = v55.__r_.__value_.__l.__size_;
    if (v55.__r_.__value_.__l.__size_ && !atomic_fetch_add((v55.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (size->__on_zero_shared)(size);
      std::__shared_weak_count::__release_weak(size);
    }

    v4 = off_2A1399448;
  }

  __dst = v4;
  v51 = *(&off_2A1399448 + 1);
  if (*(&off_2A1399448 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A1399448 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ABMServer,ABMServer,ctu::PthreadMutexGuardPolicy<ABMServer>>::sInstance);
  v8.fObj.fObj = *(*v4 + 18);
  ResetDetection::create(&v62, v8, object);
  v9 = *object;
  object[0] = 0;
  object[1] = 0;
  v10 = v2[18];
  *(v2 + 17) = v9;
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  v11 = object[1];
  if (object[1] && !atomic_fetch_add(&object[1][1], 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  if (v51 && !atomic_fetch_add(&v51->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v51->__on_zero_shared)(v51);
    std::__shared_weak_count::__release_weak(v51);
  }

  if (v62)
  {
    dispatch_release(v62);
  }

  v12 = v2[17];
  v55.__r_.__value_.__r.__words[0] = MEMORY[0x29EDCA5F8];
  v55.__r_.__value_.__l.__size_ = 0x40000000;
  v55.__r_.__value_.__r.__words[2] = ___ZN14ResetDetection5startEv_block_invoke;
  v56 = &__block_descriptor_tmp_3;
  v57 = v12;
  ctu::SharedSynchronizable<ResetDetection>::execute_wrapped(v12, &v55);
  v13 = v1[2];
  if (v13)
  {
    dispatch_retain(v1[2]);
    dispatch_group_enter(v13);
  }

  v14 = v2[21];
  v2[21] = v13;
  if (v14)
  {
    dispatch_group_leave(v14);
    dispatch_release(v14);
  }

  v60 = 0xAAAAAAAAAAAAAAAALL;
  v61 = 0xAAAAAAAAAAAAAAAALL;
  (*(*v2 + 88))(&v60, v2);
  if (v60)
  {
    v55.__r_.__value_.__r.__words[0] = 0xAAAAAAAAAAAAAAAALL;
    v55.__r_.__value_.__l.__size_ = 0xAAAAAAAAAAAAAAAALL;
    Registry::getAdaptiveTimerService(&v55, v2[76]);
    if (v55.__r_.__value_.__r.__words[0])
    {
      ScaledTime = ctu::AdaptiveTimerService::getScaledTime();
      v16 = v55.__r_.__value_.__l.__size_;
      if (!v55.__r_.__value_.__l.__size_)
      {
        goto LABEL_35;
      }
    }

    else
    {
      ScaledTime = 180000000;
      v16 = v55.__r_.__value_.__l.__size_;
      if (!v55.__r_.__value_.__l.__size_)
      {
LABEL_35:
        object[0] = 0xAAAAAAAAAAAAAAAALL;
        v17 = v60;
        v18 = operator new(0x38uLL);
        strcpy(v18, "com.apple.AppleBasebandManager.RadioNotReady.Bootup");
        v19 = *(v17 + 48);
        std::string::__init_copy_ctor_external(&v55, v18, 0x33uLL);
        (*(*v19 + 24))(object, v19, &v55, ScaledTime / 1000);
        if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v55.__r_.__value_.__l.__data_);
        }

        operator delete(v18);
        v55.__r_.__value_.__r.__words[0] = v2;
        v20 = *v1;
        v55.__r_.__value_.__l.__size_ = *v1;
        v21 = v1[1];
        v55.__r_.__value_.__r.__words[2] = v21;
        if (v21)
        {
          atomic_fetch_add_explicit((v21 + 16), 1uLL, memory_order_relaxed);
        }

        v22 = object[0];
        v56 = object[0];
        if (object[0])
        {
          dispatch_retain(object[0]);
          v23 = object[0];
        }

        else
        {
          v23 = 0;
        }

        v24 = v2[11];
        v25 = operator new(0x20uLL);
        *v25 = v2;
        v25[1] = v20;
        v25[2] = v21;
        v25[3] = v22;
        dispatch_group_notify_f(v23, v24, v25, dispatch::detail::group_notify<BootModule::start(dispatch::group_session)::$_0::operator() const(void)::{lambda(void)#1}>(dispatch_group_s *,dispatch_queue_s *,BootModule::start(dispatch::group_session)::$_0::operator() const(void)::{lambda(void)#1} &&,std::integral_constant<BOOL,false>)::{lambda(void *)#1}::__invoke);
        if (object[0])
        {
          dispatch_release(object[0]);
        }

        goto LABEL_44;
      }
    }

    if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v16->__on_zero_shared)(v16);
      std::__shared_weak_count::__release_weak(v16);
    }

    goto LABEL_35;
  }

LABEL_44:
  v26 = v2[65];
  if (v26)
  {
    dispatch_async(v26, &__block_literal_global_243);
    v55.__r_.__value_.__r.__words[0] = MEMORY[0x29EDCA5F8];
    v55.__r_.__value_.__l.__size_ = 1174405120;
    v55.__r_.__value_.__r.__words[2] = ___ZZN10BootModule5startEN8dispatch13group_sessionEENK3__0clEv_block_invoke_2;
    v56 = &__block_descriptor_tmp_246;
    v57 = v2;
    v58 = *v1;
    v28 = v1[1];
    v59 = v28;
    if (v28)
    {
      atomic_fetch_add_explicit(&v28->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    if (!v2[65])
    {
      goto LABEL_72;
    }

    capabilities::abs::supportedMobileAssetTypes(v27);
    v29 = capabilities::abs::operator&();
    if (v29)
    {
      v30 = "com.apple.MobileAsset.MAVBasebandAssets";
      v31 = strlen("com.apple.MobileAsset.MAVBasebandAssets");
      if (v31 <= 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_50;
      }
    }

    else
    {
      capabilities::abs::supportedMobileAssetTypes(v29);
      if (capabilities::abs::operator&())
      {
        v30 = "com.apple.MobileAsset.INTBasebandAssets";
      }

      else
      {
        v30 = "";
      }

      v31 = strlen(v30);
      if (v31 <= 0x7FFFFFFFFFFFFFF7)
      {
LABEL_50:
        v32 = v31;
        if (v31 >= 0x17)
        {
          if ((v31 | 7) == 0x17)
          {
            v35 = 25;
          }

          else
          {
            v35 = (v31 | 7) + 1;
          }

          v33 = operator new(v35);
          object[1] = v32;
          v54 = v35 | 0x8000000000000000;
          object[0] = v33;
        }

        else
        {
          HIBYTE(v54) = v31;
          v33 = object;
          if (!v31)
          {
LABEL_60:
            *(&v32->isa + v33) = 0;
            capabilities::abs::supportedMobileAssetTypes(v31);
            v36 = capabilities::abs::operator&();
            if (v36)
            {
              v37 = "PT";
              v38 = strlen("PT");
              if (v38 <= 0x7FFFFFFFFFFFFFF7)
              {
                goto LABEL_62;
              }
            }

            else
            {
              capabilities::abs::supportedMobileAssetTypes(v36);
              if (capabilities::abs::operator&())
              {
                v37 = "RP";
              }

              else
              {
                v37 = "";
              }

              v38 = strlen(v37);
              if (v38 <= 0x7FFFFFFFFFFFFFF7)
              {
LABEL_62:
                v39 = v38;
                if (v38 >= 0x17)
                {
                  if ((v38 | 7) == 0x17)
                  {
                    v41 = 25;
                  }

                  else
                  {
                    v41 = (v38 | 7) + 1;
                  }

                  p_dst = operator new(v41);
                  v51 = v39;
                  v52 = v41 | 0x8000000000000000;
                  __dst = p_dst;
                }

                else
                {
                  HIBYTE(v52) = v38;
                  p_dst = &__dst;
                  if (!v38)
                  {
LABEL_70:
                    *(&v39->__vftable + p_dst) = 0;
                    *(v2 + 150) = support::mobileasset::registerForUpdates(object, &__dst, v2[65], &v55);
                    if (SHIBYTE(v52) < 0)
                    {
                      operator delete(__dst);
                      if ((SHIBYTE(v54) & 0x80000000) == 0)
                      {
                        goto LABEL_72;
                      }
                    }

                    else if ((SHIBYTE(v54) & 0x80000000) == 0)
                    {
                      goto LABEL_72;
                    }

                    operator delete(object[0]);
LABEL_72:
                    BootModule::getPowerTableFromMobileAsset(v2, 2);
                    if (v59)
                    {
                      std::__shared_weak_count::__release_weak(v59);
                    }

                    goto LABEL_74;
                  }
                }

                memcpy(p_dst, v37, v39);
                goto LABEL_70;
              }
            }

            std::string::__throw_length_error[abi:ne200100]();
          }
        }

        v31 = memcpy(v33, v30, v32);
        goto LABEL_60;
      }
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  v34 = v2[13];
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v55.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&dword_297288000, v34, OS_LOG_TYPE_DEFAULT, "#I MobileAsset is not supported", &v55, 2u);
  }

LABEL_74:
  v42 = v61;
  if (v61 && !atomic_fetch_add((v61 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v42->__on_zero_shared)(v42);
    std::__shared_weak_count::__release_weak(v42);
  }

  if (__p)
  {
    v43 = __p[2];
    if (v43)
    {
      dispatch_group_leave(v43);
      v44 = __p[2];
      if (v44)
      {
        dispatch_release(v44);
      }
    }

    v45 = __p[1];
    if (v45)
    {
      std::__shared_weak_count::__release_weak(v45);
    }

    operator delete(__p);
  }

  v46 = a1;
  if (a1)
  {
    v47 = a1[2];
    if (v47)
    {
      if (!atomic_fetch_add(&v47->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v47->__on_zero_shared)(v47);
        std::__shared_weak_count::__release_weak(v47);
        v46 = a1;
      }
    }

    operator delete(v46);
  }
}

void sub_297386FB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, dispatch_object_t object, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, std::__shared_weak_count *a34)
{
  pthread_mutex_unlock(&ctu::Singleton<ABMServer,ABMServer,ctu::PthreadMutexGuardPolicy<ABMServer>>::sInstance);
  if (v34)
  {
    dispatch_release(v34);
    std::unique_ptr<BootModule::start(dispatch::group_session)::$_0,std::default_delete<BootModule::start(dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a11);
    std::unique_ptr<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>(WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
    _Unwind_Resume(a1);
  }

  std::unique_ptr<BootModule::start(dispatch::group_session)::$_0,std::default_delete<BootModule::start(dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a11);
  std::unique_ptr<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>(WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void **std::unique_ptr<BootModule::start(dispatch::group_session)::$_0,std::default_delete<BootModule::start(dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](void **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = v1[2];
    if (v3)
    {
      dispatch_group_leave(v3);
      v4 = v1[2];
      if (v4)
      {
        dispatch_release(v4);
      }
    }

    v5 = v1[1];
    if (v5)
    {
      std::__shared_weak_count::__release_weak(v5);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void ___ZZN10BootModule5startEN8dispatch13group_sessionEENK3__0clEv_block_invoke(capabilities::abs *a1)
{
  capabilities::abs::supportedMobileAssetTypes(a1);
  v1 = capabilities::abs::operator&();
  if (v1)
  {
    v2 = "com.apple.MobileAsset.MAVBasebandAssets";
    v3 = strlen("com.apple.MobileAsset.MAVBasebandAssets");
    if (v3 <= 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_3;
    }

LABEL_28:
    std::string::__throw_length_error[abi:ne200100]();
  }

  capabilities::abs::supportedMobileAssetTypes(v1);
  if (capabilities::abs::operator&())
  {
    v2 = "com.apple.MobileAsset.INTBasebandAssets";
  }

  else
  {
    v2 = "";
  }

  v3 = strlen(v2);
  if (v3 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_28;
  }

LABEL_3:
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
    v16 = v6 | 0x8000000000000000;
    __dst[0] = v5;
    goto LABEL_10;
  }

  HIBYTE(v16) = v3;
  v5 = __dst;
  if (v3)
  {
LABEL_10:
    v3 = memcpy(v5, v2, v4);
  }

  *(v4 + v5) = 0;
  capabilities::abs::supportedMobileAssetTypes(v3);
  v7 = capabilities::abs::operator&();
  if (v7)
  {
    v8 = "PT";
    v9 = strlen("PT");
    if (v9 <= 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_13;
    }

LABEL_33:
    std::string::__throw_length_error[abi:ne200100]();
  }

  capabilities::abs::supportedMobileAssetTypes(v7);
  if (capabilities::abs::operator&())
  {
    v8 = "RP";
  }

  else
  {
    v8 = "";
  }

  v9 = strlen(v8);
  if (v9 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_33;
  }

LABEL_13:
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

    v11 = operator new(v12);
    __p[1] = v10;
    v14 = v12 | 0x8000000000000000;
    __p[0] = v11;
    goto LABEL_20;
  }

  HIBYTE(v14) = v9;
  v11 = __p;
  if (v9)
  {
LABEL_20:
    memcpy(v11, v8, v10);
  }

  *(v10 + v11) = 0;
  MobileAssetSupport::unlockAsset(__dst, __p);
  if ((SHIBYTE(v14) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v16) & 0x80000000) == 0)
    {
      return;
    }

LABEL_35:
    operator delete(__dst[0]);
    return;
  }

  operator delete(__p[0]);
  if (SHIBYTE(v16) < 0)
  {
    goto LABEL_35;
  }
}

void sub_29738736C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a20 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a20 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a15);
  _Unwind_Resume(exception_object);
}

void ___ZZN10BootModule5startEN8dispatch13group_sessionEENK3__0clEv_block_invoke_2(void *a1)
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
      if (a1[5])
      {
        v6 = v3[13];
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *v7 = 0;
          _os_log_impl(&dword_297288000, v6, OS_LOG_TYPE_DEFAULT, "#I MobileAsset notification received", v7, 2u);
        }

        BootModule::getPowerTableFromMobileAsset(v3, 1);
      }

      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }
}

void sub_2973874AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void **std::unique_ptr<BootModule::start(dispatch::group_session)::$_0::operator() const(void)::{lambda(void)#1},std::default_delete<BootModule::start(dispatch::group_session)::$_0::operator() const(void)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](void **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = v1[3];
    if (v3)
    {
      dispatch_release(v3);
    }

    v4 = v1[2];
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void dispatch::detail::group_notify<BootModule::start(dispatch::group_session)::$_0::operator() const(void)::{lambda(void)#1}>(dispatch_group_s *,dispatch_queue_s *,BootModule::start(dispatch::group_session)::$_0::operator() const(void)::{lambda(void)#1} &&,std::integral_constant<BOOL,false>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v2 = *(a1 + 2);
  if (!v2)
  {
    goto LABEL_37;
  }

  v3 = *a1;
  v4 = std::__shared_weak_count::lock(v2);
  v28 = v4;
  if (!v4)
  {
    goto LABEL_37;
  }

  v5 = v4;
  v27 = *(a1 + 1);
  if (!v27)
  {
    goto LABEL_35;
  }

  if (!*(v3 + 576))
  {
    BootModule::reportStatisticsHardResetTime_sync(v3);
    BootModule::boot_sync(v3);
LABEL_35:
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    goto LABEL_37;
  }

  v26 = 0;
  v6 = *MEMORY[0x29EDB8ED8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (Mutable)
  {
    v26 = Mutable;
  }

  ctu::cf::insert<char const*,char const*>(Mutable, *MEMORY[0x29EDBEAF8], *MEMORY[0x29EDBF0C8], v6, v8);
  v9 = *MEMORY[0x29EDBF460];
  v10 = strlen(*MEMORY[0x29EDBF460]);
  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v11 = v10;
  if (v10 >= 0x17)
  {
    if ((v10 | 7) == 0x17)
    {
      v14 = 25;
    }

    else
    {
      v14 = (v10 | 7) + 1;
    }

    v12 = operator new(v14);
    __dst[1] = v11;
    v25 = v14 | 0x8000000000000000;
    __dst[0] = v12;
LABEL_17:
    memmove(v12, v9, v11);
    *(v11 + v12) = 0;
    v13 = v26;
    if (!v26)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  HIBYTE(v25) = v10;
  v12 = __dst;
  if (v10)
  {
    goto LABEL_17;
  }

  LOBYTE(__dst[0]) = 0;
  v13 = v26;
  if (!v26)
  {
    goto LABEL_20;
  }

LABEL_18:
  v15 = CFGetTypeID(v13);
  if (v15 == CFDictionaryGetTypeID())
  {
    cf = v13;
    CFRetain(v13);
    goto LABEL_21;
  }

LABEL_20:
  cf = 0;
LABEL_21:
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZZZN10BootModule5startEN8dispatch13group_sessionEENK3__0clEvENKUlvE_clEv_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_250;
  aBlock[4] = v3;
  aBlock[5] = v27;
  v21 = v28;
  if (v28)
  {
    atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v22 = _Block_copy(aBlock);
  Service::broadcastEvent(v3, __dst, &cf, &v22);
  if (v22)
  {
    _Block_release(v22);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (SHIBYTE(v25) < 0)
  {
    operator delete(__dst[0]);
  }

  v16 = v21;
  if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
  }

  if (v26)
  {
    CFRelease(v26);
  }

  v5 = v28;
  if (v28)
  {
    goto LABEL_35;
  }

LABEL_37:
  if (a1)
  {
    v17 = *(a1 + 3);
    if (v17)
    {
      dispatch_release(v17);
    }

    v18 = *(a1 + 2);
    if (v18)
    {
      std::__shared_weak_count::__release_weak(v18);
    }

    operator delete(a1);
  }
}

void sub_297387820(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *aBlock, const void *a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](v24 + 40);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&a18);
  if (a24 < 0)
  {
    operator delete(__p);
  }

  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef((v25 - 72));
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](v25 - 64);
  std::unique_ptr<BootModule::start(dispatch::group_session)::$_0::operator() const(void)::{lambda(void)#1},std::default_delete<BootModule::start(dispatch::group_session)::$_0::operator() const(void)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void ___ZZZN10BootModule5startEN8dispatch13group_sessionEENK3__0clEvENKUlvE_clEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2[0] = MEMORY[0x29EDCA5F8];
  v2[1] = 0x40000000;
  v2[2] = ___ZZZN10BootModule5startEN8dispatch13group_sessionEENK3__0clEvENKUlvE_clEv_block_invoke_2;
  v2[3] = &__block_descriptor_tmp_247;
  v2[4] = v1;
  ctu::SharedSynchronizable<BootModule>::execute_wrapped((v1 + 72), v2);
}

void **std::unique_ptr<BootModule::getPowerTableFromMobileAsset(BootModule::MobileAssetUpdateTrigger)::$_0,std::default_delete<BootModule::getPowerTableFromMobileAsset(BootModule::MobileAssetUpdateTrigger)::$_0>>::~unique_ptr[abi:ne200100](void **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = v1[3];
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void dispatch::async<BootModule::getPowerTableFromMobileAsset(BootModule::MobileAssetUpdateTrigger)::$_0>(dispatch_queue_s *,std::unique_ptr<BootModule::getPowerTableFromMobileAsset(BootModule::MobileAssetUpdateTrigger)::$_0,std::default_delete<BootModule::getPowerTableFromMobileAsset(BootModule::MobileAssetUpdateTrigger)::$_0>>)::{lambda(void *)#1}::__invoke(unsigned __int8 *a1)
{
  v48 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 3);
  if (!v2)
  {
    goto LABEL_74;
  }

  v3 = *a1;
  v4 = std::__shared_weak_count::lock(v2);
  v41 = v4;
  if (!v4)
  {
    goto LABEL_74;
  }

  if (*(a1 + 2))
  {
    v36 = 0;
    v37 = 0xAAAAAAAAAAAAAA00;
    v35[0] = 0;
    v35[1] = 0;
    *v38 = 0u;
    memset(v39, 0, sizeof(v39));
    capabilities::abs::supportedMobileAssetTypes(v4);
    v5 = capabilities::abs::operator&();
    if (v5)
    {
      v6 = "com.apple.MobileAsset.MAVBasebandAssets";
      v7 = strlen("com.apple.MobileAsset.MAVBasebandAssets");
      if (v7 <= 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_6;
      }
    }

    else
    {
      capabilities::abs::supportedMobileAssetTypes(v5);
      if (capabilities::abs::operator&())
      {
        v6 = "com.apple.MobileAsset.INTBasebandAssets";
      }

      else
      {
        v6 = "";
      }

      v7 = strlen(v6);
      if (v7 <= 0x7FFFFFFFFFFFFFF7)
      {
LABEL_6:
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
LABEL_14:
            v9[v8] = 0;
            capabilities::abs::supportedMobileAssetTypes(v7);
            v11 = capabilities::abs::operator&();
            if (v11)
            {
              v12 = "PT";
              v13 = strlen("PT");
              if (v13 <= 0x7FFFFFFFFFFFFFF7)
              {
                goto LABEL_16;
              }
            }

            else
            {
              capabilities::abs::supportedMobileAssetTypes(v11);
              if (capabilities::abs::operator&())
              {
                v12 = "RP";
              }

              else
              {
                v12 = "";
              }

              v13 = strlen(v12);
              if (v13 <= 0x7FFFFFFFFFFFFFF7)
              {
LABEL_16:
                v14 = v13;
                if (v13 >= 0x17)
                {
                  if ((v13 | 7) == 0x17)
                  {
                    v16 = 25;
                  }

                  else
                  {
                    v16 = (v13 | 7) + 1;
                  }

                  v15 = operator new(v16);
                  __p[1] = v14;
                  v34 = v16 | 0x8000000000000000;
                  __p[0] = v15;
                }

                else
                {
                  HIBYTE(v34) = v13;
                  v15 = __p;
                  if (!v13)
                  {
LABEL_24:
                    *(v14 + v15) = 0;
                    v17 = MobileAssetSupport::lockAsset(__dst, __p, 0, v35);
                    if (SHIBYTE(v34) < 0)
                    {
                      operator delete(__p[0]);
                      if ((__dst[23] & 0x80000000) == 0)
                      {
LABEL_26:
                        if (v17)
                        {
                          goto LABEL_27;
                        }

                        goto LABEL_41;
                      }
                    }

                    else if ((__dst[23] & 0x80000000) == 0)
                    {
                      goto LABEL_26;
                    }

                    operator delete(*__dst);
                    if (v17)
                    {
LABEL_27:
                      *__dst = v3;
                      if (SHIBYTE(v36) < 0)
                      {
                        std::string::__init_copy_ctor_external(&__dst[8], v35[0], v35[1]);
                      }

                      else
                      {
                        *&__dst[8] = *v35;
                        v43 = v36;
                      }

                      v44 = v37;
                      if (SHIBYTE(v39[0]) < 0)
                      {
                        std::string::__init_copy_ctor_external(&v45, v38[0], v38[1]);
                      }

                      else
                      {
                        *&v45.__r_.__value_.__l.__data_ = *v38;
                        v45.__r_.__value_.__r.__words[2] = v39[0];
                      }

                      if (SHIBYTE(v39[3]) < 0)
                      {
                        std::string::__init_copy_ctor_external(&v46, v39[1], v39[2]);
                      }

                      else
                      {
                        v46 = *&v39[1];
                      }

                      v47 = a1[8];
                      v21 = v3[10];
                      if (!v21 || (v22 = v3[9], (v23 = std::__shared_weak_count::lock(v21)) == 0))
                      {
                        std::__throw_bad_weak_ptr[abi:ne200100]();
                      }

                      v24 = v23;
                      v25 = operator new(0x60uLL);
                      *v25 = *__dst;
                      *(v25 + 8) = *&__dst[8];
                      *(v25 + 3) = v43;
                      *&__dst[8] = 0;
                      *&__dst[16] = 0;
                      v43 = 0;
                      v25[32] = v44;
                      *(v25 + 40) = v45;
                      memset(&v45, 0, sizeof(v45));
                      v26 = *&v46.__r_.__value_.__l.__data_;
                      *(v25 + 10) = *(&v46.__r_.__value_.__l + 2);
                      *(v25 + 4) = v26;
                      memset(&v46, 0, sizeof(v46));
                      v25[88] = v47;
                      v27 = v3[11];
                      atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
                      v28 = operator new(0x18uLL);
                      *v28 = v25;
                      v28[1] = v22;
                      v28[2] = v24;
                      dispatch_async_f(v27, v28, dispatch::async<void ctu::SharedSynchronizable<BootModule>::execute_wrapped<BootModule::getPowerTableFromMobileAsset(BootModule::MobileAssetUpdateTrigger)::$_0::operator() const(void)::{lambda(void)#1}>(BootModule::getPowerTableFromMobileAsset(BootModule::MobileAssetUpdateTrigger)::$_0::operator() const(void)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<BootModule::getPowerTableFromMobileAsset(BootModule::MobileAssetUpdateTrigger)::$_0::operator() const(void)::{lambda(void)#1},dispatch_queue_s *::default_delete<BootModule::getPowerTableFromMobileAsset(BootModule::MobileAssetUpdateTrigger)::$_0::operator() const(void)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
                      if (atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                      {
                        if ((SHIBYTE(v46.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                        {
                          goto LABEL_55;
                        }
                      }

                      else
                      {
                        (v24->__on_zero_shared)(v24);
                        std::__shared_weak_count::__release_weak(v24);
                        if ((SHIBYTE(v46.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                        {
LABEL_55:
                          if ((SHIBYTE(v45.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                          {
                            goto LABEL_56;
                          }

                          goto LABEL_60;
                        }
                      }

                      operator delete(v46.__r_.__value_.__l.__data_);
                      if ((SHIBYTE(v45.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                      {
LABEL_56:
                        if ((SHIBYTE(v43) & 0x80000000) == 0)
                        {
                          goto LABEL_62;
                        }

LABEL_61:
                        operator delete(*&__dst[8]);
                        goto LABEL_62;
                      }

LABEL_60:
                      operator delete(v45.__r_.__value_.__l.__data_);
                      if ((SHIBYTE(v43) & 0x80000000) == 0)
                      {
                        goto LABEL_62;
                      }

                      goto LABEL_61;
                    }

LABEL_41:
                    v18 = v3[13];
                    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
                    {
                      v19 = a1[8];
                      if (v19 > 2)
                      {
                        v20 = "UNKNOWN";
                      }

                      else
                      {
                        v20 = off_29EE68450[v19];
                      }

                      *__dst = 136315138;
                      *&__dst[4] = v20;
                      _os_log_impl(&dword_297288000, v18, OS_LOG_TYPE_DEFAULT, "#I Failed to get the MobileAsset requested triggered by %s", __dst, 0xCu);
                      if ((SHIBYTE(v39[3]) & 0x80000000) == 0)
                      {
LABEL_63:
                        if ((SHIBYTE(v39[0]) & 0x80000000) == 0)
                        {
                          goto LABEL_64;
                        }

                        goto LABEL_70;
                      }

LABEL_69:
                      operator delete(v39[1]);
                      if ((SHIBYTE(v39[0]) & 0x80000000) == 0)
                      {
LABEL_64:
                        if ((SHIBYTE(v36) & 0x80000000) == 0)
                        {
                          goto LABEL_65;
                        }

LABEL_71:
                        operator delete(v35[0]);
                        v4 = v41;
                        if (!v41)
                        {
                          goto LABEL_74;
                        }

                        goto LABEL_72;
                      }

LABEL_70:
                      operator delete(v38[0]);
                      if ((SHIBYTE(v36) & 0x80000000) == 0)
                      {
LABEL_65:
                        v4 = v41;
                        if (!v41)
                        {
                          goto LABEL_74;
                        }

                        goto LABEL_72;
                      }

                      goto LABEL_71;
                    }

LABEL_62:
                    if ((SHIBYTE(v39[3]) & 0x80000000) == 0)
                    {
                      goto LABEL_63;
                    }

                    goto LABEL_69;
                  }
                }

                memcpy(v15, v12, v14);
                goto LABEL_24;
              }
            }

            std::string::__throw_length_error[abi:ne200100]();
          }
        }

        v7 = memcpy(v9, v6, v8);
        goto LABEL_14;
      }
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

LABEL_72:
  if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v29 = v4;
    (v4->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v29);
  }

LABEL_74:
  if (a1)
  {
    v30 = *(a1 + 3);
    if (v30)
    {
      std::__shared_weak_count::__release_weak(v30);
    }

    operator delete(a1);
  }

  v31 = *MEMORY[0x29EDCA608];
}

void sub_297387EF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, void *a28, void *a29, int a30, __int16 a31, char a32, char a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (a44 < 0)
  {
    operator delete(__p);
  }

  if (a37 < 0)
  {
    operator delete(a29);
  }

  support::mobileasset::assetData::~assetData(&a16);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](&a26);
  std::unique_ptr<BootModule::getPowerTableFromMobileAsset(BootModule::MobileAssetUpdateTrigger)::$_0,std::default_delete<BootModule::getPowerTableFromMobileAsset(BootModule::MobileAssetUpdateTrigger)::$_0>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<BootModule>::execute_wrapped<BootModule::getPowerTableFromMobileAsset(BootModule::MobileAssetUpdateTrigger)::$_0::operator() const(void)::{lambda(void)#1}>(BootModule::getPowerTableFromMobileAsset(BootModule::MobileAssetUpdateTrigger)::$_0::operator() const(void)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<BootModule::getPowerTableFromMobileAsset(BootModule::MobileAssetUpdateTrigger)::$_0::operator() const(void)::{lambda(void)#1},dispatch_queue_s *::default_delete<BootModule::getPowerTableFromMobileAsset(BootModule::MobileAssetUpdateTrigger)::$_0::operator() const(void)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(void ***a1)
{
  v33 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  __p = *a1;
  if ((*(*a1 + 31) & 0x8000000000000000) != 0)
  {
    if (!v1[2])
    {
      goto LABEL_58;
    }
  }

  else if (!*(v1 + 31))
  {
    goto LABEL_58;
  }

  v2 = *v1;
  v3 = *(*v1 + 13);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v1 + 8;
    if (*(v1 + 87) < 0)
    {
      v4 = *v4;
      v5 = *(v1 + 88);
      if (v5 <= 2)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v5 = *(v1 + 88);
      if (v5 <= 2)
      {
LABEL_8:
        v6 = off_29EE68450[v5];
LABEL_11:
        *buf = 136315394;
        *&buf[4] = v4;
        *&buf[12] = 2080;
        *&buf[14] = v6;
        _os_log_impl(&dword_297288000, v3, OS_LOG_TYPE_DEFAULT, "#I Update requested with MobileAsset version %s, triggered by %s", buf, 0x16u);
        goto LABEL_12;
      }
    }

    v6 = "UNKNOWN";
    goto LABEL_11;
  }

LABEL_12:
  *(v2 + 193) = *(v1 + 88);
  *(v2 + 224) = *(v1 + 32);
  v7 = (v2 + 232);
  if ((v2 + 232) != v1 + 5)
  {
    v8 = *(v1 + 63);
    if (*(v2 + 255) < 0)
    {
      if (v8 >= 0)
      {
        v10 = v1 + 5;
      }

      else
      {
        v10 = v1[5];
      }

      if (v8 >= 0)
      {
        v11 = *(v1 + 63);
      }

      else
      {
        v11 = v1[6];
      }

      std::string::__assign_no_alias<false>(v7, v10, v11);
    }

    else if ((*(v1 + 63) & 0x80) != 0)
    {
      std::string::__assign_no_alias<true>(v7, v1[5], v1[6]);
    }

    else
    {
      v9 = *(v1 + 5);
      *(v2 + 248) = v1[7];
      *v7 = v9;
    }
  }

  v12 = (v2 + 200);
  if ((v2 + 200) != v1 + 8)
  {
    v13 = *(v1 + 87);
    if (*(v2 + 223) < 0)
    {
      if (v13 >= 0)
      {
        v15 = v1 + 8;
      }

      else
      {
        v15 = v1[8];
      }

      if (v13 >= 0)
      {
        v16 = *(v1 + 87);
      }

      else
      {
        v16 = v1[9];
      }

      std::string::__assign_no_alias<false>(v12, v15, v16);
    }

    else if ((*(v1 + 87) & 0x80) != 0)
    {
      std::string::__assign_no_alias<true>(v12, v1[8], v1[9]);
    }

    else
    {
      v14 = *(v1 + 4);
      *(v2 + 216) = v1[10];
      *v12 = v14;
    }
  }

  v17 = *(v1 + 88);
  if (v17 > 2)
  {
    v18 = "UNKNOWN";
  }

  else
  {
    v18 = off_29EE68450[v17];
  }

  v19 = strlen(v18);
  if (v19 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v20 = v19;
  if (v19 >= 0x17)
  {
    if ((v19 | 7) == 0x17)
    {
      v23 = 25;
    }

    else
    {
      v23 = (v19 | 7) + 1;
    }

    v21 = operator new(v23);
    *&buf[8] = v20;
    *&buf[16] = v23 | 0x8000000000000000;
    *buf = v21;
LABEL_48:
    memcpy(v21, v18, v20);
    v21[v20] = 0;
    if ((*(v1 + 31) & 0x80000000) == 0)
    {
      goto LABEL_43;
    }

    goto LABEL_49;
  }

  buf[23] = v19;
  v21 = buf;
  if (v19)
  {
    goto LABEL_48;
  }

  buf[0] = 0;
  if ((*(v1 + 31) & 0x80000000) == 0)
  {
LABEL_43:
    v22 = *(v1 + 1);
    v31.__r_.__value_.__r.__words[2] = v1[3];
    *&v31.__r_.__value_.__l.__data_ = v22;
    goto LABEL_50;
  }

LABEL_49:
  std::string::__init_copy_ctor_external(&v31, v1[1], v1[2]);
LABEL_50:
  updated = BootModule::updateMobileAssetPTStatus_sync(v2, 1u, buf, &v31);
  if ((SHIBYTE(v31.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((buf[23] & 0x80000000) == 0)
    {
      goto LABEL_52;
    }

LABEL_55:
    operator delete(*buf);
    if (!updated)
    {
      goto LABEL_58;
    }

    goto LABEL_56;
  }

  operator delete(v31.__r_.__value_.__l.__data_);
  if ((buf[23] & 0x80000000) != 0)
  {
    goto LABEL_55;
  }

LABEL_52:
  if (!updated)
  {
LABEL_58:
    v25 = __p;
    if (!__p)
    {
      goto LABEL_63;
    }

LABEL_59:
    if (*(v25 + 87) < 0)
    {
      operator delete(v25[8]);
      if ((*(v25 + 63) & 0x80000000) == 0)
      {
LABEL_61:
        if ((*(v25 + 31) & 0x80000000) == 0)
        {
LABEL_62:
          operator delete(v25);
          goto LABEL_63;
        }

LABEL_71:
        operator delete(v25[1]);
        goto LABEL_62;
      }
    }

    else if ((*(v25 + 63) & 0x80000000) == 0)
    {
      goto LABEL_61;
    }

    operator delete(v25[5]);
    if ((*(v25 + 31) & 0x80000000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_71;
  }

LABEL_56:
  if (*(v2 + 576) - 3 < 3)
  {
    BootModule::triggerResetWithUpdatedPT_sync(v2);
    goto LABEL_58;
  }

  *(v2 + 194) = 1;
  v25 = __p;
  if (__p)
  {
    goto LABEL_59;
  }

LABEL_63:
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

void sub_297388360(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if ((a23 & 0x80000000) == 0)
  {
    std::unique_ptr<BootModule::getPowerTableFromMobileAsset(BootModule::MobileAssetUpdateTrigger)::$_0::operator() const(void)::{lambda(void)#1},std::default_delete<BootModule::getPowerTableFromMobileAsset(BootModule::MobileAssetUpdateTrigger)::$_0::operator() const(void)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&a10);
    std::unique_ptr<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>(WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  std::unique_ptr<BootModule::getPowerTableFromMobileAsset(BootModule::MobileAssetUpdateTrigger)::$_0::operator() const(void)::{lambda(void)#1},std::default_delete<BootModule::getPowerTableFromMobileAsset(BootModule::MobileAssetUpdateTrigger)::$_0::operator() const(void)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>(WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void sub_2973883CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10)
{
  std::unique_ptr<BootModule::getPowerTableFromMobileAsset(BootModule::MobileAssetUpdateTrigger)::$_0::operator() const(void)::{lambda(void)#1},std::default_delete<BootModule::getPowerTableFromMobileAsset(BootModule::MobileAssetUpdateTrigger)::$_0::operator() const(void)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>(WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<BootModule::getPowerTableFromMobileAsset(BootModule::MobileAssetUpdateTrigger)::$_0::operator() const(void)::{lambda(void)#1},std::default_delete<BootModule::getPowerTableFromMobileAsset(BootModule::MobileAssetUpdateTrigger)::$_0::operator() const(void)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(v2 + 87) < 0)
    {
      operator delete(*(v2 + 64));
      if ((*(v2 + 63) & 0x80000000) == 0)
      {
LABEL_4:
        if ((*(v2 + 31) & 0x80000000) == 0)
        {
LABEL_5:
          operator delete(v2);
          return a1;
        }

LABEL_9:
        operator delete(*(v2 + 8));
        goto LABEL_5;
      }
    }

    else if ((*(v2 + 63) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    operator delete(*(v2 + 40));
    if ((*(v2 + 31) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

  return a1;
}

void support::mobileasset::assetData::~assetData(void **this)
{
  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
    if ((*(this + 55) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(this + 23) & 0x80000000) == 0)
      {
        return;
      }

LABEL_7:
      operator delete(*this);
      return;
    }
  }

  else if ((*(this + 55) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(this[4]);
  if (*(this + 23) < 0)
  {
    goto LABEL_7;
  }
}

uint64_t std::__function::__func<BootModule::registerEventHandlers_sync(void)::$_0,std::allocator<BootModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::~__func(uint64_t result)
{
  *result = &unk_2A1E3B660;
  if (*(result + 24))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 24));
    return v1;
  }

  return result;
}

void std::__function::__func<BootModule::registerEventHandlers_sync(void)::$_0,std::allocator<BootModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::~__func(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E3B660;
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

char *std::__function::__func<BootModule::registerEventHandlers_sync(void)::$_0,std::allocator<BootModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t a1)
{
  result = operator new(0x20uLL);
  *result = &unk_2A1E3B660;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<BootModule::registerEventHandlers_sync(void)::$_0,std::allocator<BootModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A1E3B660;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<BootModule::registerEventHandlers_sync(void)::$_0,std::allocator<BootModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<BootModule::registerEventHandlers_sync(void)::$_0,std::allocator<BootModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::destroy_deallocate(std::__shared_weak_count **a1)
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

void std::__function::__func<BootModule::registerEventHandlers_sync(void)::$_0,std::allocator<BootModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::operator()(void *a1, NSObject **a2, void **a3)
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
      v10 = a1[2];
      if (v10)
      {
        v11 = a1[3];
        if (v11)
        {
          atomic_fetch_add_explicit((v11 + 16), 1uLL, memory_order_relaxed);
        }

        if (v4)
        {
          dispatch_retain(v4);
          dispatch_group_enter(v4);
        }

        if (v5)
        {
          xpc_retain(v5);
          v12 = v5;
          v13 = v7[10];
          if (!v13)
          {
LABEL_23:
            std::__throw_bad_weak_ptr[abi:ne200100]();
          }
        }

        else
        {
          v12 = xpc_null_create();
          v13 = v7[10];
          if (!v13)
          {
            goto LABEL_23;
          }
        }

        v14 = v7[9];
        v15 = std::__shared_weak_count::lock(v13);
        if (!v15)
        {
          goto LABEL_23;
        }

        v16 = v15;
        v17 = operator new(0x28uLL);
        *v17 = v7;
        v17[1] = v10;
        v17[2] = v11;
        v17[3] = v4;
        v17[4] = v12;
        v18 = xpc_null_create();
        v19 = v7[11];
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        v20 = operator new(0x18uLL);
        *v20 = v17;
        v20[1] = v14;
        v20[2] = v16;
        dispatch_async_f(v19, v20, dispatch::async<void ctu::SharedSynchronizable<BootModule>::execute_wrapped<BootModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(BootModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<BootModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<BootModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
        if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v16->__on_zero_shared)(v16);
          std::__shared_weak_count::__release_weak(v16);
        }

        xpc_release(v18);
      }

      if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
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

uint64_t std::__function::__func<BootModule::registerEventHandlers_sync(void)::$_0,std::allocator<BootModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN10BootModule26registerEventHandlers_syncEvE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN10BootModule26registerEventHandlers_syncEvE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN10BootModule26registerEventHandlers_syncEvE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN10BootModule26registerEventHandlers_syncEvE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void dispatch::async<void ctu::SharedSynchronizable<BootModule>::execute_wrapped<BootModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(BootModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<BootModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<BootModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v49 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  v36 = *a1;
  v2 = **a1;
  v3 = v2[576];
  if (v3 == 3)
  {
    object = _os_activity_create(&dword_297288000, "Baseband state: transport is ready", MEMORY[0x29EDCA978], OS_ACTIVITY_FLAG_DEFAULT);
    memset(state, 170, 16);
    os_activity_scope_enter(object, state);
    os_activity_scope_leave(state);
    (*(*v2 + 104))(v2, 4);
    cf = 0;
    v4 = *MEMORY[0x29EDB8ED8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    v7 = Mutable;
    if (Mutable)
    {
      cf = Mutable;
    }

    v8 = *MEMORY[0x29EDBEAF8];
    *state = 0;
    ctu::cf::convert_copy(state, v8, 0x8000100, v4, v6);
    v9 = *MEMORY[0x29EDBEFB8];
    v10 = *state;
    __dst[0] = *state;
    *state = 0;
    ctu::cf::convert_copy(state, v9, 0x8000100, v4, v11);
    v12 = *state;
    v43 = *state;
    if (v10 && *state)
    {
      CFDictionarySetValue(v7, v10, *state);
    }

    else if (!*state)
    {
      goto LABEL_12;
    }

    CFRelease(v12);
LABEL_12:
    if (v10)
    {
      CFRelease(v10);
    }

    v43 = 0xAAAAAAAAAAAAAAAALL;
    BootModule::calculateBootStatistics_sync(v2, &v43);
    v16 = v43;
    if (v43)
    {
      v17 = *MEMORY[0x29EDBF158];
      *state = 0;
      ctu::cf::convert_copy(state, v17, 0x8000100, v4, v15);
      v18 = *state;
      __dst[0] = *state;
      *state = v16;
      CFRetain(v16);
      if (v18)
      {
        CFDictionarySetValue(v7, v18, v16);
      }

      CFRelease(v16);
      if (v18)
      {
        CFRelease(v18);
      }
    }

    v19 = *MEMORY[0x29EDBF460];
    v20 = strlen(*MEMORY[0x29EDBF460]);
    if (v20 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v21 = v20;
    if (v20 >= 0x17)
    {
      if ((v20 | 7) == 0x17)
      {
        v24 = 25;
      }

      else
      {
        v24 = (v20 | 7) + 1;
      }

      v22 = operator new(v24);
      __dst[1] = v21;
      v40 = v24 | 0x8000000000000000;
      __dst[0] = v22;
    }

    else
    {
      HIBYTE(v40) = v20;
      v22 = __dst;
      if (!v20)
      {
        LOBYTE(__dst[0]) = 0;
        v23 = cf;
        if (!cf)
        {
          goto LABEL_31;
        }

LABEL_29:
        v25 = CFGetTypeID(v23);
        if (v25 == CFDictionaryGetTypeID())
        {
          v38 = v23;
          CFRetain(v23);
LABEL_32:
          *state = MEMORY[0x29EDCA5F8];
          *&state[8] = 1174405120;
          *&state[16] = ___ZZZN10BootModule26registerEventHandlers_syncEvENK3__0clEN8dispatch13group_sessionEN3xpc4dictEENKUlvE_clEv_block_invoke;
          v45 = &__block_descriptor_tmp_264;
          v46 = v2;
          v47 = v1[1];
          v26 = v1[2];
          v48 = v26;
          if (v26)
          {
            atomic_fetch_add_explicit(&v26->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          }

          aBlock = _Block_copy(state);
          Service::broadcastEvent(v2, __dst, &v38, &aBlock);
          if (aBlock)
          {
            _Block_release(aBlock);
          }

          if (v38)
          {
            CFRelease(v38);
          }

          if (SHIBYTE(v40) < 0)
          {
            operator delete(__dst[0]);
          }

          v27 = *(v2 + 21);
          *(v2 + 21) = 0;
          if (v27)
          {
            dispatch_group_leave(v27);
            dispatch_release(v27);
          }

          if (v48)
          {
            std::__shared_weak_count::__release_weak(v48);
          }

          if (v43)
          {
            CFRelease(v43);
          }

          if (v23)
          {
            CFRelease(v23);
          }

          if (object)
          {
            os_release(object);
          }

LABEL_50:
          if (v2[194] != 1)
          {
            goto LABEL_55;
          }

LABEL_54:
          BootModule::triggerResetWithUpdatedPT_sync(v2);
          goto LABEL_55;
        }

LABEL_31:
        v38 = 0;
        goto LABEL_32;
      }
    }

    memmove(v22, v19, v21);
    *(v21 + v22) = 0;
    v23 = cf;
    if (!cf)
    {
      goto LABEL_31;
    }

    goto LABEL_29;
  }

  v13 = *(v2 + 13);
  if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_50;
  }

  if (v3 > 8)
  {
    v14 = "Unknown";
  }

  else
  {
    v14 = off_29EE68468[v3];
  }

  v28 = *MEMORY[0x29EDBEFB8];
  *state = 136315394;
  *&state[4] = v14;
  *&state[12] = 2080;
  *&state[14] = v28;
  _os_log_impl(&dword_297288000, v13, OS_LOG_TYPE_DEFAULT, "#I State is '%s'; don't send '%s' event", state, 0x16u);
  if (v2[194] == 1)
  {
    goto LABEL_54;
  }

LABEL_55:
  if (v36)
  {
    xpc_release(v36[4]);
    v36[4] = 0;
    v29 = v36[3];
    if (v29)
    {
      dispatch_group_leave(v29);
      v30 = v36[3];
      if (v30)
      {
        dispatch_release(v30);
      }
    }

    v31 = v36[2];
    if (v31)
    {
      std::__shared_weak_count::__release_weak(v31);
    }

    operator delete(v36);
  }

  v32 = a1;
  if (a1)
  {
    v33 = *(a1 + 16);
    if (v33 && !atomic_fetch_add(&v33->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v33->__on_zero_shared)(v33);
      std::__shared_weak_count::__release_weak(v33);
      v32 = a1;
    }

    operator delete(v32);
  }

  v34 = *MEMORY[0x29EDCA608];
}

void sub_297388E44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *aBlock, char a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, std::__shared_weak_count *a37)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *std::unique_ptr<BootModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},std::default_delete<BootModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    xpc_release(*(v1 + 32));
    *(v1 + 32) = 0;
    v3 = *(v1 + 24);
    if (v3)
    {
      dispatch_group_leave(v3);
      v4 = *(v1 + 24);
      if (v4)
      {
        dispatch_release(v4);
      }
    }

    v5 = *(v1 + 16);
    if (v5)
    {
      std::__shared_weak_count::__release_weak(v5);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void ___ZZZN10BootModule26registerEventHandlers_syncEvENK3__0clEN8dispatch13group_sessionEN3xpc4dictEENKUlvE_clEv_block_invoke(void *a1)
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
        v6[0] = MEMORY[0x29EDCA5F8];
        v6[1] = 0x40000000;
        v6[2] = ___ZZZN10BootModule26registerEventHandlers_syncEvENK3__0clEN8dispatch13group_sessionEN3xpc4dictEENKUlvE_clEv_block_invoke_2;
        v6[3] = &__block_descriptor_tmp_261;
        v6[4] = v3;
        ctu::SharedSynchronizable<BootModule>::execute_wrapped((v3 + 72), v6);
      }

      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }
}

void ___ZZZN10BootModule26registerEventHandlers_syncEvENK3__0clEN8dispatch13group_sessionEN3xpc4dictEENKUlvE_clEv_block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  v2 = *(v1 + 576);
  if (v2 == 4)
  {
    v10 = 0xAAAAAAAAAAAAAAAALL;
    v11 = 0xAAAAAAAAAAAAAAAALL;
    (*(*v1 + 88))(&v10);
    v3 = v10;
    if (v10)
    {
      v4 = operator new(0x38uLL);
      strcpy(v4, "com.apple.AppleBasebandManager.RadioNotReady.Bootup");
      v5 = *(v3 + 48);
      std::string::__init_copy_ctor_external(&v12, v4, 0x33uLL);
      (*(*v5 + 32))(v5, &v12);
      if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v12.__r_.__value_.__l.__data_);
      }

      operator delete(v4);
    }

    v6 = v11;
    if (v11 && !atomic_fetch_add((v11 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }

  else
  {
    v7 = *(v1 + 104);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      if (v2 > 8)
      {
        v8 = "Unknown";
      }

      else
      {
        v8 = off_29EE684B0[v2];
      }

      LODWORD(v12.__r_.__value_.__l.__data_) = 136315138;
      *(v12.__r_.__value_.__r.__words + 4) = v8;
      _os_log_impl(&dword_297288000, v7, OS_LOG_TYPE_DEFAULT, "#I State is '%s' not releasing power assertion yet", &v12, 0xCu);
    }
  }

  v9 = *MEMORY[0x29EDCA608];
}

void sub_297389294(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  operator delete(v16);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<BootModule::registerEventHandlers_sync(void)::$_1,std::allocator<BootModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::~__func(uint64_t result)
{
  *result = &unk_2A1E3B710;
  if (*(result + 24))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 24));
    return v1;
  }

  return result;
}

void std::__function::__func<BootModule::registerEventHandlers_sync(void)::$_1,std::allocator<BootModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::~__func(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E3B710;
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

char *std::__function::__func<BootModule::registerEventHandlers_sync(void)::$_1,std::allocator<BootModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t a1)
{
  result = operator new(0x20uLL);
  *result = &unk_2A1E3B710;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<BootModule::registerEventHandlers_sync(void)::$_1,std::allocator<BootModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A1E3B710;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<BootModule::registerEventHandlers_sync(void)::$_1,std::allocator<BootModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<BootModule::registerEventHandlers_sync(void)::$_1,std::allocator<BootModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::destroy_deallocate(std::__shared_weak_count **a1)
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

void std::__function::__func<BootModule::registerEventHandlers_sync(void)::$_1,std::allocator<BootModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::operator()(void *a1, NSObject **a2, void **a3)
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
      dispatch_async_f(v15, v16, dispatch::async<void ctu::SharedSynchronizable<BootModule>::execute_wrapped<BootModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(BootModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<BootModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<BootModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
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

uint64_t std::__function::__func<BootModule::registerEventHandlers_sync(void)::$_1,std::allocator<BootModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN10BootModule26registerEventHandlers_syncEvE3$_1")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN10BootModule26registerEventHandlers_syncEvE3$_1" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN10BootModule26registerEventHandlers_syncEvE3$_1"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN10BootModule26registerEventHandlers_syncEvE3$_1" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void dispatch::async<void ctu::SharedSynchronizable<BootModule>::execute_wrapped<BootModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(BootModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<BootModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<BootModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v2 = *a1;
  v3 = *(**a1 + 584);
  if (v3)
  {
    BootController::markNonvolatileDataErased(v3);
  }

  v4 = v2[1];
  if (v4)
  {
    dispatch_group_leave(v4);
    v5 = v2[1];
    if (v5)
    {
      dispatch_release(v5);
    }
  }

  operator delete(v2);
  v6 = a1[2];
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
    v7 = a1;
  }

  else
  {
    v7 = a1;
  }

  operator delete(v7);
}

void sub_2973897B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  std::unique_ptr<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0,std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>(WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<BootModule::registerEventHandlers_sync(void)::$_2,std::allocator<BootModule::registerEventHandlers_sync(void)::$_2>,void ()(dispatch::group_session,xpc::dict)>::~__func(uint64_t result)
{
  *result = &unk_2A1E3B790;
  if (*(result + 24))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 24));
    return v1;
  }

  return result;
}

void std::__function::__func<BootModule::registerEventHandlers_sync(void)::$_2,std::allocator<BootModule::registerEventHandlers_sync(void)::$_2>,void ()(dispatch::group_session,xpc::dict)>::~__func(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E3B790;
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

char *std::__function::__func<BootModule::registerEventHandlers_sync(void)::$_2,std::allocator<BootModule::registerEventHandlers_sync(void)::$_2>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t a1)
{
  result = operator new(0x20uLL);
  *result = &unk_2A1E3B790;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<BootModule::registerEventHandlers_sync(void)::$_2,std::allocator<BootModule::registerEventHandlers_sync(void)::$_2>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A1E3B790;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<BootModule::registerEventHandlers_sync(void)::$_2,std::allocator<BootModule::registerEventHandlers_sync(void)::$_2>,void ()(dispatch::group_session,xpc::dict)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<BootModule::registerEventHandlers_sync(void)::$_2,std::allocator<BootModule::registerEventHandlers_sync(void)::$_2>,void ()(dispatch::group_session,xpc::dict)>::destroy_deallocate(std::__shared_weak_count **a1)
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

void std::__function::__func<BootModule::registerEventHandlers_sync(void)::$_2,std::allocator<BootModule::registerEventHandlers_sync(void)::$_2>,void ()(dispatch::group_session,xpc::dict)>::operator()(void *a1, NSObject **a2, void **a3)
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
      if (!a1[2] || MEMORY[0x29C26F9F0](v5) != MEMORY[0x29EDCAA00])
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
      dispatch_async_f(v17, v18, dispatch::async<void ctu::SharedSynchronizable<BootModule>::execute_wrapped<BootModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(BootModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<BootModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<BootModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
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

void sub_297389BA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](&a9);
  xpc_release(v10);
  if (v9)
  {
    dispatch_group_leave(v9);
    dispatch_release(v9);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<BootModule::registerEventHandlers_sync(void)::$_2,std::allocator<BootModule::registerEventHandlers_sync(void)::$_2>,void ()(dispatch::group_session,xpc::dict)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN10BootModule26registerEventHandlers_syncEvE3$_2")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN10BootModule26registerEventHandlers_syncEvE3$_2" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN10BootModule26registerEventHandlers_syncEvE3$_2"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN10BootModule26registerEventHandlers_syncEvE3$_2" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void dispatch::async<void ctu::SharedSynchronizable<BootModule>::execute_wrapped<BootModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(BootModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<BootModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<BootModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v2 = *a1;
  v3 = **a1;
  value = xpc_dictionary_get_value((*a1)[2], *MEMORY[0x29EDBF030]);
  object = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object = xpc_null_create();
  }

  *(v3 + 328) = xpc::dyn_cast_or_default(&object, *(v3 + 328));
  xpc_release(object);
  xpc_release(v2[2]);
  v2[2] = 0;
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

void sub_297389D6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, xpc_object_t object)
{
  xpc_release(object);
  std::unique_ptr<BootModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},std::default_delete<BootModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&a11);
  std::unique_ptr<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>(WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void *std::unique_ptr<BootModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},std::default_delete<BootModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](void *result)
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

uint64_t std::__function::__func<BootModule::registerEventHandlers_sync(void)::$_3,std::allocator<BootModule::registerEventHandlers_sync(void)::$_3>,void ()(dispatch::group_session,xpc::dict)>::~__func(uint64_t result)
{
  *result = &unk_2A1E3B810;
  if (*(result + 24))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 24));
    return v1;
  }

  return result;
}

void std::__function::__func<BootModule::registerEventHandlers_sync(void)::$_3,std::allocator<BootModule::registerEventHandlers_sync(void)::$_3>,void ()(dispatch::group_session,xpc::dict)>::~__func(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E3B810;
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

char *std::__function::__func<BootModule::registerEventHandlers_sync(void)::$_3,std::allocator<BootModule::registerEventHandlers_sync(void)::$_3>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t a1)
{
  result = operator new(0x20uLL);
  *result = &unk_2A1E3B810;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<BootModule::registerEventHandlers_sync(void)::$_3,std::allocator<BootModule::registerEventHandlers_sync(void)::$_3>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A1E3B810;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<BootModule::registerEventHandlers_sync(void)::$_3,std::allocator<BootModule::registerEventHandlers_sync(void)::$_3>,void ()(dispatch::group_session,xpc::dict)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<BootModule::registerEventHandlers_sync(void)::$_3,std::allocator<BootModule::registerEventHandlers_sync(void)::$_3>,void ()(dispatch::group_session,xpc::dict)>::destroy_deallocate(std::__shared_weak_count **a1)
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

void std::__function::__func<BootModule::registerEventHandlers_sync(void)::$_3,std::allocator<BootModule::registerEventHandlers_sync(void)::$_3>,void ()(dispatch::group_session,xpc::dict)>::operator()(void *a1, NSObject **a2, void **a3)
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
      if (!a1[2] || MEMORY[0x29C26F9F0](v5) != MEMORY[0x29EDCAA00])
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
      dispatch_async_f(v17, v18, dispatch::async<void ctu::SharedSynchronizable<BootModule>::execute_wrapped<BootModule::registerEventHandlers_sync(void)::$_3::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(BootModule::registerEventHandlers_sync(void)::$_3::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<BootModule::registerEventHandlers_sync(void)::$_3::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<BootModule::registerEventHandlers_sync(void)::$_3::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
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

void sub_29738A1D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](&a9);
  xpc_release(v10);
  if (v9)
  {
    dispatch_group_leave(v9);
    dispatch_release(v9);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<BootModule::registerEventHandlers_sync(void)::$_3,std::allocator<BootModule::registerEventHandlers_sync(void)::$_3>,void ()(dispatch::group_session,xpc::dict)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN10BootModule26registerEventHandlers_syncEvE3$_3")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN10BootModule26registerEventHandlers_syncEvE3$_3" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN10BootModule26registerEventHandlers_syncEvE3$_3"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN10BootModule26registerEventHandlers_syncEvE3$_3" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void dispatch::async<void ctu::SharedSynchronizable<BootModule>::execute_wrapped<BootModule::registerEventHandlers_sync(void)::$_3::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(BootModule::registerEventHandlers_sync(void)::$_3::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<BootModule::registerEventHandlers_sync(void)::$_3::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<BootModule::registerEventHandlers_sync(void)::$_3::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[2];
  v26 = 0xAAAAAAAAAAAAAAAALL;
  object[0] = v4;
  if (v4)
  {
    xpc_retain(v4);
  }

  else
  {
    object[0] = xpc_null_create();
  }

  xpc::bridge(&cf, object, v5);
  v6 = cf;
  if (!cf || (v7 = CFGetTypeID(cf), v7 != CFDictionaryGetTypeID()))
  {
    v6 = 0;
    v26 = 0;
    v8 = cf;
    if (!cf)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v26 = v6;
  CFRetain(v6);
  v8 = cf;
  if (cf)
  {
LABEL_9:
    CFRelease(v8);
  }

LABEL_10:
  xpc_release(object[0]);
  object[0] = 0xAAAAAAAAAAAAAAAALL;
  object[1] = 0xAAAAAAAAAAAAAAAALL;
  ctu::cf::dict_adapter::dict_adapter(object, v6);
  ctu::cf::MakeCFString::MakeCFString(&cf, *MEMORY[0x29EDBD418]);
  v9 = ctu::cf::map_adapter::copyCFDataRef(object, cf);
  MEMORY[0x29C26DF80](&cf);
  v24 = v9;
  if (v9)
  {
    cf = 0;
    v22 = 0;
    v23 = 0;
    ctu::cf::assign();
    v10 = cf;
    v11 = v22;
    if (cf == v22)
    {
      v15 = *(v3 + 104);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_297288000, v15, OS_LOG_TYPE_DEBUG, "#D Not adding crash entry because received crash data has zero-size", buf, 2u);
        v16 = cf;
        if (!cf)
        {
          goto LABEL_18;
        }

        goto LABEL_17;
      }
    }

    else
    {
      v12 = *(v3 + 560);
      SystemTime = TelephonyUtilGetSystemTime();
      lcdm::CrashDB::emplaceCrashEntry(v12, v10, v11 - v10, SystemTime);
    }

    v16 = cf;
    if (!cf)
    {
LABEL_18:
      CFRelease(v9);
      goto LABEL_19;
    }

LABEL_17:
    v22 = v16;
    operator delete(v16);
    goto LABEL_18;
  }

  v14 = *(v3 + 104);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(cf) = 0;
    _os_log_debug_impl(&dword_297288000, v14, OS_LOG_TYPE_DEBUG, "#D Not adding crash entry because received crash data is empty", &cf, 2u);
  }

LABEL_19:
  MEMORY[0x29C26DFC0](object);
  if (v6)
  {
    CFRelease(v6);
  }

  xpc_release(v2[2]);
  v2[2] = 0;
  v17 = v2[1];
  if (v17)
  {
    dispatch_group_leave(v17);
    v18 = v2[1];
    if (v18)
    {
      dispatch_release(v18);
    }
  }

  operator delete(v2);
  v19 = a1[2];
  if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v19);
  }

  operator delete(a1);
}

void *std::unique_ptr<BootModule::registerEventHandlers_sync(void)::$_3::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},std::default_delete<BootModule::registerEventHandlers_sync(void)::$_3::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](void *result)
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

const void **ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI10BootModuleE15execute_wrappedIZZNS3_21handleBootFailed_syncENSt3__112basic_stringIcNS6_11char_traitsIcEENS6_9allocatorIcEEEEEUb3_E4__12EEvOT_EUlvE_EEvP16dispatch_queue_sNS6_10unique_ptrISE_NS6_14default_deleteISE_EEEEENUlPvE_8__invokeESN_(void *a1)
{
  v13 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  if (*(*a1 + 24))
  {
    v2 = *(*v1 + 104);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      xpc::object::to_string(__p, (v1 + 4));
      v3 = v10 >= 0 ? __p : __p[0];
      *buf = 136315138;
      v12 = v3;
      _os_log_impl(&dword_297288000, v2, OS_LOG_TYPE_DEFAULT, "#I Dumping logs failed: %s", buf, 0xCu);
      if (v10 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  xpc_release(v1[4]);
  v1[4] = 0;
  v4 = v1[2];
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  operator delete(v1);
  v5 = a1;
  if (a1)
  {
    v6 = a1[2];
    if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
      v5 = a1;
    }

    operator delete(v5);
  }

  v7 = *MEMORY[0x29EDCA608];
}

void sub_29738A7FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void *);
  _ZNSt3__110unique_ptrIZZN10BootModule21handleBootFailed_syncENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEUb3_E4__12NS_14default_deleteIS8_EEED1B8ne200100Ev(va1);
  std::unique_ptr<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>(WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_29738A818(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void *_ZNSt3__110unique_ptrIZZN10BootModule21handleBootFailed_syncENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEUb3_E4__12NS_14default_deleteIS8_EEED1B8ne200100Ev(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    xpc_release(*(v1 + 32));
    *(v1 + 32) = 0;
    v3 = *(v1 + 16);
    if (v3)
    {
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
      }
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI10BootModuleE15execute_wrappedIZZNS3_22checkFSSyncStatus_syncENS_5blockIU13block_pointerFvbbEEEEUb4_E4__13EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrISB_NSG_14default_deleteISB_EEEEENUlPvE_8__invokeESL_(xpc_object_t **a1)
{
  v2 = *a1;
  if (**a1)
  {
    v3 = 0;
    v4 = 1;
  }

  else
  {
    value = xpc_dictionary_get_value(v2[1], *MEMORY[0x29EDBEA08]);
    object = value;
    if (value)
    {
      xpc_retain(value);
    }

    else
    {
      object = xpc_null_create();
    }

    v3 = xpc::dyn_cast_or_default(&object, 0);
    xpc_release(object);
    v6 = xpc_dictionary_get_value(v2[1], *MEMORY[0x29EDBEA10]);
    object = v6;
    if (v6)
    {
      xpc_retain(v6);
    }

    else
    {
      object = xpc_null_create();
    }

    v4 = xpc::dyn_cast_or_default(&object, 0);
    xpc_release(object);
  }

  v7 = v2[2];
  if (v7)
  {
    v7[2](v7, v3, v4);
    v8 = v2[2];
    if (v8)
    {
      _Block_release(v8);
    }
  }

  xpc_release(v2[1]);
  operator delete(v2);
  v9 = a1[2];
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  operator delete(a1);
}

void sub_29738AA38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, xpc_object_t object)
{
  xpc_release(object);
  _ZNSt3__110unique_ptrIZZN10BootModule22checkFSSyncStatus_syncEN8dispatch5blockIU13block_pointerFvbbEEEEUb4_E4__13NS_14default_deleteIS7_EEED1B8ne200100Ev(&a11);
  std::unique_ptr<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>(WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

uint64_t *_ZNSt3__110unique_ptrIZZN10BootModule22checkFSSyncStatus_syncEN8dispatch5blockIU13block_pointerFvbbEEEEUb4_E4__13NS_14default_deleteIS7_EEED1B8ne200100Ev(uint64_t *a1)
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

void dispatch::detail::group_notify<BootModule::setVoiceCall_sync(BOOL)::$_0>(dispatch_group_s *,dispatch_queue_s *,BootModule::setVoiceCall_sync(BOOL)::$_0 &&,std::integral_constant<BOOL,false>)::{lambda(void *)#1}::__invoke(uint64_t *__p)
{
  v13 = *MEMORY[0x29EDCA608];
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
        v6 = *(__p + 24);
        *(v3 + 360) = v6;
        v7 = *(v3 + 104);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = "NO";
          if (v6)
          {
            v8 = "YES";
          }

          v11 = 136315138;
          v12 = v8;
          _os_log_impl(&dword_297288000, v7, OS_LOG_TYPE_DEFAULT, "#I Voice Call: %s", &v11, 0xCu);
        }
      }

      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    v9 = __p[2];
    if (v9)
    {
      std::__shared_weak_count::__release_weak(v9);
    }
  }

  operator delete(__p);
  v10 = *MEMORY[0x29EDCA608];
}

void dispatch::detail::group_notify<BootModule::setRat1_sync(abm::RadioAccessTechnology)::$_0>(dispatch_group_s *,dispatch_queue_s *,BootModule::setRat1_sync(abm::RadioAccessTechnology)::$_0 &&,std::integral_constant<BOOL,false>)::{lambda(void *)#1}::__invoke(uint64_t *a1)
{
  v20 = *MEMORY[0x29EDCA608];
  v2 = a1[2];
  if (v2)
  {
    v3 = *a1;
    v4 = std::__shared_weak_count::lock(v2);
    v15 = v4;
    if (v4)
    {
      v5 = v4;
      if (a1[1])
      {
        *(v3 + 368) = *(a1 + 6);
        v6 = *(v3 + 104);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          abm::asString();
          v7 = v13 >= 0 ? &__p : __p;
          v8 = *(a1 + 6);
          *buf = 136315394;
          v17 = v7;
          v18 = 1024;
          v19 = v8;
          _os_log_impl(&dword_297288000, v6, OS_LOG_TYPE_DEFAULT, "#I RAT1: %s (%d)", buf, 0x12u);
          if (v13 < 0)
          {
            operator delete(__p);
          }
        }
      }

      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }

  if (a1)
  {
    v9 = a1[2];
    if (v9)
    {
      std::__shared_weak_count::__release_weak(v9);
    }

    operator delete(a1);
  }

  v10 = *MEMORY[0x29EDCA608];
}

void sub_29738AD98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](&a13);
  std::unique_ptr<MipcTransportService::engage(void)::$_0::operator() const(void)::{lambda(void)#1},std::default_delete<MipcTransportService::engage(void)::$_0::operator() const(void)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void dispatch::detail::group_notify<BootModule::setRat2_sync(abm::RadioAccessTechnology)::$_0>(dispatch_group_s *,dispatch_queue_s *,BootModule::setRat2_sync(abm::RadioAccessTechnology)::$_0 &&,std::integral_constant<BOOL,false>)::{lambda(void *)#1}::__invoke(uint64_t *a1)
{
  v20 = *MEMORY[0x29EDCA608];
  v2 = a1[2];
  if (v2)
  {
    v3 = *a1;
    v4 = std::__shared_weak_count::lock(v2);
    v15 = v4;
    if (v4)
    {
      v5 = v4;
      if (a1[1])
      {
        *(v3 + 416) = *(a1 + 6);
        v6 = *(v3 + 104);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          abm::asString();
          v7 = v13 >= 0 ? &__p : __p;
          v8 = *(a1 + 6);
          *buf = 136315394;
          v17 = v7;
          v18 = 1024;
          v19 = v8;
          _os_log_impl(&dword_297288000, v6, OS_LOG_TYPE_DEFAULT, "#I RAT2: %s (%d)", buf, 0x12u);
          if (v13 < 0)
          {
            operator delete(__p);
          }
        }
      }

      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }

  if (a1)
  {
    v9 = a1[2];
    if (v9)
    {
      std::__shared_weak_count::__release_weak(v9);
    }

    operator delete(a1);
  }

  v10 = *MEMORY[0x29EDCA608];
}

void sub_29738AF30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](&a13);
  std::unique_ptr<MipcTransportService::engage(void)::$_0::operator() const(void)::{lambda(void)#1},std::default_delete<MipcTransportService::engage(void)::$_0::operator() const(void)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void dispatch::detail::group_notify<BootModule::setPLMN1_sync(std::string)::$_0>(dispatch_group_s *,dispatch_queue_s *,BootModule::setPLMN1_sync(std::string)::$_0 &&,std::integral_constant<BOOL,false>)::{lambda(void *)#1}::__invoke(char *a1)
{
  v18 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 2);
  if (v2)
  {
    v3 = *a1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(a1 + 1))
      {
        v6 = a1 + 24;
        v7 = (v3 + 376);
        if ((v3 + 376) != a1 + 24)
        {
          v8 = a1[47];
          if (*(v3 + 399) < 0)
          {
            if (v8 >= 0)
            {
              v10 = a1 + 24;
            }

            else
            {
              v10 = *(a1 + 3);
            }

            if (v8 >= 0)
            {
              v11 = a1[47];
            }

            else
            {
              v11 = *(a1 + 4);
            }

            std::string::__assign_no_alias<false>(v7, v10, v11);
          }

          else if (a1[47] < 0)
          {
            std::string::__assign_no_alias<true>(v7, *(a1 + 3), *(a1 + 4));
          }

          else
          {
            v9 = *v6;
            *(v3 + 392) = *(a1 + 5);
            *v7 = v9;
          }
        }

        v12 = *(v3 + 104);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          if (a1[47] < 0)
          {
            v6 = *v6;
          }

          *buf = 136315138;
          v17 = v6;
          _os_log_impl(&dword_297288000, v12, OS_LOG_TYPE_DEFAULT, "#I PLMN1: %s", buf, 0xCu);
        }
      }

      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }

  if (a1)
  {
    if (a1[47] < 0)
    {
      operator delete(*(a1 + 3));
    }

    v13 = *(a1 + 2);
    if (v13)
    {
      std::__shared_weak_count::__release_weak(v13);
    }

    operator delete(a1);
  }

  v14 = *MEMORY[0x29EDCA608];
}

void sub_29738B0EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](va1);
  std::unique_ptr<MipcTransportService::snapshot(std::string)::$_0::operator() const(void)::{lambda(void)#1},std::default_delete<MipcTransportService::snapshot(std::string)::$_0::operator() const(void)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void dispatch::detail::group_notify<BootModule::setPLMN2_sync(std::string)::$_0>(dispatch_group_s *,dispatch_queue_s *,BootModule::setPLMN2_sync(std::string)::$_0 &&,std::integral_constant<BOOL,false>)::{lambda(void *)#1}::__invoke(char *a1)
{
  v18 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 2);
  if (v2)
  {
    v3 = *a1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(a1 + 1))
      {
        v6 = a1 + 24;
        v7 = (v3 + 424);
        if ((v3 + 424) != a1 + 24)
        {
          v8 = a1[47];
          if (*(v3 + 447) < 0)
          {
            if (v8 >= 0)
            {
              v10 = a1 + 24;
            }

            else
            {
              v10 = *(a1 + 3);
            }

            if (v8 >= 0)
            {
              v11 = a1[47];
            }

            else
            {
              v11 = *(a1 + 4);
            }

            std::string::__assign_no_alias<false>(v7, v10, v11);
          }

          else if (a1[47] < 0)
          {
            std::string::__assign_no_alias<true>(v7, *(a1 + 3), *(a1 + 4));
          }

          else
          {
            v9 = *v6;
            *(v3 + 440) = *(a1 + 5);
            *v7 = v9;
          }
        }

        v12 = *(v3 + 104);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          if (a1[47] < 0)
          {
            v6 = *v6;
          }

          *buf = 136315138;
          v17 = v6;
          _os_log_impl(&dword_297288000, v12, OS_LOG_TYPE_DEFAULT, "#I PLMN2: %s", buf, 0xCu);
        }
      }

      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }

  if (a1)
  {
    if (a1[47] < 0)
    {
      operator delete(*(a1 + 3));
    }

    v13 = *(a1 + 2);
    if (v13)
    {
      std::__shared_weak_count::__release_weak(v13);
    }

    operator delete(a1);
  }

  v14 = *MEMORY[0x29EDCA608];
}

void sub_29738B2A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  std::shared_ptr<WorkoutModule>::~shared_ptr[abi:ne200100](va1);
  std::unique_ptr<MipcTransportService::snapshot(std::string)::$_0::operator() const(void)::{lambda(void)#1},std::default_delete<MipcTransportService::snapshot(std::string)::$_0::operator() const(void)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void dispatch::detail::group_notify<BootModule::setCellId_sync(unsigned long long,BootModule::SimSlotIndex)::$_0>(dispatch_group_s *,dispatch_queue_s *,BootModule::setCellId_sync(unsigned long long,BootModule::SimSlotIndex)::$_0 &&,std::integral_constant<BOOL,false>)::{lambda(void *)#1}::__invoke(void *__p)
{
  v14 = *MEMORY[0x29EDCA608];
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
        v6 = __p[3];
        v7 = *(__p + 8);
        *(v3 + 48 * v7 + 400) = v6;
        v8 = *(v3 + 104);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v11[0] = 67109376;
          v11[1] = v7 + 1;
          v12 = 2048;
          v13 = v6;
          _os_log_impl(&dword_297288000, v8, OS_LOG_TYPE_DEFAULT, "#I CellId%d: %llu", v11, 0x12u);
        }
      }

      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    v9 = __p[2];
    if (v9)
    {
      std::__shared_weak_count::__release_weak(v9);
    }
  }

  operator delete(__p);
  v10 = *MEMORY[0x29EDCA608];
}

void dispatch::detail::group_notify<BootModule::setAreaCode_sync(unsigned long long,BootModule::SimSlotIndex)::$_0>(dispatch_group_s *,dispatch_queue_s *,BootModule::setAreaCode_sync(unsigned long long,BootModule::SimSlotIndex)::$_0 &&,std::integral_constant<BOOL,false>)::{lambda(void *)#1}::__invoke(void *__p)
{
  v14 = *MEMORY[0x29EDCA608];
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
        v6 = __p[3];
        v7 = *(__p + 8);
        *(v3 + 48 * v7 + 408) = v6;
        v8 = *(v3 + 104);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v11[0] = 67109376;
          v11[1] = v7 + 1;
          v12 = 2048;
          v13 = v6;
          _os_log_impl(&dword_297288000, v8, OS_LOG_TYPE_DEFAULT, "#I AreaCode%d: %llu", v11, 0x12u);
        }
      }

      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }

    v9 = __p[2];
    if (v9)
    {
      std::__shared_weak_count::__release_weak(v9);
    }
  }

  operator delete(__p);
  v10 = *MEMORY[0x29EDCA608];
}

void dispatch::async<void ctu::SharedSynchronizable<BootModule>::execute_wrapped<BootModule::bbResetFlag(BOOL)::$_0>(BootModule::bbResetFlag(BOOL)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<BootModule::bbResetFlag(BOOL)::$_0,dispatch_queue_s *::default_delete<BootModule::bbResetFlag(BOOL)::$_0>>)::{lambda(void *)#1}::__invoke(NSObject ****a1)
{
  v2 = *a1;
  v3 = **a1;
  if (*(*a1 + 8) == 1)
  {
    v4 = v3[61];
    if (v4)
    {
      dispatch_retain(v3[61]);
      dispatch_group_enter(v4);
    }

    v5 = v3[62];
    v3[62] = v4;
    if (v5)
    {
      dispatch_group_leave(v5);
      dispatch_release(v5);
    }

    v6 = v3[13];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 0;
      v7 = "#I The baseband reset was detected.";
      v8 = &v13;
LABEL_12:
      _os_log_impl(&dword_297288000, v6, OS_LOG_TYPE_DEFAULT, v7, v8, 2u);
    }
  }

  else
  {
    v9 = v3[62];
    v3[62] = 0;
    if (v9)
    {
      dispatch_group_leave(v9);
      dispatch_release(v9);
    }

    v6 = v3[13];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 0;
      v7 = "#I The baseband reset-flag is reset.";
      v8 = &v12;
      goto LABEL_12;
    }
  }

  v10 = v3[64];
  v3[64] = 0;
  if (v10)
  {
    dispatch_resume(v10);
    dispatch_release(v10);
  }

  operator delete(v2);
  v11 = a1[2];
  if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  operator delete(a1);
}

uint64_t std::__function::__func<BootModule::startNetworkCampTimer_sync(void)::$_0,std::allocator<BootModule::startNetworkCampTimer_sync(void)::$_0>,void ()(void)>::~__func(uint64_t result)
{
  *result = &unk_2A1E3B890;
  if (*(result + 16))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 16));
    return v1;
  }

  return result;
}

void std::__function::__func<BootModule::startNetworkCampTimer_sync(void)::$_0,std::allocator<BootModule::startNetworkCampTimer_sync(void)::$_0>,void ()(void)>::~__func(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E3B890;
  if (a1[2])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[2]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

void *std::__function::__func<BootModule::startNetworkCampTimer_sync(void)::$_0,std::allocator<BootModule::startNetworkCampTimer_sync(void)::$_0>,void ()(void)>::__clone(void *a1)
{
  result = operator new(0x20uLL);
  v4 = a1[1];
  v3 = a1[2];
  *result = &unk_2A1E3B890;
  result[1] = v4;
  result[2] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  result[3] = a1[3];
  return result;
}

void *std::__function::__func<BootModule::startNetworkCampTimer_sync(void)::$_0,std::allocator<BootModule::startNetworkCampTimer_sync(void)::$_0>,void ()(void)>::__clone(void *result, void *a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = &unk_2A1E3B890;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  a2[3] = result[3];
  return result;
}

void std::__function::__func<BootModule::startNetworkCampTimer_sync(void)::$_0,std::allocator<BootModule::startNetworkCampTimer_sync(void)::$_0>,void ()(void)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<BootModule::startNetworkCampTimer_sync(void)::$_0,std::allocator<BootModule::startNetworkCampTimer_sync(void)::$_0>,void ()(void)>::destroy_deallocate(std::__shared_weak_count **a1)
{
  if (a1[2])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[2]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

void std::__function::__func<BootModule::startNetworkCampTimer_sync(void)::$_0,std::allocator<BootModule::startNetworkCampTimer_sync(void)::$_0>,void ()(void)>::operator()(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    v3 = a1[3];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (!a1[1])
      {
        goto LABEL_16;
      }

      v6 = v3[10];
      if (!v6 || (v7 = v3[9], (v8 = std::__shared_weak_count::lock(v6)) == 0))
      {
        std::__throw_bad_weak_ptr[abi:ne200100]();
      }

      v9 = v8;
      v10 = operator new(8uLL);
      *v10 = v3;
      v11 = v3[11];
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      v12 = operator new(0x18uLL);
      *v12 = v10;
      v12[1] = v7;
      v12[2] = v9;
      dispatch_async_f(v11, v12, dispatch::async<void ctu::SharedSynchronizable<BootModule>::execute_wrapped<BootModule::startNetworkCampTimer_sync(void)::$_0::operator() const(void)::{lambda(void)#1}>(BootModule::startNetworkCampTimer_sync(void)::$_0::operator() const(void)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<BootModule::startNetworkCampTimer_sync(void)::$_0::operator() const(void)::{lambda(void)#1},dispatch_queue_s *::default_delete<BootModule::startNetworkCampTimer_sync(void)::$_0::operator() const(void)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
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

uint64_t std::__function::__func<BootModule::startNetworkCampTimer_sync(void)::$_0,std::allocator<BootModule::startNetworkCampTimer_sync(void)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN10BootModule26startNetworkCampTimer_syncEvE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN10BootModule26startNetworkCampTimer_syncEvE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN10BootModule26startNetworkCampTimer_syncEvE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN10BootModule26startNetworkCampTimer_syncEvE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void dispatch::async<void ctu::SharedSynchronizable<BootModule>::execute_wrapped<BootModule::startNetworkCampTimer_sync(void)::$_0::operator() const(void)::{lambda(void)#1}>(BootModule::startNetworkCampTimer_sync(void)::$_0::operator() const(void)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<BootModule::startNetworkCampTimer_sync(void)::$_0::operator() const(void)::{lambda(void)#1},dispatch_queue_s *::default_delete<BootModule::startNetworkCampTimer_sync(void)::$_0::operator() const(void)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(BootModule ***a1)
{
  v2 = *a1;
  v3 = **a1;
  v4 = *(v3 + 13);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_297288000, v4, OS_LOG_TYPE_DEFAULT, "#I Timeout for network camping metrics capture, sending out existing metrics to Core Analytics", buf, 2u);
  }

  BootModule::updateNetworkCampStatus_sync(v3, 0);
  operator delete(v2);
  v5 = a1[2];
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  operator delete(a1);
}

void sub_29738BB3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  operator delete(v10);
  std::unique_ptr<void ctu::SharedSynchronizable<WorkoutModule>::execute_wrapped<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>(WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<WorkoutModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

uint64_t std::function<void ()(void)>::~function(uint64_t a1)
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

void std::__shared_ptr_pointer<support::misc::safe_timer  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<support::misc::safe_timer  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<support::misc::safe_timer  *>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x8000000297434109)
  {
    if (((v2 & 0x8000000297434109 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x8000000297434109))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x8000000297434109 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t __cxx_global_var_init_189()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ctu::power::assertion>::~PthreadMutexGuardPolicy, &ctu::Singleton<ctu::power::assertion,ctu::power::assertion,ctu::PthreadMutexGuardPolicy<ctu::power::assertion>>::sInstance, &dword_297288000);
  }

  return result;
}

uint64_t __cxx_global_var_init_190()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>::~PthreadMutexGuardPolicy, &ctu::Singleton<support::log::shared_stdio,support::log::shared_stdio,ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>>::sInstance, &dword_297288000);
  }

  return result;
}

uint64_t __cxx_global_var_init_191()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<HealthEventDB>::~PthreadMutexGuardPolicy, &ctu::Singleton<HealthEventDB,HealthEventDB,ctu::PthreadMutexGuardPolicy<HealthEventDB>>::sInstance, &dword_297288000);
  }

  return result;
}

uint64_t __cxx_global_var_init_192()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ABMServer>::~PthreadMutexGuardPolicy, &ctu::Singleton<ABMServer,ABMServer,ctu::PthreadMutexGuardPolicy<ABMServer>>::sInstance, &dword_297288000);
  }

  return result;
}

uint64_t __cxx_global_var_init_193()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<SharedData>::~PthreadMutexGuardPolicy, &ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance, &dword_297288000);
  }

  return result;
}

uint64_t __cxx_global_var_init_194()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<CommandDriverFactory>::~PthreadMutexGuardPolicy, &ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance, &dword_297288000);
  }

  return result;
}

BOOL prop::get(char *a1, char *a2, uint64_t a3)
{
  v28 = *MEMORY[0x29EDCA608];
  if (a1[23] < 0)
  {
    v6 = *a1;
    if (strcasecmp(*a1, *MEMORY[0x29EDBE5F0]) && strcasecmp(v6, *MEMORY[0x29EDBF8A0]) && strcasecmp(v6, *MEMORY[0x29EDBD2C0]) && strcasecmp(v6, *MEMORY[0x29EDBD2B8]))
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
                          v7 = qword_2A1399EB8;
                          if (os_log_type_enabled(qword_2A1399EB8, OS_LOG_TYPE_ERROR))
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
                            _os_log_error_impl(&dword_297288000, v7, OS_LOG_TYPE_ERROR, "get: Invalid domain; domain='%s' key='%s'", &v24, 0x16u);
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

  else if (strcasecmp(a1, *MEMORY[0x29EDBE5F0]) && strcasecmp(a1, *MEMORY[0x29EDBF8A0]) && strcasecmp(a1, *MEMORY[0x29EDBD2C0]) && strcasecmp(a1, *MEMORY[0x29EDBD2B8]))
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

void sub_29738C61C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
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

void sub_29738C798(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
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

BOOL prop::ipc::get(char *a1, uint64_t a2)
{
  v4 = *MEMORY[0x29EDBF8E8];
  v5 = strlen(*MEMORY[0x29EDBF8E8]);
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

void sub_29738C914(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
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

void sub_29738CA90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
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

void sub_29738CC0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
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

void sub_29738CD88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
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

void sub_29738CF04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
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

void sub_29738D080(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
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

void sub_29738D1FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
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

void sub_29738D378(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
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

void sub_29738D4F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
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
    if (strcasecmp(*a1, *MEMORY[0x29EDBE5F0]) && strcasecmp(v6, *MEMORY[0x29EDBF8A0]) && strcasecmp(v6, *MEMORY[0x29EDBD2C0]) && strcasecmp(v6, *MEMORY[0x29EDBD2B8]))
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
                          v7 = qword_2A1399EB8;
                          if (os_log_type_enabled(qword_2A1399EB8, OS_LOG_TYPE_ERROR))
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
                            _os_log_error_impl(&dword_297288000, v7, OS_LOG_TYPE_ERROR, "set: Invalid domain; domain='%s' key='%s' value='%s'", &v25, 0x20u);
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

  else if (strcasecmp(a1, *MEMORY[0x29EDBE5F0]) && strcasecmp(a1, *MEMORY[0x29EDBF8A0]) && strcasecmp(a1, *MEMORY[0x29EDBD2C0]) && strcasecmp(a1, *MEMORY[0x29EDBD2B8]))
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
  v118 = *MEMORY[0x29EDCA608];
  memset(&v115, 170, sizeof(v115));
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v115, *a2, *(a2 + 8));
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
    v115 = *a2;
    if (strcmp(a2, "default"))
    {
      goto LABEL_9;
    }
  }

  if (!defaults::bbtrace::get(a1, &v115))
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
                if (!util::convert<int>(&v115, __dst, 0))
                {
                  goto LABEL_322;
                }

                v49 = *__dst;
                std::string::basic_string[abi:ne200100]<0>(__dst, *MEMORY[0x29EDBF8A0]);
                LODWORD(__p.__r_.__value_.__l.__data_) = v49;
                v39 = prop::file::set<unsigned int>(__dst, a1, &__p);
LABEL_121:
                v16 = v39;
LABEL_122:
                if ((__dst[23] & 0x80000000) != 0)
                {
                  operator delete(*__dst);
                }

                goto LABEL_323;
              }

LABEL_92:
              v40 = *MEMORY[0x29EDBF8A0];
              v41 = strlen(*MEMORY[0x29EDBF8A0]);
              if (v41 > 0x7FFFFFFFFFFFFFF7)
              {
                std::string::__throw_length_error[abi:ne200100]();
              }

              v42 = v41;
              if (v41 >= 0x17)
              {
                if ((v41 | 7) == 0x17)
                {
                  v50 = 25;
                }

                else
                {
                  v50 = (v41 | 7) + 1;
                }

                v43 = operator new(v50);
                *&__dst[8] = v42;
                *&__dst[16] = v50 | 0x8000000000000000;
                *__dst = v43;
              }

              else
              {
                __dst[23] = v41;
                v43 = __dst;
                if (!v41)
                {
                  goto LABEL_114;
                }
              }

              memmove(v43, v40, v42);
LABEL_114:
              v43[v42] = 0;
              v39 = prop::file::set<std::string>(__dst, a1, &v115);
              goto LABEL_121;
            }

LABEL_77:
            *__dst = -1431655766;
            if (!util::convert<int>(&v115, __dst, 0))
            {
              goto LABEL_322;
            }

            v32 = *__dst;
            v33 = *MEMORY[0x29EDBF8A0];
            v34 = strlen(*MEMORY[0x29EDBF8A0]);
            if (v34 > 0x7FFFFFFFFFFFFFF7)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            v35 = v34;
            if (v34 >= 0x17)
            {
              if ((v34 | 7) == 0x17)
              {
                v51 = 25;
              }

              else
              {
                v51 = (v34 | 7) + 1;
              }

              v36 = operator new(v51);
              *&__dst[8] = v35;
              *&__dst[16] = v51 | 0x8000000000000000;
              *__dst = v36;
            }

            else
            {
              __dst[23] = v34;
              v36 = __dst;
              if (!v34)
              {
                goto LABEL_120;
              }
            }

            memmove(v36, v33, v35);
LABEL_120:
            v36[v35] = 0;
            LODWORD(__p.__r_.__value_.__l.__data_) = v32;
            v39 = prop::file::set<unsigned int>(__dst, a1, &__p);
            goto LABEL_121;
          }

LABEL_66:
          LODWORD(__p.__r_.__value_.__l.__data_) = -1431655766;
          v27 = util::convert<int>(&v115, &__p, 0);
          v28 = v27;
          v29 = capabilities::radio::maverick(v27);
          if (v29)
          {
            if (LODWORD(__p.__r_.__value_.__l.__data_) < 5)
            {
              v30 = v28;
            }

            else
            {
              v30 = 0;
            }

            if ((v30 & 1) == 0)
            {
              goto LABEL_322;
            }
          }

          else
          {
            v37 = capabilities::radio::ice(v29);
            if ((v37 & v28) == 1)
            {
              v16 = 0;
              if (LODWORD(__p.__r_.__value_.__l.__data_) > 6 || ((1 << __p.__r_.__value_.__s.__data_[0]) & 0x45) == 0)
              {
                goto LABEL_323;
              }
            }

            else if (((v37 ^ 1) & v28) != 1)
            {
              goto LABEL_322;
            }
          }

          v44 = *MEMORY[0x29EDBF8A0];
          v45 = strlen(*MEMORY[0x29EDBF8A0]);
          if (v45 > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          v46 = v45;
          if (v45 >= 0x17)
          {
            if ((v45 | 7) == 0x17)
            {
              v48 = 25;
            }

            else
            {
              v48 = (v45 | 7) + 1;
            }

            v47 = operator new(v48);
            *&__dst[8] = v46;
            *&__dst[16] = v48 | 0x8000000000000000;
            *__dst = v47;
          }

          else
          {
            __dst[23] = v45;
            v47 = __dst;
            if (!v45)
            {
              goto LABEL_106;
            }
          }

          memmove(v47, v44, v46);
LABEL_106:
          v47[v46] = 0;
          v39 = prop::file::set<int>(__dst, a1, &__p);
          goto LABEL_121;
        }

LABEL_56:
        __p.__r_.__value_.__s.__data_[0] = -86;
        if (!util::convert<BOOL>(&v115, &__p, 0))
        {
          goto LABEL_322;
        }

        v20 = *MEMORY[0x29EDBF8A0];
        v25 = strlen(*MEMORY[0x29EDBF8A0]);
        if (v25 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v22 = v25;
        if (v25 >= 0x17)
        {
          if ((v25 | 7) == 0x17)
          {
            v38 = 25;
          }

          else
          {
            v38 = (v25 | 7) + 1;
          }

          v23 = operator new(v38);
          *&__dst[8] = v22;
          *&__dst[16] = v38 | 0x8000000000000000;
          *__dst = v23;
        }

        else
        {
          __dst[23] = v25;
          v23 = __dst;
          if (!v25)
          {
            goto LABEL_91;
          }
        }

        goto LABEL_90;
      }

LABEL_51:
      __p.__r_.__value_.__s.__data_[0] = -86;
      if (!util::convert<BOOL>(&v115, &__p, 0))
      {
        goto LABEL_322;
      }

      v20 = *MEMORY[0x29EDBF8A0];
      v24 = strlen(*MEMORY[0x29EDBF8A0]);
      if (v24 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v22 = v24;
      if (v24 >= 0x17)
      {
        if ((v24 | 7) == 0x17)
        {
          v31 = 25;
        }

        else
        {
          v31 = (v24 | 7) + 1;
        }

        v23 = operator new(v31);
        *&__dst[8] = v22;
        *&__dst[16] = v31 | 0x8000000000000000;
        *__dst = v23;
      }

      else
      {
        __dst[23] = v24;
        v23 = __dst;
        if (!v24)
        {
          goto LABEL_91;
        }
      }

      goto LABEL_90;
    }

LABEL_46:
    __p.__r_.__value_.__s.__data_[0] = -86;
    if (!util::convert<BOOL>(&v115, &__p, 0))
    {
      goto LABEL_322;
    }

    v20 = *MEMORY[0x29EDBF8A0];
    v21 = strlen(*MEMORY[0x29EDBF8A0]);
    if (v21 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v22 = v21;
    if (v21 >= 0x17)
    {
      if ((v21 | 7) == 0x17)
      {
        v26 = 25;
      }

      else
      {
        v26 = (v21 | 7) + 1;
      }

      v23 = operator new(v26);
      *&__dst[8] = v22;
      *&__dst[16] = v26 | 0x8000000000000000;
      *__dst = v23;
    }

    else
    {
      __dst[23] = v21;
      v23 = __dst;
      if (!v21)
      {
        goto LABEL_91;
      }
    }

LABEL_90:
    memmove(v23, v20, v22);
LABEL_91:
    v23[v22] = 0;
    v39 = prop::file::set<BOOL>(__dst, a1, &__p);
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
    v8 = MEMORY[0x29EDBD4C8];
    v9 = strcasecmp(v7, *MEMORY[0x29EDBD4C8]);
    if (!v9)
    {
      v52 = capabilities::radio::maverick(v9);
      if (v52 & 1) != 0 || (capabilities::radio::ice(v52))
      {
        *__dst = -1431655766;
        if ((util::convert<int>(&v115, __dst, 0) & 1) == 0)
        {
          goto LABEL_322;
        }

        v53 = *__dst;
        if (*__dst > 2u)
        {
          goto LABEL_322;
        }

        goto LABEL_308;
      }

      LOBYTE(v5) = a1[23];
    }

    v10 = *a1;
    if ((v5 & 0x80u) == 0)
    {
      v11 = a1;
    }

    else
    {
      v11 = *a1;
    }

    v12 = strcasecmp(v11, *MEMORY[0x29EDBF1F8]);
    if (!v12)
    {
      if (capabilities::trace::supportsDataRateObserver(v12))
      {
        LODWORD(__p.__r_.__value_.__l.__data_) = -1431655766;
        v13 = util::convert<unsigned int>(&v115, &__p);
        if (LODWORD(__p.__r_.__value_.__l.__data_) < 0xBB9)
        {
          v14 = v13;
        }

        else
        {
          v14 = 0;
        }

        if (v14 == 1)
        {
          goto LABEL_299;
        }

        goto LABEL_322;
      }

      LOBYTE(v5) = a1[23];
      v10 = *a1;
    }

    if ((v5 & 0x80u) == 0)
    {
      v54 = a1;
    }

    else
    {
      v54 = v10;
    }

    v55 = strcasecmp(v54, *v8);
    if (!v55)
    {
      if (capabilities::radio::initium(v55))
      {
        LODWORD(__p.__r_.__value_.__l.__data_) = 0;
        v56 = util::convert<unsigned int>(&v115, &__p);
        if (LODWORD(__p.__r_.__value_.__l.__data_) < 3)
        {
          v57 = v56;
        }

        else
        {
          v57 = 0;
        }

        if (v57 == 1)
        {
          goto LABEL_299;
        }

        goto LABEL_322;
      }

      LOBYTE(v5) = a1[23];
      v10 = *a1;
    }

    if ((v5 & 0x80u) == 0)
    {
      v58 = a1;
    }

    else
    {
      v58 = v10;
    }

    v59 = strcasecmp(v58, *MEMORY[0x29EDBFCB8]);
    if (!v59)
    {
      if (capabilities::radio::initium(v59))
      {
        *__dst = -1431655766;
        if ((util::convert<int>(&v115, __dst, 0) & 1) == 0)
        {
          goto LABEL_322;
        }

        v53 = *__dst;
        if (*__dst > 3u)
        {
          goto LABEL_322;
        }

LABEL_308:
        std::string::basic_string[abi:ne200100]<0>(__dst, *MEMORY[0x29EDBF8A0]);
        LODWORD(__p.__r_.__value_.__l.__data_) = v53;
        v39 = prop::file::set<unsigned int>(__dst, a1, &__p);
        goto LABEL_121;
      }

      LOBYTE(v5) = a1[23];
      v10 = *a1;
    }

    if ((v5 & 0x80u) == 0)
    {
      v60 = a1;
    }

    else
    {
      v60 = v10;
    }

    v61 = strcasecmp(v60, *MEMORY[0x29EDBD4B8]);
    if (!v61)
    {
      if (capabilities::radio::maverick(v61))
      {
        __p.__r_.__value_.__s.__data_[0] = -86;
        if (!util::convert<BOOL>(&v115, &__p, 0))
        {
          goto LABEL_322;
        }

        goto LABEL_230;
      }

      LOBYTE(v5) = a1[23];
      v10 = *a1;
    }

    if ((v5 & 0x80u) == 0)
    {
      v62 = a1;
    }

    else
    {
      v62 = v10;
    }

    v63 = strcasecmp(v62, *MEMORY[0x29EDBD4B0]);
    if (!v63)
    {
      if (capabilities::radio::maverick(v63))
      {
        __p.__r_.__value_.__s.__data_[0] = -86;
        if (!util::convert<BOOL>(&v115, &__p, 0))
        {
          goto LABEL_322;
        }

        goto LABEL_230;
      }

      LOBYTE(v5) = a1[23];
      v10 = *a1;
    }

    if ((v5 & 0x80u) == 0)
    {
      v64 = a1;
    }

    else
    {
      v64 = v10;
    }

    v65 = strcasecmp(v64, *MEMORY[0x29EDBD4D0]);
    if (!v65)
    {
      if (capabilities::radio::maverick(v65))
      {
        LODWORD(__p.__r_.__value_.__l.__data_) = -1431655766;
        if (util::convert<unsigned int>(&v115, &__p))
        {
LABEL_299:
          std::string::basic_string[abi:ne200100]<0>(__dst, *MEMORY[0x29EDBF8A0]);
          v39 = prop::file::set<unsigned int>(__dst, a1, &__p);
          goto LABEL_121;
        }

LABEL_322:
        v16 = 0;
        goto LABEL_323;
      }

      LOBYTE(v5) = a1[23];
      v10 = *a1;
    }

    if ((v5 & 0x80u) == 0)
    {
      v66 = a1;
    }

    else
    {
      v66 = v10;
    }

    v67 = strcasecmp(v66, *MEMORY[0x29EDBD4D8]);
    if (!v67)
    {
      if (capabilities::radio::maverick(v67))
      {
        LODWORD(__p.__r_.__value_.__l.__data_) = -1431655766;
        if (!diag::config::asEnum())
        {
          goto LABEL_322;
        }

        std::string::basic_string[abi:ne200100]<0>(__dst, *MEMORY[0x29EDBF8A0]);
        data = __p.__r_.__value_.__l.__data_;
        v39 = prop::file::set<unsigned int>(__dst, a1, &data);
        goto LABEL_121;
      }

      LOBYTE(v5) = a1[23];
    }

    if ((v5 & 0x80) != 0)
    {
      v68 = *a1;
      if (strcasecmp(*a1, *MEMORY[0x29EDBD4C0]))
      {
LABEL_185:
        v69 = strcasecmp(v68, *MEMORY[0x29EDBF200]);
        if (!v69)
        {
          if (capabilities::radio::maverick(v69))
          {
            goto LABEL_268;
          }

          LOBYTE(v5) = a1[23];
        }

        if ((v5 & 0x80) != 0)
        {
          v70 = *a1;
          if (!strcasecmp(*a1, *MEMORY[0x29EDBF418]))
          {
            goto LABEL_268;
          }
        }

        else
        {
          v70 = a1;
          if (!strcasecmp(a1, *MEMORY[0x29EDBF418]))
          {
            goto LABEL_268;
          }
        }

        v71 = strcasecmp(v70, *MEMORY[0x29EDBD4A8]);
        if (!v71)
        {
          if (capabilities::radio::maverick(v71))
          {
            goto LABEL_268;
          }

          LOBYTE(v5) = a1[23];
        }

        if ((v5 & 0x80u) == 0)
        {
          v72 = a1;
        }

        else
        {
          v72 = *a1;
        }

        v73 = strcasecmp(v72, *MEMORY[0x29EDBEF70]);
        if (!v73)
        {
          if (capabilities::radio::maverick(v73))
          {
            goto LABEL_268;
          }

          LOBYTE(v5) = a1[23];
        }

        if ((v5 & 0x80) != 0)
        {
          v74 = *a1;
          if (!strcasecmp(*a1, *MEMORY[0x29EDBF2E0]))
          {
            goto LABEL_268;
          }

          if (strcasecmp(v74, *MEMORY[0x29EDBF7F0]))
          {
            if (!strcasecmp(v74, *MEMORY[0x29EDBF7B0]) || !strcasecmp(v74, *MEMORY[0x29EDBF7B8]))
            {
              goto LABEL_268;
            }

            if (strcasecmp(v74, *MEMORY[0x29EDBE790]))
            {
              if (!strcasecmp(v74, *MEMORY[0x29EDBEDD8]) || !strcasecmp(v74, *MEMORY[0x29EDBEF80]))
              {
                goto LABEL_268;
              }

              if (strcasecmp(v74, *MEMORY[0x29EDBF410]))
              {
LABEL_215:
                v75 = strcasecmp(v74, *MEMORY[0x29EDBFC98]);
                if (!v75)
                {
                  if (capabilities::radio::dal(v75))
                  {
                    goto LABEL_268;
                  }

                  LOBYTE(v5) = a1[23];
                }

                v86 = *a1;
                if ((v5 & 0x80u) == 0)
                {
                  v87 = a1;
                }

                else
                {
                  v87 = *a1;
                }

                v88 = strcasecmp(v87, *MEMORY[0x29EDBFC80]);
                if (!v88)
                {
                  if (capabilities::radio::dal(v88))
                  {
                    LODWORD(__p.__r_.__value_.__l.__data_) = -1431655766;
                    v89 = util::convert<int>(&v115, &__p, 0);
                    if (LODWORD(__p.__r_.__value_.__l.__data_) < 3)
                    {
                      v90 = v89;
                    }

                    else
                    {
                      v90 = 0;
                    }

                    if (v90 != 1)
                    {
                      goto LABEL_322;
                    }

                    goto LABEL_279;
                  }

                  LOBYTE(v5) = a1[23];
                  v86 = *a1;
                }

                if ((v5 & 0x80u) == 0)
                {
                  v91 = a1;
                }

                else
                {
                  v91 = v86;
                }

                v92 = strcasecmp(v91, *MEMORY[0x29EDBFC90]);
                if (!v92)
                {
                  if (capabilities::radio::dal(v92))
                  {
LABEL_268:
                    std::string::basic_string[abi:ne200100]<0>(__dst, *MEMORY[0x29EDBF8A0]);
                    v39 = prop::file::set<std::string>(__dst, a1, &v115);
                    goto LABEL_121;
                  }

                  LOBYTE(v5) = a1[23];
                  v86 = *a1;
                }

                if ((v5 & 0x80u) == 0)
                {
                  v93 = a1;
                }

                else
                {
                  v93 = v86;
                }

                v94 = strcasecmp(v93, *MEMORY[0x29EDBFC78]);
                if (!v94)
                {
                  if (capabilities::radio::dal(v94))
                  {
                    LODWORD(__p.__r_.__value_.__l.__data_) = -1431655766;
                    v95 = util::convert<int>(&v115, &__p, 0);
                    if (LODWORD(__p.__r_.__value_.__l.__data_) < 3)
                    {
                      v96 = v95;
                    }

                    else
                    {
                      v96 = 0;
                    }

                    if (v96 != 1)
                    {
                      goto LABEL_322;
                    }

                    goto LABEL_279;
                  }

                  LOBYTE(v5) = a1[23];
                  v86 = *a1;
                }

                if ((v5 & 0x80u) == 0)
                {
                  v97 = a1;
                }

                else
                {
                  v97 = v86;
                }

                v98 = strcasecmp(v97, *MEMORY[0x29EDBFCA8]);
                if (!v98)
                {
                  if (capabilities::trace::supportsErrorHandling(v98))
                  {
                    *__dst = -1431655766;
                    if ((util::convert<int>(&v115, __dst, 0) & 1) == 0)
                    {
                      goto LABEL_322;
                    }

                    v53 = *__dst;
                    if (*__dst > 2u)
                    {
                      goto LABEL_322;
                    }

                    goto LABEL_308;
                  }

                  LOBYTE(v5) = a1[23];
                  v86 = *a1;
                }

                if ((v5 & 0x80u) == 0)
                {
                  v99 = a1;
                }

                else
                {
                  v99 = v86;
                }

                v100 = strcasecmp(v99, *MEMORY[0x29EDBF648]);
                if (!v100)
                {
                  if (capabilities::radio::initium(v100))
                  {
                    LODWORD(__p.__r_.__value_.__l.__data_) = 0;
                    v101 = util::convert<unsigned int>(&v115, &__p);
                    if (LODWORD(__p.__r_.__value_.__l.__data_))
                    {
                      v102 = v101;
                    }

                    else
                    {
                      v102 = 0;
                    }

                    if (v102 == 1)
                    {
                      goto LABEL_299;
                    }

                    goto LABEL_322;
                  }

                  LOBYTE(v5) = a1[23];
                  v86 = *a1;
                }

                if ((v5 & 0x80u) == 0)
                {
                  v103 = a1;
                }

                else
                {
                  v103 = v86;
                }

                v104 = strcasecmp(v103, *MEMORY[0x29EDBF500]);
                if (!v104)
                {
                  if (capabilities::radio::initium(v104))
                  {
                    *__dst = -1431655766;
                    if ((util::convert<int>(&v115, __dst, 0) & 1) == 0)
                    {
                      goto LABEL_322;
                    }

                    v53 = *__dst;
                    if (*__dst > 2u)
                    {
                      goto LABEL_322;
                    }

                    goto LABEL_308;
                  }

                  LOBYTE(v5) = a1[23];
                  v86 = *a1;
                }

                if ((v5 & 0x80u) == 0)
                {
                  v105 = a1;
                }

                else
                {
                  v105 = v86;
                }

                if (!strcasecmp(v105, *MEMORY[0x29EDBF2D8]))
                {
                  std::string::basic_string[abi:ne200100]<0>(__dst, *MEMORY[0x29EDBF8A0]);
                  v39 = prop::file::set<std::string>(__dst, a1, a2);
                  goto LABEL_121;
                }

                sGetOsLogContext();
                v106 = qword_2A1399EB8;
                if (!os_log_type_enabled(qword_2A1399EB8, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_322;
                }

                v107 = *MEMORY[0x29EDBF8A0];
                if (a1[23] >= 0)
                {
                  v108 = a1;
                }

                else
                {
                  v108 = *a1;
                }

                v109 = &v115;
                if ((v115.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                {
                  v109 = v115.__r_.__value_.__r.__words[0];
                }

                *__dst = 136315650;
                *&__dst[4] = v107;
                *&__dst[12] = 2080;
                *&__dst[14] = v108;
                *&__dst[22] = 2080;
                v117 = v109;
                v83 = "[bbtrace] set: Invalid key; domain='%s' key='%s' value='%s'";
                v84 = v106;
                v85 = 32;
LABEL_321:
                _os_log_error_impl(&dword_297288000, v84, OS_LOG_TYPE_ERROR, v83, __dst, v85);
                goto LABEL_322;
              }

              goto LABEL_226;
            }

LABEL_233:
            data = -1431655766;
            v76 = util::convert<unsigned int>(&v115, &data);
            if (v76)
            {
              v77 = data;
              v78 = defaults::bbtrace::min_file_size(v76);
              if (v77 < v78)
              {
                v77 = defaults::bbtrace::min_file_size(v78);
              }

              if (!v77)
              {
                sGetOsLogContext();
                v82 = qword_2A1399EB8;
                if (!os_log_type_enabled(qword_2A1399EB8, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_322;
                }

                *__dst = 0;
                v83 = "file size cannot be 0";
                v84 = v82;
                v85 = 2;
                goto LABEL_321;
              }

              data = 1 << (__clz(v77) ^ 0x1F);
              std::string::basic_string[abi:ne200100]<0>(__dst, *MEMORY[0x29EDBF8A0]);
              v76 = prop::file::set<unsigned int>(__dst, a1, &data);
              v79 = v76;
              if ((__dst[23] & 0x80000000) != 0)
              {
                operator delete(*__dst);
              }
            }

            else
            {
              v79 = 0;
            }

            v80 = capabilities::trace::defaultHistorySizeMB(v76);
            v81 = 0x7FFFFFFF;
            if (v80 < 0x7FFFFFFF)
            {
              v81 = v80;
            }

            __val = v81;
            std::string::basic_string[abi:ne200100]<0>(__dst, v6);
            prop::bbtrace::get<int>(__dst, &__val);
            if ((__dst[23] & 0x80000000) != 0)
            {
              operator delete(*__dst);
            }

            if (v79)
            {
              std::string::basic_string[abi:ne200100]<0>(__dst, v6);
              std::to_string(&__p, __val);
              v16 = prop::bbtrace::set(__dst, &__p);
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

              v74 = a1;
              if (strcasecmp(a1, *MEMORY[0x29EDBF410]))
              {
                goto LABEL_215;
              }

LABEL_226:
              __p.__r_.__value_.__s.__data_[0] = -86;
              if (!util::convert<BOOL>(&v115, &__p, 0))
              {
                goto LABEL_322;
              }

              goto LABEL_230;
            }

            goto LABEL_233;
          }
        }

        __p.__r_.__value_.__s.__data_[0] = 0;
        if (!util::convert<BOOL>(&v115, &__p, 0))
        {
          goto LABEL_322;
        }

LABEL_230:
        std::string::basic_string[abi:ne200100]<0>(__dst, *MEMORY[0x29EDBF8A0]);
        v39 = prop::file::set<BOOL>(__dst, a1, &__p);
        goto LABEL_121;
      }
    }

    else
    {
      v68 = a1;
      if (strcasecmp(a1, *MEMORY[0x29EDBD4C0]))
      {
        goto LABEL_185;
      }
    }

    __p.__r_.__value_.__s.__data_[0] = -86;
    if (!util::convert<BOOL>(&v115, &__p, 0))
    {
      goto LABEL_322;
    }

    goto LABEL_230;
  }

LABEL_37:
  LODWORD(__p.__r_.__value_.__l.__data_) = -1431655766;
  v15 = util::convert<int>(&v115, &__p, 0);
  v16 = v15;
  if (SLODWORD(__p.__r_.__value_.__l.__data_) < 0)
  {
    v17 = v15;
  }

  else
  {
    v17 = 0;
  }

  if (v17 == 1)
  {
    v18 = capabilities::trace::defaultHistorySizeMB(v15);
    v19 = 0x7FFFFFFF;
    if (v18 < 0x7FFFFFFF)
    {
      v19 = v18;
    }

    LODWORD(__p.__r_.__value_.__l.__data_) = v19;
  }

  if (v16)
  {
LABEL_279:
    std::string::basic_string[abi:ne200100]<0>(__dst, *MEMORY[0x29EDBF8A0]);
    v39 = prop::file::set<int>(__dst, a1, &__p);
    goto LABEL_121;
  }

LABEL_323:
  if (SHIBYTE(v115.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v115.__r_.__value_.__l.__data_);
  }

  v110 = *MEMORY[0x29EDCA608];
  return v16;
}

void sub_29738F238(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
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
    if ((atomic_load_explicit(&qword_2A1399EA8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1399EA8))
    {
      qword_2A1399EB0 = 0;
      qword_2A1399EB8 = 0;
      __cxa_guard_release(&qword_2A1399EA8);
    }

    if (_MergedGlobals_13 == -1)
    {
      v6 = qword_2A1399EB8;
      if (!os_log_type_enabled(qword_2A1399EB8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_39;
      }
    }

    else
    {
      dispatch_once(&_MergedGlobals_13, &__block_literal_global_11);
      v6 = qword_2A1399EB8;
      if (!os_log_type_enabled(qword_2A1399EB8, OS_LOG_TYPE_ERROR))
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
    _os_log_error_impl(&dword_297288000, v6, OS_LOG_TYPE_ERROR, "[coredump] set: Invalid key; domain='%s' key='%s' value='%s'", buf, 0x20u);
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

void sub_29738F750(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
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
      if ((atomic_load_explicit(&qword_2A1399EA8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1399EA8))
      {
        qword_2A1399EB0 = 0;
        qword_2A1399EB8 = 0;
        __cxa_guard_release(&qword_2A1399EA8);
      }

      if (_MergedGlobals_13 == -1)
      {
        v7 = qword_2A1399EB8;
        if (!os_log_type_enabled(qword_2A1399EB8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_57;
        }
      }

      else
      {
        dispatch_once(&_MergedGlobals_13, &__block_literal_global_11);
        v7 = qword_2A1399EB8;
        if (!os_log_type_enabled(qword_2A1399EB8, OS_LOG_TYPE_ERROR))
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
      _os_log_error_impl(&dword_297288000, v7, OS_LOG_TYPE_ERROR, "[ipc] set: Invalid key; domain='%s' key='%s' value='%s'", buf, 0x20u);
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

void sub_29738FBDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
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
    if ((atomic_load_explicit(&qword_2A1399EA8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1399EA8))
    {
      qword_2A1399EB0 = 0;
      qword_2A1399EB8 = 0;
      __cxa_guard_release(&qword_2A1399EA8);
    }

    if (_MergedGlobals_13 == -1)
    {
      v6 = qword_2A1399EB8;
      if (!os_log_type_enabled(qword_2A1399EB8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_64;
      }
    }

    else
    {
      dispatch_once(&_MergedGlobals_13, &__block_literal_global_11);
      v6 = qword_2A1399EB8;
      if (!os_log_type_enabled(qword_2A1399EB8, OS_LOG_TYPE_ERROR))
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
    _os_log_error_impl(&dword_297288000, v6, OS_LOG_TYPE_ERROR, "[bbipc] set: Invalid key; domain='%s' key='%s' value='%s'", buf, 0x20u);
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

void sub_297390114(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
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

  if ((atomic_load_explicit(&qword_2A1399EA8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1399EA8))
  {
    qword_2A1399EB0 = 0;
    qword_2A1399EB8 = 0;
    __cxa_guard_release(&qword_2A1399EA8);
  }

  if (_MergedGlobals_13 == -1)
  {
    v15 = qword_2A1399EB8;
    if (!os_log_type_enabled(qword_2A1399EB8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_54;
    }
  }

  else
  {
    dispatch_once(&_MergedGlobals_13, &__block_literal_global_11);
    v15 = qword_2A1399EB8;
    if (!os_log_type_enabled(qword_2A1399EB8, OS_LOG_TYPE_ERROR))
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
  _os_log_error_impl(&dword_297288000, v15, OS_LOG_TYPE_ERROR, "[compression] set: Invalid key; domain='%s' key='%s' value='%s'", __dst, 0x20u);
LABEL_54:
  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  v24 = *MEMORY[0x29EDCA608];
  return v8;
}

void sub_297390568(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
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
    if ((atomic_load_explicit(&qword_2A1399EA8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1399EA8))
    {
      qword_2A1399EB0 = 0;
      qword_2A1399EB8 = 0;
      __cxa_guard_release(&qword_2A1399EA8);
    }

    if (_MergedGlobals_13 == -1)
    {
      v6 = qword_2A1399EB8;
      if (!os_log_type_enabled(qword_2A1399EB8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_55;
      }
    }

    else
    {
      dispatch_once(&_MergedGlobals_13, &__block_literal_global_11);
      v6 = qword_2A1399EB8;
      if (!os_log_type_enabled(qword_2A1399EB8, OS_LOG_TYPE_ERROR))
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
    _os_log_error_impl(&dword_297288000, v6, OS_LOG_TYPE_ERROR, "[ttr] set: Invalid key; domain='%s' key='%s' value='%s'", buf, 0x20u);
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

void sub_2973909D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
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
    if ((atomic_load_explicit(&qword_2A1399EA8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1399EA8))
    {
      qword_2A1399EB0 = 0;
      qword_2A1399EB8 = 0;
      __cxa_guard_release(&qword_2A1399EA8);
    }

    if (_MergedGlobals_13 == -1)
    {
      v6 = qword_2A1399EB8;
      if (!os_log_type_enabled(qword_2A1399EB8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_69;
      }
    }

    else
    {
      dispatch_once(&_MergedGlobals_13, &__block_literal_global_11);
      v6 = qword_2A1399EB8;
      if (!os_log_type_enabled(qword_2A1399EB8, OS_LOG_TYPE_ERROR))
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
    _os_log_error_impl(&dword_297288000, v6, OS_LOG_TYPE_ERROR, "[logfilter] set: Invalid key; domain='%s' key='%s' value='%s'", buf, 0x20u);
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

void sub_297390F2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
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
    if ((atomic_load_explicit(&qword_2A1399EA8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1399EA8))
    {
      qword_2A1399EB0 = 0;
      qword_2A1399EB8 = 0;
      __cxa_guard_release(&qword_2A1399EA8);
    }

    if (_MergedGlobals_13 == -1)
    {
      v6 = qword_2A1399EB8;
      if (!os_log_type_enabled(qword_2A1399EB8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_74;
      }
    }

    else
    {
      dispatch_once(&_MergedGlobals_13, &__block_literal_global_11);
      v6 = qword_2A1399EB8;
      if (!os_log_type_enabled(qword_2A1399EB8, OS_LOG_TYPE_ERROR))
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
    _os_log_error_impl(&dword_297288000, v6, OS_LOG_TYPE_ERROR, "[systemlogs] set: Invalid key; domain='%s' key='%s' value='%s'", buf, 0x20u);
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

void sub_2973914AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
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
    if ((atomic_load_explicit(&qword_2A1399EA8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1399EA8))
    {
      qword_2A1399EB0 = 0;
      qword_2A1399EB8 = 0;
      __cxa_guard_release(&qword_2A1399EA8);
    }

    if (_MergedGlobals_13 == -1)
    {
      v6 = qword_2A1399EB8;
      if (!os_log_type_enabled(qword_2A1399EB8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_51;
      }
    }

    else
    {
      dispatch_once(&_MergedGlobals_13, &__block_literal_global_11);
      v6 = qword_2A1399EB8;
      if (!os_log_type_enabled(qword_2A1399EB8, OS_LOG_TYPE_ERROR))
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
    _os_log_error_impl(&dword_297288000, v6, OS_LOG_TYPE_ERROR, "[profile] set: Invalid key; domain='%s' key='%s' value='%s'", buf, 0x20u);
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

void sub_297391904(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
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
    if ((atomic_load_explicit(&qword_2A1399EA8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1399EA8))
    {
      qword_2A1399EB0 = 0;
      qword_2A1399EB8 = 0;
      __cxa_guard_release(&qword_2A1399EA8);
    }

    if (_MergedGlobals_13 == -1)
    {
      v6 = qword_2A1399EB8;
      if (!os_log_type_enabled(qword_2A1399EB8, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_39;
      }
    }

    else
    {
      dispatch_once(&_MergedGlobals_13, &__block_literal_global_11);
      v6 = qword_2A1399EB8;
      if (!os_log_type_enabled(qword_2A1399EB8, OS_LOG_TYPE_ERROR))
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
    _os_log_error_impl(&dword_297288000, v6, OS_LOG_TYPE_ERROR, "[tailspin] set: Invalid key; domain='%s' key='%s' value='%s'", buf, 0x20u);
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

void sub_297391C74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
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
            if ((atomic_load_explicit(&qword_2A1399EA8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A1399EA8))
            {
              qword_2A1399EB0 = 0;
              qword_2A1399EB8 = 0;
              __cxa_guard_release(&qword_2A1399EA8);
            }

            if (_MergedGlobals_13 == -1)
            {
              v4 = qword_2A1399EB8;
              if (!os_log_type_enabled(qword_2A1399EB8, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_68;
              }
            }

            else
            {
              dispatch_once(&_MergedGlobals_13, &__block_literal_global_11);
              v4 = qword_2A1399EB8;
              if (!os_log_type_enabled(qword_2A1399EB8, OS_LOG_TYPE_ERROR))
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
            _os_log_error_impl(&dword_297288000, v4, OS_LOG_TYPE_ERROR, "[tracesettings] set: Invalid key; domain='%s' key='%s' value='%s'", buf, 0x20u);
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