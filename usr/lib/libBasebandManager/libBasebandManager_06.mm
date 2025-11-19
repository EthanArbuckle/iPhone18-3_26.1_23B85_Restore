void sub_29704A978(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, char a18, int a19, __int16 a20, char a21, char a22, int a23, __int16 a24, char a25, char a26, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void ___ZN4coex6Module5State17handleSetCC2_syncEN3xpc4dictENS_5SubIdE_block_invoke(uint64_t a1, uint64_t *a2)
{
  v7 = *MEMORY[0x29EDCA608];
  v2 = *a2;
  if (*a2)
  {
    v3 = *(*(a1 + 32) + 32);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138412290;
      v6 = v2;
      _os_log_impl(&dword_296FF7000, v3, OS_LOG_TYPE_DEFAULT, "#E Failed to set CC2: %@", &v5, 0xCu);
    }
  }

  v4 = *MEMORY[0x29EDCA608];
}

void coex::Module::State::handleSetLaaGpioThrottle_sync(uint64_t *a1, xpc_object_t *a2, uint64_t a3)
{
  v37 = *MEMORY[0x29EDCA608];
  if (MEMORY[0x29C26CE60](*a2) != MEMORY[0x29EDCAA00])
  {
    v6 = a1[4];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf) = 0;
      _os_log_debug_impl(&dword_296FF7000, v6, OS_LOG_TYPE_DEBUG, "#D Invalid XPC dict", &buf, 2u);
    }

    goto LABEL_46;
  }

  v35 = 0;
  v7 = *MEMORY[0x29EDB8ED8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v9 = Mutable;
  if (Mutable)
  {
    v35 = Mutable;
  }

  value = xpc_dictionary_get_value(*a2, "kWCMCellularSetLaaGpioThrottleReq_Enabled");
  *&buf = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    *&buf = xpc_null_create();
  }

  v11 = xpc::dyn_cast_or_default(&buf, 0);
  ctu::cf::insert<__CFString const*,BOOL>(v9, *MEMORY[0x29EDC8908], v11);
  xpc_release(buf);
  v12 = xpc_dictionary_get_value(*a2, "kWCMCellularSetLaaGpioThrottleReq_Periodicity");
  *&buf = v12;
  if (v12)
  {
    xpc_retain(v12);
  }

  else
  {
    *&buf = xpc_null_create();
  }

  v13 = xpc::dyn_cast_or_default(&buf, 0);
  ctu::cf::insert<__CFString const*,unsigned int>(v9, *MEMORY[0x29EDC8A00], v13, v7);
  xpc_release(buf);
  v34 = 0;
  v14 = CFDictionaryCreateMutable(v7, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v15 = v14;
  if (v14)
  {
    v34 = v14;
  }

  ctu::cf::insert<__CFString const*,__CFDictionary *>(v14, *MEMORY[0x29EDC88E8], v9);
  v16 = a1[4];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v15;
    _os_log_impl(&dword_296FF7000, v16, OS_LOG_TYPE_DEFAULT, "#I Setting LAA GPIO throttle with: %@", &buf, 0xCu);
  }

  v18 = *a1;
  v17 = a1[1];
  *&buf = *a1;
  if (!v17 || (v19 = std::__shared_weak_count::lock(v17), (*(&buf + 1) = v19) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v20 = v19;
  v21 = a1[5];
  if (v15 && (v22 = CFGetTypeID(v15), v22 == CFDictionaryGetTypeID()))
  {
    cf = v15;
    CFRetain(v15);
  }

  else
  {
    cf = 0;
  }

  v29[0] = MEMORY[0x29EDCA5F8];
  v29[1] = 1174405120;
  v29[2] = ___ZN4coex6Module5State29handleSetLaaGpioThrottle_syncEN3xpc4dictENS_5SubIdE_block_invoke;
  v29[3] = &__block_descriptor_tmp_241;
  v29[4] = a1;
  v29[5] = v18;
  v30 = v20;
  atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  v23 = _Block_copy(v29);
  v24 = a1[2];
  if (v24)
  {
    dispatch_retain(v24);
  }

  if (v23)
  {
    aBlock = _Block_copy(v23);
    object = v24;
    if (!v24)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  aBlock = 0;
  object = v24;
  if (v24)
  {
LABEL_26:
    dispatch_retain(v24);
  }

LABEL_27:
  (*(*v21 + 16))(v21, &cf, a3, &aBlock);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v24)
  {
    dispatch_release(v24);
  }

  if (v23)
  {
    _Block_release(v23);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  v25 = v30;
  if (v30 && !atomic_fetch_add(&v30->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v25->__on_zero_shared)(v25);
    std::__shared_weak_count::__release_weak(v25);
  }

  v26 = *(&buf + 1);
  if (!*(&buf + 1) || atomic_fetch_add((*(&buf + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    v27 = v34;
    if (!v34)
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

  (v26->__on_zero_shared)(v26);
  std::__shared_weak_count::__release_weak(v26);
  v27 = v34;
  if (v34)
  {
LABEL_43:
    CFRelease(v27);
  }

LABEL_44:
  if (v35)
  {
    CFRelease(v35);
  }

LABEL_46:
  v28 = *MEMORY[0x29EDCA608];
}

void sub_29704AFE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, char a18, int a19, __int16 a20, char a21, char a22, int a23, __int16 a24, char a25, char a26, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void ___ZN4coex6Module5State29handleSetLaaGpioThrottle_syncEN3xpc4dictENS_5SubIdE_block_invoke(uint64_t a1, uint64_t *a2)
{
  v7 = *MEMORY[0x29EDCA608];
  v2 = *a2;
  if (*a2)
  {
    v3 = *(*(a1 + 32) + 32);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138412290;
      v6 = v2;
      _os_log_impl(&dword_296FF7000, v3, OS_LOG_TYPE_DEFAULT, "#E Failed to set LAA GPIO throttle: %@", &v5, 0xCu);
    }
  }

  v4 = *MEMORY[0x29EDCA608];
}

void coex::Module::State::handleSetGnssParams_sync(uint64_t *a1, xpc_object_t *a2, uint64_t a3)
{
  v39 = *MEMORY[0x29EDCA608];
  if (MEMORY[0x29C26CE60](*a2) != MEMORY[0x29EDCAA00])
  {
    v6 = a1[4];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf) = 0;
      _os_log_debug_impl(&dword_296FF7000, v6, OS_LOG_TYPE_DEBUG, "#D Invalid XPC dict", &buf, 2u);
    }

    goto LABEL_49;
  }

  v37 = 0;
  v7 = *MEMORY[0x29EDB8ED8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v9 = Mutable;
  if (Mutable)
  {
    v37 = Mutable;
  }

  value = xpc_dictionary_get_value(*a2, "kWCMCellularSetGnssParamsReq_Enabled");
  *&buf = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    *&buf = xpc_null_create();
  }

  v11 = xpc::dyn_cast_or_default(&buf, 0);
  ctu::cf::insert<__CFString const*,BOOL>(v9, *MEMORY[0x29EDC86A0], v11);
  xpc_release(buf);
  v12 = xpc_dictionary_get_value(*a2, "kWCMCellularSetGnssParamsReq_Band");
  *&buf = v12;
  if (v12)
  {
    xpc_retain(v12);
  }

  else
  {
    *&buf = xpc_null_create();
  }

  v13 = xpc::dyn_cast_or_default(&buf, 0);
  ctu::cf::insert<__CFString const*,unsigned int>(v9, *MEMORY[0x29EDC8618], v13, v7);
  xpc_release(buf);
  v14 = xpc_dictionary_get_value(*a2, "kWCMCellularSetGnssParamsReq_L5Level");
  *&buf = v14;
  if (v14)
  {
    xpc_retain(v14);
  }

  else
  {
    *&buf = xpc_null_create();
  }

  v15 = xpc::dyn_cast_or_default(&buf, 0);
  ctu::cf::insert<__CFString const*,unsigned int>(v9, *MEMORY[0x29EDC86A8], v15, v7);
  xpc_release(buf);
  v36 = 0;
  v16 = CFDictionaryCreateMutable(v7, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v17 = v16;
  if (v16)
  {
    v36 = v16;
  }

  ctu::cf::insert<__CFString const*,__CFDictionary *>(v16, *MEMORY[0x29EDC87A8], v9);
  v18 = a1[4];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v17;
    _os_log_impl(&dword_296FF7000, v18, OS_LOG_TYPE_DEFAULT, "#I Setting Gnss params with: %@", &buf, 0xCu);
  }

  v20 = *a1;
  v19 = a1[1];
  *&buf = *a1;
  if (!v19 || (v21 = std::__shared_weak_count::lock(v19), (*(&buf + 1) = v21) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v22 = v21;
  v23 = a1[5];
  if (v17 && (v24 = CFGetTypeID(v17), v24 == CFDictionaryGetTypeID()))
  {
    cf = v17;
    CFRetain(v17);
  }

  else
  {
    cf = 0;
  }

  v31[0] = MEMORY[0x29EDCA5F8];
  v31[1] = 1174405120;
  v31[2] = ___ZN4coex6Module5State24handleSetGnssParams_syncEN3xpc4dictENS_5SubIdE_block_invoke;
  v31[3] = &__block_descriptor_tmp_247;
  v31[4] = a1;
  v31[5] = v20;
  v32 = v22;
  atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
  v25 = _Block_copy(v31);
  v26 = a1[2];
  if (v26)
  {
    dispatch_retain(v26);
  }

  if (v25)
  {
    aBlock = _Block_copy(v25);
    object = v26;
    if (!v26)
    {
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  aBlock = 0;
  object = v26;
  if (v26)
  {
LABEL_29:
    dispatch_retain(v26);
  }

LABEL_30:
  (*(*v23 + 16))(v23, &cf, a3, &aBlock);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v26)
  {
    dispatch_release(v26);
  }

  if (v25)
  {
    _Block_release(v25);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  v27 = v32;
  if (v32 && !atomic_fetch_add(&v32->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v27->__on_zero_shared)(v27);
    std::__shared_weak_count::__release_weak(v27);
  }

  v28 = *(&buf + 1);
  if (!*(&buf + 1) || atomic_fetch_add((*(&buf + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    v29 = v36;
    if (!v36)
    {
      goto LABEL_47;
    }

    goto LABEL_46;
  }

  (v28->__on_zero_shared)(v28);
  std::__shared_weak_count::__release_weak(v28);
  v29 = v36;
  if (v36)
  {
LABEL_46:
    CFRelease(v29);
  }

LABEL_47:
  if (v37)
  {
    CFRelease(v37);
  }

LABEL_49:
  v30 = *MEMORY[0x29EDCA608];
}

void sub_29704B628(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, char a18, int a19, __int16 a20, char a21, char a22, int a23, __int16 a24, char a25, char a26, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void ___ZN4coex6Module5State24handleSetGnssParams_syncEN3xpc4dictENS_5SubIdE_block_invoke(uint64_t a1, uint64_t *a2)
{
  v7 = *MEMORY[0x29EDCA608];
  v2 = *a2;
  if (*a2)
  {
    v3 = *(*(a1 + 32) + 32);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138412290;
      v6 = v2;
      _os_log_impl(&dword_296FF7000, v3, OS_LOG_TYPE_DEFAULT, "#E Failed to set Gnss params: %@", &v5, 0xCu);
    }
  }

  v4 = *MEMORY[0x29EDCA608];
}

void coex::Module::State::handleSetLAAConfig_sync(uint64_t *a1, xpc_object_t *a2, uint64_t a3)
{
  v46 = *MEMORY[0x29EDCA608];
  if (MEMORY[0x29C26CE60](*a2) != MEMORY[0x29EDCAA00])
  {
    v6 = a1[4];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf) = 0;
      _os_log_debug_impl(&dword_296FF7000, v6, OS_LOG_TYPE_DEBUG, "#D Invalid XPC dict", &buf, 2u);
    }

    goto LABEL_4;
  }

  if (xpc_dictionary_get_value(*a2, "WCMCellularSetLAAConfig_CoexEnable"))
  {
    v44 = 0;
    v8 = *MEMORY[0x29EDB8ED8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    v10 = Mutable;
    if (Mutable)
    {
      v44 = Mutable;
    }

    value = xpc_dictionary_get_value(*a2, "WCMCellularSetLAAConfig_CoexEnable");
    *&buf = value;
    if (value)
    {
      xpc_retain(value);
    }

    else
    {
      *&buf = xpc_null_create();
    }

    v13 = xpc::dyn_cast_or_default(&buf, 0);
    ctu::cf::insert<__CFString const*,BOOL>(v10, *MEMORY[0x29EDC8868], v13);
    xpc_release(buf);
    v14 = xpc_dictionary_get_value(*a2, "WCMCellularSetLAAConfig_ProtectCQIPeriod");
    *&buf = v14;
    if (v14)
    {
      xpc_retain(v14);
    }

    else
    {
      *&buf = xpc_null_create();
    }

    v15 = xpc::dyn_cast_or_default(&buf, 0);
    ctu::cf::insert<__CFString const*,int>(v10, *MEMORY[0x29EDC89C0], v15, v8);
    xpc_release(buf);
    v16 = xpc_dictionary_get_value(*a2, "WCMCellularSetLAAConfig_ThresholdIn");
    *&buf = v16;
    if (v16)
    {
      xpc_retain(v16);
    }

    else
    {
      *&buf = xpc_null_create();
    }

    v17 = xpc::dyn_cast_or_default(&buf, 0);
    ctu::cf::insert<__CFString const*,int>(v10, *MEMORY[0x29EDC8870], v17, v8);
    xpc_release(buf);
    v18 = xpc_dictionary_get_value(*a2, "WCMCellularSetLAAConfig_ThresholdOut");
    *&buf = v18;
    if (v18)
    {
      xpc_retain(v18);
    }

    else
    {
      *&buf = xpc_null_create();
    }

    v19 = xpc::dyn_cast_or_default(&buf, 0);
    ctu::cf::insert<__CFString const*,int>(v10, *MEMORY[0x29EDC88C8], v19, v8);
    xpc_release(buf);
    v20 = xpc_dictionary_get_value(*a2, "WCMCellularSetLAAConfig_DeactTimer");
    *&buf = v20;
    if (v20)
    {
      xpc_retain(v20);
    }

    else
    {
      *&buf = xpc_null_create();
    }

    v21 = xpc::dyn_cast_or_default(&buf, 0);
    ctu::cf::insert<__CFString const*,int>(v10, *MEMORY[0x29EDC8838], v21, v8);
    xpc_release(buf);
    v22 = xpc_dictionary_get_value(*a2, "WCMCellularSetLAAConfig_DeactStopTimer");
    *&buf = v22;
    if (v22)
    {
      xpc_retain(v22);
    }

    else
    {
      *&buf = xpc_null_create();
    }

    v23 = xpc::dyn_cast_or_default(&buf, 0);
    ctu::cf::insert<__CFString const*,int>(v10, *MEMORY[0x29EDC8948], v23, v8);
    xpc_release(buf);
    v43 = 0;
    v24 = CFDictionaryCreateMutable(v8, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    v25 = v24;
    if (v24)
    {
      v43 = v24;
    }

    ctu::cf::insert<__CFString const*,__CFDictionary *>(v24, *MEMORY[0x29EDC8700], v10);
    v26 = a1[4];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v25;
      _os_log_impl(&dword_296FF7000, v26, OS_LOG_TYPE_DEFAULT, "#I Setting LAA config with: %@", &buf, 0xCu);
    }

    v28 = *a1;
    v27 = a1[1];
    *&buf = *a1;
    if (!v27 || (v29 = std::__shared_weak_count::lock(v27), (*(&buf + 1) = v29) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v30 = v29;
    v31 = a1[5];
    if (v25 && (v32 = CFGetTypeID(v25), v32 == CFDictionaryGetTypeID()))
    {
      cf = v25;
      CFRetain(v25);
    }

    else
    {
      cf = 0;
    }

    v38[0] = MEMORY[0x29EDCA5F8];
    v38[1] = 1174405120;
    v38[2] = ___ZN4coex6Module5State23handleSetLAAConfig_syncEN3xpc4dictENS_5SubIdE_block_invoke;
    v38[3] = &__block_descriptor_tmp_256;
    v38[4] = a1;
    v38[5] = v28;
    v39 = v30;
    atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
    v33 = _Block_copy(v38);
    v34 = a1[2];
    if (v34)
    {
      dispatch_retain(v34);
    }

    if (v33)
    {
      aBlock = _Block_copy(v33);
      object = v34;
      if (!v34)
      {
        goto LABEL_43;
      }
    }

    else
    {
      aBlock = 0;
      object = v34;
      if (!v34)
      {
LABEL_43:
        (*(*v31 + 16))(v31, &cf, a3, &aBlock);
        if (object)
        {
          dispatch_release(object);
        }

        if (aBlock)
        {
          _Block_release(aBlock);
        }

        if (v34)
        {
          dispatch_release(v34);
        }

        if (v33)
        {
          _Block_release(v33);
        }

        if (cf)
        {
          CFRelease(cf);
        }

        v35 = v39;
        if (v39 && !atomic_fetch_add(&v39->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v35->__on_zero_shared)(v35);
          std::__shared_weak_count::__release_weak(v35);
        }

        v36 = *(&buf + 1);
        if (*(&buf + 1) && !atomic_fetch_add((*(&buf + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          (v36->__on_zero_shared)(v36);
          std::__shared_weak_count::__release_weak(v36);
          v37 = v43;
          if (!v43)
          {
LABEL_60:
            if (v44)
            {
              CFRelease(v44);
            }

            goto LABEL_4;
          }
        }

        else
        {
          v37 = v43;
          if (!v43)
          {
            goto LABEL_60;
          }
        }

        CFRelease(v37);
        goto LABEL_60;
      }
    }

    dispatch_retain(v34);
    goto LABEL_43;
  }

  v12 = a1[4];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_296FF7000, v12, OS_LOG_TYPE_DEFAULT, "#E Missing LAA config", &buf, 2u);
  }

LABEL_4:
  v7 = *MEMORY[0x29EDCA608];
}

void sub_29704BDE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, char a18, int a19, __int16 a20, char a21, char a22, int a23, __int16 a24, char a25, char a26, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void ___ZN4coex6Module5State23handleSetLAAConfig_syncEN3xpc4dictENS_5SubIdE_block_invoke(uint64_t a1, uint64_t *a2)
{
  v7 = *MEMORY[0x29EDCA608];
  v2 = *a2;
  if (*a2)
  {
    v3 = *(*(a1 + 32) + 32);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138412290;
      v6 = v2;
      _os_log_impl(&dword_296FF7000, v3, OS_LOG_TYPE_DEFAULT, "#E Failed to set LAA config: %@", &v5, 0xCu);
    }
  }

  v4 = *MEMORY[0x29EDCA608];
}

void coex::Module::State::handleSetFCMBCMAntennaMode_sync(uint64_t *a1, xpc_object_t *a2, uint64_t a3)
{
  v47 = *MEMORY[0x29EDCA608];
  if (MEMORY[0x29C26CE60](*a2) != MEMORY[0x29EDCAA00])
  {
    v6 = a1[4];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_296FF7000, v6, OS_LOG_TYPE_DEBUG, "#D Invalid XPC dict", buf, 2u);
    }

    goto LABEL_55;
  }

  if (xpc_dictionary_get_value(*a2, "WCMCellularSetFCM_BCM_Antenna_Switching_RAT"))
  {
    value = xpc_dictionary_get_value(*a2, "WCMCellularSetFCM_BCM_Antenna_Switching_RAT");
    *buf = value;
    if (value)
    {
      xpc_retain(value);
    }

    else
    {
      *buf = xpc_null_create();
    }

    v9 = xpc::dyn_cast_or_default(buf, 0);
    xpc_release(*buf);
    v45 = 0xAAAAAAAAAAAAAAAALL;
    *buf = a2;
    v40 = "WCMCellularSetFCM_BCM_Antenna_Switching_PortMapInformationSet";
    xpc::dict::object_proxy::operator xpc::array(buf, &v45);
    *buf = 0;
    v40 = buf;
    v41 = 0x3002000000;
    v42 = __Block_byref_object_copy_;
    v43 = __Block_byref_object_dispose_;
    cf = 0;
    v10 = *MEMORY[0x29EDB8ED8];
    Mutable = CFArrayCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9000]);
    if (Mutable)
    {
      v12 = cf;
      cf = Mutable;
      if (v12)
      {
        CFRelease(v12);
      }
    }

    applier[0] = MEMORY[0x29EDCA5F8];
    applier[1] = 0x40000000;
    applier[2] = ___ZN4coex6Module5State31handleSetFCMBCMAntennaMode_syncEN3xpc4dictENS_5SubIdE_block_invoke;
    applier[3] = &unk_29EE638D8;
    applier[4] = buf;
    xpc_array_apply(v45, applier);
    if (!CFArrayGetCount(*(v40 + 5)))
    {
      v28 = a1[4];
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v46) = 0;
        _os_log_debug_impl(&dword_296FF7000, v28, OS_LOG_TYPE_DEBUG, "#D Empty port map passed for FCM BCM Antenna mode", &v46, 2u);
        _Block_object_dispose(buf, 8);
        v29 = cf;
        if (!cf)
        {
          goto LABEL_54;
        }

        goto LABEL_53;
      }

LABEL_52:
      _Block_object_dispose(buf, 8);
      v29 = cf;
      if (!cf)
      {
LABEL_54:
        xpc_release(v45);
        goto LABEL_55;
      }

LABEL_53:
      CFRelease(v29);
      goto LABEL_54;
    }

    v37 = 0;
    v13 = CFDictionaryCreateMutable(v10, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    v14 = v13;
    if (v13)
    {
      v37 = v13;
    }

    ctu::cf::insert<__CFString const*,unsigned int>(v13, *MEMORY[0x29EDC89B8], v9, v10);
    ctu::cf::insert<__CFString const*,__CFArray *>(v14, *MEMORY[0x29EDC8AC0], *(v40 + 5));
    v36 = 0;
    v15 = CFDictionaryCreateMutable(v10, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    v16 = v15;
    if (v15)
    {
      v36 = v15;
    }

    ctu::cf::insert<__CFString const*,__CFDictionary *>(v15, *MEMORY[0x29EDC8888], v14);
    v17 = a1[4];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v46) = 138412290;
      *(&v46 + 4) = v16;
      _os_log_impl(&dword_296FF7000, v17, OS_LOG_TYPE_DEFAULT, "#I Setting FCM BCM Antenna mode with: %@", &v46, 0xCu);
    }

    v19 = *a1;
    v18 = a1[1];
    *&v46 = *a1;
    if (!v18 || (v20 = std::__shared_weak_count::lock(v18), (*(&v46 + 1) = v20) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v21 = v20;
    v22 = a1[5];
    if (v16 && (v23 = CFGetTypeID(v16), v23 == CFDictionaryGetTypeID()))
    {
      v35 = v16;
      CFRetain(v16);
    }

    else
    {
      v35 = 0;
    }

    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1174405120;
    aBlock[2] = ___ZN4coex6Module5State31handleSetFCMBCMAntennaMode_syncEN3xpc4dictENS_5SubIdE_block_invoke_263;
    aBlock[3] = &__block_descriptor_tmp_266;
    aBlock[4] = a1;
    aBlock[5] = v19;
    v32 = v21;
    atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
    v24 = _Block_copy(aBlock);
    v25 = a1[2];
    if (v25)
    {
      dispatch_retain(v25);
    }

    if (v24)
    {
      v33 = _Block_copy(v24);
      object = v25;
      if (!v25)
      {
LABEL_31:
        (*(*v22 + 16))(v22, &v35, a3, &v33);
        if (object)
        {
          dispatch_release(object);
        }

        if (v33)
        {
          _Block_release(v33);
        }

        if (v25)
        {
          dispatch_release(v25);
        }

        if (v24)
        {
          _Block_release(v24);
        }

        if (v35)
        {
          CFRelease(v35);
        }

        v26 = v32;
        if (v32 && !atomic_fetch_add(&v32->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v26->__on_zero_shared)(v26);
          std::__shared_weak_count::__release_weak(v26);
        }

        v27 = *(&v46 + 1);
        if (*(&v46 + 1) && !atomic_fetch_add((*(&v46 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          (v27->__on_zero_shared)(v27);
          std::__shared_weak_count::__release_weak(v27);
        }

        if (v36)
        {
          CFRelease(v36);
        }

        if (v37)
        {
          CFRelease(v37);
        }

        goto LABEL_52;
      }
    }

    else
    {
      v33 = 0;
      object = v25;
      if (!v25)
      {
        goto LABEL_31;
      }
    }

    dispatch_retain(v25);
    goto LABEL_31;
  }

  v8 = a1[4];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_296FF7000, v8, OS_LOG_TYPE_DEFAULT, "#E Invalid RAT option passed for FCM BCM Antenna mode", buf, 2u);
  }

LABEL_55:
  v30 = *MEMORY[0x29EDCA608];
}

void sub_29704C5D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t ___ZN4coex6Module5State31handleSetFCMBCMAntennaMode_syncEN3xpc4dictENS_5SubIdE_block_invoke(uint64_t a1, int a2, xpc_object_t object)
{
  if (object)
  {
    v4 = object;
    xpc_retain(object);
  }

  else
  {
    v4 = xpc_null_create();
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
    v5 = v4;
  }

  else
  {
    v5 = xpc_null_create();
  }

LABEL_8:
  xpc_release(v4);
  v13 = 0;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (Mutable)
  {
    v13 = Mutable;
  }

  if (xpc_dictionary_get_value(v5, "WCMCellularSetFCM_BCM_Antenna_Switching_Band") && xpc_dictionary_get_value(v5, "WCMCellularSetFCM_BCM_Antenna_Switching_Port"))
  {
    value = xpc_dictionary_get_value(v5, "WCMCellularSetFCM_BCM_Antenna_Switching_Band");
    ctu::xpc_to_cf(&cf, value, v8);
    ctu::cf::insert<__CFString const*,void const*>(v13, *MEMORY[0x29EDC89E8], cf);
    if (cf)
    {
      CFRelease(cf);
    }

    v9 = xpc_dictionary_get_value(v5, "WCMCellularSetFCM_BCM_Antenna_Switching_Port");
    ctu::xpc_to_cf(&cf, v9, v10);
    ctu::cf::insert<__CFString const*,void const*>(v13, *MEMORY[0x29EDC89F0], cf);
    if (cf)
    {
      CFRelease(cf);
    }

    v11 = *(*(*(a1 + 32) + 8) + 40);
    cf = v13;
    if (v13)
    {
      CFRetain(v13);
      CFArrayAppendValue(v11, v13);
      CFRelease(v13);
    }
  }

  if (v13)
  {
    CFRelease(v13);
  }

  xpc_release(v5);
  return 1;
}

void sub_29704C884(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a10);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(&a9);
  xpc_release(v10);
  _Unwind_Resume(a1);
}

void ___ZN4coex6Module5State31handleSetFCMBCMAntennaMode_syncEN3xpc4dictENS_5SubIdE_block_invoke_263(uint64_t a1, uint64_t *a2)
{
  v7 = *MEMORY[0x29EDCA608];
  v2 = *a2;
  if (*a2)
  {
    v3 = *(*(a1 + 32) + 32);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138412290;
      v6 = v2;
      _os_log_impl(&dword_296FF7000, v3, OS_LOG_TYPE_DEFAULT, "#E Failed to set FCM BCM Antenna mode: %@", &v5, 0xCu);
    }
  }

  v4 = *MEMORY[0x29EDCA608];
}

void coex::Module::State::handleSetRC1DurationParam_sync(uint64_t *a1, xpc_object_t *a2, uint64_t a3)
{
  v37 = *MEMORY[0x29EDCA608];
  if (MEMORY[0x29C26CE60](*a2) != MEMORY[0x29EDCAA00])
  {
    v6 = a1[4];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_296FF7000, v6, OS_LOG_TYPE_DEBUG, "#D Invalid XPC dict", buf, 2u);
    }

    goto LABEL_4;
  }

  if (xpc_dictionary_get_value(*a2, "kWCMCellularRC1Duration"))
  {
    value = xpc_dictionary_get_value(*a2, "kWCMCellularRC1Duration");
    *buf = value;
    if (value)
    {
      xpc_retain(value);
    }

    else
    {
      *buf = xpc_null_create();
    }

    v10 = xpc::dyn_cast_or_default(buf, 0);
    xpc_release(*buf);
    v34 = 0;
    v11 = *MEMORY[0x29EDB8ED8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    v13 = Mutable;
    if (Mutable)
    {
      v34 = Mutable;
    }

    ctu::cf::insert<__CFString const*,unsigned int>(Mutable, *MEMORY[0x29EDC86E8], v10, v11);
    v33 = 0;
    v14 = CFDictionaryCreateMutable(v11, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    v15 = v14;
    if (v14)
    {
      v33 = v14;
    }

    ctu::cf::insert<__CFString const*,__CFDictionary *>(v14, *MEMORY[0x29EDC8768], v13);
    v16 = a1[4];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v10;
      _os_log_impl(&dword_296FF7000, v16, OS_LOG_TYPE_DEFAULT, "#I Setting RC1 duration to %u", buf, 8u);
    }

    v18 = *a1;
    v17 = a1[1];
    *buf = *a1;
    if (!v17 || (v19 = std::__shared_weak_count::lock(v17), (v36 = v19) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v20 = v19;
    v21 = a1[5];
    if (v15 && (v22 = CFGetTypeID(v15), v22 == CFDictionaryGetTypeID()))
    {
      cf = v15;
      CFRetain(v15);
    }

    else
    {
      cf = 0;
    }

    v28[0] = MEMORY[0x29EDCA5F8];
    v28[1] = 1174405120;
    v28[2] = ___ZN4coex6Module5State30handleSetRC1DurationParam_syncEN3xpc4dictENS_5SubIdE_block_invoke;
    v28[3] = &__block_descriptor_tmp_270;
    v28[4] = a1;
    v28[5] = v18;
    v29 = v20;
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    v23 = _Block_copy(v28);
    v24 = a1[2];
    if (v24)
    {
      dispatch_retain(v24);
    }

    if (v23)
    {
      aBlock = _Block_copy(v23);
      object = v24;
      if (!v24)
      {
        goto LABEL_28;
      }
    }

    else
    {
      aBlock = 0;
      object = v24;
      if (!v24)
      {
LABEL_28:
        (*(*v21 + 16))(v21, &cf, a3, &aBlock);
        if (object)
        {
          dispatch_release(object);
        }

        if (aBlock)
        {
          _Block_release(aBlock);
        }

        if (v24)
        {
          dispatch_release(v24);
        }

        if (v23)
        {
          _Block_release(v23);
        }

        if (cf)
        {
          CFRelease(cf);
        }

        v25 = v29;
        if (v29 && !atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v25->__on_zero_shared)(v25);
          std::__shared_weak_count::__release_weak(v25);
        }

        v26 = v36;
        if (v36 && !atomic_fetch_add(&v36->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v26->__on_zero_shared)(v26);
          std::__shared_weak_count::__release_weak(v26);
          v27 = v33;
          if (!v33)
          {
LABEL_45:
            if (v34)
            {
              CFRelease(v34);
            }

            goto LABEL_4;
          }
        }

        else
        {
          v27 = v33;
          if (!v33)
          {
            goto LABEL_45;
          }
        }

        CFRelease(v27);
        goto LABEL_45;
      }
    }

    dispatch_retain(v24);
    goto LABEL_28;
  }

  v9 = a1[4];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_296FF7000, v9, OS_LOG_TYPE_DEFAULT, "#E Invalid RC1 duration passed", buf, 2u);
  }

LABEL_4:
  v7 = *MEMORY[0x29EDCA608];
}

void sub_29704CDFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, char a18, int a19, __int16 a20, char a21, char a22, int a23, __int16 a24, char a25, char a26, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_29704CEBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void ___ZN4coex6Module5State30handleSetRC1DurationParam_syncEN3xpc4dictENS_5SubIdE_block_invoke(uint64_t a1, uint64_t *a2)
{
  v7 = *MEMORY[0x29EDCA608];
  v2 = *a2;
  if (*a2)
  {
    v3 = *(*(a1 + 32) + 32);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138412290;
      v6 = v2;
      _os_log_impl(&dword_296FF7000, v3, OS_LOG_TYPE_DEFAULT, "#E Failed to set RC1 duration; %@", &v5, 0xCu);
    }
  }

  v4 = *MEMORY[0x29EDCA608];
}

void coex::Module::State::convertScanFreqBandFilter_sync(uint64_t a1, xpc_object_t *a2, CFArrayRef *a3)
{
  if (MEMORY[0x29C26CE60](*a2) == MEMORY[0x29EDCA9E0])
  {
    if (*a3)
    {
      Count = CFArrayGetCount(*a3);
      if (Count >= 1)
      {
        v6 = Count;
        v7 = 0;
        v8 = *MEMORY[0x29EDC8778];
        v9 = MEMORY[0x29EDCAA00];
        v10 = *MEMORY[0x29EDC8658];
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*a3, v7);
          if (ValueAtIndex && (v12 = ValueAtIndex, v13 = CFGetTypeID(ValueAtIndex), v13 == CFDictionaryGetTypeID()))
          {
            cf = v12;
            CFRetain(v12);
            v25[0] = 0xAAAAAAAAAAAAAAAALL;
            v25[1] = 0xAAAAAAAAAAAAAAAALL;
            ctu::cf::dict_adapter::dict_adapter(v25, v12);
            v14 = xpc_dictionary_create(0, 0, 0);
            if (v14 || (v14 = xpc_null_create()) != 0)
            {
              if (MEMORY[0x29C26CE60](v14) == v9)
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
            Int = ctu::cf::map_adapter::getInt(v25, v8);
            v20 = xpc_int64_create(Int);
            if (!v20)
            {
              v20 = xpc_null_create();
            }

            xpc_dictionary_set_value(v15, "kWCMCellularScanFreqBandFilter_CenterFreq", v20);
            v21 = xpc_null_create();
            xpc_release(v20);
            xpc_release(v21);
            v22 = ctu::cf::map_adapter::getInt(v25, v10);
            v23 = xpc_int64_create(v22);
            if (!v23)
            {
              v23 = xpc_null_create();
            }

            xpc_dictionary_set_value(v15, "kWCMCellularScanFreqBandFilter_Bandwidth", v23);
            v24 = xpc_null_create();
            xpc_release(v23);
            xpc_release(v24);
            xpc_array_append_value(*a2, v15);
            xpc_release(v15);
            MEMORY[0x29C26B180](v25);
            v18 = cf;
            if (!cf)
            {
              goto LABEL_6;
            }
          }

          else
          {
            cf = 0;
            v16 = xpc_dictionary_create(0, 0, 0);
            if (v16 || (v16 = xpc_null_create()) != 0)
            {
              if (MEMORY[0x29C26CE60](v16) == v9)
              {
                xpc_retain(v16);
                v17 = v16;
              }

              else
              {
                v17 = xpc_null_create();
              }
            }

            else
            {
              v17 = xpc_null_create();
              v16 = 0;
            }

            xpc_release(v16);
            xpc_array_append_value(*a2, v17);
            xpc_release(v17);
            v18 = cf;
            if (!cf)
            {
              goto LABEL_6;
            }
          }

          CFRelease(v18);
LABEL_6:
          ++v7;
        }

        while (v6 != v7);
      }
    }
  }
}

void sub_29704D24C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void sub_29704D298(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, const void *a12)
{
  xpc_release(v12);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&a12);
  _Unwind_Resume(a1);
}

void coex::Module::State::handleGetScanFreqBandFilter_sync(CFTypeRef *a1, uint64_t a2)
{
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x3002000000;
  v28[3] = __Block_byref_object_copy__271;
  v28[4] = __Block_byref_object_dispose__272;
  v29 = 0xAAAAAAAAAAAAAAAALL;
  v4 = xpc_array_create(0, 0);
  v5 = v4;
  if (v4)
  {
    v29 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    v29 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x29C26CE60](v5) == MEMORY[0x29EDCA9E0])
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  v29 = v6;
LABEL_9:
  xpc_release(v5);
  v27 = 0;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v8 = Mutable;
  if (Mutable)
  {
    v27 = Mutable;
  }

  ctu::cf::insert<__CFString const*,BOOL>(Mutable, *MEMORY[0x29EDC88B8], 1);
  v10 = *a1;
  v9 = a1[1];
  cf[1] = *a1;
  if (!v9 || (v11 = std::__shared_weak_count::lock(v9), (v26 = v11) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v12 = v11;
  v13 = a1[5];
  if (v8 && (v14 = CFGetTypeID(v8), v14 == CFDictionaryGetTypeID()))
  {
    cf[0] = v8;
    CFRetain(v8);
  }

  else
  {
    cf[0] = 0;
  }

  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN4coex6Module5State32handleGetScanFreqBandFilter_syncENS_5SubIdE_block_invoke;
  aBlock[3] = &unk_2A1E24980;
  aBlock[5] = a1;
  aBlock[6] = v10;
  v21 = v12;
  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  aBlock[4] = v28;
  v22 = a2;
  v15 = _Block_copy(aBlock);
  v16 = a1[2];
  if (v16)
  {
    dispatch_retain(v16);
  }

  if (v15)
  {
    v23 = _Block_copy(v15);
    object = v16;
    if (!v16)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v23 = 0;
  object = v16;
  if (v16)
  {
LABEL_21:
    dispatch_retain(v16);
  }

LABEL_22:
  (*(*v13 + 24))(v13, cf, a2, &v23);
  if (object)
  {
    dispatch_release(object);
  }

  if (v23)
  {
    _Block_release(v23);
  }

  if (v16)
  {
    dispatch_release(v16);
  }

  if (v15)
  {
    _Block_release(v15);
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  v17 = v21;
  if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
    v18 = v26;
    if (!v26)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v18 = v26;
    if (!v26)
    {
      goto LABEL_36;
    }
  }

  if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
    v19 = v27;
    if (!v27)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

LABEL_36:
  v19 = v27;
  if (v27)
  {
LABEL_37:
    CFRelease(v19);
  }

LABEL_38:
  _Block_object_dispose(v28, 8);
  xpc_release(v29);
}

void sub_29704D678(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va3, a11);
  va_start(va2, a11);
  va_start(va1, a11);
  va_start(va, a11);
  v16 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  va_copy(va2, va1);
  v19 = va_arg(va2, const void *);
  va_copy(va3, va2);
  v21 = va_arg(va3, void);
  v23 = va_arg(va3, void);
  coex::CommandDriver::Callback::~Callback(va);
  if (v11)
  {
    dispatch_release(v11);
  }

  if (v12)
  {
    _Block_release(v12);
  }

  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v13 + 48);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(va1);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](va2);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(va3);
  _Block_object_dispose((v14 - 112), 8);
  xpc_release(*(v14 - 72));
  _Unwind_Resume(a1);
}

xpc_object_t __Block_byref_object_copy__271(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = *(a2 + 40);
  result = xpc_null_create();
  *(a2 + 40) = result;
  return result;
}

void ___ZN4coex6Module5State32handleGetScanFreqBandFilter_syncENS_5SubIdE_block_invoke(uint64_t a1, uint64_t *a2, const __CFDictionary **a3)
{
  v18 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 40);
  v5 = *a2;
  if (*a2)
  {
    v6 = *(v4 + 32);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v5;
      _os_log_impl(&dword_296FF7000, v6, OS_LOG_TYPE_DEFAULT, "#I Failed to get: %@", buf, 0xCu);
    }

    goto LABEL_15;
  }

  v7 = *a3;
  if (!*a3)
  {
    goto LABEL_15;
  }

  memset(buf, 170, 16);
  ctu::cf::dict_adapter::dict_adapter(buf, v7);
  v8 = ctu::cf::map_adapter::copyCFArrayRef(buf, *MEMORY[0x29EDC87F8]);
  v9 = *(*(*(a1 + 32) + 8) + 40);
  v16[0] = v9;
  v16[1] = v8;
  if (v9)
  {
    v10 = xpc_retain(v9);
    v15 = v8;
    if (!v8)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v10 = xpc_null_create();
  v9 = v10;
  v15 = v8;
  v16[0] = v10;
  if (v8)
  {
LABEL_9:
    v10 = CFRetain(v8);
  }

LABEL_10:
  coex::Module::State::convertScanFreqBandFilter_sync(v10, v16, &v15);
  if (v8)
  {
    CFRelease(v8);
  }

  xpc_release(v9);
  v16[0] = 0;
  if (v8)
  {
    CFRelease(v8);
  }

  MEMORY[0x29C26B180](buf);
LABEL_15:
  v11 = *(v4 + 56);
  if (v11)
  {
    v12 = *(*(*(a1 + 32) + 8) + 40);
    v14 = v12;
    if (v12)
    {
      xpc_retain(v12);
    }

    else
    {
      v12 = xpc_null_create();
      v14 = v12;
    }

    coex::XpcClient::sendMessage(v11, 305, &v14, *(a1 + 64));
    xpc_release(v12);
  }

  v13 = *MEMORY[0x29EDCA608];
}

void sub_29704D91C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, int a13, __int16 a14, char a15, char a16)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t __copy_helper_block_e8_48c46_ZTSNSt3__110shared_ptrIN4coex6Module5StateEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 56);
  *(result + 48) = *(a2 + 48);
  *(result + 56) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_48c46_ZTSNSt3__110shared_ptrIN4coex6Module5StateEEE(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

xpc_object_t __Block_byref_object_copy__277(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = *(a2 + 40);
  result = xpc_null_create();
  *(a2 + 40) = result;
  return result;
}

void ___ZN4coex6Module5State18sendWWANState_syncENS_5SubIdE_block_invoke_3(uint64_t a1, int64_t value)
{
  v3 = xpc_int64_create(value);
  if (!v3)
  {
    v3 = xpc_null_create();
  }

  xpc_dictionary_set_value(*(*(*(a1 + 32) + 8) + 40), "kWCMCellularNetworkConfiguration_FrameOffset", v3);
  v4 = xpc_null_create();
  xpc_release(v3);
  xpc_release(v4);
}

void ___ZN4coex6Module5State18sendWWANState_syncENS_5SubIdE_block_invoke_4(uint64_t a1, int64_t value)
{
  v3 = xpc_int64_create(value);
  if (!v3)
  {
    v3 = xpc_null_create();
  }

  xpc_dictionary_set_value(*(*(*(a1 + 32) + 8) + 40), "kWCMCellularNetworkConfiguration_TTDUL_DL", v3);
  v4 = xpc_null_create();
  xpc_release(v3);
  xpc_release(v4);
}

void ___ZN4coex6Module5State18sendWWANState_syncENS_5SubIdE_block_invoke_5(uint64_t a1, int64_t value)
{
  v3 = xpc_int64_create(value);
  if (!v3)
  {
    v3 = xpc_null_create();
  }

  xpc_dictionary_set_value(*(*(*(a1 + 32) + 8) + 40), "kWCMCellularNetworkConfiguration_SubFrameFormat", v3);
  v4 = xpc_null_create();
  xpc_release(v3);
  xpc_release(v4);
}

void ___ZN4coex6Module5State18sendWWANState_syncENS_5SubIdE_block_invoke_6(uint64_t a1, int64_t value)
{
  v3 = xpc_int64_create(value);
  if (!v3)
  {
    v3 = xpc_null_create();
  }

  xpc_dictionary_set_value(*(*(*(a1 + 32) + 8) + 40), "kWCMCellularNetworkConfiguration_ULCPConfig", v3);
  v4 = xpc_null_create();
  xpc_release(v3);
  xpc_release(v4);
}

void ___ZN4coex6Module5State18sendWWANState_syncENS_5SubIdE_block_invoke_7(uint64_t a1, int64_t value)
{
  v3 = xpc_int64_create(value);
  if (!v3)
  {
    v3 = xpc_null_create();
  }

  xpc_dictionary_set_value(*(*(*(a1 + 32) + 8) + 40), "kWCMCellularNetworkConfiguration_DLCPConfig", v3);
  v4 = xpc_null_create();
  xpc_release(v3);
  xpc_release(v4);
}

void ___ZN4coex6Module5State18sendWWANState_syncENS_5SubIdE_block_invoke_8(uint64_t a1, int64_t value)
{
  v3 = xpc_int64_create(value);
  if (!v3)
  {
    v3 = xpc_null_create();
  }

  xpc_dictionary_set_value(*(*(*(a1 + 32) + 8) + 40), "kWCMCellularNetworkConfiguration_LTEOffPeriod", v3);
  v4 = xpc_null_create();
  xpc_release(v3);
  xpc_release(v4);
}

void coex::Module::State::sendLinkQuality_sync(uint64_t a1, int a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  if (v4 || (v4 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C26CE60](v4) == MEMORY[0x29EDCAA00])
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
  v25 = 0xAAAAAAAAAAAAAAAALL;
  coex::Module::State::getSubProperty(a1, coex::kKeyLinkQuality, a2, 0, &v25);
  if (v25)
  {
    v24[0] = 0xAAAAAAAAAAAAAAAALL;
    v24[1] = 0xAAAAAAAAAAAAAAAALL;
    ctu::cf::dict_adapter::dict_adapter(v24, v25);
    v6 = ctu::cf::map_adapter::copyCFNumberRef(v24, *MEMORY[0x29EDC8AE8]);
    v23 = v6;
    if (v6)
    {
      value[0] = 0;
      ctu::cf::assign(value, v6, v7);
      v8 = xpc_int64_create(value[0]);
      if (!v8)
      {
        v8 = xpc_null_create();
      }

      xpc_dictionary_set_value(v5, "kWCMCellularLinkQuality_SINR", v8);
      v9 = xpc_null_create();
      xpc_release(v8);
      xpc_release(v9);
    }

    v10 = ctu::cf::map_adapter::copyCFDictionaryRef(v24, *MEMORY[0x29EDC8788]);
    cf = v10;
    if (v10)
    {
      value[0] = 0xAAAAAAAAAAAAAAAALL;
      value[1] = 0xAAAAAAAAAAAAAAAALL;
      ctu::cf::dict_adapter::dict_adapter(value, v10);
      Int = ctu::cf::map_adapter::getInt(value, *MEMORY[0x29EDC8698]);
      v12 = ctu::cf::map_adapter::getInt(value, *MEMORY[0x29EDC8980]);
      v13 = Int;
      v14 = xpc_double_create(Int);
      if (!v14)
      {
        v14 = xpc_null_create();
      }

      xpc_dictionary_set_value(v5, "kWCMCellularLinkQuality_BLERBlockCount", v14);
      v15 = xpc_null_create();
      xpc_release(v14);
      xpc_release(v15);
      v16 = xpc_double_create(v12 / v13);
      if (!v16)
      {
        v16 = xpc_null_create();
      }

      xpc_dictionary_set_value(v5, "kWCMCellularLinkQuality_BLER", v16);
      v17 = xpc_null_create();
      xpc_release(v16);
      xpc_release(v17);
      MEMORY[0x29C26B180](value);
      if (cf)
      {
        CFRelease(cf);
      }
    }

    if (v23)
    {
      CFRelease(v23);
    }

    MEMORY[0x29C26B180](v24);
  }

  v18 = *(a1 + 56);
  if (v18)
  {
    v20 = v5;
    if (v5)
    {
      xpc_retain(v5);
      v19 = v20;
    }

    else
    {
      v19 = xpc_null_create();
      v20 = v19;
    }

    coex::XpcClient::sendMessage(v18, 302, &v20, a2);
    xpc_release(v19);
    v20 = 0;
  }

  if (v25)
  {
    CFRelease(v25);
  }

  xpc_release(v5);
}

void sub_29704E0CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va4, a2);
  va_start(va3, a2);
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  va_copy(va2, va1);
  v7 = va_arg(va2, const void *);
  va_copy(va3, va2);
  v9 = va_arg(va3, const void *);
  va_copy(va4, va3);
  v11 = va_arg(va4, void);
  v13 = va_arg(va4, void);
  MEMORY[0x29C26B180](va);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(va1);
  ctu::cf::CFSharedRef<__CFNumber const>::~CFSharedRef(va2);
  MEMORY[0x29C26B180](va3);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(va4);
  xpc_release(v2);
  _Unwind_Resume(a1);
}

void ___ZN4coex6Module5State22sendFailCondition_syncENS_5SubIdE_block_invoke(uint64_t a1, int a2)
{
  v3 = xpc_int64_create(a2);
  if (!v3)
  {
    v3 = xpc_null_create();
  }

  xpc_dictionary_set_value(*(*(*(a1 + 32) + 8) + 40), "kWCMCellularThresholdReached_EventData", v3);
  v4 = xpc_null_create();
  xpc_release(v3);
  xpc_release(v4);
}

void ___ZN4coex6Module5State22sendFailCondition_syncENS_5SubIdE_block_invoke_2(uint64_t a1, int a2)
{
  v3 = xpc_int64_create(a2);
  if (!v3)
  {
    v3 = xpc_null_create();
  }

  xpc_dictionary_set_value(*(*(*(a1 + 32) + 8) + 40), "kWCMCellularThresholdReached_EventData", v3);
  v4 = xpc_null_create();
  xpc_release(v3);
  xpc_release(v4);
}

void ___ZN4coex6Module5State14setPolicy_syncENS_5SubIdE_block_invoke_317(uint64_t a1, int a2)
{
  v4 = *(a1 + 32);
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
  if (*(a1 + 40))
  {
    v7 = 39321;
  }

  else
  {
    v7 = 0;
  }

  v8 = xpc_int64_create(v7);
  if (!v8)
  {
    v8 = xpc_null_create();
  }

  xpc_dictionary_set_value(v6, "kWCMCellularTxPower_Response", v8);
  v9 = xpc_null_create();
  xpc_release(v8);
  xpc_release(v9);
  v10 = xpc_int64_create(a2);
  if (!v10)
  {
    v10 = xpc_null_create();
  }

  xpc_dictionary_set_value(v6, "kWCMCellularTxPower_Level", v10);
  v11 = xpc_null_create();
  xpc_release(v10);
  xpc_release(v11);
  v12 = *(v4 + 56);
  if (v12)
  {
    v14 = v6;
    if (v6)
    {
      xpc_retain(v6);
      v13 = v14;
    }

    else
    {
      v13 = xpc_null_create();
      v14 = v13;
    }

    coex::XpcClient::sendMessage(v12, 301, &v14, 0);
    xpc_release(v13);
    v14 = 0;
  }

  xpc_release(v6);
}

CFTypeRef __copy_helper_block_e8_40c38_ZTSN3ctu2cf11CFSharedRefI9__CFErrorEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

void __destroy_helper_block_e8_40c38_ZTSN3ctu2cf11CFSharedRefI9__CFErrorEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    CFRelease(v1);
  }
}

void ___ZN4coex6Module5State23setLinkQualityMode_syncEjNS_5SubIdE_block_invoke(uint64_t a1, uint64_t *a2)
{
  v8 = *MEMORY[0x29EDCA608];
  v2 = *a2;
  if (*a2 && (v3 = *(*(a1 + 32) + 32), os_log_type_enabled(v3, OS_LOG_TYPE_ERROR)))
  {
    v6 = 138412290;
    v7 = v2;
    _os_log_error_impl(&dword_296FF7000, v3, OS_LOG_TYPE_ERROR, "Failed to set SINR and/or BLER: %@", &v6, 0xCu);
    v5 = *MEMORY[0x29EDCA608];
  }

  else
  {
    v4 = *MEMORY[0x29EDCA608];
  }
}

void *std::list<boost::signals2::connection>::~list(void *a1)
{
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
        if (v6 && atomic_fetch_add(v6 + 3, 0xFFFFFFFF) == 1)
        {
          v7 = v2;
          (*(*v6 + 24))(v6);
          v2 = v7;
        }

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }

  return a1;
}

void coex::CoexCache::~CoexCache(coex::CoexCache *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(this + 1);
  if (v4)
  {
    CFRelease(v4);
  }

  if (*this)
  {
    CFRelease(*this);
  }
}

void boost::signals2::detail::connection_body_base::disconnect(boost::signals2::detail::connection_body_base *this)
{
  v12 = *MEMORY[0x29EDCA608];
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v7[8] = v2;
  v7[9] = v2;
  v7[6] = v2;
  v7[7] = v2;
  v7[4] = v2;
  v7[5] = v2;
  v7[2] = v2;
  v7[3] = v2;
  v7[0] = v2;
  v7[1] = v2;
  v8 = 10;
  __p = v7;
  v10 = 0;
  v11 = this;
  (*(*this + 24))(this);
  if (*(this + 24) == 1)
  {
    *(this + 24) = 0;
    boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::detail::connection_body_base>(this, v7);
  }

  (*(*v11 + 32))(v11);
  v3 = __p;
  if (__p)
  {
    if (v10 > 0)
    {
      v5 = __p + 16 * v10;
      do
      {
        v6 = *(v5 - 1);
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

        v5 -= 16;
      }

      while (v5 > v3);
    }

    if (v8 >= 0xB)
    {
      operator delete(__p);
    }
  }

  v4 = *MEMORY[0x29EDCA608];
}

void sub_29704E84C(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void *boost::signals2::detail::auto_buffer<boost::shared_ptr<void>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::shared_ptr<void>>>::~auto_buffer(void *a1)
{
  v2 = a1[21];
  if (v2)
  {
    v3 = a1[22];
    if (v3 > 0)
    {
      v5 = v2 + 16 * v3;
      do
      {
        v6 = *(v5 - 8);
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

        v5 -= 16;
      }

      while (v5 > v2);
    }

    if (a1[20] >= 0xBuLL)
    {
      operator delete(a1[21]);
    }
  }

  return a1;
}

uint64_t boost::shared_ptr<void>::~shared_ptr(uint64_t result)
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

void boost::detail::shared_count::~shared_count(atomic_uint **this)
{
  v1 = *this;
  if (*this && atomic_fetch_add(v1 + 2, 0xFFFFFFFF) == 1)
  {
    (*(*v1 + 16))(v1);
    if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 24))(v1);
    }
  }
}

void boost::signals2::detail::auto_buffer<boost::shared_ptr<void>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::shared_ptr<void>>>::push_back(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 176);
  if (v4 != *(a1 + 160))
  {
    v11 = *a2;
    *(*(a1 + 168) + 16 * v4) = *a2;
    v12 = *(&v11 + 1);
    if (!*(&v11 + 1))
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (v4 == -1)
  {
    v15 = *a2;
    *(*(a1 + 168) - 16) = *a2;
    v12 = *(&v15 + 1);
    if (!*(&v15 + 1))
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (4 * v4 <= (v4 + 1))
  {
    v5 = v4 + 1;
  }

  else
  {
    v5 = 4 * v4;
  }

  v6 = a1;
  if (v5 >= 0xB)
  {
    if (v5 >> 60)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v6 = operator new(16 * v5);
  }

  v7 = *(a1 + 168);
  if (v4)
  {
    v8 = &v7[2 * v4];
    v9 = v6;
    do
    {
      v10 = v7[1];
      *v9 = *v7;
      v9[1] = v10;
      if (v10)
      {
        atomic_fetch_add_explicit((v10 + 8), 1u, memory_order_relaxed);
      }

      v7 += 2;
      v9 += 2;
    }

    while (v7 != v8);
    v7 = *(a1 + 168);
  }

  if (v7)
  {
    v13 = *(a1 + 176);
    if (v13 > 0)
    {
      v16 = &v7[2 * v13];
      do
      {
        v17 = *(v16 - 1);
        if (v17)
        {
          if (atomic_fetch_add(v17 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v17 + 16))(v17);
            if (atomic_fetch_add(v17 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v17 + 24))(v17);
            }
          }
        }

        v16 -= 2;
      }

      while (v16 > v7);
    }

    if (*(a1 + 160) >= 0xBuLL)
    {
      operator delete(*(a1 + 168));
    }
  }

  *(a1 + 160) = v5;
  *(a1 + 168) = v6;
  v4 = *(a1 + 176);
  v14 = *a2;
  *&v6[2 * v4] = *a2;
  v12 = *(&v14 + 1);
  if (*(&v14 + 1))
  {
LABEL_15:
    atomic_fetch_add_explicit((v12 + 8), 1u, memory_order_relaxed);
    v4 = *(a1 + 176);
  }

LABEL_16:
  *(a1 + 176) = v4 + 1;
}

uint64_t boost::signals2::detail::garbage_collecting_lock<boost::signals2::detail::connection_body_base>::~garbage_collecting_lock(uint64_t a1)
{
  (*(**(a1 + 184) + 32))(*(a1 + 184));
  v2 = *(a1 + 168);
  if (v2)
  {
    v3 = *(a1 + 176);
    if (v3 > 0)
    {
      v5 = v2 + 16 * v3;
      do
      {
        v6 = *(v5 - 8);
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

        v5 -= 16;
      }

      while (v5 > v2);
    }

    if (*(a1 + 160) >= 0xBuLL)
    {
      operator delete(*(a1 + 168));
    }
  }

  return a1;
}

{
  (*(**(a1 + 184) + 32))(*(a1 + 184));
  v2 = *(a1 + 168);
  if (v2)
  {
    v3 = *(a1 + 176);
    if (v3 > 0)
    {
      v5 = v2 + 16 * v3;
      do
      {
        v6 = *(v5 - 8);
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

        v5 -= 16;
      }

      while (v5 > v2);
    }

    if (*(a1 + 160) >= 0xBuLL)
    {
      operator delete(*(a1 + 168));
    }
  }

  return a1;
}

uint64_t boost::shared_ptr<boost::signals2::detail::connection_body_base>::~shared_ptr(uint64_t result)
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

const void **ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t *std::list<std::pair<unsigned long long,unsigned int>>::~list(uint64_t *a1)
{
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
        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }

  return a1;
}

void *std::__list_imp<std::pair<unsigned long long,unsigned int>>::clear(void *result)
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

void std::__shared_ptr_pointer<coex::Module *,std::shared_ptr<coex::Module>::__shared_ptr_default_delete<coex::Module,coex::Module>,std::allocator<coex::Module>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<coex::Module *,std::shared_ptr<coex::Module>::__shared_ptr_default_delete<coex::Module,coex::Module>,std::allocator<coex::Module>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<coex::Module *,std::shared_ptr<coex::Module>::__shared_ptr_default_delete<coex::Module,coex::Module>,std::allocator<coex::Module>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x8000000297222F3CLL)
  {
    if (((v2 & 0x8000000297222F3CLL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x8000000297222F3CLL))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x8000000297222F3CLL & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void std::__shared_ptr_pointer<coex::Module::State *,std::shared_ptr<coex::Module::State> ctu::SharedSynchronizable<coex::Module::State>::make_shared_ptr<coex::Module::State>(coex::Module::State*)::{lambda(coex::Module::State *)#1},std::allocator<coex::Module::State>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<coex::Module::State *,std::shared_ptr<coex::Module::State> ctu::SharedSynchronizable<coex::Module::State>::make_shared_ptr<coex::Module::State>(coex::Module::State*)::{lambda(coex::Module::State *)#1},std::allocator<coex::Module::State>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableIN4coex6Module5StateEE15make_shared_ptrIS3_EENSt3__110shared_ptrIT_EEPS8_EUlPS3_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableIN4coex6Module5StateEE15make_shared_ptrIS3_EENSt3__110shared_ptrIT_EEPS8_EUlPS3_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableIN4coex6Module5StateEE15make_shared_ptrIS3_EENSt3__110shared_ptrIT_EEPS8_EUlPS3_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableIN4coex6Module5StateEE15make_shared_ptrIS3_EENSt3__110shared_ptrIT_EEPS8_EUlPS3_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void std::shared_ptr<coex::Module::State> ctu::SharedSynchronizable<coex::Module::State>::make_shared_ptr<coex::Module::State>(coex::Module::State*)::{lambda(coex::Module::State*)#1}::operator() const(coex::Module::State*)::{lambda(void *)#1}::__invoke(coex::Module::State *a1)
{
  if (a1)
  {
    coex::Module::State::~State(a1);

    operator delete(v1);
  }
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS9_NSE_14default_deleteIS9_EEEEENUlPvE_8__invokeESJ_(uint64_t a1)
{
  v2 = *a1;
  coex::Module::State::sendWWANState_sync(**a1, *(*a1 + 8));
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

void sub_29704F1EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  operator delete(v10);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb0_E3__2EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS9_NSE_14default_deleteIS9_EEEEENUlPvE_8__invokeESJ_(uint64_t a1)
{
  v2 = *a1;
  coex::Module::State::sendLinkQuality_sync(**a1, *(*a1 + 8));
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

void sub_29704F2D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  operator delete(v10);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb1_E3__3EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS9_NSE_14default_deleteIS9_EEEEENUlPvE_8__invokeESJ_(void *a1)
{
  v2 = *a1;
  v3 = **a1;
  v4 = *(*a1 + 8);
  object = v4;
  if (v4 && MEMORY[0x29C26CE60](v4) == MEMORY[0x29EDCA9E0])
  {
    xpc_retain(v4);
  }

  else
  {
    object = xpc_null_create();
  }

  coex::Module::State::handleSetNetworkConfigOfInterest_sync(v3, &object, *(v2 + 4));
  xpc_release(object);
  xpc_release(v2[1]);
  operator delete(v2);
  v5 = *(a1 + 2);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  operator delete(a1);
}

void sub_29704F3EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, xpc_object_t *a11, xpc_object_t object)
{
  xpc_release(object);
  _ZNSt3__110unique_ptrIZZN4coex6Module5State4initEvEUb1_E3__3NS_14default_deleteIS4_EEED1B8ne200100Ev(&a11);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

xpc_object_t **_ZNSt3__110unique_ptrIZZN4coex6Module5State4initEvEUb1_E3__3NS_14default_deleteIS4_EEED1B8ne200100Ev(xpc_object_t **result)
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

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb2_E3__4EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS9_NSE_14default_deleteIS9_EEEEENUlPvE_8__invokeESJ_(void *a1)
{
  v2 = *a1;
  v4 = **a1;
  v3 = *(*a1 + 8);
  object = v3;
  if (v3)
  {
    xpc_retain(v3);
  }

  else
  {
    object = xpc_null_create();
  }

  coex::Module::State::handleSetTxPowerLimit_sync(v4, &object, *(v2 + 4));
  xpc_release(object);
  xpc_release(v2[1]);
  operator delete(v2);
  v5 = *(a1 + 2);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  operator delete(a1);
}

void sub_29704F538(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, xpc_object_t *a11, xpc_object_t object)
{
  xpc_release(object);
  _ZNSt3__110unique_ptrIZZN4coex6Module5State4initEvEUb2_E3__4NS_14default_deleteIS4_EEED1B8ne200100Ev(&a11);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

xpc_object_t **_ZNSt3__110unique_ptrIZZN4coex6Module5State4initEvEUb2_E3__4NS_14default_deleteIS4_EEED1B8ne200100Ev(xpc_object_t **result)
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

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb3_E3__5EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS9_NSE_14default_deleteIS9_EEEEENUlPvE_8__invokeESJ_(void *a1)
{
  v2 = *a1;
  v4 = **a1;
  v3 = *(*a1 + 8);
  object = v3;
  if (v3)
  {
    xpc_retain(v3);
  }

  else
  {
    object = xpc_null_create();
  }

  coex::Module::State::handleSetWCI2TxPowerLimit_sync(v4, &object, *(v2 + 4));
  xpc_release(object);
  xpc_release(v2[1]);
  operator delete(v2);
  v5 = *(a1 + 2);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  operator delete(a1);
}

void sub_29704F684(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, xpc_object_t *a11, xpc_object_t object)
{
  xpc_release(object);
  _ZNSt3__110unique_ptrIZZN4coex6Module5State4initEvEUb3_E3__5NS_14default_deleteIS4_EEED1B8ne200100Ev(&a11);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

xpc_object_t **_ZNSt3__110unique_ptrIZZN4coex6Module5State4initEvEUb3_E3__5NS_14default_deleteIS4_EEED1B8ne200100Ev(xpc_object_t **result)
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

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb4_E3__6EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS9_NSE_14default_deleteIS9_EEEEENUlPvE_8__invokeESJ_(xpc_object_t **a1)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  if (v3 && MEMORY[0x29C26CE60]((*a1)[1]) == MEMORY[0x29EDCAA00])
  {
    xpc_retain(v3);
  }

  else
  {
    v3 = xpc_null_create();
  }

  v5 = *(v4 + 4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v7[0] = 0;
    _os_log_error_impl(&dword_296FF7000, v5, OS_LOG_TYPE_ERROR, "WCMCellularSetWCI2CalibrationInfo not supported", v7, 2u);
  }

  xpc_release(v3);
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

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb5_E3__7EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS9_NSE_14default_deleteIS9_EEEEENUlPvE_8__invokeESJ_(void *a1)
{
  v2 = *a1;
  v4 = **a1;
  v3 = *(*a1 + 8);
  v6 = v3;
  if (v3 && MEMORY[0x29C26CE60](v3) == MEMORY[0x29EDCAA00])
  {
    xpc_retain(v3);
  }

  else
  {
    v3 = xpc_null_create();
    v6 = v3;
  }

  coex::Module::State::handleSetWCI2Mode_sync(v4, &v6, *(v2 + 4));
  xpc_release(v3);
  xpc_release(v2[1]);
  operator delete(v2);
  v5 = *(a1 + 2);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  operator delete(a1);
}

void sub_29704F91C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, xpc_object_t *a11)
{
  xpc_release(v11);
  _ZNSt3__110unique_ptrIZZN4coex6Module5State4initEvEUb5_E3__7NS_14default_deleteIS4_EEED1B8ne200100Ev(&a11);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

xpc_object_t **_ZNSt3__110unique_ptrIZZN4coex6Module5State4initEvEUb5_E3__7NS_14default_deleteIS4_EEED1B8ne200100Ev(xpc_object_t **result)
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

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb6_E3__8EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS9_NSE_14default_deleteIS9_EEEEENUlPvE_8__invokeESJ_(void *a1)
{
  v2 = *a1;
  v4 = **a1;
  v3 = *(*a1 + 8);
  v6 = v3;
  if (v3 && MEMORY[0x29C26CE60](v3) == MEMORY[0x29EDCAA00])
  {
    xpc_retain(v3);
  }

  else
  {
    v3 = xpc_null_create();
    v6 = v3;
  }

  coex::Module::State::handleSetLinkQualityMode_sync(v4, &v6, *(v2 + 4));
  xpc_release(v3);
  xpc_release(v2[1]);
  operator delete(v2);
  v5 = *(a1 + 2);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  operator delete(a1);
}

void sub_29704FA98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, xpc_object_t *a11)
{
  xpc_release(v11);
  _ZNSt3__110unique_ptrIZZN4coex6Module5State4initEvEUb6_E3__8NS_14default_deleteIS4_EEED1B8ne200100Ev(&a11);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

xpc_object_t **_ZNSt3__110unique_ptrIZZN4coex6Module5State4initEvEUb6_E3__8NS_14default_deleteIS4_EEED1B8ne200100Ev(xpc_object_t **result)
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

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb7_E3__9EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS9_NSE_14default_deleteIS9_EEEEENUlPvE_8__invokeESJ_(void *a1)
{
  v2 = *a1;
  v3 = **a1;
  v4 = *(*a1 + 8);
  object = v4;
  if (v4 && MEMORY[0x29C26CE60](v4) == MEMORY[0x29EDCA9E0])
  {
    xpc_retain(v4);
  }

  else
  {
    object = xpc_null_create();
  }

  coex::Module::State::handleSetScanFreqBandFilter_sync(v3, &object, *(v2 + 4));
  xpc_release(object);
  xpc_release(v2[1]);
  operator delete(v2);
  v5 = *(a1 + 2);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  operator delete(a1);
}

void sub_29704FC08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, xpc_object_t *a11, xpc_object_t object)
{
  xpc_release(object);
  _ZNSt3__110unique_ptrIZZN4coex6Module5State4initEvEUb7_E3__9NS_14default_deleteIS4_EEED1B8ne200100Ev(&a11);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

xpc_object_t **_ZNSt3__110unique_ptrIZZN4coex6Module5State4initEvEUb7_E3__9NS_14default_deleteIS4_EEED1B8ne200100Ev(xpc_object_t **result)
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

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb8_E4__10EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS9_NSE_14default_deleteIS9_EEEEENUlPvE_8__invokeESJ_(uint64_t a1)
{
  v2 = *a1;
  coex::Module::State::handleGetScanFreqBandFilter_sync(**a1, *(*a1 + 8));
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

void sub_29704FD40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  operator delete(v10);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb9_E4__11EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS9_NSE_14default_deleteIS9_EEEEENUlPvE_8__invokeESJ_(void *a1)
{
  v2 = *a1;
  v4 = **a1;
  v3 = *(*a1 + 8);
  v6 = v3;
  if (v3 && MEMORY[0x29C26CE60](v3) == MEMORY[0x29EDCAA00])
  {
    xpc_retain(v3);
  }

  else
  {
    v3 = xpc_null_create();
    v6 = v3;
  }

  coex::Module::State::handleSetWiFiStatus_sync(v4, &v6, *(v2 + 4));
  xpc_release(v3);
  xpc_release(v2[1]);
  operator delete(v2);
  v5 = *(a1 + 2);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  operator delete(a1);
}

void sub_29704FE68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, xpc_object_t *a11)
{
  xpc_release(v11);
  _ZNSt3__110unique_ptrIZZN4coex6Module5State4initEvEUb9_E4__11NS_14default_deleteIS4_EEED1B8ne200100Ev(&a11);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

xpc_object_t **_ZNSt3__110unique_ptrIZZN4coex6Module5State4initEvEUb9_E4__11NS_14default_deleteIS4_EEED1B8ne200100Ev(xpc_object_t **result)
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

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb10_E4__12EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS9_NSE_14default_deleteIS9_EEEEENUlPvE_8__invokeESJ_(void *a1)
{
  v2 = *a1;
  v4 = **a1;
  v3 = *(*a1 + 8);
  v6 = v3;
  if (v3 && MEMORY[0x29C26CE60](v3) == MEMORY[0x29EDCAA00])
  {
    xpc_retain(v3);
  }

  else
  {
    v3 = xpc_null_create();
    v6 = v3;
  }

  coex::Module::State::handleSetLAAConfig_sync(v4, &v6, *(v2 + 4));
  xpc_release(v3);
  xpc_release(v2[1]);
  operator delete(v2);
  v5 = *(a1 + 2);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  operator delete(a1);
}

void sub_29704FFE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, xpc_object_t *a11)
{
  xpc_release(v11);
  _ZNSt3__110unique_ptrIZZN4coex6Module5State4initEvEUb10_E4__12NS_14default_deleteIS4_EEED1B8ne200100Ev(&a11);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

xpc_object_t **_ZNSt3__110unique_ptrIZZN4coex6Module5State4initEvEUb10_E4__12NS_14default_deleteIS4_EEED1B8ne200100Ev(xpc_object_t **result)
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

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb11_E4__13EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS9_NSE_14default_deleteIS9_EEEEENUlPvE_8__invokeESJ_(void *a1)
{
  v2 = *a1;
  v3 = **a1;
  v4 = *(*a1 + 8);
  object = v4;
  if (v4 && MEMORY[0x29C26CE60](v4) == MEMORY[0x29EDCAA00])
  {
    xpc_retain(v4);
  }

  else
  {
    object = xpc_null_create();
  }

  coex::Module::State::handleSetFCMBCMAntennaMode_sync(v3, &object, *(v2 + 4));
  xpc_release(object);
  xpc_release(v2[1]);
  operator delete(v2);
  v5 = *(a1 + 2);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  operator delete(a1);
}

void sub_297050154(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, xpc_object_t *a11, xpc_object_t object)
{
  xpc_release(object);
  _ZNSt3__110unique_ptrIZZN4coex6Module5State4initEvEUb11_E4__13NS_14default_deleteIS4_EEED1B8ne200100Ev(&a11);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

xpc_object_t **_ZNSt3__110unique_ptrIZZN4coex6Module5State4initEvEUb11_E4__13NS_14default_deleteIS4_EEED1B8ne200100Ev(xpc_object_t **result)
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

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb12_E4__14EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS9_NSE_14default_deleteIS9_EEEEENUlPvE_8__invokeESJ_(void *a1)
{
  v2 = *a1;
  v4 = **a1;
  v3 = *(*a1 + 8);
  v6 = v3;
  if (v3 && MEMORY[0x29C26CE60](v3) == MEMORY[0x29EDCAA00])
  {
    xpc_retain(v3);
  }

  else
  {
    v3 = xpc_null_create();
    v6 = v3;
  }

  coex::Module::State::handleSetRC1DurationParam_sync(v4, &v6, *(v2 + 4));
  xpc_release(v3);
  xpc_release(v2[1]);
  operator delete(v2);
  v5 = *(a1 + 2);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  operator delete(a1);
}

void sub_2970502D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, xpc_object_t *a11)
{
  xpc_release(v11);
  _ZNSt3__110unique_ptrIZZN4coex6Module5State4initEvEUb12_E4__14NS_14default_deleteIS4_EEED1B8ne200100Ev(&a11);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

xpc_object_t **_ZNSt3__110unique_ptrIZZN4coex6Module5State4initEvEUb12_E4__14NS_14default_deleteIS4_EEED1B8ne200100Ev(xpc_object_t **result)
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

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb13_E4__15EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS9_NSE_14default_deleteIS9_EEEEENUlPvE_8__invokeESJ_(void *a1)
{
  v2 = *a1;
  v3 = **a1;
  v4 = *(*a1 + 8);
  object = v4;
  if (v4 && MEMORY[0x29C26CE60](v4) == MEMORY[0x29EDCAA00])
  {
    xpc_retain(v4);
  }

  else
  {
    object = xpc_null_create();
  }

  coex::Module::State::handleSetTimeShareConfigReq_sync(v3, &object, *(v2 + 4));
  xpc_release(object);
  xpc_release(v2[1]);
  operator delete(v2);
  v5 = *(a1 + 2);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  operator delete(a1);
}

void sub_297050440(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, xpc_object_t *a11, xpc_object_t object)
{
  xpc_release(object);
  _ZNSt3__110unique_ptrIZZN4coex6Module5State4initEvEUb13_E4__15NS_14default_deleteIS4_EEED1B8ne200100Ev(&a11);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

xpc_object_t **_ZNSt3__110unique_ptrIZZN4coex6Module5State4initEvEUb13_E4__15NS_14default_deleteIS4_EEED1B8ne200100Ev(xpc_object_t **result)
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

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb14_E4__16EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS9_NSE_14default_deleteIS9_EEEEENUlPvE_8__invokeESJ_(void *a1)
{
  v2 = *a1;
  v3 = **a1;
  v4 = *(*a1 + 8);
  object = v4;
  if (v4 && MEMORY[0x29C26CE60](v4) == MEMORY[0x29EDCAA00])
  {
    xpc_retain(v4);
  }

  else
  {
    object = xpc_null_create();
  }

  coex::Module::State::handleSetWCI2TxAntMap_sync(v3, &object, *(v2 + 4));
  xpc_release(object);
  xpc_release(v2[1]);
  operator delete(v2);
  v5 = *(a1 + 2);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  operator delete(a1);
}

void sub_2970505B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, xpc_object_t *a11, xpc_object_t object)
{
  xpc_release(object);
  _ZNSt3__110unique_ptrIZZN4coex6Module5State4initEvEUb14_E4__16NS_14default_deleteIS4_EEED1B8ne200100Ev(&a11);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

xpc_object_t **_ZNSt3__110unique_ptrIZZN4coex6Module5State4initEvEUb14_E4__16NS_14default_deleteIS4_EEED1B8ne200100Ev(xpc_object_t **result)
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

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb15_E4__17EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS9_NSE_14default_deleteIS9_EEEEENUlPvE_8__invokeESJ_(void *a1)
{
  v2 = *a1;
  v3 = **a1;
  v4 = *(*a1 + 8);
  object = v4;
  if (v4 && MEMORY[0x29C26CE60](v4) == MEMORY[0x29EDCAA00])
  {
    xpc_retain(v4);
  }

  else
  {
    object = xpc_null_create();
  }

  coex::Module::State::handleSetAntBlocking_sync(v3, &object, *(v2 + 4));
  xpc_release(object);
  xpc_release(v2[1]);
  operator delete(v2);
  v5 = *(a1 + 2);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  operator delete(a1);
}

void sub_297050720(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, xpc_object_t *a11, xpc_object_t object)
{
  xpc_release(object);
  _ZNSt3__110unique_ptrIZZN4coex6Module5State4initEvEUb15_E4__17NS_14default_deleteIS4_EEED1B8ne200100Ev(&a11);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

xpc_object_t **_ZNSt3__110unique_ptrIZZN4coex6Module5State4initEvEUb15_E4__17NS_14default_deleteIS4_EEED1B8ne200100Ev(xpc_object_t **result)
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

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb16_E4__18EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS9_NSE_14default_deleteIS9_EEEEENUlPvE_8__invokeESJ_(void *a1)
{
  v2 = *a1;
  v3 = **a1;
  v4 = *(*a1 + 8);
  object = v4;
  if (v4 && MEMORY[0x29C26CE60](v4) == MEMORY[0x29EDCAA00])
  {
    xpc_retain(v4);
  }

  else
  {
    object = xpc_null_create();
  }

  coex::Module::State::handleSetClientAntBlocking_sync(v3, &object, *(v2 + 4));
  xpc_release(object);
  xpc_release(v2[1]);
  operator delete(v2);
  v5 = *(a1 + 2);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  operator delete(a1);
}

void sub_297050890(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, xpc_object_t *a11, xpc_object_t object)
{
  xpc_release(object);
  _ZNSt3__110unique_ptrIZZN4coex6Module5State4initEvEUb16_E4__18NS_14default_deleteIS4_EEED1B8ne200100Ev(&a11);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

xpc_object_t **_ZNSt3__110unique_ptrIZZN4coex6Module5State4initEvEUb16_E4__18NS_14default_deleteIS4_EEED1B8ne200100Ev(xpc_object_t **result)
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

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb17_E4__19EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS9_NSE_14default_deleteIS9_EEEEENUlPvE_8__invokeESJ_(void *a1)
{
  v2 = *a1;
  v3 = **a1;
  v4 = *(*a1 + 8);
  object = v4;
  if (v4 && MEMORY[0x29C26CE60](v4) == MEMORY[0x29EDCAA00])
  {
    xpc_retain(v4);
  }

  else
  {
    object = xpc_null_create();
  }

  coex::Module::State::handleSetClientAntBlockingExtended_sync(v3, &object, *(v2 + 4));
  xpc_release(object);
  xpc_release(v2[1]);
  operator delete(v2);
  v5 = *(a1 + 2);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  operator delete(a1);
}

void sub_297050A00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, xpc_object_t *a11, xpc_object_t object)
{
  xpc_release(object);
  _ZNSt3__110unique_ptrIZZN4coex6Module5State4initEvEUb17_E4__19NS_14default_deleteIS4_EEED1B8ne200100Ev(&a11);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

xpc_object_t **_ZNSt3__110unique_ptrIZZN4coex6Module5State4initEvEUb17_E4__19NS_14default_deleteIS4_EEED1B8ne200100Ev(xpc_object_t **result)
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

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb18_E4__20EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS9_NSE_14default_deleteIS9_EEEEENUlPvE_8__invokeESJ_(void *a1)
{
  v2 = *a1;
  v4 = **a1;
  v3 = *(*a1 + 8);
  v6 = v3;
  if (v3 && MEMORY[0x29C26CE60](v3) == MEMORY[0x29EDCAA00])
  {
    xpc_retain(v3);
  }

  else
  {
    v3 = xpc_null_create();
    v6 = v3;
  }

  coex::Module::State::handleTriggerAntennaBlocking_sync(v4, &v6, *(v2 + 4));
  xpc_release(v3);
  xpc_release(v2[1]);
  operator delete(v2);
  v5 = *(a1 + 2);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  operator delete(a1);
}

void sub_297050B7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, xpc_object_t *a11)
{
  xpc_release(v11);
  _ZNSt3__110unique_ptrIZZN4coex6Module5State4initEvEUb18_E4__20NS_14default_deleteIS4_EEED1B8ne200100Ev(&a11);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

xpc_object_t **_ZNSt3__110unique_ptrIZZN4coex6Module5State4initEvEUb18_E4__20NS_14default_deleteIS4_EEED1B8ne200100Ev(xpc_object_t **result)
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

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb19_E4__21EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS9_NSE_14default_deleteIS9_EEEEENUlPvE_8__invokeESJ_(void *a1)
{
  v2 = *a1;
  v4 = **a1;
  v3 = *(*a1 + 8);
  v6 = v3;
  if (v3 && MEMORY[0x29C26CE60](v3) == MEMORY[0x29EDCAA00])
  {
    xpc_retain(v3);
  }

  else
  {
    v3 = xpc_null_create();
    v6 = v3;
  }

  coex::Module::State::handleSetCC1_sync(v4, &v6, *(v2 + 4));
  xpc_release(v3);
  xpc_release(v2[1]);
  operator delete(v2);
  v5 = *(a1 + 2);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  operator delete(a1);
}

void sub_297050CF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, xpc_object_t *a11)
{
  xpc_release(v11);
  _ZNSt3__110unique_ptrIZZN4coex6Module5State4initEvEUb19_E4__21NS_14default_deleteIS4_EEED1B8ne200100Ev(&a11);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

xpc_object_t **_ZNSt3__110unique_ptrIZZN4coex6Module5State4initEvEUb19_E4__21NS_14default_deleteIS4_EEED1B8ne200100Ev(xpc_object_t **result)
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

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb20_E4__22EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS9_NSE_14default_deleteIS9_EEEEENUlPvE_8__invokeESJ_(void *a1)
{
  v2 = *a1;
  v4 = **a1;
  v3 = *(*a1 + 8);
  v6 = v3;
  if (v3 && MEMORY[0x29C26CE60](v3) == MEMORY[0x29EDCAA00])
  {
    xpc_retain(v3);
  }

  else
  {
    v3 = xpc_null_create();
    v6 = v3;
  }

  coex::Module::State::handleSetCC2_sync(v4, &v6, *(v2 + 4));
  xpc_release(v3);
  xpc_release(v2[1]);
  operator delete(v2);
  v5 = *(a1 + 2);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  operator delete(a1);
}

void sub_297050E74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, xpc_object_t *a11)
{
  xpc_release(v11);
  _ZNSt3__110unique_ptrIZZN4coex6Module5State4initEvEUb20_E4__22NS_14default_deleteIS4_EEED1B8ne200100Ev(&a11);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

xpc_object_t **_ZNSt3__110unique_ptrIZZN4coex6Module5State4initEvEUb20_E4__22NS_14default_deleteIS4_EEED1B8ne200100Ev(xpc_object_t **result)
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

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb21_E4__23EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS9_NSE_14default_deleteIS9_EEEEENUlPvE_8__invokeESJ_(void *a1)
{
  v2 = *a1;
  v4 = **a1;
  v3 = *(*a1 + 8);
  v6 = v3;
  if (v3 && MEMORY[0x29C26CE60](v3) == MEMORY[0x29EDCAA00])
  {
    xpc_retain(v3);
  }

  else
  {
    v3 = xpc_null_create();
    v6 = v3;
  }

  coex::Module::State::handleSetLaaGpioThrottle_sync(v4, &v6, *(v2 + 4));
  xpc_release(v3);
  xpc_release(v2[1]);
  operator delete(v2);
  v5 = *(a1 + 2);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  operator delete(a1);
}

void sub_297050FF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, xpc_object_t *a11)
{
  xpc_release(v11);
  _ZNSt3__110unique_ptrIZZN4coex6Module5State4initEvEUb21_E4__23NS_14default_deleteIS4_EEED1B8ne200100Ev(&a11);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

xpc_object_t **_ZNSt3__110unique_ptrIZZN4coex6Module5State4initEvEUb21_E4__23NS_14default_deleteIS4_EEED1B8ne200100Ev(xpc_object_t **result)
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

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb22_E4__24EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS9_NSE_14default_deleteIS9_EEEEENUlPvE_8__invokeESJ_(void *a1)
{
  v2 = *a1;
  v4 = **a1;
  v3 = *(*a1 + 8);
  v6 = v3;
  if (v3 && MEMORY[0x29C26CE60](v3) == MEMORY[0x29EDCAA00])
  {
    xpc_retain(v3);
  }

  else
  {
    v3 = xpc_null_create();
    v6 = v3;
  }

  coex::Module::State::handleSetGnssParams_sync(v4, &v6, *(v2 + 4));
  xpc_release(v3);
  xpc_release(v2[1]);
  operator delete(v2);
  v5 = *(a1 + 2);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  operator delete(a1);
}

void sub_29705116C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, xpc_object_t *a11)
{
  xpc_release(v11);
  _ZNSt3__110unique_ptrIZZN4coex6Module5State4initEvEUb22_E4__24NS_14default_deleteIS4_EEED1B8ne200100Ev(&a11);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

xpc_object_t **_ZNSt3__110unique_ptrIZZN4coex6Module5State4initEvEUb22_E4__24NS_14default_deleteIS4_EEED1B8ne200100Ev(xpc_object_t **result)
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

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb23_E4__25EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS9_NSE_14default_deleteIS9_EEEEENUlPvE_8__invokeESJ_(void *a1)
{
  v2 = *a1;
  v3 = **a1;
  v4 = *(*a1 + 8);
  object = v4;
  if (v4 && MEMORY[0x29C26CE60](v4) == MEMORY[0x29EDCAA00])
  {
    xpc_retain(v4);
  }

  else
  {
    object = xpc_null_create();
  }

  coex::Module::State::handleTransparentMessageReq_sync(v3, &object, *(v2 + 4));
  xpc_release(object);
  xpc_release(v2[1]);
  operator delete(v2);
  v5 = *(a1 + 2);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  operator delete(a1);
}

void sub_2970512DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, xpc_object_t *a11, xpc_object_t object)
{
  xpc_release(object);
  _ZNSt3__110unique_ptrIZZN4coex6Module5State4initEvEUb23_E4__25NS_14default_deleteIS4_EEED1B8ne200100Ev(&a11);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

xpc_object_t **_ZNSt3__110unique_ptrIZZN4coex6Module5State4initEvEUb23_E4__25NS_14default_deleteIS4_EEED1B8ne200100Ev(xpc_object_t **result)
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

uint64_t ___ZN3ctu20SharedSynchronizableIN4coex6Module5StateEE13connect_eventIN5boost8signals26signalIFvvENS7_19optional_last_valueIvEEiNSt3__14lessIiEENS6_8functionIS9_EENSF_IFvRKNS7_10connectionEEEENS7_5mutexEEES3_vJEEEDTcl7connectfp_cvNSC_10shared_ptrIS3_EE_EcvP16dispatch_queue_s_EcvPFT1_DpT2_ELi0EEERT_MT0_FSS_SU_E_block_invoke(void *a1)
{
  v1 = a1[5];
  v2 = a1[6];
  v3 = (a1[4] + (v2 >> 1));
  if (v2)
  {
    return (*(*v3 + v1))();
  }

  else
  {
    return v1(v3);
  }
}

uint64_t ctu::DispatchSlot<dispatch::block<void({block_pointer})(void)>>::~DispatchSlot(uint64_t a1)
{
  dispatch_release(*a1);
  v2 = *(a1 + 8);
  if (v2)
  {
    _Block_release(v2);
  }

  return a1;
}

uint64_t boost::signals2::detail::garbage_collecting_lock<boost::signals2::mutex>::~garbage_collecting_lock(uint64_t a1)
{
  pthread_mutex_unlock(*(a1 + 184));
  v2 = *(a1 + 168);
  if (v2)
  {
    v3 = *(a1 + 176);
    if (v3 > 0)
    {
      v5 = v2 + 16 * v3;
      do
      {
        v6 = *(v5 - 8);
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

        v5 -= 16;
      }

      while (v5 > v2);
    }

    if (*(a1 + 160) >= 0xBuLL)
    {
      operator delete(*(a1 + 168));
    }
  }

  return a1;
}

void boost::checked_delete<boost::signals2::detail::signal_impl<void ()(void),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(void)>,boost::function<void ()(boost::signals2::connection const&)>,boost::signals2::mutex>::invocation_state>(void *a1)
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

void boost::detail::sp_counted_impl_p<boost::signals2::detail::signal_impl<void ()(void),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(void)>,boost::function<void ()(boost::signals2::connection const&)>,boost::signals2::mutex>::invocation_state>::dispose(uint64_t a1)
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

uint64_t boost::detail::sp_counted_base::destroy(uint64_t this)
{
  if (this)
  {
    return (*(*this + 8))();
  }

  return this;
}

void std::__list_imp<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>>::clear(uint64_t *a1)
{
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
        if (v6 && atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v6 + 16))(v6);
          if (atomic_fetch_add(v6 + 3, 0xFFFFFFFF) == 1)
          {
            (*(*v6 + 24))(v6);
          }
        }

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

uint64_t *std::list<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>>::~list(uint64_t *a1)
{
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

void boost::checked_delete<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>>>(uint64_t *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>>>::destroy(a1[4]);
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

void boost::detail::sp_counted_impl_p<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>>>::dispose(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>>>::destroy(v1[4]);
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

void boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::mutex>(_DWORD *a1, uint64_t a2)
{
  v2 = a1[7] - 1;
  a1[7] = v2;
  if (!v2)
  {
    (*(*a1 + 40))(&v5);
    boost::signals2::detail::auto_buffer<boost::shared_ptr<void>,boost::signals2::detail::store_n_objects<10u>,boost::signals2::detail::default_grow_policy,std::allocator<boost::shared_ptr<void>>>::push_back(a2, &v5);
    v4 = *(&v5 + 1);
    if (*(&v5 + 1))
    {
      if (atomic_fetch_add((*(&v5 + 1) + 8), 0xFFFFFFFF) == 1)
      {
        (*(*v4 + 16))(v4);
        if (atomic_fetch_add(v4 + 3, 0xFFFFFFFF) == 1)
        {
          (*(*v4 + 24))(v4);
        }
      }
    }
  }
}

void boost::signals2::detail::connection_body_base::~connection_body_base(boost::signals2::detail::connection_body_base *this)
{
  *this = &unk_2A1E24C40;
  v1 = *(this + 2);
  if (v1)
  {
    if (atomic_fetch_add(v1 + 3, 0xFFFFFFFF) == 1)
    {
      (*(*v1 + 24))(v1);
    }
  }
}

void boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>::~connection_body(void *a1)
{
  v1 = boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>::~connection_body(a1);

  operator delete(v1);
}

uint64_t boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>::connected(uint64_t a1)
{
  v20[3] = *MEMORY[0x29EDCA608];
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v15[8] = v2;
  v15[9] = v2;
  v15[6] = v2;
  v15[7] = v2;
  v15[4] = v2;
  v15[5] = v2;
  v15[2] = v2;
  v15[3] = v2;
  v15[0] = v2;
  v15[1] = v2;
  v3 = *(a1 + 48);
  v16 = 10;
  v17 = v15;
  v18 = 0;
  v19 = v3;
  pthread_mutex_lock(v3);
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *v4;
    if (*v4 != v4[1])
    {
      while (1)
      {
        memset(v20, 170, 24);
        boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>::apply_visitor<boost::signals2::detail::lock_weak_ptr_visitor const>(v5, v20);
        if ((*v5 ^ (*v5 >> 31)) == 2)
        {
          if (!(*(**(v5 + 8) + 24))(*(v5 + 8)))
          {
            goto LABEL_6;
          }
        }

        else
        {
          v6 = *(v5 + 16);
          if (v6 && atomic_load_explicit((v6 + 8), memory_order_acquire))
          {
LABEL_6:
            v7 = 0;
            if (LODWORD(v20[0]) == SLODWORD(v20[0]) >> 31)
            {
              goto LABEL_13;
            }

            goto LABEL_7;
          }
        }

        if (*(a1 + 24) == 1)
        {
          *(a1 + 24) = 0;
          boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::mutex>(a1, v15);
        }

        v7 = 1;
        if (LODWORD(v20[0]) == SLODWORD(v20[0]) >> 31)
        {
LABEL_13:
          v8 = v20[2];
          if (v20[2])
          {
            if (atomic_fetch_add((v20[2] + 8), 0xFFFFFFFF) == 1)
            {
              (*(*v8 + 16))(v8);
              if (atomic_fetch_add(v8 + 3, 0xFFFFFFFF) == 1)
              {
                (*(*v8 + 24))(v8);
              }
            }
          }

          goto LABEL_17;
        }

LABEL_7:
        if (v20[1])
        {
          (*(*v20[1] + 8))(v20[1]);
        }

LABEL_17:
        if ((v7 & 1) == 0)
        {
          v5 += 24;
          if (v5 != *(*(a1 + 32) + 8))
          {
            continue;
          }
        }

        break;
      }
    }
  }

  v9 = *(a1 + 24);
  pthread_mutex_unlock(v19);
  v10 = v17;
  if (v17)
  {
    if (v18 > 0)
    {
      v13 = &v17[16 * v18];
      do
      {
        v14 = *(v13 - 1);
        if (v14)
        {
          if (atomic_fetch_add(v14 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v14 + 16))(v14);
            if (atomic_fetch_add(v14 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v14 + 24))(v14);
            }
          }
        }

        v13 -= 16;
      }

      while (v13 > v10);
    }

    if (v16 >= 0xB)
    {
      operator delete(v17);
    }
  }

  v11 = *MEMORY[0x29EDCA608];
  return v9;
}

void sub_2970520C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>::release_slot@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v3 = *(result + 40);
  v2 = (result + 32);
  *a2 = *(result + 32);
  a2[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1u, memory_order_relaxed);
    v4 = *(result + 40);
    *v2 = 0;
    *(result + 40) = 0;
    if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
    {
      result = (*(*v4 + 16))(v4);
      if (atomic_fetch_add(v4 + 3, 0xFFFFFFFF) == 1)
      {
        return (*(*v4 + 24))(v4);
      }
    }
  }

  else
  {
    *v2 = 0;
    *(result + 40) = 0;
  }

  return result;
}

void boost::signals2::slot_base::~slot_base(boost::signals2::slot_base *this)
{
  v2 = *this;
  if (*this)
  {
    v3 = *(this + 1);
    v4 = *this;
    if (v3 != v2)
    {
      do
      {
        v3 -= 24;
        boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>::destroy_content(v3);
      }

      while (v3 != v2);
      v4 = *this;
    }

    *(this + 1) = v2;
    operator delete(v4);
  }
}

void *std::vector<boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>>::vector[abi:ne200100](void *a1, char **a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v3 = *a2;
  v4 = a2[1];
  v5 = v4 - *a2;
  if (v4 != *a2)
  {
    if (0xAAAAAAAAAAAAAAABLL * (v5 >> 3) >= 0xAAAAAAAAAAAAAABLL)
    {
      std::vector<std::shared_ptr<Service>>::__throw_length_error[abi:ne200100]();
    }

    v6 = operator new(v4 - v3);
    v7 = 0;
    *a1 = v6;
    a1[1] = v6;
    a1[2] = &v6[v5];
    do
    {
      v8 = &v3[v7];
      v9 = &v6[v7];
      v10 = *&v3[v7 + 8];
      if ((*&v3[v7] ^ (*&v3[v7] >> 31)) == 2)
      {
        *(v9 + 1) = (*(*v10 + 32))(v10);
      }

      else
      {
        *(v9 + 1) = v10;
        v11 = *&v3[v7 + 16];
        *&v6[v7 + 16] = v11;
        if (v11)
        {
          atomic_fetch_add_explicit((v11 + 12), 1u, memory_order_relaxed);
        }
      }

      *v9 = *v8 ^ (*v8 >> 31);
      v7 += 24;
    }

    while (v8 + 6 != v4);
    a1[1] = &v6[v7];
  }

  return a1;
}

void sub_2970523B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  if (v11)
  {
    v13 = v10 + v11 - 24;
    v14 = -v11;
    do
    {
      boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>::destroy_content(v13);
      v13 -= 24;
      v14 += 24;
    }

    while (v14);
  }

  *(v9 + 8) = v10;
  std::__exception_guard_exceptions<std::vector<boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

atomic_uint *boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>::destroy_content(uint64_t a1)
{
  v1 = *a1 ^ (*a1 >> 31);
  if (v1 == 2)
  {
    result = *(a1 + 8);
    if (result)
    {
      v3 = *(*result + 8);

      return v3();
    }
  }

  else if (v1 == 1)
  {
    result = *(a1 + 16);
    if (result && atomic_fetch_add(result + 3, 0xFFFFFFFF) == 1)
    {
      return (*(*result + 24))(result);
    }
  }

  else
  {
    result = *(a1 + 16);
    if (result && atomic_fetch_add(result + 3, 0xFFFFFFFF) == 1)
    {
      return (*(*result + 24))(result);
    }
  }

  return result;
}

void ***std::__exception_guard_exceptions<std::vector<boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](void ***result)
{
  if ((result[1] & 1) == 0)
  {
    v1 = *result;
    v2 = **result;
    if (v2)
    {
      v3 = result;
      v4 = v1[1];
      v5 = **result;
      if (v4 != v2)
      {
        do
        {
          v4 -= 24;
          boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>::destroy_content(v4);
        }

        while (v4 != v2);
        v5 = **v3;
      }

      v1[1] = v2;
      operator delete(v5);
      return v3;
    }
  }

  return result;
}

void boost::checked_delete<boost::signals2::slot<void ()(void),boost::function<void ()(void)>>>(void **__p)
{
  if (__p)
  {
    v2 = __p[3];
    if (v2)
    {
      if ((v2 & 1) == 0)
      {
        v3 = *v2;
        if (v3)
        {
          v3(__p + 4, __p + 4, 2);
        }
      }

      __p[3] = 0;
    }

    v4 = *__p;
    if (*__p)
    {
      v5 = __p[1];
      v6 = *__p;
      if (v5 != v4)
      {
        do
        {
          v5 -= 24;
          boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>::destroy_content(v5);
        }

        while (v5 != v4);
        v6 = *__p;
      }

      __p[1] = v4;
      operator delete(v6);
    }

    operator delete(__p);
  }
}

void boost::detail::sp_counted_impl_p<boost::signals2::slot<void ()(void),boost::function<void ()(void)>>>::dispose(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = v1[3];
    if (v2)
    {
      if ((v2 & 1) == 0)
      {
        v3 = *v2;
        if (v3)
        {
          v3(v1 + 4, v1 + 4, 2);
        }
      }

      v1[3] = 0;
    }

    v4 = *v1;
    if (*v1)
    {
      v5 = v1[1];
      v6 = *v1;
      if (v5 != v4)
      {
        do
        {
          v5 -= 24;
          boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>::destroy_content(v5);
        }

        while (v5 != v4);
        v6 = *v1;
      }

      v1[1] = v4;
      operator delete(v6);
    }

    operator delete(v1);
  }
}

void *boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>::~connection_body(void *a1)
{
  *a1 = &unk_2A1E24BD8;
  v2 = a1[7];
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

  v3 = a1[5];
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

  *a1 = &unk_2A1E24C40;
  v4 = a1[2];
  if (v4 && atomic_fetch_add(v4 + 3, 0xFFFFFFFF) == 1)
  {
    (*(*v4 + 24))(v4);
  }

  return a1;
}

uint64_t boost::variant<boost::shared_ptr<void>,boost::signals2::detail::foreign_void_shared_ptr>::~variant(uint64_t result)
{
  if (*result == *result >> 31)
  {
    v1 = *(result + 16);
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
  }

  else
  {
    v3 = *(result + 8);
    if (v3)
    {
      v4 = result;
      (*(*v3 + 8))(*(result + 8));
      return v4;
    }
  }

  return result;
}

{
  if (*result == *result >> 31)
  {
    v1 = *(result + 16);
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
  }

  else
  {
    v3 = *(result + 8);
    if (v3)
    {
      v4 = result;
      (*(*v3 + 8))(*(result + 8));
      return v4;
    }
  }

  return result;
}

uint64_t boost::detail::sp_counted_impl_p<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>::dispose(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>::~shared_ptr(uint64_t result)
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

void (***boost::function<void ()(void)>::~function(void (***result)(void, void, void)))(void, void, void)
{
  v1 = *result;
  if (*result)
  {
    if ((v1 & 1) == 0)
    {
      v2 = *v1;
      if (v2)
      {
        v3 = result;
        v2(result + 1, result + 1, 2);
        result = v3;
      }
    }

    *result = 0;
  }

  return result;
}

void boost::detail::function::functor_manager<ctu::DispatchSlot<dispatch::block<void({block_pointer})(void)>>>::manage(uint64_t a1, _WORD *a2, unsigned int a3)
{
  if (a3 == 4)
  {
    goto LABEL_2;
  }

  if (a3 > 1)
  {
    if (a3 == 3)
    {
      v9 = (*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL);
      if (v9 == (0x800000029722341ALL & 0x7FFFFFFFFFFFFFFFLL) || !strcmp(v9, (0x800000029722341ALL & 0x7FFFFFFFFFFFFFFFLL)))
      {
        *a2 = a1;
      }

      else
      {
        *a2 = 0;
      }
    }

    else
    {
      if (a3 != 2)
      {
LABEL_2:
        a2[4] = 0;
        return;
      }

      dispatch_release(*a2);
      v8 = *(a2 + 1);
      if (v8)
      {
LABEL_9:
        _Block_release(v8);
      }
    }
  }

  else
  {
    v6 = *a1;
    v7 = *(a1 + 8);
    *a2 = *a1;
    if (v7)
    {
      v7 = _Block_copy(v7);
      v6 = *a2;
    }

    *(a2 + 1) = v7;
    dispatch_retain(v6);
    if (a3 == 1)
    {
      dispatch_release(*a1);
      v8 = *(a1 + 8);
      if (v8)
      {
        goto LABEL_9;
      }
    }
  }
}

void boost::detail::function::void_function_obj_invoker0<ctu::DispatchSlot<dispatch::block<void({block_pointer})(void)>>,void>::invoke(uint64_t a1)
{
  v2 = *a1;
  v1 = *(a1 + 8);
  if (!v1)
  {
    v4 = 0;
    goto LABEL_10;
  }

  v3 = _Block_copy(v1);
  v4 = v3;
  if (!v3)
  {
LABEL_10:
    v16 = 1;
LABEL_11:
    v15 = 0;
    v19[0] = 0;
    goto LABEL_21;
  }

  v5 = _Block_copy(v3);
  v6 = v5;
  if (!v5)
  {
    v16 = 0;
    goto LABEL_11;
  }

  v7 = _Block_copy(v5);
  v8 = v7;
  if (v7)
  {
    v9 = _Block_copy(v7);
    v10 = v9;
    if (v9)
    {
      v11 = _Block_copy(v9);
      v12 = v11;
      if (v11)
      {
        v13 = _Block_copy(v11);
        v14 = v13;
        if (v13)
        {
          v15 = _Block_copy(v13);
          v19[0] = v15;
          _Block_release(v14);
        }

        else
        {
          v15 = 0;
          v19[0] = 0;
        }

        _Block_release(v12);
      }

      else
      {
        v15 = 0;
        v19[0] = 0;
      }

      _Block_release(v10);
    }

    else
    {
      v15 = 0;
      v19[0] = 0;
    }

    _Block_release(v8);
  }

  else
  {
    v15 = 0;
    v19[0] = 0;
  }

  _Block_release(v6);
  v16 = 0;
LABEL_21:
  v17 = operator new(0x20uLL);
  *v17 = boost::function0<void>::assign_to<dispatch::block<void({block_pointer})(void)>>(dispatch::block<void({block_pointer})(void)>)::stored_vtable;
  if (v15)
  {
    v18 = _Block_copy(v15);
  }

  else
  {
    v18 = 0;
  }

  v17[1] = v18;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___Z13execute_blockP16dispatch_queue_sRKN5boost8functionIFvvEEE_block_invoke;
  block[3] = &__block_descriptor_tmp_365;
  block[4] = v17;
  dispatch_async(v2, block);
  if (boost::function0<void>::assign_to<dispatch::block<void({block_pointer})(void)>>(dispatch::block<void({block_pointer})(void)>)::stored_vtable && (boost::function0<void>::assign_to<dispatch::block<void({block_pointer})(void)>>(dispatch::block<void({block_pointer})(void)>)::stored_vtable & 1) == 0 && boost::function0<void>::assign_to<dispatch::block<void({block_pointer})(void)>>(dispatch::block<void({block_pointer})(void)>)::stored_vtable[0])
  {
    (boost::function0<void>::assign_to<dispatch::block<void({block_pointer})(void)>>(dispatch::block<void({block_pointer})(void)>)::stored_vtable[0])(v19, v19, 2);
  }

  if ((v16 & 1) == 0)
  {
    _Block_release(v4);
  }
}

void sub_297052E28(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  boost::function<void ()(void)>::~function(va);
  if ((v3 & 1) == 0)
  {
    _Block_release(v2);
  }

  _Unwind_Resume(a1);
}

void ___Z13execute_blockP16dispatch_queue_sRKN5boost8functionIFvvEEE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!*v1)
  {
    std::runtime_error::runtime_error(&v7, "call to empty boost::function");
    v7.__vftable = &unk_2A1E24E88;
    boost::throw_exception<boost::bad_function_call>(&v7);
  }

  (*((*v1 & 0xFFFFFFFFFFFFFFFELL) + 8))(v1 + 1);
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *v3;
    if (*v3)
    {
      if ((v4 & 1) == 0)
      {
        v5 = *v4;
        if (v5)
        {
          v6 = *(a1 + 32);
          v5(v3 + 1, v6 + 1, 2);
          v3 = v6;
        }
      }

      *v3 = 0;
    }

    operator delete(v3);
  }
}

void boost::throw_exception<boost::bad_function_call>(const std::runtime_error *a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  boost::wrapexcept<boost::bad_function_call>::wrapexcept(exception, a1);
}

uint64_t boost::wrapexcept<boost::bad_function_call>::wrapexcept(uint64_t a1, const std::runtime_error *a2)
{
  *a1 = &unk_2A1E24E58;
  std::runtime_error::runtime_error((a1 + 8), a2);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = -1;
  *a1 = &unk_2A1E24DE0;
  *(a1 + 8) = &unk_2A1E24E10;
  *(a1 + 24) = &unk_2A1E24E38;
  return a1;
}

uint64_t boost::wrapexcept<boost::bad_function_call>::~wrapexcept(uint64_t a1)
{
  *(a1 + 24) = &unk_2A1E24EB0;
  v2 = *(a1 + 32);
  if (v2 && (*(*v2 + 32))(v2))
  {
    *(a1 + 32) = 0;
  }

  std::runtime_error::~runtime_error((a1 + 8));
  return a1;
}

char *boost::wrapexcept<boost::bad_function_call>::clone(uint64_t a1)
{
  v2 = operator new(0x40uLL);
  *v2 = &unk_2A1E24E58;
  std::runtime_error::runtime_error((v2 + 8), (a1 + 8));
  *(v2 + 1) = &unk_2A1E24E88;
  v3 = *(a1 + 32);
  *(v2 + 3) = &unk_2A1E24EB0;
  *(v2 + 4) = v3;
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  *(v2 + 40) = *(a1 + 40);
  *(v2 + 14) = *(a1 + 56);
  *v2 = &unk_2A1E24DE0;
  *(v2 + 1) = &unk_2A1E24E10;
  *(v2 + 3) = &unk_2A1E24E38;
  boost::exception_detail::copy_boost_exception((v2 + 24), a1 + 24);
  return v2;
}

void sub_297053208(_Unwind_Exception *a1)
{
  std::runtime_error::~runtime_error(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void boost::wrapexcept<boost::bad_function_call>::rethrow(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  boost::wrapexcept<boost::bad_function_call>::wrapexcept(exception, a1);
}

void boost::wrapexcept<boost::bad_function_call>::~wrapexcept(uint64_t a1)
{
  *(a1 + 24) = &unk_2A1E24EB0;
  v2 = *(a1 + 32);
  if (v2 && (*(*v2 + 32))(v2))
  {
    *(a1 + 32) = 0;
  }

  std::runtime_error::~runtime_error((a1 + 8));

  operator delete(a1);
}

void non-virtual thunk toboost::wrapexcept<boost::bad_function_call>::~wrapexcept(std::runtime_error *a1)
{
  a1[1].__vftable = &unk_2A1E24EB0;
  imp = a1[1].__imp_.__imp_;
  if (imp)
  {
    v2 = a1;
    v3 = (*(*imp + 32))(a1[1].__imp_.__imp_);
    a1 = v2;
    if (v3)
    {
      v2[1].__imp_.__imp_ = 0;
    }
  }

  std::runtime_error::~runtime_error(a1);
}

{
  a1[1].__vftable = &unk_2A1E24EB0;
  imp = a1[1].__imp_.__imp_;
  if (imp)
  {
    v2 = a1;
    v3 = (*(*imp + 32))(a1[1].__imp_.__imp_);
    a1 = v2;
    if (v3)
    {
      v2[1].__imp_.__imp_ = 0;
    }
  }

  p_imp = &a1[-1].__imp_;
  std::runtime_error::~runtime_error(a1);

  operator delete(p_imp);
}

{
  a1->__vftable = &unk_2A1E24EB0;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::runtime_error::~runtime_error(a1 - 1);
}

{
  a1->__vftable = &unk_2A1E24EB0;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::runtime_error::~runtime_error(a1 - 1);

  operator delete(&a1[-2].__imp_);
}

void boost::bad_function_call::~bad_function_call(std::runtime_error *this)
{
  std::runtime_error::~runtime_error(this);

  operator delete(v1);
}

void *boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(void *a1)
{
  v1 = a1;
  v2 = *a1;
  if (v2)
  {
    v3 = v1;
    v4 = (*(*v2 + 32))(v2);
    v1 = v3;
    if (v4)
    {
      *v3 = 0;
    }
  }

  return v1;
}

uint64_t boost::wrapexcept<boost::bad_function_call>::wrapexcept(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2A1E24E58;
  std::runtime_error::runtime_error((a1 + 8), (a2 + 8));
  *(a1 + 8) = &unk_2A1E24E88;
  v4 = *(a2 + 32);
  *(a1 + 24) = &unk_2A1E24EB0;
  *(a1 + 32) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v5;
  *a1 = &unk_2A1E24DE0;
  *(a1 + 8) = &unk_2A1E24E10;
  *(a1 + 24) = &unk_2A1E24E38;
  return a1;
}

uint64_t boost::exception_detail::copy_boost_exception(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  v4 = *(a2 + 8);
  if (!v4)
  {
    v5 = 0;
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 16) = *(a2 + 16);
    result = *(a1 + 8);
    if (!result)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  (*(*v4 + 40))(&v7);
  v5 = v7;
  v8 = v7;
  if (v7)
  {
    (*(*v7 + 24))(v7);
    if (v7)
    {
      (*(*v7 + 32))(v7);
    }
  }

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  result = *(a1 + 8);
  if (result)
  {
LABEL_8:
    result = (*(*result + 32))(result);
  }

LABEL_9:
  *(a1 + 8) = v5;
  if (v5)
  {
    (*(*v5 + 24))(v5);
    return (*(*v5 + 32))(v5);
  }

  return result;
}

void sub_2970538E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a9);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a10);
  _Unwind_Resume(a1);
}

void sub_297053908(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(va);
  _Unwind_Resume(a1);
}

void sub_29705391C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(va);
  _Unwind_Resume(a1);
}

void boost::detail::function::functor_manager<dispatch::block<void({block_pointer})(void)>>::manage(void **a1, _WORD *a2, unsigned int a3)
{
  if (a3 == 4)
  {
    goto LABEL_2;
  }

  if (a3 > 1)
  {
    if (a3 == 3)
    {
      v8 = (*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL);
      if (v8 == (0x80000002972234DCLL & 0x7FFFFFFFFFFFFFFFLL) || !strcmp(v8, (0x80000002972234DCLL & 0x7FFFFFFFFFFFFFFFLL)))
      {
        *a2 = a1;
      }

      else
      {
        *a2 = 0;
      }
    }

    else
    {
      if (a3 != 2)
      {
LABEL_2:
        a2[4] = 0;
        return;
      }

      v7 = *a2;
      if (*a2)
      {
LABEL_9:
        _Block_release(v7);
      }
    }
  }

  else
  {
    v6 = *a1;
    if (*a1)
    {
      v6 = _Block_copy(v6);
    }

    *a2 = v6;
    if (a3 == 1)
    {
      v7 = *a1;
      if (*a1)
      {
        goto LABEL_9;
      }
    }
  }
}

uint64_t boost::function0<void>::move_assign(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v2 = *a2;
    if (*a2)
    {
      *result = v2;
      if (v2)
      {
        v7 = *(a2 + 8);
        *(result + 24) = *(a2 + 24);
        *(result + 8) = v7;
      }

      else
      {
        v3 = a2;
        result = (*v2)(a2 + 8, result + 8, 1);
        a2 = v3;
      }
    }

    else
    {
      v4 = *result;
      if (!*result)
      {
        return result;
      }

      if ((v4 & 1) != 0 || (v5 = *v4) == 0)
      {
        a2 = result;
      }

      else
      {
        v6 = result;
        result = v5(result + 8, result + 8, 2);
        a2 = v6;
      }
    }

    *a2 = 0;
  }

  return result;
}

void sub_297053AE8(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_rethrow();
}

void (***boost::function0<void>::~function0(void (***result)(void, void, void)))(void, void, void)
{
  v1 = *result;
  if (*result)
  {
    if ((v1 & 1) == 0)
    {
      v2 = *v1;
      if (v2)
      {
        v3 = result;
        v2(result + 1, result + 1, 2);
        result = v3;
      }
    }

    *result = 0;
  }

  return result;
}

char *std::vector<boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>>::__emplace_back_slow_path<boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>>(char **a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<std::shared_ptr<Service>>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (v6 > 0xAAAAAAAAAAAAAAALL)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v7 = operator new(24 * v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = &v7[24 * v2];
  v9 = &v7[24 * v6];
  v10 = *a2 ^ (*a2 >> 31);
  v12 = (a2 + 8);
  v11 = *(a2 + 8);
  if (v10 == 2)
  {
    *(v8 + 1) = (*(*v11 + 32))(v11);
    v19 = *a2 ^ (*a2 >> 31);
    v14 = *a1;
    v15 = a1[1];
    v16 = (v15 - *a1);
    *v8 = v19;
    v17 = v8 + 24;
    v18 = v15 - v14;
    if (v15 == v14)
    {
      goto LABEL_26;
    }
  }

  else if (v10 == 1)
  {
    v13 = *(a2 + 16);
    *(v8 + 1) = v11;
    *(v8 + 2) = v13;
    *v12 = 0;
    *(a2 + 16) = 0;
    v14 = *a1;
    v15 = a1[1];
    v16 = (v15 - *a1);
    *v8 = 1;
    v17 = v8 + 24;
    v18 = v15 - v14;
    if (v15 == v14)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v20 = *(a2 + 16);
    *(v8 + 1) = v11;
    *(v8 + 2) = v20;
    *v12 = 0;
    *(a2 + 16) = 0;
    v14 = *a1;
    v15 = a1[1];
    v16 = (v15 - *a1);
    *v8 = 0;
    v17 = v8 + 24;
    v18 = v15 - v14;
    if (v15 == v14)
    {
      goto LABEL_26;
    }
  }

  v28 = v16;
  v29 = &v7[24 * v6];
  v21 = 0;
  v22 = &v7[24 * v2 - 8 * (v18 >> 3)];
  do
  {
    v23 = &v14[v21];
    v24 = &v22[v21];
    v25 = *&v14[v21 + 8];
    if ((*&v14[v21] ^ (*&v14[v21] >> 31)) == 2)
    {
      *(v24 + 1) = (*(*v25 + 32))(v25);
    }

    else
    {
      *(v24 + 1) = v25;
      v26 = *&v14[v21 + 16];
      *&v22[v21 + 16] = v26;
      if (v26)
      {
        atomic_fetch_add_explicit((v26 + 12), 1u, memory_order_relaxed);
      }
    }

    *&v22[v21] = *v23 ^ (*v23 >> 31);
    v21 += 24;
  }

  while (v23 + 6 != v15);
  do
  {
    boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>::destroy_content(v14);
    v14 += 24;
  }

  while (v14 != v15);
  v14 = *a1;
  v16 = v28;
  v9 = v29;
LABEL_26:
  *a1 = (v8 - v16);
  a1[1] = v17;
  a1[2] = v9;
  if (v14)
  {
    operator delete(v14);
  }

  return v17;
}

void sub_297053E04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::__split_buffer<boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void sub_297053E18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  if (v6)
  {
    v8 = a4 + v6 + a2 + a3 - 24;
    v9 = -v6;
    do
    {
      boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>::destroy_content(v8);
      v8 -= 24;
      v9 += 24;
    }

    while (v9);
  }

  std::__split_buffer<boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 24;
    boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>::destroy_content(i - 24);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t boost::signals2::detail::foreign_weak_ptr_impl<std::weak_ptr<coex::Module::State>>::~foreign_weak_ptr_impl(uint64_t result)
{
  *result = &unk_2A1E24EF0;
  if (*(result + 16))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 16));
    return v1;
  }

  return result;
}

void boost::signals2::detail::foreign_weak_ptr_impl<std::weak_ptr<coex::Module::State>>::~foreign_weak_ptr_impl(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E24EF0;
  if (a1[2])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[2]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

void *boost::signals2::detail::foreign_weak_ptr_impl<std::weak_ptr<coex::Module::State>>::clone(uint64_t a1)
{
  result = operator new(0x18uLL);
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  *result = &unk_2A1E24EF0;
  result[1] = v4;
  result[2] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void *boost::signals2::detail::foreign_shared_ptr_impl<std::shared_ptr<coex::Module::State>>::~foreign_shared_ptr_impl(void *result)
{
  *result = &unk_2A1E24F50;
  v1 = result[2];
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

void **boost::signals2::slot<void ()(void),boost::function<void ()(void)>>::~slot(void **a1)
{
  v2 = a1[3];
  if (v2)
  {
    if ((v2 & 1) == 0)
    {
      v3 = *v2;
      if (v3)
      {
        v3(a1 + 4, a1 + 4, 2);
      }
    }

    a1[3] = 0;
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = a1[1];
    v6 = *a1;
    if (v5 != v4)
    {
      do
      {
        v5 -= 24;
        boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>::destroy_content(v5);
      }

      while (v5 != v4);
      v6 = *a1;
    }

    a1[1] = v4;
    operator delete(v6);
  }

  return a1;
}

uint64_t ctu::DispatchSlot<dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>>::~DispatchSlot(uint64_t a1)
{
  dispatch_release(*a1);
  v2 = *(a1 + 8);
  if (v2)
  {
    _Block_release(v2);
  }

  return a1;
}

void boost::checked_delete<boost::signals2::detail::signal_impl<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>,boost::function<void ()(boost::signals2::connection const&,ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>,boost::signals2::mutex>::invocation_state>(void *a1)
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

void boost::detail::sp_counted_impl_p<boost::signals2::detail::signal_impl<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>,boost::function<void ()(boost::signals2::connection const&,ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>,boost::signals2::mutex>::invocation_state>::dispose(uint64_t a1)
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

void std::__list_imp<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>>,boost::signals2::mutex>>>::clear(uint64_t *a1)
{
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
        if (v6 && atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v6 + 16))(v6);
          if (atomic_fetch_add(v6 + 3, 0xFFFFFFFF) == 1)
          {
            (*(*v6 + 24))(v6);
          }
        }

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

uint64_t *std::list<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>>,boost::signals2::mutex>>>::~list(uint64_t *a1)
{
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

void boost::checked_delete<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>>,boost::signals2::mutex>>>>(uint64_t *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>>>::destroy(a1[4]);
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

void boost::detail::sp_counted_impl_p<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>>,boost::signals2::mutex>>>>::dispose(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>>>::destroy(v1[4]);
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

void boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>>,boost::signals2::mutex>::~connection_body(void *a1)
{
  v1 = boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>>,boost::signals2::mutex>::~connection_body(a1);

  operator delete(v1);
}

uint64_t boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>>,boost::signals2::mutex>::connected(uint64_t a1)
{
  v20[3] = *MEMORY[0x29EDCA608];
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v15[8] = v2;
  v15[9] = v2;
  v15[6] = v2;
  v15[7] = v2;
  v15[4] = v2;
  v15[5] = v2;
  v15[2] = v2;
  v15[3] = v2;
  v15[0] = v2;
  v15[1] = v2;
  v3 = *(a1 + 48);
  v16 = 10;
  v17 = v15;
  v18 = 0;
  v19 = v3;
  pthread_mutex_lock(v3);
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *v4;
    if (*v4 != v4[1])
    {
      while (1)
      {
        memset(v20, 170, 24);
        boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>::apply_visitor<boost::signals2::detail::lock_weak_ptr_visitor const>(v5, v20);
        if ((*v5 ^ (*v5 >> 31)) == 2)
        {
          if (!(*(**(v5 + 8) + 24))(*(v5 + 8)))
          {
            goto LABEL_6;
          }
        }

        else
        {
          v6 = *(v5 + 16);
          if (v6 && atomic_load_explicit((v6 + 8), memory_order_acquire))
          {
LABEL_6:
            v7 = 0;
            if (LODWORD(v20[0]) == SLODWORD(v20[0]) >> 31)
            {
              goto LABEL_13;
            }

            goto LABEL_7;
          }
        }

        if (*(a1 + 24) == 1)
        {
          *(a1 + 24) = 0;
          boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::mutex>(a1, v15);
        }

        v7 = 1;
        if (LODWORD(v20[0]) == SLODWORD(v20[0]) >> 31)
        {
LABEL_13:
          v8 = v20[2];
          if (v20[2])
          {
            if (atomic_fetch_add((v20[2] + 8), 0xFFFFFFFF) == 1)
            {
              (*(*v8 + 16))(v8);
              if (atomic_fetch_add(v8 + 3, 0xFFFFFFFF) == 1)
              {
                (*(*v8 + 24))(v8);
              }
            }
          }

          goto LABEL_17;
        }

LABEL_7:
        if (v20[1])
        {
          (*(*v20[1] + 8))(v20[1]);
        }

LABEL_17:
        if ((v7 & 1) == 0)
        {
          v5 += 24;
          if (v5 != *(*(a1 + 32) + 8))
          {
            continue;
          }
        }

        break;
      }
    }
  }

  v9 = *(a1 + 24);
  pthread_mutex_unlock(v19);
  v10 = v17;
  if (v17)
  {
    if (v18 > 0)
    {
      v13 = &v17[16 * v18];
      do
      {
        v14 = *(v13 - 1);
        if (v14)
        {
          if (atomic_fetch_add(v14 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v14 + 16))(v14);
            if (atomic_fetch_add(v14 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v14 + 24))(v14);
            }
          }
        }

        v13 -= 16;
      }

      while (v13 > v10);
    }

    if (v16 >= 0xB)
    {
      operator delete(v17);
    }
  }

  v11 = *MEMORY[0x29EDCA608];
  return v9;
}

void sub_297054B74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>>,boost::signals2::mutex>::release_slot@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v3 = *(result + 40);
  v2 = (result + 32);
  *a2 = *(result + 32);
  a2[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1u, memory_order_relaxed);
    v4 = *(result + 40);
    *v2 = 0;
    *(result + 40) = 0;
    if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
    {
      result = (*(*v4 + 16))(v4);
      if (atomic_fetch_add(v4 + 3, 0xFFFFFFFF) == 1)
      {
        return (*(*v4 + 24))(v4);
      }
    }
  }

  else
  {
    *v2 = 0;
    *(result + 40) = 0;
  }

  return result;
}

void boost::checked_delete<boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>>>(void **__p)
{
  if (__p)
  {
    v2 = __p[3];
    if (v2)
    {
      if ((v2 & 1) == 0)
      {
        v3 = *v2;
        if (v3)
        {
          v3(__p + 4, __p + 4, 2);
        }
      }

      __p[3] = 0;
    }

    v4 = *__p;
    if (*__p)
    {
      v5 = __p[1];
      v6 = *__p;
      if (v5 != v4)
      {
        do
        {
          v5 -= 24;
          boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>::destroy_content(v5);
        }

        while (v5 != v4);
        v6 = *__p;
      }

      __p[1] = v4;
      operator delete(v6);
    }

    operator delete(__p);
  }
}

void boost::detail::sp_counted_impl_p<boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>>>::dispose(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = v1[3];
    if (v2)
    {
      if ((v2 & 1) == 0)
      {
        v3 = *v2;
        if (v3)
        {
          v3(v1 + 4, v1 + 4, 2);
        }
      }

      v1[3] = 0;
    }

    v4 = *v1;
    if (*v1)
    {
      v5 = v1[1];
      v6 = *v1;
      if (v5 != v4)
      {
        do
        {
          v5 -= 24;
          boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>::destroy_content(v5);
        }

        while (v5 != v4);
        v6 = *v1;
      }

      v1[1] = v4;
      operator delete(v6);
    }

    operator delete(v1);
  }
}

void *boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>>,boost::signals2::mutex>::~connection_body(void *a1)
{
  *a1 = &unk_2A1E25060;
  v2 = a1[7];
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

  v3 = a1[5];
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

  *a1 = &unk_2A1E24C40;
  v4 = a1[2];
  if (v4 && atomic_fetch_add(v4 + 3, 0xFFFFFFFF) == 1)
  {
    (*(*v4 + 24))(v4);
  }

  return a1;
}

uint64_t boost::detail::sp_counted_impl_p<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>>,boost::signals2::mutex>>::dispose(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>>,boost::signals2::mutex>>::~shared_ptr(uint64_t result)
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

void (***boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>::~function(void (***result)(void, void, void)))(void, void, void)
{
  v1 = *result;
  if (*result)
  {
    if ((v1 & 1) == 0)
    {
      v2 = *v1;
      if (v2)
      {
        v3 = result;
        v2(result + 1, result + 1, 2);
        result = v3;
      }
    }

    *result = 0;
  }

  return result;
}

void boost::detail::function::functor_manager<ctu::DispatchSlot<dispatch::block<void({block_pointer})(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>>>::manage(uint64_t a1, _WORD *a2, unsigned int a3)
{
  if (a3 == 4)
  {
    goto LABEL_2;
  }

  if (a3 > 1)
  {
    if (a3 == 3)
    {
      v9 = (*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL);
      if (v9 == (0x8000000297223A6ALL & 0x7FFFFFFFFFFFFFFFLL) || !strcmp(v9, (0x8000000297223A6ALL & 0x7FFFFFFFFFFFFFFFLL)))
      {
        *a2 = a1;
      }

      else
      {
        *a2 = 0;
      }
    }

    else
    {
      if (a3 != 2)
      {
LABEL_2:
        a2[4] = 0;
        return;
      }

      dispatch_release(*a2);
      v8 = *(a2 + 1);
      if (v8)
      {
LABEL_9:
        _Block_release(v8);
      }
    }
  }

  else
  {
    v6 = *a1;
    v7 = *(a1 + 8);
    *a2 = *a1;
    if (v7)
    {
      v7 = _Block_copy(v7);
      v6 = *a2;
    }

    *(a2 + 1) = v7;
    dispatch_retain(v6);
    if (a3 == 1)
    {
      dispatch_release(*a1);
      v8 = *(a1 + 8);
      if (v8)
      {
        goto LABEL_9;
      }
    }
  }
}

uint64_t boost::function2<void,ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId>::move_assign(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v2 = *a2;
    if (*a2)
    {
      *result = v2;
      if (v2)
      {
        v7 = *(a2 + 8);
        *(result + 24) = *(a2 + 24);
        *(result + 8) = v7;
      }

      else
      {
        v3 = a2;
        result = (*v2)(a2 + 8, result + 8, 1);
        a2 = v3;
      }
    }

    else
    {
      v4 = *result;
      if (!*result)
      {
        return result;
      }

      if ((v4 & 1) != 0 || (v5 = *v4) == 0)
      {
        a2 = result;
      }

      else
      {
        v6 = result;
        result = v5(result + 8, result + 8, 2);
        a2 = v6;
      }
    }

    *a2 = 0;
  }

  return result;
}

void sub_2970552E0(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_rethrow();
}

void (***boost::function2<void,ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId>::~function2(void (***result)(void, void, void)))(void, void, void)
{
  v1 = *result;
  if (*result)
  {
    if ((v1 & 1) == 0)
    {
      v2 = *v1;
      if (v2)
      {
        v3 = result;
        v2(result + 1, result + 1, 2);
        result = v3;
      }
    }

    *result = 0;
  }

  return result;
}

void **boost::signals2::slot<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId),boost::function<void ()(ctu::cf::CFSharedRef<__CFDictionary const>,coex::SubId)>>::~slot(void **a1)
{
  v2 = a1[3];
  if (v2)
  {
    if ((v2 & 1) == 0)
    {
      v3 = *v2;
      if (v3)
      {
        v3(a1 + 4, a1 + 4, 2);
      }
    }

    a1[3] = 0;
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = a1[1];
    v6 = *a1;
    if (v5 != v4)
    {
      do
      {
        v5 -= 24;
        boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>::destroy_content(v5);
      }

      while (v5 != v4);
      v6 = *a1;
    }

    a1[1] = v4;
    operator delete(v6);
  }

  return a1;
}

uint64_t ___ZN3ctu20SharedSynchronizableIN4coex6Module5StateEE13connect_eventIN5boost8signals26signalIFvNS1_5SubIdEENS7_19optional_last_valueIvEEiNSt3__14lessIiEENS6_8functionISA_EENSG_IFvRKNS7_10connectionES9_EEENS7_5mutexEEES3_vJS9_EEEDTcl7connectfp_cvNSD_10shared_ptrIS3_EE_EcvP16dispatch_queue_s_EcvPFT1_DpT2_ELi0EEERT_MT0_FST_SV_E_block_invoke(void *a1)
{
  v1 = a1[5];
  v2 = a1[6];
  v3 = (a1[4] + (v2 >> 1));
  if (v2)
  {
    return (*(*v3 + v1))();
  }

  else
  {
    return v1(v3);
  }
}

uint64_t ctu::DispatchSlot<dispatch::block<void({block_pointer})(coex::SubId)>>::~DispatchSlot(uint64_t a1)
{
  dispatch_release(*a1);
  v2 = *(a1 + 8);
  if (v2)
  {
    _Block_release(v2);
  }

  return a1;
}

void boost::checked_delete<boost::signals2::detail::signal_impl<void ()(coex::SubId),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(coex::SubId)>,boost::function<void ()(boost::signals2::connection const&,coex::SubId)>,boost::signals2::mutex>::invocation_state>(void *a1)
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

void boost::detail::sp_counted_impl_p<boost::signals2::detail::signal_impl<void ()(coex::SubId),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(coex::SubId)>,boost::function<void ()(boost::signals2::connection const&,coex::SubId)>,boost::signals2::mutex>::invocation_state>::dispose(uint64_t a1)
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

void std::__list_imp<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coex::SubId),boost::function<void ()(coex::SubId)>>,boost::signals2::mutex>>>::clear(uint64_t *a1)
{
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
        if (v6 && atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v6 + 16))(v6);
          if (atomic_fetch_add(v6 + 3, 0xFFFFFFFF) == 1)
          {
            (*(*v6 + 24))(v6);
          }
        }

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

uint64_t *std::list<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coex::SubId),boost::function<void ()(coex::SubId)>>,boost::signals2::mutex>>>::~list(uint64_t *a1)
{
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

void boost::checked_delete<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coex::SubId),boost::function<void ()(coex::SubId)>>,boost::signals2::mutex>>>>(uint64_t *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>>>::destroy(a1[4]);
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

void boost::detail::sp_counted_impl_p<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coex::SubId),boost::function<void ()(coex::SubId)>>,boost::signals2::mutex>>>>::dispose(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>>>::destroy(v1[4]);
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

void boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coex::SubId),boost::function<void ()(coex::SubId)>>,boost::signals2::mutex>::~connection_body(void *a1)
{
  v1 = boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coex::SubId),boost::function<void ()(coex::SubId)>>,boost::signals2::mutex>::~connection_body(a1);

  operator delete(v1);
}

uint64_t boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coex::SubId),boost::function<void ()(coex::SubId)>>,boost::signals2::mutex>::connected(uint64_t a1)
{
  v20[3] = *MEMORY[0x29EDCA608];
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v15[8] = v2;
  v15[9] = v2;
  v15[6] = v2;
  v15[7] = v2;
  v15[4] = v2;
  v15[5] = v2;
  v15[2] = v2;
  v15[3] = v2;
  v15[0] = v2;
  v15[1] = v2;
  v3 = *(a1 + 48);
  v16 = 10;
  v17 = v15;
  v18 = 0;
  v19 = v3;
  pthread_mutex_lock(v3);
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *v4;
    if (*v4 != v4[1])
    {
      while (1)
      {
        memset(v20, 170, 24);
        boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>::apply_visitor<boost::signals2::detail::lock_weak_ptr_visitor const>(v5, v20);
        if ((*v5 ^ (*v5 >> 31)) == 2)
        {
          if (!(*(**(v5 + 8) + 24))(*(v5 + 8)))
          {
            goto LABEL_6;
          }
        }

        else
        {
          v6 = *(v5 + 16);
          if (v6 && atomic_load_explicit((v6 + 8), memory_order_acquire))
          {
LABEL_6:
            v7 = 0;
            if (LODWORD(v20[0]) == SLODWORD(v20[0]) >> 31)
            {
              goto LABEL_13;
            }

            goto LABEL_7;
          }
        }

        if (*(a1 + 24) == 1)
        {
          *(a1 + 24) = 0;
          boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::mutex>(a1, v15);
        }

        v7 = 1;
        if (LODWORD(v20[0]) == SLODWORD(v20[0]) >> 31)
        {
LABEL_13:
          v8 = v20[2];
          if (v20[2])
          {
            if (atomic_fetch_add((v20[2] + 8), 0xFFFFFFFF) == 1)
            {
              (*(*v8 + 16))(v8);
              if (atomic_fetch_add(v8 + 3, 0xFFFFFFFF) == 1)
              {
                (*(*v8 + 24))(v8);
              }
            }
          }

          goto LABEL_17;
        }

LABEL_7:
        if (v20[1])
        {
          (*(*v20[1] + 8))(v20[1]);
        }

LABEL_17:
        if ((v7 & 1) == 0)
        {
          v5 += 24;
          if (v5 != *(*(a1 + 32) + 8))
          {
            continue;
          }
        }

        break;
      }
    }
  }

  v9 = *(a1 + 24);
  pthread_mutex_unlock(v19);
  v10 = v17;
  if (v17)
  {
    if (v18 > 0)
    {
      v13 = &v17[16 * v18];
      do
      {
        v14 = *(v13 - 1);
        if (v14)
        {
          if (atomic_fetch_add(v14 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v14 + 16))(v14);
            if (atomic_fetch_add(v14 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v14 + 24))(v14);
            }
          }
        }

        v13 -= 16;
      }

      while (v13 > v10);
    }

    if (v16 >= 0xB)
    {
      operator delete(v17);
    }
  }

  v11 = *MEMORY[0x29EDCA608];
  return v9;
}

void sub_297055E98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coex::SubId),boost::function<void ()(coex::SubId)>>,boost::signals2::mutex>::release_slot@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v3 = *(result + 40);
  v2 = (result + 32);
  *a2 = *(result + 32);
  a2[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1u, memory_order_relaxed);
    v4 = *(result + 40);
    *v2 = 0;
    *(result + 40) = 0;
    if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
    {
      result = (*(*v4 + 16))(v4);
      if (atomic_fetch_add(v4 + 3, 0xFFFFFFFF) == 1)
      {
        return (*(*v4 + 24))(v4);
      }
    }
  }

  else
  {
    *v2 = 0;
    *(result + 40) = 0;
  }

  return result;
}

void boost::checked_delete<boost::signals2::slot<void ()(coex::SubId),boost::function<void ()(coex::SubId)>>>(void **__p)
{
  if (__p)
  {
    v2 = __p[3];
    if (v2)
    {
      if ((v2 & 1) == 0)
      {
        v3 = *v2;
        if (v3)
        {
          v3(__p + 4, __p + 4, 2);
        }
      }

      __p[3] = 0;
    }

    v4 = *__p;
    if (*__p)
    {
      v5 = __p[1];
      v6 = *__p;
      if (v5 != v4)
      {
        do
        {
          v5 -= 24;
          boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>::destroy_content(v5);
        }

        while (v5 != v4);
        v6 = *__p;
      }

      __p[1] = v4;
      operator delete(v6);
    }

    operator delete(__p);
  }
}

void boost::detail::sp_counted_impl_p<boost::signals2::slot<void ()(coex::SubId),boost::function<void ()(coex::SubId)>>>::dispose(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = v1[3];
    if (v2)
    {
      if ((v2 & 1) == 0)
      {
        v3 = *v2;
        if (v3)
        {
          v3(v1 + 4, v1 + 4, 2);
        }
      }

      v1[3] = 0;
    }

    v4 = *v1;
    if (*v1)
    {
      v5 = v1[1];
      v6 = *v1;
      if (v5 != v4)
      {
        do
        {
          v5 -= 24;
          boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>::destroy_content(v5);
        }

        while (v5 != v4);
        v6 = *v1;
      }

      v1[1] = v4;
      operator delete(v6);
    }

    operator delete(v1);
  }
}

void *boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coex::SubId),boost::function<void ()(coex::SubId)>>,boost::signals2::mutex>::~connection_body(void *a1)
{
  *a1 = &unk_2A1E25278;
  v2 = a1[7];
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

  v3 = a1[5];
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

  *a1 = &unk_2A1E24C40;
  v4 = a1[2];
  if (v4 && atomic_fetch_add(v4 + 3, 0xFFFFFFFF) == 1)
  {
    (*(*v4 + 24))(v4);
  }

  return a1;
}

uint64_t boost::detail::sp_counted_impl_p<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coex::SubId),boost::function<void ()(coex::SubId)>>,boost::signals2::mutex>>::dispose(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(coex::SubId),boost::function<void ()(coex::SubId)>>,boost::signals2::mutex>>::~shared_ptr(uint64_t result)
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

void (***boost::function<void ()(coex::SubId)>::~function(void (***result)(void, void, void)))(void, void, void)
{
  v1 = *result;
  if (*result)
  {
    if ((v1 & 1) == 0)
    {
      v2 = *v1;
      if (v2)
      {
        v3 = result;
        v2(result + 1, result + 1, 2);
        result = v3;
      }
    }

    *result = 0;
  }

  return result;
}

void boost::detail::function::functor_manager<ctu::DispatchSlot<dispatch::block<void({block_pointer})(coex::SubId)>>>::manage(uint64_t a1, _WORD *a2, unsigned int a3)
{
  if (a3 == 4)
  {
    goto LABEL_2;
  }

  if (a3 > 1)
  {
    if (a3 == 3)
    {
      v9 = (*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL);
      if (v9 == (0x8000000297223EABLL & 0x7FFFFFFFFFFFFFFFLL) || !strcmp(v9, (0x8000000297223EABLL & 0x7FFFFFFFFFFFFFFFLL)))
      {
        *a2 = a1;
      }

      else
      {
        *a2 = 0;
      }
    }

    else
    {
      if (a3 != 2)
      {
LABEL_2:
        a2[4] = 0;
        return;
      }

      dispatch_release(*a2);
      v8 = *(a2 + 1);
      if (v8)
      {
LABEL_9:
        _Block_release(v8);
      }
    }
  }

  else
  {
    v6 = *a1;
    v7 = *(a1 + 8);
    *a2 = *a1;
    if (v7)
    {
      v7 = _Block_copy(v7);
      v6 = *a2;
    }

    *(a2 + 1) = v7;
    dispatch_retain(v6);
    if (a3 == 1)
    {
      dispatch_release(*a1);
      v8 = *(a1 + 8);
      if (v8)
      {
        goto LABEL_9;
      }
    }
  }
}

void boost::detail::function::void_function_obj_invoker1<ctu::DispatchSlot<dispatch::block<void({block_pointer})(coex::SubId)>>,void,coex::SubId>::invoke(uint64_t a1, int a2)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  if (!v3)
  {
    v6 = 0;
    goto LABEL_10;
  }

  v5 = _Block_copy(v3);
  v6 = v5;
  if (!v5)
  {
LABEL_10:
    v18 = 1;
LABEL_11:
    v17 = 0;
    v22[0] = 0;
    goto LABEL_21;
  }

  v7 = _Block_copy(v5);
  v8 = v7;
  if (!v7)
  {
    v18 = 0;
    goto LABEL_11;
  }

  v9 = _Block_copy(v7);
  v10 = v9;
  if (v9)
  {
    v11 = _Block_copy(v9);
    v12 = v11;
    if (v11)
    {
      v13 = _Block_copy(v11);
      v14 = v13;
      if (v13)
      {
        v15 = _Block_copy(v13);
        v16 = v15;
        if (v15)
        {
          v17 = _Block_copy(v15);
          v22[0] = v17;
          _Block_release(v16);
        }

        else
        {
          v17 = 0;
          v22[0] = 0;
        }

        _Block_release(v14);
      }

      else
      {
        v17 = 0;
        v22[0] = 0;
      }

      _Block_release(v12);
    }

    else
    {
      v17 = 0;
      v22[0] = 0;
    }

    _Block_release(v10);
  }

  else
  {
    v17 = 0;
    v22[0] = 0;
  }

  _Block_release(v8);
  v18 = 0;
LABEL_21:
  v19 = operator new(4uLL);
  *v19 = a2;
  v20 = operator new(0x20uLL);
  *v20 = boost::function1<void,coex::SubId>::assign_to<dispatch::block<void({block_pointer})(coex::SubId)>>(dispatch::block<void({block_pointer})(coex::SubId)>)::stored_vtable;
  if (v17)
  {
    v21 = _Block_copy(v17);
  }

  else
  {
    v21 = 0;
  }

  v20[1] = v21;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___Z13execute_blockP16dispatch_queue_sRKN5boost8functionIFvN4coex5SubIdEEEES4__block_invoke;
  block[3] = &__block_descriptor_tmp_389;
  block[4] = v20;
  block[5] = v19;
  dispatch_async(v4, block);
  if (boost::function1<void,coex::SubId>::assign_to<dispatch::block<void({block_pointer})(coex::SubId)>>(dispatch::block<void({block_pointer})(coex::SubId)>)::stored_vtable && (boost::function1<void,coex::SubId>::assign_to<dispatch::block<void({block_pointer})(coex::SubId)>>(dispatch::block<void({block_pointer})(coex::SubId)>)::stored_vtable & 1) == 0 && boost::function1<void,coex::SubId>::assign_to<dispatch::block<void({block_pointer})(coex::SubId)>>(dispatch::block<void({block_pointer})(coex::SubId)>)::stored_vtable[0])
  {
    (boost::function1<void,coex::SubId>::assign_to<dispatch::block<void({block_pointer})(coex::SubId)>>(dispatch::block<void({block_pointer})(coex::SubId)>)::stored_vtable[0])(v22, v22, 2);
  }

  if ((v18 & 1) == 0)
  {
    _Block_release(v6);
  }
}

void sub_2970567A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void (**a9)(void, void, void))
{
  boost::function<void ()(coex::SubId)>::~function(&a9);
  if ((v10 & 1) == 0)
  {
    _Block_release(v9);
  }

  _Unwind_Resume(a1);
}

void ___Z13execute_blockP16dispatch_queue_sRKN5boost8functionIFvN4coex5SubIdEEEES4__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!*v1)
  {
    std::runtime_error::runtime_error(&v8, "call to empty boost::function");
    v8.__vftable = &unk_2A1E24E88;
    boost::throw_exception<boost::bad_function_call>(&v8);
  }

  (*((*v1 & 0xFFFFFFFFFFFFFFFELL) + 8))(v1 + 1, **(a1 + 40));
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *v3;
    if (*v3)
    {
      if ((v4 & 1) == 0)
      {
        v5 = *v4;
        if (v5)
        {
          v6 = *(a1 + 32);
          v5(v3 + 1, v6 + 1, 2);
          v3 = v6;
        }
      }

      *v3 = 0;
    }

    operator delete(v3);
  }

  v7 = *(a1 + 40);
  if (v7)
  {

    operator delete(v7);
  }
}

void boost::detail::function::functor_manager<dispatch::block<void({block_pointer})(coex::SubId)>>::manage(void **a1, _WORD *a2, unsigned int a3)
{
  if (a3 == 4)
  {
    goto LABEL_2;
  }

  if (a3 > 1)
  {
    if (a3 == 3)
    {
      v8 = (*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL);
      if (v8 == (0x8000000297223EF5 & 0x7FFFFFFFFFFFFFFFLL) || !strcmp(v8, (0x8000000297223EF5 & 0x7FFFFFFFFFFFFFFFLL)))
      {
        *a2 = a1;
      }

      else
      {
        *a2 = 0;
      }
    }

    else
    {
      if (a3 != 2)
      {
LABEL_2:
        a2[4] = 0;
        return;
      }

      v7 = *a2;
      if (*a2)
      {
LABEL_9:
        _Block_release(v7);
      }
    }
  }

  else
  {
    v6 = *a1;
    if (*a1)
    {
      v6 = _Block_copy(v6);
    }

    *a2 = v6;
    if (a3 == 1)
    {
      v7 = *a1;
      if (*a1)
      {
        goto LABEL_9;
      }
    }
  }
}

uint64_t boost::function1<void,coex::SubId>::move_assign(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v2 = *a2;
    if (*a2)
    {
      *result = v2;
      if (v2)
      {
        v7 = *(a2 + 8);
        *(result + 24) = *(a2 + 24);
        *(result + 8) = v7;
      }

      else
      {
        v3 = a2;
        result = (*v2)(a2 + 8, result + 8, 1);
        a2 = v3;
      }
    }

    else
    {
      v4 = *result;
      if (!*result)
      {
        return result;
      }

      if ((v4 & 1) != 0 || (v5 = *v4) == 0)
      {
        a2 = result;
      }

      else
      {
        v6 = result;
        result = v5(result + 8, result + 8, 2);
        a2 = v6;
      }
    }

    *a2 = 0;
  }

  return result;
}

void sub_297056A88(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_rethrow();
}

void (***boost::function1<void,coex::SubId>::~function1(void (***result)(void, void, void)))(void, void, void)
{
  v1 = *result;
  if (*result)
  {
    if ((v1 & 1) == 0)
    {
      v2 = *v1;
      if (v2)
      {
        v3 = result;
        v2(result + 1, result + 1, 2);
        result = v3;
      }
    }

    *result = 0;
  }

  return result;
}

void **boost::signals2::slot<void ()(coex::SubId),boost::function<void ()(coex::SubId)>>::~slot(void **a1)
{
  v2 = a1[3];
  if (v2)
  {
    if ((v2 & 1) == 0)
    {
      v3 = *v2;
      if (v3)
      {
        v3(a1 + 4, a1 + 4, 2);
      }
    }

    a1[3] = 0;
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = a1[1];
    v6 = *a1;
    if (v5 != v4)
    {
      do
      {
        v5 -= 24;
        boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>::destroy_content(v5);
      }

      while (v5 != v4);
      v6 = *a1;
    }

    a1[1] = v4;
    operator delete(v6);
  }

  return a1;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (*(result + 16) == 1)
    {
      if (v1[7])
      {
        v3 = v1[6];
        v4 = *(v1[5] + 8);
        v5 = *v3;
        *(v5 + 8) = v4;
        *v4 = v5;
        v1[7] = 0;
        if (v3 != v1 + 5)
        {
          do
          {
            v6 = v3[1];
            operator delete(v3);
            v3 = v6;
          }

          while (v6 != v1 + 5);
        }
      }
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

uint64_t ctu::DispatchSlot<dispatch::block<void({block_pointer})(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>>::~DispatchSlot(uint64_t a1)
{
  dispatch_release(*a1);
  v2 = *(a1 + 8);
  if (v2)
  {
    _Block_release(v2);
  }

  return a1;
}

void boost::checked_delete<boost::signals2::detail::signal_impl<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>,boost::function<void ()(boost::signals2::connection const&,std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>,boost::signals2::mutex>::invocation_state>(void *a1)
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

void boost::detail::sp_counted_impl_p<boost::signals2::detail::signal_impl<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>,boost::function<void ()(boost::signals2::connection const&,std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>,boost::signals2::mutex>::invocation_state>::dispose(uint64_t a1)
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

void std::__list_imp<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId),boost::function<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>>,boost::signals2::mutex>>>::clear(uint64_t *a1)
{
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
        if (v6 && atomic_fetch_add(v6 + 2, 0xFFFFFFFF) == 1)
        {
          (*(*v6 + 16))(v6);
          if (atomic_fetch_add(v6 + 3, 0xFFFFFFFF) == 1)
          {
            (*(*v6 + 24))(v6);
          }
        }

        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }
}

uint64_t *std::list<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId),boost::function<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>>,boost::signals2::mutex>>>::~list(uint64_t *a1)
{
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

void boost::checked_delete<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId),boost::function<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>>,boost::signals2::mutex>>>>(uint64_t *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>>>::destroy(a1[4]);
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

void boost::detail::sp_counted_impl_p<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId),boost::function<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>>,boost::signals2::mutex>>>>::dispose(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>>>::destroy(v1[4]);
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

void boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId),boost::function<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>>,boost::signals2::mutex>::~connection_body(void *a1)
{
  v1 = boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId),boost::function<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>>,boost::signals2::mutex>::~connection_body(a1);

  operator delete(v1);
}

uint64_t boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId),boost::function<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>>,boost::signals2::mutex>::connected(uint64_t a1)
{
  v20[3] = *MEMORY[0x29EDCA608];
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v15[8] = v2;
  v15[9] = v2;
  v15[6] = v2;
  v15[7] = v2;
  v15[4] = v2;
  v15[5] = v2;
  v15[2] = v2;
  v15[3] = v2;
  v15[0] = v2;
  v15[1] = v2;
  v3 = *(a1 + 48);
  v16 = 10;
  v17 = v15;
  v18 = 0;
  v19 = v3;
  pthread_mutex_lock(v3);
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *v4;
    if (*v4 != v4[1])
    {
      while (1)
      {
        memset(v20, 170, 24);
        boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>::apply_visitor<boost::signals2::detail::lock_weak_ptr_visitor const>(v5, v20);
        if ((*v5 ^ (*v5 >> 31)) == 2)
        {
          if (!(*(**(v5 + 8) + 24))(*(v5 + 8)))
          {
            goto LABEL_6;
          }
        }

        else
        {
          v6 = *(v5 + 16);
          if (v6 && atomic_load_explicit((v6 + 8), memory_order_acquire))
          {
LABEL_6:
            v7 = 0;
            if (LODWORD(v20[0]) == SLODWORD(v20[0]) >> 31)
            {
              goto LABEL_13;
            }

            goto LABEL_7;
          }
        }

        if (*(a1 + 24) == 1)
        {
          *(a1 + 24) = 0;
          boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::mutex>(a1, v15);
        }

        v7 = 1;
        if (LODWORD(v20[0]) == SLODWORD(v20[0]) >> 31)
        {
LABEL_13:
          v8 = v20[2];
          if (v20[2])
          {
            if (atomic_fetch_add((v20[2] + 8), 0xFFFFFFFF) == 1)
            {
              (*(*v8 + 16))(v8);
              if (atomic_fetch_add(v8 + 3, 0xFFFFFFFF) == 1)
              {
                (*(*v8 + 24))(v8);
              }
            }
          }

          goto LABEL_17;
        }

LABEL_7:
        if (v20[1])
        {
          (*(*v20[1] + 8))(v20[1]);
        }

LABEL_17:
        if ((v7 & 1) == 0)
        {
          v5 += 24;
          if (v5 != *(*(a1 + 32) + 8))
          {
            continue;
          }
        }

        break;
      }
    }
  }

  v9 = *(a1 + 24);
  pthread_mutex_unlock(v19);
  v10 = v17;
  if (v17)
  {
    if (v18 > 0)
    {
      v13 = &v17[16 * v18];
      do
      {
        v14 = *(v13 - 1);
        if (v14)
        {
          if (atomic_fetch_add(v14 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v14 + 16))(v14);
            if (atomic_fetch_add(v14 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v14 + 24))(v14);
            }
          }
        }

        v13 -= 16;
      }

      while (v13 > v10);
    }

    if (v16 >= 0xB)
    {
      operator delete(v17);
    }
  }

  v11 = *MEMORY[0x29EDCA608];
  return v9;
}

void sub_2970576A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId),boost::function<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>>,boost::signals2::mutex>::release_slot@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v3 = *(result + 40);
  v2 = (result + 32);
  *a2 = *(result + 32);
  a2[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1u, memory_order_relaxed);
    v4 = *(result + 40);
    *v2 = 0;
    *(result + 40) = 0;
    if (v4 && atomic_fetch_add(v4 + 2, 0xFFFFFFFF) == 1)
    {
      result = (*(*v4 + 16))(v4);
      if (atomic_fetch_add(v4 + 3, 0xFFFFFFFF) == 1)
      {
        return (*(*v4 + 24))(v4);
      }
    }
  }

  else
  {
    *v2 = 0;
    *(result + 40) = 0;
  }

  return result;
}

void boost::checked_delete<boost::signals2::slot<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId),boost::function<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>>>(void **__p)
{
  if (__p)
  {
    v2 = __p[3];
    if (v2)
    {
      if ((v2 & 1) == 0)
      {
        v3 = *v2;
        if (v3)
        {
          v3(__p + 4, __p + 4, 2);
        }
      }

      __p[3] = 0;
    }

    v4 = *__p;
    if (*__p)
    {
      v5 = __p[1];
      v6 = *__p;
      if (v5 != v4)
      {
        do
        {
          v5 -= 24;
          boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>::destroy_content(v5);
        }

        while (v5 != v4);
        v6 = *__p;
      }

      __p[1] = v4;
      operator delete(v6);
    }

    operator delete(__p);
  }
}

void boost::detail::sp_counted_impl_p<boost::signals2::slot<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId),boost::function<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>>>::dispose(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = v1[3];
    if (v2)
    {
      if ((v2 & 1) == 0)
      {
        v3 = *v2;
        if (v3)
        {
          v3(v1 + 4, v1 + 4, 2);
        }
      }

      v1[3] = 0;
    }

    v4 = *v1;
    if (*v1)
    {
      v5 = v1[1];
      v6 = *v1;
      if (v5 != v4)
      {
        do
        {
          v5 -= 24;
          boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>::destroy_content(v5);
        }

        while (v5 != v4);
        v6 = *v1;
      }

      v1[1] = v4;
      operator delete(v6);
    }

    operator delete(v1);
  }
}

void *boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId),boost::function<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>>,boost::signals2::mutex>::~connection_body(void *a1)
{
  *a1 = &unk_2A1E25490;
  v2 = a1[7];
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

  v3 = a1[5];
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

  *a1 = &unk_2A1E24C40;
  v4 = a1[2];
  if (v4 && atomic_fetch_add(v4 + 3, 0xFFFFFFFF) == 1)
  {
    (*(*v4 + 24))(v4);
  }

  return a1;
}

uint64_t boost::detail::sp_counted_impl_p<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId),boost::function<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>>,boost::signals2::mutex>>::dispose(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId),boost::function<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>>,boost::signals2::mutex>>::~shared_ptr(uint64_t result)
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

void (***boost::function<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>::~function(void (***result)(void, void, void)))(void, void, void)
{
  v1 = *result;
  if (*result)
  {
    if ((v1 & 1) == 0)
    {
      v2 = *v1;
      if (v2)
      {
        v3 = result;
        v2(result + 1, result + 1, 2);
        result = v3;
      }
    }

    *result = 0;
  }

  return result;
}

void boost::detail::function::functor_manager<ctu::DispatchSlot<dispatch::block<void({block_pointer})(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>>>::manage(uint64_t a1, _WORD *a2, unsigned int a3)
{
  if (a3 == 4)
  {
    goto LABEL_2;
  }

  if (a3 > 1)
  {
    if (a3 == 3)
    {
      v9 = (*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL);
      if (v9 == (0x8000000297224469 & 0x7FFFFFFFFFFFFFFFLL) || !strcmp(v9, (0x8000000297224469 & 0x7FFFFFFFFFFFFFFFLL)))
      {
        *a2 = a1;
      }

      else
      {
        *a2 = 0;
      }
    }

    else
    {
      if (a3 != 2)
      {
LABEL_2:
        a2[4] = 0;
        return;
      }

      dispatch_release(*a2);
      v8 = *(a2 + 1);
      if (v8)
      {
LABEL_9:
        _Block_release(v8);
      }
    }
  }

  else
  {
    v6 = *a1;
    v7 = *(a1 + 8);
    *a2 = *a1;
    if (v7)
    {
      v7 = _Block_copy(v7);
      v6 = *a2;
    }

    *(a2 + 1) = v7;
    dispatch_retain(v6);
    if (a3 == 1)
    {
      dispatch_release(*a1);
      v8 = *(a1 + 8);
      if (v8)
      {
        goto LABEL_9;
      }
    }
  }
}

uint64_t boost::function2<void,std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId>::move_assign(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v2 = *a2;
    if (*a2)
    {
      *result = v2;
      if (v2)
      {
        v7 = *(a2 + 8);
        *(result + 24) = *(a2 + 24);
        *(result + 8) = v7;
      }

      else
      {
        v3 = a2;
        result = (*v2)(a2 + 8, result + 8, 1);
        a2 = v3;
      }
    }

    else
    {
      v4 = *result;
      if (!*result)
      {
        return result;
      }

      if ((v4 & 1) != 0 || (v5 = *v4) == 0)
      {
        a2 = result;
      }

      else
      {
        v6 = result;
        result = v5(result + 8, result + 8, 2);
        a2 = v6;
      }
    }

    *a2 = 0;
  }

  return result;
}

void sub_297057E10(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_rethrow();
}

void (***boost::function2<void,std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId>::~function2(void (***result)(void, void, void)))(void, void, void)
{
  v1 = *result;
  if (*result)
  {
    if ((v1 & 1) == 0)
    {
      v2 = *v1;
      if (v2)
      {
        v3 = result;
        v2(result + 1, result + 1, 2);
        result = v3;
      }
    }

    *result = 0;
  }

  return result;
}

void **boost::signals2::slot<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId),boost::function<void ()(std::map<char const*,std::list<std::pair<unsigned long long,unsigned int>>>,coex::SubId)>>::~slot(void **a1)
{
  v2 = a1[3];
  if (v2)
  {
    if ((v2 & 1) == 0)
    {
      v3 = *v2;
      if (v3)
      {
        v3(a1 + 4, a1 + 4, 2);
      }
    }

    a1[3] = 0;
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = a1[1];
    v6 = *a1;
    if (v5 != v4)
    {
      do
      {
        v5 -= 24;
        boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>::destroy_content(v5);
      }

      while (v5 != v4);
      v6 = *a1;
    }

    a1[1] = v4;
    operator delete(v6);
  }

  return a1;
}

uint64_t __copy_helper_block_e8_40c47_ZTSNSt3__110shared_ptrIKN4coex6Module5StateEEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c47_ZTSNSt3__110shared_ptrIKN4coex6Module5StateEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void dispatch::async<void ctu::SharedSynchronizable<coex::Module::State>::execute_wrapped<coex::Module::State::registerEventHandlers(coex::Module*)::$_0>(coex::Module::State::registerEventHandlers(coex::Module*)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<coex::Module::State::registerEventHandlers(coex::Module*)::$_0,dispatch_queue_s *::default_delete<coex::Module::State::registerEventHandlers(coex::Module*)::$_0>>)::{lambda(void *)#1}::__invoke(Service ***a1)
{
  v32 = *MEMORY[0x29EDCA608];
  v1 = *a1;
  v2 = **a1;
  v3 = *(v2 + 1);
  if (!v3 || (v4 = *v2, (v5 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v6 = v5;
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = v1[1];
  v8 = *MEMORY[0x29EDBF6A0];
  v9 = strlen(*MEMORY[0x29EDBF6A0]);
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
    v28 = v12 | 0x8000000000000000;
    *&__dst = p_dst;
    goto LABEL_13;
  }

  HIBYTE(v28) = v9;
  p_dst = &__dst;
  if (v9)
  {
LABEL_13:
    memmove(p_dst, v8, v10);
  }

  *(p_dst + v10) = 0;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v31 = 0;
  v13 = operator new(0x20uLL);
  *v13 = &unk_2A1E25620;
  v13[1] = v2;
  v13[2] = v4;
  v13[3] = v6;
  v31 = v13;
  Service::registerEventHandler(v7, &__dst, v30);
  if (v31 == v30)
  {
    (*(*v31 + 32))(v31);
    if ((SHIBYTE(v28) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_38;
  }

  if (v31)
  {
    (*(*v31 + 40))();
  }

  if (SHIBYTE(v28) < 0)
  {
LABEL_38:
    operator delete(__dst);
  }

LABEL_18:
  v14 = v1[1];
  v15 = *MEMORY[0x29EDBF460];
  v16 = strlen(*MEMORY[0x29EDBF460]);
  if (v16 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v17 = v16;
  if (v16 >= 0x17)
  {
    if ((v16 | 7) == 0x17)
    {
      v19 = 25;
    }

    else
    {
      v19 = (v16 | 7) + 1;
    }

    p_p = operator new(v19);
    *(&__p + 1) = v17;
    v26 = v19 | 0x8000000000000000;
    *&__p = p_p;
    goto LABEL_26;
  }

  HIBYTE(v26) = v16;
  p_p = &__p;
  if (v16)
  {
LABEL_26:
    memmove(p_p, v15, v17);
  }

  *(p_p + v17) = 0;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v29 = 0;
  v20 = operator new(0x20uLL);
  *v20 = &unk_2A1E256B0;
  *(v20 + 1) = v2;
  *(v20 + 2) = v4;
  *(v20 + 3) = v6;
  v29 = v20;
  Service::registerEventHandler(v14, &__p, &__dst);
  if (v29 == &__dst)
  {
    (*(*v29 + 32))(v29);
    if ((SHIBYTE(v26) & 0x80000000) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_40;
  }

  if (v29)
  {
    (*(*v29 + 40))();
  }

  if (SHIBYTE(v26) < 0)
  {
LABEL_40:
    operator delete(__p);
  }

LABEL_31:
  Service::eventsOn(v1[1]);
  std::__shared_weak_count::__release_weak(v6);
  operator delete(v1);
  v21 = a1;
  if (a1)
  {
    v22 = a1[2];
    if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v22->__on_zero_shared)(v22);
      std::__shared_weak_count::__release_weak(v22);
      v21 = a1;
    }

    operator delete(v21);
  }

  v23 = *MEMORY[0x29EDCA608];
}

void sub_2970583B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, char a24)
{
  std::__shared_weak_count::__release_weak(v25);
  operator delete(v24);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void sub_297058440(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  operator delete(v10);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

uint64_t std::function<void ()(dispatch::group_session,xpc::dict)>::~function(uint64_t a1)
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

uint64_t std::__function::__func<coex::Module::State::registerEventHandlers(coex::Module*)::$_0::operator() const(void)::{lambda(dispatch::group_session,xpc::dict)#1},std::allocator<coex::Module::State::registerEventHandlers(coex::Module*)::$_0::operator() const(void)::{lambda(dispatch::group_session,xpc::dict)#1}>,void ()(dispatch::group_session,xpc::dict)>::~__func(uint64_t result)
{
  *result = &unk_2A1E25620;
  if (*(result + 24))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 24));
    return v1;
  }

  return result;
}

void std::__function::__func<coex::Module::State::registerEventHandlers(coex::Module*)::$_0::operator() const(void)::{lambda(dispatch::group_session,xpc::dict)#1},std::allocator<coex::Module::State::registerEventHandlers(coex::Module*)::$_0::operator() const(void)::{lambda(dispatch::group_session,xpc::dict)#1}>,void ()(dispatch::group_session,xpc::dict)>::~__func(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E25620;
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

char *std::__function::__func<coex::Module::State::registerEventHandlers(coex::Module*)::$_0::operator() const(void)::{lambda(dispatch::group_session,xpc::dict)#1},std::allocator<coex::Module::State::registerEventHandlers(coex::Module*)::$_0::operator() const(void)::{lambda(dispatch::group_session,xpc::dict)#1}>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t a1)
{
  result = operator new(0x20uLL);
  *result = &unk_2A1E25620;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<coex::Module::State::registerEventHandlers(coex::Module*)::$_0::operator() const(void)::{lambda(dispatch::group_session,xpc::dict)#1},std::allocator<coex::Module::State::registerEventHandlers(coex::Module*)::$_0::operator() const(void)::{lambda(dispatch::group_session,xpc::dict)#1}>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A1E25620;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<coex::Module::State::registerEventHandlers(coex::Module*)::$_0::operator() const(void)::{lambda(dispatch::group_session,xpc::dict)#1},std::allocator<coex::Module::State::registerEventHandlers(coex::Module*)::$_0::operator() const(void)::{lambda(dispatch::group_session,xpc::dict)#1}>,void ()(dispatch::group_session,xpc::dict)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<coex::Module::State::registerEventHandlers(coex::Module*)::$_0::operator() const(void)::{lambda(dispatch::group_session,xpc::dict)#1},std::allocator<coex::Module::State::registerEventHandlers(coex::Module*)::$_0::operator() const(void)::{lambda(dispatch::group_session,xpc::dict)#1}>,void ()(dispatch::group_session,xpc::dict)>::destroy_deallocate(std::__shared_weak_count **a1)
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

void std::__function::__func<coex::Module::State::registerEventHandlers(coex::Module*)::$_0::operator() const(void)::{lambda(dispatch::group_session,xpc::dict)#1},std::allocator<coex::Module::State::registerEventHandlers(coex::Module*)::$_0::operator() const(void)::{lambda(dispatch::group_session,xpc::dict)#1}>,void ()(dispatch::group_session,xpc::dict)>::operator()(void *a1, NSObject **a2, void **a3)
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
        v11 = v7[1];
        if (!v11)
        {
LABEL_22:
          std::__throw_bad_weak_ptr[abi:ne200100]();
        }
      }

      else
      {
        v10 = xpc_null_create();
        v11 = v7[1];
        if (!v11)
        {
          goto LABEL_22;
        }
      }

      v12 = *v7;
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
      v17 = v7[2];
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      v18 = operator new(0x18uLL);
      *v18 = v15;
      v18[1] = v12;
      v18[2] = v14;
      dispatch_async_f(v17, v18, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZZNS5_21registerEventHandlersEPS4_ENK3__0clEvENKUlNS_13group_sessionEN3xpc4dictEE_clESA_SC_EUlvE_EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrISF_NSK_14default_deleteISF_EEEEENUlPvE_8__invokeESP_);
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

void sub_2970588BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
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

uint64_t std::__function::__func<coex::Module::State::registerEventHandlers(coex::Module*)::$_0::operator() const(void)::{lambda(dispatch::group_session,xpc::dict)#1},std::allocator<coex::Module::State::registerEventHandlers(coex::Module*)::$_0::operator() const(void)::{lambda(dispatch::group_session,xpc::dict)#1}>,void ()(dispatch::group_session,xpc::dict)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZZN4coex6Module5State21registerEventHandlersEPS0_ENK3$_0clEvEUlN8dispatch13group_sessionEN3xpc4dictEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZZN4coex6Module5State21registerEventHandlersEPS0_ENK3$_0clEvEUlN8dispatch13group_sessionEN3xpc4dictEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZZN4coex6Module5State21registerEventHandlersEPS0_ENK3$_0clEvEUlN8dispatch13group_sessionEN3xpc4dictEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZZN4coex6Module5State21registerEventHandlersEPS0_ENK3$_0clEvEUlN8dispatch13group_sessionEN3xpc4dictEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZZNS5_21registerEventHandlersEPS4_ENK3__0clEvENKUlNS_13group_sessionEN3xpc4dictEE_clESA_SC_EUlvE_EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrISF_NSK_14default_deleteISF_EEEEENUlPvE_8__invokeESP_(coex::Module::State ***a1)
{
  v2 = *a1;
  v3 = **a1;
  v4 = *(v3 + 108);
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

  v6 = xpc::dyn_cast_or_default(&object, 8);
  xpc_release(object);
  if (v6 == 8)
  {
    v7 = v4;
  }

  else
  {
    v7 = v6;
  }

  *(v3 + 108) = v7;
  coex::Module::State::evaluateCurrentCoexBootState_sync(v3);
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
  v10 = a1[2];
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  operator delete(a1);
}

void sub_297058AA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, xpc_object_t object)
{
  xpc_release(object);
  std::unique_ptr<coex::Module::State::registerEventHandlers(coex::Module*)::$_0::operator() const(void)::{lambda(dispatch::group_session,xpc::dict)#1}::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},std::default_delete<coex::Module::State::registerEventHandlers(coex::Module*)::$_0::operator() const(void)::{lambda(dispatch::group_session,xpc::dict)#1}::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&a11);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void *std::unique_ptr<coex::Module::State::registerEventHandlers(coex::Module*)::$_0::operator() const(void)::{lambda(dispatch::group_session,xpc::dict)#1}::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},std::default_delete<coex::Module::State::registerEventHandlers(coex::Module*)::$_0::operator() const(void)::{lambda(dispatch::group_session,xpc::dict)#1}::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](void *result)
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

uint64_t std::__function::__func<coex::Module::State::registerEventHandlers(coex::Module*)::$_0::operator() const(void)::{lambda(dispatch::group_session,xpc::dict)#2},std::allocator<coex::Module::State::registerEventHandlers(coex::Module*)::$_0::operator() const(void)::{lambda(dispatch::group_session,xpc::dict)#2}>,void ()(dispatch::group_session,xpc::dict)>::~__func(uint64_t result)
{
  *result = &unk_2A1E256B0;
  if (*(result + 24))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 24));
    return v1;
  }

  return result;
}

void std::__function::__func<coex::Module::State::registerEventHandlers(coex::Module*)::$_0::operator() const(void)::{lambda(dispatch::group_session,xpc::dict)#2},std::allocator<coex::Module::State::registerEventHandlers(coex::Module*)::$_0::operator() const(void)::{lambda(dispatch::group_session,xpc::dict)#2}>,void ()(dispatch::group_session,xpc::dict)>::~__func(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E256B0;
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

char *std::__function::__func<coex::Module::State::registerEventHandlers(coex::Module*)::$_0::operator() const(void)::{lambda(dispatch::group_session,xpc::dict)#2},std::allocator<coex::Module::State::registerEventHandlers(coex::Module*)::$_0::operator() const(void)::{lambda(dispatch::group_session,xpc::dict)#2}>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t a1)
{
  result = operator new(0x20uLL);
  *result = &unk_2A1E256B0;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<coex::Module::State::registerEventHandlers(coex::Module*)::$_0::operator() const(void)::{lambda(dispatch::group_session,xpc::dict)#2},std::allocator<coex::Module::State::registerEventHandlers(coex::Module*)::$_0::operator() const(void)::{lambda(dispatch::group_session,xpc::dict)#2}>,void ()(dispatch::group_session,xpc::dict)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_2A1E256B0;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<coex::Module::State::registerEventHandlers(coex::Module*)::$_0::operator() const(void)::{lambda(dispatch::group_session,xpc::dict)#2},std::allocator<coex::Module::State::registerEventHandlers(coex::Module*)::$_0::operator() const(void)::{lambda(dispatch::group_session,xpc::dict)#2}>,void ()(dispatch::group_session,xpc::dict)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<coex::Module::State::registerEventHandlers(coex::Module*)::$_0::operator() const(void)::{lambda(dispatch::group_session,xpc::dict)#2},std::allocator<coex::Module::State::registerEventHandlers(coex::Module*)::$_0::operator() const(void)::{lambda(dispatch::group_session,xpc::dict)#2}>,void ()(dispatch::group_session,xpc::dict)>::destroy_deallocate(std::__shared_weak_count **a1)
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

void std::__function::__func<coex::Module::State::registerEventHandlers(coex::Module*)::$_0::operator() const(void)::{lambda(dispatch::group_session,xpc::dict)#2},std::allocator<coex::Module::State::registerEventHandlers(coex::Module*)::$_0::operator() const(void)::{lambda(dispatch::group_session,xpc::dict)#2}>,void ()(dispatch::group_session,xpc::dict)>::operator()(void *a1, NSObject **a2, void **a3)
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
        v11 = v7[1];
        if (!v11)
        {
LABEL_22:
          std::__throw_bad_weak_ptr[abi:ne200100]();
        }
      }

      else
      {
        v10 = xpc_null_create();
        v11 = v7[1];
        if (!v11)
        {
          goto LABEL_22;
        }
      }

      v12 = *v7;
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
      v17 = v7[2];
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      v18 = operator new(0x18uLL);
      *v18 = v15;
      v18[1] = v12;
      v18[2] = v14;
      dispatch_async_f(v17, v18, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZZNS5_21registerEventHandlersEPS4_ENK3__0clEvENKUlNS_13group_sessionEN3xpc4dictEE0_clESA_SC_EUlvE_EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrISF_NSK_14default_deleteISF_EEEEENUlPvE_8__invokeESP_);
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

void sub_297058F0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
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

uint64_t std::__function::__func<coex::Module::State::registerEventHandlers(coex::Module*)::$_0::operator() const(void)::{lambda(dispatch::group_session,xpc::dict)#2},std::allocator<coex::Module::State::registerEventHandlers(coex::Module*)::$_0::operator() const(void)::{lambda(dispatch::group_session,xpc::dict)#2}>,void ()(dispatch::group_session,xpc::dict)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZZN4coex6Module5State21registerEventHandlersEPS0_ENK3$_0clEvEUlN8dispatch13group_sessionEN3xpc4dictEE0_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZZN4coex6Module5State21registerEventHandlersEPS0_ENK3$_0clEvEUlN8dispatch13group_sessionEN3xpc4dictEE0_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZZN4coex6Module5State21registerEventHandlersEPS0_ENK3$_0clEvEUlN8dispatch13group_sessionEN3xpc4dictEE0_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZZN4coex6Module5State21registerEventHandlersEPS0_ENK3$_0clEvEUlN8dispatch13group_sessionEN3xpc4dictEE0_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZZNS5_21registerEventHandlersEPS4_ENK3__0clEvENKUlNS_13group_sessionEN3xpc4dictEE0_clESA_SC_EUlvE_EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrISF_NSK_14default_deleteISF_EEEEENUlPvE_8__invokeESP_(std::__shared_weak_count **a1)
{
  v20 = *a1;
  v1 = (*a1)->__vftable;
  value = xpc_dictionary_get_value((*a1)->__shared_weak_owners_, *MEMORY[0x29EDBEAF8]);
  object = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object = xpc_null_create();
  }

  xpc::dyn_cast_or_default(&v22, &object, *MEMORY[0x29EDBEFC0], v3);
  p_on_zero_shared_weak = &v1[2].__on_zero_shared_weak;
  if (SHIBYTE(v1[3].~__shared_weak_count_0) < 0)
  {
    operator delete(*p_on_zero_shared_weak);
  }

  *p_on_zero_shared_weak = v22;
  v1[3].~__shared_weak_count_0 = v23;
  HIBYTE(v23) = 0;
  LOBYTE(v22) = 0;
  xpc_release(object);
  v5 = *MEMORY[0x29EDBEFB8];
  v6 = strlen(*MEMORY[0x29EDBEFB8]);
  v7 = SHIBYTE(v1[3].~__shared_weak_count_0);
  if ((v7 & 0x8000000000000000) == 0)
  {
    if (v6 != v7 || memcmp(&v1[2].__on_zero_shared_weak, v5, v6))
    {
      goto LABEL_26;
    }

    goto LABEL_13;
  }

  if (v6 == v1[3].~__shared_weak_count)
  {
    if (v6 == -1)
    {
      std::string::__throw_out_of_range[abi:ne200100]();
    }

    if (!memcmp(*p_on_zero_shared_weak, v5, v6))
    {
LABEL_13:
      if (v1[1].__on_zero_shared)
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
        on_zero_shared = v1[1].__on_zero_shared;
        *&v22 = v9;
        if (v9)
        {
          xpc_retain(v9);
          v11 = v22;
        }

        else
        {
          v11 = xpc_null_create();
          *&v22 = v11;
        }

        coex::XpcClient::sendMessage(on_zero_shared, 304, &v22, 0);
        xpc_release(v11);
        *&v22 = 0;
        on_zero_shared_weak = v1->__on_zero_shared_weak;
        if (os_log_type_enabled(on_zero_shared_weak, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(object) = 0;
          _os_log_impl(&dword_296FF7000, on_zero_shared_weak, OS_LOG_TYPE_DEFAULT, "#I Notified CXM that Baseband is Ready", &object, 2u);
        }

        xpc_release(v9);
        LOBYTE(v7) = HIBYTE(v1[3].~__shared_weak_count_0);
      }
    }
  }

LABEL_26:
  v13 = *MEMORY[0x29EDBF210];
  v14 = strlen(*MEMORY[0x29EDBF210]);
  if ((v7 & 0x80) != 0)
  {
    if (v14 == v1[3].~__shared_weak_count)
    {
      if (v14 == -1)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      if (!memcmp(*p_on_zero_shared_weak, v13, v14))
      {
        goto LABEL_33;
      }
    }
  }

  else if (v14 == v7 && !memcmp(&v1[2].__on_zero_shared_weak, v13, v14))
  {
LABEL_33:
    coex::CoexCache::initProperty(&v1[1].__on_zero_shared_weak);
  }

  coex::Module::State::evaluateCurrentCoexBootState_sync(v1);
  if (v20)
  {
    xpc_release(v20->__shared_weak_owners_);
    v20->__shared_weak_owners_ = 0;
    shared_owners = v20->__shared_owners_;
    if (shared_owners)
    {
      dispatch_group_leave(shared_owners);
      v16 = v20->__shared_owners_;
      if (v16)
      {
        dispatch_release(v16);
      }
    }

    operator delete(v20);
  }

  v17 = a1;
  if (a1)
  {
    v18 = a1[2];
    if (v18)
    {
      if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v18->__on_zero_shared)(v18);
        std::__shared_weak_count::__release_weak(v18);
        v17 = a1;
      }
    }

    operator delete(v17);
  }
}

void sub_297059324(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object)
{
  xpc_release(object);
  std::unique_ptr<coex::Module::State::registerEventHandlers(coex::Module*)::$_0::operator() const(void)::{lambda(dispatch::group_session,xpc::dict)#2}::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},std::default_delete<coex::Module::State::registerEventHandlers(coex::Module*)::$_0::operator() const(void)::{lambda(dispatch::group_session,xpc::dict)#2}::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *std::unique_ptr<coex::Module::State::registerEventHandlers(coex::Module*)::$_0::operator() const(void)::{lambda(dispatch::group_session,xpc::dict)#2}::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},std::default_delete<coex::Module::State::registerEventHandlers(coex::Module*)::$_0::operator() const(void)::{lambda(dispatch::group_session,xpc::dict)#2}::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](void *result)
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

void ctu::cf::insert<__CFString const*,__CFBoolean const*>(__CFDictionary *a1, CFTypeRef cf, CFTypeRef a3)
{
  if (cf)
  {
    CFRetain(cf);
  }

  if (a3)
  {
    CFRetain(a3);
    if (cf)
    {
      CFDictionaryAddValue(a1, cf, a3);
    }

    CFRelease(a3);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_297059438(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a9);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a10);
  _Unwind_Resume(a1);
}

void sub_29705945C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  _Unwind_Resume(a1);
}

void ctu::cf::insert<__CFString const*,__CFDictionary const*>(__CFDictionary *a1, CFTypeRef cf, CFTypeRef a3)
{
  if (cf)
  {
    CFRetain(cf);
  }

  if (a3)
  {
    CFRetain(a3);
    if (cf)
    {
      CFDictionaryAddValue(a1, cf, a3);
    }

    CFRelease(a3);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_2970594F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a9);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a10);
  _Unwind_Resume(a1);
}