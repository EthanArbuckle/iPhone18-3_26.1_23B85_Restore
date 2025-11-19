void ___ZN9SARModule22initializeHelpers_syncEv_block_invoke(void *a1, int a2, uint64_t a3)
{
  v63 = *MEMORY[0x29EDCA608];
  v4 = a1[6];
  if (!v4)
  {
    goto LABEL_80;
  }

  v7 = a1[4];
  v8 = std::__shared_weak_count::lock(v4);
  if (!v8)
  {
    goto LABEL_80;
  }

  v9 = a1[5];
  if (atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (!v9)
    {
      goto LABEL_80;
    }
  }

  else
  {
    v10 = v8;
    (v8->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v10);
    if (!v9)
    {
      goto LABEL_80;
    }
  }

  if (a2 == -469794809)
  {
    v11 = *(v7 + 104);
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (a3)
    {
      if (v12)
      {
        *buf = 0;
        _os_log_impl(&dword_296FF7000, v11, OS_LOG_TYPE_DEFAULT, "#I Tx is on from SPMI", buf, 2u);
      }

      if ((capabilities::radio::maverick(v12) & 1) == 0)
      {
        SARModule::processTxOn_sync(v7);
      }
    }

    else
    {
      if (v12)
      {
        *buf = 0;
        _os_log_impl(&dword_296FF7000, v11, OS_LOG_TYPE_DEFAULT, "#I Tx is off from SPMI", buf, 2u);
      }

      if ((capabilities::radio::maverick(v12) & 1) == 0)
      {
        SARModule::processTxOff_sync(v7);
      }
    }

    goto LABEL_80;
  }

  v13 = a2 + 469794805;
  if ((a2 + 469794805) > 2)
  {
    goto LABEL_80;
  }

  v14 = pthread_mutex_lock(&ctu::Singleton<ctu::Gestalt,ctu::Gestalt,ctu::PthreadMutexGuardPolicy<ctu::Gestalt>>::sInstance);
  v15 = off_2A18B7110;
  if (!off_2A18B7110)
  {
    ctu::Gestalt::create_default_global(buf, v14);
    v16 = *buf;
    *buf = 0;
    *&buf[8] = 0;
    v17 = *(&off_2A18B7110 + 1);
    off_2A18B7110 = v16;
    if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v17->__on_zero_shared)(v17);
      std::__shared_weak_count::__release_weak(v17);
    }

    v18 = *&buf[8];
    if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v18->__on_zero_shared)(v18);
      std::__shared_weak_count::__release_weak(v18);
    }

    v15 = off_2A18B7110;
  }

  v19 = *(&off_2A18B7110 + 1);
  __dst[0] = v15;
  __dst[1] = *(&off_2A18B7110 + 1);
  if (*(&off_2A18B7110 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18B7110 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ctu::Gestalt,ctu::Gestalt,ctu::PthreadMutexGuardPolicy<ctu::Gestalt>>::sInstance);
  v20 = (*(*v15 + 96))(v15);
  if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v21 = v20;
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v19);
    v20 = v21;
  }

  if (v20)
  {
    v22 = *(v7 + 104);
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_80;
    }

    *buf = 0;
    v23 = "#I We don't trigger the log dump request from the kernel driver in Restore Mode";
LABEL_30:
    _os_log_impl(&dword_296FF7000, v22, OS_LOG_TYPE_DEFAULT, v23, buf, 2u);
    goto LABEL_80;
  }

  if ((capabilities::radio::dal(v20) & 1) == 0 && (TelephonyUtilIsInternalBuild() & 1) == 0 && (TelephonyUtilIsCarrierBuild() & 1) == 0)
  {
    v22 = *(v7 + 104);
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_80;
    }

    *buf = 0;
    v23 = "#I We don't trigger the log dump request from the kernel driver if it is not Carrier/Internal build";
    goto LABEL_30;
  }

  memset(__dst, 170, sizeof(__dst));
  v24 = sar::toString();
  v25 = strlen(v24);
  if (v25 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v26 = v25;
  if (v25 >= 0x17)
  {
    if ((v25 | 7) == 0x17)
    {
      v28 = 25;
    }

    else
    {
      v28 = (v25 | 7) + 1;
    }

    v27 = operator new(v28);
    __dst[1] = v26;
    __dst[2] = (v28 | 0x8000000000000000);
    __dst[0] = v27;
    goto LABEL_46;
  }

  HIBYTE(__dst[2]) = v25;
  v27 = __dst;
  if (v25)
  {
LABEL_46:
    v25 = memmove(v27, v24, v26);
  }

  *(v26 + v27) = 0;
  if (v13 > 1)
  {
    v31 = *(v7 + 104);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = sar::toString();
      *buf = 136315138;
      *&buf[4] = v32;
      _os_log_impl(&dword_296FF7000, v31, OS_LOG_TYPE_DEFAULT, "#I Detected HSAR error: %s", buf, 0xCu);
    }

    v33 = *(v7 + 304);
    v34 = *(v7 + 312);
    if (v33 == v34)
    {
      goto LABEL_78;
    }

    while (*v33 != a3)
    {
      v33 += 2;
      if (v33 == v34)
      {
        goto LABEL_78;
      }
    }

    v35 = v33[1];
    v36 = sar::toString();
    v37 = strlen(v36);
    if (v37 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v38 = v37;
    if (v37 >= 0x17)
    {
      if ((v37 | 7) == 0x17)
      {
        v42 = 25;
      }

      else
      {
        v42 = (v37 | 7) + 1;
      }

      v39 = operator new(v42);
      __p[1] = v38;
      v45 = v42 | 0x8000000000000000;
      __p[0] = v39;
    }

    else
    {
      HIBYTE(v45) = v37;
      v39 = __p;
      if (!v37)
      {
        goto LABEL_75;
      }
    }

    memmove(v39, v36, v38);
LABEL_75:
    *(v38 + v39) = 0;
    SARModule::dumpLog(v7, __p, v35);
    if ((SHIBYTE(v45) & 0x80000000) == 0)
    {
      goto LABEL_78;
    }

    v30 = __p[0];
    goto LABEL_77;
  }

  if ((capabilities::radio::dal(v25) & 1) == 0 && *(v7 + 328) != 1)
  {
    v40 = *(v7 + 104);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      v41 = __dst;
      if (SHIBYTE(__dst[2]) < 0)
      {
        v41 = __dst[0];
      }

      *buf = 136315394;
      *&buf[4] = v41;
      *&buf[12] = 2080;
      *&buf[14] = "sar-spmi-coredump";
      _os_log_error_impl(&dword_296FF7000, v40, OS_LOG_TYPE_ERROR, "Detected %s, but AP won't trigger the coredump since %s is not found in the boot-args", buf, 0x16u);
    }

    goto LABEL_78;
  }

  v61 = 0u;
  memset(v62, 0, sizeof(v62));
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v52 = 0u;
  v50 = 0u;
  v51 = 0u;
  v29 = __dst;
  if (SHIBYTE(__dst[2]) < 0)
  {
    v29 = __dst[0];
  }

  memset(buf, 0, sizeof(buf));
  snprintf(buf, 0xFFuLL, "%s (0x%x)", v29, a3);
  std::string::basic_string[abi:ne200100]<0>(v46, buf);
  SARModule::dumpLog(v7, v46, 2);
  if (v47 < 0)
  {
    v30 = *v46;
LABEL_77:
    operator delete(v30);
  }

LABEL_78:
  if (SHIBYTE(__dst[2]) < 0)
  {
    operator delete(__dst[0]);
  }

LABEL_80:
  v43 = *MEMORY[0x29EDCA608];
}

void sub_297162870(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a29 < 0)
  {
    operator delete(a24);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void SARModule::processTxOn_sync(SARModule *this)
{
  v35 = *MEMORY[0x29EDCA608];
  v2 = *(this + 13);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(cf[0]) = 0;
    _os_log_impl(&dword_296FF7000, v2, OS_LOG_TYPE_DEFAULT, "#I Tx is on", cf, 2u);
  }

  *(this + 232) = 1;
  v3 = *(this + 20);
  if (v3)
  {
    OBDManager::start(v3, 2000);
  }

  v4 = *(this + 27);
  if (v4)
  {
    HandDetectionManager::setTxState(v4, *(this + 232));
  }

  v5 = xpc_dictionary_create(0, 0, 0);
  if (v5 || (v5 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C26CE60](v5) == MEMORY[0x29EDCAA00])
    {
      xpc_retain(v5);
      v6 = v5;
    }

    else
    {
      v6 = xpc_null_create();
    }
  }

  else
  {
    v6 = xpc_null_create();
    v5 = 0;
  }

  xpc_release(v5);
  v7 = xpc_string_create(*MEMORY[0x29EDBF668]);
  if (!v7)
  {
    v7 = xpc_null_create();
  }

  xpc_dictionary_set_value(v6, *MEMORY[0x29EDBF2A0], v7);
  v8 = xpc_null_create();
  xpc_release(v7);
  xpc_release(v8);
  v33 = 0xAAAAAAAAAAAAAAAALL;
  *object = v6;
  if (v6)
  {
    xpc_retain(v6);
  }

  else
  {
    *object = xpc_null_create();
  }

  xpc::bridge(cf, object, v9);
  v10 = cf[0];
  if (!cf[0] || (v11 = CFGetTypeID(cf[0]), v11 != CFDictionaryGetTypeID()))
  {
    v33 = 0;
    v12 = 1;
    v13 = cf[0];
    if (!cf[0])
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v33 = v10;
  CFRetain(v10);
  v12 = 0;
  v13 = cf[0];
  if (cf[0])
  {
LABEL_23:
    CFRelease(v13);
  }

LABEL_24:
  xpc_release(*object);
  if (v12)
  {
    v14 = *(this + 13);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_49;
    }

    v15 = MEMORY[0x29C26CD90](v6);
    memset(cf, 170, 24);
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
        v26 = 25;
      }

      else
      {
        v26 = (v16 | 7) + 1;
      }

      v18 = operator new(v26);
      cf[1] = v17;
      cf[2] = (v26 | 0x8000000000000000);
      cf[0] = v18;
    }

    else
    {
      HIBYTE(cf[2]) = v16;
      v18 = cf;
      if (!v16)
      {
LABEL_55:
        *(v17 + v18) = 0;
        free(v15);
        v27 = cf;
        if (SHIBYTE(cf[2]) < 0)
        {
          v27 = cf[0];
        }

        *object = 136315138;
        *&object[4] = v27;
        _os_log_error_impl(&dword_296FF7000, v14, OS_LOG_TYPE_ERROR, "Failed to convert the transmit State data and no sending the message: %s", object, 0xCu);
        if (SHIBYTE(cf[2]) < 0)
        {
          operator delete(cf[0]);
        }

        v23 = v33;
        if (!v33)
        {
          goto LABEL_49;
        }

LABEL_48:
        CFRelease(v23);
        goto LABEL_49;
      }
    }

    memcpy(v18, v15, v17);
    goto LABEL_55;
  }

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
      v24 = 25;
    }

    else
    {
      v24 = (v20 | 7) + 1;
    }

    v22 = operator new(v24);
    __dst[1] = v21;
    v32 = v24 | 0x8000000000000000;
    __dst[0] = v22;
LABEL_39:
    memmove(v22, v19, v21);
    *(v21 + v22) = 0;
    v23 = v33;
    v30 = v33;
    if (!v33)
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

  HIBYTE(v32) = v20;
  v22 = __dst;
  if (v20)
  {
    goto LABEL_39;
  }

  LOBYTE(__dst[0]) = 0;
  v23 = v33;
  v30 = v33;
  if (v33)
  {
LABEL_40:
    CFRetain(v23);
  }

LABEL_41:
  aBlock = 0;
  Service::broadcastEvent(this, __dst, &v30, &aBlock);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v30)
  {
    CFRelease(v30);
  }

  if (SHIBYTE(v32) < 0)
  {
    operator delete(__dst[0]);
  }

  if (v23)
  {
    goto LABEL_48;
  }

LABEL_49:
  xpc_release(v6);
  v25 = *MEMORY[0x29EDCA608];
}

void sub_297162D24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *aBlock, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void SARModule::processTxOff_sync(SARModule *this)
{
  v53[1] = *MEMORY[0x29EDCA608];
  v2 = *(this + 13);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_296FF7000, v2, OS_LOG_TYPE_DEFAULT, "#I Tx is off", buf, 2u);
  }

  *(this + 232) = 0;
  v3 = *(this + 20);
  if (v3)
  {
    OBDManager::stop(v3);
  }

  v4 = *(this + 27);
  if (!v4)
  {
LABEL_30:
    v20 = xpc_dictionary_create(0, 0, 0);
    if (v20 || (v20 = xpc_null_create()) != 0)
    {
      if (MEMORY[0x29C26CE60](v20) == MEMORY[0x29EDCAA00])
      {
        xpc_retain(v20);
        v21 = v20;
      }

      else
      {
        v21 = xpc_null_create();
      }
    }

    else
    {
      v21 = xpc_null_create();
      v20 = 0;
    }

    xpc_release(v20);
    v24 = xpc_string_create(*MEMORY[0x29EDBF308]);
    if (!v24)
    {
      v24 = xpc_null_create();
    }

    xpc_dictionary_set_value(v21, *MEMORY[0x29EDBF2A0], v24);
    v25 = xpc_null_create();
    xpc_release(v24);
    xpc_release(v25);
    v53[0] = 0xAAAAAAAAAAAAAAAALL;
    *&v52 = v21;
    if (v21)
    {
      xpc_retain(v21);
    }

    else
    {
      *&v52 = xpc_null_create();
    }

    xpc::bridge(buf, &v52, v26);
    v27 = *buf;
    if (*buf && (v28 = CFGetTypeID(*buf), v28 == CFDictionaryGetTypeID()))
    {
      v53[0] = v27;
      CFRetain(v27);
      v29 = 0;
      v30 = *buf;
      if (!*buf)
      {
LABEL_50:
        xpc_release(v52);
        if (v29)
        {
          v31 = *(this + 13);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            v32 = MEMORY[0x29C26CD90](v21);
            memset(buf, 170, 24);
            v33 = strlen(v32);
            if (v33 > 0x7FFFFFFFFFFFFFF7)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            v34 = v33;
            if (v33 >= 0x17)
            {
              if ((v33 | 7) == 0x17)
              {
                v43 = 25;
              }

              else
              {
                v43 = (v33 | 7) + 1;
              }

              v35 = operator new(v43);
              *&buf[8] = v34;
              *&buf[16] = v43 | 0x8000000000000000;
              *buf = v35;
            }

            else
            {
              buf[23] = v33;
              v35 = buf;
              if (!v33)
              {
                goto LABEL_83;
              }
            }

            memcpy(v35, v32, v34);
LABEL_83:
            *(v35 + v34) = 0;
            free(v32);
            v44 = buf;
            if ((buf[23] & 0x80u) != 0)
            {
              v44 = *buf;
            }

            LODWORD(v52) = 136315138;
            *(&v52 + 4) = v44;
            _os_log_error_impl(&dword_296FF7000, v31, OS_LOG_TYPE_ERROR, "Failed to convert the transmit State data and no sending the message: %s", &v52, 0xCu);
            if (buf[23] < 0)
            {
              operator delete(*buf);
            }
          }

LABEL_76:
          xpc_release(v21);
          goto LABEL_77;
        }

        v36 = *MEMORY[0x29EDBF348];
        v37 = strlen(*MEMORY[0x29EDBF348]);
        if (v37 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v38 = v37;
        if (v37 >= 0x17)
        {
          if ((v37 | 7) == 0x17)
          {
            v41 = 25;
          }

          else
          {
            v41 = (v37 | 7) + 1;
          }

          v39 = operator new(v41);
          __dst[1] = v38;
          v48 = v41 | 0x8000000000000000;
          __dst[0] = v39;
        }

        else
        {
          HIBYTE(v48) = v37;
          v39 = __dst;
          if (!v37)
          {
            LOBYTE(__dst[0]) = 0;
            v40 = v53[0];
            cf = v53[0];
            if (!v53[0])
            {
LABEL_67:
              aBlock = 0;
              Service::broadcastEvent(this, __dst, &cf, &aBlock);
              if (aBlock)
              {
                _Block_release(aBlock);
              }

              if (cf)
              {
                CFRelease(cf);
              }

              if (SHIBYTE(v48) < 0)
              {
                operator delete(__dst[0]);
                if (!v40)
                {
                  goto LABEL_76;
                }
              }

              else if (!v40)
              {
                goto LABEL_76;
              }

              CFRelease(v40);
              goto LABEL_76;
            }

LABEL_66:
            CFRetain(v40);
            goto LABEL_67;
          }
        }

        memmove(v39, v36, v38);
        *(v38 + v39) = 0;
        v40 = v53[0];
        cf = v53[0];
        if (!v53[0])
        {
          goto LABEL_67;
        }

        goto LABEL_66;
      }
    }

    else
    {
      v53[0] = 0;
      v29 = 1;
      v30 = *buf;
      if (!*buf)
      {
        goto LABEL_50;
      }
    }

    CFRelease(v30);
    goto LABEL_50;
  }

  HandDetectionManager::setTxState(v4, *(this + 232));
  *(this + 136) = 0;
  v5 = *(this + 13);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = 0;
    _os_log_impl(&dword_296FF7000, v5, OS_LOG_TYPE_DEFAULT, "#I Sending Grip State due to Tx is off: 0x%x\n", buf, 8u);
  }

  v6 = pthread_mutex_lock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
  v7 = off_2A18B7430;
  if (!off_2A18B7430)
  {
    AppleSARHelper::create_default_global(buf, v6);
    v8 = *buf;
    *buf = 0;
    *&buf[8] = 0;
    v9 = *(&off_2A18B7430 + 1);
    off_2A18B7430 = v8;
    if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
    }

    v10 = *&buf[8];
    if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
    }

    v7 = off_2A18B7430;
  }

  v11 = *(&off_2A18B7430 + 1);
  *&v52 = v7;
  *(&v52 + 1) = *(&off_2A18B7430 + 1);
  if (*(&off_2A18B7430 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18B7430 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
  v49 = *(this + 136);
  if (*(v7 + 1))
  {
    *buf = 0;
    v53[0] = 0;
    v50 = 1;
    v12 = AppleSARHelper::callUserClientMethod(v7, 9, buf, 1, &v49, 1, v53, &v50, &v49, 1uLL);
    if (!v11)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v12 = 0;
    if (!v11)
    {
      goto LABEL_23;
    }
  }

  if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v22 = v12;
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
    if (v22)
    {
      goto LABEL_24;
    }

    goto LABEL_36;
  }

LABEL_23:
  if (v12)
  {
LABEL_24:
    if (*(this + 137) != *(this + 136) || !*(this + 34))
    {
      v13 = *(this + 10);
      if (!v13 || (v14 = *(this + 9), (v15 = std::__shared_weak_count::lock(v13)) == 0))
      {
        std::__throw_bad_weak_ptr[abi:ne200100]();
      }

      v16 = v15;
      v17 = operator new(8uLL);
      *v17 = this;
      v18 = *(this + 11);
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      v19 = operator new(0x18uLL);
      *v19 = v17;
      v19[1] = v14;
      v19[2] = v16;
      dispatch_async_f(v18, v19, dispatch::async<void ctu::SharedSynchronizable<SARModule>::execute_wrapped<SARModule::processTxOff_sync(void)::$_0>(SARModule::processTxOff_sync(void)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<SARModule::processTxOff_sync(void)::$_0,dispatch_queue_s *::default_delete<SARModule::processTxOff_sync(void)::$_0>>)::{lambda(void *)#1}::__invoke);
      if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v16->__on_zero_shared)(v16);
        std::__shared_weak_count::__release_weak(v16);
      }
    }

    goto LABEL_30;
  }

LABEL_36:
  v23 = *(this + 13);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_296FF7000, v23, OS_LOG_TYPE_ERROR, "Failed to get SAR Fusion State!", buf, 2u);
  }

LABEL_77:
  v42 = *MEMORY[0x29EDCA608];
}

void sub_2971634E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *aBlock, char a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void SARModule::dumpLog(void *a1, const char *a2, int a3)
{
  *&v37[5] = *MEMORY[0x29EDCA608];
  v6 = xpc_dictionary_create(0, 0, 0);
  if (v6 || (v6 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C26CE60](v6) == MEMORY[0x29EDCAA00])
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
  v8 = xpc_int64_create(7);
  if (!v8)
  {
    v8 = xpc_null_create();
  }

  xpc_dictionary_set_value(v7, *MEMORY[0x29EDBE578], v8);
  v9 = xpc_null_create();
  xpc_release(v8);
  xpc_release(v9);
  v10 = xpc_string_create(*MEMORY[0x29EDBF750]);
  if (!v10)
  {
    v10 = xpc_null_create();
  }

  xpc_dictionary_set_value(v7, *MEMORY[0x29EDBEEE0], v10);
  v11 = xpc_null_create();
  xpc_release(v10);
  xpc_release(v11);
  memset(&v35, 0, sizeof(v35));
  v12 = a1[13];
  if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_20;
  }

  if (a3 == 2)
  {
    v13 = operator new(0x28uLL);
    *__p = v13;
    *&__p[8] = xmmword_29722D1B0;
    qmemcpy(v13, "Dump coredump along with telephony logs", 39);
    v14 = v13 + 39;
  }

  else if (a3 == 1)
  {
    v13 = operator new(0x20uLL);
    *__p = v13;
    *&__p[8] = xmmword_297227A10;
    qmemcpy(v13, "Dump only telephony logs", 24);
    v14 = v13 + 24;
  }

  else if (a3)
  {
    __p[23] = 18;
    qmemcpy(__p, "Undefined Behavior", 18);
    v13 = __p;
    v14 = &__p[18];
  }

  else
  {
    v13 = operator new(0x20uLL);
    *__p = v13;
    *&__p[8] = xmmword_2972256B0;
    qmemcpy(v13, "No Action for dumping log", 25);
    v14 = v13 + 25;
  }

  *v14 = 0;
  *buf = 136315138;
  *v37 = v13;
  _os_log_impl(&dword_296FF7000, v12, OS_LOG_TYPE_DEFAULT, "#I Behavior: %s", buf, 0xCu);
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
    if (a3 != 2)
    {
LABEL_21:
      if (a3 != 1)
      {
        goto LABEL_40;
      }

      std::string::__assign_external(&v35, *MEMORY[0x29EDBEBE0]);
      Timestamp::Timestamp(buf);
      Timestamp::asString(buf, 0, 9, __p);
      if (__p[23] >= 0)
      {
        v15 = __p;
      }

      else
      {
        v15 = *__p;
      }

      v16 = xpc_string_create(v15);
      if (!v16)
      {
        v16 = xpc_null_create();
      }

      xpc_dictionary_set_value(v7, *MEMORY[0x29EDBE930], v16);
      v17 = xpc_null_create();
      xpc_release(v16);
      xpc_release(v17);
      if ((__p[23] & 0x80000000) != 0)
      {
        operator delete(*__p);
        std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(buf, *&v37[1]);
        if ((a2[23] & 0x80000000) == 0)
        {
          goto LABEL_29;
        }
      }

      else
      {
        std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(buf, *&v37[1]);
        if ((a2[23] & 0x80000000) == 0)
        {
LABEL_29:
          v18 = xpc_string_create(a2);
          if (!v18)
          {
            v18 = xpc_null_create();
          }

          xpc_dictionary_set_value(v7, *MEMORY[0x29EDBEF60], v18);
          v19 = xpc_null_create();
          xpc_release(v18);
          xpc_release(v19);
          goto LABEL_40;
        }
      }

      a2 = *a2;
      goto LABEL_29;
    }
  }

  else
  {
LABEL_20:
    if (a3 != 2)
    {
      goto LABEL_21;
    }
  }

  std::string::__assign_external(&v35, *MEMORY[0x29EDBEAA8]);
  v20 = xpc_string_create(*MEMORY[0x29EDBEB60]);
  if (!v20)
  {
    v20 = xpc_null_create();
  }

  xpc_dictionary_set_value(v7, *MEMORY[0x29EDBEB00], v20);
  v21 = xpc_null_create();
  xpc_release(v20);
  xpc_release(v21);
  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  v22 = xpc_string_create(a2);
  if (!v22)
  {
    v22 = xpc_null_create();
  }

  xpc_dictionary_set_value(v7, *MEMORY[0x29EDBED88], v22);
  v23 = xpc_null_create();
  xpc_release(v22);
  xpc_release(v23);
LABEL_40:
  size = HIBYTE(v35.__r_.__value_.__r.__words[2]);
  v25 = HIBYTE(v35.__r_.__value_.__r.__words[2]);
  if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v35.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    v26 = a1[10];
    if (!v26 || (v27 = a1[9], (v28 = std::__shared_weak_count::lock(v26)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v29 = v28;
    atomic_fetch_add_explicit(&v28->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    if (atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      *__p = 0;
      *&__p[8] = std::__shared_weak_count::lock(v28);
      if (*&__p[8])
      {
        goto LABEL_47;
      }
    }

    else
    {
      (v28->__on_zero_shared)(v28);
      std::__shared_weak_count::__release_weak(v29);
      *__p = 0;
      *&__p[8] = std::__shared_weak_count::lock(v29);
      if (*&__p[8])
      {
LABEL_47:
        object = v7;
        *__p = v27;
        if (v7)
        {
LABEL_48:
          xpc_retain(v7);
          goto LABEL_52;
        }

LABEL_51:
        object = xpc_null_create();
LABEL_52:
        v32 = 0;
        Service::runCommand(v27, &v35, &object, &v32);
        xpc_release(object);
        object = 0;
        v30 = *&__p[8];
        if (*&__p[8] && !atomic_fetch_add((*&__p[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          (v30->__on_zero_shared)(v30);
          std::__shared_weak_count::__release_weak(v30);
        }

        std::__shared_weak_count::__release_weak(v29);
        v25 = HIBYTE(v35.__r_.__value_.__r.__words[2]);
        goto LABEL_56;
      }
    }

    v27 = 0;
    object = v7;
    if (v7)
    {
      goto LABEL_48;
    }

    goto LABEL_51;
  }

LABEL_56:
  if (v25 < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  xpc_release(v7);
  v31 = *MEMORY[0x29EDCA608];
}

void sub_297163BF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, char a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20, uint64_t a21)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void ___ZN9SARModule20initializeAudio_syncEv_block_invoke(void *a1, int a2)
{
  v14 = *MEMORY[0x29EDCA608];
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
        *(v5 + 135) = a2;
        v9 = *(v5 + 104);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = "OFF";
          if (a2)
          {
            v10 = "ON";
          }

          v12 = 136315138;
          v13 = v10;
          _os_log_impl(&dword_296FF7000, v9, OS_LOG_TYPE_DEFAULT, "#I Received audio speaker callback with state: %s", &v12, 0xCu);
        }

        SARModule::sendSpeakerState_sync(v5);
      }
    }
  }

  v11 = *MEMORY[0x29EDCA608];
}

void SARModule::sendSpeakerState_sync(SARModule *this)
{
  v15[1] = *MEMORY[0x29EDCA608];
  v2 = pthread_mutex_lock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
  v3 = off_2A18B7430;
  if (!off_2A18B7430)
  {
    AppleSARHelper::create_default_global(buf, v2);
    v4 = *buf;
    memset(buf, 0, sizeof(buf));
    v5 = *(&off_2A18B7430 + 1);
    off_2A18B7430 = v4;
    if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    v6 = *&buf[8];
    if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }

    v3 = off_2A18B7430;
  }

  v7 = *(&off_2A18B7430 + 1);
  if (*(&off_2A18B7430 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18B7430 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
  v12 = *(this + 135);
  if (*(v3 + 1))
  {
    *buf = 0;
    v15[0] = 0;
    v13 = 1;
    v8 = AppleSARHelper::callUserClientMethod(v3, 8, buf, 1, &v12, 1, v15, &v13, &v12, 1uLL);
    if (!v7)
    {
LABEL_16:
      if (v8)
      {
        goto LABEL_19;
      }

      goto LABEL_17;
    }
  }

  else
  {
    v8 = 0;
    if (!v7)
    {
      goto LABEL_16;
    }
  }

  if (atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_16;
  }

  v11 = v8;
  (v7->__on_zero_shared)(v7);
  std::__shared_weak_count::__release_weak(v7);
  if (v11)
  {
    goto LABEL_19;
  }

LABEL_17:
  v9 = *(this + 13);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_296FF7000, v9, OS_LOG_TYPE_ERROR, "Failed to send speaker state", buf, 2u);
  }

LABEL_19:
  v10 = *MEMORY[0x29EDCA608];
}

void ___ZN9SARModule18initializeOBD_syncEv_block_invoke(void *a1, char a2, char a3)
{
  v32[1] = *MEMORY[0x29EDCA608];
  v4 = a1[6];
  if (!v4)
  {
    goto LABEL_33;
  }

  v7 = a1[4];
  v8 = std::__shared_weak_count::lock(v4);
  if (!v8)
  {
    goto LABEL_33;
  }

  v9 = a1[5];
  if (atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (!v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v10 = v8;
    (v8->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v10);
    if (!v9)
    {
      goto LABEL_33;
    }
  }

  *(v7 + 132) = a2 & 0xF | (16 * a3);
  v11 = *(v7 + 104);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    *&buf[4] = a2 & 0xF;
    *&buf[8] = 1024;
    *&buf[10] = a3 & 0xF;
    _os_log_impl(&dword_296FF7000, v11, OS_LOG_TYPE_DEFAULT, "#I Sending SAR Selection: 0x%x, Tuner State: 0x%x\n", buf, 0xEu);
  }

  v12 = pthread_mutex_lock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
  v13 = off_2A18B7430;
  if (!off_2A18B7430)
  {
    AppleSARHelper::create_default_global(buf, v12);
    v14 = *buf;
    memset(buf, 0, sizeof(buf));
    v15 = *(&off_2A18B7430 + 1);
    off_2A18B7430 = v14;
    if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v15->__on_zero_shared)(v15);
      std::__shared_weak_count::__release_weak(v15);
    }

    v16 = *&buf[8];
    if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v16->__on_zero_shared)(v16);
      std::__shared_weak_count::__release_weak(v16);
    }

    v13 = off_2A18B7430;
  }

  v17 = *(&off_2A18B7430 + 1);
  if (*(&off_2A18B7430 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18B7430 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
  v29 = *(v7 + 132);
  if (*(v13 + 1))
  {
    *buf = 0;
    v32[0] = 0;
    v30 = 1;
    v18 = AppleSARHelper::callUserClientMethod(v13, 4, buf, 1, &v29, 1, v32, &v30, &v29, 1uLL);
    if (!v17)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v18 = 0;
    if (!v17)
    {
      goto LABEL_25;
    }
  }

  if (!atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v19 = v18;
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
    v18 = v19;
  }

LABEL_25:
  if ((v18 & 1) == 0 && (v20 = *(v7 + 104), os_log_type_enabled(v20, OS_LOG_TYPE_ERROR)))
  {
    *buf = 0;
    _os_log_error_impl(&dword_296FF7000, v20, OS_LOG_TYPE_ERROR, "Failed to set SAR Fusion!", buf, 2u);
    if (*(v7 + 133) == *(v7 + 132))
    {
LABEL_28:
      if (*(v7 + 272))
      {
        goto LABEL_33;
      }
    }
  }

  else if (*(v7 + 133) == *(v7 + 132))
  {
    goto LABEL_28;
  }

  v21 = *(v7 + 80);
  if (!v21 || (v22 = *(v7 + 72), (v23 = std::__shared_weak_count::lock(v21)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v24 = v23;
  v25 = operator new(8uLL);
  *v25 = v7;
  v26 = *(v7 + 88);
  atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
  v27 = operator new(0x18uLL);
  *v27 = v25;
  v27[1] = v22;
  v27[2] = v24;
  dispatch_async_f(v26, v27, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI9SARModuleE15execute_wrappedIZZNS3_18initializeOBD_syncEvEUb5_E4__13EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_);
  if (!atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v24->__on_zero_shared)(v24);
    std::__shared_weak_count::__release_weak(v24);
  }

LABEL_33:
  v28 = *MEMORY[0x29EDCA608];
}

void ___ZN9SARModule24initializeAccessory_syncEv_block_invoke(void *a1, int a2)
{
  v27[1] = *MEMORY[0x29EDCA608];
  v3 = a1[6];
  if (!v3)
  {
    goto LABEL_30;
  }

  v5 = a1[4];
  v6 = std::__shared_weak_count::lock(v3);
  if (!v6)
  {
    goto LABEL_30;
  }

  v7 = a1[5];
  if (atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (!v7)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v8 = v6;
    (v6->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v8);
    if (!v7)
    {
LABEL_30:
      v22 = *MEMORY[0x29EDCA608];
      return;
    }
  }

  if (a2)
  {
    v9 = *(v5 + 236);
    v10 = *(v5 + 240) | a2;
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  *(v5 + 236) = v9;
  *(v5 + 240) = v10;
  v11 = v9 | v10;
  *(v5 + 128) = v9 | v10;
  v12 = *(v5 + 104);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v11;
    _os_log_impl(&dword_296FF7000, v12, OS_LOG_TYPE_DEFAULT, "#I [Legacy] Sending accessory state to driver: 0x%x", buf, 8u);
  }

  v13 = pthread_mutex_lock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
  v14 = off_2A18B7430;
  if (!off_2A18B7430)
  {
    AppleSARHelper::create_default_global(buf, v13);
    v15 = *buf;
    memset(buf, 0, sizeof(buf));
    v16 = *(&off_2A18B7430 + 1);
    off_2A18B7430 = v15;
    if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v16->__on_zero_shared)(v16);
      std::__shared_weak_count::__release_weak(v16);
    }

    v17 = *&buf[8];
    if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v17->__on_zero_shared)(v17);
      std::__shared_weak_count::__release_weak(v17);
    }

    v14 = off_2A18B7430;
  }

  v18 = *(&off_2A18B7430 + 1);
  if (*(&off_2A18B7430 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18B7430 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
  v24 = *(v5 + 128);
  if (*(v14 + 1))
  {
    *buf = 0;
    v27[0] = 0;
    v25 = 1;
    v19 = AppleSARHelper::callUserClientMethod(v14, 3, buf, 1, &v24, 4, v27, &v25, &v24, 4uLL);
    if (!v18)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v19 = 0;
    if (!v18)
    {
      goto LABEL_28;
    }
  }

  if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v20 = v19;
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
    v19 = v20;
  }

LABEL_28:
  if (v19)
  {
    goto LABEL_30;
  }

  v21 = *(v5 + 104);
  if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_30;
  }

  *buf = 0;
  _os_log_error_impl(&dword_296FF7000, v21, OS_LOG_TYPE_ERROR, "Failed to set SAR Fusion State!", buf, 2u);
  v23 = *MEMORY[0x29EDCA608];
}

void ___ZN9SARModule26initializePowerSource_syncEv_block_invoke(void *a1, int a2)
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

      *(v5 + 52) = a2;

      SARModule::sendPowerSource_sync(v5);
    }
  }
}

void SARModule::sendPowerSource_sync(SARModule *this)
{
  v17[1] = *MEMORY[0x29EDCA608];
  v2 = *(this + 52);
  *(this + 138) = v2;
  v3 = *(this + 13);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v2;
    _os_log_impl(&dword_296FF7000, v3, OS_LOG_TYPE_DEFAULT, "#I Sending Power Source: 0x%x\n", buf, 8u);
  }

  v4 = pthread_mutex_lock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
  v5 = off_2A18B7430;
  if (!off_2A18B7430)
  {
    AppleSARHelper::create_default_global(buf, v4);
    v6 = *buf;
    memset(buf, 0, sizeof(buf));
    v7 = *(&off_2A18B7430 + 1);
    off_2A18B7430 = v6;
    if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }

    v8 = *&buf[8];
    if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }

    v5 = off_2A18B7430;
  }

  v9 = *(&off_2A18B7430 + 1);
  if (*(&off_2A18B7430 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18B7430 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
  v14 = *(this + 138);
  if (*(v5 + 1))
  {
    *buf = 0;
    v17[0] = 0;
    v15 = 1;
    v10 = AppleSARHelper::callUserClientMethod(v5, 10, buf, 1, &v14, 1, v17, &v15, &v14, 1uLL);
    if (!v9)
    {
LABEL_18:
      if (v10)
      {
        goto LABEL_21;
      }

      goto LABEL_19;
    }
  }

  else
  {
    v10 = 0;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_18;
  }

  v13 = v10;
  (v9->__on_zero_shared)(v9);
  std::__shared_weak_count::__release_weak(v9);
  if (v13)
  {
    goto LABEL_21;
  }

LABEL_19:
  v11 = *(this + 13);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_296FF7000, v11, OS_LOG_TYPE_ERROR, "Failed to send power state", buf, 2u);
  }

LABEL_21:
  v12 = *MEMORY[0x29EDCA608];
}

void ___ZN9SARModule32initializeVoIPCallDetection_syncEv_block_invoke(void *a1, int a2, int a3, uint64_t a4)
{
  v29 = *MEMORY[0x29EDCA608];
  v5 = a1[6];
  if (!v5)
  {
    goto LABEL_25;
  }

  v9 = a1[4];
  v10 = std::__shared_weak_count::lock(v5);
  if (!v10)
  {
    goto LABEL_25;
  }

  v11 = a1[5];
  if (atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (!v11)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v12 = v10;
    (v10->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v12);
    if (!v11)
    {
      goto LABEL_25;
    }
  }

  v13 = v9[13];
  if (!a4)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v23) = 0;
      _os_log_error_impl(&dword_296FF7000, v13, OS_LOG_TYPE_ERROR, "No provider ID. Reject this call", &v23, 2u);
      v18 = *MEMORY[0x29EDCA608];
      return;
    }

    goto LABEL_25;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = "NO";
    if (a2)
    {
      v15 = "YES";
    }

    else
    {
      v15 = "NO";
    }

    v23 = 136315650;
    v24 = a4;
    v25 = 2080;
    v26 = v15;
    if (a3)
    {
      v14 = "YES";
    }

    v27 = 2080;
    v28 = v14;
    _os_log_impl(&dword_296FF7000, v13, OS_LOG_TYPE_DEFAULT, "#I %s: callStarting: %s, callActive: %s", &v23, 0x20u);
  }

  if (a2 && (a3 & 1) == 0)
  {
    v16 = v9;
    v17 = 1;
LABEL_23:
    SARModule::processCallStatus(v16, v17);
    v19 = *MEMORY[0x29EDCA608];
    return;
  }

  if ((a2 & 1) == 0 && (a3 & 1) == 0)
  {
    v16 = v9;
    v17 = 0;
    goto LABEL_23;
  }

  v20 = v9[13];
  if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
LABEL_25:
    v21 = *MEMORY[0x29EDCA608];
    return;
  }

  LOWORD(v23) = 0;
  _os_log_debug_impl(&dword_296FF7000, v20, OS_LOG_TYPE_DEBUG, "#D No matching condition to check FT Call status", &v23, 2u);
  v22 = *MEMORY[0x29EDCA608];
}

void SARModule::processCallStatus(SARModule *this, char a2)
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
  dispatch_async_f(v9, v10, dispatch::async<void ctu::SharedSynchronizable<SARModule>::execute_wrapped<SARModule::processCallStatus(BOOL)::$_0>(SARModule::processCallStatus(BOOL)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<SARModule::processCallStatus(BOOL)::$_0,dispatch_queue_s *::default_delete<SARModule::processCallStatus(BOOL)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);

    std::__shared_weak_count::__release_weak(v7);
  }
}

void SARModule::sendCurrentState_sync(SARModule *this)
{
  v84[1] = *MEMORY[0x29EDCA608];
  v2 = *(this + 13);
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    *buf = 0;
    _os_log_impl(&dword_296FF7000, v2, OS_LOG_TYPE_DEFAULT, "#I Processing Cached Values", buf, 2u);
  }

  capabilities::abs::supportedSARFeatures(v3);
  if (capabilities::abs::operator&())
  {
    BYTE2(v81) = 0;
    LOWORD(v81) = 0;
    v4 = pthread_mutex_lock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
    v5 = off_2A18B7430;
    if (!off_2A18B7430)
    {
      AppleSARHelper::create_default_global(buf, v4);
      v6 = *buf;
      memset(buf, 0, sizeof(buf));
      v7 = *(&off_2A18B7430 + 1);
      off_2A18B7430 = v6;
      if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v7->__on_zero_shared)(v7);
        std::__shared_weak_count::__release_weak(v7);
      }

      v8 = *&buf[8];
      if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v8->__on_zero_shared)(v8);
        std::__shared_weak_count::__release_weak(v8);
      }

      v5 = off_2A18B7430;
    }

    v9 = *(&off_2A18B7430 + 1);
    v79 = v5;
    v80 = *(&off_2A18B7430 + 1);
    if (*(&off_2A18B7430 + 1))
    {
      atomic_fetch_add_explicit((*(&off_2A18B7430 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
    if (*(v5 + 1))
    {
      *buf = 3;
      v84[0] = 0;
      v82 = 1;
      v10 = AppleSARHelper::callUserClientMethod(v5, 33, buf, 1, &v81, 3, v84, &v82, &v81, 3uLL);
      if (!v9)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v10 = 0;
      if (!v9)
      {
        goto LABEL_19;
      }
    }

    if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v20 = v10;
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
      if (v20)
      {
LABEL_20:
        v11 = *(this + 10);
        if (!v11 || (v12 = *(this + 9), (v13 = std::__shared_weak_count::lock(v11)) == 0))
        {
          std::__throw_bad_weak_ptr[abi:ne200100]();
        }

        v14 = v13;
        p_shared_weak_owners = &v13->__shared_weak_owners_;
        atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v13->__on_zero_shared)(v13);
          std::__shared_weak_count::__release_weak(v14);
        }

        v16 = *(this + 31);
        v17 = *(&v81 + 1);
        aBlock[0] = MEMORY[0x29EDCA5F8];
        aBlock[1] = 3321888768;
        aBlock[2] = ___ZN9SARModule21sendCurrentState_syncEv_block_invoke;
        aBlock[3] = &__block_descriptor_59_e8_40c33_ZTSNSt3__18weak_ptrI9SARModuleEE_e21_v20__0B8_object__v_12l;
        aBlock[4] = this;
        aBlock[5] = v12;
        v74 = v14;
        atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
        v75 = v81;
        v76 = BYTE2(v81);
        v18 = _Block_copy(aBlock);
        v19 = *(this + 11);
        if (v19)
        {
          dispatch_retain(*(this + 11));
        }

        v77 = v18;
        object = v19;
        (*(*v16 + 16))(v16, v17, &v77);
        if (object)
        {
          dispatch_release(object);
        }

        if (v77)
        {
          _Block_release(v77);
        }

        if (v74)
        {
          std::__shared_weak_count::__release_weak(v74);
        }

        std::__shared_weak_count::__release_weak(v14);
        goto LABEL_36;
      }

      goto LABEL_34;
    }

LABEL_19:
    if (v10)
    {
      goto LABEL_20;
    }

LABEL_34:
    v21 = *(this + 13);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_296FF7000, v21, OS_LOG_TYPE_ERROR, "Failed to get SAR transition time!", buf, 2u);
    }
  }

LABEL_36:
  v22 = pthread_mutex_lock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
  v23 = off_2A18B7430;
  if (!off_2A18B7430)
  {
    AppleSARHelper::create_default_global(buf, v22);
    v24 = *buf;
    memset(buf, 0, sizeof(buf));
    v25 = *(&off_2A18B7430 + 1);
    off_2A18B7430 = v24;
    if (v25 && !atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v25->__on_zero_shared)(v25);
      std::__shared_weak_count::__release_weak(v25);
    }

    v26 = *&buf[8];
    if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v26->__on_zero_shared)(v26);
      std::__shared_weak_count::__release_weak(v26);
    }

    v23 = off_2A18B7430;
  }

  v27 = *(&off_2A18B7430 + 1);
  v79 = v23;
  v80 = *(&off_2A18B7430 + 1);
  if (*(&off_2A18B7430 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18B7430 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
  v81 = *(this + 32);
  if (*(v23 + 1))
  {
    *buf = 0;
    v84[0] = 0;
    v82 = 1;
    v28 = AppleSARHelper::callUserClientMethod(v23, 3, buf, 1, &v81, 4, v84, &v82, &v81, 4uLL);
    if (!v27)
    {
LABEL_51:
      if (v28)
      {
        goto LABEL_52;
      }

LABEL_66:
      v37 = *(this + 13);
      if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_152;
      }

      *buf = 0;
      v38 = "Failed to send accessory state";
LABEL_151:
      _os_log_error_impl(&dword_296FF7000, v37, OS_LOG_TYPE_ERROR, v38, buf, 2u);
      goto LABEL_152;
    }
  }

  else
  {
    v28 = 0;
    if (!v27)
    {
      goto LABEL_51;
    }
  }

  if (atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_51;
  }

  v36 = v28;
  (v27->__on_zero_shared)(v27);
  std::__shared_weak_count::__release_weak(v27);
  if ((v36 & 1) == 0)
  {
    goto LABEL_66;
  }

LABEL_52:
  v29 = pthread_mutex_lock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
  v30 = off_2A18B7430;
  if (!off_2A18B7430)
  {
    AppleSARHelper::create_default_global(buf, v29);
    v31 = *buf;
    memset(buf, 0, sizeof(buf));
    v32 = *(&off_2A18B7430 + 1);
    off_2A18B7430 = v31;
    if (v32 && !atomic_fetch_add(&v32->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v32->__on_zero_shared)(v32);
      std::__shared_weak_count::__release_weak(v32);
    }

    v33 = *&buf[8];
    if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v33->__on_zero_shared)(v33);
      std::__shared_weak_count::__release_weak(v33);
    }

    v30 = off_2A18B7430;
  }

  v34 = *(&off_2A18B7430 + 1);
  v79 = v30;
  v80 = *(&off_2A18B7430 + 1);
  if (*(&off_2A18B7430 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18B7430 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
  LOBYTE(v81) = *(this + 132);
  if (*(v30 + 1))
  {
    *buf = 0;
    v84[0] = 0;
    v82 = 1;
    v35 = AppleSARHelper::callUserClientMethod(v30, 4, buf, 1, &v81, 1, v84, &v82, &v81, 1uLL);
    if (!v34)
    {
LABEL_70:
      if (v35)
      {
        goto LABEL_71;
      }

      goto LABEL_85;
    }
  }

  else
  {
    v35 = 0;
    if (!v34)
    {
      goto LABEL_70;
    }
  }

  if (atomic_fetch_add(&v34->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_70;
  }

  v46 = v35;
  (v34->__on_zero_shared)(v34);
  std::__shared_weak_count::__release_weak(v34);
  if ((v46 & 1) == 0)
  {
LABEL_85:
    v37 = *(this + 13);
    if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_152;
    }

    *buf = 0;
    v38 = "Failed to send sar_selection and tuner state";
    goto LABEL_151;
  }

LABEL_71:
  v39 = pthread_mutex_lock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
  v40 = off_2A18B7430;
  if (!off_2A18B7430)
  {
    AppleSARHelper::create_default_global(buf, v39);
    v41 = *buf;
    memset(buf, 0, sizeof(buf));
    v42 = *(&off_2A18B7430 + 1);
    off_2A18B7430 = v41;
    if (v42 && !atomic_fetch_add(&v42->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v42->__on_zero_shared)(v42);
      std::__shared_weak_count::__release_weak(v42);
    }

    v43 = *&buf[8];
    if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v43->__on_zero_shared)(v43);
      std::__shared_weak_count::__release_weak(v43);
    }

    v40 = off_2A18B7430;
  }

  v44 = *(&off_2A18B7430 + 1);
  v79 = v40;
  v80 = *(&off_2A18B7430 + 1);
  if (*(&off_2A18B7430 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18B7430 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
  LOBYTE(v81) = *(this + 134);
  if (*(v40 + 1))
  {
    *buf = 0;
    v84[0] = 0;
    v82 = 1;
    v45 = AppleSARHelper::callUserClientMethod(v40, 6, buf, 1, &v81, 1, v84, &v82, &v81, 1uLL);
    if (!v44)
    {
LABEL_89:
      if (v45)
      {
        goto LABEL_90;
      }

      goto LABEL_104;
    }
  }

  else
  {
    v45 = 0;
    if (!v44)
    {
      goto LABEL_89;
    }
  }

  if (atomic_fetch_add(&v44->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_89;
  }

  v54 = v45;
  (v44->__on_zero_shared)(v44);
  std::__shared_weak_count::__release_weak(v44);
  if ((v54 & 1) == 0)
  {
LABEL_104:
    v37 = *(this + 13);
    if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_152;
    }

    *buf = 0;
    v38 = "Failed to send voice state";
    goto LABEL_151;
  }

LABEL_90:
  v47 = pthread_mutex_lock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
  v48 = off_2A18B7430;
  if (!off_2A18B7430)
  {
    AppleSARHelper::create_default_global(buf, v47);
    v49 = *buf;
    memset(buf, 0, sizeof(buf));
    v50 = *(&off_2A18B7430 + 1);
    off_2A18B7430 = v49;
    if (v50 && !atomic_fetch_add(&v50->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v50->__on_zero_shared)(v50);
      std::__shared_weak_count::__release_weak(v50);
    }

    v51 = *&buf[8];
    if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v51->__on_zero_shared)(v51);
      std::__shared_weak_count::__release_weak(v51);
    }

    v48 = off_2A18B7430;
  }

  v52 = *(&off_2A18B7430 + 1);
  v79 = v48;
  v80 = *(&off_2A18B7430 + 1);
  if (*(&off_2A18B7430 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18B7430 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
  LOBYTE(v81) = *(this + 135);
  if (*(v48 + 1))
  {
    *buf = 0;
    v84[0] = 0;
    v82 = 1;
    v53 = AppleSARHelper::callUserClientMethod(v48, 8, buf, 1, &v81, 1, v84, &v82, &v81, 1uLL);
    if (!v52)
    {
      goto LABEL_109;
    }
  }

  else
  {
    v53 = 0;
    if (!v52)
    {
      goto LABEL_109;
    }
  }

  if (!atomic_fetch_add(&v52->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v55 = v53;
    (v52->__on_zero_shared)(v52);
    std::__shared_weak_count::__release_weak(v52);
    v53 = v55;
  }

LABEL_109:
  if ((v53 & 1) == 0)
  {
    v37 = *(this + 13);
    if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_152;
    }

    *buf = 0;
    v38 = "Failed to send speaker state";
    goto LABEL_151;
  }

  v56 = pthread_mutex_lock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
  v57 = off_2A18B7430;
  if (!off_2A18B7430)
  {
    AppleSARHelper::create_default_global(buf, v56);
    v58 = *buf;
    memset(buf, 0, sizeof(buf));
    v59 = *(&off_2A18B7430 + 1);
    off_2A18B7430 = v58;
    if (v59 && !atomic_fetch_add(&v59->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v59->__on_zero_shared)(v59);
      std::__shared_weak_count::__release_weak(v59);
    }

    v60 = *&buf[8];
    if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v60->__on_zero_shared)(v60);
      std::__shared_weak_count::__release_weak(v60);
    }

    v57 = off_2A18B7430;
  }

  v61 = *(&off_2A18B7430 + 1);
  v79 = v57;
  v80 = *(&off_2A18B7430 + 1);
  if (*(&off_2A18B7430 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18B7430 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
  LOBYTE(v81) = *(this + 136);
  if (*(v57 + 1))
  {
    *buf = 0;
    v84[0] = 0;
    v82 = 1;
    v62 = AppleSARHelper::callUserClientMethod(v57, 9, buf, 1, &v81, 1, v84, &v82, &v81, 1uLL);
    if (!v61)
    {
      goto LABEL_128;
    }
  }

  else
  {
    v62 = 0;
    if (!v61)
    {
      goto LABEL_128;
    }
  }

  if (!atomic_fetch_add(&v61->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v63 = v62;
    (v61->__on_zero_shared)(v61);
    std::__shared_weak_count::__release_weak(v61);
    v62 = v63;
  }

LABEL_128:
  if ((v62 & 1) == 0)
  {
    v37 = *(this + 13);
    if (!os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_152;
    }

    *buf = 0;
    v38 = "Failed to send grip state";
    goto LABEL_151;
  }

  v64 = pthread_mutex_lock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
  v65 = off_2A18B7430;
  if (!off_2A18B7430)
  {
    AppleSARHelper::create_default_global(buf, v64);
    std::shared_ptr<AppleSARHelper>::operator=[abi:ne200100](buf);
    std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](buf);
    v65 = off_2A18B7430;
  }

  v66 = *(&off_2A18B7430 + 1);
  v79 = v65;
  v80 = *(&off_2A18B7430 + 1);
  if (*(&off_2A18B7430 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18B7430 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
  LOBYTE(v81) = *(this + 138);
  if (*(v65 + 1))
  {
    *buf = 0;
    v84[0] = 0;
    v82 = 1;
    v67 = AppleSARHelper::callUserClientMethod(v65, 10, buf, 1, &v81, 1, v84, &v82, &v81, 1uLL);
  }

  else
  {
    v67 = 0;
  }

  if (v66 && !atomic_fetch_add(&v66->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v68 = v67;
    (v66->__on_zero_shared)(v66);
    std::__shared_weak_count::__release_weak(v66);
    v67 = v68;
  }

  if (v67)
  {
    v69 = pthread_mutex_lock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
    v70 = off_2A18B7430;
    if (!off_2A18B7430)
    {
      AppleSARHelper::create_default_global(buf, v69);
      std::shared_ptr<AppleSARHelper>::operator=[abi:ne200100](buf);
      std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](buf);
      v70 = off_2A18B7430;
    }

    v79 = v70;
    v80 = *(&off_2A18B7430 + 1);
    if (*(&off_2A18B7430 + 1))
    {
      atomic_fetch_add_explicit((*(&off_2A18B7430 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
    buf[0] = *(this + 139);
    v71 = AppleSARHelper::dataAction<sar::SARFusion_WristState>(v70, buf);
    std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&v79);
    if ((v71 & 1) == 0)
    {
      v37 = *(this + 13);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v38 = "Failed to send wrist state";
        goto LABEL_151;
      }
    }
  }

  else
  {
    v37 = *(this + 13);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v38 = "Failed to send power state";
      goto LABEL_151;
    }
  }

LABEL_152:
  v72 = *MEMORY[0x29EDCA608];
}

void ___ZN9SARModule21sendCurrentState_syncEv_block_invoke(uint64_t a1, int a2)
{
  v17 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 48);
  if (v3)
  {
    v5 = *(a1 + 32);
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = *(a1 + 40);
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
          v10 = "Failed to send";
          v11 = *(a1 + 57);
          if (a2)
          {
            v10 = "Succeeded in sending";
          }

          v13 = 136315394;
          v14 = v10;
          v15 = 1024;
          v16 = v11;
          _os_log_impl(&dword_296FF7000, v9, OS_LOG_TYPE_DEFAULT, "#I %s stewie SAR wait time (%u sec)", &v13, 0x12u);
        }
      }
    }
  }

  v12 = *MEMORY[0x29EDCA608];
}

uint64_t dispatch::callback<void({block_pointer})(BOOL,xpc::object)>::~callback(uint64_t a1)
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

uint64_t SARModule::convertUSBCAccessoryBitMask(uint64_t a1, unsigned __int16 **a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 != v3)
  {
    LODWORD(v4) = 0;
    while (1)
    {
      v5 = *v2;
      v6 = v2[1];
      if (v5 == 17 && v6 == 2)
      {
        LODWORD(v4) = v4 | 0x40000;
      }

      if (v5 == 18 && v6 == 2)
      {
        LODWORD(v4) = v4 | 0x80000;
      }

      if (v5 == 19 && v6 == 2)
      {
        LODWORD(v4) = v4 | 0x100000;
      }

      if (v5 == 20 && v6 == 2)
      {
        v4 = v4 | 0x200000;
      }

      else
      {
        v4 = v4;
      }

      v7 = v2[3];
      if (v7 == 3 && v5 == 2055)
      {
        if (v6 != 2)
        {
          v4 = v4 & 0xFFBFFFFF;
LABEL_38:
          v8 = *(a1 + 240) & 0xFFFFFFFE;
          goto LABEL_39;
        }

        v4 = v4 | 0x400000;
      }

      else if (v7 == 3 && v5 == 2058)
      {
        if (v6 != 2)
        {
          v4 = v4 & 0xFF7FFFFF;
          goto LABEL_38;
        }

        v4 = v4 | 0x800000;
      }

      else if (v7 == 3 && v5 == 2059)
      {
        if (v6 != 2)
        {
          v4 = v4 & 0xFEFFFFFF;
          goto LABEL_38;
        }

        v4 = v4 | 0x1000000;
      }

      else if (v7 == 3 && v5 == 2060)
      {
        if (v6 != 2)
        {
          v4 = v4 & 0xFDFFFFFF;
          goto LABEL_38;
        }

        v4 = v4 | 0x2000000;
      }

      else
      {
        if (v5 == 4)
        {
          *(a1 + 240) = *(a1 + 240) & 0xFFFFFBFF | ((v6 == 2) << 10);
        }

        if (!v7 || v7 == 0xFFFF)
        {
          goto LABEL_40;
        }

        if (v6 != 2)
        {
          goto LABEL_38;
        }
      }

      v8 = *(a1 + 240) | 1;
LABEL_39:
      *(a1 + 240) = v8;
LABEL_40:
      v2 += 6;
      if (v2 == v3)
      {
        return v4;
      }
    }
  }

  return 0;
}

void SARModule::dumpSARFusionState(SARModule *this)
{
  v21 = *MEMORY[0x29EDCA608];
  v2 = *(this + 13);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v4 = sar::toStringAccessory(*(this + 32));
    v5 = *(this + 32);
    v17 = 136315394;
    v18 = v4;
    v19 = 1024;
    v20 = v5;
    _os_log_debug_impl(&dword_296FF7000, v2, OS_LOG_TYPE_DEBUG, "#D SAR Fusion: Accessory: %s (0x%x)", &v17, 0x12u);
    v2 = *(this + 13);
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
LABEL_3:
      if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    goto LABEL_3;
  }

  v6 = *(this + 132);
  v7 = sar::toString();
  v17 = 136315138;
  v18 = v7;
  _os_log_debug_impl(&dword_296FF7000, v2, OS_LOG_TYPE_DEBUG, "#D SAR Fusion: Sar Selection: %s", &v17, 0xCu);
  v2 = *(this + 13);
  if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
LABEL_4:
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  v8 = *(this + 132);
  v9 = sar::toString();
  v17 = 136315138;
  v18 = v9;
  _os_log_debug_impl(&dword_296FF7000, v2, OS_LOG_TYPE_DEBUG, "#D SAR Fusion: Tuner State: %s SPACE", &v17, 0xCu);
  v2 = *(this + 13);
  if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
LABEL_5:
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_13:
  if (*(this + 135))
  {
    v10 = "ON";
  }

  else
  {
    v10 = "OFF";
  }

  v17 = 136315138;
  v18 = v10;
  _os_log_debug_impl(&dword_296FF7000, v2, OS_LOG_TYPE_DEBUG, "#D SAR Fusion: Speaker: %s", &v17, 0xCu);
  v2 = *(this + 13);
  if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
LABEL_6:
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_7;
    }

LABEL_23:
    if ((*(this + 138) & 8) != 0)
    {
      v14 = "Arcas";
    }

    else if ((*(this + 138) & 4) != 0)
    {
      v14 = "Callisto";
    }

    else if ((*(this + 138) & 2) != 0)
    {
      v14 = "USB";
    }

    else
    {
      v14 = "Power Off";
    }

    v17 = 136315138;
    v18 = v14;
    _os_log_debug_impl(&dword_296FF7000, v2, OS_LOG_TYPE_DEBUG, "#D SAR Fusion: Power: %s", &v17, 0xCu);
    v2 = *(this + 13);
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_8;
    }

    goto LABEL_31;
  }

LABEL_17:
  v11 = *(this + 136);
  v12 = "Default Hand Position";
  if (v11 == 1)
  {
    v12 = "Left Hand";
  }

  if (v11 == 2)
  {
    v13 = "Right Hand";
  }

  else
  {
    v13 = v12;
  }

  v17 = 136315138;
  v18 = v13;
  _os_log_debug_impl(&dword_296FF7000, v2, OS_LOG_TYPE_DEBUG, "#D SAR Fusion: Hand Grip: %s", &v17, 0xCu);
  v2 = *(this + 13);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    goto LABEL_23;
  }

LABEL_7:
  if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
LABEL_8:
    v3 = *MEMORY[0x29EDCA608];
    return;
  }

LABEL_31:
  if (*(this + 139))
  {
    v15 = "ON";
  }

  else
  {
    v15 = "OFF";
  }

  v17 = 136315138;
  v18 = v15;
  _os_log_debug_impl(&dword_296FF7000, v2, OS_LOG_TYPE_DEBUG, "#D SAR Fusion: Wrist: %s", &v17, 0xCu);
  v16 = *MEMORY[0x29EDCA608];
}

void SARModule::setupTxIndicationWorkaround(SARModule *this)
{
  if (*(this + 31))
  {
    v2 = xpc_dictionary_create(0, 0, 0);
    v3 = MEMORY[0x29EDCAA00];
    if (v2 || (v2 = xpc_null_create()) != 0)
    {
      if (MEMORY[0x29C26CE60](v2) == v3)
      {
        xpc_retain(v2);
        v4 = v2;
      }

      else
      {
        v4 = xpc_null_create();
      }
    }

    else
    {
      v4 = xpc_null_create();
      v2 = 0;
    }

    xpc_release(v2);
    v6 = xpc_string_create(*MEMORY[0x29EDC9078]);
    if (!v6)
    {
      v6 = xpc_null_create();
    }

    v7 = *MEMORY[0x29EDC8FA8];
    xpc_dictionary_set_value(v4, *MEMORY[0x29EDC8FA8], v6);
    v8 = xpc_null_create();
    xpc_release(v6);
    xpc_release(v8);
    v9 = xpc_BOOL_create(1);
    if (!v9)
    {
      v9 = xpc_null_create();
    }

    xpc_dictionary_set_value(v4, *MEMORY[0x29EDC9050], v9);
    v10 = xpc_null_create();
    xpc_release(v9);
    xpc_release(v10);
    v11 = *(this + 10);
    if (!v11 || (v12 = *(this + 9), (v13 = std::__shared_weak_count::lock(v11)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v14 = v13;
    atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    if (atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v15 = *(this + 31);
      v61[0] = v4;
      if (v4)
      {
LABEL_18:
        xpc_retain(v4);
        goto LABEL_21;
      }
    }

    else
    {
      (v13->__on_zero_shared)(v13);
      std::__shared_weak_count::__release_weak(v14);
      v15 = *(this + 31);
      v61[0] = v4;
      if (v4)
      {
        goto LABEL_18;
      }
    }

    v61[0] = xpc_null_create();
LABEL_21:
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 3321888768;
    aBlock[2] = ___ZN9SARModule27setupTxIndicationWorkaroundEv_block_invoke;
    aBlock[3] = &__block_descriptor_64_e8_40c33_ZTSNSt3__18weak_ptrI9SARModuleEE56c15_ZTSN3xpc4dictE_e21_v20__0B8_object__v_12l;
    aBlock[4] = this;
    aBlock[5] = v12;
    v57 = v14;
    atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    object = v4;
    if (v4)
    {
      xpc_retain(v4);
    }

    else
    {
      object = xpc_null_create();
    }

    v16 = _Block_copy(aBlock);
    v17 = *(this + 11);
    if (v17)
    {
      dispatch_retain(*(this + 11));
    }

    *buf = v16;
    v60 = v17;
    (**v15)(v15, v61, buf);
    if (v60)
    {
      dispatch_release(v60);
    }

    if (*buf)
    {
      _Block_release(*buf);
    }

    xpc_release(v61[0]);
    v61[0] = 0;
    xpc_release(object);
    object = 0;
    if (v57)
    {
      std::__shared_weak_count::__release_weak(v57);
    }

    std::__shared_weak_count::__release_weak(v14);
    xpc_release(v4);
    v18 = xpc_dictionary_create(0, 0, 0);
    if (v18 || (v18 = xpc_null_create()) != 0)
    {
      if (MEMORY[0x29C26CE60](v18) == v3)
      {
        xpc_retain(v18);
        v19 = v18;
      }

      else
      {
        v19 = xpc_null_create();
      }
    }

    else
    {
      v19 = xpc_null_create();
      v18 = 0;
    }

    xpc_release(v18);
    v20 = MEMORY[0x29C26CE60](v19);
    if (v20 != v3)
    {
      v21 = *(this + 13);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_296FF7000, v21, OS_LOG_TYPE_ERROR, "Failed to create dictionary for antenna command driver!", buf, 2u);
      }

      goto LABEL_68;
    }

    v22 = xpc_string_create(*MEMORY[0x29EDC90C0]);
    if (!v22)
    {
      v22 = xpc_null_create();
    }

    xpc_dictionary_set_value(v19, v7, v22);
    v23 = xpc_null_create();
    xpc_release(v22);
    xpc_release(v23);
    v24 = xpc_BOOL_create(1);
    if (!v24)
    {
      v24 = xpc_null_create();
    }

    xpc_dictionary_set_value(v19, *MEMORY[0x29EDC9088], v24);
    v25 = xpc_null_create();
    xpc_release(v24);
    xpc_release(v25);
    v26 = xpc_string_create(*MEMORY[0x29EDC90A8]);
    if (!v26)
    {
      v26 = xpc_null_create();
    }

    xpc_dictionary_set_value(v19, *MEMORY[0x29EDC90A0], v26);
    v27 = xpc_null_create();
    xpc_release(v26);
    xpc_release(v27);
    v28 = xpc_int64_create(1);
    if (!v28)
    {
      v28 = xpc_null_create();
    }

    xpc_dictionary_set_value(v19, *MEMORY[0x29EDC9060], v28);
    v29 = xpc_null_create();
    xpc_release(v28);
    xpc_release(v29);
    v30 = *(this + 10);
    if (!v30 || (v31 = *(this + 9), (v32 = std::__shared_weak_count::lock(v30)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v33 = v32;
    atomic_fetch_add_explicit(&v32->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    if (atomic_fetch_add(&v32->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v34 = *(this + 31);
      v55 = v19;
      if (v19)
      {
LABEL_53:
        xpc_retain(v19);
LABEL_56:
        v52[0] = MEMORY[0x29EDCA5F8];
        v52[1] = 3321888768;
        v52[2] = ___ZN9SARModule27setupTxIndicationWorkaroundEv_block_invoke_57;
        v52[3] = &__block_descriptor_64_e8_40c33_ZTSNSt3__18weak_ptrI9SARModuleEE56c15_ZTSN3xpc4dictE_e21_v20__0B8_object__v_12l;
        v52[4] = this;
        v52[5] = v31;
        v53 = v33;
        atomic_fetch_add_explicit(&v33->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v54 = v19;
        if (v19)
        {
          xpc_retain(v19);
        }

        else
        {
          v54 = xpc_null_create();
        }

        v35 = _Block_copy(v52);
        v36 = *(this + 11);
        if (v36)
        {
          dispatch_retain(*(this + 11));
        }

        *buf = v35;
        v60 = v36;
        (**v34)(v34, &v55, buf);
        if (v60)
        {
          dispatch_release(v60);
        }

        if (*buf)
        {
          _Block_release(*buf);
        }

        xpc_release(v55);
        v55 = 0;
        xpc_release(v54);
        v54 = 0;
        if (v53)
        {
          std::__shared_weak_count::__release_weak(v53);
        }

        std::__shared_weak_count::__release_weak(v33);
LABEL_68:
        xpc_release(v19);
        if (v20 != v3)
        {
          return;
        }

        v37 = xpc_dictionary_create(0, 0, 0);
        if (v37 || (v37 = xpc_null_create()) != 0)
        {
          if (MEMORY[0x29C26CE60](v37) == v3)
          {
            xpc_retain(v37);
            v38 = v37;
          }

          else
          {
            v38 = xpc_null_create();
          }
        }

        else
        {
          v38 = xpc_null_create();
          v37 = 0;
        }

        xpc_release(v37);
        v39 = xpc_string_create(*MEMORY[0x29EDC90F0]);
        if (!v39)
        {
          v39 = xpc_null_create();
        }

        xpc_dictionary_set_value(v38, v7, v39);
        v40 = xpc_null_create();
        xpc_release(v39);
        xpc_release(v40);
        v41 = *(this + 10);
        if (!v41 || (v42 = *(this + 9), (v43 = std::__shared_weak_count::lock(v41)) == 0))
        {
          std::__throw_bad_weak_ptr[abi:ne200100]();
        }

        v44 = v43;
        atomic_fetch_add_explicit(&v43->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        if (atomic_fetch_add(&v43->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v45 = *(this + 31);
          v51 = v38;
          if (v38)
          {
LABEL_81:
            xpc_retain(v38);
LABEL_84:
            v48[0] = MEMORY[0x29EDCA5F8];
            v48[1] = 3321888768;
            v48[2] = ___ZN9SARModule27setupTxIndicationWorkaroundEv_block_invoke_58;
            v48[3] = &__block_descriptor_64_e8_40c33_ZTSNSt3__18weak_ptrI9SARModuleEE56c15_ZTSN3xpc4dictE_e21_v20__0B8_object__v_12l;
            v48[4] = this;
            v48[5] = v42;
            v49 = v44;
            atomic_fetch_add_explicit(&v44->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            v50 = v38;
            if (v38)
            {
              xpc_retain(v38);
            }

            else
            {
              v50 = xpc_null_create();
            }

            v46 = _Block_copy(v48);
            v47 = *(this + 11);
            if (v47)
            {
              dispatch_retain(v47);
            }

            *buf = v46;
            v60 = v47;
            (**v45)(v45, &v51, buf);
            if (v60)
            {
              dispatch_release(v60);
            }

            if (*buf)
            {
              _Block_release(*buf);
            }

            xpc_release(v51);
            v51 = 0;
            xpc_release(v50);
            v50 = 0;
            if (v49)
            {
              std::__shared_weak_count::__release_weak(v49);
            }

            std::__shared_weak_count::__release_weak(v44);
            xpc_release(v38);
            return;
          }
        }

        else
        {
          (v43->__on_zero_shared)(v43);
          std::__shared_weak_count::__release_weak(v44);
          v45 = *(this + 31);
          v51 = v38;
          if (v38)
          {
            goto LABEL_81;
          }
        }

        v51 = xpc_null_create();
        goto LABEL_84;
      }
    }

    else
    {
      (v32->__on_zero_shared)(v32);
      std::__shared_weak_count::__release_weak(v33);
      v34 = *(this + 31);
      v55 = v19;
      if (v19)
      {
        goto LABEL_53;
      }
    }

    v55 = xpc_null_create();
    goto LABEL_56;
  }

  v5 = *(this + 13);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_296FF7000, v5, OS_LOG_TYPE_ERROR, "Check if it is mav device or antenna command driver is ready yet!", buf, 2u);
  }
}

void sub_297166EF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, xpc_object_t object, xpc_object_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24, xpc_object_t a25, xpc_object_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, std::__shared_weak_count *a33, xpc_object_t a34)
{
  dispatch::callback<void({block_pointer})(BOOL,xpc::object)>::~callback(v36 - 128);
  xpc_release(object);
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
  }

  xpc_release(a17);
  std::__shared_weak_count::__release_weak(v34);
  xpc_release(v35);
  _Unwind_Resume(a1);
}

void ___ZN9SARModule27setupTxIndicationWorkaroundEv_block_invoke(void *a1, char a2)
{
  v23 = *MEMORY[0x29EDCA608];
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
          goto LABEL_12;
        }
      }

      else
      {
        v8 = v6;
        (v6->__on_zero_shared)();
        std::__shared_weak_count::__release_weak(v8);
        if (!v7)
        {
          goto LABEL_12;
        }
      }

      if (a2)
      {
        v9 = *(v5 + 104);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_296FF7000, v9, OS_LOG_TYPE_DEFAULT, "#I Succeeded in enabling Tx Capping Enable", buf, 2u);
        }
      }

      else
      {
        v11 = a1[7];
        v10 = a1 + 7;
        v12 = *MEMORY[0x29EDC8FA8];
        if (xpc_dictionary_get_value(v11, *MEMORY[0x29EDC8FA8]))
        {
          v13 = *(v5 + 104);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            v17[0] = v10;
            v17[1] = v12;
            xpc::dict::object_proxy::operator xpc::object(v17, &object);
            xpc::dyn_cast_or_default(buf, &object, "None", v15);
            if (v20 >= 0)
            {
              v16 = buf;
            }

            else
            {
              v16 = *buf;
            }

            *v21 = 136315138;
            v22 = v16;
            _os_log_error_impl(&dword_296FF7000, v13, OS_LOG_TYPE_ERROR, "Failed to run command driver: %s", v21, 0xCu);
            if (v20 < 0)
            {
              operator delete(*buf);
            }

            xpc_release(object);
          }
        }
      }
    }
  }

LABEL_12:
  v14 = *MEMORY[0x29EDCA608];
}

void sub_2971672C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

xpc_object_t __copy_helper_block_e8_40c33_ZTSNSt3__18weak_ptrI9SARModuleEE56c15_ZTSN3xpc4dictE(void *a1, void *a2)
{
  v3 = a2[6];
  a1[5] = a2[5];
  a1[6] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  v4 = a2[7];
  a1[7] = v4;
  if (v4)
  {
    return xpc_retain(v4);
  }

  result = xpc_null_create();
  a1[7] = result;
  return result;
}

void __destroy_helper_block_e8_40c33_ZTSNSt3__18weak_ptrI9SARModuleEE56c15_ZTSN3xpc4dictE(uint64_t a1)
{
  xpc_release(*(a1 + 56));
  *(a1 + 56) = 0;
  v2 = *(a1 + 48);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

void ___ZN9SARModule27setupTxIndicationWorkaroundEv_block_invoke_57(void *a1, char a2)
{
  v23 = *MEMORY[0x29EDCA608];
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
          goto LABEL_12;
        }
      }

      else
      {
        v8 = v6;
        (v6->__on_zero_shared)();
        std::__shared_weak_count::__release_weak(v8);
        if (!v7)
        {
          goto LABEL_12;
        }
      }

      if (a2)
      {
        v9 = *(v5 + 104);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_296FF7000, v9, OS_LOG_TYPE_DEFAULT, "#I Succeeded in enabling Tx indication", buf, 2u);
        }
      }

      else
      {
        v11 = a1[7];
        v10 = a1 + 7;
        v12 = *MEMORY[0x29EDC8FA8];
        if (xpc_dictionary_get_value(v11, *MEMORY[0x29EDC8FA8]))
        {
          v13 = *(v5 + 104);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            v17[0] = v10;
            v17[1] = v12;
            xpc::dict::object_proxy::operator xpc::object(v17, &object);
            xpc::dyn_cast_or_default(buf, &object, "None", v15);
            if (v20 >= 0)
            {
              v16 = buf;
            }

            else
            {
              v16 = *buf;
            }

            *v21 = 136315138;
            v22 = v16;
            _os_log_error_impl(&dword_296FF7000, v13, OS_LOG_TYPE_ERROR, "Failed to run command driver: %s", v21, 0xCu);
            if (v20 < 0)
            {
              operator delete(*buf);
            }

            xpc_release(object);
          }
        }
      }
    }
  }

LABEL_12:
  v14 = *MEMORY[0x29EDCA608];
}

void sub_297167570(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN9SARModule27setupTxIndicationWorkaroundEv_block_invoke_58(void *a1, char a2)
{
  v23 = *MEMORY[0x29EDCA608];
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
          goto LABEL_12;
        }
      }

      else
      {
        v8 = v6;
        (v6->__on_zero_shared)();
        std::__shared_weak_count::__release_weak(v8);
        if (!v7)
        {
          goto LABEL_12;
        }
      }

      if (a2)
      {
        v9 = *(v5 + 104);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_296FF7000, v9, OS_LOG_TYPE_DEFAULT, "#I Succeeded in registering Tx indication", buf, 2u);
        }
      }

      else
      {
        v11 = a1[7];
        v10 = a1 + 7;
        v12 = *MEMORY[0x29EDC8FA8];
        if (xpc_dictionary_get_value(v11, *MEMORY[0x29EDC8FA8]))
        {
          v13 = *(v5 + 104);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            v17[0] = v10;
            v17[1] = v12;
            xpc::dict::object_proxy::operator xpc::object(v17, &object);
            xpc::dyn_cast_or_default(buf, &object, "None", v15);
            if (v20 >= 0)
            {
              v16 = buf;
            }

            else
            {
              v16 = *buf;
            }

            *v21 = 136315138;
            v22 = v16;
            _os_log_error_impl(&dword_296FF7000, v13, OS_LOG_TYPE_ERROR, "Failed to run command driver: %s", v21, 0xCu);
            if (v20 < 0)
            {
              operator delete(*buf);
            }

            xpc_release(object);
          }
        }
      }
    }
  }

LABEL_12:
  v14 = *MEMORY[0x29EDCA608];
}

void sub_297167768(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void SARModule::transmitStateHandler(void *a1, int a2, int a3)
{
  v4 = a1[10];
  if (!v4 || (v7 = a1[9], (v8 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v9 = v8;
  v10 = operator new(0x10uLL);
  *v10 = a1;
  v10[2] = a2;
  v10[3] = a3;
  v11 = a1[11];
  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  v12 = operator new(0x18uLL);
  *v12 = v10;
  v12[1] = v7;
  v12[2] = v9;
  dispatch_async_f(v11, v12, dispatch::async<void ctu::SharedSynchronizable<SARModule>::execute_wrapped<SARModule::transmitStateHandler(antenna::BBTransmitState,antenna::BBTransmitTrigger)::$_0>(SARModule::transmitStateHandler(antenna::BBTransmitState,antenna::BBTransmitTrigger)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<SARModule::transmitStateHandler(antenna::BBTransmitState,antenna::BBTransmitTrigger)::$_0,dispatch_queue_s *::default_delete<SARModule::transmitStateHandler(antenna::BBTransmitState,antenna::BBTransmitTrigger)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);

    std::__shared_weak_count::__release_weak(v9);
  }
}

void SARModule::createTransmitStateDict_sync(capabilities::radio *a1@<X0>, int a2@<W1>, int a3@<W2>, xpc_object_t *a4@<X8>)
{
  if (capabilities::radio::maverick(a1))
  {
    v8 = xpc_dictionary_create(0, 0, 0);
    if (v8 || (v8 = xpc_null_create()) != 0)
    {
      if (MEMORY[0x29C26CE60](v8) == MEMORY[0x29EDCAA00])
      {
        xpc_retain(v8);
        v9 = v8;
      }

      else
      {
        v9 = xpc_null_create();
      }
    }

    else
    {
      v9 = xpc_null_create();
      v8 = 0;
    }

    xpc_release(v8);
    if (a2 == 1)
    {
      v11 = xpc_string_create(*MEMORY[0x29EDBF668]);
      if (!v11)
      {
        v11 = xpc_null_create();
      }
    }

    else
    {
      if (a2)
      {
        *a4 = xpc_null_create();
LABEL_39:
        xpc_release(v9);
        return;
      }

      v11 = xpc_string_create(*MEMORY[0x29EDBF308]);
      if (!v11)
      {
        v11 = xpc_null_create();
      }
    }

    xpc_dictionary_set_value(v9, *MEMORY[0x29EDBF2A0], v11);
    v12 = xpc_null_create();
    xpc_release(v11);
    xpc_release(v12);
    if (a3 > 1)
    {
      if (a3 == 2)
      {
        v13 = xpc_string_create(*MEMORY[0x29EDBF300]);
        if (!v13)
        {
          v13 = xpc_null_create();
        }

        goto LABEL_35;
      }

      if (a3 == 3)
      {
        v13 = xpc_string_create(*MEMORY[0x29EDBF0E8]);
        if (!v13)
        {
          v13 = xpc_null_create();
        }

        goto LABEL_35;
      }
    }

    else
    {
      if (!a3)
      {
        v13 = xpc_string_create(*MEMORY[0x29EDBF430]);
        if (!v13)
        {
          v13 = xpc_null_create();
        }

        goto LABEL_35;
      }

      if (a3 == 1)
      {
        v13 = xpc_string_create(*MEMORY[0x29EDBF238]);
        if (!v13)
        {
          v13 = xpc_null_create();
        }

LABEL_35:
        xpc_dictionary_set_value(v9, *MEMORY[0x29EDBF488], v13);
        v14 = xpc_null_create();
        xpc_release(v13);
        xpc_release(v14);
      }
    }

    v15 = xpc_string_create(*MEMORY[0x29EDBEBE8]);
    if (!v15)
    {
      v15 = xpc_null_create();
    }

    xpc_dictionary_set_value(v9, *MEMORY[0x29EDBEC68], v15);
    v16 = xpc_null_create();
    xpc_release(v15);
    xpc_release(v16);
    *a4 = v9;
    v9 = xpc_null_create();
    goto LABEL_39;
  }

  v10 = *(a1 + 13);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *v17 = 0;
    _os_log_error_impl(&dword_296FF7000, v10, OS_LOG_TYPE_ERROR, "This is not supported device", v17, 2u);
  }

  *a4 = xpc_null_create();
}

void SARModule::submitCASARFusion(uint64_t a1, int a2)
{
  v64.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  *&v64.tv_usec = 0xAAAAAAAAAAAAAAAALL;
  gettimeofday(&v64, 0);
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = MEMORY[0x29EDCAA00];
  if (v4 || (v4 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C26CE60](v4) == v5)
    {
      xpc_retain(v4);
      v6 = v4;
    }

    else
    {
      v6 = xpc_null_create();
    }
  }

  else
  {
    v6 = xpc_null_create();
    v4 = 0;
  }

  xpc_release(v4);
  v7 = *(a1 + 272);
  if (v7)
  {
    *(a1 + 272) = v64.tv_sec - v7;
    if ((*(a1 + 133) & 0xF) != 0)
    {
      v8 = "Head";
    }

    else
    {
      v8 = "Body";
    }

    v9 = xpc_string_create(v8);
    if (!v9)
    {
      v9 = xpc_null_create();
    }

    xpc_dictionary_set_value(v6, *MEMORY[0x29EDBF1D0], v9);
    v10 = xpc_null_create();
    xpc_release(v9);
    xpc_release(v10);
    if (*(a1 + 133) >= 0x10u)
    {
      v11 = "Freespace";
    }

    else
    {
      v11 = "Non-Freespace";
    }

    v12 = xpc_string_create(v11);
    if (!v12)
    {
      v12 = xpc_null_create();
    }

    xpc_dictionary_set_value(v6, *MEMORY[0x29EDBF3B8], v12);
    v13 = xpc_null_create();
    xpc_release(v12);
    xpc_release(v13);
    if (*(a1 + 137) == 2)
    {
      v14 = "Right";
    }

    else if (*(a1 + 136) == 1)
    {
      v14 = "Left";
    }

    else
    {
      v14 = "Default";
    }

    v19 = xpc_string_create(v14);
    if (!v19)
    {
      v19 = xpc_null_create();
    }
  }

  else
  {
    v15 = xpc_string_create("NONE");
    if (!v15)
    {
      v15 = xpc_null_create();
    }

    xpc_dictionary_set_value(v6, *MEMORY[0x29EDBF1D0], v15);
    v16 = xpc_null_create();
    xpc_release(v15);
    xpc_release(v16);
    v17 = xpc_string_create("NONE");
    if (!v17)
    {
      v17 = xpc_null_create();
    }

    xpc_dictionary_set_value(v6, *MEMORY[0x29EDBF3B8], v17);
    v18 = xpc_null_create();
    xpc_release(v17);
    xpc_release(v18);
    v19 = xpc_string_create("NONE");
    if (!v19)
    {
      v19 = xpc_null_create();
    }
  }

  xpc_dictionary_set_value(v6, *MEMORY[0x29EDBF1C8], v19);
  v20 = xpc_null_create();
  xpc_release(v19);
  xpc_release(v20);
  if ((*(a1 + 132) & 0xF) != 0)
  {
    v21 = "Head";
  }

  else
  {
    v21 = "Body";
  }

  v22 = xpc_string_create(v21);
  if (!v22)
  {
    v22 = xpc_null_create();
  }

  xpc_dictionary_set_value(v6, *MEMORY[0x29EDBF1C0], v22);
  v23 = xpc_null_create();
  xpc_release(v22);
  xpc_release(v23);
  if (*(a1 + 132) >= 0x10u)
  {
    v24 = "Freespace";
  }

  else
  {
    v24 = "Non-Freespace";
  }

  v25 = xpc_string_create(v24);
  if (!v25)
  {
    v25 = xpc_null_create();
  }

  xpc_dictionary_set_value(v6, *MEMORY[0x29EDBF3B0], v25);
  v26 = xpc_null_create();
  xpc_release(v25);
  xpc_release(v26);
  v27 = *(a1 + 136);
  v28 = "Default";
  if (v27 == 1)
  {
    v28 = "Left";
  }

  if (v27 == 2)
  {
    v29 = "Right";
  }

  else
  {
    v29 = v28;
  }

  v30 = xpc_string_create(v29);
  v31 = MEMORY[0x29EDCAA00];
  if (!v30)
  {
    v30 = xpc_null_create();
  }

  xpc_dictionary_set_value(v6, *MEMORY[0x29EDBF1B8], v30);
  v32 = xpc_null_create();
  xpc_release(v30);
  xpc_release(v32);
  if (a2 == 1)
  {
    v33 = &string + 12;
    HIBYTE(v63) = 12;
    qmemcpy(&string, "EventUpdated", 12);
  }

  else
  {
    v33 = &string + 13;
    HIBYTE(v63) = 13;
    if (a2)
    {
      v34 = "UnknownReason";
    }

    else
    {
      v34 = "CallConnected";
    }

    *&string = *v34;
    *(&string + 5) = *(v34 + 5);
  }

  *v33 = 0;
  v35 = xpc_string_create(&string);
  if (!v35)
  {
    v35 = xpc_null_create();
  }

  xpc_dictionary_set_value(v6, *MEMORY[0x29EDBF718], v35);
  v36 = xpc_null_create();
  xpc_release(v35);
  xpc_release(v36);
  if (SHIBYTE(v63) < 0)
  {
    operator delete(string);
  }

  v37 = xpc_int64_create(*(a1 + 272));
  if (!v37)
  {
    v37 = xpc_null_create();
  }

  xpc_dictionary_set_value(v6, *MEMORY[0x29EDBEF18], v37);
  v38 = xpc_null_create();
  xpc_release(v37);
  xpc_release(v38);
  v39 = xpc_dictionary_create(0, 0, 0);
  if (v39 || (v39 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C26CE60](v39) == v31)
    {
      xpc_retain(v39);
      v40 = v39;
    }

    else
    {
      v40 = xpc_null_create();
    }
  }

  else
  {
    v40 = xpc_null_create();
    v39 = 0;
  }

  xpc_release(v39);
  v41 = xpc_string_create(*MEMORY[0x29EDBE928]);
  if (!v41)
  {
    v41 = xpc_null_create();
  }

  xpc_dictionary_set_value(v40, *MEMORY[0x29EDBE9B0], v41);
  v42 = xpc_null_create();
  xpc_release(v41);
  xpc_release(v42);
  v43 = xpc_string_create(*MEMORY[0x29EDBEC48]);
  if (!v43)
  {
    v43 = xpc_null_create();
  }

  xpc_dictionary_set_value(v40, *MEMORY[0x29EDBE9B8], v43);
  v44 = xpc_null_create();
  xpc_release(v43);
  xpc_release(v44);
  v45 = xpc_string_create(*MEMORY[0x29EDBE778]);
  if (!v45)
  {
    v45 = xpc_null_create();
  }

  xpc_dictionary_set_value(v40, *MEMORY[0x29EDBE7F8], v45);
  v46 = xpc_null_create();
  xpc_release(v45);
  xpc_release(v46);
  if (v6)
  {
    xpc_retain(v6);
    v47 = v6;
  }

  else
  {
    v47 = xpc_null_create();
  }

  xpc_dictionary_set_value(v40, *MEMORY[0x29EDBF020], v47);
  v48 = xpc_null_create();
  xpc_release(v47);
  xpc_release(v48);
  v49 = xpc_dictionary_create(0, 0, 0);
  if (v49 || (v49 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C26CE60](v49) == v31)
    {
      xpc_retain(v49);
      v50 = v49;
    }

    else
    {
      v50 = xpc_null_create();
    }
  }

  else
  {
    v50 = xpc_null_create();
    v49 = 0;
  }

  xpc_release(v49);
  v51 = xpc_string_create(*MEMORY[0x29EDBE550]);
  if (!v51)
  {
    v51 = xpc_null_create();
  }

  xpc_dictionary_set_value(v50, *MEMORY[0x29EDBE588], v51);
  v52 = xpc_null_create();
  xpc_release(v51);
  xpc_release(v52);
  if (v40)
  {
    xpc_retain(v40);
    v53 = v40;
  }

  else
  {
    v53 = xpc_null_create();
  }

  xpc_dictionary_set_value(v50, *MEMORY[0x29EDBE580], v53);
  v54 = xpc_null_create();
  xpc_release(v53);
  xpc_release(v54);
  v55 = *MEMORY[0x29EDBEBD0];
  v56 = strlen(*MEMORY[0x29EDBEBD0]);
  if (v56 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v57 = v56;
  if (v56 >= 0x17)
  {
    if ((v56 | 7) == 0x17)
    {
      v59 = 25;
    }

    else
    {
      v59 = (v56 | 7) + 1;
    }

    p_string = operator new(v59);
    *(&string + 1) = v57;
    v63 = v59 | 0x8000000000000000;
    *&string = p_string;
LABEL_96:
    memmove(p_string, v55, v57);
    *(p_string + v57) = 0;
    object = v50;
    if (v50)
    {
      goto LABEL_91;
    }

    goto LABEL_97;
  }

  HIBYTE(v63) = v56;
  p_string = &string;
  if (v56)
  {
    goto LABEL_96;
  }

  LOBYTE(string) = 0;
  object = v50;
  if (v50)
  {
LABEL_91:
    xpc_retain(v50);
    goto LABEL_98;
  }

LABEL_97:
  object = xpc_null_create();
LABEL_98:
  v60 = 0;
  Service::runCommand(a1, &string, &object, &v60);
  xpc_release(object);
  object = 0;
  if (SHIBYTE(v63) < 0)
  {
    operator delete(string);
  }

  *(a1 + 272) = v64.tv_sec;
  xpc_release(v50);
  xpc_release(v40);
  xpc_release(v6);
}

void sub_2971686A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  xpc_release(object);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v19);
  xpc_release(v18);
  xpc_release(v17);
  _Unwind_Resume(a1);
}

uint64_t SARModule::asString@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 1)
  {
    a2[23] = 12;
    strcpy(a2, "EventUpdated");
  }

  else
  {
    a2[23] = 13;
    if (result)
    {
      qmemcpy(a2, "UnknownReason", 13);
    }

    else
    {
      qmemcpy(a2, "CallConnected", 13);
    }

    a2[13] = 0;
  }

  return result;
}

void SARModule::processCallStatusSARFusion(SARModule *this, char a2)
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
  dispatch_async_f(v9, v10, dispatch::async<void ctu::SharedSynchronizable<SARModule>::execute_wrapped<SARModule::processCallStatusSARFusion(BOOL)::$_0>(SARModule::processCallStatusSARFusion(BOOL)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<SARModule::processCallStatusSARFusion(BOOL)::$_0,dispatch_queue_s *::default_delete<SARModule::processCallStatusSARFusion(BOOL)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);

    std::__shared_weak_count::__release_weak(v7);
  }
}

double SARModule::asString@<D0>(int a1@<W0>, uint64_t a2@<X8>)
{
  if (a1 == 2)
  {
    v6 = operator new(0x28uLL);
    *a2 = v6;
    *(a2 + 8) = xmmword_29722D1B0;
    result = *"Dump coredump along with telephony logs";
    strcpy(v6, "Dump coredump along with telephony logs");
  }

  else if (a1 == 1)
  {
    v5 = operator new(0x20uLL);
    *a2 = v5;
    *(a2 + 8) = xmmword_297227A10;
    result = *"Dump only telephony logs";
    strcpy(v5, "Dump only telephony logs");
  }

  else if (a1)
  {
    *(a2 + 23) = 18;
    result = *"Undefined Behavior";
    strcpy(a2, "Undefined Behavior");
  }

  else
  {
    v3 = operator new(0x20uLL);
    *a2 = v3;
    *(a2 + 8) = xmmword_2972256B0;
    strcpy(v3, "No Action for dumping log");
    return *" for dumping log";
  }

  return result;
}

uint64_t ctu::PthreadMutexGuardPolicy<AppleSARHelper>::~PthreadMutexGuardPolicy(uint64_t a1)
{
  pthread_mutex_lock(a1);
  v2 = *(a1 + 72);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  pthread_mutex_unlock(a1);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 72);
  if (!v3 || atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  return a1;
}

uint64_t AppleSARHelper::dataAction<sar::SARFusion_WristState>(AppleSARHelper *a1, void *a2)
{
  v6[1] = *MEMORY[0x29EDCA608];
  if (*(a1 + 1))
  {
    v6[0] = 0;
    v5 = 0;
    v4 = 1;
    result = AppleSARHelper::callUserClientMethod(a1, 11, v6, 1, a2, 1, &v5, &v4, a2, 1uLL);
  }

  else
  {
    result = 0;
  }

  v3 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t dispatch::callback<void({block_pointer})(sar::AppleSARMessageType,void *)>::~callback(uint64_t a1)
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

uint64_t dispatch::callback<void({block_pointer})(BOOL)>::~callback(uint64_t a1)
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

uint64_t dispatch::callback<void({block_pointer})(sar::OBDState,sar::TunerState)>::~callback(uint64_t a1)
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

uint64_t dispatch::callback<void({block_pointer})(unsigned int)>::~callback(uint64_t a1)
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

uint64_t dispatch::callback<void({block_pointer})(CMHandDetectionDelegate::CMHandDetectionResult)>::~callback(uint64_t a1)
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

void std::__shared_ptr_pointer<SARModule *,std::shared_ptr<SARModule> ctu::SharedSynchronizable<SARModule>::make_shared_ptr<SARModule>(SARModule*)::{lambda(SARModule *)#1},std::allocator<SARModule>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<SARModule *,std::shared_ptr<SARModule> ctu::SharedSynchronizable<SARModule>::make_shared_ptr<SARModule>(SARModule*)::{lambda(SARModule *)#1},std::allocator<SARModule>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableI9SARModuleE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableI9SARModuleE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableI9SARModuleE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableI9SARModuleE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::shared_ptr<SARModule> ctu::SharedSynchronizable<SARModule>::make_shared_ptr<SARModule>(SARModule*)::{lambda(SARModule*)#1}::operator() const(SARModule*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void dispatch::async<void ctu::SharedSynchronizable<SARModule>::execute_wrapped<SARModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>(SARModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<SARModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<SARModule::shutdownWithStage(ShutdownStage,dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke(std::__shared_weak_count **a1)
{
  __p = *a1;
  v1 = (*a1)->__vftable;
  if (v1[6].~__shared_weak_count_0)
  {
    antenna::CommandDriver::registerHandler();
  }

  on_zero_shared_weak = v1[4].__on_zero_shared_weak;
  if (on_zero_shared_weak)
  {
    IOKitEventNotifier::shutdown(on_zero_shared_weak);
  }

  if (__p)
  {
    shared_owners = __p->__shared_owners_;
    if (shared_owners)
    {
      dispatch_group_leave(shared_owners);
      v4 = __p->__shared_owners_;
      if (v4)
      {
        dispatch_release(v4);
      }
    }

    operator delete(__p);
  }

  v5 = a1;
  if (a1)
  {
    v6 = a1[2];
    if (v6)
    {
      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
        v5 = a1;
      }
    }

    operator delete(v5);
  }
}

void sub_297168F6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  std::unique_ptr<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void sub_297168F88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, char a11)
{
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a11);
  std::unique_ptr<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<antenna::AntennaCommandDriverDelegate<SARModule>::create(std::shared_ptr<SARModule>)::MakeSharedEnabler,std::allocator<antenna::AntennaCommandDriverDelegate<SARModule>::create(std::shared_ptr<SARModule>)::MakeSharedEnabler>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E2CDE8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void antenna::AntennaCommandDriverDelegate<SARModule>::create(std::shared_ptr<SARModule>)::MakeSharedEnabler::~MakeSharedEnabler(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E2CE90;
  if (a1[2])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[2]);
    a1 = v2;
    v1 = vars8;
  }

  antenna::AntennaCommandDriverDelegateInterface::~AntennaCommandDriverDelegateInterface(a1);
}

void antenna::AntennaCommandDriverDelegate<SARModule>::create(std::shared_ptr<SARModule>)::MakeSharedEnabler::~MakeSharedEnabler(antenna::AntennaCommandDriverDelegateInterface *this)
{
  *this = &unk_2A1E2CE90;
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  antenna::AntennaCommandDriverDelegateInterface::~AntennaCommandDriverDelegateInterface(this);

  operator delete(v3);
}

void antenna::AntennaCommandDriverDelegate<SARModule>::signalTransmitState(uint64_t a1, int a2, int a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = *(a1 + 8);
      if (v9)
      {
        SARModule::transmitStateHandler(v9, a2, a3);
      }

      if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v8->__on_zero_shared)(v8);

        std::__shared_weak_count::__release_weak(v8);
      }
    }
  }
}

void antenna::AntennaCommandDriverDelegate<SARModule>::~AntennaCommandDriverDelegate(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E2CE90;
  if (a1[2])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[2]);
    a1 = v2;
    v1 = vars8;
  }

  antenna::AntennaCommandDriverDelegateInterface::~AntennaCommandDriverDelegateInterface(a1);
}

void antenna::AntennaCommandDriverDelegate<SARModule>::~AntennaCommandDriverDelegate(antenna::AntennaCommandDriverDelegateInterface *this)
{
  *this = &unk_2A1E2CE90;
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  antenna::AntennaCommandDriverDelegateInterface::~AntennaCommandDriverDelegateInterface(this);

  operator delete(v3);
}

void dispatch::async<void ctu::SharedSynchronizable<SARModule>::execute_wrapped<SARModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(SARModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<SARModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<SARModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v2 = *a1;
  SARModule::registerCommandHandlers_sync(**a1);
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

void sub_297169348(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  std::unique_ptr<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<SARModule>::execute_wrapped<SARModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1>(SARModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<SARModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1,dispatch_queue_s *::default_delete<SARModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1>>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v2 = *a1;
  SARModule::registerEventHandlers_sync(**a1);
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

void sub_297169440(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  std::unique_ptr<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<SARModule>::execute_wrapped<SARModule::bootstrap(BootstrapStage,dispatch::group_session)::$_2>(SARModule::bootstrap(BootstrapStage,dispatch::group_session)::$_2 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<SARModule::bootstrap(BootstrapStage,dispatch::group_session)::$_2,dispatch_queue_s *::default_delete<SARModule::bootstrap(BootstrapStage,dispatch::group_session)::$_2>>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v2 = *a1;
  SARModule::initializeHelpers_sync(**a1);
  operator delete(v2);
  v3 = *(a1 + 16);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    v4 = a1;
  }

  else
  {
    v4 = a1;
  }

  operator delete(v4);
}

void sub_297169520(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  operator delete(v10);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

uint64_t *_ZNSt3__110unique_ptrIZZN9SARModule28registerCommandHandlers_syncEvEUb_E3__4NS_14default_deleteIS2_EEED1B8ne200100Ev(uint64_t *a1)
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

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI9SARModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb0_E3__5EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_(std::__shared_weak_count **a1)
{
  v34 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  v30 = *a1;
  v2 = (*a1)->__vftable;
  v3 = MEMORY[0x29C26CE60]((*a1)->__shared_owners_);
  get_deleter = v2[2].__get_deleter;
  if (v3 != MEMORY[0x29EDCAA00])
  {
    v5 = 3760250880;
    if (os_log_type_enabled(v2[2].__get_deleter, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_296FF7000, get_deleter, OS_LOG_TYPE_ERROR, "Motion parameter dictionary is empty!", buf, 2u);
    }

    goto LABEL_50;
  }

  if (os_log_type_enabled(v2[2].__get_deleter, OS_LOG_TYPE_DEFAULT))
  {
    v6 = MEMORY[0x29C26CD90](v1->__shared_owners_);
    memset(buf, 170, 24);
    v7 = strlen(v6);
    if (v7 >= 0x7FFFFFFFFFFFFFF8)
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
      *&buf[8] = v8;
      *&buf[16] = v10 | 0x8000000000000000;
      *buf = v9;
    }

    else
    {
      buf[23] = v7;
      v9 = buf;
      if (!v7)
      {
        goto LABEL_14;
      }
    }

    memcpy(v9, v6, v8);
LABEL_14:
    *(v9 + v8) = 0;
    free(v6);
    v11 = buf;
    if ((buf[23] & 0x80u) != 0)
    {
      v11 = *buf;
    }

    *v33 = 136315138;
    *&v33[4] = v11;
    _os_log_impl(&dword_296FF7000, get_deleter, OS_LOG_TYPE_DEFAULT, "#I Motion parameter is given: %s", v33, 0xCu);
    if (buf[23] < 0)
    {
      operator delete(*buf);
    }

    get_deleter = v2[2].__get_deleter;
  }

  if (v2[2].__on_zero_shared_weak)
  {
    if (os_log_type_enabled(get_deleter, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_296FF7000, get_deleter, OS_LOG_TYPE_DEFAULT, "#I Set CoreMotion On Body Handler's motion parameter!", buf, 2u);
    }

    ctu::xpc_to_cf(v33, v1->__shared_owners_, v12);
    v13 = *v33;
    if (*v33 && (v14 = CFGetTypeID(*v33), v14 == CFDictionaryGetTypeID()))
    {
      *buf = v13;
      CFRetain(v13);
      v15 = *v33;
      if (!*v33)
      {
LABEL_28:
        CMOnBodyDelegate::setThresholds(v2[2].__on_zero_shared_weak, v13);
        if (v13)
        {
          CFRelease(v13);
        }

LABEL_31:
        v16 = v2[4].~__shared_weak_count;
        v17 = v2[2].__get_deleter;
        v18 = v17;
        if (v16)
        {
          goto LABEL_32;
        }

LABEL_42:
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_debug_impl(&dword_296FF7000, v17, OS_LOG_TYPE_DEBUG, "#D OBD manager is empty", buf, 2u);
          on_zero_shared = v2[5].__on_zero_shared;
          v21 = v2[2].__get_deleter;
          v22 = v21;
          if (on_zero_shared)
          {
            goto LABEL_44;
          }
        }

        else
        {
          on_zero_shared = v2[5].__on_zero_shared;
          v21 = v2[2].__get_deleter;
          v22 = v21;
          if (on_zero_shared)
          {
            goto LABEL_44;
          }
        }

LABEL_38:
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_debug_impl(&dword_296FF7000, v21, OS_LOG_TYPE_DEBUG, "#D hand detection manager is empty", buf, 2u);
        }

        v5 = 0;
        goto LABEL_50;
      }
    }

    else
    {
      v13 = 0;
      *buf = 0;
      v15 = *v33;
      if (!*v33)
      {
        goto LABEL_28;
      }
    }

    CFRelease(v15);
    goto LABEL_28;
  }

  if (!os_log_type_enabled(get_deleter, OS_LOG_TYPE_DEBUG))
  {
    goto LABEL_31;
  }

  *buf = 0;
  _os_log_debug_impl(&dword_296FF7000, get_deleter, OS_LOG_TYPE_DEBUG, "#D CoreMotion On Body Handler is empty", buf, 2u);
  v16 = v2[4].~__shared_weak_count;
  v17 = v2[2].__get_deleter;
  v18 = v17;
  if (!v16)
  {
    goto LABEL_42;
  }

LABEL_32:
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_296FF7000, v17, OS_LOG_TYPE_DEFAULT, "#I Setting OBD manager's motion parameter!", buf, 2u);
    v16 = v2[4].~__shared_weak_count;
  }

  shared_owners = v1->__shared_owners_;
  *v33 = shared_owners;
  if (shared_owners)
  {
    xpc_retain(shared_owners);
  }

  else
  {
    shared_owners = xpc_null_create();
    *v33 = shared_owners;
  }

  OBDManager::setMotionParameter(v16, v33);
  xpc_release(shared_owners);
  *v33 = 0;
  on_zero_shared = v2[5].__on_zero_shared;
  v21 = v2[2].__get_deleter;
  v22 = v21;
  if (!on_zero_shared)
  {
    goto LABEL_38;
  }

LABEL_44:
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_296FF7000, v21, OS_LOG_TYPE_DEFAULT, "#I Setting hand detection manager's motion parameter!", buf, 2u);
    on_zero_shared = v2[5].__on_zero_shared;
  }

  v23 = v1->__shared_owners_;
  v31 = v23;
  if (v23)
  {
    xpc_retain(v23);
  }

  else
  {
    v23 = xpc_null_create();
    v31 = v23;
  }

  HandDetectionManager::setMotionParameter(on_zero_shared, &v31);
  xpc_release(v23);
  v5 = 0;
  v31 = 0;
LABEL_50:
  shared_weak_owners = v1->__shared_weak_owners_;
  *buf = xpc_null_create();
  (*(shared_weak_owners + 16))(shared_weak_owners, v5, buf);
  xpc_release(*buf);
  if (v30)
  {
    v25 = v30->__shared_weak_owners_;
    if (v25)
    {
      _Block_release(v25);
    }

    xpc_release(v30->__shared_owners_);
    operator delete(v30);
  }

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

void sub_297169AB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, xpc_object_t object, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *_ZNSt3__110unique_ptrIZZN9SARModule28registerCommandHandlers_syncEvEUb0_E3__5NS_14default_deleteIS2_EEED1B8ne200100Ev(uint64_t *a1)
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

void std::shared_ptr<AppleSARHelper>::operator=[abi:ne200100](__int128 *a1)
{
  v1 = *a1;
  *a1 = 0;
  *(a1 + 1) = 0;
  v2 = *(&off_2A18B7430 + 1);
  off_2A18B7430 = v1;
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);

    std::__shared_weak_count::__release_weak(v2);
  }
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI9SARModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb1_E3__6EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_(uint64_t a1)
{
  v46[1] = *MEMORY[0x29EDCA608];
  v1 = *a1;
  v39 = *a1;
  v2 = **a1;
  value = xpc_dictionary_get_value(*(*a1 + 8), *MEMORY[0x29EDBE770]);
  v4 = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    v4 = xpc_null_create();
  }

  if (MEMORY[0x29C26CE60](v4) == MEMORY[0x29EDCAA40])
  {
    v5 = *(v2 + 104);
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      if (!v1[2])
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

    LOWORD(object) = 0;
    _os_log_error_impl(&dword_296FF7000, v5, OS_LOG_TYPE_ERROR, "Failed to get accessory information!", &object, 2u);
    if (v1[2])
    {
LABEL_7:
      v6 = xpc_null_create();
      v7 = v1[2];
      object = v6;
      v8 = xpc_null_create();
      (*(v7 + 16))(v7, 3760250880, &object);
      xpc_release(object);
      xpc_release(v8);
    }
  }

LABEL_8:
  bytes_ptr = xpc_data_get_bytes_ptr(v4);
  length = xpc_data_get_length(v4);
  object = 0;
  v41 = 0;
  v42 = 0;
  if (length >= 0xC)
  {
    v11 = 12 * (length / 0xC);
    v12 = operator new(v11);
    v13 = 0;
    do
    {
      v14 = &v12[v13];
      v15 = *&bytes_ptr[v13];
      *(v14 + 2) = *&bytes_ptr[v13 + 8];
      *v14 = v15;
      v13 += 12;
    }

    while (v11 != v13);
    object = v12;
    v41 = &v12[v11];
    v42 = &v12[v11];
  }

  v16 = SARModule::convertUSBCAccessoryBitMask(v2, &object);
  *(v2 + 236) = v16;
  v17 = *(v2 + 240) | v16;
  *(v2 + 128) = v17;
  v18 = *(v2 + 104);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v17;
    _os_log_impl(&dword_296FF7000, v18, OS_LOG_TYPE_DEFAULT, "#I Sending Accessory State with USB-C: 0x%x", buf, 8u);
  }

  v19 = pthread_mutex_lock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
  v20 = off_2A18B7430;
  if (!off_2A18B7430)
  {
    AppleSARHelper::create_default_global(buf, v19);
    v21 = *buf;
    memset(buf, 0, sizeof(buf));
    v22 = *(&off_2A18B7430 + 1);
    off_2A18B7430 = v21;
    if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v22->__on_zero_shared)(v22);
      std::__shared_weak_count::__release_weak(v22);
    }

    v23 = *&buf[8];
    if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v23->__on_zero_shared)(v23);
      std::__shared_weak_count::__release_weak(v23);
    }

    v20 = off_2A18B7430;
  }

  v24 = *(&off_2A18B7430 + 1);
  if (*(&off_2A18B7430 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18B7430 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
  v43 = *(v2 + 128);
  if (*(v20 + 1))
  {
    *buf = 0;
    v46[0] = 0;
    v44 = 1;
    v25 = AppleSARHelper::callUserClientMethod(v20, 3, buf, 1, &v43, 4, v46, &v44, &v43, 4uLL);
    if (!v24)
    {
LABEL_29:
      if (v25)
      {
        goto LABEL_30;
      }

LABEL_33:
      v30 = *(v2 + 104);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_296FF7000, v30, OS_LOG_TYPE_ERROR, "Failed to set SAR Fusion State!", buf, 2u);
        if (!v1[2])
        {
          goto LABEL_36;
        }
      }

      else if (!v1[2])
      {
        goto LABEL_36;
      }

      v31 = xpc_null_create();
      v32 = v1[2];
      *buf = v31;
      v33 = xpc_null_create();
      (*(v32 + 16))(v32, 3760250880, buf);
      xpc_release(*buf);
      xpc_release(v33);
      goto LABEL_36;
    }
  }

  else
  {
    v25 = 0;
    if (!v24)
    {
      goto LABEL_29;
    }
  }

  if (atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_29;
  }

  v29 = v25;
  (v24->__on_zero_shared)(v24);
  std::__shared_weak_count::__release_weak(v24);
  if ((v29 & 1) == 0)
  {
    goto LABEL_33;
  }

LABEL_30:
  if (v1[2])
  {
    v26 = xpc_null_create();
    v27 = v1[2];
    *buf = v26;
    v28 = xpc_null_create();
    (*(v27 + 16))(v27, 0, buf);
    xpc_release(*buf);
    xpc_release(v28);
  }

LABEL_36:
  if (object)
  {
    operator delete(object);
  }

  xpc_release(v4);
  if (v39)
  {
    v34 = v39[2];
    if (v34)
    {
      _Block_release(v34);
    }

    xpc_release(v39[1]);
    operator delete(v39);
  }

  v35 = a1;
  if (a1)
  {
    v36 = *(a1 + 16);
    if (v36 && !atomic_fetch_add(&v36->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v36->__on_zero_shared)(v36);
      std::__shared_weak_count::__release_weak(v36);
      v35 = a1;
    }

    operator delete(v35);
  }

  v37 = *MEMORY[0x29EDCA608];
}

void sub_29716A168(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, int a12, __int16 a13, char a14, char a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, xpc_object_t object, uint64_t a22, uint64_t a23, uint64_t a24, xpc_object_t a25)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t *_ZNSt3__110unique_ptrIZZN9SARModule28registerCommandHandlers_syncEvEUb1_E3__6NS_14default_deleteIS2_EEED1B8ne200100Ev(uint64_t *a1)
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

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI9SARModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb2_E3__7EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_(std::__shared_weak_count **a1)
{
  v24[1] = *MEMORY[0x29EDCA608];
  v1 = *a1;
  __p = *a1;
  v2 = (*a1)->__vftable;
  LOBYTE(v2[6].__get_deleter) = 1;
  get_deleter = v2[2].__get_deleter;
  if (os_log_type_enabled(get_deleter, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_296FF7000, get_deleter, OS_LOG_TYPE_DEFAULT, "#I Blocking accessories", buf, 2u);
  }

  v4 = pthread_mutex_lock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
  v5 = off_2A18B7430;
  if (!off_2A18B7430)
  {
    AppleSARHelper::create_default_global(buf, v4);
    v6 = *buf;
    memset(buf, 0, sizeof(buf));
    v7 = *(&off_2A18B7430 + 1);
    off_2A18B7430 = v6;
    if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }

    v8 = *&buf[8];
    if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }

    v5 = off_2A18B7430;
  }

  v9 = *(&off_2A18B7430 + 1);
  if (*(&off_2A18B7430 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18B7430 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
  v21 = v2[6].__get_deleter;
  if (*(v5 + 1))
  {
    *buf = 0;
    v24[0] = 0;
    v22 = 1;
    v10 = AppleSARHelper::callUserClientMethod(v5, 31, buf, 1, &v21, 1, v24, &v22, &v21, 1uLL);
    if (!v9)
    {
LABEL_18:
      if (v10)
      {
        goto LABEL_19;
      }

LABEL_22:
      v13 = v2[2].__get_deleter;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_296FF7000, v13, OS_LOG_TYPE_ERROR, "Failed to set blocking accessories", buf, 2u);
        shared_owners = v1->__shared_owners_;
        if (!shared_owners)
        {
          goto LABEL_25;
        }
      }

      else
      {
        shared_owners = v1->__shared_owners_;
        if (!shared_owners)
        {
          goto LABEL_25;
        }
      }

      *buf = xpc_null_create();
      (*(shared_owners + 16))(shared_owners, 3760250880, buf);
      xpc_release(*buf);
      goto LABEL_25;
    }
  }

  else
  {
    v10 = 0;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_18;
  }

  v12 = v10;
  (v9->__on_zero_shared)(v9);
  std::__shared_weak_count::__release_weak(v9);
  if ((v12 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_19:
  v11 = v1->__shared_owners_;
  if (v11)
  {
    *buf = xpc_null_create();
    (*(v11 + 16))(v11, 0, buf);
    xpc_release(*buf);
  }

LABEL_25:
  if (__p)
  {
    v15 = __p->__shared_owners_;
    if (v15)
    {
      _Block_release(v15);
    }

    operator delete(__p);
  }

  v16 = a1;
  if (a1)
  {
    v17 = a1[2];
    if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v17->__on_zero_shared)(v17);
      std::__shared_weak_count::__release_weak(v17);
      v16 = a1;
    }

    operator delete(v16);
  }

  v18 = *MEMORY[0x29EDCA608];
}

void sub_29716A654(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, int a13, __int16 a14, char a15, char a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, xpc_object_t object)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void **_ZNSt3__110unique_ptrIZZN9SARModule28registerCommandHandlers_syncEvEUb2_E3__7NS_14default_deleteIS2_EEED1B8ne200100Ev(void **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = v1[1];
    if (v3)
    {
      _Block_release(v3);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI9SARModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb3_E3__8EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_(std::__shared_weak_count **a1)
{
  v24[1] = *MEMORY[0x29EDCA608];
  v1 = *a1;
  __p = *a1;
  v2 = (*a1)->__vftable;
  LOBYTE(v2[6].__get_deleter) = 0;
  get_deleter = v2[2].__get_deleter;
  if (os_log_type_enabled(get_deleter, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_296FF7000, get_deleter, OS_LOG_TYPE_DEFAULT, "#I Unblocking accessories", buf, 2u);
  }

  v4 = pthread_mutex_lock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
  v5 = off_2A18B7430;
  if (!off_2A18B7430)
  {
    AppleSARHelper::create_default_global(buf, v4);
    v6 = *buf;
    memset(buf, 0, sizeof(buf));
    v7 = *(&off_2A18B7430 + 1);
    off_2A18B7430 = v6;
    if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }

    v8 = *&buf[8];
    if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }

    v5 = off_2A18B7430;
  }

  v9 = *(&off_2A18B7430 + 1);
  if (*(&off_2A18B7430 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18B7430 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
  v21 = v2[6].__get_deleter;
  if (*(v5 + 1))
  {
    *buf = 0;
    v24[0] = 0;
    v22 = 1;
    v10 = AppleSARHelper::callUserClientMethod(v5, 31, buf, 1, &v21, 1, v24, &v22, &v21, 1uLL);
    if (!v9)
    {
LABEL_18:
      if (v10)
      {
        goto LABEL_19;
      }

LABEL_22:
      v13 = v2[2].__get_deleter;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_296FF7000, v13, OS_LOG_TYPE_ERROR, "Failed to set unblocking accessories", buf, 2u);
        shared_owners = v1->__shared_owners_;
        if (!shared_owners)
        {
          goto LABEL_25;
        }
      }

      else
      {
        shared_owners = v1->__shared_owners_;
        if (!shared_owners)
        {
          goto LABEL_25;
        }
      }

      *buf = xpc_null_create();
      (*(shared_owners + 16))(shared_owners, 3760250880, buf);
      xpc_release(*buf);
      goto LABEL_25;
    }
  }

  else
  {
    v10 = 0;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_18;
  }

  v12 = v10;
  (v9->__on_zero_shared)(v9);
  std::__shared_weak_count::__release_weak(v9);
  if ((v12 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_19:
  v11 = v1->__shared_owners_;
  if (v11)
  {
    *buf = xpc_null_create();
    (*(v11 + 16))(v11, 0, buf);
    xpc_release(*buf);
  }

LABEL_25:
  if (__p)
  {
    v15 = __p->__shared_owners_;
    if (v15)
    {
      _Block_release(v15);
    }

    operator delete(__p);
  }

  v16 = a1;
  if (a1)
  {
    v17 = a1[2];
    if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v17->__on_zero_shared)(v17);
      std::__shared_weak_count::__release_weak(v17);
      v16 = a1;
    }

    operator delete(v16);
  }

  v18 = *MEMORY[0x29EDCA608];
}

void sub_29716AA90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, int a13, __int16 a14, char a15, char a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, xpc_object_t object)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void **_ZNSt3__110unique_ptrIZZN9SARModule28registerCommandHandlers_syncEvEUb3_E3__8NS_14default_deleteIS2_EEED1B8ne200100Ev(void **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = v1[1];
    if (v3)
    {
      _Block_release(v3);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI9SARModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb4_E3__9EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_(std::__shared_weak_count **a1)
{
  object[3] = *MEMORY[0x29EDCA608];
  v1 = *a1;
  v33 = *a1;
  v2 = (*a1)->__vftable;
  v3 = xpc_dictionary_create(0, 0, 0);
  v4 = v3;
  if (v3)
  {
    xdict = v3;
  }

  else
  {
    v4 = xpc_null_create();
    xdict = v4;
    if (!v4)
    {
      v5 = xpc_null_create();
      v4 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x29C26CE60](v4) == MEMORY[0x29EDCAA00])
  {
    xpc_retain(v4);
    goto LABEL_9;
  }

  v5 = xpc_null_create();
LABEL_8:
  xdict = v5;
LABEL_9:
  xpc_release(v4);
  memset(__s1, 170, sizeof(__s1));
  value = xpc_dictionary_get_value(v1->__shared_owners_, *MEMORY[0x29EDBED18]);
  object[0] = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object[0] = xpc_null_create();
  }

  xpc::dyn_cast_or_default(__s1, object, "", v7);
  xpc_release(object[0]);
  v8 = *MEMORY[0x29EDBF2A0];
  v9 = strlen(*MEMORY[0x29EDBF2A0]);
  v10 = v9;
  v11 = SHIBYTE(__s1[2]);
  if ((SHIBYTE(__s1[2]) & 0x8000000000000000) == 0)
  {
    if (v9 != -1)
    {
      v12 = SHIBYTE(__s1[2]);
      if (SHIBYTE(__s1[2]) >= v9)
      {
        v13 = v9;
      }

      else
      {
        v13 = SHIBYTE(__s1[2]);
      }

      if (memcmp(__s1, v8, v13))
      {
        goto LABEL_31;
      }

      goto LABEL_24;
    }

LABEL_63:
    std::string::__throw_out_of_range[abi:ne200100]();
  }

  if (v9 == -1)
  {
    goto LABEL_63;
  }

  v12 = __s1[1];
  if (__s1[1] >= v9)
  {
    v14 = v9;
  }

  else
  {
    v14 = __s1[1];
  }

  if (memcmp(__s1[0], v8, v14))
  {
LABEL_31:
    get_deleter = v2[2].__get_deleter;
    if (os_log_type_enabled(get_deleter, OS_LOG_TYPE_DEFAULT))
    {
      v21 = __s1[0];
      if (v11 >= 0)
      {
        v21 = __s1;
      }

      LODWORD(object[0]) = 136315138;
      *(object + 4) = v21;
      _os_log_impl(&dword_296FF7000, get_deleter, OS_LOG_TYPE_DEFAULT, "#I Get property for %s command is not supported", object, 0xCu);
    }

    goto LABEL_51;
  }

LABEL_24:
  if (v12 != v10)
  {
    goto LABEL_31;
  }

  memset(object, 170, 24);
  v15 = MEMORY[0x29EDBF668];
  if (!LOBYTE(v2[5].__on_zero_shared_weak))
  {
    v15 = MEMORY[0x29EDBF308];
  }

  v16 = *v15;
  v17 = strlen(*v15);
  if (v17 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v18 = v17;
  if (v17 >= 0x17)
  {
    if ((v17 | 7) == 0x17)
    {
      v22 = 25;
    }

    else
    {
      v22 = (v17 | 7) + 1;
    }

    v19 = operator new(v22);
    object[1] = v18;
    object[2] = (v22 | 0x8000000000000000);
    object[0] = v19;
  }

  else
  {
    HIBYTE(object[2]) = v17;
    v19 = object;
    if (!v17)
    {
      goto LABEL_40;
    }
  }

  memmove(v19, v16, v18);
LABEL_40:
  *(v18 + v19) = 0;
  if (SHIBYTE(object[2]) >= 0)
  {
    v23 = object;
  }

  else
  {
    v23 = object[0];
  }

  v24 = xpc_string_create(v23);
  if (!v24)
  {
    v24 = xpc_null_create();
  }

  xpc_dictionary_set_value(xdict, v8, v24);
  v25 = xpc_null_create();
  xpc_release(v24);
  xpc_release(v25);
  v26 = v2[2].__get_deleter;
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = object;
    if (SHIBYTE(object[2]) < 0)
    {
      v27 = object[0];
    }

    *buf = 136315138;
    v37 = v27;
    _os_log_impl(&dword_296FF7000, v26, OS_LOG_TYPE_DEFAULT, "#I cellular transmit state: %s", buf, 0xCu);
  }

  if (SHIBYTE(object[2]) < 0)
  {
    operator delete(object[0]);
  }

LABEL_51:
  LODWORD(object[0]) = 0;
  dispatch::block<void({block_pointer})(int,xpc::dict)>::operator()<int,xpc::dict&>(&v1->__shared_weak_owners_, object, &xdict);
  if (SHIBYTE(__s1[2]) < 0)
  {
    operator delete(__s1[0]);
  }

  xpc_release(xdict);
  if (v33)
  {
    shared_weak_owners = v33->__shared_weak_owners_;
    if (shared_weak_owners)
    {
      _Block_release(shared_weak_owners);
    }

    xpc_release(v33->__shared_owners_);
    operator delete(v33);
  }

  v29 = a1;
  if (a1)
  {
    v30 = a1[2];
    if (v30 && !atomic_fetch_add(&v30->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v30->__on_zero_shared)(v30);
      std::__shared_weak_count::__release_weak(v30);
      v29 = a1;
    }

    operator delete(v29);
  }

  v31 = *MEMORY[0x29EDCA608];
}

void sub_29716AF84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, xpc_object_t object, uint64_t a18, uint64_t a19, xpc_object_t a20)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t *_ZNSt3__110unique_ptrIZZN9SARModule28registerCommandHandlers_syncEvEUb4_E3__9NS_14default_deleteIS2_EEED1B8ne200100Ev(uint64_t *a1)
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

uint64_t std::__function::__func<SARModule::registerEventHandlers_sync(void)::$_0,std::allocator<SARModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::~__func(uint64_t result)
{
  *result = &unk_2A1E2CEB8;
  if (*(result + 24))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 24));
    return v1;
  }

  return result;
}

void std::__function::__func<SARModule::registerEventHandlers_sync(void)::$_0,std::allocator<SARModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::~__func(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E2CEB8;
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

char *std::__function::__func<SARModule::registerEventHandlers_sync(void)::$_0,std::allocator<SARModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t a1)
{
  result = operator new(0x20uLL);
  *result = &unk_2A1E2CEB8;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<SARModule::registerEventHandlers_sync(void)::$_0,std::allocator<SARModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A1E2CEB8;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<SARModule::registerEventHandlers_sync(void)::$_0,std::allocator<SARModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<SARModule::registerEventHandlers_sync(void)::$_0,std::allocator<SARModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::destroy_deallocate(std::__shared_weak_count **a1)
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

void std::__function::__func<SARModule::registerEventHandlers_sync(void)::$_0,std::allocator<SARModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::operator()(void *a1, NSObject **a2, void **a3)
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
      if (!a1[2] || MEMORY[0x29C26CE60](v5) != MEMORY[0x29EDCAA00])
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
      dispatch_async_f(v17, v18, dispatch::async<void ctu::SharedSynchronizable<SARModule>::execute_wrapped<SARModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(SARModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<SARModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<SARModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
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

void sub_29716B458(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
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

uint64_t std::__function::__func<SARModule::registerEventHandlers_sync(void)::$_0,std::allocator<SARModule::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN9SARModule26registerEventHandlers_syncEvE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN9SARModule26registerEventHandlers_syncEvE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN9SARModule26registerEventHandlers_syncEvE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN9SARModule26registerEventHandlers_syncEvE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void dispatch::async<void ctu::SharedSynchronizable<SARModule>::execute_wrapped<SARModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(SARModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<SARModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<SARModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(std::__shared_weak_count **a1)
{
  v1 = *a1;
  v34 = &v1->__vftable;
  v2 = (*a1)->__vftable;
  v40 = 0xAAAAAAAAAAAAAAAALL;
  shared_weak_owners = v1->__shared_weak_owners_;
  object[0] = shared_weak_owners;
  if (shared_weak_owners)
  {
    xpc_retain(shared_weak_owners);
  }

  else
  {
    object[0] = xpc_null_create();
  }

  xpc::bridge(cf, object, v4);
  v5 = cf[0];
  if (!cf[0] || (v6 = CFGetTypeID(cf[0]), v6 != CFDictionaryGetTypeID()))
  {
    v5 = 0;
    v40 = 0;
    v7 = cf[0];
    if (!cf[0])
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v40 = v5;
  CFRetain(v5);
  v7 = cf[0];
  if (cf[0])
  {
LABEL_9:
    CFRelease(v7);
  }

LABEL_10:
  xpc_release(object[0]);
  if (!v5)
  {
    goto LABEL_44;
  }

  v39[0] = 0xAAAAAAAAAAAAAAAALL;
  v39[1] = 0xAAAAAAAAAAAAAAAALL;
  ctu::cf::dict_adapter::dict_adapter(v39, v5);
  cf[0] = 0;
  cf[1] = 0;
  v38 = 0;
  ctu::cf::MakeCFString::MakeCFString(&v41, *MEMORY[0x29EDBEAF8]);
  ctu::cf::map_adapter::getString();
  MEMORY[0x29C26B130](&v41);
  if (SHIBYTE(v38) < 0)
  {
    operator delete(cf[0]);
  }

  *cf = *object;
  v38 = v36;
  v8 = *MEMORY[0x29EDBEFB8];
  v9 = strlen(*MEMORY[0x29EDBEFB8]);
  v10 = SHIBYTE(v36);
  if ((SHIBYTE(v36) & 0x8000000000000000) != 0)
  {
    if (v9 == cf[1])
    {
      if (v9 == -1)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      if (!memcmp(cf[0], v8, v9))
      {
LABEL_33:
        shared_owners = v1->__shared_owners_;
        if (shared_owners)
        {
          dispatch_retain(v1->__shared_owners_);
          dispatch_group_enter(shared_owners);
        }

        v22 = v2[2].~__shared_weak_count;
        if (!v22 || (on_zero_shared_weak = v2[1].__on_zero_shared_weak, (v24 = std::__shared_weak_count::lock(v22)) == 0))
        {
          std::__throw_bad_weak_ptr[abi:ne200100]();
        }

        v17 = v24;
        v25 = operator new(0x10uLL);
        *v25 = v2;
        v25[1] = shared_owners;
        v26 = v2[2].~__shared_weak_count_0;
        atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
        v27 = operator new(0x18uLL);
        *v27 = v25;
        v27[1] = on_zero_shared_weak;
        v27[2] = v17;
        dispatch_async_f(v26, v27, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI9SARModuleE15execute_wrappedIZZZNS3_26registerEventHandlers_syncEvENK3__0clENS_13group_sessionEN3xpc4dictEENKUlvE_clEvEUlvE_EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrISC_NSH_14default_deleteISC_EEEEENUlPvE_8__invokeESM_);
        if (!atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
LABEL_38:
          (v17->__on_zero_shared)(v17);
          std::__shared_weak_count::__release_weak(v17);
          goto LABEL_39;
        }

        goto LABEL_39;
      }
    }
  }

  else if (v9 == SHIBYTE(v38) && !memcmp(cf, v8, v9))
  {
    goto LABEL_33;
  }

  v11 = *MEMORY[0x29EDBF210];
  v12 = strlen(*MEMORY[0x29EDBF210]);
  if ((v10 & 0x80000000) != 0)
  {
    if (v12 != cf[1])
    {
      goto LABEL_39;
    }

    if (v12 == -1)
    {
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    if (memcmp(cf[0], v11, v12))
    {
      goto LABEL_39;
    }
  }

  else if (v12 != v10 || memcmp(cf, v11, v12))
  {
    goto LABEL_39;
  }

  v13 = v1->__shared_owners_;
  if (v13)
  {
    dispatch_retain(v1->__shared_owners_);
    dispatch_group_enter(v13);
  }

  v14 = v2[2].~__shared_weak_count;
  if (!v14 || (v15 = v2[1].__on_zero_shared_weak, (v16 = std::__shared_weak_count::lock(v14)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v17 = v16;
  v18 = operator new(0x10uLL);
  *v18 = v2;
  v18[1] = v13;
  v19 = v2[2].~__shared_weak_count_0;
  atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  v20 = operator new(0x18uLL);
  *v20 = v18;
  v20[1] = v15;
  v20[2] = v17;
  dispatch_async_f(v19, v20, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI9SARModuleE15execute_wrappedIZZZNS3_26registerEventHandlers_syncEvENK3__0clENS_13group_sessionEN3xpc4dictEENKUlvE_clEvEUlvE0_EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrISC_NSH_14default_deleteISC_EEEEENUlPvE_8__invokeESM_);
  if (!atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_38;
  }

LABEL_39:
  if (SHIBYTE(v38) < 0)
  {
    operator delete(cf[0]);
    MEMORY[0x29C26B180](v39);
    v28 = v40;
    if (!v40)
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

  MEMORY[0x29C26B180](v39);
  v28 = v40;
  if (v40)
  {
LABEL_43:
    CFRelease(v28);
  }

LABEL_44:
  if (v34)
  {
    xpc_release(v34[2]);
    v34[2] = 0;
    v29 = v34[1];
    if (v29)
    {
      dispatch_group_leave(v29);
      v30 = v34[1];
      if (v30)
      {
        dispatch_release(v30);
      }
    }

    operator delete(v34);
  }

  v31 = a1;
  if (a1)
  {
    v32 = a1[2];
    if (v32)
    {
      if (!atomic_fetch_add(&v32->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v32->__on_zero_shared)(v32);
        std::__shared_weak_count::__release_weak(v32);
        v31 = a1;
      }
    }

    operator delete(v31);
  }
}

void *std::unique_ptr<SARModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},std::default_delete<SARModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](void *result)
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

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI9SARModuleE15execute_wrappedIZZZNS3_26registerEventHandlers_syncEvENK3__0clENS_13group_sessionEN3xpc4dictEENKUlvE_clEvEUlvE_EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrISC_NSH_14default_deleteISC_EEEEENUlPvE_8__invokeESM_(SARModule ***a1)
{
  v1 = *a1;
  v17 = *a1;
  v2 = **a1;
  if (capabilities::radio::maverick(a1))
  {
    SARModule::setupTxIndicationWorkaround(v2);
  }

  SARModule::sendCurrentState_sync(v2);
  capabilities::abs::supportedSARFeatures(v3);
  if (!capabilities::abs::operator&())
  {
    goto LABEL_17;
  }

  v4 = *(v2 + 10);
  if (!v4 || (v5 = *(v2 + 9), (v6 = std::__shared_weak_count::lock(v4)) == 0))
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

  v9 = *(v2 + 31);
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 3321888768;
  aBlock[2] = ___ZZZZN9SARModule26registerEventHandlers_syncEvENK3__0clEN8dispatch13group_sessionEN3xpc4dictEENKUlvE_clEvENKUlvE_clEv_block_invoke;
  aBlock[3] = &__block_descriptor_56_e8_40c33_ZTSNSt3__18weak_ptrI9SARModuleEE_e11_v16__0B8i12l;
  aBlock[4] = v2;
  aBlock[5] = v5;
  v19 = v7;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  v10 = _Block_copy(aBlock);
  v11 = *(v2 + 11);
  if (v11)
  {
    dispatch_retain(v11);
  }

  v20 = v10;
  v21 = v11;
  (*(*v9 + 24))(v9, &v20);
  if (v21)
  {
    dispatch_release(v21);
  }

  if (v20)
  {
    _Block_release(v20);
  }

  if (v19)
  {
    std::__shared_weak_count::__release_weak(v19);
  }

  std::__shared_weak_count::__release_weak(v7);
  v1 = v17;
  if (v17)
  {
LABEL_17:
    v12 = v1[1];
    if (v12)
    {
      dispatch_group_leave(v12);
      v13 = v1[1];
      if (v13)
      {
        dispatch_release(v13);
      }
    }

    operator delete(v1);
  }

  v14 = a1;
  if (a1)
  {
    v15 = a1[2];
    if (v15)
    {
      if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v15->__on_zero_shared)(v15);
        std::__shared_weak_count::__release_weak(v15);
        v14 = a1;
      }
    }

    operator delete(v14);
  }
}

void sub_29716BC84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  dispatch::callback<void({block_pointer})(BOOL,antenna::NVItems)>::~callback(v19 - 64);
  if (a18)
  {
    std::__shared_weak_count::__release_weak(a18);
  }

  std::__shared_weak_count::__release_weak(v18);
  std::unique_ptr<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a11);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void sub_29716BCC0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void *);
  std::unique_ptr<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](va1);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void ___ZZZZN9SARModule26registerEventHandlers_syncEvENK3__0clEN8dispatch13group_sessionEN3xpc4dictEENKUlvE_clEvENKUlvE_clEv_block_invoke(void *a1, char a2, int a3)
{
  v31[1] = *MEMORY[0x29EDCA608];
  v4 = a1[6];
  if (!v4)
  {
    goto LABEL_35;
  }

  v7 = a1[4];
  v8 = std::__shared_weak_count::lock(v4);
  if (!v8)
  {
    goto LABEL_35;
  }

  v9 = a1[5];
  if (atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (!v9)
    {
      goto LABEL_35;
    }
  }

  else
  {
    v10 = v8;
    (v8->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v10);
    if (!v9)
    {
LABEL_35:
      v23 = *MEMORY[0x29EDCA608];
      return;
    }
  }

  if ((a2 & 1) == 0 && (v11 = *(v7 + 104), os_log_type_enabled(v11, OS_LOG_TYPE_ERROR)))
  {
    LOWORD(__p[0]) = 0;
    _os_log_error_impl(&dword_296FF7000, v11, OS_LOG_TYPE_ERROR, "Failed to get NV item!", __p, 2u);
    v12 = *(v7 + 104);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }
  }

  else
  {
    v12 = *(v7 + 104);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }
  }

  antenna::CommandDriver::toString();
  if (v27 >= 0)
  {
    v13 = __p;
  }

  else
  {
    v13 = __p[0];
  }

  LODWORD(buf) = 136315138;
  *(&buf + 4) = v13;
  _os_log_impl(&dword_296FF7000, v12, OS_LOG_TYPE_DEFAULT, "#I %s nv item is detected", &buf, 0xCu);
  if (v27 < 0)
  {
    operator delete(__p[0]);
  }

LABEL_15:
  if (a3 != 4 && a3 != 1)
  {
    goto LABEL_35;
  }

  *(v7 + 329) = 0;
  v14 = pthread_mutex_lock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
  v15 = off_2A18B7430;
  if (!off_2A18B7430)
  {
    AppleSARHelper::create_default_global(__p, v14);
    v16 = *__p;
    __p[0] = 0;
    __p[1] = 0;
    v17 = *(&off_2A18B7430 + 1);
    off_2A18B7430 = v16;
    if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v17->__on_zero_shared)(v17);
      std::__shared_weak_count::__release_weak(v17);
    }

    v18 = __p[1];
    if (__p[1] && !atomic_fetch_add(__p[1] + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v18->__on_zero_shared)(v18);
      std::__shared_weak_count::__release_weak(v18);
    }

    v15 = off_2A18B7430;
  }

  v19 = *(&off_2A18B7430 + 1);
  *&buf = v15;
  *(&buf + 1) = *(&off_2A18B7430 + 1);
  if (*(&off_2A18B7430 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18B7430 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
  *__p = *(v7 + 329);
  v26 = *(v7 + 345);
  if (*(v15 + 1))
  {
    v31[0] = 0;
    v30 = 0;
    v28 = 1;
    v20 = AppleSARHelper::callUserClientMethod(v15, 25, v31, 1, __p, 20, &v30, &v28, __p, 0x14uLL);
    if (!v19)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v20 = 0;
    if (!v19)
    {
      goto LABEL_33;
    }
  }

  if (!atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v21 = v20;
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v19);
    v20 = v21;
  }

LABEL_33:
  if (v20)
  {
    goto LABEL_35;
  }

  v22 = *(v7 + 104);
  if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_35;
  }

  LOWORD(__p[0]) = 0;
  _os_log_error_impl(&dword_296FF7000, v22, OS_LOG_TYPE_ERROR, "Failed to set HSAR configuration!", __p, 2u);
  v24 = *MEMORY[0x29EDCA608];
}

uint64_t dispatch::callback<void({block_pointer})(BOOL,antenna::NVItems)>::~callback(uint64_t a1)
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

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI9SARModuleE15execute_wrappedIZZZNS3_26registerEventHandlers_syncEvENK3__0clENS_13group_sessionEN3xpc4dictEENKUlvE_clEvEUlvE0_EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrISC_NSH_14default_deleteISC_EEEEENUlPvE_8__invokeESM_(uint64_t a1)
{
  v2 = *a1;
  SARModule::processTxOff_sync(**a1);
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

void sub_29716C1E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  std::unique_ptr<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<SARModule::registerEventHandlers_sync(void)::$_1,std::allocator<SARModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::~__func(uint64_t result)
{
  *result = &unk_2A1E2CF68;
  if (*(result + 24))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 24));
    return v1;
  }

  return result;
}

void std::__function::__func<SARModule::registerEventHandlers_sync(void)::$_1,std::allocator<SARModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::~__func(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E2CF68;
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

char *std::__function::__func<SARModule::registerEventHandlers_sync(void)::$_1,std::allocator<SARModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t a1)
{
  result = operator new(0x20uLL);
  *result = &unk_2A1E2CF68;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<SARModule::registerEventHandlers_sync(void)::$_1,std::allocator<SARModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A1E2CF68;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<SARModule::registerEventHandlers_sync(void)::$_1,std::allocator<SARModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<SARModule::registerEventHandlers_sync(void)::$_1,std::allocator<SARModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::destroy_deallocate(std::__shared_weak_count **a1)
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

void std::__function::__func<SARModule::registerEventHandlers_sync(void)::$_1,std::allocator<SARModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::operator()(void *a1, NSObject **a2, void **a3)
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
      dispatch_async_f(v15, v16, dispatch::async<void ctu::SharedSynchronizable<SARModule>::execute_wrapped<SARModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(SARModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<SARModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<SARModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
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

uint64_t std::__function::__func<SARModule::registerEventHandlers_sync(void)::$_1,std::allocator<SARModule::registerEventHandlers_sync(void)::$_1>,void ()(dispatch::group_session,xpc::dict)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN9SARModule26registerEventHandlers_syncEvE3$_1")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN9SARModule26registerEventHandlers_syncEvE3$_1" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN9SARModule26registerEventHandlers_syncEvE3$_1"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN9SARModule26registerEventHandlers_syncEvE3$_1" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void dispatch::async<void ctu::SharedSynchronizable<SARModule>::execute_wrapped<SARModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(SARModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<SARModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<SARModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v2 = *a1;
  SARModule::dumpSARFusionState(**a1);
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

void sub_29716C6D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  std::unique_ptr<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<SARModule::registerEventHandlers_sync(void)::$_2,std::allocator<SARModule::registerEventHandlers_sync(void)::$_2>,void ()(dispatch::group_session,xpc::dict)>::~__func(uint64_t result)
{
  *result = &unk_2A1E2CFE8;
  if (*(result + 24))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 24));
    return v1;
  }

  return result;
}

void std::__function::__func<SARModule::registerEventHandlers_sync(void)::$_2,std::allocator<SARModule::registerEventHandlers_sync(void)::$_2>,void ()(dispatch::group_session,xpc::dict)>::~__func(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E2CFE8;
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

char *std::__function::__func<SARModule::registerEventHandlers_sync(void)::$_2,std::allocator<SARModule::registerEventHandlers_sync(void)::$_2>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t a1)
{
  result = operator new(0x20uLL);
  *result = &unk_2A1E2CFE8;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<SARModule::registerEventHandlers_sync(void)::$_2,std::allocator<SARModule::registerEventHandlers_sync(void)::$_2>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A1E2CFE8;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<SARModule::registerEventHandlers_sync(void)::$_2,std::allocator<SARModule::registerEventHandlers_sync(void)::$_2>,void ()(dispatch::group_session,xpc::dict)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<SARModule::registerEventHandlers_sync(void)::$_2,std::allocator<SARModule::registerEventHandlers_sync(void)::$_2>,void ()(dispatch::group_session,xpc::dict)>::destroy_deallocate(std::__shared_weak_count **a1)
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

void std::__function::__func<SARModule::registerEventHandlers_sync(void)::$_2,std::allocator<SARModule::registerEventHandlers_sync(void)::$_2>,void ()(dispatch::group_session,xpc::dict)>::operator()(void *a1, NSObject **a2, void **a3)
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
      if (a1[2])
      {
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
LABEL_21:
            std::__throw_bad_weak_ptr[abi:ne200100]();
          }
        }

        else
        {
          v10 = xpc_null_create();
          v11 = v7[10];
          if (!v11)
          {
            goto LABEL_21;
          }
        }

        v12 = v7[9];
        v13 = std::__shared_weak_count::lock(v11);
        if (!v13)
        {
          goto LABEL_21;
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
        dispatch_async_f(v17, v18, dispatch::async<void ctu::SharedSynchronizable<SARModule>::execute_wrapped<SARModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(SARModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<SARModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<SARModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
        if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v14->__on_zero_shared)(v14);
          std::__shared_weak_count::__release_weak(v14);
        }

        xpc_release(v16);
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

uint64_t std::__function::__func<SARModule::registerEventHandlers_sync(void)::$_2,std::allocator<SARModule::registerEventHandlers_sync(void)::$_2>,void ()(dispatch::group_session,xpc::dict)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN9SARModule26registerEventHandlers_syncEvE3$_2")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN9SARModule26registerEventHandlers_syncEvE3$_2" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN9SARModule26registerEventHandlers_syncEvE3$_2"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN9SARModule26registerEventHandlers_syncEvE3$_2" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void dispatch::async<void ctu::SharedSynchronizable<SARModule>::execute_wrapped<SARModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>(SARModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<SARModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},dispatch_queue_s *::default_delete<SARModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(SARModule ***a1)
{
  v24 = *MEMORY[0x29EDCA608];
  v2 = *a1;
  v3 = **a1;
  v4 = (*a1)[2];
  object = v4;
  v22 = 0xAAAAAAAAAAAAAAAALL;
  if (v4)
  {
    xpc_retain(v4);
  }

  else
  {
    object = xpc_null_create();
  }

  xpc::bridge(cf, &object, v5);
  v6 = *cf;
  if (!*cf || (v7 = CFGetTypeID(*cf), v7 != CFDictionaryGetTypeID()))
  {
    v6 = 0;
    v22 = 0;
    v8 = *cf;
    if (!*cf)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v22 = v6;
  CFRetain(v6);
  v8 = *cf;
  if (*cf)
  {
LABEL_9:
    CFRelease(v8);
  }

LABEL_10:
  xpc_release(object);
  if (v6)
  {
    ctu::cf_to_xpc(cf, v6, v9);
    v10 = *cf;
    if (*cf && MEMORY[0x29C26CE60](*cf) == MEMORY[0x29EDCAA00])
    {
      xpc_retain(v10);
    }

    else
    {
      v10 = xpc_null_create();
    }

    xpc_release(*cf);
    value = xpc_dictionary_get_value(v10, *MEMORY[0x29EDBE5A8]);
    *cf = value;
    if (value)
    {
      xpc_retain(value);
    }

    else
    {
      *cf = xpc_null_create();
    }

    v13 = xpc::dyn_cast_or_default(cf, 0);
    xpc_release(*cf);
    v14 = *(v3 + 13);
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    if (v15)
    {
      v16 = "Off";
      if (v13)
      {
        v16 = "On";
      }

      *cf = 136315138;
      *&cf[4] = v16;
      _os_log_impl(&dword_296FF7000, v14, OS_LOG_TYPE_DEFAULT, "#I Received voice call event with state: %s", cf, 0xCu);
    }

    if (v13)
    {
      SARModule::submitCASARFusion(v3, 0);
    }

    if (capabilities::radio::dal(v15))
    {
      SARModule::processCallStatusSARFusion(v3, v13);
    }

    else
    {
      SARModule::processCallStatus(v3, v13);
    }

    xpc_release(v10);
    CFRelease(v6);
  }

  else
  {
    v11 = *(v3 + 13);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *cf = 0;
      _os_log_error_impl(&dword_296FF7000, v11, OS_LOG_TYPE_ERROR, "No input is given for voice call active state", cf, 2u);
    }
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
  v20 = *MEMORY[0x29EDCA608];
}

void sub_29716CE0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, xpc_object_t a11, char a12, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void *std::unique_ptr<SARModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},std::default_delete<SARModule::registerEventHandlers_sync(void)::$_2::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](void *result)
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

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI9SARModuleE15execute_wrappedIZZNS3_18initializeOBD_syncEvEUb5_E4__13EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_(void *a1)
{
  v2 = *a1;
  v3 = **a1;
  SARModule::submitCASARFusion(v3, 1);
  *(v3 + 133) = *(v3 + 132);
  operator delete(v2);
  v4 = *(a1 + 2);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  operator delete(a1);
}

void sub_29716CFD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  operator delete(v10);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI9SARModuleE15execute_wrappedIZZNS3_28initializeHandDetection_syncEvEUb6_E4__14EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_(void *a1)
{
  v2 = *a1;
  v3 = **a1;
  SARModule::submitCASARFusion(v3, 1);
  *(v3 + 137) = *(v3 + 136);
  operator delete(v2);
  v4 = *(a1 + 2);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  operator delete(a1);
}

void sub_29716D0AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  operator delete(v10);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void *std::__function::__func<void({block_pointer})(BOOL,BOOL,char const*),std::allocator<void({block_pointer})(BOOL,BOOL,char const*)>,void ()(BOOL,BOOL,char const*)>::__clone(uint64_t a1, void *a2)
{
  *a2 = &unk_2A1E2D068;
  result = *(a1 + 8);
  if (result)
  {
    result = _Block_copy(result);
  }

  a2[1] = result;
  return result;
}

void std::__function::__func<void({block_pointer})(BOOL,BOOL,char const*),std::allocator<void({block_pointer})(BOOL,BOOL,char const*)>,void ()(BOOL,BOOL,char const*)>::destroy(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    _Block_release(v2);
  }

  *(a1 + 8) = 0;
}

uint64_t std::__function::__func<void({block_pointer})(BOOL,BOOL,char const*),std::allocator<void({block_pointer})(BOOL,BOOL,char const*)>,void ()(BOOL,BOOL,char const*)>::operator()(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, uint64_t *a4)
{
  v4 = *a2;
  v5 = *a3;
  v6 = *a4;
  return (*(*(a1 + 8) + 16))();
}

uint64_t std::__function::__func<void({block_pointer})(BOOL,BOOL,char const*),std::allocator<void({block_pointer})(BOOL,BOOL,char const*)>,void ()(BOOL,BOOL,char const*)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x800000029722D751)
  {
    return a1 + 8;
  }

  if (((v2 & 0x800000029722D751 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000029722D751))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000029722D751 & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void dispatch::async<void ctu::SharedSynchronizable<SARModule>::execute_wrapped<SARModule::processTxOff_sync(void)::$_0>(SARModule::processTxOff_sync(void)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<SARModule::processTxOff_sync(void)::$_0,dispatch_queue_s *::default_delete<SARModule::processTxOff_sync(void)::$_0>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v2 = *a1;
  v3 = **a1;
  SARModule::submitCASARFusion(v3, 1);
  *(v3 + 137) = *(v3 + 136);
  operator delete(v2);
  v4 = *(a1 + 2);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  operator delete(a1);
}

void sub_29716D2B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  operator delete(v10);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<SARModule>::execute_wrapped<SARModule::transmitStateHandler(antenna::BBTransmitState,antenna::BBTransmitTrigger)::$_0>(SARModule::transmitStateHandler(antenna::BBTransmitState,antenna::BBTransmitTrigger)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<SARModule::transmitStateHandler(antenna::BBTransmitState,antenna::BBTransmitTrigger)::$_0,dispatch_queue_s *::default_delete<SARModule::transmitStateHandler(antenna::BBTransmitState,antenna::BBTransmitTrigger)::$_0>>)::{lambda(void *)#1}::__invoke(capabilities::radio *a1)
{
  v1 = a1;
  v55 = *MEMORY[0x29EDCA608];
  v2 = *a1;
  v3 = **a1;
  if (capabilities::radio::maverick(a1))
  {
    v43 = 0xAAAAAAAAAAAAAAAALL;
    SARModule::createTransmitStateDict_sync(v3, v2[2], v2[3], &v43);
    v4 = v43;
    if (MEMORY[0x29C26CE60](v43) != MEMORY[0x29EDCAA00])
    {
      v5 = *(v3 + 13);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = v2[2];
        v7 = v2[3];
        *buf = 67109376;
        *&buf[4] = v6;
        *&buf[8] = 1024;
        *&buf[10] = v7;
        _os_log_error_impl(&dword_296FF7000, v5, OS_LOG_TYPE_ERROR, "Failed to get the Tx state from the state (%d) and trigger (%d)", buf, 0xEu);
      }

LABEL_74:
      xpc_release(v4);
      v1 = a1;
      operator delete(v2);
      if (!a1)
      {
        goto LABEL_79;
      }

      goto LABEL_75;
    }

    memset(__s1, 170, sizeof(__s1));
    value = xpc_dictionary_get_value(v4, *MEMORY[0x29EDBF2A0]);
    *buf = value;
    if (value)
    {
      xpc_retain(value);
    }

    else
    {
      *buf = xpc_null_create();
    }

    xpc::dyn_cast_or_default(__s1, buf, "", v10);
    xpc_release(*buf);
    memset(v41, 170, sizeof(v41));
    v11 = xpc_dictionary_get_value(v4, *MEMORY[0x29EDBF488]);
    *buf = v11;
    if (v11)
    {
      xpc_retain(v11);
    }

    else
    {
      *buf = xpc_null_create();
    }

    xpc::dyn_cast_or_default(v41, buf, "", v12);
    xpc_release(*buf);
    v54 = 0xAAAAAAAAAAAAAAAALL;
    *&v13 = 0xAAAAAAAAAAAAAAAALL;
    *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v53[7] = v13;
    v53[8] = v13;
    v53[5] = v13;
    v53[6] = v13;
    v53[3] = v13;
    v53[4] = v13;
    v53[1] = v13;
    v53[2] = v13;
    v52 = v13;
    v53[0] = v13;
    v50 = v13;
    v51 = v13;
    v48 = v13;
    v49 = v13;
    *buf = v13;
    v47 = v13;
    std::ostringstream::basic_ostringstream[abi:ne200100](buf);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(buf, "Transmit State: ", 16);
    if (__s1[2] >= 0)
    {
      v15 = __s1;
    }

    else
    {
      v15 = __s1[0];
    }

    if (__s1[2] >= 0)
    {
      v16 = HIBYTE(__s1[2]);
    }

    else
    {
      v16 = __s1[1];
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, v15, v16);
    v17 = HIBYTE(v41[2]);
    if (SHIBYTE(v41[2]) < 0)
    {
      v17 = v41[1];
    }

    if (v17)
    {
      v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(buf, " (", 2);
      if (SHIBYTE(v41[2]) >= 0)
      {
        v19 = v41;
      }

      else
      {
        v19 = v41[0];
      }

      if (SHIBYTE(v41[2]) >= 0)
      {
        v20 = HIBYTE(v41[2]);
      }

      else
      {
        v20 = v41[1];
      }

      v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, v19, v20);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, ")", 1);
    }

    v22 = *(v3 + 13);
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
LABEL_49:
      v29 = *MEMORY[0x29EDBF668];
      v30 = strlen(*MEMORY[0x29EDBF668]);
      v31 = SHIBYTE(__s1[2]);
      if ((SHIBYTE(__s1[2]) & 0x8000000000000000) != 0)
      {
        if (v30 == __s1[1])
        {
          if (v30 == -1)
          {
            std::string::__throw_out_of_range[abi:ne200100]();
          }

          if (!memcmp(__s1[0], v29, v30))
          {
            goto LABEL_66;
          }
        }
      }

      else if (v30 == SHIBYTE(__s1[2]) && !memcmp(__s1, v29, v30))
      {
LABEL_66:
        v35 = *(v3 + 13);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(__dst[0]) = 0;
          _os_log_impl(&dword_296FF7000, v35, OS_LOG_TYPE_DEFAULT, "#I Tx is on from QMI", __dst, 2u);
        }

        SARModule::processTxOn_sync(v3);
        goto LABEL_69;
      }

      v32 = *MEMORY[0x29EDBF308];
      v33 = strlen(*MEMORY[0x29EDBF308]);
      if ((v31 & 0x80000000) != 0)
      {
        if (v33 != __s1[1])
        {
          goto LABEL_69;
        }

        if (v33 == -1)
        {
          std::string::__throw_out_of_range[abi:ne200100]();
        }

        if (memcmp(__s1[0], v32, v33))
        {
LABEL_69:
          *buf = *MEMORY[0x29EDC9538];
          *&buf[*(*buf - 24)] = *(MEMORY[0x29EDC9538] + 24);
          *&buf[8] = MEMORY[0x29EDC9570] + 16;
          if (SHIBYTE(v51) < 0)
          {
            operator delete(*(&v50 + 1));
          }

          *&buf[8] = MEMORY[0x29EDC9568] + 16;
          std::locale::~locale(&v47);
          std::ostream::~ostream();
          MEMORY[0x29C26C030](v53);
          if (SHIBYTE(v41[2]) < 0)
          {
            operator delete(v41[0]);
            if ((SHIBYTE(__s1[2]) & 0x80000000) == 0)
            {
              goto LABEL_73;
            }
          }

          else if ((SHIBYTE(__s1[2]) & 0x80000000) == 0)
          {
LABEL_73:
            v4 = v43;
            goto LABEL_74;
          }

          operator delete(__s1[0]);
          goto LABEL_73;
        }
      }

      else if (v33 != v31 || memcmp(__s1, v32, v33))
      {
        goto LABEL_69;
      }

      v34 = *(v3 + 13);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(__dst[0]) = 0;
        _os_log_impl(&dword_296FF7000, v34, OS_LOG_TYPE_DEFAULT, "#I Tx is off from QMI", __dst, 2u);
      }

      SARModule::processTxOff_sync(v3);
      goto LABEL_69;
    }

    if ((BYTE8(v52) & 0x10) != 0)
    {
      v25 = v52;
      if (v52 < *(&v49 + 1))
      {
        *&v52 = *(&v49 + 1);
        v25 = *(&v49 + 1);
      }

      v26 = v49;
      v23 = v25 - v49;
      if ((v25 - v49) >= 0x7FFFFFFFFFFFFFF8)
      {
        goto LABEL_83;
      }
    }

    else
    {
      if ((BYTE8(v52) & 8) == 0)
      {
        v23 = 0;
        HIBYTE(v40) = 0;
        v24 = __dst;
        goto LABEL_45;
      }

      v26 = *(&v47 + 1);
      v23 = *(&v48 + 1) - *(&v47 + 1);
      if (*(&v48 + 1) - *(&v47 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
      {
LABEL_83:
        std::string::__throw_length_error[abi:ne200100]();
      }
    }

    if (v23 >= 0x17)
    {
      if ((v23 | 7) == 0x17)
      {
        v27 = 25;
      }

      else
      {
        v27 = (v23 | 7) + 1;
      }

      v24 = operator new(v27);
      __dst[1] = v23;
      v40 = v27 | 0x8000000000000000;
      __dst[0] = v24;
    }

    else
    {
      HIBYTE(v40) = v23;
      v24 = __dst;
      if (!v23)
      {
        goto LABEL_45;
      }
    }

    memmove(v24, v26, v23);
LABEL_45:
    *(v24 + v23) = 0;
    v28 = __dst;
    if (v40 < 0)
    {
      v28 = __dst[0];
    }

    *v44 = 136315138;
    v45 = v28;
    _os_log_impl(&dword_296FF7000, v22, OS_LOG_TYPE_DEFAULT, "#I %s", v44, 0xCu);
    if (SHIBYTE(v40) < 0)
    {
      operator delete(__dst[0]);
    }

    goto LABEL_49;
  }

  v8 = *(v3 + 13);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_296FF7000, v8, OS_LOG_TYPE_ERROR, "This is not supported device", buf, 2u);
  }

  operator delete(v2);
LABEL_75:
  v36 = *(v1 + 2);
  if (v36 && !atomic_fetch_add(&v36->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v36->__on_zero_shared)(v36);
    std::__shared_weak_count::__release_weak(v36);
  }

  operator delete(v1);
LABEL_79:
  v37 = *MEMORY[0x29EDCA608];
}

void sub_29716D9C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, xpc_object_t object, uint64_t a27, uint64_t a28, xpc_object_t a29)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void dispatch::async<void ctu::SharedSynchronizable<SARModule>::execute_wrapped<SARModule::processCallStatus(BOOL)::$_0>(SARModule::processCallStatus(BOOL)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<SARModule::processCallStatus(BOOL)::$_0,dispatch_queue_s *::default_delete<SARModule::processCallStatus(BOOL)::$_0>>)::{lambda(void *)#1}::__invoke(unsigned __int8 **a1)
{
  v38[1] = *MEMORY[0x29EDCA608];
  v1 = *a1;
  v2 = **a1;
  v3 = *(v2 + 104);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_296FF7000, v3, OS_LOG_TYPE_DEFAULT, "#I Getting call state", buf, 2u);
  }

  v4 = pthread_mutex_lock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
  v5 = off_2A18B7430;
  if (!off_2A18B7430)
  {
    AppleSARHelper::create_default_global(buf, v4);
    v6 = *buf;
    memset(buf, 0, sizeof(buf));
    v7 = *(&off_2A18B7430 + 1);
    off_2A18B7430 = v6;
    if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }

    v8 = *&buf[8];
    if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }

    v5 = off_2A18B7430;
  }

  v9 = *(&off_2A18B7430 + 1);
  if (*(&off_2A18B7430 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18B7430 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
  v10 = (v2 + 280);
  if (*(v5 + 1))
  {
    *buf = 3;
    v38[0] = 0;
    v36 = 1;
    v11 = AppleSARHelper::callUserClientMethod(v5, 35, buf, 1, (v2 + 280), 1, v38, &v36, (v2 + 280), 1uLL);
    if (!v9)
    {
LABEL_18:
      v12 = *(v2 + 104);
      if (v11)
      {
        goto LABEL_19;
      }

LABEL_26:
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_296FF7000, v12, OS_LOG_TYPE_ERROR, "Failed to get call state!", buf, 2u);
        v14 = v1[8];
        if (v14 != *v10)
        {
          goto LABEL_33;
        }

LABEL_28:
        v16 = *(v2 + 104);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = "YES";
          if (!v14)
          {
            v17 = "NO";
          }

          *buf = 136315138;
          *&buf[4] = v17;
          v18 = "#I Call state is same as before. No update the HSAR Voice Call: %s";
          v19 = v16;
LABEL_54:
          _os_log_impl(&dword_296FF7000, v19, OS_LOG_TYPE_DEFAULT, v18, buf, 0xCu);
          operator delete(v1);
          v29 = a1;
          if (!a1)
          {
            goto LABEL_63;
          }

          goto LABEL_59;
        }

LABEL_58:
        operator delete(v1);
        v29 = a1;
        if (!a1)
        {
          goto LABEL_63;
        }

        goto LABEL_59;
      }

LABEL_27:
      v14 = v1[8];
      if (v14 != *v10)
      {
        goto LABEL_33;
      }

      goto LABEL_28;
    }
  }

  else
  {
    v11 = 0;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_18;
  }

  v15 = v11;
  (v9->__on_zero_shared)(v9);
  std::__shared_weak_count::__release_weak(v9);
  v12 = *(v2 + 104);
  if ((v15 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_19:
  if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_27;
  }

  if (*v10)
  {
    v13 = "On";
  }

  else
  {
    v13 = "Off";
  }

  *buf = 136315138;
  *&buf[4] = v13;
  _os_log_impl(&dword_296FF7000, v12, OS_LOG_TYPE_DEFAULT, "#I Succeeded getting call state: %s", buf, 0xCu);
  v14 = v1[8];
  if (v14 == *v10)
  {
    goto LABEL_28;
  }

LABEL_33:
  *v10 = v14;
  v20 = pthread_mutex_lock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
  v21 = off_2A18B7430;
  if (!off_2A18B7430)
  {
    AppleSARHelper::create_default_global(buf, v20);
    v22 = *buf;
    memset(buf, 0, sizeof(buf));
    v23 = *(&off_2A18B7430 + 1);
    off_2A18B7430 = v22;
    if (v23 && !atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v23->__on_zero_shared)(v23);
      std::__shared_weak_count::__release_weak(v23);
    }

    v24 = *&buf[8];
    if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v24->__on_zero_shared)(v24);
      std::__shared_weak_count::__release_weak(v24);
    }

    v21 = off_2A18B7430;
  }

  v25 = *(&off_2A18B7430 + 1);
  if (*(&off_2A18B7430 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18B7430 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
  v35 = *v10;
  if (*(v21 + 1))
  {
    *buf = 0;
    v38[0] = 0;
    v36 = 1;
    v26 = AppleSARHelper::callUserClientMethod(v21, 35, buf, 1, &v35, 1, v38, &v36, &v35, 1uLL);
    if (!v25)
    {
LABEL_48:
      v27 = *(v2 + 104);
      if (v26)
      {
        goto LABEL_49;
      }

      goto LABEL_57;
    }
  }

  else
  {
    v26 = 0;
    if (!v25)
    {
      goto LABEL_48;
    }
  }

  if (atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_48;
  }

  v30 = v26;
  (v25->__on_zero_shared)(v25);
  std::__shared_weak_count::__release_weak(v25);
  v27 = *(v2 + 104);
  if (v30)
  {
LABEL_49:
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      if (*v10)
      {
        v28 = "YES";
      }

      else
      {
        v28 = "NO";
      }

      *buf = 136315138;
      *&buf[4] = v28;
      v18 = "#I Setting HSAR Voice Call: %s";
      v19 = v27;
      goto LABEL_54;
    }

    goto LABEL_58;
  }

LABEL_57:
  if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_58;
  }

  *buf = 0;
  _os_log_error_impl(&dword_296FF7000, v27, OS_LOG_TYPE_ERROR, "Failed to set call state!", buf, 2u);
  operator delete(v1);
  v29 = a1;
  if (!a1)
  {
    goto LABEL_63;
  }

LABEL_59:
  v31 = v29[2];
  if (v31 && !atomic_fetch_add(&v31->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v32 = v29;
    (v31->__on_zero_shared)(v31);
    std::__shared_weak_count::__release_weak(v31);
    v29 = v32;
  }

  operator delete(v29);
LABEL_63:
  v33 = *MEMORY[0x29EDCA608];
}

void sub_29716E0D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  pthread_mutex_unlock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
  operator delete(v3);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<SARModule>::execute_wrapped<SARModule::processCallStatusSARFusion(BOOL)::$_0>(SARModule::processCallStatusSARFusion(BOOL)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<SARModule::processCallStatusSARFusion(BOOL)::$_0,dispatch_queue_s *::default_delete<SARModule::processCallStatusSARFusion(BOOL)::$_0>>)::{lambda(void *)#1}::__invoke(unsigned __int8 **a1)
{
  v39[1] = *MEMORY[0x29EDCA608];
  v1 = *a1;
  v2 = **a1;
  v3 = pthread_mutex_lock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
  v4 = off_2A18B7430;
  if (!off_2A18B7430)
  {
    AppleSARHelper::create_default_global(buf, v3);
    v5 = *buf;
    memset(buf, 0, sizeof(buf));
    v6 = *(&off_2A18B7430 + 1);
    off_2A18B7430 = v5;
    if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }

    v7 = *&buf[8];
    if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }

    v4 = off_2A18B7430;
  }

  v8 = *(&off_2A18B7430 + 1);
  if (*(&off_2A18B7430 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18B7430 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
  v9 = (v2 + 134);
  if (*(v4 + 1))
  {
    *buf = 3;
    v39[0] = 0;
    v37 = 1;
    v10 = AppleSARHelper::callUserClientMethod(v4, 6, buf, 1, (v2 + 134), 1, v39, &v37, (v2 + 134), 1uLL);
    if (!v8)
    {
LABEL_16:
      v11 = *(v2 + 104);
      if (v10)
      {
        goto LABEL_17;
      }

LABEL_24:
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_296FF7000, v11, OS_LOG_TYPE_ERROR, "Failed to get voice state!", buf, 2u);
        v13 = v1[8];
        if (v13 != *v9)
        {
          goto LABEL_31;
        }

LABEL_26:
        v15 = *(v2 + 104);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = "YES";
          if (!v13)
          {
            v16 = "NO";
          }

          *buf = 136315138;
          *&buf[4] = v16;
          v17 = "#I Voice state is the same as before; not updating the voice state: %s";
          v18 = v15;
LABEL_56:
          _os_log_impl(&dword_296FF7000, v18, OS_LOG_TYPE_DEFAULT, v17, buf, 0xCu);
          operator delete(v1);
          v30 = a1;
          if (!a1)
          {
            goto LABEL_65;
          }

          goto LABEL_61;
        }

LABEL_60:
        operator delete(v1);
        v30 = a1;
        if (!a1)
        {
          goto LABEL_65;
        }

        goto LABEL_61;
      }

LABEL_25:
      v13 = v1[8];
      if (v13 != *v9)
      {
        goto LABEL_31;
      }

      goto LABEL_26;
    }
  }

  else
  {
    v10 = 0;
    if (!v8)
    {
      goto LABEL_16;
    }
  }

  if (atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_16;
  }

  v14 = v10;
  (v8->__on_zero_shared)(v8);
  std::__shared_weak_count::__release_weak(v8);
  v11 = *(v2 + 104);
  if ((v14 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_17:
  if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_25;
  }

  if (*v9)
  {
    v12 = "On";
  }

  else
  {
    v12 = "Off";
  }

  *buf = 136315138;
  *&buf[4] = v12;
  _os_log_impl(&dword_296FF7000, v11, OS_LOG_TYPE_DEFAULT, "#I Succeeded getting voice state: %s", buf, 0xCu);
  v13 = v1[8];
  if (v13 == *v9)
  {
    goto LABEL_26;
  }

LABEL_31:
  *(v2 + 134) = v13;
  v19 = *(v2 + 104);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = "On";
    if (!v13)
    {
      v20 = "Off";
    }

    *buf = 136315138;
    *&buf[4] = v20;
    _os_log_impl(&dword_296FF7000, v19, OS_LOG_TYPE_DEFAULT, "#I Sending voice state to driver: %s", buf, 0xCu);
  }

  v21 = pthread_mutex_lock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
  v22 = off_2A18B7430;
  if (!off_2A18B7430)
  {
    AppleSARHelper::create_default_global(buf, v21);
    v23 = *buf;
    memset(buf, 0, sizeof(buf));
    v24 = *(&off_2A18B7430 + 1);
    off_2A18B7430 = v23;
    if (v24 && !atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v24->__on_zero_shared)(v24);
      std::__shared_weak_count::__release_weak(v24);
    }

    v25 = *&buf[8];
    if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v25->__on_zero_shared)(v25);
      std::__shared_weak_count::__release_weak(v25);
    }

    v22 = off_2A18B7430;
  }

  v26 = *(&off_2A18B7430 + 1);
  if (*(&off_2A18B7430 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18B7430 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
  v36 = *v9;
  if (*(v22 + 1))
  {
    *buf = 0;
    v39[0] = 0;
    v37 = 1;
    v27 = AppleSARHelper::callUserClientMethod(v22, 6, buf, 1, &v36, 1, v39, &v37, &v36, 1uLL);
    if (!v26)
    {
LABEL_50:
      v28 = *(v2 + 104);
      if (v27)
      {
        goto LABEL_51;
      }

      goto LABEL_59;
    }
  }

  else
  {
    v27 = 0;
    if (!v26)
    {
      goto LABEL_50;
    }
  }

  if (atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_50;
  }

  v31 = v27;
  (v26->__on_zero_shared)(v26);
  std::__shared_weak_count::__release_weak(v26);
  v28 = *(v2 + 104);
  if (v31)
  {
LABEL_51:
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      if (*v9)
      {
        v29 = "YES";
      }

      else
      {
        v29 = "NO";
      }

      *buf = 136315138;
      *&buf[4] = v29;
      v17 = "#I Setting SAR Fusion Voice state: %s";
      v18 = v28;
      goto LABEL_56;
    }

    goto LABEL_60;
  }

LABEL_59:
  if (!os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_60;
  }

  *buf = 0;
  _os_log_error_impl(&dword_296FF7000, v28, OS_LOG_TYPE_ERROR, "Failed to set voice state!", buf, 2u);
  operator delete(v1);
  v30 = a1;
  if (!a1)
  {
    goto LABEL_65;
  }

LABEL_61:
  v32 = v30[2];
  if (v32 && !atomic_fetch_add(&v32->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v33 = v30;
    (v32->__on_zero_shared)(v32);
    std::__shared_weak_count::__release_weak(v32);
    v30 = v33;
  }

  operator delete(v30);
LABEL_65:
  v34 = *MEMORY[0x29EDCA608];
}

void sub_29716E798(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  pthread_mutex_unlock(&ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance);
  operator delete(v3);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t __cxx_global_var_init_74()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<CommandDriverFactory>::~PthreadMutexGuardPolicy, &ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance, &dword_296FF7000);
  }

  return result;
}

uint64_t __cxx_global_var_init_75()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<AppleSARHelper>::~PthreadMutexGuardPolicy, &ctu::Singleton<AppleSARHelper,AppleSARHelper,ctu::PthreadMutexGuardPolicy<AppleSARHelper>>::sInstance, &dword_296FF7000);
  }

  return result;
}

uint64_t __cxx_global_var_init_76()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ctu::Gestalt>::~PthreadMutexGuardPolicy, &ctu::Singleton<ctu::Gestalt,ctu::Gestalt,ctu::PthreadMutexGuardPolicy<ctu::Gestalt>>::sInstance, &dword_296FF7000);
  }

  return result;
}

uint64_t __cxx_global_var_init_77()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ABMServer>::~PthreadMutexGuardPolicy, &ctu::Singleton<ABMServer,ABMServer,ctu::PthreadMutexGuardPolicy<ABMServer>>::sInstance, &dword_296FF7000);
  }

  return result;
}

void ServerClientState::ServerClientState(ServerClientState *this)
{
  *this = 0;
  *(this + 1) = 0;
}

{
  *this = 0;
  *(this + 1) = 0;
}

std::string **ServerClientState::ServerClientState(std::string **a1, uint64_t a2)
{
  v4 = operator new(0x38uLL);
  v5 = v4;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *a2, *(a2 + 8));
  }

  else
  {
    *&v4->__r_.__value_.__l.__data_ = *a2;
    v4->__r_.__value_.__r.__words[2] = *(a2 + 16);
  }

  v5[1].__r_.__value_.__s.__data_[0] = 0;
  v5[2].__r_.__value_.__r.__words[0] = 0;
  v5[1].__r_.__value_.__r.__words[2] = 0;
  v5[1].__r_.__value_.__l.__size_ = &v5[1].__r_.__value_.__r.__words[2];
  *a1 = v5;
  v6 = operator new(0x20uLL);
  v6->__r_.__value_.__r.__words[0] = &unk_2A1E2D130;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6[1].__r_.__value_.__r.__words[0] = v5;
  a1[1] = v6;
  return a1;
}

void sub_29716E9E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<ServerClientState::State>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void ***ServerClientState::setCheckedIn(void ***result, void **a2)
{
  v2 = *result;
  if (*result == a2)
  {
    goto LABEL_5;
  }

  if (*(v2 + 23) < 0)
  {
    v4 = a2[1];
    if (*(a2 + 23) >= 0)
    {
      v5 = *(a2 + 23);
    }

    else
    {
      a2 = *a2;
      v5 = v4;
    }

    result = std::string::__assign_no_alias<false>(*result, a2, v5);
    *(v2 + 24) = 1;
  }

  else
  {
    if ((*(a2 + 23) & 0x80) == 0)
    {
      v3 = *a2;
      v2[2] = a2[2];
      *v2 = v3;
LABEL_5:
      *(v2 + 24) = 1;
      return result;
    }

    result = std::string::__assign_no_alias<true>(*result, *a2, a2[1]);
    *(v2 + 24) = 1;
  }

  return result;
}

uint64_t ServerClientState::isNotificationRegistered_sync(uint64_t *a1, const void **a2, const void **a3)
{
  v4 = *a1;
  v5 = *a3;
  cf = v5;
  if (v5)
  {
    CFRetain(v5);
  }

  isNotificationRegistered = ServerClientState::State::isNotificationRegistered(v4, a2, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  return isNotificationRegistered;
}

void sub_29716EB08(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void ServerClientState::registerNotification_sync(void **a1, int a2, const void **a3)
{
  v4 = *a1;
  v5 = *a3;
  if (*a3)
  {
    CFRetain(v5);
  }

  v6.length = CFArrayGetCount(v5);
  if (a2)
  {
    v7 = ServerClientState::State::registerNotificationApplier;
  }

  else
  {
    v7 = ServerClientState::State::unregisterNotificationApplier;
  }

  v6.location = 0;
  CFArrayApplyFunction(v5, v6, v7, v4);
  if (v5)
  {
    CFRelease(v5);
  }
}

void sub_29716EBB8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<__CFArray const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void ServerClientState::getName(ServerClientState *this@<X0>, std::string *a2@<X8>)
{
  v2 = *this;
  if (*(*this + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *v2, *(v2 + 1));
  }

  else
  {
    v3 = *v2;
    a2->__r_.__value_.__r.__words[2] = *(v2 + 2);
    *&a2->__r_.__value_.__l.__data_ = v3;
  }
}

int64_t ___ZN17ServerClientState5State24isNotificationRegisteredERKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK14__CFDictionaryEE_block_invoke(int64_t result, const void *a2, const void *a3)
{
  if (a3)
  {
    v5 = result;
    TypeID = CFDictionaryGetTypeID();
    result = CFGetTypeID(a3);
    if (TypeID == result)
    {
      result = CFDictionaryContainsKey(a3, *(v5 + 40));
      if (result)
      {
        Value = CFDictionaryGetValue(a3, *(v5 + 40));
        v8 = CFArrayGetTypeID();
        result = CFGetTypeID(Value);
        if (v8 == result)
        {
          v9 = CFDictionaryGetValue(*(v5 + 48), a2);
          for (i = 0; ; ++i)
          {
            result = CFArrayGetCount(Value);
            if (i >= result)
            {
              break;
            }

            ValueAtIndex = CFArrayGetValueAtIndex(Value, i);
            result = CFEqual(v9, ValueAtIndex);
            if (result)
            {
              *(*(*(v5 + 32) + 8) + 24) = 1;
              return result;
            }
          }
        }
      }
    }
  }

  return result;
}

CFTypeRef __copy_helper_block_e8_40c41_ZTSN3ctu2cf11CFSharedRefIK10__CFStringEE48c45_ZTSN3ctu2cf11CFSharedRefIK14__CFDictionaryEE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  *(a1 + 40) = v4;
  if (v4)
  {
    CFRetain(v4);
  }

  result = *(a2 + 48);
  *(a1 + 48) = result;
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

void __destroy_helper_block_e8_40c41_ZTSN3ctu2cf11CFSharedRefIK10__CFStringEE48c45_ZTSN3ctu2cf11CFSharedRefIK14__CFDictionaryEE(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    CFRelease(v3);
  }
}

uint64_t ServerClientState::State::registerNotificationApplier(ServerClientState::State *this, char *a2, void *a3)
{
  v28[0] = 0xAAAAAAAAAAAAAAAALL;
  v28[1] = 0xAAAAAAAAAAAAAAAALL;
  ctu::cf::dict_adapter::dict_adapter(v28, this);
  memset(&v27, 170, sizeof(v27));
  memset(&__p, 0, sizeof(__p));
  ctu::cf::MakeCFString::MakeCFString(v29, kKeyEvent[0]);
  ctu::cf::map_adapter::getString();
  MEMORY[0x29C26B130](v29);
  ctu::cf::MakeCFString::MakeCFString(&__p, kKeyEventFilter[0]);
  v4 = ctu::cf::map_adapter::copyCFDictionaryRef(v28, __p.__r_.__value_.__l.__data_);
  MEMORY[0x29C26B130](&__p);
  v26 = v4;
  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v27.__r_.__value_.__l.__data_, v27.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v27;
  }

  cf = v4;
  if (v4)
  {
    CFRetain(v4);
  }

  v5 = *(a2 + 5);
  if (!v5)
  {
    v8 = (a2 + 40);
    v9 = (a2 + 40);
    goto LABEL_34;
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  do
  {
    while (1)
    {
      v9 = v5;
      v12 = v5[4];
      v10 = v5 + 4;
      v11 = v12;
      v13 = *(v10 + 23);
      v14 = v13 >= 0 ? v10 : v11;
      v15 = v13 >= 0 ? *(v10 + 23) : v10[1];
      v16 = v15 >= size ? size : v15;
      v17 = memcmp(p_p, v14, v16);
      if (v17)
      {
        break;
      }

      if (size >= v15)
      {
        goto LABEL_27;
      }

LABEL_13:
      v5 = *v9;
      v8 = v9;
      if (!*v9)
      {
        goto LABEL_34;
      }
    }

    if (v17 < 0)
    {
      goto LABEL_13;
    }

LABEL_27:
    v18 = memcmp(v14, p_p, v16);
    if (v18)
    {
      if ((v18 & 0x80000000) == 0)
      {
        goto LABEL_40;
      }
    }

    else if (v15 >= size)
    {
      goto LABEL_40;
    }

    v5 = v9[1];
  }

  while (v5);
  v8 = v9 + 1;
LABEL_34:
  v19 = operator new(0x40uLL);
  v20 = v19;
  v21 = (a2 + 32);
  v29[0] = v19;
  v29[1] = a2 + 32;
  v29[2] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external((v19 + 32), __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    *(v19 + 32) = __p;
  }

  v20[7] = cf;
  cf = 0;
  *v20 = 0;
  v20[1] = 0;
  v20[2] = v9;
  *v8 = v20;
  v22 = **v21;
  if (v22)
  {
    *v21 = v22;
  }

  std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(a2 + 5), v20);
  ++*(a2 + 6);
LABEL_40:
  if (cf)
  {
    CFRelease(cf);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (!v4)
    {
      goto LABEL_47;
    }

    goto LABEL_46;
  }

  if (v4)
  {
LABEL_46:
    CFRelease(v4);
  }

LABEL_47:
  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  return MEMORY[0x29C26B180](v28);
}

void sub_29716F01C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, const void *a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, uint64_t a25, uint64_t a26)
{
  std::unique_ptr<std::__tree_node<std::__value_type<std::string,ctu::cf::CFSharedRef<__CFDictionary const>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,ctu::cf::CFSharedRef<__CFDictionary const>>,void *>>>>::~unique_ptr[abi:ne200100](&a26);
  std::pair<std::string const,ctu::cf::CFSharedRef<__CFDictionary const>>::~pair(&a9);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&a17);
  if (a23 < 0)
  {
    operator delete(__p);
    MEMORY[0x29C26B180](&a24);
    _Unwind_Resume(a1);
  }

  MEMORY[0x29C26B180](&a24);
  _Unwind_Resume(a1);
}

void ServerClientState::State::unregisterNotificationApplier(ServerClientState::State *this, void *a2, void *a3)
{
  v14 = 0uLL;
  v15 = 0;
  ctu::cf::assign();
  *__p = 0uLL;
  v13 = 0;
  v4 = std::__tree<std::__value_type<std::string,std::shared_ptr<LogInfo>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<LogInfo>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<LogInfo>>>>::find<std::string>((a2 + 4), __p);
  if (a2 + 5 != v4)
  {
    v5 = v4;
    v6 = v4[1];
    if (v6)
    {
      do
      {
        v7 = v6;
        v6 = *v6;
      }

      while (v6);
    }

    else
    {
      v8 = v4;
      do
      {
        v7 = v8[2];
        v9 = *v7 == v8;
        v8 = v7;
      }

      while (!v9);
    }

    if (a2[4] == v4)
    {
      a2[4] = v7;
    }

    v10 = a2[5];
    --a2[6];
    std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v10, v5);
    v11 = v5[7];
    if (v11)
    {
      CFRelease(v11);
    }

    if (*(v5 + 55) < 0)
    {
      operator delete(v5[4]);
    }

    operator delete(v5);
  }

  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_29716F1C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::unique_ptr<std::__tree_node<std::__value_type<std::string,ctu::cf::CFSharedRef<__CFDictionary const>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,ctu::cf::CFSharedRef<__CFDictionary const>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      v3 = *(v2 + 56);
      if (v3)
      {
        CFRelease(v3);
      }

      if (*(v2 + 55) < 0)
      {
        operator delete(*(v2 + 32));
      }
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::pair<std::string const,ctu::cf::CFSharedRef<__CFDictionary const>>::~pair(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    CFRelease(v2);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__shared_ptr_pointer<ServerClientState::State *,std::shared_ptr<ServerClientState::State>::__shared_ptr_default_delete<ServerClientState::State,ServerClientState::State>,std::allocator<ServerClientState::State>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<ServerClientState::State *,std::shared_ptr<ServerClientState::State>::__shared_ptr_default_delete<ServerClientState::State,ServerClientState::State>,std::allocator<ServerClientState::State>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__tree<std::__value_type<std::string,ctu::cf::CFSharedRef<__CFDictionary const>>,std::__map_value_compare<std::string,std::__value_type<std::string,ctu::cf::CFSharedRef<__CFDictionary const>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ctu::cf::CFSharedRef<__CFDictionary const>>>>::destroy(v1 + 32, *(v1 + 40));
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
      v2 = v1;
    }

    else
    {
      v2 = v1;
    }

    operator delete(v2);
  }
}

uint64_t std::__shared_ptr_pointer<ServerClientState::State *,std::shared_ptr<ServerClientState::State>::__shared_ptr_default_delete<ServerClientState::State,ServerClientState::State>,std::allocator<ServerClientState::State>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x800000029722D7F4)
  {
    if (((v2 & 0x800000029722D7F4 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000029722D7F4))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000029722D7F4 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void std::__tree<std::__value_type<std::string,ctu::cf::CFSharedRef<__CFDictionary const>>,std::__map_value_compare<std::string,std::__value_type<std::string,ctu::cf::CFSharedRef<__CFDictionary const>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ctu::cf::CFSharedRef<__CFDictionary const>>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,ctu::cf::CFSharedRef<__CFDictionary const>>,std::__map_value_compare<std::string,std::__value_type<std::string,ctu::cf::CFSharedRef<__CFDictionary const>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ctu::cf::CFSharedRef<__CFDictionary const>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,ctu::cf::CFSharedRef<__CFDictionary const>>,std::__map_value_compare<std::string,std::__value_type<std::string,ctu::cf::CFSharedRef<__CFDictionary const>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ctu::cf::CFSharedRef<__CFDictionary const>>>>::destroy(a1, *(a2 + 1));
    v4 = *(a2 + 7);
    if (v4)
    {
      CFRelease(v4);
    }

    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
      v5 = a2;
    }

    else
    {
      v5 = a2;
    }

    operator delete(v5);
  }
}

void *std::unique_ptr<ServerClientState::State>::~unique_ptr[abi:ne200100](void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    std::__tree<std::__value_type<std::string,ctu::cf::CFSharedRef<__CFDictionary const>>,std::__map_value_compare<std::string,std::__value_type<std::string,ctu::cf::CFSharedRef<__CFDictionary const>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,ctu::cf::CFSharedRef<__CFDictionary const>>>>::destroy(v1 + 32, *(v1 + 40));
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
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
    *v5 = &unk_2A1E2D180;
    *(v5 + 21) = 0;
    awd::metrics::CommCenterBasebandBootTime::default_instance_ = v5;
    v6 = operator new(0x28uLL);
    v7 = MEMORY[0x29EDC9758];
    *v6 = &unk_2A1E2D1F8;
    v6[1] = v7;
    v6[3] = 0;
    v6[2] = v7;
    *(v6 + 8) = 0;
    awd::metrics::CrashReasonType::default_instance_ = v6;
    v8 = operator new(0x30uLL);
    v8[5] = 0;
    *v8 = &unk_2A1E2D270;
    v8[1] = 0;
    v8[2] = 0;
    v8[3] = 0;
    *(v8 + 8) = 0;
    awd::metrics::CommCenterBasebanCrash::default_instance_ = v8;
    v9 = operator new(0x28uLL);
    v9[3] = v7;
    v9[4] = 0;
    *v9 = &unk_2A1E2D2E8;
    v9[1] = 0;
    v9[2] = v7;
    awd::metrics::CommCenterBasebandTrace::default_instance_ = v9;
    v10 = operator new(0x28uLL);
    v10[4] = 0;
    v10[1] = 0;
    v10[2] = 0;
    *v10 = &unk_2A1E2D360;
    *(v10 + 22) = 0;
    awd::metrics::CommCenterNVMSync::default_instance_ = v10;
    v11 = operator new(0x20uLL);
    *v11 = &unk_2A1E2D3D8;
    v11[1] = 0;
    v11[2] = 0;
    v11[3] = 0;
    awd::metrics::CommCenterAccessoryInformation::default_instance_ = v11;
    v12 = operator new(0x48uLL);
    *v12 = &unk_2A1E2D450;
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
  *this = &unk_2A1E2D180;
  *(this + 21) = 0;
  return this;
}

{
  *(this + 32) = 0;
  *(this + 40) = 0;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *this = &unk_2A1E2D180;
  *(this + 21) = 0;
  return this;
}

uint64_t awd::metrics::CrashReasonType::CrashReasonType(uint64_t this)
{
  v1 = MEMORY[0x29EDC9758];
  *this = &unk_2A1E2D1F8;
  *(this + 8) = v1;
  *(this + 16) = v1;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

{
  v1 = MEMORY[0x29EDC9758];
  *this = &unk_2A1E2D1F8;
  *(this + 8) = v1;
  *(this + 16) = v1;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

uint64_t awd::metrics::CommCenterBasebanCrash::CommCenterBasebanCrash(uint64_t this)
{
  *(this + 40) = 0;
  *this = &unk_2A1E2D270;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

{
  *(this + 40) = 0;
  *this = &unk_2A1E2D270;
  *(this + 8) = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 32) = 0;
  return this;
}

void *awd::metrics::CommCenterBasebandTrace::CommCenterBasebandTrace(void *this)
{
  this[4] = 0;
  *this = &unk_2A1E2D2E8;
  this[1] = 0;
  v1 = MEMORY[0x29EDC9758];
  this[2] = MEMORY[0x29EDC9758];
  this[3] = v1;
  return this;
}

{
  this[4] = 0;
  *this = &unk_2A1E2D2E8;
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
  *this = &unk_2A1E2D360;
  *(this + 22) = 0;
  return this;
}

{
  this[4] = 0;
  this[1] = 0;
  this[2] = 0;
  *this = &unk_2A1E2D360;
  *(this + 22) = 0;
  return this;
}

void *awd::metrics::CommCenterAccessoryInformation::CommCenterAccessoryInformation(void *this)
{
  *this = &unk_2A1E2D3D8;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

{
  *this = &unk_2A1E2D3D8;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0;
  return this;
}

uint64_t awd::metrics::MetricsCCBasebandReset::MetricsCCBasebandReset(uint64_t this)
{
  v1 = MEMORY[0x29EDC9758];
  *this = &unk_2A1E2D450;
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
  *this = &unk_2A1E2D450;
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
  *this = &unk_2A1E2D180;
  *(this + 21) = 0;
  awd::metrics::CommCenterBasebandBootTime::MergeFrom(this, a2);
  return this;
}

{
  *(this + 4) = 0;
  *(this + 10) = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_2A1E2D180;
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

void sub_29716FB6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_29716FB80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::CommCenterBasebandBootTime::~CommCenterBasebandBootTime(awd::metrics::CommCenterBasebandBootTime *this)
{
  *this = &unk_2A1E2D180;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1E2D180;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1E2D180;
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
  *result = &unk_2A1E2D180;
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
  *(a1 + 8) = xmmword_297227A40;
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
  *this = &unk_2A1E2D1F8;
  *(this + 1) = v3;
  *(this + 2) = v3;
  *(this + 3) = 0;
  *(this + 8) = 0;
  awd::metrics::CrashReasonType::MergeFrom(this, a2);
  return this;
}

{
  v3 = MEMORY[0x29EDC9758];
  *this = &unk_2A1E2D1F8;
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

void sub_297170670(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_297170684(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::CrashReasonType::~CrashReasonType(awd::metrics::CrashReasonType *this)
{
  *this = &unk_2A1E2D1F8;
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
  *this = &unk_2A1E2D1F8;
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
  *this = &unk_2A1E2D1F8;
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
  *result = &unk_2A1E2D1F8;
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
  *(a1 + 8) = xmmword_297227A60;
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
  *this = &unk_2A1E2D270;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  awd::metrics::CommCenterBasebanCrash::MergeFrom(this, a2);
  return this;
}

{
  *(this + 5) = 0;
  *this = &unk_2A1E2D270;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  awd::metrics::CommCenterBasebanCrash::MergeFrom(this, a2);
  return this;
}

void sub_297171150(_Unwind_Exception *a1)
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
      *v8 = &unk_2A1E2D1F8;
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

void sub_2971712FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_297171310(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_297171374(_Unwind_Exception *a1)
{
  wireless_diagnostics::google::protobuf::RepeatedPtrField<awd::metrics::CrashReasonType>::~RepeatedPtrField(v1 + 16);
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(v1);
  _Unwind_Resume(a1);
}

void awd::metrics::CommCenterBasebanCrash::~CommCenterBasebanCrash(awd::metrics::CommCenterBasebanCrash *this)
{
  *this = &unk_2A1E2D270;
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
  *this = &unk_2A1E2D270;
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
  *this = &unk_2A1E2D270;
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
  *result = &unk_2A1E2D270;
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
          *v17 = &unk_2A1E2D1F8;
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
  *(a1 + 8) = xmmword_297227A80;
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
  *this = &unk_2A1E2D2E8;
  *(this + 1) = 0;
  v3 = MEMORY[0x29EDC9758];
  *(this + 2) = MEMORY[0x29EDC9758];
  *(this + 3) = v3;
  awd::metrics::CommCenterBasebandTrace::MergeFrom(this, a2);
  return this;
}

{
  *(this + 4) = 0;
  *this = &unk_2A1E2D2E8;
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

void sub_297171E98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_297171EAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::CommCenterBasebandTrace::~CommCenterBasebandTrace(awd::metrics::CommCenterBasebandTrace *this)
{
  *this = &unk_2A1E2D2E8;
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
  *this = &unk_2A1E2D2E8;
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
  *this = &unk_2A1E2D2E8;
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
  *result = &unk_2A1E2D2E8;
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
  *(a1 + 8) = xmmword_297227AB0;
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
  *this = &unk_2A1E2D360;
  *(this + 22) = 0;
  awd::metrics::CommCenterNVMSync::MergeFrom(this, a2);
  return this;
}

{
  *(this + 4) = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_2A1E2D360;
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

void sub_297172A70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_297172A84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::CommCenterNVMSync::~CommCenterNVMSync(awd::metrics::CommCenterNVMSync *this)
{
  *this = &unk_2A1E2D360;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1E2D360;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1E2D360;
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
  *result = &unk_2A1E2D360;
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
  *(a1 + 8) = xmmword_2972224C0;
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
  *this = &unk_2A1E2D3D8;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  awd::metrics::CommCenterAccessoryInformation::MergeFrom(this, a2);
  return this;
}

{
  *this = &unk_2A1E2D3D8;
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

void sub_2971733E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_2971733F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::CommCenterAccessoryInformation::~CommCenterAccessoryInformation(awd::metrics::CommCenterAccessoryInformation *this)
{
  *this = &unk_2A1E2D3D8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1E2D3D8;
  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1E2D3D8;
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
  *result = &unk_2A1E2D3D8;
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
  *(a1 + 8) = xmmword_29722D850;
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
  *this = &unk_2A1E2D450;
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
  *this = &unk_2A1E2D450;
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

void sub_297173EC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void sub_297173EDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  wireless_diagnostics::google::protobuf::internal::LogMessage::~LogMessage(va);
  _Unwind_Resume(a1);
}

void awd::metrics::MetricsCCBasebandReset::~MetricsCCBasebandReset(awd::metrics::MetricsCCBasebandReset *this)
{
  *this = &unk_2A1E2D450;
  awd::metrics::MetricsCCBasebandReset::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1E2D450;
  awd::metrics::MetricsCCBasebandReset::SharedDtor(this);

  wireless_diagnostics::google::protobuf::MessageLite::~MessageLite(this);
}

{
  *this = &unk_2A1E2D450;
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
  *result = &unk_2A1E2D450;
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
  *(a1 + 8) = xmmword_297227A80;
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

void *sys::UIObserver::create_default_global@<X0>(void *a1@<X8>)
{
  *a1 = 0xAAAAAAAAAAAAAAAALL;
  a1[1] = 0xAAAAAAAAAAAAAAAALL;
  v3 = operator new(0x40uLL);
  sys::UIObserver::UIObserver(v3);

  return std::shared_ptr<sys::UIObserver>::shared_ptr[abi:ne200100]<sys::UIObserver,0>(a1, v3);
}

sys::UIObserver *sys::UIObserver::UIObserver(sys::UIObserver *this)
{
  v2 = dispatch_queue_create("sys::UIObserver", 0);
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = v2;
  if (v2)
  {
    v3 = v2;
    dispatch_retain(v2);
    *(this + 3) = 0;
    dispatch_release(v3);
  }

  else
  {
    *(this + 3) = 0;
  }

  *(this + 4) = &unk_2A1E2D650;
  v4 = operator new(0x28uLL);
  boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::signal_impl(v4);
  *(this + 5) = v4;
  *(this + 6) = 0;
  boost::detail::sp_pointer_construct<boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>,boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>>(this + 40, v4, this + 6);
  *(this + 7) = 0xFFFFFFFF00000000;
  return this;
}

void sub_297175110(_Unwind_Exception *a1)
{
  v3 = v2;
  boost::detail::shared_count::~shared_count(v3);
  ctu::SharedSynchronizable<StatsModule>::~SharedSynchronizable(v1);
  _Unwind_Resume(a1);
}

void sub_297175130(_Unwind_Exception *a1)
{
  operator delete(v2);
  ctu::SharedSynchronizable<StatsModule>::~SharedSynchronizable(v1);
  _Unwind_Resume(a1);
}

uint64_t sys::UIObserver::handleDisplayLockedChange_sync(uint64_t this)
{
  if (*(this + 60) != -1)
  {
    v1 = this;
    v2 = SBSGetScreenLockStatus() != 0;
    return boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::operator()(*(v1 + 40), v2);
  }

  return this;
}

void ___ZN3sys10UIObserver40registerForScreenLockedNotification_syncEv_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = *(a1 + 32);
      if (v4 && *(v4 + 60) != -1)
      {
        v5 = v3;
        v6 = SBSGetScreenLockStatus() != 0;
        boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::operator()(*(v4 + 40), v6);
        v3 = v5;
      }

      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v7 = v3;
        (v3->__on_zero_shared)();
        std::__shared_weak_count::__release_weak(v7);
      }
    }
  }
}

void sub_297175284(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void __destroy_helper_block_e8_32c41_ZTSNSt3__18weak_ptrIN3sys10UIObserverEEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t sys::UIObserver::unregisterForScreenLockedNotification_sync(sys::UIObserver *this)
{
  result = *(this + 15);
  if (result != -1)
  {
    result = notify_cancel(result);
    *(this + 15) = -1;
  }

  return result;
}

void ___ZN3sys10UIObserver7observeEb_block_invoke(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      v6 = a1[5];
      if (v6)
      {
        v7[0] = MEMORY[0x29EDCA5F8];
        v7[1] = 0x40000000;
        v7[2] = ___ZN3sys10UIObserver7observeEb_block_invoke_2;
        v7[3] = &__block_descriptor_tmp_5_2;
        v7[4] = v3;
        ctu::SharedSynchronizable<sys::UIObserver>::execute_wrapped(v6, v7);
      }

      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }
}

uint64_t ___ZN3sys10UIObserver7observeEb_block_invoke_2(uint64_t result)
{
  v1 = *(result + 32);
  v2 = *(v1 + 56) - 1;
  *(v1 + 56) = v2;
  if (!v2)
  {
    result = *(v1 + 60);
    if (result != -1)
    {
      result = notify_cancel(result);
      *(v1 + 60) = -1;
    }
  }

  return result;
}

void __destroy_helper_block_e8_40c41_ZTSNSt3__18weak_ptrIN3sys10UIObserverEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void *std::shared_ptr<sys::UIObserver>::shared_ptr[abi:ne200100]<sys::UIObserver,0>(void *a1, void *a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_2A1E2D600;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  if (a2)
  {
    v6 = a2[1];
    if (v6)
    {
      if (v6->__shared_owners_ == -1)
      {
        atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
        *a2 = a2;
        a2[1] = v4;
        v7 = v4;
        std::__shared_weak_count::__release_weak(v6);
        v4 = v7;
        if (!atomic_fetch_add(v5, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
      atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
      *a2 = a2;
      a2[1] = v4;
      if (!atomic_fetch_add(v5, 0xFFFFFFFFFFFFFFFFLL))
      {
LABEL_8:
        v9 = v4;
        (*(*v4 + 16))();
        std::__shared_weak_count::__release_weak(v9);
      }
    }
  }

  return a1;
}

void sub_297175640(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<sys::UIObserver>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_pointer<sys::UIObserver *,std::shared_ptr<sys::UIObserver>::__shared_ptr_default_delete<sys::UIObserver,sys::UIObserver>,std::allocator<sys::UIObserver>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<sys::UIObserver *,std::shared_ptr<sys::UIObserver>::__shared_ptr_default_delete<sys::UIObserver,sys::UIObserver>,std::allocator<sys::UIObserver>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    v1[4] = &unk_2A1E2D650;
    v2 = v1[6];
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

    v3 = v1[3];
    if (v3)
    {
      dispatch_release(v3);
    }

    v4 = v1[2];
    if (v4)
    {
      dispatch_release(v4);
    }

    v5 = v1[1];
    if (v5)
    {
      std::__shared_weak_count::__release_weak(v5);
    }

    operator delete(v1);
  }
}

uint64_t std::__shared_ptr_pointer<sys::UIObserver *,std::shared_ptr<sys::UIObserver>::__shared_ptr_default_delete<sys::UIObserver,sys::UIObserver>,std::allocator<sys::UIObserver>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x800000029722DB90)
  {
    if (((v2 & 0x800000029722DB90 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000029722DB90))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000029722DB90 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void *boost::signals2::signal<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::~signal(void *result)
{
  *result = &unk_2A1E2D650;
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
  *a1 = &unk_2A1E2D650;
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

void **std::unique_ptr<sys::UIObserver>::~unique_ptr[abi:ne200100](void **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v1[4] = &unk_2A1E2D650;
    v3 = v1[6];
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

    v4 = v1[3];
    if (v4)
    {
      dispatch_release(v4);
    }

    v5 = v1[2];
    if (v5)
    {
      dispatch_release(v5);
    }

    v6 = v1[1];
    if (v6)
    {
      std::__shared_weak_count::__release_weak(v6);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

uint64_t boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::signal_impl(uint64_t a1)
{
  v19[4] = *MEMORY[0x29EDCA608];
  v2 = operator new(0x20uLL);
  v15 = &v15;
  v16 = &v15;
  v19[0] = 0;
  v19[1] = 0;
  v17 = 0;
  v18 = v19;
  v3 = operator new(0x40uLL);
  boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>>::grouped_list(v3, &v15);
  *v2 = v3;
  *(v2 + 1) = 0;
  boost::detail::sp_pointer_construct<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>>,boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>>>(v2, v3, v2 + 1);
  v4 = operator new(1uLL);
  *(v2 + 3) = 0;
  *(v2 + 2) = v4;
  v5 = operator new(0x18uLL);
  v5[1] = 0x100000001;
  *v5 = &unk_2A1E2D710;
  v5[2] = v4;
  *(v2 + 3) = v5;
  *a1 = v2;
  *(a1 + 8) = 0;
  boost::detail::sp_pointer_construct<boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::invocation_state,boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::invocation_state>(a1, v2, (a1 + 8));
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(&v18, v19[0]);
  if (v17)
  {
    v6 = v16;
    v7 = *(v15 + 8);
    v8 = *v16;
    *(v8 + 8) = v7;
    *v7 = v8;
    v17 = 0;
    if (v6 != &v15)
    {
      do
      {
        v9 = v6[1];
        v10 = v6[3];
        if (v10)
        {
          if (atomic_fetch_add(v10 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v10 + 16))(v10);
            if (atomic_fetch_add(v10 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v10 + 24))(v10);
            }
          }
        }

        operator delete(v6);
        v6 = v9;
      }

      while (v9 != &v15);
    }
  }

  *(a1 + 16) = **a1;
  v11 = operator new(0x40uLL);
  pthread_mutex_init(v11, 0);
  *(a1 + 32) = 0;
  *(a1 + 24) = v11;
  v12 = operator new(0x18uLL);
  v12[1] = 0x100000001;
  *v12 = &unk_2A1E2D770;
  v12[2] = v11;
  *(a1 + 32) = v12;
  v13 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_297175D14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    boost::checked_delete<boost::signals2::mutex>(v10);
    __cxa_rethrow();
  }

  _Unwind_Resume(exception_object);
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

void boost::detail::sp_counted_impl_p<boost::signals2::optional_last_value<void>>::dispose(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
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

uint64_t *boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>>::~grouped_list(uint64_t *a1)
{
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy((a1 + 3), a1[4]);
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

atomic_uint *boost::detail::sp_pointer_construct<boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>,boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>>(uint64_t a1, uint64_t a2, atomic_uint **a3)
{
  result = operator new(0x18uLL);
  *(result + 1) = 0x100000001;
  *result = &unk_2A1E2D7D0;
  *(result + 2) = a2;
  v6 = *a3;
  *a3 = result;
  if (v6 && atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
  {
    result = (*(*v6 + 16))(v6);
    if (atomic_fetch_add(v6 + 3, 0xFFFFFFFF) == 1)
    {
      return (*(*v6 + 24))(v6);
    }
  }

  return result;
}

void sub_29717628C(void *a1)
{
  __cxa_begin_catch(a1);
  boost::checked_delete<boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>>(v1);
  __cxa_rethrow();
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

void boost::signals2::detail::auto_buffer<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>>>::deallocate(int a1, void *__p, unint64_t a3)
{
  if (a3 >= 0xB)
  {
    operator delete(__p);
  }
}

uint64_t boost::signals2::detail::obj_scope_guard_impl2<boost::signals2::detail::auto_buffer<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>>>,void (boost::signals2::detail::auto_buffer<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>>>::*)(boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>*,unsigned long),boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>*,unsigned long>::~obj_scope_guard_impl2(uint64_t a1)
{
  if ((*a1 & 1) == 0)
  {
    v2 = *(a1 + 16);
    v3 = *(a1 + 24);
    v4 = (*(a1 + 8) + (v3 >> 1));
    if (v3)
    {
      v2 = *(*v4 + v2);
    }

    v2(v4, *(a1 + 32), *(a1 + 40));
  }

  return a1;
}

void sub_29717670C(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2971766FCLL);
}

uint64_t boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::invocation_janitor::~invocation_janitor(uint64_t result)
{
  if (*(*result + 284) > *(*result + 280))
  {
    v1 = result;
    boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::force_cleanup_connections(*(result + 8), *(result + 16));
    return v1;
  }

  return result;
}

void boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::force_cleanup_connections(uint64_t *a1, uint64_t a2)
{
  v25 = *MEMORY[0x29EDCA608];
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v20[8] = v4;
  v20[9] = v4;
  v20[6] = v4;
  v20[7] = v4;
  v20[4] = v4;
  v20[5] = v4;
  v20[2] = v4;
  v20[3] = v4;
  v20[0] = v4;
  v20[1] = v4;
  v5 = a1[3];
  v21 = 10;
  __p = v20;
  v23 = 0;
  v24 = v5;
  pthread_mutex_lock(v5);
  if (**a1 == a2)
  {
    v6 = a1[1];
    if (!v6 || atomic_load_explicit((v6 + 8), memory_order_acquire) != 1)
    {
      v7 = operator new(0x20uLL);
      v8 = *a1;
      v9 = **a1;
      v10 = operator new(0x40uLL);
      boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>>::grouped_list(v10, v9);
      *v7 = v10;
      *(v7 + 1) = 0;
      boost::detail::sp_pointer_construct<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>>,boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>>>(v7, v10, v7 + 1);
      v11 = v8[3];
      *(v7 + 2) = v8[2];
      *(v7 + 3) = v11;
      if (v11)
      {
        atomic_fetch_add_explicit((v11 + 8), 1u, memory_order_relaxed);
      }

      boost::shared_ptr<boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::invocation_state>::reset<boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::invocation_state>(a1, v7);
    }

    v12 = **a1;
    v13 = v12[1];
    v19 = v13;
    if (v12 != v13)
    {
      do
      {
        while (1)
        {
          v14 = v13[2];
          if ((*(v14 + 24) & 1) == 0)
          {
            break;
          }

          v13 = v13[1];
          v19 = v13;
          if (v13 == v12)
          {
            goto LABEL_12;
          }
        }

        v13 = boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>>::erase(v12, (v14 + 64), &v19);
        v12 = **a1;
        v19 = v13;
      }

      while (v13 != v12);
LABEL_12:
      v13 = v12;
    }

    a1[2] = v13;
  }

  pthread_mutex_unlock(v24);
  v15 = __p;
  if (__p)
  {
    if (v23 > 0)
    {
      v17 = __p + 16 * v23;
      do
      {
        v18 = *(v17 - 1);
        if (v18)
        {
          if (atomic_fetch_add(v18 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v18 + 16))(v18);
            if (atomic_fetch_add(v18 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v18 + 24))(v18);
            }
          }
        }

        v17 -= 16;
      }

      while (v17 > v15);
    }

    if (v21 >= 0xB)
    {
      operator delete(__p);
    }
  }

  v16 = *MEMORY[0x29EDCA608];
}

void sub_2971769B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  boost::detail::shared_count::~shared_count(v12);
  operator delete(v11);
  boost::signals2::detail::garbage_collecting_lock<boost::signals2::mutex>::~garbage_collecting_lock(&a11);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_pointer<sys::UIObserver::Handle *,std::shared_ptr<sys::UIObserver::Handle>::__shared_ptr_default_delete<sys::UIObserver::Handle,sys::UIObserver::Handle>,std::allocator<sys::UIObserver::Handle>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<sys::UIObserver::Handle *,std::shared_ptr<sys::UIObserver::Handle>::__shared_ptr_default_delete<sys::UIObserver::Handle,sys::UIObserver::Handle>,std::allocator<sys::UIObserver::Handle>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    (*(*v1 + 2))();
    if (*v1)
    {
      _Block_release(*v1);
    }

    operator delete(v1);
  }
}

uint64_t std::__shared_ptr_pointer<sys::UIObserver::Handle *,std::shared_ptr<sys::UIObserver::Handle>::__shared_ptr_default_delete<sys::UIObserver::Handle,sys::UIObserver::Handle>,std::allocator<sys::UIObserver::Handle>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x800000029722DDD4)
  {
    if (((v2 & 0x800000029722DDD4 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000029722DDD4))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000029722DDD4 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

const void ***std::unique_ptr<sys::UIObserver::Handle>::~unique_ptr[abi:ne200100](const void ***result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    (*(*v1 + 2))();
    if (*v1)
    {
      _Block_release(*v1);
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void LogTracker::create(uint64_t *a1@<X0>, atomic_ullong *a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  v4 = operator new(0xA8uLL);
  v5 = v4;
  v6 = *a1;
  v7 = a1[1];
  v8[0] = v6;
  v8[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  LogTracker::LogTracker(v4, v8);
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  std::shared_ptr<LogTracker>::shared_ptr[abi:ne200100]<LogTracker,std::shared_ptr<LogTracker> ctu::SharedSynchronizable<LogTracker>::make_shared_ptr<LogTracker>(LogTracker*)::{lambda(LogTracker*)#1},0>(a2, v5);
  if (v7)
  {

    std::__shared_weak_count::__release_weak(v7);
  }
}

void sub_297176C3C(_Unwind_Exception *exception_object)
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

void *LogTracker::LogTracker(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = &unk_2A1E2E7E8;
  a1[1] = v3;
  a1[2] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    a1[3] = 0;
    a1[4] = 0;
    a1[8] = 0;
    a1[7] = 0;
    a1[5] = 0;
    a1[6] = a1 + 7;
    std::__shared_weak_count::__release_weak(v4);
    *a1 = &unk_2A1E25E48;
    std::__shared_weak_count::__release_weak(v4);
  }

  else
  {
    a1[3] = 0;
    a1[4] = 0;
    a1[7] = 0;
    a1[8] = 0;
    a1[5] = 0;
    a1[6] = a1 + 7;
    *a1 = &unk_2A1E25E48;
  }

  *a1 = &unk_2A1E2D8E8;
  ctu::OsLogContext::OsLogContext(v8, "com.apple.telephony.abm", "logtracker.mod");
  initially_inactive = dispatch_queue_attr_make_initially_inactive(0);
  v6 = dispatch_queue_create_with_target_V2("logtracker.mod", initially_inactive, 0);
  dispatch_set_qos_class_floor(v6, QOS_CLASS_USER_INITIATED, 0);
  dispatch_activate(v6);
  a1[9] = 0;
  a1[10] = 0;
  a1[11] = v6;
  if (v6)
  {
    dispatch_retain(v6);
    a1[12] = 0;
    dispatch_release(v6);
  }

  else
  {
    a1[12] = 0;
  }

  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x29C26B010](a1 + 13, v9);
  MEMORY[0x29C26B020](v9);
  ctu::OsLogContext::~OsLogContext(v8);
  *a1 = &unk_2A1E2D8E8;
  a1[16] = 0;
  a1[17] = 0;
  a1[15] = 0;
  a1[14] = a1 + 15;
  a1[18] = 0;
  a1[19] = 0;
  return a1;
}

void LogTracker::~LogTracker(LogTracker *this)
{
  *this = &unk_2A1E2D8E8;
  v2 = this + 104;
  v3 = *(this + 13);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_296FF7000, v3, OS_LOG_TYPE_DEFAULT, "#I Gone!", v14, 2u);
  }

  v4 = *(this + 19);
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = *(this + 17);
  if (v5)
  {
    dispatch_release(v5);
  }

  std::__tree<std::__value_type<std::string,std::shared_ptr<support::misc::Watchdog>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<support::misc::Watchdog>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<support::misc::Watchdog>>>>::destroy(*(this + 15));
  MEMORY[0x29C26B020](v2);
  v6 = *(this + 12);
  if (v6)
  {
    dispatch_release(v6);
  }

  v7 = *(this + 11);
  if (v7)
  {
    dispatch_release(v7);
  }

  v8 = *(this + 10);
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  *this = &unk_2A1E2E7E8;
  std::__tree<std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>>>::destroy(this + 48, *(this + 7));
  v9 = *(this + 3);
  if (v9)
  {
    v10 = *(this + 4);
    v11 = *(this + 3);
    if (v10 != v9)
    {
      do
      {
        v12 = *(v10 - 1);
        v10 -= 3;
        if (v12 < 0)
        {
          operator delete(*v10);
        }
      }

      while (v10 != v9);
      v11 = *(this + 3);
    }

    *(this + 4) = v9;
    operator delete(v11);
  }

  v13 = *(this + 2);
  if (v13)
  {
    std::__shared_weak_count::__release_weak(v13);
  }
}

{
  LogTracker::~LogTracker(this);

  operator delete(v1);
}

_WORD *LogTracker::getBootstrapStages@<X0>(void *a1@<X8>)
{
  v3 = operator new(2uLL);
  *a1 = v3;
  *v3 = 256;
  result = v3 + 1;
  a1[1] = result;
  a1[2] = result;
  return result;
}

void LogTracker::bootstrap(void *a1, int a2, dispatch_object_t *a3)
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
    dispatch_async_f(v10, v11, dispatch::async<void ctu::SharedSynchronizable<LogTracker>::execute_wrapped<LogTracker::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(LogTracker::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<LogTracker::bootstrap(BootstrapStage,dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<LogTracker::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke);
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
  dispatch_async_f(v17, v18, dispatch::async<void ctu::SharedSynchronizable<LogTracker>::execute_wrapped<LogTracker::bootstrap(BootstrapStage,dispatch::group_session)::$_1>(LogTracker::bootstrap(BootstrapStage,dispatch::group_session)::$_1 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<LogTracker::bootstrap(BootstrapStage,dispatch::group_session)::$_1,dispatch_queue_s *::default_delete<LogTracker::bootstrap(BootstrapStage,dispatch::group_session)::$_1>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_14;
  }
}

void LogTracker::registerCommandHandlers_sync(uint64_t a1, NSObject **a2)
{
  v148 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 104);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    _os_log_debug_impl(&dword_296FF7000, v4, OS_LOG_TYPE_DEBUG, "#D Registering command handlers", &buf, 2u);
    v5 = *(a1 + 80);
    if (!v5)
    {
LABEL_239:
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }
  }

  else
  {
    v5 = *(a1 + 80);
    if (!v5)
    {
      goto LABEL_239;
    }
  }

  v6 = *(a1 + 72);
  v7 = std::__shared_weak_count::lock(v5);
  if (!v7)
  {
    goto LABEL_239;
  }

  v8 = v7;
  atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v8);
  }

  LogTracker::checkLoggingVersion_sync(a1);
  v9 = dispatch_group_create();
  v10 = *(a1 + 136);
  *(a1 + 136) = v9;
  if (v10)
  {
    dispatch_release(v10);
  }

  v12 = dispatch_group_create();
  v13 = *(a1 + 152);
  *(a1 + 152) = v12;
  if (v13)
  {
    dispatch_release(v13);
  }

  *(a1 + 160) = 0;
  if (prop::tracesettings::enabled(*MEMORY[0x29EDBE5F0], v11) || prop::tracesettings::enabled(*MEMORY[0x29EDBF8E8], v14) || prop::tracesettings::enabled(*MEMORY[0x29EDBE690], v14))
  {
    v144 = 0xAAAAAAAAAAAAAAAALL;
    v145 = 0xAAAAAAAAAAAAAAAALL;
    abm::HelperClient::create(&v144, "tracing.helper", v14);
    v15 = *(a1 + 104);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&dword_296FF7000, v15, OS_LOG_TYPE_DEFAULT, "#I ABM is initializing; reinit traces in helper", &buf, 2u);
    }

    v142 = 0xAAAAAAAAAAAAAAAALL;
    v143 = 0xAAAAAAAAAAAAAAAALL;
    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 3321888768;
    aBlock[2] = ___ZN10LogTracker28registerCommandHandlers_syncEN8dispatch13group_sessionE_block_invoke;
    aBlock[3] = &__block_descriptor_64_e8_40c30_ZTSN8dispatch13group_sessionE48c46_ZTSNSt3__110shared_ptrIN3abm12HelperClientEEE_e147_v48__0_Result_i_basic_string_char__std::char_traits_char___std::allocator_char______rep____short__23c_b7b1____long__Qb63b1____8_dict__object__v__40l;
    v16 = *a2;
    aBlock[4] = a1;
    v139 = v16;
    if (v16)
    {
      dispatch_retain(v16);
      dispatch_group_enter(v139);
    }

    v140 = v144;
    v141 = v145;
    if (v145)
    {
      atomic_fetch_add_explicit((v145 + 8), 1uLL, memory_order_relaxed);
    }

    v17 = _Block_copy(aBlock);
    v18 = *(a1 + 88);
    if (v18)
    {
      dispatch_retain(*(a1 + 88));
    }

    v142 = v17;
    v143 = v18;
    v19 = xpc_dictionary_create(0, 0, 0);
    if (v19 || (v19 = xpc_null_create()) != 0)
    {
      if (MEMORY[0x29C26CE60](v19) == MEMORY[0x29EDCAA00])
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
    v21 = xpc_int64_create(5000);
    if (!v21)
    {
      v21 = xpc_null_create();
    }

    xpc_dictionary_set_value(v20, *MEMORY[0x29EDBD2D8], v21);
    v22 = xpc_null_create();
    xpc_release(v21);
    xpc_release(v22);
    v23 = *MEMORY[0x29EDBE590];
    v24 = strlen(*MEMORY[0x29EDBE590]);
    if (v24 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v25 = v24;
    if (v24 >= 0x17)
    {
      if ((v24 | 7) == 0x17)
      {
        v27 = 25;
      }

      else
      {
        v27 = (v24 | 7) + 1;
      }

      p_dst = operator new(v27);
      v137 = v27 | 0x8000000000000000;
      __dst = p_dst;
      v136 = v25;
    }

    else
    {
      HIBYTE(v137) = v24;
      p_dst = &__dst;
      if (!v24)
      {
LABEL_38:
        *(p_dst + v25) = 0;
        memset(&buf, 0, sizeof(buf));
        if (prop::bbtrace::get(&__dst, &buf))
        {
          v146 = -1431655766;
          v28 = util::convert<int>(&buf, &v146, 0);
          if (v146 == 4)
          {
            v29 = v28;
          }

          else
          {
            v29 = 0;
          }

          if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
LABEL_46:
            if (SHIBYTE(v137) < 0)
            {
              operator delete(__dst);
            }

            v30 = *MEMORY[0x29EDBE880];
            v31 = strlen(*MEMORY[0x29EDBE880]);
            if (v31 > 0x7FFFFFFFFFFFFFF7)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            v32 = v31;
            if (v31 >= 0x17)
            {
              if ((v31 | 7) == 0x17)
              {
                v34 = 25;
              }

              else
              {
                v34 = (v31 | 7) + 1;
              }

              v33 = operator new(v34);
              v137 = v34 | 0x8000000000000000;
              __dst = v33;
              v136 = v32;
            }

            else
            {
              HIBYTE(v137) = v31;
              v33 = &__dst;
              if (!v31)
              {
LABEL_57:
                *(v33 + v32) = 0;
                memset(&buf, 0, sizeof(buf));
                if (prop::bbtrace::get(&__dst, &buf))
                {
                  v146 = -1431655766;
                  v35 = util::convert<int>(&buf, &v146, 0);
                  if (v146 == 1)
                  {
                    v36 = v35;
                  }

                  else
                  {
                    v36 = 0;
                  }

                  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
                  {
LABEL_70:
                    operator delete(buf.__r_.__value_.__l.__data_);
                    if (SHIBYTE(v137) < 0)
                    {
LABEL_71:
                      operator delete(__dst);
                      if ((v29 & v36) != 1)
                      {
LABEL_72:
                        v126 = v20;
                        if (v20)
                        {
                          xpc_retain(v20);
                          v38 = v142;
                          if (!v142)
                          {
                            goto LABEL_83;
                          }
                        }

                        else
                        {
                          v126 = xpc_null_create();
                          v38 = v142;
                          if (!v142)
                          {
LABEL_83:
                            v40 = *MEMORY[0x29EDBD390];
                            v124 = v38;
                            object = v143;
                            if (v143)
                            {
                              dispatch_retain(v143);
                            }

                            abm::HelperClient::perform();
                            if (object)
                            {
                              dispatch_release(object);
                            }

                            if (v124)
                            {
                              _Block_release(v124);
                            }

                            xpc_release(v126);
                            v126 = 0;
LABEL_107:
                            xpc_release(v20);
                            if (v143)
                            {
                              dispatch_release(v143);
                            }

                            if (v142)
                            {
                              _Block_release(v142);
                            }

                            v45 = v141;
                            if (v141 && !atomic_fetch_add(&v141->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                            {
                              (v45->__on_zero_shared)(v45);
                              std::__shared_weak_count::__release_weak(v45);
                            }

                            if (v139)
                            {
                              dispatch_group_leave(v139);
                              if (v139)
                              {
                                dispatch_release(v139);
                              }
                            }

                            v46 = v145;
                            if (v145 && !atomic_fetch_add((v145 + 8), 0xFFFFFFFFFFFFFFFFLL))
                            {
                              (v46->__on_zero_shared)(v46);
                              std::__shared_weak_count::__release_weak(v46);
                            }

                            goto LABEL_120;
                          }
                        }

                        v38 = _Block_copy(v38);
                        goto LABEL_83;
                      }

LABEL_66:
                      v37 = *(a1 + 104);
                      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
                      {
                        LOWORD(buf.__r_.__value_.__l.__data_) = 0;
                        _os_log_impl(&dword_296FF7000, v37, OS_LOG_TYPE_DEFAULT, "#N Cellular Logging was detected before initiating LogTracker. The service needs to be paused in boot-up.", &buf, 2u);
                      }

                      v134 = v20;
                      if (v20)
                      {
                        xpc_retain(v20);
                      }

                      else
                      {
                        v134 = xpc_null_create();
                      }

                      v127[0] = MEMORY[0x29EDCA5F8];
                      v127[1] = 3321888768;
                      v127[2] = ___ZN10LogTracker28registerCommandHandlers_syncEN8dispatch13group_sessionE_block_invoke_4;
                      v127[3] = &__block_descriptor_72_e8_32c46_ZTSNSt3__110shared_ptrIN3abm12HelperClientEEE48c15_ZTSN3xpc4dictE56c79_ZTSN8dispatch8callbackIU13block_pointerFvN12TelephonyXPC6ResultEN3xpc4dictEEEE_e147_v48__0_Result_i_basic_string_char__std::char_traits_char___std::allocator_char______rep____short__23c_b7b1____long__Qb63b1____8_dict__object__v__40l;
                      v127[4] = v144;
                      v128 = v145;
                      if (v145)
                      {
                        atomic_fetch_add_explicit((v145 + 8), 1uLL, memory_order_relaxed);
                      }

                      v129 = v20;
                      if (v20)
                      {
                        xpc_retain(v20);
                        v39 = v142;
                        if (!v142)
                        {
                          goto LABEL_92;
                        }
                      }

                      else
                      {
                        v129 = xpc_null_create();
                        v39 = v142;
                        if (!v142)
                        {
LABEL_92:
                          v130 = v39;
                          v131 = v143;
                          if (v143)
                          {
                            dispatch_retain(v143);
                          }

                          v41 = _Block_copy(v127);
                          v42 = *MEMORY[0x29EDBD470];
                          v43 = *(a1 + 88);
                          if (v43)
                          {
                            dispatch_retain(*(a1 + 88));
                          }

                          v132 = v41;
                          v133 = v43;
                          abm::HelperClient::perform();
                          if (v133)
                          {
                            dispatch_release(v133);
                          }

                          if (v132)
                          {
                            _Block_release(v132);
                          }

                          xpc_release(v134);
                          v134 = 0;
                          if (v131)
                          {
                            dispatch_release(v131);
                          }

                          if (v130)
                          {
                            _Block_release(v130);
                          }

                          xpc_release(v129);
                          v129 = 0;
                          v44 = v128;
                          if (v128 && !atomic_fetch_add(&v128->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                          {
                            (v44->__on_zero_shared)(v44);
                            std::__shared_weak_count::__release_weak(v44);
                          }

                          goto LABEL_107;
                        }
                      }

                      v39 = _Block_copy(v39);
                      goto LABEL_92;
                    }

LABEL_65:
                    if ((v29 & v36) != 1)
                    {
                      goto LABEL_72;
                    }

                    goto LABEL_66;
                  }
                }

                else
                {
                  v36 = 0;
                  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
                  {
                    goto LABEL_70;
                  }
                }

                if (SHIBYTE(v137) < 0)
                {
                  goto LABEL_71;
                }

                goto LABEL_65;
              }
            }

            memmove(v33, v30, v32);
            goto LABEL_57;
          }
        }

        else
        {
          v29 = 0;
          if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_46;
          }
        }

        operator delete(buf.__r_.__value_.__l.__data_);
        goto LABEL_46;
      }
    }

    memmove(p_dst, v23, v25);
    goto LABEL_38;
  }

LABEL_120:
  v47 = MEMORY[0x29EDBFC08];
  strlen(*MEMORY[0x29EDBFC08]);
  ctu::fs::create_directory();
  v48 = MEMORY[0x29EDBFC20];
  v49 = *MEMORY[0x29EDBFC20];
  v50 = strlen(*MEMORY[0x29EDBFC20]);
  if (v50 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v51 = v50;
  if (v50 >= 0x17)
  {
    if ((v50 | 7) == 0x17)
    {
      v53 = 25;
    }

    else
    {
      v53 = (v50 | 7) + 1;
    }

    v52 = operator new(v53);
    v123 = v53 | 0x8000000000000000;
    v122[0] = v52;
    v122[1] = v51;
    goto LABEL_128;
  }

  HIBYTE(v123) = v50;
  v52 = v122;
  if (v50)
  {
LABEL_128:
    memmove(v52, v49, v51);
  }

  *(v51 + v52) = 0;
  v54 = *v47;
  v55 = strlen(*v47);
  if (v55 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v56 = v55;
  if (v55 >= 0x17)
  {
    if ((v55 | 7) == 0x17)
    {
      v58 = 25;
    }

    else
    {
      v58 = (v55 | 7) + 1;
    }

    v57 = operator new(v58);
    v121 = v58 | 0x8000000000000000;
    __p[0] = v57;
    __p[1] = v56;
  }

  else
  {
    HIBYTE(v121) = v55;
    v57 = __p;
    if (!v55)
    {
      goto LABEL_138;
    }
  }

  memmove(v57, v54, v56);
LABEL_138:
  *(v56 + v57) = 0;
  std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](&v118, "[^\\.].*", 0);
  util::moveDirContent(v122, __p, 1u, 1, &v118);
  v59 = v119;
  if (!v119 || atomic_fetch_add(&v119->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    std::locale::~locale(&v118);
    if ((SHIBYTE(v121) & 0x80000000) == 0)
    {
      goto LABEL_141;
    }

LABEL_236:
    operator delete(__p[0]);
    if ((SHIBYTE(v123) & 0x80000000) == 0)
    {
      goto LABEL_142;
    }

    goto LABEL_237;
  }

  (v59->__on_zero_shared)(v59);
  std::__shared_weak_count::__release_weak(v59);
  std::locale::~locale(&v118);
  if (SHIBYTE(v121) < 0)
  {
    goto LABEL_236;
  }

LABEL_141:
  if ((SHIBYTE(v123) & 0x80000000) == 0)
  {
    goto LABEL_142;
  }

LABEL_237:
  operator delete(v122[0]);
LABEL_142:
  strlen(*v48);
  ctu::fs::create_directory();
  v60 = *(a1 + 104);
  if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
  {
    v61 = *v48;
    v62 = *v47;
    LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
    *(buf.__r_.__value_.__r.__words + 4) = v61;
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = v62;