void *__copy_helper_block_e8_48c35_ZTSNSt3__18weak_ptrI10BootModuleEE64c107_ZTSN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEEEE(void *a1, void *a2)
{
  v3 = a2[7];
  a1[6] = a2[6];
  a1[7] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  result = a2[8];
  if (result)
  {
    result = _Block_copy(result);
  }

  a1[8] = result;
  return result;
}

void __destroy_helper_block_e8_48c35_ZTSNSt3__18weak_ptrI10BootModuleEE64c107_ZTSN8dispatch5blockIU13block_pointerFviNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEEEE(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void ___ZN10BootModule9boot_syncEv_block_invoke(void *a1)
{
  v21 = *MEMORY[0x29EDCA608];
  v2 = a1[6];
  *(*(a1[4] + 8) + 24) = *(v2 + 584) != 0;
  if ((*(*(a1[4] + 8) + 24) & 1) == 0 && (*(v2 + 189) = 1, v3 = *(v2 + 104), os_log_type_enabled(v3, OS_LOG_TYPE_ERROR)))
  {
    *buf = 0;
    _os_log_error_impl(&dword_297476000, v3, OS_LOG_TYPE_ERROR, "Boot controller object has not been created!", buf, 2u);
    v4 = *(a1[4] + 8);
    if (*(v4 + 24) == 1)
    {
LABEL_4:
      *(*(a1[4] + 8) + 24) = (***(v2 + 584))(*(v2 + 584), *(a1[5] + 8) + 40);
      if ((*(*(a1[4] + 8) + 24) & 1) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v4 = *(a1[4] + 8);
    if (*(v4 + 24) == 1)
    {
      goto LABEL_4;
    }
  }

  *(v4 + 24) = 0;
  if ((*(*(a1[4] + 8) + 24) & 1) == 0)
  {
LABEL_5:
    *(v2 + 189) = 1;
    v5 = *(v2 + 104);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1[5] + 8);
      v7 = (v6 + 40);
      if (*(v6 + 63) < 0)
      {
        v7 = *v7;
      }

      *buf = 136315138;
      *&buf[4] = v7;
      v8 = "Failed on preparation for booting!: Reason: %s";
LABEL_25:
      _os_log_error_impl(&dword_297476000, v5, OS_LOG_TYPE_ERROR, v8, buf, 0xCu);
      v17 = *MEMORY[0x29EDCA608];
      return;
    }

    goto LABEL_20;
  }

LABEL_11:
  *(v2 + 304) = TelephonyUtilSystemMachTime();
  v9 = *(v2 + 560);
  if (v9)
  {
    v10 = *(v9 + 9);
    SystemTime = TelephonyUtilGetSystemTime();
    lcdm::CrashDB::purgeCrashEntriesOlderThan(v9, v10, SystemTime);
    *&v12 = 0xAAAAAAAAAAAAAAAALL;
    *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *buf = v12;
    v20 = v12;
    lcdm::CrashDB::createCrashContextData(*(v2 + 560), buf);
    if (buf[0] == 1)
    {
      BootController::setCrashContextData(*(v2 + 584), &buf[8]);
    }

    else
    {
      v13 = *(v2 + 104);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *v18 = 0;
        _os_log_impl(&dword_297476000, v13, OS_LOG_TYPE_DEFAULT, "#I Not setting crash context data", v18, 2u);
      }
    }

    if (*&buf[8])
    {
      *&v20 = *&buf[8];
      operator delete(*&buf[8]);
    }
  }

  *(*(a1[4] + 8) + 24) = (*(**(v2 + 584) + 8))(*(v2 + 584), *(a1[5] + 8) + 40);
  if ((*(*(a1[4] + 8) + 24) & 1) == 0)
  {
    v5 = *(v2 + 104);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v15 = *(a1[5] + 8);
      v16 = (v15 + 40);
      if (*(v15 + 63) < 0)
      {
        v16 = *v16;
      }

      *buf = 136315138;
      *&buf[4] = v16;
      v8 = "Failed on booting!: Reason: %s";
      goto LABEL_25;
    }
  }

LABEL_20:
  v14 = *MEMORY[0x29EDCA608];
}

void sub_2975EB31C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_56c38_ZTSNSt3__110shared_ptrI10BootModuleEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 64);
  *(result + 56) = *(a2 + 56);
  *(result + 64) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_56c38_ZTSNSt3__110shared_ptrI10BootModuleEE(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZN10BootModule9boot_syncEv_block_invoke_136(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 104);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_297476000, v1, OS_LOG_TYPE_DEFAULT, "#I Recovery detected", v2, 2u);
  }
}

void __copy_helper_block_e8_40c38_ZTSNSt3__110shared_ptrI10BootModuleEE56c30_ZTSN8dispatch13group_sessionE(void *a1, void *a2)
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

void __destroy_helper_block_e8_40c38_ZTSNSt3__110shared_ptrI10BootModuleEE56c30_ZTSN8dispatch13group_sessionE(uint64_t a1)
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

void ___ZN10BootModule9boot_syncEv_block_invoke_138(void *a1)
{
  v1 = a1[6];
  if (*(v1 + 576) - 7 < 2)
  {
    return;
  }

  if (*(*(a1[4] + 8) + 24) == 1)
  {
    v42 = _os_activity_create(&dword_297476000, "Baseband state: booted", MEMORY[0x29EDCA978], OS_ACTIVITY_FLAG_DEFAULT);
    memset(state, 170, 16);
    os_activity_scope_enter(v42, state);
    os_activity_scope_leave(state);
    v3 = *(v1 + 104);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *state = 0;
      _os_log_impl(&dword_297476000, v3, OS_LOG_TYPE_DEFAULT, "#I Baseband bootup succeeded", state, 2u);
    }

    (*(*v1 + 104))(v1, 3);
    *(v1 + 312) = TelephonyUtilSystemMachTime();
    v41 = 0;
    v4 = *MEMORY[0x29EDB8ED8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    if (Mutable)
    {
      v41 = Mutable;
    }

    ctu::cf::insert<char const*,char const*>(Mutable, *MEMORY[0x29EDBEAF8], *MEMORY[0x29EDBEDF0], v4, v6);
    v7 = *(v1 + 80);
    if (!v7 || (v8 = *(v1 + 72), (v9 = std::__shared_weak_count::lock(v7)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v10 = v9;
    atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v10);
    }

    BootModule::reportStatisticsBootUpTime_sync(v1);
    v11 = *MEMORY[0x29EDBF460];
    v12 = strlen(*MEMORY[0x29EDBF460]);
    if (v12 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v13 = v12;
    if (v12 >= 0x17)
    {
      if ((v12 | 7) == 0x17)
      {
        v17 = 25;
      }

      else
      {
        v17 = (v12 | 7) + 1;
      }

      v14 = operator new(v17);
      __dst[1] = v13;
      v40 = v17 | 0x8000000000000000;
      __dst[0] = v14;
    }

    else
    {
      HIBYTE(v40) = v12;
      v14 = __dst;
      if (!v12)
      {
        LOBYTE(__dst[0]) = 0;
        v15 = v41;
        if (!v41)
        {
          goto LABEL_26;
        }

LABEL_24:
        v18 = CFGetTypeID(v15);
        if (v18 == CFDictionaryGetTypeID())
        {
          v38 = v15;
          CFRetain(v15);
          goto LABEL_27;
        }

LABEL_26:
        v38 = 0;
LABEL_27:
        v37 = 0;
        Service::broadcastEvent(v1, __dst, &v38, &v37);
        if (v37)
        {
          _Block_release(v37);
        }

        if (v38)
        {
          CFRelease(v38);
        }

        if (SHIBYTE(v40) < 0)
        {
          operator delete(__dst[0]);
          if (*(v1 + 194))
          {
LABEL_54:
            v24 = a1[9];
            v25 = *(v1 + 88);
            block[0] = MEMORY[0x29EDCA5F8];
            block[1] = 1174405120;
            block[2] = ___ZN10BootModule9boot_syncEv_block_invoke_142;
            block[3] = &__block_descriptor_tmp_154_1;
            block[4] = v1;
            block[5] = v8;
            v28 = v10;
            atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            dispatch_group_notify(v24, v25, block);
            if (v28)
            {
              std::__shared_weak_count::__release_weak(v28);
            }

            std::__shared_weak_count::__release_weak(v10);
            if (v41)
            {
              CFRelease(v41);
            }

            if (v42)
            {
              os_release(v42);
            }

            return;
          }
        }

        else if (*(v1 + 194))
        {
          goto LABEL_54;
        }

        if (*(v1 + 192) == 1)
        {
          v36 = 0;
          pthread_mutex_lock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
          v19 = off_2A18CAFB8;
          if (!off_2A18CAFB8)
          {
            SharedData::create_default_global(state);
            v20 = *state;
            *state = 0;
            *&state[8] = 0;
            v21 = *(&off_2A18CAFB8 + 1);
            off_2A18CAFB8 = v20;
            if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v21->__on_zero_shared)(v21);
              std::__shared_weak_count::__release_weak(v21);
            }

            v22 = *&state[8];
            if (*&state[8] && !atomic_fetch_add((*&state[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
            {
              (v22->__on_zero_shared)(v22);
              std::__shared_weak_count::__release_weak(v22);
            }

            v19 = off_2A18CAFB8;
          }

          v34 = v19;
          v35 = *(&off_2A18CAFB8 + 1);
          if (*(&off_2A18CAFB8 + 1))
          {
            atomic_fetch_add_explicit((*(&off_2A18CAFB8 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
          *state = operator new(0x28uLL);
          *&state[8] = xmmword_2976A4500;
          strcpy(*state, "Baseband Mobile Asset PT image sent");
          os_unfair_lock_lock((v19 + 40));
          Preferences::getPreference<BOOL>(v19, state, &v36);
          os_unfair_lock_unlock((v19 + 40));
          if ((state[23] & 0x80000000) != 0)
          {
            operator delete(*state);
          }

          v23 = v35;
          if (v35 && !atomic_fetch_add(&v35->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v23->__on_zero_shared)(v23);
            std::__shared_weak_count::__release_weak(v23);
          }

          if (v36 == 1)
          {
            v32[23] = 6;
            strcpy(v32, "Booted");
            v31[23] = 0;
            v31[0] = 0;
            BootModule::updateMobileAssetPTStatus_sync(v1, 2u, v32, v31);
          }

          else
          {
            v30[23] = 11;
            strcpy(v30, "BBURejected");
            v29[23] = 0;
            v29[0] = 0;
            BootModule::updateMobileAssetPTStatus_sync(v1, 4u, v30, v29);
          }
        }

        goto LABEL_54;
      }
    }

    memmove(v14, v11, v13);
    *(v13 + v14) = 0;
    v15 = v41;
    if (!v41)
    {
      goto LABEL_26;
    }

    goto LABEL_24;
  }

  v16 = *(v1 + 104);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *state = 0;
    _os_log_error_impl(&dword_297476000, v16, OS_LOG_TYPE_ERROR, "Baseband bootup failed", state, 2u);
  }

  (*(*v1 + 104))(v1, 5);
  v26[0] = MEMORY[0x29EDCA5F8];
  v26[1] = 0x40000000;
  v26[2] = ___ZN10BootModule9boot_syncEv_block_invoke_155;
  v26[3] = &unk_29EE6C338;
  v26[4] = a1[5];
  v26[5] = v1;
  ctu::SharedSynchronizable<BootModule>::execute_wrapped((v1 + 72), v26);
}

void sub_2975EBBD0(_Unwind_Exception *a1)
{
  pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  std::__shared_weak_count::__release_weak(v1);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef((v2 - 96));
  ctu::os::scoped_activity::~scoped_activity((v2 - 88));
  _Unwind_Resume(a1);
}

void BootModule::reportStatisticsBootUpTime_sync(BootModule *this)
{
  v2 = *(this + 13);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_297476000, v2, OS_LOG_TYPE_DEFAULT, "#I Submitting Stats of bootup time", buf, 2u);
  }

  v3 = xpc_dictionary_create(0, 0, 0);
  if (v3 || (v3 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C272BA0](v3) == MEMORY[0x29EDCAA00])
    {
      xpc_retain(v3);
      v4 = v3;
    }

    else
    {
      v4 = xpc_null_create();
    }
  }

  else
  {
    v4 = xpc_null_create();
    v3 = 0;
  }

  xpc_release(v3);
  v5 = time(0);
  v6 = xpc_int64_create(v5);
  if (!v6)
  {
    v6 = xpc_null_create();
  }

  xpc_dictionary_set_value(v4, *MEMORY[0x29EDBF490], v6);
  v7 = xpc_null_create();
  xpc_release(v6);
  xpc_release(v7);
  object = v4;
  *buf = operator new(0x20uLL);
  v11 = xmmword_29769DFE0;
  strcpy(*buf, "CommandUpdateBBBootStats");
  if (v4)
  {
    xpc_retain(v4);
  }

  else
  {
    object = xpc_null_create();
  }

  v8 = 0;
  Service::runCommand(this, buf, &object, &v8);
  xpc_release(object);
  object = 0;
  if (SHIBYTE(v11) < 0)
  {
    operator delete(*buf);
  }

  xpc_release(v4);
}

void sub_2975EBE6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v16);
  _Unwind_Resume(a1);
}

void ___ZN10BootModule9boot_syncEv_block_invoke_142(void *a1)
{
  v2 = a1[4];
  v3 = *(v2 + 136);
  v4 = operator new(0x19uLL);
  v11 = v4;
  v12 = xmmword_29769C6E0;
  strcpy(v4, "Baseband Recovered Gate");
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN10BootModule9boot_syncEv_block_invoke_2;
  aBlock[3] = &__block_descriptor_tmp_151;
  v6 = a1[5];
  v5 = a1[6];
  aBlock[4] = v2;
  aBlock[5] = v6;
  v9 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = _Block_copy(aBlock);
  v10 = v7;
  ResetDetection::add(v3, &v11, 0, &v10, -1);
  if (v7)
  {
    _Block_release(v7);
  }

  operator delete(v4);
  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }
}

void sub_2975EBFF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (v17)
  {
    _Block_release(v17);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_weak(a16);
  }

  operator delete(v16);
  _Unwind_Resume(a1);
}

void ___ZN10BootModule9boot_syncEv_block_invoke_2(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    v17 = v4;
    if (v4)
    {
      v5 = v4;
      if (a1[5])
      {
        BootModule::bbResetFlag(v3, 0);
        v6 = *(v3 + 17);
        v7 = operator new(0x19uLL);
        v14 = v7;
        v15 = xmmword_29769C6E0;
        strcpy(v7, "Baseband Crash Recovery");
        aBlock[0] = MEMORY[0x29EDCA5F8];
        aBlock[1] = 1174405120;
        aBlock[2] = ___ZN10BootModule9boot_syncEv_block_invoke_3;
        aBlock[3] = &__block_descriptor_tmp_148_1;
        v9 = a1[5];
        v8 = a1[6];
        aBlock[4] = v3;
        aBlock[5] = v9;
        v12 = v8;
        if (v8)
        {
          atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        v10 = _Block_copy(aBlock);
        v13 = v10;
        ResetDetection::add(v6, &v14, 1, &v13, -1);
        if (v10)
        {
          _Block_release(v10);
        }

        operator delete(v7);
        if (v12)
        {
          std::__shared_weak_count::__release_weak(v12);
        }
      }

      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }
}

void sub_2975EC1D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (v17)
  {
    _Block_release(v17);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_weak(a16);
  }

  operator delete(v16);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v18 - 64);
  _Unwind_Resume(a1);
}

void BootModule::bbResetFlag(BootModule *this, char a2)
{
  v3 = *(this + 10);
  if (!v3 || (v5 = *(this + 9), (v6 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = operator new(0x10uLL);
  *v8 = this;
  v8[8] = a2;
  v9 = *(this + 11);
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  v10 = operator new(0x18uLL);
  *v10 = v8;
  v10[1] = v5;
  v10[2] = v7;
  dispatch_async_f(v9, v10, dispatch::async<void ctu::SharedSynchronizable<BootModule>::execute_wrapped<BootModule::bbResetFlag(BOOL)::$_0>(BootModule::bbResetFlag(BOOL)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<BootModule::bbResetFlag(BOOL)::$_0,dispatch_queue_s *::default_delete<BootModule::bbResetFlag(BOOL)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);

    std::__shared_weak_count::__release_weak(v7);
  }
}

void ___ZN10BootModule9boot_syncEv_block_invoke_3(void *a1)
{
  v1 = a1[4];
  if (v1[576] - 7 >= 2)
  {
    v3 = a1[6];
    if (v3)
    {
      v4 = std::__shared_weak_count::lock(v3);
      v54 = v4;
      if (v4)
      {
        if (!a1[5])
        {
LABEL_64:
          if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            v22 = v4;
            (v4->__on_zero_shared)();
            std::__shared_weak_count::__release_weak(v22);
          }

          return;
        }

        BootModule::bbResetFlag(v1, 1);
        *&v5 = 0xAAAAAAAAAAAAAAAALL;
        *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v51 = v5;
        v52 = v5;
        v49 = v5;
        v50 = v5;
        *&v47[16] = v5;
        v48 = v5;
        *v47 = v5;
        v6 = *MEMORY[0x29EDBEB60];
        v7 = strlen(*MEMORY[0x29EDBEB60]);
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

          p_dst = operator new(v10);
          *(&__dst + 1) = v8;
          v46 = v10 | 0x8000000000000000;
          *&__dst = p_dst;
        }

        else
        {
          HIBYTE(v46) = v7;
          p_dst = &__dst;
          if (!v7)
          {
LABEL_14:
            *(p_dst + v8) = 0;
            v11 = *MEMORY[0x29EDBF6D8];
            v12 = strlen(*MEMORY[0x29EDBF6D8]);
            if (v12 > 0x7FFFFFFFFFFFFFF7)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            v13 = v12;
            if (v12 >= 0x17)
            {
              if ((v12 | 7) == 0x17)
              {
                v15 = 25;
              }

              else
              {
                v15 = (v12 | 7) + 1;
              }

              v14 = operator new(v15);
              *(&v43 + 1) = v13;
              v44 = v15 | 0x8000000000000000;
              *&v43 = v14;
            }

            else
            {
              HIBYTE(v44) = v12;
              v14 = &v43;
              if (!v12)
              {
LABEL_23:
                *(v14 + v13) = 0;
                v16 = operator new(0x20uLL);
                v41 = v16;
                v42 = xmmword_2976A1090;
                strcpy(v16, "** baseband crash detected");
                Timestamp::Timestamp(v37);
                Timestamp::asString(v37, 0, 9, __p);
                v36 = 0;
                LOBYTE(v35) = 0;
                ResetInfo::ResetInfo(v47, &__dst, &v43, &v41, __p, 3, &v35);
                if (v40 < 0)
                {
                  operator delete(__p[0]);
                }

                std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v37, v38);
                operator delete(v16);
                if (SHIBYTE(v44) < 0)
                {
                  operator delete(v43);
                }

                if (SHIBYTE(v46) < 0)
                {
                  operator delete(__dst);
                }

                ResetInfo::ResetInfo(&v28, v47);
                aBlock = 0;
                BootModule::requestReset(v1, &v28, &aBlock);
                if (aBlock)
                {
                  _Block_release(aBlock);
                }

                if (v34 < 0)
                {
                  operator delete(v33);
                  if ((v32 & 0x80000000) == 0)
                  {
LABEL_33:
                    if ((v30 & 0x80000000) == 0)
                    {
                      goto LABEL_34;
                    }

                    goto LABEL_57;
                  }
                }

                else if ((v32 & 0x80000000) == 0)
                {
                  goto LABEL_33;
                }

                operator delete(v31);
                if ((v30 & 0x80000000) == 0)
                {
LABEL_34:
                  if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
                    goto LABEL_35;
                  }

LABEL_58:
                  operator delete(v28.__r_.__value_.__l.__data_);
LABEL_35:
                  v17 = *MEMORY[0x29EDBF278];
                  v18 = strlen(*MEMORY[0x29EDBF278]);
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
                    v25[1] = v19;
                    v26 = v21 | 0x8000000000000000;
                    v25[0] = v20;
                  }

                  else
                  {
                    HIBYTE(v26) = v18;
                    v20 = v25;
                    if (!v18)
                    {
LABEL_44:
                      *(v19 + v20) = 0;
                      v23 = 0;
                      cf = 0;
                      Service::broadcastEvent(v1, v25, &cf, &v23);
                      if (v23)
                      {
                        _Block_release(v23);
                      }

                      if (cf)
                      {
                        CFRelease(cf);
                      }

                      if (SHIBYTE(v26) < 0)
                      {
                        operator delete(v25[0]);
                        if ((SHIBYTE(v52) & 0x80000000) == 0)
                        {
LABEL_50:
                          if ((SBYTE7(v50) & 0x80000000) == 0)
                          {
                            goto LABEL_51;
                          }

                          goto LABEL_61;
                        }
                      }

                      else if ((SHIBYTE(v52) & 0x80000000) == 0)
                      {
                        goto LABEL_50;
                      }

                      operator delete(*(&v51 + 1));
                      if ((SBYTE7(v50) & 0x80000000) == 0)
                      {
LABEL_51:
                        if ((SHIBYTE(v48) & 0x80000000) == 0)
                        {
                          goto LABEL_52;
                        }

                        goto LABEL_62;
                      }

LABEL_61:
                      operator delete(v49);
                      if ((SHIBYTE(v48) & 0x80000000) == 0)
                      {
LABEL_52:
                        if ((v47[23] & 0x80000000) == 0)
                        {
                          goto LABEL_53;
                        }

                        goto LABEL_63;
                      }

LABEL_62:
                      operator delete(*&v47[24]);
                      if ((v47[23] & 0x80000000) == 0)
                      {
LABEL_53:
                        v4 = v54;
                        if (!v54)
                        {
                          return;
                        }

                        goto LABEL_64;
                      }

LABEL_63:
                      operator delete(*v47);
                      v4 = v54;
                      if (!v54)
                      {
                        return;
                      }

                      goto LABEL_64;
                    }
                  }

                  memmove(v20, v17, v19);
                  goto LABEL_44;
                }

LABEL_57:
                operator delete(v29);
                if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  goto LABEL_35;
                }

                goto LABEL_58;
              }
            }

            memmove(v14, v11, v13);
            goto LABEL_23;
          }
        }

        memmove(p_dst, v6, v8);
        goto LABEL_14;
      }
    }
  }
}

void sub_2975EC780(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *aBlock, const void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&a10);
  if (a16 < 0)
  {
    operator delete(__p);
    ResetInfo::~ResetInfo((v43 - 192));
    std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v43 - 80);
    _Unwind_Resume(a1);
  }

  ResetInfo::~ResetInfo((v43 - 192));
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v43 - 80);
  _Unwind_Resume(a1);
}

void ___ZN10BootModule9boot_syncEv_block_invoke_155(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*(a1 + 32) + 8);
  if (*(v2 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(v2 + 40), *(v2 + 48));
  }

  else
  {
    __p = *(v2 + 40);
  }

  BootModule::handleBootFailed_sync(v1, &__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_2975EC940(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void __copy_helper_block_e8_56c38_ZTSNSt3__110shared_ptrI10BootModuleEE72c21_ZTSN8dispatch5groupE(void *a1, void *a2)
{
  v2 = a2[8];
  a1[7] = a2[7];
  a1[8] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = a2[9];
  a1[9] = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }
}

void __destroy_helper_block_e8_56c38_ZTSNSt3__110shared_ptrI10BootModuleEE72c21_ZTSN8dispatch5groupE(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 64);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);

    std::__shared_weak_count::__release_weak(v3);
  }
}

void BootModule::setVoiceCall_sync(BootModule *this, char a2)
{
  v3 = *(this + 10);
  if (!v3 || (v5 = *(this + 9), (v6 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  p_shared_weak_owners = &v6->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v7);
  }

  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  v9 = *(this + 61);
  v10 = *(this + 11);
  v11 = operator new(0x20uLL);
  *v11 = this;
  v11[1] = v5;
  v11[2] = v7;
  *(v11 + 24) = a2;
  dispatch_group_notify_f(v9, v10, v11, dispatch::detail::group_notify<BootModule::setVoiceCall_sync(BOOL)::$_0>(dispatch_group_s *,dispatch_queue_s *,BootModule::setVoiceCall_sync(BOOL)::$_0 &&,std::integral_constant<BOOL,false>)::{lambda(void *)#1}::__invoke);

  std::__shared_weak_count::__release_weak(v7);
}

void sub_2975ECB0C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::__release_weak(v1);
  std::__shared_weak_count::__release_weak(v1);
  _Unwind_Resume(a1);
}

void BootModule::setRat1_sync(void *a1, int a2)
{
  v3 = a1[10];
  if (!v3 || (v5 = a1[9], (v6 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  p_shared_weak_owners = &v6->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v7);
  }

  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  v9 = a1[61];
  v10 = a1[11];
  v11 = operator new(0x20uLL);
  *v11 = a1;
  v11[1] = v5;
  v11[2] = v7;
  *(v11 + 6) = a2;
  dispatch_group_notify_f(v9, v10, v11, dispatch::detail::group_notify<BootModule::setRat1_sync(abm::RadioAccessTechnology)::$_0>(dispatch_group_s *,dispatch_queue_s *,BootModule::setRat1_sync(abm::RadioAccessTechnology)::$_0 &&,std::integral_constant<BOOL,false>)::{lambda(void *)#1}::__invoke);

  std::__shared_weak_count::__release_weak(v7);
}

void sub_2975ECC1C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::__release_weak(v1);
  std::__shared_weak_count::__release_weak(v1);
  _Unwind_Resume(a1);
}

void BootModule::setRat2_sync(void *a1, int a2)
{
  v3 = a1[10];
  if (!v3 || (v5 = a1[9], (v6 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  p_shared_weak_owners = &v6->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v7);
  }

  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  v9 = a1[61];
  v10 = a1[11];
  v11 = operator new(0x20uLL);
  *v11 = a1;
  v11[1] = v5;
  v11[2] = v7;
  *(v11 + 6) = a2;
  dispatch_group_notify_f(v9, v10, v11, dispatch::detail::group_notify<BootModule::setRat2_sync(abm::RadioAccessTechnology)::$_0>(dispatch_group_s *,dispatch_queue_s *,BootModule::setRat2_sync(abm::RadioAccessTechnology)::$_0 &&,std::integral_constant<BOOL,false>)::{lambda(void *)#1}::__invoke);

  std::__shared_weak_count::__release_weak(v7);
}

void sub_2975ECD2C(_Unwind_Exception *a1)
{
  std::__shared_weak_count::__release_weak(v1);
  std::__shared_weak_count::__release_weak(v1);
  _Unwind_Resume(a1);
}

void BootModule::setPLMN1_sync(void *a1, uint64_t a2)
{
  v3 = a1[10];
  if (!v3 || (v5 = a1[9], (v6 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  p_shared_weak_owners = &v6->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v7);
  }

  *&v12 = a1;
  *(&v12 + 1) = v5;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  v9 = a1[61];
  v10 = a1[11];
  v11 = operator new(0x30uLL);
  *&v11->__r_.__value_.__l.__data_ = v12;
  v11->__r_.__value_.__r.__words[2] = v7;
  v11[1] = __p;
  memset(&__p, 0, sizeof(__p));
  dispatch_group_notify_f(v9, v10, v11, dispatch::detail::group_notify<BootModule::setPLMN1_sync(std::string)::$_0>(dispatch_group_s *,dispatch_queue_s *,BootModule::setPLMN1_sync(std::string)::$_0 &&,std::integral_constant<BOOL,false>)::{lambda(void *)#1}::__invoke);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::__shared_weak_count::__release_weak(v7);
}

void sub_2975ECEAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_weak(a11);
    std::__shared_weak_count::__release_weak(v11);
    _Unwind_Resume(a1);
  }

  std::__shared_weak_count::__release_weak(v11);
  _Unwind_Resume(a1);
}

uint64_t BootModule::setPLMN1_sync(std::string)::$_0::~$_0(uint64_t a1)
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

void BootModule::setPLMN2_sync(void *a1, uint64_t a2)
{
  v3 = a1[10];
  if (!v3 || (v5 = a1[9], (v6 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  p_shared_weak_owners = &v6->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v7);
  }

  *&v12 = a1;
  *(&v12 + 1) = v5;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  v9 = a1[61];
  v10 = a1[11];
  v11 = operator new(0x30uLL);
  *&v11->__r_.__value_.__l.__data_ = v12;
  v11->__r_.__value_.__r.__words[2] = v7;
  v11[1] = __p;
  memset(&__p, 0, sizeof(__p));
  dispatch_group_notify_f(v9, v10, v11, dispatch::detail::group_notify<BootModule::setPLMN2_sync(std::string)::$_0>(dispatch_group_s *,dispatch_queue_s *,BootModule::setPLMN2_sync(std::string)::$_0 &&,std::integral_constant<BOOL,false>)::{lambda(void *)#1}::__invoke);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::__shared_weak_count::__release_weak(v7);
}

void sub_2975ED08C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_weak(a11);
    std::__shared_weak_count::__release_weak(v11);
    _Unwind_Resume(a1);
  }

  std::__shared_weak_count::__release_weak(v11);
  _Unwind_Resume(a1);
}

void BootModule::setCellId_sync(void *a1, uint64_t a2, int a3)
{
  v4 = a1[10];
  if (!v4 || (v7 = a1[9], (v8 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v9 = v8;
  p_shared_weak_owners = &v8->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v9);
  }

  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  v11 = a1[61];
  v12 = a1[11];
  v13 = operator new(0x28uLL);
  *v13 = a1;
  v13[1] = v7;
  v13[2] = v9;
  v13[3] = a2;
  *(v13 + 8) = a3;
  dispatch_group_notify_f(v11, v12, v13, dispatch::detail::group_notify<BootModule::setCellId_sync(unsigned long long,BootModule::SimSlotIndex)::$_0>(dispatch_group_s *,dispatch_queue_s *,BootModule::setCellId_sync(unsigned long long,BootModule::SimSlotIndex)::$_0 &&,std::integral_constant<BOOL,false>)::{lambda(void *)#1}::__invoke);

  std::__shared_weak_count::__release_weak(v9);
}

void sub_2975ED1C8(_Unwind_Exception *a1)
{
  std::__shared_weak_count::__release_weak(v1);
  std::__shared_weak_count::__release_weak(v1);
  _Unwind_Resume(a1);
}

void BootModule::setAreaCode_sync(void *a1, uint64_t a2, int a3)
{
  v4 = a1[10];
  if (!v4 || (v7 = a1[9], (v8 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v9 = v8;
  p_shared_weak_owners = &v8->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v9);
  }

  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  v11 = a1[61];
  v12 = a1[11];
  v13 = operator new(0x28uLL);
  *v13 = a1;
  v13[1] = v7;
  v13[2] = v9;
  v13[3] = a2;
  *(v13 + 8) = a3;
  dispatch_group_notify_f(v11, v12, v13, dispatch::detail::group_notify<BootModule::setAreaCode_sync(unsigned long long,BootModule::SimSlotIndex)::$_0>(dispatch_group_s *,dispatch_queue_s *,BootModule::setAreaCode_sync(unsigned long long,BootModule::SimSlotIndex)::$_0 &&,std::integral_constant<BOOL,false>)::{lambda(void *)#1}::__invoke);

  std::__shared_weak_count::__release_weak(v9);
}

void sub_2975ED2E4(_Unwind_Exception *a1)
{
  std::__shared_weak_count::__release_weak(v1);
  std::__shared_weak_count::__release_weak(v1);
  _Unwind_Resume(a1);
}

void *std::sub_match<std::__wrap_iter<char const*>>::str[abi:ne200100](void *__dst, uint64_t a2)
{
  v2 = __dst;
  if (*(a2 + 16) != 1)
  {
    *__dst = 0;
    __dst[1] = 0;
    __dst[2] = 0;
    return __dst;
  }

  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = v4 - *a2;
  if (v5 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v5 > 0x16)
  {
    if ((v5 | 7) == 0x17)
    {
      v6 = 25;
    }

    else
    {
      v6 = (v5 | 7) + 1;
    }

    __dst = operator new(v6);
    v2[1] = v5;
    v2[2] = v6 | 0x8000000000000000;
    *v2 = __dst;
    v2 = __dst;
    if (v4 == v3)
    {
      goto LABEL_12;
    }
  }

  else
  {
    *(__dst + 23) = v5;
    if (v4 == v3)
    {
      goto LABEL_12;
    }
  }

  __dst = memmove(v2, v3, v5);
LABEL_12:
  *(v2 + v5) = 0;
  return __dst;
}

void BootModule::stopNetworkCampTimer_sync(BootModule *this)
{
  v1 = *(this + 67);
  if (v1)
  {
    v3 = this + 536;
    v4 = *(this + 13);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_297476000, v4, OS_LOG_TYPE_DEFAULT, "#I Stop network registration timer for metric submission", v6, 2u);
      v1 = *v3;
    }

    support::misc::safe_timer::stop(v1);
    v5 = *(this + 68);
    *v3 = 0;
    *(v3 + 1) = 0;
    if (v5)
    {
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }
}

void BootModule::updateNetworkCampStatus_sync(BootModule *this, _BOOL4 a2)
{
  v24 = *MEMORY[0x29EDCA608];
  if (config::hw::iPhone(this))
  {
    BootModule::stopNetworkCampTimer_sync(this);
    v4 = *(this + 13);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = "false";
      if (a2)
      {
        v5 = "true";
      }

      *buf = 136315138;
      *&buf[4] = v5;
      _os_log_impl(&dword_297476000, v4, OS_LOG_TYPE_DEFAULT, "#I Updating metric with registration state [%s]", buf, 0xCu);
    }

    v6 = xpc_dictionary_create(0, 0, 0);
    if (v6 || (v6 = xpc_null_create()) != 0)
    {
      if (MEMORY[0x29C272BA0](v6) == MEMORY[0x29EDCAA00])
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
    v8 = time(0);
    v9 = xpc_int64_create(v8);
    if (!v9)
    {
      v9 = xpc_null_create();
    }

    xpc_dictionary_set_value(v7, *MEMORY[0x29EDBF640], v9);
    v10 = xpc_null_create();
    xpc_release(v9);
    xpc_release(v10);
    v11 = xpc_BOOL_create(a2);
    if (!v11)
    {
      v11 = xpc_null_create();
    }

    xpc_dictionary_set_value(v7, *MEMORY[0x29EDBF3F8], v11);
    v12 = xpc_null_create();
    xpc_release(v11);
    xpc_release(v12);
    v13 = *(this + 10);
    if (!v13 || (v14 = *(this + 9), (v15 = std::__shared_weak_count::lock(v13)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v16 = v15;
    atomic_fetch_add_explicit(&v15->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v15->__on_zero_shared)(v15);
      std::__shared_weak_count::__release_weak(v16);
    }

    object = v7;
    *buf = operator new(0x20uLL);
    *&buf[8] = xmmword_29769DFE0;
    strcpy(*buf, "CommandUpdateBBBootStats");
    if (v7)
    {
      xpc_retain(v7);
    }

    else
    {
      object = xpc_null_create();
    }

    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1174405120;
    aBlock[2] = ___ZN10BootModule28updateNetworkCampStatus_syncEb_block_invoke;
    aBlock[3] = &__block_descriptor_tmp_188_1;
    aBlock[4] = this;
    aBlock[5] = v14;
    v20 = v16;
    atomic_fetch_add_explicit(&v16->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v17 = _Block_copy(aBlock);
    v21 = v17;
    Service::runCommand(this, buf, &object, &v21);
    if (v17)
    {
      _Block_release(v17);
    }

    xpc_release(object);
    object = 0;
    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    if (v20)
    {
      std::__shared_weak_count::__release_weak(v20);
    }

    std::__shared_weak_count::__release_weak(v16);
    xpc_release(v7);
  }

  v18 = *MEMORY[0x29EDCA608];
}

void sub_2975ED800(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, xpc_object_t object, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void ___ZN10BootModule28updateNetworkCampStatus_syncEb_block_invoke(void *a1, int a2)
{
  v23 = *MEMORY[0x29EDCA608];
  v3 = a1[6];
  if (!v3)
  {
    goto LABEL_28;
  }

  v5 = a1[4];
  v6 = std::__shared_weak_count::lock(v3);
  v21 = v6;
  if (!v6)
  {
    goto LABEL_28;
  }

  if (!a1[5])
  {
    goto LABEL_26;
  }

  if (a2)
  {
    v7 = v6;
    v8 = *(v5 + 104);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *&buf[4] = "CommandUpdateBBBootStats";
      _os_log_error_impl(&dword_297476000, v8, OS_LOG_TYPE_ERROR, "Failed to send command %s to update", buf, 0xCu);
    }

    v6 = v7;
LABEL_26:
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v14 = v6;
      (v6->__on_zero_shared)();
      std::__shared_weak_count::__release_weak(v14);
    }

    goto LABEL_28;
  }

  v9 = xpc_dictionary_create(0, 0, 0);
  if (v9 || (v9 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C272BA0](v9) == MEMORY[0x29EDCAA00])
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
  *buf = operator new(0x28uLL);
  *&buf[8] = xmmword_2976A0EA0;
  strcpy(*buf, "CommandSubmitHealthDBBootMetrics");
  object = v10;
  if (v10)
  {
    xpc_retain(v10);
  }

  else
  {
    object = xpc_null_create();
  }

  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN10BootModule28updateNetworkCampStatus_syncEb_block_invoke_182;
  aBlock[3] = &__block_descriptor_tmp_185_0;
  v12 = a1[5];
  v11 = a1[6];
  aBlock[4] = v5;
  aBlock[5] = v12;
  v17 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = _Block_copy(aBlock);
  v18 = v13;
  Service::runCommand(v5, buf, &object, &v18);
  if (v13)
  {
    _Block_release(v13);
  }

  xpc_release(object);
  object = 0;
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  if (v17)
  {
    std::__shared_weak_count::__release_weak(v17);
  }

  xpc_release(v10);
  v6 = v21;
  if (v21)
  {
    goto LABEL_26;
  }

LABEL_28:
  v15 = *MEMORY[0x29EDCA608];
}

void sub_2975EDB78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, xpc_object_t object, char a19)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void ___ZN10BootModule28updateNetworkCampStatus_syncEb_block_invoke_182(void *a1, int a2)
{
  v15 = *MEMORY[0x29EDCA608];
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      if (a2)
      {
        if (a1[5])
        {
          v7 = *(v5 + 104);
          v8 = v6;
          v9 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
          v6 = v8;
          if (v9)
          {
            v12 = *MEMORY[0x29EDBEB08];
            v13 = 136315138;
            v14 = v12;
            _os_log_error_impl(&dword_297476000, v7, OS_LOG_TYPE_ERROR, "Failed to submit metric %s to Core Analytics", &v13, 0xCu);
            v6 = v8;
            if (atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              goto LABEL_8;
            }

            goto LABEL_7;
          }
        }
      }

      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
LABEL_7:
        v10 = v6;
        (v6->__on_zero_shared)();
        std::__shared_weak_count::__release_weak(v10);
      }
    }
  }

LABEL_8:
  v11 = *MEMORY[0x29EDCA608];
}

void BootModule::MobileAssetUpdate::~MobileAssetUpdate(void **this)
{
  if ((*(this + 63) & 0x80000000) == 0)
  {
    if ((*(this + 31) & 0x80000000) == 0)
    {
      return;
    }

LABEL_5:
    operator delete(this[1]);
    return;
  }

  operator delete(this[5]);
  if (*(this + 31) < 0)
  {
    goto LABEL_5;
  }
}

void std::__shared_ptr_pointer<BootModule *,std::shared_ptr<BootModule> ctu::SharedSynchronizable<BootModule>::make_shared_ptr<BootModule>(BootModule*)::{lambda(BootModule *)#1},std::allocator<BootModule>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<BootModule *,std::shared_ptr<BootModule> ctu::SharedSynchronizable<BootModule>::make_shared_ptr<BootModule>(BootModule*)::{lambda(BootModule *)#1},std::allocator<BootModule>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableI10BootModuleE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableI10BootModuleE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableI10BootModuleE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableI10BootModuleE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::shared_ptr<BootModule> ctu::SharedSynchronizable<BootModule>::make_shared_ptr<BootModule>(BootModule*)::{lambda(BootModule*)#1}::operator() const(BootModule*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t *_ZNSt3__110unique_ptrIZZZN10BootModule12requestResetE9ResetInfoN8dispatch5blockIU13block_pointerFviNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEEEUb_EUb0_E3__0NS_14default_deleteISE_EEED1B8ne200100Ev(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 144);
    if (v3)
    {
      dispatch_release(v3);
    }

    v4 = *(v2 + 136);
    if (v4)
    {
      _Block_release(v4);
    }

    if (*(v2 + 135) < 0)
    {
      operator delete(*(v2 + 112));
      if ((*(v2 + 95) & 0x80000000) == 0)
      {
LABEL_8:
        if ((*(v2 + 71) & 0x80000000) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_16;
      }
    }

    else if ((*(v2 + 95) & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    operator delete(*(v2 + 72));
    if ((*(v2 + 71) & 0x80000000) == 0)
    {
LABEL_9:
      if ((*(v2 + 47) & 0x80000000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_17;
    }

LABEL_16:
    operator delete(*(v2 + 48));
    if ((*(v2 + 47) & 0x80000000) == 0)
    {
LABEL_10:
      v5 = *(v2 + 16);
      if (!v5)
      {
LABEL_12:
        operator delete(v2);
        return a1;
      }

LABEL_11:
      std::__shared_weak_count::__release_weak(v5);
      goto LABEL_12;
    }

LABEL_17:
    operator delete(*(v2 + 24));
    v5 = *(v2 + 16);
    if (!v5)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  return a1;
}

void _ZZN8dispatch6detail12group_notifyIZZZN10BootModule12requestResetE9ResetInfoNS_5blockIU13block_pointerFviNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEEEEEEUb_EUb0_E3__0EEvP16dispatch_group_sP16dispatch_queue_sOT_NS5_17integral_constantIbLb0EEEENUlPvE_8__invokeESO_(uint64_t *a1)
{
  v2 = a1[2];
  if (!v2)
  {
    goto LABEL_14;
  }

  v3 = *a1;
  v4 = std::__shared_weak_count::lock(v2);
  v22 = v4;
  if (!v4)
  {
    goto LABEL_14;
  }

  v5 = v4;
  if (!a1[1])
  {
    goto LABEL_13;
  }

  ResetInfo::ResetInfo(&v14, (a1 + 3));
  v6 = a1[17];
  if (v6)
  {
    v7 = _Block_copy(v6);
  }

  else
  {
    v7 = 0;
  }

  v13 = v7;
  BootModule::handleReset_sync(v3, &v14, &v13);
  if (v7)
  {
    _Block_release(v7);
  }

  if (v20 < 0)
  {
    operator delete(v19);
    if ((v18 & 0x80000000) == 0)
    {
LABEL_11:
      if ((v16 & 0x80000000) == 0)
      {
        goto LABEL_12;
      }

LABEL_34:
      operator delete(v15);
      if ((SHIBYTE(v14.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_13:
        if (atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_14;
        }

LABEL_36:
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
        v8 = a1;
        if (!a1)
        {
          return;
        }

        goto LABEL_15;
      }

      goto LABEL_35;
    }
  }

  else if ((v18 & 0x80000000) == 0)
  {
    goto LABEL_11;
  }

  operator delete(v17);
  if (v16 < 0)
  {
    goto LABEL_34;
  }

LABEL_12:
  if ((SHIBYTE(v14.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_13;
  }

LABEL_35:
  operator delete(v14.__r_.__value_.__l.__data_);
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_36;
  }

LABEL_14:
  v8 = a1;
  if (!a1)
  {
    return;
  }

LABEL_15:
  v9 = v8[18];
  if (v9)
  {
    dispatch_release(v9);
  }

  v10 = v8[17];
  if (v10)
  {
    _Block_release(v10);
  }

  if (*(v8 + 135) < 0)
  {
    operator delete(v8[14]);
    if ((*(v8 + 95) & 0x80000000) == 0)
    {
LABEL_21:
      if ((*(v8 + 71) & 0x80000000) == 0)
      {
        goto LABEL_22;
      }

      goto LABEL_29;
    }
  }

  else if ((*(v8 + 95) & 0x80000000) == 0)
  {
    goto LABEL_21;
  }

  operator delete(v8[9]);
  if ((*(v8 + 71) & 0x80000000) == 0)
  {
LABEL_22:
    if ((*(v8 + 47) & 0x80000000) == 0)
    {
      goto LABEL_23;
    }

LABEL_30:
    operator delete(v8[3]);
    v11 = v8[2];
    if (!v11)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_29:
  operator delete(v8[6]);
  if (*(v8 + 47) < 0)
  {
    goto LABEL_30;
  }

LABEL_23:
  v11 = v8[2];
  if (v11)
  {
LABEL_24:
    std::__shared_weak_count::__release_weak(v11);
  }

LABEL_25:
  operator delete(v8);
}

void sub_2975EE13C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11)
{
  if (v11)
  {
    _Block_release(v11);
  }

  ResetInfo::~ResetInfo(&a11);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v12 - 48);
  _ZNSt3__110unique_ptrIZZZN10BootModule12requestResetE9ResetInfoN8dispatch5blockIU13block_pointerFviNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEEEUb_EUb0_E3__0NS_14default_deleteISE_EEED1B8ne200100Ev(&a9);
  _Unwind_Resume(a1);
}

void sub_2975EE170(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v9 - 48);
  _ZNSt3__110unique_ptrIZZZN10BootModule12requestResetE9ResetInfoN8dispatch5blockIU13block_pointerFviNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEEEEUb_EUb0_E3__0NS_14default_deleteISE_EEED1B8ne200100Ev(&a9);
  _Unwind_Resume(a1);
}

void ctu::SharedSynchronizable<BootModule>::execute_wrapped(uint64_t *a1, uint64_t a2)
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
  block[2] = ___ZNK3ctu20SharedSynchronizableI10BootModuleE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_2A1E4B968;
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

uint64_t __copy_helper_block_e8_40c39_ZTSNSt3__110shared_ptrIK10BootModuleEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c39_ZTSNSt3__110shared_ptrIK10BootModuleEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void dispatch::async<void ctu::SharedSynchronizable<BootModule>::execute_wrapped<BootModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(BootModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<BootModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<BootModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v2 = *a1;
  BootModule::registerCommandHandlers_sync(**a1);
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

void sub_2975EE488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  std::unique_ptr<TransportModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,std::default_delete<TransportModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a9);
  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<BootModule>::execute_wrapped<BootModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1>(BootModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<BootModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1,dispatch_queue_s *::default_delete<BootModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1>>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v2 = *a1;
  BootModule::registerEventHandlers_sync(**a1);
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

void sub_2975EE580(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  std::unique_ptr<TransportModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,std::default_delete<TransportModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a9);
  _Unwind_Resume(a1);
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI10BootModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb1_E3__3EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_(uint64_t a1)
{
  v70 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  v62 = *a1;
  v2 = *MEMORY[0x29EDBEC88];
  v3 = **a1;
  if (xpc_dictionary_get_value(*(*a1 + 8), *MEMORY[0x29EDBEC88]))
  {
    value = xpc_dictionary_get_value(v1[1], v2);
    *&buf = value;
    if (value)
    {
      xpc_retain(value);
    }

    else
    {
      *&buf = xpc_null_create();
    }

    v5 = xpc::dyn_cast_or_default(&buf, 0);
    xpc_release(buf);
    v6 = *(v3 + 104);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = "false";
      if (v5)
      {
        v7 = "true";
      }

      LODWORD(buf) = 136315138;
      *(&buf + 4) = v7;
      _os_log_impl(&dword_297476000, v6, OS_LOG_TYPE_DEFAULT, "#I Registration state is %s", &buf, 0xCu);
    }

    if ((*(v3 + 552) & 1) == 0)
    {
      BootModule::updateNetworkCampStatus_sync(v3, v5);
    }
  }

  v8 = *MEMORY[0x29EDBF4D0];
  if (xpc_dictionary_get_value(v1[1], *MEMORY[0x29EDBF4D0]))
  {
    v9 = xpc_dictionary_get_value(v1[1], v8);
    *&buf = v9;
    if (v9)
    {
      xpc_retain(v9);
    }

    else
    {
      *&buf = xpc_null_create();
    }

    *(v3 + 552) = xpc::dyn_cast_or_default(&buf, 0);
    xpc_release(buf);
    v10 = *(v3 + 104);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      if (*(v3 + 552))
      {
        v11 = "set";
      }

      else
      {
        v11 = "not set";
      }

      LODWORD(buf) = 136315138;
      *(&buf + 4) = v11;
      _os_log_impl(&dword_297476000, v10, OS_LOG_TYPE_DEFAULT, "#I User preference airplane mode is %s", &buf, 0xCu);
    }

    if (*(v3 + 552) == 1)
    {
      BootModule::stopNetworkCampTimer_sync(v3);
    }
  }

  v12 = *MEMORY[0x29EDBE5A8];
  if (xpc_dictionary_get_value(v1[1], *MEMORY[0x29EDBE5A8]))
  {
    v13 = xpc_dictionary_get_value(v1[1], v12);
    *&buf = v13;
    if (v13)
    {
      xpc_retain(v13);
    }

    else
    {
      *&buf = xpc_null_create();
    }

    v14 = xpc::dyn_cast_or_default(&buf, 0);
    xpc_release(buf);
    if (v14)
    {
      v15 = *(v3 + 504);
      if (v15)
      {
        dispatch_retain(*(v3 + 504));
        dispatch_suspend(v15);
      }

      v16 = *(v3 + 512);
      *(v3 + 512) = v15;
      if (!v16)
      {
LABEL_33:
        BootModule::setVoiceCall_sync(v3, v14);
        v17 = *MEMORY[0x29EDBE618];
        v18 = strlen(*MEMORY[0x29EDBE618]);
        if (v18 >= 0x7FFFFFFFFFFFFFF8)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v19 = v18;
        if (v18 >= 0x17)
        {
          if ((v18 | 7) == 0x17)
          {
            v22 = 25;
          }

          else
          {
            v22 = (v18 | 7) + 1;
          }

          p_buf = operator new(v22);
          *(&buf + 1) = v19;
          v69 = v22 | 0x8000000000000000;
          *&buf = p_buf;
        }

        else
        {
          HIBYTE(v69) = v18;
          p_buf = &buf;
          if (!v18)
          {
            LOBYTE(buf) = 0;
            v21 = v1[1];
            v67 = v21;
            if (v21)
            {
LABEL_37:
              xpc_retain(v21);
LABEL_44:
              aBlock = 0;
              Service::broadcastEvent(v3, &buf, &v67, &aBlock);
              if (aBlock)
              {
                _Block_release(aBlock);
              }

              xpc_release(v67);
              v67 = 0;
              if (SHIBYTE(v69) < 0)
              {
                operator delete(buf);
              }

              goto LABEL_48;
            }

LABEL_43:
            v67 = xpc_null_create();
            goto LABEL_44;
          }
        }

        memmove(p_buf, v17, v19);
        *(p_buf + v19) = 0;
        v21 = v1[1];
        v67 = v21;
        if (v21)
        {
          goto LABEL_37;
        }

        goto LABEL_43;
      }
    }

    else
    {
      v16 = *(v3 + 512);
      *(v3 + 512) = 0;
      if (!v16)
      {
        goto LABEL_33;
      }
    }

    dispatch_resume(v16);
    dispatch_release(v16);
    goto LABEL_33;
  }

LABEL_48:
  v23 = *MEMORY[0x29EDBF890];
  if (xpc_dictionary_get_value(v1[1], *MEMORY[0x29EDBF890]))
  {
    v24 = xpc_dictionary_get_value(v1[1], v23);
    object.__r_.__value_.__r.__words[0] = v24;
    if (v24)
    {
      xpc_retain(v24);
    }

    else
    {
      object.__r_.__value_.__r.__words[0] = xpc_null_create();
    }

    v25 = xpc::dyn_cast_or_default(&object, 0xFFFFFFFFLL);
    xpc_release(object.__r_.__value_.__l.__data_);
    BootModule::setRat1_sync(v3, v25);
  }

  v26 = *MEMORY[0x29EDBF898];
  if (xpc_dictionary_get_value(v1[1], *MEMORY[0x29EDBF898]))
  {
    v27 = xpc_dictionary_get_value(v1[1], v26);
    object.__r_.__value_.__r.__words[0] = v27;
    if (v27)
    {
      xpc_retain(v27);
    }

    else
    {
      object.__r_.__value_.__r.__words[0] = xpc_null_create();
    }

    v28 = xpc::dyn_cast_or_default(&object, 0xFFFFFFFFLL);
    xpc_release(object.__r_.__value_.__l.__data_);
    BootModule::setRat2_sync(v3, v28);
  }

  v29 = *MEMORY[0x29EDBF8D0];
  if (xpc_dictionary_get_value(v1[1], *MEMORY[0x29EDBF8D0]))
  {
    memset(&object, 170, sizeof(object));
    v30 = xpc_dictionary_get_value(v1[1], v29);
    __p.__r_.__value_.__r.__words[0] = v30;
    if (v30)
    {
      xpc_retain(v30);
    }

    else
    {
      __p.__r_.__value_.__r.__words[0] = xpc_null_create();
    }

    xpc::dyn_cast_or_default(&object, &__p, "", v31);
    xpc_release(__p.__r_.__value_.__l.__data_);
    if (SHIBYTE(object.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, object.__r_.__value_.__l.__data_, object.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = object;
    }

    BootModule::setPLMN1_sync(v3, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if ((SHIBYTE(object.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_67;
      }
    }

    else if ((SHIBYTE(object.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_67;
    }

    operator delete(object.__r_.__value_.__l.__data_);
  }

LABEL_67:
  v32 = *MEMORY[0x29EDBF8D8];
  if (!xpc_dictionary_get_value(v1[1], *MEMORY[0x29EDBF8D8]))
  {
    goto LABEL_78;
  }

  memset(&object, 170, sizeof(object));
  v33 = xpc_dictionary_get_value(v1[1], v32);
  v63.__r_.__value_.__r.__words[0] = v33;
  if (v33)
  {
    xpc_retain(v33);
  }

  else
  {
    v63.__r_.__value_.__r.__words[0] = xpc_null_create();
  }

  xpc::dyn_cast_or_default(&object, &v63, "", v34);
  xpc_release(v63.__r_.__value_.__l.__data_);
  if (SHIBYTE(object.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v63, object.__r_.__value_.__l.__data_, object.__r_.__value_.__l.__size_);
  }

  else
  {
    v63 = object;
  }

  BootModule::setPLMN2_sync(v3, &v63);
  if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v63.__r_.__value_.__l.__data_);
    if ((SHIBYTE(object.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_78;
    }
  }

  else if ((SHIBYTE(object.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_78;
  }

  operator delete(object.__r_.__value_.__l.__data_);
LABEL_78:
  v35 = *MEMORY[0x29EDBE4B8];
  if (xpc_dictionary_get_value(v1[1], *MEMORY[0x29EDBE4B8]))
  {
    v36 = xpc_dictionary_get_value(v1[1], v35);
    object.__r_.__value_.__r.__words[0] = v36;
    if (v36)
    {
      xpc_retain(v36);
    }

    else
    {
      object.__r_.__value_.__r.__words[0] = xpc_null_create();
    }

    v37 = xpc::dyn_cast_or_default(&object, 0);
    xpc_release(object.__r_.__value_.__l.__data_);
    BootModule::setCellId_sync(v3, v37, 0);
  }

  v38 = *MEMORY[0x29EDBE4C0];
  if (xpc_dictionary_get_value(v1[1], *MEMORY[0x29EDBE4C0]))
  {
    v39 = xpc_dictionary_get_value(v1[1], v38);
    object.__r_.__value_.__r.__words[0] = v39;
    if (v39)
    {
      xpc_retain(v39);
    }

    else
    {
      object.__r_.__value_.__r.__words[0] = xpc_null_create();
    }

    v40 = xpc::dyn_cast_or_default(&object, 0);
    xpc_release(object.__r_.__value_.__l.__data_);
    BootModule::setCellId_sync(v3, v40, 1);
  }

  v41 = *MEMORY[0x29EDBE558];
  if (xpc_dictionary_get_value(v1[1], *MEMORY[0x29EDBE558]))
  {
    v42 = xpc_dictionary_get_value(v1[1], v41);
    object.__r_.__value_.__r.__words[0] = v42;
    if (v42)
    {
      xpc_retain(v42);
    }

    else
    {
      object.__r_.__value_.__r.__words[0] = xpc_null_create();
    }

    v43 = xpc::dyn_cast_or_default(&object, 0);
    xpc_release(object.__r_.__value_.__l.__data_);
    BootModule::setAreaCode_sync(v3, v43, 0);
  }

  v44 = *MEMORY[0x29EDBE560];
  if (xpc_dictionary_get_value(v1[1], *MEMORY[0x29EDBE560]))
  {
    v45 = xpc_dictionary_get_value(v1[1], v44);
    object.__r_.__value_.__r.__words[0] = v45;
    if (v45)
    {
      xpc_retain(v45);
    }

    else
    {
      object.__r_.__value_.__r.__words[0] = xpc_null_create();
    }

    v46 = xpc::dyn_cast_or_default(&object, 0);
    xpc_release(object.__r_.__value_.__l.__data_);
    BootModule::setAreaCode_sync(v3, v46, 1);
  }

  v47 = *MEMORY[0x29EDBF8B8];
  if (xpc_dictionary_get_value(v1[1], *MEMORY[0x29EDBF8B8]) || xpc_dictionary_get_value(v1[1], *MEMORY[0x29EDBF8C0]))
  {
    v48 = xpc_dictionary_get_value(v1[1], v47);
    object.__r_.__value_.__r.__words[0] = v48;
    if (v48)
    {
      xpc_retain(v48);
    }

    else
    {
      object.__r_.__value_.__r.__words[0] = xpc_null_create();
    }

    v49 = xpc::dyn_cast_or_default(&object, 0);
    xpc_release(object.__r_.__value_.__l.__data_);
    if (v49)
    {
      goto LABEL_110;
    }

    v50 = xpc_dictionary_get_value(v1[1], *MEMORY[0x29EDBF8C0]);
    object.__r_.__value_.__r.__words[0] = v50;
    if (v50)
    {
      xpc_retain(v50);
    }

    else
    {
      object.__r_.__value_.__r.__words[0] = xpc_null_create();
    }

    v51 = xpc::dyn_cast_or_default(&object, 0);
    xpc_release(object.__r_.__value_.__l.__data_);
    if (v51)
    {
LABEL_110:
      v52 = *(v3 + 504);
      if (v52)
      {
        dispatch_retain(*(v3 + 504));
        dispatch_suspend(v52);
      }

      v53 = *(v3 + 512);
      *(v3 + 512) = v52;
      if (v53)
      {
        goto LABEL_113;
      }
    }

    else
    {
      v53 = *(v3 + 512);
      *(v3 + 512) = 0;
      if (v53)
      {
LABEL_113:
        dispatch_resume(v53);
        dispatch_release(v53);
      }
    }
  }

  if (v1[2])
  {
    v54 = xpc_null_create();
    v55 = v1[2];
    object.__r_.__value_.__r.__words[0] = v54;
    v56 = xpc_null_create();
    (*(v55 + 16))(v55, 0, &object);
    xpc_release(object.__r_.__value_.__l.__data_);
    xpc_release(v56);
  }

  if (v62)
  {
    v57 = v62[2];
    if (v57)
    {
      _Block_release(v57);
    }

    xpc_release(v62[1]);
    operator delete(v62);
  }

  v58 = a1;
  if (a1)
  {
    v59 = *(a1 + 16);
    if (v59 && !atomic_fetch_add(&v59->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v59->__on_zero_shared)(v59);
      std::__shared_weak_count::__release_weak(v59);
      v58 = a1;
    }

    operator delete(v58);
  }

  v60 = *MEMORY[0x29EDCA608];
}

void sub_2975EEEF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, xpc_object_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *aBlock)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  _ZNSt3__110unique_ptrIZZN10BootModule28registerCommandHandlers_syncEvEUb1_E3__3NS_14default_deleteIS2_EEED1B8ne200100Ev(&a10);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a9);
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
      v8 = off_29EE6C458[v7];
    }

    *buf = 67109378;
    *&buf[4] = v5;
    v23 = 2080;
    v24 = v8;
    _os_log_impl(&dword_297476000, v6, OS_LOG_TYPE_DEFAULT, "#I Received BasebandHealthEvent: isHealthy=%d, current PT status=%s", buf, 0x12u);
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

void sub_2975EF418(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
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
  v4 = off_2A18CAD88;
  if (!off_2A18CAD88)
  {
    ABMServer::create_default_global(&v55);
    v5 = *&v55.__r_.__value_.__l.__data_;
    *&v55.__r_.__value_.__l.__data_ = 0uLL;
    v6 = *(&off_2A18CAD88 + 1);
    off_2A18CAD88 = v5;
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

    v4 = off_2A18CAD88;
  }

  __dst = v4;
  v51 = *(&off_2A18CAD88 + 1);
  if (*(&off_2A18CAD88 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18CAD88 + 1) + 8), 1uLL, memory_order_relaxed);
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
    _os_log_impl(&dword_297476000, v34, OS_LOG_TYPE_DEFAULT, "#I MobileAsset is not supported", &v55, 2u);
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

void sub_2975EFD38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, dispatch_object_t object, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, std::__shared_weak_count *a34)
{
  pthread_mutex_unlock(&ctu::Singleton<ABMServer,ABMServer,ctu::PthreadMutexGuardPolicy<ABMServer>>::sInstance);
  if (v34)
  {
    dispatch_release(v34);
    std::unique_ptr<BootModule::start(dispatch::group_session)::$_0,std::default_delete<BootModule::start(dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a11);
    _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a10);
    _Unwind_Resume(a1);
  }

  std::unique_ptr<BootModule::start(dispatch::group_session)::$_0,std::default_delete<BootModule::start(dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a11);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a10);
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

void sub_2975F00F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
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
          _os_log_impl(&dword_297476000, v6, OS_LOG_TYPE_DEFAULT, "#I MobileAsset notification received", v7, 2u);
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

void sub_2975F0234(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](va);
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

void sub_2975F05A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *aBlock, const void *a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v24 + 40);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&a18);
  if (a24 < 0)
  {
    operator delete(__p);
  }

  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef((v25 - 72));
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v25 - 64);
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
                        v20 = off_29EE6C480[v19];
                      }

                      *__dst = 136315138;
                      *&__dst[4] = v20;
                      _os_log_impl(&dword_297476000, v18, OS_LOG_TYPE_DEFAULT, "#I Failed to get the MobileAsset requested triggered by %s", __dst, 0xCu);
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

void sub_2975F0C80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, void *a28, void *a29, int a30, __int16 a31, char a32, char a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44)
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
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a26);
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
        v6 = off_29EE6C480[v5];
LABEL_11:
        *buf = 136315394;
        *&buf[4] = v4;
        *&buf[12] = 2080;
        *&buf[14] = v6;
        _os_log_impl(&dword_297476000, v3, OS_LOG_TYPE_DEFAULT, "#I Update requested with MobileAsset version %s, triggered by %s", buf, 0x16u);
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
    v18 = off_29EE6C480[v17];
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

void sub_2975F10E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if ((a23 & 0x80000000) == 0)
  {
    std::unique_ptr<BootModule::getPowerTableFromMobileAsset(BootModule::MobileAssetUpdateTrigger)::$_0::operator() const(void)::{lambda(void)#1},std::default_delete<BootModule::getPowerTableFromMobileAsset(BootModule::MobileAssetUpdateTrigger)::$_0::operator() const(void)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&a10);
    _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a9);
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  std::unique_ptr<BootModule::getPowerTableFromMobileAsset(BootModule::MobileAssetUpdateTrigger)::$_0::operator() const(void)::{lambda(void)#1},std::default_delete<BootModule::getPowerTableFromMobileAsset(BootModule::MobileAssetUpdateTrigger)::$_0::operator() const(void)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&a10);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a9);
  _Unwind_Resume(a1);
}

void sub_2975F1154(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10)
{
  std::unique_ptr<BootModule::getPowerTableFromMobileAsset(BootModule::MobileAssetUpdateTrigger)::$_0::operator() const(void)::{lambda(void)#1},std::default_delete<BootModule::getPowerTableFromMobileAsset(BootModule::MobileAssetUpdateTrigger)::$_0::operator() const(void)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&a10);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a9);
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
  *result = &unk_2A1E4BA28;
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
  *a1 = &unk_2A1E4BA28;
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
  *result = &unk_2A1E4BA28;
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
  *a2 = &unk_2A1E4BA28;
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
    object = _os_activity_create(&dword_297476000, "Baseband state: transport is ready", MEMORY[0x29EDCA978], OS_ACTIVITY_FLAG_DEFAULT);
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
    v14 = off_29EE6C498[v3];
  }

  v28 = *MEMORY[0x29EDBEFB8];
  *state = 136315394;
  *&state[4] = v14;
  *&state[12] = 2080;
  *&state[14] = v28;
  _os_log_impl(&dword_297476000, v13, OS_LOG_TYPE_DEFAULT, "#I State is '%s'; don't send '%s' event", state, 0x16u);
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

void sub_2975F1BCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *aBlock, char a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, std::__shared_weak_count *a37)
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
        v8 = off_29EE6C4E0[v2];
      }

      LODWORD(v12.__r_.__value_.__l.__data_) = 136315138;
      *(v12.__r_.__value_.__r.__words + 4) = v8;
      _os_log_impl(&dword_297476000, v7, OS_LOG_TYPE_DEFAULT, "#I State is '%s' not releasing power assertion yet", &v12, 0xCu);
    }
  }

  v9 = *MEMORY[0x29EDCA608];
}

void sub_2975F201C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  operator delete(v16);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<BootModule::registerEventHandlers_sync(void)::$_1,std::allocator<BootModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::~__func(uint64_t result)
{
  *result = &unk_2A1E4BAD8;
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
  *a1 = &unk_2A1E4BAD8;
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
  *result = &unk_2A1E4BAD8;
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
  *a2 = &unk_2A1E4BAD8;
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

void sub_2975F2540(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  std::unique_ptr<TransportModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,std::default_delete<TransportModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<BootModule::registerEventHandlers_sync(void)::$_2,std::allocator<BootModule::registerEventHandlers_sync(void)::$_2>,void ()(dispatch::group_session,xpc::dict)>::~__func(uint64_t result)
{
  *result = &unk_2A1E4BB58;
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
  *a1 = &unk_2A1E4BB58;
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
  *result = &unk_2A1E4BB58;
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
  *a2 = &unk_2A1E4BB58;
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

void sub_2975F2930(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
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

void sub_2975F2AF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, xpc_object_t object)
{
  xpc_release(object);
  std::unique_ptr<BootModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},std::default_delete<BootModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&a11);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a10);
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
  *result = &unk_2A1E4BBD8;
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
  *a1 = &unk_2A1E4BBD8;
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
  *result = &unk_2A1E4BBD8;
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
  *a2 = &unk_2A1E4BBD8;
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

void sub_2975F2F5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
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
  MEMORY[0x29C270E70](&cf);
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
        _os_log_debug_impl(&dword_297476000, v15, OS_LOG_TYPE_DEBUG, "#D Not adding crash entry because received crash data has zero-size", buf, 2u);
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
    _os_log_debug_impl(&dword_297476000, v14, OS_LOG_TYPE_DEBUG, "#D Not adding crash entry because received crash data is empty", &cf, 2u);
  }

LABEL_19:
  MEMORY[0x29C270ED0](object);
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
      _os_log_impl(&dword_297476000, v2, OS_LOG_TYPE_DEFAULT, "#I Dumping logs failed: %s", buf, 0xCu);
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

void sub_2975F3550(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void *);
  _ZNSt3__110unique_ptrIZZN10BootModule21handleBootFailed_syncENS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEEUb3_E4__12NS_14default_deleteIS8_EEED1B8ne200100Ev(va1);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(va);
  _Unwind_Resume(a1);
}

void sub_2975F356C(_Unwind_Exception *exception_object, int a2)
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

void sub_2975F378C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, xpc_object_t object)
{
  xpc_release(object);
  _ZNSt3__110unique_ptrIZZN10BootModule22checkFSSyncStatus_syncEN8dispatch5blockIU13block_pointerFvbbEEEEUb4_E4__13NS_14default_deleteIS7_EEED1B8ne200100Ev(&a11);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a10);
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
          _os_log_impl(&dword_297476000, v7, OS_LOG_TYPE_DEFAULT, "#I Voice Call: %s", &v11, 0xCu);
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

void **std::unique_ptr<BootModule::setRat1_sync(abm::RadioAccessTechnology)::$_0,std::default_delete<BootModule::setRat1_sync(abm::RadioAccessTechnology)::$_0>>::~unique_ptr[abi:ne200100](void **result)
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
          _os_log_impl(&dword_297476000, v6, OS_LOG_TYPE_DEFAULT, "#I RAT1: %s (%d)", buf, 0x12u);
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

void sub_2975F3B30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a13);
  std::unique_ptr<BootModule::setRat1_sync(abm::RadioAccessTechnology)::$_0,std::default_delete<BootModule::setRat1_sync(abm::RadioAccessTechnology)::$_0>>::~unique_ptr[abi:ne200100](&a9);
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
          _os_log_impl(&dword_297476000, v6, OS_LOG_TYPE_DEFAULT, "#I RAT2: %s (%d)", buf, 0x12u);
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

void sub_2975F3CC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a13);
  std::unique_ptr<BootModule::setRat1_sync(abm::RadioAccessTechnology)::$_0,std::default_delete<BootModule::setRat1_sync(abm::RadioAccessTechnology)::$_0>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<BootModule::setPLMN1_sync(std::string)::$_0,std::default_delete<BootModule::setPLMN1_sync(std::string)::$_0>>::~unique_ptr[abi:ne200100](uint64_t *a1)
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
          _os_log_impl(&dword_297476000, v12, OS_LOG_TYPE_DEFAULT, "#I PLMN1: %s", buf, 0xCu);
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

void sub_2975F3ED8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](va1);
  std::unique_ptr<BootModule::setPLMN1_sync(std::string)::$_0,std::default_delete<BootModule::setPLMN1_sync(std::string)::$_0>>::~unique_ptr[abi:ne200100](va);
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
          _os_log_impl(&dword_297476000, v12, OS_LOG_TYPE_DEFAULT, "#I PLMN2: %s", buf, 0xCu);
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

void sub_2975F4094(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](va1);
  std::unique_ptr<BootModule::setPLMN1_sync(std::string)::$_0,std::default_delete<BootModule::setPLMN1_sync(std::string)::$_0>>::~unique_ptr[abi:ne200100](va);
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
          _os_log_impl(&dword_297476000, v8, OS_LOG_TYPE_DEFAULT, "#I CellId%d: %llu", v11, 0x12u);
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
          _os_log_impl(&dword_297476000, v8, OS_LOG_TYPE_DEFAULT, "#I AreaCode%d: %llu", v11, 0x12u);
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
      _os_log_impl(&dword_297476000, v6, OS_LOG_TYPE_DEFAULT, v7, v8, 2u);
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
  *result = &unk_2A1E4BC58;
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
  *a1 = &unk_2A1E4BC58;
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
  *result = &unk_2A1E4BC58;
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
  *a2 = &unk_2A1E4BC58;
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
    _os_log_impl(&dword_297476000, v4, OS_LOG_TYPE_DEFAULT, "#I Timeout for network camping metrics capture, sending out existing metrics to Core Analytics", buf, 2u);
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

void sub_2975F4928(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  operator delete(v10);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a10);
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
  if (v2 != 0x80000002976A4D20)
  {
    if (((v2 & 0x80000002976A4D20 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000002976A4D20))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000002976A4D20 & 0x7FFFFFFFFFFFFFFFLL));
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
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ctu::power::assertion>::~PthreadMutexGuardPolicy, &ctu::Singleton<ctu::power::assertion,ctu::power::assertion,ctu::PthreadMutexGuardPolicy<ctu::power::assertion>>::sInstance, &dword_297476000);
  }

  return result;
}

uint64_t __cxx_global_var_init_190()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>::~PthreadMutexGuardPolicy, &ctu::Singleton<support::log::shared_stdio,support::log::shared_stdio,ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>>::sInstance, &dword_297476000);
  }

  return result;
}

uint64_t __cxx_global_var_init_191()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<HealthEventDB>::~PthreadMutexGuardPolicy, &ctu::Singleton<HealthEventDB,HealthEventDB,ctu::PthreadMutexGuardPolicy<HealthEventDB>>::sInstance, &dword_297476000);
  }

  return result;
}

uint64_t __cxx_global_var_init_192()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ABMServer>::~PthreadMutexGuardPolicy, &ctu::Singleton<ABMServer,ABMServer,ctu::PthreadMutexGuardPolicy<ABMServer>>::sInstance, &dword_297476000);
  }

  return result;
}

uint64_t __cxx_global_var_init_193()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<SharedData>::~PthreadMutexGuardPolicy, &ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance, &dword_297476000);
  }

  return result;
}

uint64_t __cxx_global_var_init_194()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<CommandDriverFactory>::~PthreadMutexGuardPolicy, &ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance, &dword_297476000);
  }

  return result;
}

void StatsModule::create(uint64_t *a1@<X0>, atomic_ullong *a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  v4 = operator new(0xC0uLL);
  v5 = v4;
  v6 = *a1;
  v7 = a1[1];
  v11[0] = v6;
  v11[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  StatsModule::StatsModule(v4, v11);
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  std::shared_ptr<StatsModule>::shared_ptr[abi:ne200100]<StatsModule,std::shared_ptr<StatsModule> ctu::SharedSynchronizable<StatsModule>::make_shared_ptr<StatsModule>(StatsModule*)::{lambda(StatsModule*)#1},0>(a2, v5);
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  v8 = *a2;
  v9 = *a2 + 72;
  v12[0] = MEMORY[0x29EDCA5F8];
  v12[1] = 0x40000000;
  v12[2] = ___ZN11StatsModule4initEv_block_invoke;
  v12[3] = &__block_descriptor_tmp_14;
  v12[4] = v8;
  v13 = v12;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI11StatsModuleE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  block[3] = &__block_descriptor_tmp_22;
  block[4] = v9;
  block[5] = &v13;
  v10 = *(v8 + 88);
  if (*(v8 + 96))
  {
    dispatch_async_and_wait(v10, block);
  }

  else
  {
    dispatch_sync(v10, block);
  }
}

void sub_2975F4D6C(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
    if (!v3)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if (!v3)
  {
    goto LABEL_3;
  }

  operator delete(v1);
  _Unwind_Resume(exception_object);
}

void StatsModule::init(StatsModule *this)
{
  v3[0] = MEMORY[0x29EDCA5F8];
  v3[1] = 0x40000000;
  v3[2] = ___ZN11StatsModule4initEv_block_invoke;
  v3[3] = &__block_descriptor_tmp_14;
  v3[4] = this;
  v4 = v3;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI11StatsModuleE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  block[3] = &__block_descriptor_tmp_22;
  block[4] = this + 72;
  block[5] = &v4;
  v2 = this + 88;
  v1 = *(this + 11);
  if (*(v2 + 1))
  {
    dispatch_async_and_wait(v1, block);
  }

  else
  {
    dispatch_sync(v1, block);
  }
}

uint64_t StatsModule::StatsModule(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = &unk_2A1E500C0;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 64) = 0;
    *(a1 + 56) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = a1 + 56;
    std::__shared_weak_count::__release_weak(v4);
    *a1 = &unk_2A1E42AA8;
    std::__shared_weak_count::__release_weak(v4);
  }

  else
  {
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = a1 + 56;
    *a1 = &unk_2A1E42AA8;
  }

  *a1 = &unk_2A1E4BD38;
  ctu::OsLogContext::OsLogContext(v8, "com.apple.telephony.abm", "stats.mod");
  initially_inactive = dispatch_queue_attr_make_initially_inactive(0);
  v6 = dispatch_queue_create_with_target_V2("stats.mod", initially_inactive, 0);
  dispatch_set_qos_class_floor(v6, QOS_CLASS_DEFAULT, 0);
  dispatch_activate(v6);
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = v6;
  if (v6)
  {
    dispatch_retain(v6);
    *(a1 + 96) = 0;
    dispatch_release(v6);
  }

  else
  {
    *(a1 + 96) = 0;
  }

  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x29C270D50](a1 + 104, v9);
  MEMORY[0x29C270D60](v9);
  ctu::OsLogContext::~OsLogContext(v8);
  *a1 = &unk_2A1E4BD38;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 152) = 0;
  *(a1 + 144) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = a1 + 144;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  return a1;
}

void StatsModule::~StatsModule(StatsModule *this)
{
  *this = &unk_2A1E4BD38;
  v2 = this + 104;
  v3 = *(this + 13);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v18 = 0;
    _os_log_impl(&dword_297476000, v3, OS_LOG_TYPE_DEFAULT, "#I Gone!", v18, 2u);
  }

  v4 = *(this + 23);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = *(this + 21);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  std::__tree<std::__value_type<awd::AppID,std::shared_ptr<awd::AppContext>>,std::__map_value_compare<awd::AppID,std::__value_type<awd::AppID,std::shared_ptr<awd::AppContext>>,std::less<awd::AppID>,true>,std::allocator<std::__value_type<awd::AppID,std::shared_ptr<awd::AppContext>>>>::destroy(*(this + 18));
  v6 = *(this + 14);
  if (v6)
  {
    v7 = *(this + 15);
    v8 = *(this + 14);
    if (v7 != v6)
    {
      do
      {
        v9 = *(v7 - 1);
        v7 -= 3;
        if (v9 < 0)
        {
          operator delete(*v7);
        }
      }

      while (v7 != v6);
      v8 = *(this + 14);
    }

    *(this + 15) = v6;
    operator delete(v8);
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
  StatsModule::~StatsModule(this);

  operator delete(v1);
}

void ___ZN11StatsModule4initEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 13);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v3 = 0;
    _os_log_debug_impl(&dword_297476000, v2, OS_LOG_TYPE_DEBUG, "#D Initializing", v3, 2u);
    StatsModule::initializeStats_sync(v1);
  }

  else
  {
    StatsModule::initializeStats_sync(v1);
  }
}

void StatsModule::initializeStats_sync(StatsModule *this)
{
  StatsModule::addStatsToModule_sync(this, 0);
  StatsAWD::create(&v8);
  v2 = v8;
  v8 = 0uLL;
  v3 = *(this + 21);
  *(this + 10) = v2;
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = *(&v8 + 1);
  if (*(&v8 + 1) && !atomic_fetch_add((*(&v8 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  AnalyticsHelper::create(&v8);
  v5 = v8;
  v8 = 0uLL;
  v6 = *(this + 23);
  *(this + 11) = v5;
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

_WORD *StatsModule::getBootstrapStages@<X0>(void *a1@<X8>)
{
  v3 = operator new(2uLL);
  *a1 = v3;
  *v3 = 256;
  result = v3 + 1;
  a1[1] = result;
  a1[2] = result;
  return result;
}

_BYTE *StatsModule::getShutdownStages@<X0>(void *a1@<X8>)
{
  v3 = operator new(1uLL);
  *a1 = v3;
  *v3 = 3;
  result = v3 + 1;
  a1[1] = result;
  a1[2] = result;
  return result;
}

void StatsModule::shutdownWithStage(void *a1, char a2, NSObject **a3)
{
  v13[0] = MEMORY[0x29EDCA5F8];
  v13[1] = 1174405120;
  v13[2] = ___ZN11StatsModule17shutdownWithStageE13ShutdownStageN8dispatch13group_sessionE_block_invoke;
  v13[3] = &__block_descriptor_tmp_3_3;
  v5 = *a3;
  group = v5;
  if (v5)
  {
    dispatch_retain(v5);
    dispatch_group_enter(group);
  }

  v15 = a2;
  v6 = a1[10];
  if (!v6 || (v7 = a1[9], (v8 = std::__shared_weak_count::lock(v6)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v9 = v8;
  v10 = a1[11];
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 1174405120;
  block[2] = ___ZNK3ctu20SharedSynchronizableI11StatsModuleE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_2A1E4BF00;
  block[5] = v7;
  v17 = v9;
  p_shared_owners = &v9->__shared_owners_;
  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  block[4] = v13;
  dispatch_async(v10, block);
  v12 = v17;
  if (!v17 || atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  (v12->__on_zero_shared)(v12);
  std::__shared_weak_count::__release_weak(v12);
  if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
LABEL_8:
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

LABEL_9:
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }
}

void StatsModule::bootstrap(void *a1, int a2, dispatch_object_t *a3)
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
    dispatch_async_f(v10, v11, dispatch::async<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke);
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
  dispatch_async_f(v17, v18, dispatch::async<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1,dispatch_queue_s *::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_14;
  }
}

void StatsModule::registerCommandHandlers_sync(StatsModule *this)
{
  v2 = *(this + 13);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(__dst[0]) = 0;
    _os_log_debug_impl(&dword_297476000, v2, OS_LOG_TYPE_DEBUG, "#D Registering command handlers", __dst, 2u);
    v3 = *(this + 10);
    if (!v3)
    {
LABEL_23:
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }
  }

  else
  {
    v3 = *(this + 10);
    if (!v3)
    {
      goto LABEL_23;
    }
  }

  v4 = *(this + 9);
  v5 = std::__shared_weak_count::lock(v3);
  if (!v5)
  {
    goto LABEL_23;
  }

  v6 = v5;
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v6);
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
      v11 = 25;
    }

    else
    {
      v11 = (v8 | 7) + 1;
    }

    v10 = operator new(v11);
    __dst[1] = v9;
    v17 = v11 | 0x8000000000000000;
    __dst[0] = v10;
    goto LABEL_14;
  }

  HIBYTE(v17) = v8;
  v10 = __dst;
  if (v8)
  {
LABEL_14:
    memmove(v10, v7, v9);
  }

  *(v9 + v10) = 0;
  v13[0] = MEMORY[0x29EDCA5F8];
  v13[1] = 1174405120;
  v13[2] = ___ZN11StatsModule28registerCommandHandlers_syncEv_block_invoke;
  v13[3] = &__block_descriptor_tmp_5_11;
  v13[4] = this;
  v13[5] = v4;
  v14 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v12 = _Block_copy(v13);
  v15 = v12;
  Service::registerCommandHandler(this, __dst, &v15);
  if (v12)
  {
    _Block_release(v12);
  }

  if (SHIBYTE(v17) < 0)
  {
    operator delete(__dst[0]);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_weak(v14);
  }

  std::__shared_weak_count::__release_weak(v6);
}

void sub_2975F5AFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (v23)
  {
    _Block_release(v23);
  }

  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
    if ((a22 & 0x80000000) == 0)
    {
LABEL_5:
      std::__shared_weak_count::__release_weak(v22);
      _Unwind_Resume(a1);
    }
  }

  else if ((a22 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(__p);
  std::__shared_weak_count::__release_weak(v22);
  _Unwind_Resume(a1);
}

void ___ZN11StatsModule28registerCommandHandlers_syncEv_block_invoke(void *a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x29EDCA608];
  v4 = a1[6];
  if (!v4)
  {
    goto LABEL_20;
  }

  v7 = a1[4];
  v8 = std::__shared_weak_count::lock(v4);
  v28 = v8;
  if (!v8)
  {
    goto LABEL_20;
  }

  v9 = v8;
  v10 = a1[5];
  if (!v10)
  {
    goto LABEL_18;
  }

  if (MEMORY[0x29C272BA0](*a2) != MEMORY[0x29EDCAA00])
  {
    v11 = v7[13];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v27 = *MEMORY[0x29EDBEBD0];
      *object = 136315138;
      *&object[4] = v27;
      _os_log_error_impl(&dword_297476000, v11, OS_LOG_TYPE_ERROR, "No input is given for %s", object, 0xCu);
      if (!*a3)
      {
LABEL_18:
        if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v9->__on_zero_shared)(v9);
          std::__shared_weak_count::__release_weak(v9);
        }

        goto LABEL_20;
      }
    }

    else if (!*a3)
    {
      goto LABEL_18;
    }

    v12 = xpc_null_create();
    v13 = *a3;
    *object = v12;
    v14 = xpc_null_create();
    v13[2](v13, 3760250880, object);
    xpc_release(*object);
    xpc_release(v14);
    goto LABEL_18;
  }

  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  v15 = *a2;
  if (v15)
  {
    xpc_retain(v15);
    v16 = *a3;
    if (*a3)
    {
      goto LABEL_10;
    }

LABEL_13:
    v17 = 0;
    v18 = v7[10];
    if (!v18)
    {
      goto LABEL_23;
    }

    goto LABEL_14;
  }

  v15 = xpc_null_create();
  v16 = *a3;
  if (!*a3)
  {
    goto LABEL_13;
  }

LABEL_10:
  v17 = _Block_copy(v16);
  v18 = v7[10];
  if (!v18)
  {
LABEL_23:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

LABEL_14:
  v19 = v7[9];
  v20 = std::__shared_weak_count::lock(v18);
  if (!v20)
  {
    goto LABEL_23;
  }

  v21 = v20;
  v22 = operator new(0x28uLL);
  *v22 = v7;
  v22[1] = v10;
  v22[2] = v9;
  v22[3] = v15;
  v23 = xpc_null_create();
  v22[4] = v17;
  v24 = v7[11];
  atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  v25 = operator new(0x18uLL);
  *v25 = v22;
  v25[1] = v19;
  v25[2] = v21;
  dispatch_async_f(v24, v25, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI11StatsModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb_E3__2EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_);
  if (!atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v21->__on_zero_shared)(v21);
    std::__shared_weak_count::__release_weak(v21);
  }

  xpc_release(v23);
  v9 = v28;
  if (v28)
  {
    goto LABEL_18;
  }

LABEL_20:
  v26 = *MEMORY[0x29EDCA608];
}

void sub_2975F5E20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t __copy_helper_block_e8_40c36_ZTSNSt3__18weak_ptrI11StatsModuleEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c36_ZTSNSt3__18weak_ptrI11StatsModuleEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

BOOL StatsModule::reportStats_sync(uint64_t a1, int a2, xpc_object_t *a3)
{
  v5 = *a3;
  v8 = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    v5 = xpc_null_create();
    v8 = v5;
  }

  updated = StatsModule::updateData_sync(a1, a2, &v8);
  xpc_release(v5);
  return updated;
}

BOOL StatsModule::updateData_sync(uint64_t a1, int a2, void **a3)
{
  cf = 0;
  v48 = 0;
  pthread_mutex_lock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  v6 = off_2A18CAFB8;
  if (!off_2A18CAFB8)
  {
    SharedData::create_default_global(__p);
    v7 = *__p;
    __p[0] = 0;
    __p[1] = 0;
    v8 = *(&off_2A18CAFB8 + 1);
    off_2A18CAFB8 = v7;
    if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }

    v9 = __p[1];
    if (__p[1] && !atomic_fetch_add(__p[1] + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
    }

    v6 = off_2A18CAFB8;
  }

  v10 = *(&off_2A18CAFB8 + 1);
  if (*(&off_2A18CAFB8 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18CAFB8 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  v11 = &__p[1] + 7;
  if (a2)
  {
    qmemcpy(__p, "UNKNOWN", 7);
    v12 = 7;
    v13 = __p + 7;
  }

  else
  {
    qmemcpy(__p, "Boot Statistics", 15);
    v12 = 15;
    v13 = &__p[1] + 7;
  }

  *v13 = 0;
  v46 = v12;
  os_unfair_lock_lock((v6 + 40));
  Preferences::getPreference<__CFDictionary const*>(v6, __p, &cf);
  os_unfair_lock_unlock((v6 + 40));
  if (v46 < 0)
  {
    operator delete(__p[0]);
    if (!v10)
    {
      goto LABEL_19;
    }
  }

  else if (!v10)
  {
LABEL_19:
    v14 = cf;
    if (!cf)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_19;
  }

  (v10->__on_zero_shared)(v10);
  std::__shared_weak_count::__release_weak(v10);
  v14 = cf;
  if (cf)
  {
LABEL_20:
    CFRetain(v14);
  }

LABEL_21:
  v15 = v48;
  v48 = v14;
  if (v15)
  {
    CFRelease(v15);
  }

  v17 = (a1 + 144);
  v16 = *(a1 + 144);
  v43 = 0xAAAAAAAAAAAAAAAALL;
  v44 = 0xAAAAAAAAAAAAAAAALL;
  if (v16)
  {
    while (1)
    {
      while (1)
      {
        v18 = v16;
        v19 = *(v16 + 32);
        if (v19 <= a2)
        {
          break;
        }

        v16 = *v18;
        v17 = v18;
        if (!*v18)
        {
          goto LABEL_30;
        }
      }

      if (v19 >= a2)
      {
        break;
      }

      v16 = v18[1];
      if (!v16)
      {
        v17 = v18 + 1;
        goto LABEL_30;
      }
    }

    v34 = v18 + 5;
    v23 = v18[5];
    v22 = v34[1];
    v43 = v23;
    v44 = v22;
    if (v22)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v18 = (a1 + 144);
LABEL_30:
    v20 = operator new(0x38uLL);
    *(v20 + 8) = a2;
    *(v20 + 5) = 0;
    *(v20 + 6) = 0;
    *v20 = 0;
    *(v20 + 1) = 0;
    *(v20 + 2) = v18;
    *v17 = v20;
    v21 = **(a1 + 136);
    if (v21)
    {
      *(a1 + 136) = v21;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(a1 + 144), v20);
    ++*(a1 + 152);
    v23 = *(v20 + 5);
    v22 = *(v20 + 6);
    v43 = v23;
    v44 = v22;
    if (v22)
    {
LABEL_33:
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  if (!v23)
  {
    goto LABEL_60;
  }

  v24 = v48;
  v42 = v48;
  if (v48)
  {
    CFRetain(v48);
  }

  v25 = *a3;
  object = v25;
  if (v25)
  {
    xpc_retain(v25);
  }

  else
  {
    object = xpc_null_create();
  }

  (*(*v23 + 24))(__p, v23, &v42, &object);
  v26 = __p[0];
  v48 = __p[0];
  __p[0] = 0;
  if (v24)
  {
    CFRelease(v24);
    if (__p[0])
    {
      CFRelease(__p[0]);
    }
  }

  xpc_release(object);
  object = 0;
  if (v42)
  {
    CFRelease(v42);
  }

  if (!v26)
  {
LABEL_60:
    v33 = 0;
    if (!v22)
    {
      goto LABEL_77;
    }

    goto LABEL_76;
  }

  pthread_mutex_lock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  v27 = off_2A18CAFB8;
  if (!off_2A18CAFB8)
  {
    SharedData::create_default_global(__p);
    v28 = *__p;
    __p[0] = 0;
    __p[1] = 0;
    v29 = *(&off_2A18CAFB8 + 1);
    off_2A18CAFB8 = v28;
    if (v29 && !atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v29->__on_zero_shared)(v29);
      std::__shared_weak_count::__release_weak(v29);
    }

    v30 = __p[1];
    if (__p[1] && !atomic_fetch_add(__p[1] + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v30->__on_zero_shared)(v30);
      std::__shared_weak_count::__release_weak(v30);
    }

    v27 = off_2A18CAFB8;
  }

  v31 = *(&off_2A18CAFB8 + 1);
  if (*(&off_2A18CAFB8 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18CAFB8 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  if (a2)
  {
    qmemcpy(__p, "UNKNOWN", 7);
    v32 = 7;
    v11 = __p + 7;
  }

  else
  {
    qmemcpy(__p, "Boot Statistics", 15);
    v32 = 15;
  }

  *v11 = 0;
  v46 = v32;
  v35 = v48;
  os_unfair_lock_lock((v27 + 40));
  if (v46 >= 0)
  {
    v36 = __p;
  }

  else
  {
    v36 = __p[0];
  }

  ctu::cf::MakeCFString::MakeCFString(v49, v36);
  v37 = v49[0];
  v49[1] = v35;
  if (v35)
  {
    CFRetain(v35);
    v38 = *MEMORY[0x29EDB8FA8];
    CFPreferencesSetValue(v37, v35, *(v27 + 8), *(v27 + 16), *MEMORY[0x29EDB8FA8]);
    v33 = CFPreferencesSynchronize(*(v27 + 8), *(v27 + 16), v38) != 0;
    CFRelease(v35);
    MEMORY[0x29C270E70](v49);
    os_unfair_lock_unlock((v27 + 40));
    if ((v46 & 0x80000000) == 0)
    {
      goto LABEL_70;
    }

LABEL_73:
    operator delete(__p[0]);
    if (!v31)
    {
      goto LABEL_75;
    }

LABEL_74:
    if (!atomic_fetch_add(&v31->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v31->__on_zero_shared)(v31);
      std::__shared_weak_count::__release_weak(v31);
      v22 = v44;
      if (!v44)
      {
        goto LABEL_77;
      }

      goto LABEL_76;
    }

    goto LABEL_75;
  }

  v33 = 0;
  MEMORY[0x29C270E70](v49);
  os_unfair_lock_unlock((v27 + 40));
  if (v46 < 0)
  {
    goto LABEL_73;
  }

LABEL_70:
  if (v31)
  {
    goto LABEL_74;
  }

LABEL_75:
  v22 = v44;
  if (!v44)
  {
    goto LABEL_77;
  }

LABEL_76:
  if (!atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v22->__on_zero_shared)(v22);
    std::__shared_weak_count::__release_weak(v22);
    v39 = v48;
    if (!v48)
    {
      return v33;
    }

    goto LABEL_78;
  }

LABEL_77:
  v39 = v48;
  if (v48)
  {
LABEL_78:
    CFRelease(v39);
  }

  return v33;
}

void sub_2975F6590(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, const void *a21, __int16 a22, char a23, char a24)
{
  pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a12);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&a21);
  _Unwind_Resume(a1);
}

void sub_2975F6670(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void StatsModule::getAllStats_sync(StatsModule *this@<X0>, __CFDictionary **a2@<X8>)
{
  v27 = 0;
  v4 = *MEMORY[0x29EDB8ED8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v6 = Mutable;
  if (Mutable)
  {
    v27 = Mutable;
  }

  v7 = *(this + 17);
  v8 = this + 144;
  if (v7 != this + 144)
  {
    while (1)
    {
      v26 = 0;
      pthread_mutex_lock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
      v9 = off_2A18CAFB8;
      if (off_2A18CAFB8)
      {
        v10 = *(&off_2A18CAFB8 + 1);
        if (!*(&off_2A18CAFB8 + 1))
        {
          goto LABEL_9;
        }

LABEL_8:
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_9;
      }

      SharedData::create_default_global(__p);
      v13 = *__p;
      __p[0] = 0;
      __p[1] = 0;
      v14 = *(&off_2A18CAFB8 + 1);
      off_2A18CAFB8 = v13;
      if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v14->__on_zero_shared)(v14);
        std::__shared_weak_count::__release_weak(v14);
        v15 = __p[1];
        if (!__p[1])
        {
          goto LABEL_37;
        }
      }

      else
      {
        v15 = __p[1];
        if (!__p[1])
        {
          goto LABEL_37;
        }
      }

      if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v15->__on_zero_shared)(v15);
        std::__shared_weak_count::__release_weak(v15);
      }

LABEL_37:
      v9 = off_2A18CAFB8;
      v10 = *(&off_2A18CAFB8 + 1);
      if (*(&off_2A18CAFB8 + 1))
      {
        goto LABEL_8;
      }

LABEL_9:
      pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
      if (*(v7 + 8))
      {
        qmemcpy(__p, "UNKNOWN", 7);
        v11 = 7;
        v12 = __p + 7;
      }

      else
      {
        qmemcpy(__p, "Boot Statistics", 15);
        v11 = 15;
        v12 = &__p[1] + 7;
      }

      *v12 = 0;
      v25 = v11;
      os_unfair_lock_lock((v9 + 40));
      Preferences::getPreference<__CFDictionary const*>(v9, __p, &v26);
      os_unfair_lock_unlock((v9 + 40));
      if (v25 < 0)
      {
        operator delete(__p[0]);
        if (!v10)
        {
          goto LABEL_22;
        }
      }

      else if (!v10)
      {
        goto LABEL_22;
      }

      if (atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
LABEL_22:
        v17 = v26;
        if (!v26)
        {
          goto LABEL_29;
        }

        goto LABEL_23;
      }

      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
      v17 = v26;
      if (!v26)
      {
        goto LABEL_29;
      }

LABEL_23:
      if (*(v7 + 8))
      {
        qmemcpy(__p, "UNKNOWN", 7);
        v18 = 7;
        v19 = __p + 7;
      }

      else
      {
        qmemcpy(__p, "Boot Statistics", 15);
        v18 = 15;
        v19 = &__p[1] + 7;
      }

      *v19 = 0;
      v25 = v18;
      ctu::cf::insert<char const*,__CFDictionary const*>(v27, __p, v17, v4, v16);
      if ((v25 & 0x80000000) == 0)
      {
LABEL_29:
        v20 = *(v7 + 1);
        if (!v20)
        {
          goto LABEL_33;
        }

        goto LABEL_30;
      }

      operator delete(__p[0]);
      v20 = *(v7 + 1);
      if (!v20)
      {
        do
        {
LABEL_33:
          v21 = *(v7 + 2);
          v22 = *v21 == v7;
          v7 = v21;
        }

        while (!v22);
        goto LABEL_5;
      }

      do
      {
LABEL_30:
        v21 = v20;
        v20 = *v20;
      }

      while (v20);
LABEL_5:
      v7 = v21;
      if (v21 == v8)
      {
        v6 = v27;
        break;
      }
    }
  }

  if (v6 && (v23 = CFGetTypeID(v6), v23 == CFDictionaryGetTypeID()))
  {
    *a2 = v6;
    CFRetain(v6);
  }

  else
  {
    *a2 = 0;
    if (!v6)
    {
      return;
    }
  }

  CFRelease(v6);
}

void StatsModule::addStatsToModule_sync(uint64_t a1, int a2)
{
  v25 = *MEMORY[0x29EDCA608];
  v21 = 0;
  v22 = 0;
  Stats::create(a2, __p);
  v5 = __p[0];
  v4 = __p[1];
  v21 = __p[0];
  v22 = __p[1];
  if (__p[0])
  {
    v6 = *(__p[0] + 12);
    v8 = (a1 + 144);
    v7 = *(a1 + 144);
    if (v7)
    {
      while (1)
      {
        while (1)
        {
          v9 = v7;
          v10 = *(v7 + 32);
          if (v6 >= v10)
          {
            break;
          }

          v7 = *v9;
          v8 = v9;
          if (!*v9)
          {
            goto LABEL_9;
          }
        }

        if (v10 >= v6)
        {
          break;
        }

        v7 = v9[1];
        if (!v7)
        {
          v8 = v9 + 1;
          goto LABEL_9;
        }
      }

      v11 = v9;
      if (!__p[1])
      {
        goto LABEL_13;
      }
    }

    else
    {
      v9 = (a1 + 144);
LABEL_9:
      v11 = operator new(0x38uLL);
      *(v11 + 8) = v6;
      *(v11 + 5) = 0;
      *(v11 + 6) = 0;
      *v11 = 0;
      *(v11 + 1) = 0;
      *(v11 + 2) = v9;
      *v8 = v11;
      v12 = **(a1 + 136);
      if (v12)
      {
        *(a1 + 136) = v12;
      }

      std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(a1 + 144), v11);
      ++*(a1 + 152);
      if (!v4)
      {
        goto LABEL_13;
      }
    }

    atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
LABEL_13:
    v13 = *(v11 + 6);
    *(v11 + 5) = v5;
    *(v11 + 6) = v4;
    if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v13->__on_zero_shared)(v13);
      std::__shared_weak_count::__release_weak(v13);
    }

    goto LABEL_17;
  }

  v14 = *(a1 + 104);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    if (a2)
    {
      v17 = __p + 7;
      qmemcpy(__p, "UNKNOWN", 7);
      v18 = 7;
    }

    else
    {
      v17 = &__p[1] + 7;
      qmemcpy(__p, "Boot Statistics", 15);
      v18 = 15;
    }

    *v17 = 0;
    v20 = v18;
    *buf = 136315138;
    v24 = __p;
    _os_log_error_impl(&dword_297476000, v14, OS_LOG_TYPE_ERROR, "Failed to create stats of %s", buf, 0xCu);
    if (v20 < 0)
    {
      operator delete(__p[0]);
    }
  }

LABEL_17:
  v15 = v22;
  if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v15->__on_zero_shared)(v15);
    std::__shared_weak_count::__release_weak(v15);
  }

  v16 = *MEMORY[0x29EDCA608];
}

void sub_2975F6CF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2975F6D0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void StatsModule::updateAnalyticsData_sync(uint64_t a1, void **a2)
{
  v2 = *(a1 + 176);
  if (v2)
  {
    v3 = *a2;
    object = v3;
    if (v3 && MEMORY[0x29C272BA0](v3) == MEMORY[0x29EDCAA00])
    {
      xpc_retain(v3);
    }

    else
    {
      object = xpc_null_create();
    }

    AnalyticsHelper::updateData(v2, &object);
    xpc_release(object);
  }

  else
  {
    v4 = *(a1 + 104);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_297476000, v4, OS_LOG_TYPE_ERROR, "Analytics object has not created yet", buf, 2u);
    }
  }
}

void StatsModule::reportAWD_sync(uint64_t a1, int a2, void **a3)
{
  v12 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 160);
  if (v4)
  {
    v5 = *a3;
    object = v5;
    if (v5)
    {
      xpc_retain(v5);
    }

    else
    {
      object = xpc_null_create();
    }

    v7.fObj = &object;
    StatsAWD::submit(v4, a2, v7);
    xpc_release(object);
  }

  else
  {
    v6 = *(a1 + 104);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v11 = a2;
      _os_log_error_impl(&dword_297476000, v6, OS_LOG_TYPE_ERROR, "AWD object has not created yet. 0x%x metric ID cannot be submitted", buf, 8u);
    }
  }

  v8 = *MEMORY[0x29EDCA608];
}

void sub_2975F6EEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

atomic_ullong *std::shared_ptr<StatsModule>::shared_ptr[abi:ne200100]<StatsModule,std::shared_ptr<StatsModule> ctu::SharedSynchronizable<StatsModule>::make_shared_ptr<StatsModule>(StatsModule*)::{lambda(StatsModule*)#1},0>(atomic_ullong *a1, atomic_ullong a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_2A1E4BEB8;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  if (!a2)
  {
    return a1;
  }

  v6 = *(a2 + 80);
  if (v6)
  {
    if (v6->__shared_owners_ == -1)
    {
      atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
      *(a2 + 72) = a2;
      *(a2 + 80) = v4;
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
  *(a2 + 72) = a2;
  *(a2 + 80) = v4;
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

void sub_2975F703C(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[11], v1, std::shared_ptr<StatsModule> ctu::SharedSynchronizable<StatsModule>::make_shared_ptr<StatsModule>(StatsModule*)::{lambda(StatsModule*)#1}::operator() const(StatsModule*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<StatsModule *,std::shared_ptr<StatsModule> ctu::SharedSynchronizable<StatsModule>::make_shared_ptr<StatsModule>(StatsModule*)::{lambda(StatsModule *)#1},std::allocator<StatsModule>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<StatsModule *,std::shared_ptr<StatsModule> ctu::SharedSynchronizable<StatsModule>::make_shared_ptr<StatsModule>(StatsModule*)::{lambda(StatsModule *)#1},std::allocator<StatsModule>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableI11StatsModuleE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableI11StatsModuleE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableI11StatsModuleE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableI11StatsModuleE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::shared_ptr<StatsModule> ctu::SharedSynchronizable<StatsModule>::make_shared_ptr<StatsModule>(StatsModule*)::{lambda(StatsModule*)#1}::operator() const(StatsModule*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t __copy_helper_block_e8_40c40_ZTSNSt3__110shared_ptrIK11StatsModuleEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c40_ZTSNSt3__110shared_ptrIK11StatsModuleEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void dispatch::async<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v2 = *a1;
  StatsModule::registerCommandHandlers_sync(**a1);
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

void sub_2975F72E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  std::unique_ptr<TransportModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,std::default_delete<TransportModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a9);
  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1,dispatch_queue_s *::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1>>)::{lambda(void *)#1}::__invoke(void *__p)
{
  v2 = *__p;
  if (*__p)
  {
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
  }

  v5 = __p[2];
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    v6 = __p;
  }

  else
  {
    v6 = __p;
  }

  operator delete(v6);
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI11StatsModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb_E3__2EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_(uint64_t *a1)
{
  v40 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  v37 = v1;
  v2 = *v1;
  v3 = *MEMORY[0x29EDBE588];
  if (xpc_dictionary_get_value(*(v1 + 24), *MEMORY[0x29EDBE588]))
  {
    value = xpc_dictionary_get_value(*(v1 + 24), *MEMORY[0x29EDBE580]);
    v5 = value;
    if (value)
    {
      xpc_retain(value);
    }

    else
    {
      v5 = xpc_null_create();
    }

    v8 = MEMORY[0x29C272BA0](v5);
    v9 = MEMORY[0x29EDCAA00];
    if (v8 != MEMORY[0x29EDCAA00] && MEMORY[0x29C272BA0](v5) != MEMORY[0x29EDCA9E0])
    {
      v6 = 3760250880;
      v10 = *(v2 + 104);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_297476000, v10, OS_LOG_TYPE_ERROR, "Data type should be dictionary/array", buf, 2u);
      }

      goto LABEL_63;
    }

    memset(buf, 170, 24);
    v11 = xpc_dictionary_get_value(*(v1 + 24), v3);
    *object = v11;
    if (v11)
    {
      xpc_retain(v11);
    }

    else
    {
      *object = xpc_null_create();
    }

    xpc::dyn_cast_or_default(buf, object, "", v12);
    xpc_release(*object);
    v13 = *MEMORY[0x29EDBF8E0];
    v14 = strlen(*MEMORY[0x29EDBF8E0]);
    v15 = buf[23];
    if ((buf[23] & 0x8000000000000000) != 0)
    {
      if (v14 == *&buf[8])
      {
        if (v14 == -1)
        {
          std::string::__throw_out_of_range[abi:ne200100]();
        }

        if (!memcmp(*buf, v13, v14))
        {
LABEL_41:
          v23 = xpc_dictionary_get_value(*(v1 + 24), *MEMORY[0x29EDBE660]);
          *object = v23;
          if (v23)
          {
            xpc_retain(v23);
          }

          else
          {
            *object = xpc_null_create();
          }

          v25 = xpc::dyn_cast_or_default(object, 0);
          xpc_release(*object);
          *object = v5;
          if (v5 && MEMORY[0x29C272BA0](v5) == v9)
          {
            xpc_retain(v5);
            v26 = v5;
          }

          else
          {
            v26 = xpc_null_create();
            *object = v26;
          }

          v35 = StatsModule::reportStats_sync(v2, v25, object);
          xpc_release(v26);
          *object = 0;
          if (v35)
          {
            v6 = 0;
          }

          else
          {
            v6 = 3760250880;
          }

          if ((buf[23] & 0x80000000) == 0)
          {
            goto LABEL_63;
          }

          goto LABEL_62;
        }
      }
    }

    else if (v14 == buf[23] && !memcmp(buf, v13, v14))
    {
      goto LABEL_41;
    }

    v16 = *MEMORY[0x29EDBF880];
    v17 = strlen(*MEMORY[0x29EDBF880]);
    if ((v15 & 0x80000000) != 0)
    {
      if (v17 == *&buf[8])
      {
        if (v17 == -1)
        {
          std::string::__throw_out_of_range[abi:ne200100]();
        }

        if (!memcmp(*buf, v16, v17))
        {
          goto LABEL_43;
        }
      }
    }

    else if (v17 == v15 && !memcmp(buf, v16, v17))
    {
LABEL_43:
      v24 = xpc_dictionary_get_value(*(v1 + 24), *MEMORY[0x29EDBE660]);
      *object = v24;
      if (v24)
      {
        xpc_retain(v24);
      }

      else
      {
        *object = xpc_null_create();
      }

      v27 = xpc::dyn_cast_or_default(object, 0);
      xpc_release(*object);
      *object = v5;
      if (v5)
      {
        xpc_retain(v5);
        v28 = v5;
      }

      else
      {
        v28 = xpc_null_create();
        *object = v28;
      }

      StatsModule::reportAWD_sync(v2, v27, object);
      xpc_release(v28);
LABEL_60:
      v6 = 0;
      *object = 0;
LABEL_61:
      if (buf[23] < 0)
      {
LABEL_62:
        operator delete(*buf);
      }

LABEL_63:
      xpc_release(v5);
      goto LABEL_64;
    }

    v6 = 3760250880;
    v18 = *MEMORY[0x29EDBE550];
    v19 = strlen(*MEMORY[0x29EDBE550]);
    if ((v15 & 0x80000000) != 0)
    {
      if (v19 != *&buf[8])
      {
        v20 = *(v2 + 104);
        if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_61;
        }

        goto LABEL_46;
      }

      if (v19 == -1)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      if (memcmp(*buf, v18, v19))
      {
        goto LABEL_31;
      }
    }

    else
    {
      if (v19 != v15)
      {
        v20 = *(v2 + 104);
        if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_61;
        }

        goto LABEL_40;
      }

      if (memcmp(buf, v18, v19))
      {
LABEL_31:
        v20 = *(v2 + 104);
        if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_61;
        }

        if ((v15 & 0x80000000) != 0)
        {
LABEL_46:
          v22 = *buf;
LABEL_47:
          *object = 136315138;
          *&object[4] = v22;
          _os_log_impl(&dword_297476000, v20, OS_LOG_TYPE_DEFAULT, "#I Unrecognized stats type: %s", object, 0xCu);
          if (buf[23] < 0)
          {
            goto LABEL_62;
          }

          goto LABEL_63;
        }

LABEL_40:
        v22 = buf;
        goto LABEL_47;
      }
    }

    *object = v5;
    if (v5)
    {
      xpc_retain(v5);
      v21 = v5;
    }

    else
    {
      v21 = xpc_null_create();
      *object = v21;
    }

    StatsModule::updateAnalyticsData_sync(v2, object);
    xpc_release(v21);
    goto LABEL_60;
  }

  v6 = 3760250880;
  v7 = *(v2 + 104);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_297476000, v7, OS_LOG_TYPE_ERROR, "Stats type is missing!", buf, 2u);
  }

LABEL_64:
  if (*(v1 + 32))
  {
    v29 = xpc_null_create();
    v30 = *(v1 + 32);
    *buf = v29;
    v31 = xpc_null_create();
    (*(v30 + 16))(v30, v6, buf);
    xpc_release(*buf);
    xpc_release(v31);
  }

  _ZNSt3__110unique_ptrIZZN11StatsModule28registerCommandHandlers_syncEvEUb_E3__2NS_14default_deleteIS2_EEED1B8ne200100Ev(&v37);
  v32 = a1;
  if (a1)
  {
    v33 = a1[2];
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

void sub_2975F7990(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, xpc_object_t object)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *_ZNSt3__110unique_ptrIZZN11StatsModule28registerCommandHandlers_syncEvEUb_E3__2NS_14default_deleteIS2_EEED1B8ne200100Ev(uint64_t *a1)
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
    v4 = *(v2 + 16);
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    operator delete(v2);
  }

  return a1;
}

void CPMSModule::create(capabilities::abs *a1@<X0>, void *a2@<X8>)
{
  if (capabilities::abs::getCPMSVariant(a1) != 1)
  {
    {
      GetOsLogContext(void)::sOsLogContext = 0;
      qword_2A18CB080 = 0;
    }

    if (GetOsLogContext(void)::onceToken == -1)
    {
      v11 = qword_2A18CB080;
      if (!os_log_type_enabled(qword_2A18CB080, OS_LOG_TYPE_DEFAULT))
      {
LABEL_12:
        *a2 = 0;
        a2[1] = 0;
        return;
      }
    }

    else
    {
      dispatch_once(&GetOsLogContext(void)::onceToken, &__block_literal_global_12);
      v11 = qword_2A18CB080;
      if (!os_log_type_enabled(qword_2A18CB080, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_12;
      }
    }

    *buf = 0;
    _os_log_impl(&dword_297476000, v11, OS_LOG_TYPE_DEFAULT, "User-space CPMS not supported!", buf, 2u);
    goto LABEL_12;
  }

  *a2 = 0;
  a2[1] = 0;
  v4 = operator new(0x180uLL);
  v5 = v4;
  v6 = *a1;
  v7 = *(a1 + 1);
  v12[0] = v6;
  v12[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  CPMSModule::CPMSModule(v4, v12);
  v8 = operator new(0x20uLL);
  v8->__shared_owners_ = 0;
  p_shared_owners = &v8->__shared_owners_;
  v8->__vftable = &unk_2A1E4C210;
  v8->__shared_weak_owners_ = 0;
  v8[1].__vftable = v5;
  v10 = *(v5 + 10);
  if (!v10)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    *(v5 + 9) = v5;
    *(v5 + 10) = v8;
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (v10->__shared_owners_ == -1)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    *(v5 + 9) = v5;
    *(v5 + 10) = v8;
    std::__shared_weak_count::__release_weak(v10);
    if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
LABEL_14:
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }

LABEL_15:
  *a2 = v5;
  a2[1] = v8;
  if (v7)
  {

    std::__shared_weak_count::__release_weak(v7);
  }
}

void sub_2975F7E0C(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[11], v1, std::shared_ptr<CPMSModule> ctu::SharedSynchronizable<CPMSModule>::make_shared_ptr<CPMSModule>(CPMSModule*)::{lambda(CPMSModule*)#1}::operator() const(CPMSModule*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void sub_2975F7E34(_Unwind_Exception *a1)
{
  __cxa_end_catch();
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

uint64_t CPMSModule::CPMSModule(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = &unk_2A1E500C0;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 64) = 0;
    *(a1 + 56) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = a1 + 56;
    std::__shared_weak_count::__release_weak(v4);
    *a1 = &unk_2A1E4A9F0;
    std::__shared_weak_count::__release_weak(v4);
  }

  else
  {
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = a1 + 56;
    *a1 = &unk_2A1E4A9F0;
  }

  *a1 = &unk_2A1E4BF40;
  ctu::OsLogContext::OsLogContext(v9, "com.apple.telephony.abm", "cpms.mod");
  initially_inactive = dispatch_queue_attr_make_initially_inactive(0);
  v6 = dispatch_queue_create_with_target_V2("cpms.mod", initially_inactive, 0);
  dispatch_set_qos_class_floor(v6, QOS_CLASS_USER_INITIATED, 0);
  dispatch_activate(v6);
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = v6;
  if (v6)
  {
    dispatch_retain(v6);
    *(a1 + 96) = 0;
    dispatch_release(v6);
  }

  else
  {
    *(a1 + 96) = 0;
  }

  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x29C270D50](a1 + 104, v10);
  MEMORY[0x29C270D60](v10);
  ctu::OsLogContext::~OsLogContext(v9);
  *(a1 + 192) = 0;
  *(a1 + 184) = a1 + 192;
  *a1 = &unk_2A1E4BF40;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 173) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 224) = 0;
  *(a1 + 216) = a1 + 224;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 248) = a1 + 256;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = a1 + 288;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0;
  *(a1 + 304) = 0;
  *(a1 + 312) = a1 + 320;
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  *(a1 + 336) = 0;
  *(a1 + 344) = a1 + 352;
  *(a1 + 368) = 0;
  v7 = *MEMORY[0x29EDB8ED8];
  *(a1 + 376) = TelephonyBasebandCreateController();
  return a1;
}