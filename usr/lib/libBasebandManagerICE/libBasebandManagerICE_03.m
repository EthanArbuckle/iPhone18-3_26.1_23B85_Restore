void coex::Module::State::handleSetWiFiStatus_sync(uint64_t *a1, xpc_object_t *a2, uint64_t a3)
{
  v39 = *MEMORY[0x29EDCA608];
  if (MEMORY[0x29C272BA0](*a2) != MEMORY[0x29EDCAA00])
  {
    v6 = a1[4];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf) = 0;
      _os_log_debug_impl(&dword_297476000, v6, OS_LOG_TYPE_DEBUG, "#D Invalid XPC dict", &buf, 2u);
    }

    goto LABEL_49;
  }

  value = xpc_dictionary_get_value(*a2, "WCMCellularSetWiFiStatus_CenterFrequency");
  *&buf = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    *&buf = xpc_null_create();
  }

  v8 = xpc::dyn_cast_or_default(&buf, 0);
  xpc_release(buf);
  v9 = xpc_dictionary_get_value(*a2, "WCMCellularSetWiFiStatus_ChannelBandwidth");
  *&buf = v9;
  if (v9)
  {
    xpc_retain(v9);
  }

  else
  {
    *&buf = xpc_null_create();
  }

  v10 = xpc::dyn_cast_or_default(&buf, 0);
  xpc_release(buf);
  v11 = xpc_dictionary_get_value(*a2, "WCMCellularSetWiFiStatus_TxPower");
  *&buf = v11;
  if (v11)
  {
    xpc_retain(v11);
  }

  else
  {
    *&buf = xpc_null_create();
  }

  v12 = xpc::dyn_cast_or_default(&buf, 0);
  xpc_release(buf);
  v37 = 0;
  v13 = *MEMORY[0x29EDB8ED8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v15 = Mutable;
  if (Mutable)
  {
    v37 = Mutable;
  }

  ctu::cf::insert<__CFString const*,int>(Mutable, *MEMORY[0x29EDC8778], v8, v13);
  ctu::cf::insert<__CFString const*,int>(v15, *MEMORY[0x29EDC8658], v10, v13);
  ctu::cf::insert<__CFString const*,int>(v15, *MEMORY[0x29EDC8620], v12, v13);
  v36 = 0;
  v16 = CFDictionaryCreateMutable(v13, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v17 = v16;
  if (v16)
  {
    v36 = v16;
  }

  ctu::cf::insert<__CFString const*,__CFDictionary *>(v16, *MEMORY[0x29EDC8740], v15);
  v18 = a1[4];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v17;
    _os_log_impl(&dword_297476000, v18, OS_LOG_TYPE_DEFAULT, "#I Setting WiFi status with: %@", &buf, 0xCu);
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
  v31[2] = ___ZN4coex6Module5State24handleSetWiFiStatus_syncEN3xpc4dictENS_5SubIdE_block_invoke;
  v31[3] = &__block_descriptor_tmp_176;
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

void sub_29749DCB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, char a18, int a19, __int16 a20, char a21, char a22, int a23, __int16 a24, char a25, char a26, xpc_object_t object)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_29749DDB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void ___ZN4coex6Module5State24handleSetWiFiStatus_syncEN3xpc4dictENS_5SubIdE_block_invoke(uint64_t a1, uint64_t *a2)
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
      _os_log_impl(&dword_297476000, v3, OS_LOG_TYPE_DEFAULT, "#E Failed to set wifi status: %@", &v5, 0xCu);
    }
  }

  v4 = *MEMORY[0x29EDCA608];
}

void coex::Module::State::handleSetTimeShareConfigReq_sync(uint64_t *a1, xpc_object_t *a2, uint64_t a3)
{
  v75 = *MEMORY[0x29EDCA608];
  if (MEMORY[0x29C272BA0](*a2) != MEMORY[0x29EDCAA00])
  {
    v6 = a1[4];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_297476000, v6, OS_LOG_TYPE_DEBUG, "#D Invalid XPC dict", buf, 2u);
    }

    goto LABEL_4;
  }

  if (xpc_dictionary_get_value(*a2, "kWCMCellularSetTimeShareConfig_Enable"))
  {
    v73 = 0;
    v8 = *MEMORY[0x29EDB8ED8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    v10 = Mutable;
    if (Mutable)
    {
      v73 = Mutable;
    }

    value = xpc_dictionary_get_value(*a2, "kWCMCellularSetTimeShareConfig_Enable");
    *buf = value;
    if (value)
    {
      xpc_retain(value);
    }

    else
    {
      *buf = xpc_null_create();
    }

    v13 = xpc::dyn_cast_or_default(buf, 0);
    ctu::cf::insert<__CFString const*,BOOL>(v10, *MEMORY[0x29EDC8928], v13);
    xpc_release(*buf);
    v14 = xpc_dictionary_get_value(*a2, "kWCMCellularTimeShareConfig_CoexTech");
    *buf = v14;
    if (v14)
    {
      xpc_retain(v14);
    }

    else
    {
      *buf = xpc_null_create();
    }

    v15 = xpc::dyn_cast_or_default(buf, 0);
    ctu::cf::insert<__CFString const*,unsigned int>(v10, *MEMORY[0x29EDC8960], v15, v8);
    xpc_release(*buf);
    v16 = xpc_dictionary_get_value(*a2, "kWCMCellularTimeShareConfig_CallType");
    *buf = v16;
    if (v16)
    {
      xpc_retain(v16);
    }

    else
    {
      *buf = xpc_null_create();
    }

    v17 = xpc::dyn_cast_or_default(buf, 0);
    ctu::cf::insert<__CFString const*,unsigned int>(v10, *MEMORY[0x29EDC8958], v17, v8);
    xpc_release(*buf);
    v18 = xpc_dictionary_get_value(*a2, "kWCMCellularTimeShareConfig_LongDrxCycle");
    *buf = v18;
    if (v18)
    {
      xpc_retain(v18);
    }

    else
    {
      *buf = xpc_null_create();
    }

    v19 = xpc::dyn_cast_or_default(buf, 0);
    ctu::cf::insert<__CFString const*,unsigned short>(v10, *MEMORY[0x29EDC8A40], v19, v8);
    xpc_release(*buf);
    v20 = xpc_dictionary_get_value(*a2, "kWCMCellularTimeShareConfig_ShortDrxCycle");
    *buf = v20;
    if (v20)
    {
      xpc_retain(v20);
    }

    else
    {
      *buf = xpc_null_create();
    }

    v21 = xpc::dyn_cast_or_default(buf, 0);
    ctu::cf::insert<__CFString const*,unsigned short>(v10, *MEMORY[0x29EDC8A60], v21, v8);
    xpc_release(*buf);
    v22 = xpc_dictionary_get_value(*a2, "kWCMCellularTImeShareConfig_SleepWakeDurScale");
    *buf = v22;
    if (v22)
    {
      xpc_retain(v22);
    }

    else
    {
      *buf = xpc_null_create();
    }

    v23 = xpc::dyn_cast_or_default(buf, 0);
    ctu::cf::insert<__CFString const*,unsigned char>(v10, *MEMORY[0x29EDC8AB0], v23, v8);
    xpc_release(*buf);
    v72 = 0xAAAAAAAAAAAAAAAALL;
    *buf = a2;
    *&buf[8] = "kWCMCellularTImeShareConfig_BandInformationSet";
    xpc::dict::object_proxy::operator xpc::array(buf, &v72);
    v24 = MEMORY[0x29C272BA0](v72);
    v25 = MEMORY[0x29EDCA9E0];
    if (v24 == MEMORY[0x29EDCA9E0])
    {
      v71 = 0;
      v26 = CFArrayCreateMutable(v8, 0, MEMORY[0x29EDB9000]);
      if (v26)
      {
        v71 = v26;
      }

      memset(buf, 170, sizeof(buf));
      v27 = v72;
      if (v72)
      {
        xpc_retain(v72);
        *buf = v27;
      }

      else
      {
        v27 = xpc_null_create();
        *buf = v27;
        if (!v27)
        {
          v27 = 0;
          *buf = xpc_null_create();
          goto LABEL_35;
        }
      }

      xpc_retain(v27);
LABEL_35:
      *&buf[8] = 0;
      xpc_release(v27);
      v59 = a1;
      v60 = a3;
      v28 = *MEMORY[0x29EDC8658];
      v61 = *MEMORY[0x29EDC8658];
      v62 = *MEMORY[0x29EDC8778];
      v29 = MEMORY[0x29EDB9010];
      v30 = MEMORY[0x29EDB9020];
      while (1)
      {
        v31 = v72;
        if (v72)
        {
          xpc_retain(v72);
        }

        else
        {
          v31 = xpc_null_create();
        }

        if (MEMORY[0x29C272BA0](v72) == v25)
        {
          count = xpc_array_get_count(v72);
          if (!v31)
          {
LABEL_45:
            v33 = xpc_null_create();
            goto LABEL_46;
          }
        }

        else
        {
          count = 0;
          if (!v31)
          {
            goto LABEL_45;
          }
        }

        xpc_retain(v31);
        v33 = v31;
LABEL_46:
        xpc_release(v31);
        v35 = *buf;
        v34 = *&buf[8];
        xpc_release(v33);
        if (v34 == count && v35 == v33)
        {
          xpc_release(*buf);
          v44 = v71;
          v10 = v73;
          ctu::cf::insert<__CFString const*,__CFArray *>(v73, *MEMORY[0x29EDC8AC8], v71);
          a3 = v60;
          a1 = v59;
          if (v44)
          {
            CFRelease(v44);
          }

          break;
        }

        v70 = 0;
        v36 = CFDictionaryCreateMutable(v8, 0, v29, v30);
        v37 = v36;
        if (v36)
        {
          v70 = v36;
        }

        object[0] = buf;
        object[1] = *&buf[8];
        xdict = 0xAAAAAAAAAAAAAAAALL;
        xpc::array::object_proxy::operator xpc::dict(object, &xdict);
        if (MEMORY[0x29C272BA0](xdict) == MEMORY[0x29EDCAA00])
        {
          v38 = xpc_dictionary_get_value(xdict, "kWCMCellularTImeShareConfig_BandSet_Frequency");
          object[0] = v38;
          if (v38)
          {
            xpc_retain(v38);
          }

          else
          {
            object[0] = xpc_null_create();
          }

          v39 = xpc::dyn_cast_or_default(object, 0);
          xpc_release(object[0]);
          v40 = xpc_dictionary_get_value(xdict, "kWCMCellularTImeShareConfig_BandSet_BW");
          object[0] = v40;
          if (v40)
          {
            xpc_retain(v40);
          }

          else
          {
            object[0] = xpc_null_create();
          }

          v41 = xpc::dyn_cast_or_default(object, 0);
          xpc_release(object[0]);
          ctu::cf::insert<__CFString const*,long long>(v37, v62, v39, v8);
          ctu::cf::insert<__CFString const*,long long>(v37, v61, v41, v8);
        }

        v42 = v71;
        object[0] = v37;
        if (v37)
        {
          CFRetain(v37);
          CFArrayAppendValue(v42, v37);
          CFRelease(v37);
        }

        xpc_release(xdict);
        if (v37)
        {
          CFRelease(v37);
        }

        v43 = *buf;
        if (*buf)
        {
          xpc_retain(*buf);
        }

        else
        {
          v43 = xpc_null_create();
        }

        ++*&buf[8];
        xpc_release(v43);
      }
    }

    object[0] = 0;
    v45 = CFDictionaryCreateMutable(v8, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    v46 = v45;
    if (v45)
    {
      object[0] = v45;
    }

    ctu::cf::insert<__CFString const*,__CFDictionary *>(v45, *MEMORY[0x29EDC8800], v10);
    v47 = a1[4];
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v46;
      _os_log_impl(&dword_297476000, v47, OS_LOG_TYPE_DEFAULT, "#I Setting Time share config with: %@", buf, 0xCu);
    }

    v49 = *a1;
    v48 = a1[1];
    *buf = *a1;
    if (!v48 || (v50 = std::__shared_weak_count::lock(v48), (*&buf[8] = v50) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v51 = v50;
    v52 = a1[5];
    if (v46 && (v53 = CFGetTypeID(v46), v53 == CFDictionaryGetTypeID()))
    {
      cf = v46;
      CFRetain(v46);
    }

    else
    {
      cf = 0;
    }

    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1174405120;
    aBlock[2] = ___ZN4coex6Module5State32handleSetTimeShareConfigReq_syncEN3xpc4dictENS_5SubIdE_block_invoke;
    aBlock[3] = &__block_descriptor_tmp_188;
    aBlock[4] = a1;
    aBlock[5] = v49;
    v64 = v51;
    atomic_fetch_add_explicit(&v51->__shared_owners_, 1uLL, memory_order_relaxed);
    v54 = _Block_copy(aBlock);
    v55 = a1[2];
    if (v55)
    {
      dispatch_retain(a1[2]);
    }

    if (v54)
    {
      v65 = _Block_copy(v54);
      v66 = v55;
      if (!v55)
      {
        goto LABEL_81;
      }
    }

    else
    {
      v65 = 0;
      v66 = v55;
      if (!v55)
      {
LABEL_81:
        (*(*v52 + 16))(v52, &cf, a3, &v65);
        if (v66)
        {
          dispatch_release(v66);
        }

        if (v65)
        {
          _Block_release(v65);
        }

        if (v55)
        {
          dispatch_release(v55);
        }

        if (v54)
        {
          _Block_release(v54);
        }

        if (cf)
        {
          CFRelease(cf);
        }

        v56 = v64;
        if (v64 && !atomic_fetch_add(&v64->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v56->__on_zero_shared)(v56);
          std::__shared_weak_count::__release_weak(v56);
        }

        v57 = *&buf[8];
        if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          (v57->__on_zero_shared)(v57);
          std::__shared_weak_count::__release_weak(v57);
          v58 = object[0];
          if (!object[0])
          {
LABEL_98:
            xpc_release(v72);
            if (v73)
            {
              CFRelease(v73);
            }

            goto LABEL_4;
          }
        }

        else
        {
          v58 = object[0];
          if (!object[0])
          {
            goto LABEL_98;
          }
        }

        CFRelease(v58);
        goto LABEL_98;
      }
    }

    dispatch_retain(v55);
    goto LABEL_81;
  }

  v12 = a1[4];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_297476000, v12, OS_LOG_TYPE_DEFAULT, "#E Missing Time share config", buf, 2u);
  }

LABEL_4:
  v7 = *MEMORY[0x29EDCA608];
}

void sub_29749E79C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, char a23, xpc_object_t a24, uint64_t a25, xpc_object_t object, char a27)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void ___ZN4coex6Module5State32handleSetTimeShareConfigReq_syncEN3xpc4dictENS_5SubIdE_block_invoke(uint64_t a1, uint64_t *a2)
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
      _os_log_impl(&dword_297476000, v3, OS_LOG_TYPE_DEFAULT, "#E Failed to set Time share config: %@", &v5, 0xCu);
    }
  }

  v4 = *MEMORY[0x29EDCA608];
}

void coex::Module::State::handleSetWCI2TxAntMap_sync(uint64_t *a1, xpc_object_t *a2, uint64_t a3)
{
  v70 = *MEMORY[0x29EDCA608];
  if (MEMORY[0x29C272BA0](*a2) != MEMORY[0x29EDCAA00])
  {
    v6 = a1[4];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_297476000, v6, OS_LOG_TYPE_DEBUG, "#D Invalid XPC dict", buf, 2u);
    }

    goto LABEL_4;
  }

  if (xpc_dictionary_get_value(*a2, "kWCMCellularSetWCI2TxAntMap_Enable"))
  {
    v68 = 0;
    v8 = *MEMORY[0x29EDB8ED8];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    v10 = Mutable;
    if (Mutable)
    {
      v68 = Mutable;
    }

    value = xpc_dictionary_get_value(*a2, "kWCMCellularSetWCI2TxAntMap_Enable");
    *buf = value;
    if (value)
    {
      xpc_retain(value);
    }

    else
    {
      *buf = xpc_null_create();
    }

    v13 = xpc::dyn_cast_or_default(buf, 0);
    ctu::cf::insert<__CFString const*,BOOL>(v10, *MEMORY[0x29EDC8850], v13);
    xpc_release(*buf);
    v14 = xpc_dictionary_get_value(*a2, "kWCMCellularSetWCI2TxAntMap_DefaultIdx");
    *buf = v14;
    if (v14)
    {
      xpc_retain(v14);
    }

    else
    {
      *buf = xpc_null_create();
    }

    v15 = xpc::dyn_cast_or_default(buf, 0);
    ctu::cf::insert<__CFString const*,unsigned char>(v10, *MEMORY[0x29EDC8938], v15, v8);
    xpc_release(*buf);
    v67 = 0xAAAAAAAAAAAAAAAALL;
    *buf = a2;
    *&buf[8] = "kWCMCellularSetWCI2TxAntMap_InformationSet";
    xpc::dict::object_proxy::operator xpc::array(buf, &v67);
    v16 = MEMORY[0x29C272BA0](v67);
    v17 = MEMORY[0x29EDCA9E0];
    if (v16 == MEMORY[0x29EDCA9E0])
    {
      v66 = 0;
      v18 = CFArrayCreateMutable(v8, 0, MEMORY[0x29EDB9000]);
      if (v18)
      {
        v66 = v18;
      }

      memset(buf, 170, sizeof(buf));
      v19 = v67;
      if (v67)
      {
        xpc_retain(v67);
        *buf = v19;
      }

      else
      {
        v19 = xpc_null_create();
        *buf = v19;
        if (!v19)
        {
          v19 = 0;
          *buf = xpc_null_create();
          goto LABEL_23;
        }
      }

      xpc_retain(v19);
LABEL_23:
      *&buf[8] = 0;
      xpc_release(v19);
      v54 = a1;
      v55 = a3;
      v20 = *MEMORY[0x29EDC8A18];
      v56 = *MEMORY[0x29EDC8A18];
      v57 = *MEMORY[0x29EDC89E0];
      v21 = MEMORY[0x29EDB9010];
      v22 = MEMORY[0x29EDB9020];
      while (1)
      {
        v23 = v67;
        if (v67)
        {
          xpc_retain(v67);
        }

        else
        {
          v23 = xpc_null_create();
        }

        if (MEMORY[0x29C272BA0](v67) == v17)
        {
          count = xpc_array_get_count(v67);
          if (!v23)
          {
LABEL_33:
            v25 = xpc_null_create();
            goto LABEL_34;
          }
        }

        else
        {
          count = 0;
          if (!v23)
          {
            goto LABEL_33;
          }
        }

        xpc_retain(v23);
        v25 = v23;
LABEL_34:
        xpc_release(v23);
        v27 = *buf;
        v26 = *&buf[8];
        xpc_release(v25);
        if (v26 == count && v27 == v25)
        {
          xpc_release(*buf);
          v36 = v66;
          v10 = v68;
          ctu::cf::insert<__CFString const*,__CFArray *>(v68, *MEMORY[0x29EDC8A20], v66);
          a3 = v55;
          a1 = v54;
          if (v36)
          {
            CFRelease(v36);
          }

          break;
        }

        v65 = 0;
        v28 = CFDictionaryCreateMutable(v8, 0, v21, v22);
        v29 = v28;
        if (v28)
        {
          v65 = v28;
        }

        object[0] = buf;
        object[1] = *&buf[8];
        xdict = 0xAAAAAAAAAAAAAAAALL;
        xpc::array::object_proxy::operator xpc::dict(object, &xdict);
        if (MEMORY[0x29C272BA0](xdict) == MEMORY[0x29EDCAA00])
        {
          v30 = xpc_dictionary_get_value(xdict, "kWCMCellularSetWCI2TxAntMap_Infoet_AntIdx");
          object[0] = v30;
          if (v30)
          {
            xpc_retain(v30);
          }

          else
          {
            object[0] = xpc_null_create();
          }

          v31 = xpc::dyn_cast_or_default(object, 0);
          xpc_release(object[0]);
          v32 = xpc_dictionary_get_value(xdict, "kWCMCellularSetWCI2TxAntMap_InfoSet_WCI2Idx");
          object[0] = v32;
          if (v32)
          {
            xpc_retain(v32);
          }

          else
          {
            object[0] = xpc_null_create();
          }

          v33 = xpc::dyn_cast_or_default(object, 0);
          xpc_release(object[0]);
          ctu::cf::insert<__CFString const*,unsigned char>(v29, v57, v31, v8);
          ctu::cf::insert<__CFString const*,unsigned char>(v29, v56, v33, v8);
        }

        v34 = v66;
        object[0] = v29;
        if (v29)
        {
          CFRetain(v29);
          CFArrayAppendValue(v34, v29);
          CFRelease(v29);
        }

        xpc_release(xdict);
        if (v29)
        {
          CFRelease(v29);
        }

        v35 = *buf;
        if (*buf)
        {
          xpc_retain(*buf);
        }

        else
        {
          v35 = xpc_null_create();
        }

        ++*&buf[8];
        xpc_release(v35);
      }
    }

    object[0] = 0xAAAAAAAAAAAAAAAALL;
    v37 = xpc_dictionary_get_value(*a2, "kWCMCellularSetWCI2Type7FRTwoTxEnable");
    object[0] = v37;
    if (v37)
    {
      xpc_retain(v37);
      v38 = object[0];
    }

    else
    {
      v38 = xpc_null_create();
      object[0] = v38;
    }

    if (MEMORY[0x29C272BA0](v38) != MEMORY[0x29EDCAA40])
    {
      v39 = xpc::dyn_cast_or_default(object, 0);
      ctu::cf::insert<__CFString const*,BOOL>(v10, *MEMORY[0x29EDC8A50], v39);
    }

    v66 = 0;
    v40 = CFDictionaryCreateMutable(v8, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    v41 = v40;
    if (v40)
    {
      v66 = v40;
    }

    ctu::cf::insert<__CFString const*,__CFDictionary *>(v40, *MEMORY[0x29EDC8798], v10);
    v42 = a1[4];
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v41;
      _os_log_impl(&dword_297476000, v42, OS_LOG_TYPE_DEFAULT, "#I Setting Tx antenna map with: %@", buf, 0xCu);
    }

    v44 = *a1;
    v43 = a1[1];
    *buf = *a1;
    if (!v43 || (v45 = std::__shared_weak_count::lock(v43), (*&buf[8] = v45) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v46 = v45;
    v47 = a1[5];
    if (v41 && (v48 = CFGetTypeID(v41), v48 == CFDictionaryGetTypeID()))
    {
      cf = v41;
      CFRetain(v41);
    }

    else
    {
      cf = 0;
    }

    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1174405120;
    aBlock[2] = ___ZN4coex6Module5State26handleSetWCI2TxAntMap_syncEN3xpc4dictENS_5SubIdE_block_invoke;
    aBlock[3] = &__block_descriptor_tmp_197;
    aBlock[4] = a1;
    aBlock[5] = v44;
    v59 = v46;
    atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
    v49 = _Block_copy(aBlock);
    v50 = a1[2];
    if (v50)
    {
      dispatch_retain(a1[2]);
    }

    if (v49)
    {
      v60 = _Block_copy(v49);
      v61 = v50;
      if (!v50)
      {
        goto LABEL_74;
      }
    }

    else
    {
      v60 = 0;
      v61 = v50;
      if (!v50)
      {
LABEL_74:
        (*(*v47 + 16))(v47, &cf, a3, &v60);
        if (v61)
        {
          dispatch_release(v61);
        }

        if (v60)
        {
          _Block_release(v60);
        }

        if (v50)
        {
          dispatch_release(v50);
        }

        if (v49)
        {
          _Block_release(v49);
        }

        if (cf)
        {
          CFRelease(cf);
        }

        v51 = v59;
        if (v59 && !atomic_fetch_add(&v59->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v51->__on_zero_shared)(v51);
          std::__shared_weak_count::__release_weak(v51);
        }

        v52 = *&buf[8];
        if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
        {
          (v52->__on_zero_shared)(v52);
          std::__shared_weak_count::__release_weak(v52);
          v53 = v66;
          if (!v66)
          {
LABEL_91:
            xpc_release(object[0]);
            xpc_release(v67);
            if (v68)
            {
              CFRelease(v68);
            }

            goto LABEL_4;
          }
        }

        else
        {
          v53 = v66;
          if (!v66)
          {
            goto LABEL_91;
          }
        }

        CFRelease(v53);
        goto LABEL_91;
      }
    }

    dispatch_retain(v50);
    goto LABEL_74;
  }

  v12 = a1[4];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_297476000, v12, OS_LOG_TYPE_DEFAULT, "#E Missing Tx antenna map", buf, 2u);
  }

LABEL_4:
  v7 = *MEMORY[0x29EDCA608];
}

void sub_29749F2FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, char a23, xpc_object_t object, uint64_t a25, xpc_object_t a26, char a27)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void ___ZN4coex6Module5State26handleSetWCI2TxAntMap_syncEN3xpc4dictENS_5SubIdE_block_invoke(uint64_t a1, uint64_t *a2)
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
      _os_log_impl(&dword_297476000, v3, OS_LOG_TYPE_DEFAULT, "#E Failed to set Tx antenna map: %@", &v5, 0xCu);
    }
  }

  v4 = *MEMORY[0x29EDCA608];
}

void coex::Module::State::handleSetAntBlocking_sync(uint64_t *a1, void *a2, uint64_t a3)
{
  v76 = *MEMORY[0x29EDCA608];
  v6 = MEMORY[0x29C272BA0](*a2);
  v7 = MEMORY[0x29EDCAA00];
  if (v6 != MEMORY[0x29EDCAA00])
  {
    v8 = a1[4];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_297476000, v8, OS_LOG_TYPE_DEBUG, "#D Invalid XPC dict", buf, 2u);
    }

    goto LABEL_105;
  }

  v73 = 0;
  v9 = *MEMORY[0x29EDB8ED8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v11 = Mutable;
  if (Mutable)
  {
    v73 = Mutable;
  }

  v72 = 0xAAAAAAAAAAAAAAAALL;
  *buf = a2;
  *&buf[8] = "kWCMCellularSetAntBlocking_BandInformationSet";
  xpc::dict::object_proxy::operator xpc::array(buf, &v72);
  v12 = MEMORY[0x29C272BA0](v72);
  v13 = MEMORY[0x29EDCA9E0];
  if (v12 == MEMORY[0x29EDCA9E0])
  {
    v71 = 0;
    v14 = CFArrayCreateMutable(v9, 0, MEMORY[0x29EDB9000]);
    if (v14)
    {
      v71 = v14;
    }

    memset(buf, 170, sizeof(buf));
    v15 = v72;
    if (v72)
    {
      xpc_retain(v72);
      *buf = v15;
    }

    else
    {
      v15 = xpc_null_create();
      *buf = v15;
      if (!v15)
      {
        v15 = 0;
        *buf = xpc_null_create();
        goto LABEL_13;
      }
    }

    xpc_retain(v15);
LABEL_13:
    *&buf[8] = 0;
    xpc_release(v15);
    v56 = a3;
    v58 = *MEMORY[0x29EDC87C0];
    v57 = *MEMORY[0x29EDC8818];
    while (1)
    {
      v16 = v72;
      if (v72)
      {
        xpc_retain(v72);
      }

      else
      {
        v16 = xpc_null_create();
      }

      if (MEMORY[0x29C272BA0](v72) == v13)
      {
        count = xpc_array_get_count(v72);
        if (!v16)
        {
LABEL_23:
          v18 = xpc_null_create();
          goto LABEL_24;
        }
      }

      else
      {
        count = 0;
        if (!v16)
        {
          goto LABEL_23;
        }
      }

      xpc_retain(v16);
      v18 = v16;
LABEL_24:
      xpc_release(v16);
      v19 = *buf;
      v20 = *&buf[8];
      xpc_release(v18);
      if (v20 == count && v19 == v18)
      {
        xpc_release(*buf);
        v40 = v71;
        v11 = v73;
        ctu::cf::insert<__CFString const*,__CFArray *>(v73, *MEMORY[0x29EDC89A8], v71);
        a3 = v56;
        if (v40)
        {
          CFRelease(v40);
        }

        break;
      }

      cf = 0;
      v21 = CFDictionaryCreateMutable(v9, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
      v22 = v21;
      if (v21)
      {
        cf = v21;
      }

      object = buf;
      v68 = *&buf[8];
      xdict = 0xAAAAAAAAAAAAAAAALL;
      xpc::array::object_proxy::operator xpc::dict(&object, &xdict);
      if (MEMORY[0x29C272BA0](xdict) != v7)
      {
        goto LABEL_62;
      }

      value = xpc_dictionary_get_value(xdict, "kWCMCellularSetAntBlocking_BandInfoSet_AntNum");
      object = value;
      if (value)
      {
        xpc_retain(value);
      }

      else
      {
        object = xpc_null_create();
      }

      v24 = xpc::dyn_cast_or_default(&object, 0);
      xpc_release(object);
      ctu::cf::insert<__CFString const*,unsigned char>(v22, v58, v24, v9);
      xarray = 0xAAAAAAAAAAAAAAAALL;
      object = &xdict;
      v68 = "kWCMCellularSetAntBlocking_BandInfoSet_BandList";
      xpc::dict::object_proxy::operator xpc::array(&object, &xarray);
      if (MEMORY[0x29C272BA0](xarray) != v13)
      {
        goto LABEL_61;
      }

      v65 = 0;
      v25 = CFArrayCreateMutable(v9, 0, MEMORY[0x29EDB9000]);
      if (v25)
      {
        v65 = v25;
      }

      v26 = xarray;
      if (xarray)
      {
        xpc_retain(xarray);
      }

      else
      {
        v26 = xpc_null_create();
        if (!v26)
        {
          v26 = xpc_null_create();
          v27 = 0;
          goto LABEL_39;
        }
      }

      xpc_retain(v26);
      v27 = v26;
LABEL_39:
      xpc_release(v27);
      for (i = 0; ; ++i)
      {
        v30 = xarray;
        if (xarray)
        {
          xpc_retain(xarray);
        }

        else
        {
          v30 = xpc_null_create();
        }

        if (MEMORY[0x29C272BA0](xarray) == v13)
        {
          v31 = xpc_array_get_count(xarray);
          if (!v30)
          {
LABEL_49:
            v32 = xpc_null_create();
            goto LABEL_50;
          }
        }

        else
        {
          v31 = 0;
          if (!v30)
          {
            goto LABEL_49;
          }
        }

        xpc_retain(v30);
        v32 = v30;
LABEL_50:
        xpc_release(v30);
        xpc_release(v32);
        if (i == v31 && v26 == v32)
        {
          break;
        }

        v33 = xpc_array_get_value(v26, i);
        v64 = v33;
        if (v33)
        {
          xpc_retain(v33);
        }

        else
        {
          v64 = xpc_null_create();
        }

        v34 = xpc::dyn_cast_or_default(&v64, 0);
        v35 = v65;
        valuePtr = v34;
        v36 = CFNumberCreate(v9, kCFNumberIntType, &valuePtr);
        object = v36;
        if (v36)
        {
          CFArrayAppendValue(v35, v36);
          CFRelease(v36);
        }

        xpc_release(v64);
        if (v26)
        {
          xpc_retain(v26);
          v29 = v26;
        }

        else
        {
          v29 = xpc_null_create();
        }

        xpc_release(v29);
      }

      xpc_release(v26);
      v37 = v65;
      v22 = cf;
      ctu::cf::insert<__CFString const*,__CFArray *>(cf, v57, v65);
      if (v37)
      {
        CFRelease(v37);
      }

LABEL_61:
      xpc_release(xarray);
LABEL_62:
      v38 = v71;
      object = v22;
      if (v22)
      {
        CFRetain(v22);
        CFArrayAppendValue(v38, v22);
        CFRelease(v22);
      }

      xpc_release(xdict);
      if (cf)
      {
        CFRelease(cf);
      }

      v39 = *buf;
      if (*buf)
      {
        xpc_retain(*buf);
      }

      else
      {
        v39 = xpc_null_create();
      }

      ++*&buf[8];
      xpc_release(v39);
    }
  }

  object = 0;
  v41 = CFDictionaryCreateMutable(v9, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v42 = v41;
  if (v41)
  {
    object = v41;
  }

  ctu::cf::insert<__CFString const*,__CFDictionary *>(v41, *MEMORY[0x29EDC8758], v11);
  v43 = a1[4];
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = v42;
    _os_log_impl(&dword_297476000, v43, OS_LOG_TYPE_DEFAULT, "#I Setting Ant blocking with: %@", buf, 0xCu);
  }

  v45 = *a1;
  v44 = a1[1];
  *buf = *a1;
  if (!v44 || (v46 = std::__shared_weak_count::lock(v44), (*&buf[8] = v46) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v47 = v46;
  v48 = a1[5];
  if (v42 && (v49 = CFGetTypeID(v42), v49 == CFDictionaryGetTypeID()))
  {
    v63 = v42;
    CFRetain(v42);
  }

  else
  {
    v63 = 0;
  }

  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN4coex6Module5State25handleSetAntBlocking_syncEN3xpc4dictENS_5SubIdE_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_203;
  aBlock[4] = a1;
  aBlock[5] = v45;
  v60 = v47;
  atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
  v50 = _Block_copy(aBlock);
  v51 = a1[2];
  if (v51)
  {
    dispatch_retain(v51);
  }

  if (v50)
  {
    v61 = _Block_copy(v50);
    v62 = v51;
    if (!v51)
    {
      goto LABEL_86;
    }

    goto LABEL_85;
  }

  v61 = 0;
  v62 = v51;
  if (v51)
  {
LABEL_85:
    dispatch_retain(v51);
  }

LABEL_86:
  (*(*v48 + 16))(v48, &v63, a3, &v61);
  if (v62)
  {
    dispatch_release(v62);
  }

  if (v61)
  {
    _Block_release(v61);
  }

  if (v51)
  {
    dispatch_release(v51);
  }

  if (v50)
  {
    _Block_release(v50);
  }

  if (v63)
  {
    CFRelease(v63);
  }

  v52 = v60;
  if (v60 && !atomic_fetch_add(&v60->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v52->__on_zero_shared)(v52);
    std::__shared_weak_count::__release_weak(v52);
  }

  v53 = *&buf[8];
  if (!*&buf[8] || atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    v54 = object;
    if (!object)
    {
      goto LABEL_103;
    }

    goto LABEL_102;
  }

  (v53->__on_zero_shared)(v53);
  std::__shared_weak_count::__release_weak(v53);
  v54 = object;
  if (object)
  {
LABEL_102:
    CFRelease(v54);
  }

LABEL_103:
  xpc_release(v72);
  if (v73)
  {
    CFRelease(v73);
  }

LABEL_105:
  v55 = *MEMORY[0x29EDCA608];
}

void sub_29749FDF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, char a21, xpc_object_t a22, char a23, xpc_object_t object, xpc_object_t a25, uint64_t a26, xpc_object_t a27, char a28)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void ___ZN4coex6Module5State25handleSetAntBlocking_syncEN3xpc4dictENS_5SubIdE_block_invoke(uint64_t a1, uint64_t *a2)
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
      _os_log_impl(&dword_297476000, v3, OS_LOG_TYPE_DEFAULT, "#E Failed to set Ant blocking: %@", &v5, 0xCu);
    }
  }

  v4 = *MEMORY[0x29EDCA608];
}

void coex::Module::State::handleTransparentMessageReq_sync(uint64_t *a1, void *a2, uint64_t a3)
{
  v73 = *MEMORY[0x29EDCA608];
  if (MEMORY[0x29C272BA0](*a2) != MEMORY[0x29EDCAA00])
  {
    v6 = a1[4];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_297476000, v6, OS_LOG_TYPE_DEBUG, "#D Invalid XPC dict", buf, 2u);
    }

    goto LABEL_103;
  }

  v70 = 0;
  v7 = *MEMORY[0x29EDB8ED8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v9 = Mutable;
  if (Mutable)
  {
    v70 = Mutable;
  }

  v69 = 0xAAAAAAAAAAAAAAAALL;
  *buf = a2;
  *&buf[8] = "kWCMCellularTransparentMessageInformationSet";
  xpc::dict::object_proxy::operator xpc::array(buf, &v69);
  v10 = MEMORY[0x29C272BA0](v69);
  v11 = MEMORY[0x29EDCA9E0];
  if (v10 == MEMORY[0x29EDCA9E0])
  {
    v68 = 0;
    v12 = CFArrayCreateMutable(v7, 0, MEMORY[0x29EDB9000]);
    if (v12)
    {
      v68 = v12;
    }

    memset(buf, 170, sizeof(buf));
    v13 = v69;
    if (v69)
    {
      xpc_retain(v69);
      *buf = v13;
    }

    else
    {
      v13 = xpc_null_create();
      *buf = v13;
      if (!v13)
      {
        v13 = 0;
        *buf = xpc_null_create();
        goto LABEL_13;
      }
    }

    xpc_retain(v13);
LABEL_13:
    *&buf[8] = 0;
    xpc_release(v13);
    v14 = *MEMORY[0x29EDC8930];
    v55 = *MEMORY[0x29EDC8A48];
    while (1)
    {
      v15 = v69;
      if (v69)
      {
        xpc_retain(v69);
      }

      else
      {
        v15 = xpc_null_create();
      }

      if (MEMORY[0x29C272BA0](v69) == v11)
      {
        count = xpc_array_get_count(v69);
        if (!v15)
        {
LABEL_23:
          v17 = xpc_null_create();
          goto LABEL_24;
        }
      }

      else
      {
        count = 0;
        if (!v15)
        {
          goto LABEL_23;
        }
      }

      xpc_retain(v15);
      v17 = v15;
LABEL_24:
      xpc_release(v15);
      v18 = *buf;
      v19 = *&buf[8];
      xpc_release(v17);
      if (v19 == count && v18 == v17)
      {
        xpc_release(*buf);
        v39 = v68;
        v9 = v70;
        ctu::cf::insert<__CFString const*,__CFArray *>(v70, *MEMORY[0x29EDC8AB8], v68);
        a3 = a3;
        if (v39)
        {
          CFRelease(v39);
        }

        break;
      }

      *v67 = 0;
      v20 = CFDictionaryCreateMutable(v7, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
      v21 = v20;
      if (v20)
      {
        *v67 = v20;
      }

      object = buf;
      v65 = *&buf[8];
      xdict = 0xAAAAAAAAAAAAAAAALL;
      xpc::array::object_proxy::operator xpc::dict(&object, &xdict);
      value = xpc_dictionary_get_value(xdict, "kWCMCellularTransparentMessage_Type");
      object = value;
      if (value)
      {
        xpc_retain(value);
      }

      else
      {
        object = xpc_null_create();
      }

      v23 = xpc::dyn_cast_or_default(&object, 0);
      ctu::cf::insert<__CFString const*,unsigned int>(v21, v14, v23, v7);
      xpc_release(object);
      xarray = 0xAAAAAAAAAAAAAAAALL;
      object = &xdict;
      v65 = "kWCMCellularTransparentMessage_ByteList";
      xpc::dict::object_proxy::operator xpc::array(&object, &xarray);
      if (MEMORY[0x29C272BA0](xarray) == v11)
      {
        v62 = 0;
        v24 = CFArrayCreateMutable(v7, 0, MEMORY[0x29EDB9000]);
        if (v24)
        {
          v62 = v24;
        }

        v25 = xarray;
        if (xarray)
        {
          xpc_retain(xarray);
          goto LABEL_37;
        }

        v25 = xpc_null_create();
        if (v25)
        {
LABEL_37:
          xpc_retain(v25);
          v26 = v25;
        }

        else
        {
          v25 = xpc_null_create();
          v26 = 0;
        }

        xpc_release(v26);
        v27 = 0;
        while (2)
        {
          v29 = xarray;
          if (xarray)
          {
            xpc_retain(xarray);
          }

          else
          {
            v29 = xpc_null_create();
          }

          if (MEMORY[0x29C272BA0](xarray) == v11)
          {
            v30 = xpc_array_get_count(xarray);
            if (!v29)
            {
              goto LABEL_48;
            }

LABEL_46:
            xpc_retain(v29);
            v31 = v29;
          }

          else
          {
            v30 = 0;
            if (v29)
            {
              goto LABEL_46;
            }

LABEL_48:
            v31 = xpc_null_create();
          }

          xpc_release(v29);
          xpc_release(v31);
          if (v27 == v30 && v25 == v31)
          {
            xpc_release(v25);
            v36 = v62;
            v21 = *v67;
            ctu::cf::insert<__CFString const*,__CFArray *>(*v67, v55, v62);
            if (v36)
            {
              CFRelease(v36);
            }

            break;
          }

          v32 = xpc_array_get_value(v25, v27);
          v61 = v32;
          if (v32)
          {
            xpc_retain(v32);
          }

          else
          {
            v61 = xpc_null_create();
          }

          v33 = xpc::dyn_cast_or_default(&v61, 0);
          v34 = v62;
          valuePtr = v33;
          v35 = CFNumberCreate(v7, kCFNumberIntType, &valuePtr);
          object = v35;
          if (v35)
          {
            CFArrayAppendValue(v34, v35);
            CFRelease(v35);
          }

          xpc_release(v61);
          if (v25)
          {
            xpc_retain(v25);
            v28 = v25;
          }

          else
          {
            v28 = xpc_null_create();
          }

          ++v27;
          xpc_release(v28);
          continue;
        }
      }

      v37 = v68;
      object = v21;
      if (v21)
      {
        CFRetain(v21);
        CFArrayAppendValue(v37, v21);
        CFRelease(v21);
      }

      xpc_release(xarray);
      xpc_release(xdict);
      if (v21)
      {
        CFRelease(v21);
      }

      v38 = *buf;
      if (*buf)
      {
        xpc_retain(*buf);
      }

      else
      {
        v38 = xpc_null_create();
      }

      ++*&buf[8];
      xpc_release(v38);
    }
  }

  object = 0;
  v40 = CFDictionaryCreateMutable(v7, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v41 = v40;
  if (v40)
  {
    object = v40;
  }

  ctu::cf::insert<__CFString const*,__CFDictionary *>(v40, *MEMORY[0x29EDC89D0], v9);
  v42 = a1[4];
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = v41;
    _os_log_impl(&dword_297476000, v42, OS_LOG_TYPE_DEFAULT, "#I Sending transparent message reqeust: %@", buf, 0xCu);
  }

  v44 = *a1;
  v43 = a1[1];
  *buf = *a1;
  if (!v43 || (v45 = std::__shared_weak_count::lock(v43), (*&buf[8] = v45) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v46 = v45;
  v47 = a1[5];
  if (v41 && (v48 = CFGetTypeID(v41), v48 == CFDictionaryGetTypeID()))
  {
    cf = v41;
    CFRetain(v41);
  }

  else
  {
    cf = 0;
  }

  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN4coex6Module5State32handleTransparentMessageReq_syncEN3xpc4dictENS_5SubIdE_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_209;
  aBlock[4] = a1;
  aBlock[5] = v44;
  v57 = v46;
  atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
  v49 = _Block_copy(aBlock);
  v50 = a1[2];
  if (v50)
  {
    dispatch_retain(v50);
  }

  if (v49)
  {
    v58 = _Block_copy(v49);
    v59 = v50;
    if (!v50)
    {
      goto LABEL_84;
    }

    goto LABEL_83;
  }

  v58 = 0;
  v59 = v50;
  if (v50)
  {
LABEL_83:
    dispatch_retain(v50);
  }

LABEL_84:
  (*(*v47 + 16))(v47, &cf, a3, &v58);
  if (v59)
  {
    dispatch_release(v59);
  }

  if (v58)
  {
    _Block_release(v58);
  }

  if (v50)
  {
    dispatch_release(v50);
  }

  if (v49)
  {
    _Block_release(v49);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  v51 = v57;
  if (v57 && !atomic_fetch_add(&v57->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v51->__on_zero_shared)(v51);
    std::__shared_weak_count::__release_weak(v51);
  }

  v52 = *&buf[8];
  if (!*&buf[8] || atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    v53 = object;
    if (!object)
    {
      goto LABEL_101;
    }

    goto LABEL_100;
  }

  (v52->__on_zero_shared)(v52);
  std::__shared_weak_count::__release_weak(v52);
  v53 = object;
  if (object)
  {
LABEL_100:
    CFRelease(v53);
  }

LABEL_101:
  xpc_release(v69);
  if (v70)
  {
    CFRelease(v70);
  }

LABEL_103:
  v54 = *MEMORY[0x29EDCA608];
}

void sub_2974A0908(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, char a21, xpc_object_t a22, char a23, xpc_object_t object, xpc_object_t a25, uint64_t a26, xpc_object_t a27, char a28)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void ___ZN4coex6Module5State32handleTransparentMessageReq_syncEN3xpc4dictENS_5SubIdE_block_invoke(uint64_t a1, uint64_t *a2)
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
      _os_log_impl(&dword_297476000, v3, OS_LOG_TYPE_DEFAULT, "#E Failed to send transparent message req: %@", &v5, 0xCu);
    }
  }

  v4 = *MEMORY[0x29EDCA608];
}

void coex::Module::State::handleSetClientAntBlocking_sync(uint64_t *a1, void *a2, unsigned int a3)
{
  v106 = *MEMORY[0x29EDCA608];
  v6 = MEMORY[0x29C272BA0](*a2);
  v7 = MEMORY[0x29EDCAA00];
  if (v6 != MEMORY[0x29EDCAA00])
  {
    v8 = a1[4];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_297476000, v8, OS_LOG_TYPE_DEBUG, "#D Invalid XPC dict", buf, 2u);
    }

    goto LABEL_154;
  }

  v77 = a3;
  v103 = 0;
  v9 = *MEMORY[0x29EDB8ED8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v11 = Mutable;
  if (Mutable)
  {
    v103 = Mutable;
  }

  v102 = 0xAAAAAAAAAAAAAAAALL;
  *buf = a2;
  *&buf[8] = "kWCMCellularSetAntBlocking_ClientInformationSet";
  xpc::dict::object_proxy::operator xpc::array(buf, &v102);
  v78 = a1;
  v12 = MEMORY[0x29C272BA0](v102);
  v13 = MEMORY[0x29EDCA9E0];
  if (v12 == MEMORY[0x29EDCA9E0])
  {
    v101 = 0;
    v14 = CFArrayCreateMutable(v9, 0, MEMORY[0x29EDB9000]);
    if (v14)
    {
      v101 = v14;
    }

    memset(buf, 170, sizeof(buf));
    v15 = v102;
    if (v102)
    {
      xpc_retain(v102);
      *buf = v15;
    }

    else
    {
      v15 = xpc_null_create();
      *buf = v15;
      if (!v15)
      {
        v15 = 0;
        *buf = xpc_null_create();
        goto LABEL_13;
      }
    }

    xpc_retain(v15);
LABEL_13:
    *&buf[8] = 0;
    xpc_release(v15);
    v81 = *MEMORY[0x29EDC8898];
    v82 = *MEMORY[0x29EDC8820];
    v80 = *MEMORY[0x29EDC89B0];
    v84 = *MEMORY[0x29EDC87C0];
    v83 = *MEMORY[0x29EDC8818];
    v79 = *MEMORY[0x29EDC89A8];
    while (1)
    {
      v16 = v102;
      if (v102)
      {
        xpc_retain(v102);
      }

      else
      {
        v16 = xpc_null_create();
      }

      if (MEMORY[0x29C272BA0](v102) == v13)
      {
        count = xpc_array_get_count(v102);
        if (!v16)
        {
LABEL_23:
          v18 = xpc_null_create();
          goto LABEL_24;
        }
      }

      else
      {
        count = 0;
        if (!v16)
        {
          goto LABEL_23;
        }
      }

      xpc_retain(v16);
      v18 = v16;
LABEL_24:
      xpc_release(v16);
      v19 = *buf;
      v20 = *&buf[8];
      xpc_release(v18);
      if (v20 == count && v19 == v18)
      {
        xpc_release(*buf);
        v61 = v101;
        v11 = v103;
        ctu::cf::insert<__CFString const*,__CFArray *>(v103, *MEMORY[0x29EDC8AA0], v101);
        if (v61)
        {
          CFRelease(v61);
        }

        break;
      }

      v100 = 0;
      v21 = CFDictionaryCreateMutable(v9, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
      v22 = v21;
      if (v21)
      {
        v100 = v21;
      }

      p_xdict = buf;
      v98 = *&buf[8];
      v99 = 0xAAAAAAAAAAAAAAAALL;
      xpc::array::object_proxy::operator xpc::dict(&p_xdict, &v99);
      value = xpc_dictionary_get_value(v99, "kWCMCellularSetAntBlocking_ClientId");
      p_xdict = value;
      if (value)
      {
        xpc_retain(value);
      }

      else
      {
        p_xdict = xpc_null_create();
      }

      v24 = xpc::dyn_cast_or_default(&p_xdict, 0);
      ctu::cf::insert<__CFString const*,unsigned int>(v22, v82, v24, v9);
      xpc_release(p_xdict);
      v25 = xpc_dictionary_get_value(v99, "kWCMCellularSetAntBlocking_BlockVoice");
      p_xdict = v25;
      if (v25)
      {
        xpc_retain(v25);
      }

      else
      {
        p_xdict = xpc_null_create();
      }

      v26 = xpc::dyn_cast_or_default(&p_xdict, 0);
      ctu::cf::insert<__CFString const*,BOOL>(v22, v81, v26);
      xpc_release(p_xdict);
      v27 = xpc_dictionary_get_value(v99, "kWCMCellularSetAntBlocking_TimeMultiplier");
      p_xdict = v27;
      if (v27)
      {
        xpc_retain(v27);
      }

      else
      {
        p_xdict = xpc_null_create();
      }

      v28 = xpc::dyn_cast_or_default(&p_xdict, 0);
      ctu::cf::insert<__CFString const*,unsigned int>(v22, v80, v28, v9);
      xpc_release(p_xdict);
      v96 = 0xAAAAAAAAAAAAAAAALL;
      p_xdict = &v99;
      v98 = "kWCMCellularSetAntBlocking_BandInformationSet";
      xpc::dict::object_proxy::operator xpc::array(&p_xdict, &v96);
      if (MEMORY[0x29C272BA0](v96) == v13)
      {
        v95 = 0;
        v29 = CFArrayCreateMutable(v9, 0, MEMORY[0x29EDB9000]);
        if (v29)
        {
          v95 = v29;
        }

        v30 = v96;
        if (v96)
        {
          xpc_retain(v96);
          goto LABEL_43;
        }

        v30 = xpc_null_create();
        if (v30)
        {
LABEL_43:
          xpc_retain(v30);
          v31 = v30;
        }

        else
        {
          v30 = xpc_null_create();
          v31 = 0;
        }

        xpc_release(v31);
        v32 = 0;
        while (2)
        {
          v34 = v96;
          if (v96)
          {
            xpc_retain(v96);
          }

          else
          {
            v34 = xpc_null_create();
          }

          if (MEMORY[0x29C272BA0](v96) == v13)
          {
            v35 = xpc_array_get_count(v96);
            if (!v34)
            {
              goto LABEL_54;
            }

LABEL_52:
            xpc_retain(v34);
            v36 = v34;
          }

          else
          {
            v35 = 0;
            if (v34)
            {
              goto LABEL_52;
            }

LABEL_54:
            v36 = xpc_null_create();
          }

          xpc_release(v34);
          xpc_release(v36);
          if (v32 == v35 && v30 == v36)
          {
            xpc_release(v30);
            v58 = v95;
            v22 = v100;
            ctu::cf::insert<__CFString const*,__CFArray *>(v100, v79, v95);
            if (v58)
            {
              CFRelease(v58);
            }

            goto LABEL_111;
          }

          cf = 0;
          v37 = CFDictionaryCreateMutable(v9, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
          if (v37)
          {
            cf = v37;
          }

          xdict = 0xAAAAAAAAAAAAAAAALL;
          v38 = xpc_array_get_value(v30, v32);
          v39 = v38;
          if (v38)
          {
            xpc_retain(v38);
            xdict = v39;
            goto LABEL_62;
          }

          v39 = xpc_null_create();
          xdict = v39;
          if (v39)
          {
LABEL_62:
            if (MEMORY[0x29C272BA0](v39) != v7)
            {
              v40 = xpc_null_create();
              goto LABEL_66;
            }

            xpc_retain(v39);
          }

          else
          {
            v40 = xpc_null_create();
            v39 = 0;
LABEL_66:
            xdict = v40;
          }

          xpc_release(v39);
          if (MEMORY[0x29C272BA0](xdict) != v7)
          {
            v41 = cf;
            goto LABEL_102;
          }

          v42 = xpc_dictionary_get_value(xdict, "kWCMCellularSetAntBlocking_BandInfoSet_AntNum");
          p_xdict = v42;
          if (v42)
          {
            xpc_retain(v42);
          }

          else
          {
            p_xdict = xpc_null_create();
          }

          v43 = xpc::dyn_cast_or_default(&p_xdict, 0);
          xpc_release(p_xdict);
          v41 = cf;
          ctu::cf::insert<__CFString const*,unsigned char>(cf, v84, v43, v9);
          object = 0xAAAAAAAAAAAAAAAALL;
          p_xdict = &xdict;
          v98 = "kWCMCellularSetAntBlocking_BandInfoSet_BandList";
          xpc::dict::object_proxy::operator xpc::array(&p_xdict, &object);
          if (MEMORY[0x29C272BA0](object) != v13)
          {
            goto LABEL_101;
          }

          v91 = 0;
          v44 = CFArrayCreateMutable(v9, 0, MEMORY[0x29EDB9000]);
          if (v44)
          {
            v91 = v44;
          }

          v45 = object;
          if (object)
          {
            xpc_retain(object);
            goto LABEL_78;
          }

          v45 = xpc_null_create();
          if (v45)
          {
LABEL_78:
            xpc_retain(v45);
            v46 = v45;
          }

          else
          {
            v45 = xpc_null_create();
            v46 = 0;
          }

          xpc_release(v46);
          v47 = 0;
LABEL_82:
          v49 = object;
          if (object)
          {
            xpc_retain(object);
          }

          else
          {
            v49 = xpc_null_create();
          }

          if (MEMORY[0x29C272BA0](object) == v13)
          {
            v50 = xpc_array_get_count(object);
            if (!v49)
            {
              goto LABEL_89;
            }

LABEL_87:
            xpc_retain(v49);
            v51 = v49;
          }

          else
          {
            v50 = 0;
            if (v49)
            {
              goto LABEL_87;
            }

LABEL_89:
            v51 = xpc_null_create();
          }

          xpc_release(v49);
          xpc_release(v51);
          if (v47 == v50 && v45 == v51)
          {
            xpc_release(v45);
            v56 = v91;
            v41 = cf;
            ctu::cf::insert<__CFString const*,__CFArray *>(cf, v83, v91);
            if (v56)
            {
              CFRelease(v56);
            }

LABEL_101:
            xpc_release(object);
LABEL_102:
            v57 = v95;
            p_xdict = v41;
            if (v41)
            {
              CFRetain(v41);
              CFArrayAppendValue(v57, v41);
              CFRelease(v41);
            }

            xpc_release(xdict);
            if (cf)
            {
              CFRelease(cf);
            }

            if (v30)
            {
              xpc_retain(v30);
              v33 = v30;
            }

            else
            {
              v33 = xpc_null_create();
            }

            ++v32;
            xpc_release(v33);
            continue;
          }

          break;
        }

        v52 = xpc_array_get_value(v45, v47);
        v90 = v52;
        if (v52)
        {
          xpc_retain(v52);
        }

        else
        {
          v90 = xpc_null_create();
        }

        v53 = xpc::dyn_cast_or_default(&v90, 0);
        v54 = v91;
        valuePtr = v53;
        v55 = CFNumberCreate(v9, kCFNumberIntType, &valuePtr);
        p_xdict = v55;
        if (v55)
        {
          CFArrayAppendValue(v54, v55);
          CFRelease(v55);
        }

        xpc_release(v90);
        if (v45)
        {
          xpc_retain(v45);
          v48 = v45;
        }

        else
        {
          v48 = xpc_null_create();
        }

        ++v47;
        xpc_release(v48);
        goto LABEL_82;
      }

LABEL_111:
      v59 = v101;
      p_xdict = v22;
      if (v22)
      {
        CFRetain(v22);
        CFArrayAppendValue(v59, v22);
        CFRelease(v22);
      }

      xpc_release(v96);
      xpc_release(v99);
      if (v22)
      {
        CFRelease(v22);
      }

      v60 = *buf;
      if (*buf)
      {
        xpc_retain(*buf);
      }

      else
      {
        v60 = xpc_null_create();
      }

      ++*&buf[8];
      xpc_release(v60);
    }
  }

  p_xdict = 0;
  v62 = CFDictionaryCreateMutable(v9, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v63 = v62;
  if (v62)
  {
    p_xdict = v62;
  }

  ctu::cf::insert<__CFString const*,__CFDictionary *>(v62, *MEMORY[0x29EDC8880], v11);
  v64 = v78[4];
  if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = v63;
    _os_log_impl(&dword_297476000, v64, OS_LOG_TYPE_DEFAULT, "#I Setting Client Ant blocking with: %@", buf, 0xCu);
  }

  v66 = *v78;
  v65 = v78[1];
  *buf = *v78;
  if (!v65 || (v67 = std::__shared_weak_count::lock(v65), (*&buf[8] = v67) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v68 = v67;
  v69 = v78[5];
  if (v63 && (v70 = CFGetTypeID(v63), v70 == CFDictionaryGetTypeID()))
  {
    v89 = v63;
    CFRetain(v63);
  }

  else
  {
    v89 = 0;
  }

  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN4coex6Module5State31handleSetClientAntBlocking_syncEN3xpc4dictENS_5SubIdE_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_216;
  aBlock[4] = v78;
  aBlock[5] = v66;
  v86 = v68;
  atomic_fetch_add_explicit(&v68->__shared_owners_, 1uLL, memory_order_relaxed);
  v71 = _Block_copy(aBlock);
  v72 = v78[2];
  if (v72)
  {
    dispatch_retain(v78[2]);
  }

  if (v71)
  {
    v87 = _Block_copy(v71);
    v88 = v72;
    if (!v72)
    {
      goto LABEL_135;
    }

    goto LABEL_134;
  }

  v87 = 0;
  v88 = v72;
  if (v72)
  {
LABEL_134:
    dispatch_retain(v72);
  }

LABEL_135:
  (*(*v69 + 16))(v69, &v89, v77, &v87);
  if (v88)
  {
    dispatch_release(v88);
  }

  if (v87)
  {
    _Block_release(v87);
  }

  if (v72)
  {
    dispatch_release(v72);
  }

  if (v71)
  {
    _Block_release(v71);
  }

  if (v89)
  {
    CFRelease(v89);
  }

  v73 = v86;
  if (v86 && !atomic_fetch_add(&v86->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v73->__on_zero_shared)(v73);
    std::__shared_weak_count::__release_weak(v73);
  }

  v74 = *&buf[8];
  if (!*&buf[8] || atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    v75 = p_xdict;
    if (!p_xdict)
    {
      goto LABEL_152;
    }

    goto LABEL_151;
  }

  (v74->__on_zero_shared)(v74);
  std::__shared_weak_count::__release_weak(v74);
  v75 = p_xdict;
  if (p_xdict)
  {
LABEL_151:
    CFRelease(v75);
  }

LABEL_152:
  xpc_release(v102);
  if (v103)
  {
    CFRelease(v103);
  }

LABEL_154:
  v76 = *MEMORY[0x29EDCA608];
}

void sub_2974A17AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, char a27, xpc_object_t a28, char a29, xpc_object_t object, xpc_object_t a31, char a32, int a33, __int16 a34, char a35, char a36)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void ___ZN4coex6Module5State31handleSetClientAntBlocking_syncEN3xpc4dictENS_5SubIdE_block_invoke(uint64_t a1, uint64_t *a2)
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
      _os_log_impl(&dword_297476000, v3, OS_LOG_TYPE_DEFAULT, "#E Failed to set Ant blocking: %@", &v5, 0xCu);
    }
  }

  v4 = *MEMORY[0x29EDCA608];
}

void coex::Module::State::handleSetClientAntBlockingExtended_sync(uint64_t *a1, void *a2, unsigned int a3)
{
  v106 = *MEMORY[0x29EDCA608];
  v6 = MEMORY[0x29C272BA0](*a2);
  v7 = MEMORY[0x29EDCAA00];
  if (v6 != MEMORY[0x29EDCAA00])
  {
    v8 = a1[4];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_297476000, v8, OS_LOG_TYPE_ERROR, "Invalid XPC dict", buf, 2u);
    }

    goto LABEL_154;
  }

  v77 = a3;
  v103 = 0;
  v9 = *MEMORY[0x29EDB8ED8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v11 = Mutable;
  if (Mutable)
  {
    v103 = Mutable;
  }

  v102 = 0xAAAAAAAAAAAAAAAALL;
  *buf = a2;
  *&buf[8] = "kWCMCellularSetAntBlocking_ClientInformationSet";
  xpc::dict::object_proxy::operator xpc::array(buf, &v102);
  v78 = a1;
  v12 = MEMORY[0x29C272BA0](v102);
  v13 = MEMORY[0x29EDCA9E0];
  if (v12 == MEMORY[0x29EDCA9E0])
  {
    v101 = 0;
    v14 = CFArrayCreateMutable(v9, 0, MEMORY[0x29EDB9000]);
    if (v14)
    {
      v101 = v14;
    }

    memset(buf, 170, sizeof(buf));
    v15 = v102;
    if (v102)
    {
      xpc_retain(v102);
      *buf = v15;
    }

    else
    {
      v15 = xpc_null_create();
      *buf = v15;
      if (!v15)
      {
        v15 = 0;
        *buf = xpc_null_create();
        goto LABEL_13;
      }
    }

    xpc_retain(v15);
LABEL_13:
    *&buf[8] = 0;
    xpc_release(v15);
    v81 = *MEMORY[0x29EDC8898];
    v82 = *MEMORY[0x29EDC8820];
    v80 = *MEMORY[0x29EDC89B0];
    v84 = *MEMORY[0x29EDC87C0];
    v83 = *MEMORY[0x29EDC8818];
    v79 = *MEMORY[0x29EDC89A8];
    while (1)
    {
      v16 = v102;
      if (v102)
      {
        xpc_retain(v102);
      }

      else
      {
        v16 = xpc_null_create();
      }

      if (MEMORY[0x29C272BA0](v102) == v13)
      {
        count = xpc_array_get_count(v102);
        if (!v16)
        {
LABEL_23:
          v18 = xpc_null_create();
          goto LABEL_24;
        }
      }

      else
      {
        count = 0;
        if (!v16)
        {
          goto LABEL_23;
        }
      }

      xpc_retain(v16);
      v18 = v16;
LABEL_24:
      xpc_release(v16);
      v19 = *buf;
      v20 = *&buf[8];
      xpc_release(v18);
      if (v20 == count && v19 == v18)
      {
        xpc_release(*buf);
        v61 = v101;
        v11 = v103;
        ctu::cf::insert<__CFString const*,__CFArray *>(v103, *MEMORY[0x29EDC8AA0], v101);
        if (v61)
        {
          CFRelease(v61);
        }

        break;
      }

      v100 = 0;
      v21 = CFDictionaryCreateMutable(v9, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
      v22 = v21;
      if (v21)
      {
        v100 = v21;
      }

      p_xdict = buf;
      v98 = *&buf[8];
      v99 = 0xAAAAAAAAAAAAAAAALL;
      xpc::array::object_proxy::operator xpc::dict(&p_xdict, &v99);
      value = xpc_dictionary_get_value(v99, "kWCMCellularSetAntBlocking_ClientId");
      p_xdict = value;
      if (value)
      {
        xpc_retain(value);
      }

      else
      {
        p_xdict = xpc_null_create();
      }

      v24 = xpc::dyn_cast_or_default(&p_xdict, 0);
      ctu::cf::insert<__CFString const*,unsigned int>(v22, v82, v24, v9);
      xpc_release(p_xdict);
      v25 = xpc_dictionary_get_value(v99, "kWCMCellularSetAntBlocking_BlockVoice");
      p_xdict = v25;
      if (v25)
      {
        xpc_retain(v25);
      }

      else
      {
        p_xdict = xpc_null_create();
      }

      v26 = xpc::dyn_cast_or_default(&p_xdict, 0);
      ctu::cf::insert<__CFString const*,BOOL>(v22, v81, v26);
      xpc_release(p_xdict);
      v27 = xpc_dictionary_get_value(v99, "kWCMCellularSetAntBlocking_TimeMultiplier");
      p_xdict = v27;
      if (v27)
      {
        xpc_retain(v27);
      }

      else
      {
        p_xdict = xpc_null_create();
      }

      v28 = xpc::dyn_cast_or_default(&p_xdict, 0);
      ctu::cf::insert<__CFString const*,unsigned int>(v22, v80, v28, v9);
      xpc_release(p_xdict);
      v96 = 0xAAAAAAAAAAAAAAAALL;
      p_xdict = &v99;
      v98 = "kWCMCellularSetAntBlocking_BandInformationSet";
      xpc::dict::object_proxy::operator xpc::array(&p_xdict, &v96);
      if (MEMORY[0x29C272BA0](v96) == v13)
      {
        v95 = 0;
        v29 = CFArrayCreateMutable(v9, 0, MEMORY[0x29EDB9000]);
        if (v29)
        {
          v95 = v29;
        }

        v30 = v96;
        if (v96)
        {
          xpc_retain(v96);
          goto LABEL_43;
        }

        v30 = xpc_null_create();
        if (v30)
        {
LABEL_43:
          xpc_retain(v30);
          v31 = v30;
        }

        else
        {
          v30 = xpc_null_create();
          v31 = 0;
        }

        xpc_release(v31);
        v32 = 0;
        while (2)
        {
          v34 = v96;
          if (v96)
          {
            xpc_retain(v96);
          }

          else
          {
            v34 = xpc_null_create();
          }

          if (MEMORY[0x29C272BA0](v96) == v13)
          {
            v35 = xpc_array_get_count(v96);
            if (!v34)
            {
              goto LABEL_54;
            }

LABEL_52:
            xpc_retain(v34);
            v36 = v34;
          }

          else
          {
            v35 = 0;
            if (v34)
            {
              goto LABEL_52;
            }

LABEL_54:
            v36 = xpc_null_create();
          }

          xpc_release(v34);
          xpc_release(v36);
          if (v32 == v35 && v30 == v36)
          {
            xpc_release(v30);
            v58 = v95;
            v22 = v100;
            ctu::cf::insert<__CFString const*,__CFArray *>(v100, v79, v95);
            if (v58)
            {
              CFRelease(v58);
            }

            goto LABEL_111;
          }

          cf = 0;
          v37 = CFDictionaryCreateMutable(v9, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
          if (v37)
          {
            cf = v37;
          }

          xdict = 0xAAAAAAAAAAAAAAAALL;
          v38 = xpc_array_get_value(v30, v32);
          v39 = v38;
          if (v38)
          {
            xpc_retain(v38);
            xdict = v39;
            goto LABEL_62;
          }

          v39 = xpc_null_create();
          xdict = v39;
          if (v39)
          {
LABEL_62:
            if (MEMORY[0x29C272BA0](v39) != v7)
            {
              v40 = xpc_null_create();
              goto LABEL_66;
            }

            xpc_retain(v39);
          }

          else
          {
            v40 = xpc_null_create();
            v39 = 0;
LABEL_66:
            xdict = v40;
          }

          xpc_release(v39);
          if (MEMORY[0x29C272BA0](xdict) != v7)
          {
            v41 = cf;
            goto LABEL_102;
          }

          v42 = xpc_dictionary_get_value(xdict, "kWCMCellularSetAntBlocking_BandInfoSet_AntNum");
          p_xdict = v42;
          if (v42)
          {
            xpc_retain(v42);
          }

          else
          {
            p_xdict = xpc_null_create();
          }

          v43 = xpc::dyn_cast_or_default(&p_xdict, 0);
          xpc_release(p_xdict);
          v41 = cf;
          ctu::cf::insert<__CFString const*,unsigned char>(cf, v84, v43, v9);
          object = 0xAAAAAAAAAAAAAAAALL;
          p_xdict = &xdict;
          v98 = "kWCMCellularSetAntBlocking_BandInfoSet_BandList";
          xpc::dict::object_proxy::operator xpc::array(&p_xdict, &object);
          if (MEMORY[0x29C272BA0](object) != v13)
          {
            goto LABEL_101;
          }

          v91 = 0;
          v44 = CFArrayCreateMutable(v9, 0, MEMORY[0x29EDB9000]);
          if (v44)
          {
            v91 = v44;
          }

          v45 = object;
          if (object)
          {
            xpc_retain(object);
            goto LABEL_78;
          }

          v45 = xpc_null_create();
          if (v45)
          {
LABEL_78:
            xpc_retain(v45);
            v46 = v45;
          }

          else
          {
            v45 = xpc_null_create();
            v46 = 0;
          }

          xpc_release(v46);
          v47 = 0;
LABEL_82:
          v49 = object;
          if (object)
          {
            xpc_retain(object);
          }

          else
          {
            v49 = xpc_null_create();
          }

          if (MEMORY[0x29C272BA0](object) == v13)
          {
            v50 = xpc_array_get_count(object);
            if (!v49)
            {
              goto LABEL_89;
            }

LABEL_87:
            xpc_retain(v49);
            v51 = v49;
          }

          else
          {
            v50 = 0;
            if (v49)
            {
              goto LABEL_87;
            }

LABEL_89:
            v51 = xpc_null_create();
          }

          xpc_release(v49);
          xpc_release(v51);
          if (v47 == v50 && v45 == v51)
          {
            xpc_release(v45);
            v56 = v91;
            v41 = cf;
            ctu::cf::insert<__CFString const*,__CFArray *>(cf, v83, v91);
            if (v56)
            {
              CFRelease(v56);
            }

LABEL_101:
            xpc_release(object);
LABEL_102:
            v57 = v95;
            p_xdict = v41;
            if (v41)
            {
              CFRetain(v41);
              CFArrayAppendValue(v57, v41);
              CFRelease(v41);
            }

            xpc_release(xdict);
            if (cf)
            {
              CFRelease(cf);
            }

            if (v30)
            {
              xpc_retain(v30);
              v33 = v30;
            }

            else
            {
              v33 = xpc_null_create();
            }

            ++v32;
            xpc_release(v33);
            continue;
          }

          break;
        }

        v52 = xpc_array_get_value(v45, v47);
        v90 = v52;
        if (v52)
        {
          xpc_retain(v52);
        }

        else
        {
          v90 = xpc_null_create();
        }

        v53 = xpc::dyn_cast_or_default(&v90, 0);
        v54 = v91;
        valuePtr = v53;
        v55 = CFNumberCreate(v9, kCFNumberIntType, &valuePtr);
        p_xdict = v55;
        if (v55)
        {
          CFArrayAppendValue(v54, v55);
          CFRelease(v55);
        }

        xpc_release(v90);
        if (v45)
        {
          xpc_retain(v45);
          v48 = v45;
        }

        else
        {
          v48 = xpc_null_create();
        }

        ++v47;
        xpc_release(v48);
        goto LABEL_82;
      }

LABEL_111:
      v59 = v101;
      p_xdict = v22;
      if (v22)
      {
        CFRetain(v22);
        CFArrayAppendValue(v59, v22);
        CFRelease(v22);
      }

      xpc_release(v96);
      xpc_release(v99);
      if (v22)
      {
        CFRelease(v22);
      }

      v60 = *buf;
      if (*buf)
      {
        xpc_retain(*buf);
      }

      else
      {
        v60 = xpc_null_create();
      }

      ++*&buf[8];
      xpc_release(v60);
    }
  }

  p_xdict = 0;
  v62 = CFDictionaryCreateMutable(v9, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v63 = v62;
  if (v62)
  {
    p_xdict = v62;
  }

  ctu::cf::insert<__CFString const*,__CFDictionary *>(v62, *MEMORY[0x29EDC8A58], v11);
  v64 = v78[4];
  if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = v63;
    _os_log_impl(&dword_297476000, v64, OS_LOG_TYPE_DEFAULT, "#I Setting Client Ant blocking Extended with: %@ ", buf, 0xCu);
  }

  v66 = *v78;
  v65 = v78[1];
  *buf = *v78;
  if (!v65 || (v67 = std::__shared_weak_count::lock(v65), (*&buf[8] = v67) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v68 = v67;
  v69 = v78[5];
  if (v63 && (v70 = CFGetTypeID(v63), v70 == CFDictionaryGetTypeID()))
  {
    v89 = v63;
    CFRetain(v63);
  }

  else
  {
    v89 = 0;
  }

  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN4coex6Module5State39handleSetClientAntBlockingExtended_syncEN3xpc4dictENS_5SubIdE_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_219;
  aBlock[4] = v78;
  aBlock[5] = v66;
  v86 = v68;
  atomic_fetch_add_explicit(&v68->__shared_owners_, 1uLL, memory_order_relaxed);
  v71 = _Block_copy(aBlock);
  v72 = v78[2];
  if (v72)
  {
    dispatch_retain(v78[2]);
  }

  if (v71)
  {
    v87 = _Block_copy(v71);
    v88 = v72;
    if (!v72)
    {
      goto LABEL_135;
    }

    goto LABEL_134;
  }

  v87 = 0;
  v88 = v72;
  if (v72)
  {
LABEL_134:
    dispatch_retain(v72);
  }

LABEL_135:
  (*(*v69 + 16))(v69, &v89, v77, &v87);
  if (v88)
  {
    dispatch_release(v88);
  }

  if (v87)
  {
    _Block_release(v87);
  }

  if (v72)
  {
    dispatch_release(v72);
  }

  if (v71)
  {
    _Block_release(v71);
  }

  if (v89)
  {
    CFRelease(v89);
  }

  v73 = v86;
  if (v86 && !atomic_fetch_add(&v86->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v73->__on_zero_shared)(v73);
    std::__shared_weak_count::__release_weak(v73);
  }

  v74 = *&buf[8];
  if (!*&buf[8] || atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    v75 = p_xdict;
    if (!p_xdict)
    {
      goto LABEL_152;
    }

    goto LABEL_151;
  }

  (v74->__on_zero_shared)(v74);
  std::__shared_weak_count::__release_weak(v74);
  v75 = p_xdict;
  if (p_xdict)
  {
LABEL_151:
    CFRelease(v75);
  }

LABEL_152:
  xpc_release(v102);
  if (v103)
  {
    CFRelease(v103);
  }

LABEL_154:
  v76 = *MEMORY[0x29EDCA608];
}

void sub_2974A2784(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, char a27, xpc_object_t a28, char a29, xpc_object_t object, xpc_object_t a31, char a32, int a33, __int16 a34, char a35, char a36)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void ___ZN4coex6Module5State39handleSetClientAntBlockingExtended_syncEN3xpc4dictENS_5SubIdE_block_invoke(uint64_t a1, uint64_t *a2)
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
      _os_log_impl(&dword_297476000, v3, OS_LOG_TYPE_DEFAULT, "#E Failed to set Ant blocking Extended: %@", &v5, 0xCu);
    }
  }

  v4 = *MEMORY[0x29EDCA608];
}

void coex::Module::State::handleTriggerAntennaBlocking_sync(uint64_t *a1, xpc_object_t *a2, uint64_t a3)
{
  v39 = *MEMORY[0x29EDCA608];
  if (MEMORY[0x29C272BA0](*a2) != MEMORY[0x29EDCAA00])
  {
    v6 = a1[4];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf) = 0;
      _os_log_debug_impl(&dword_297476000, v6, OS_LOG_TYPE_DEBUG, "#D Invalid XPC dict", &buf, 2u);
    }

    goto LABEL_51;
  }

  v37 = 0;
  v7 = *MEMORY[0x29EDB8ED8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v9 = Mutable;
  if (Mutable)
  {
    v37 = Mutable;
  }

  value = xpc_dictionary_get_value(*a2, "kWCMCellularTriggerClientAntBlockingReq_Enable");
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
  ctu::cf::insert<__CFString const*,BOOL>(v9, *MEMORY[0x29EDC8998], v11);
  xpc_release(buf);
  v12 = xpc_dictionary_get_value(*a2, "kWCMCellularTriggerClientAntBlockingReq_ClientID");
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
  ctu::cf::insert<__CFString const*,unsigned int>(v9, *MEMORY[0x29EDC8A08], v13, v7);
  xpc_release(buf);
  if (xpc_dictionary_get_value(*a2, "kWCMCellularTriggerClientAntBlockingReq_Duration"))
  {
    v14 = xpc_dictionary_get_value(*a2, "kWCMCellularTriggerClientAntBlockingReq_Duration");
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
    ctu::cf::insert<__CFString const*,unsigned int>(v9, *MEMORY[0x29EDC8A10], v15, v7);
    xpc_release(buf);
  }

  v36 = 0;
  v16 = CFDictionaryCreateMutable(v7, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v17 = v16;
  if (v16)
  {
    v36 = v16;
  }

  ctu::cf::insert<__CFString const*,__CFDictionary *>(v16, *MEMORY[0x29EDC8808], v9);
  v18 = a1[4];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v17;
    _os_log_impl(&dword_297476000, v18, OS_LOG_TYPE_DEFAULT, "#I Triggering client antenna blocking with params: %@", &buf, 0xCu);
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
  v31[2] = ___ZN4coex6Module5State33handleTriggerAntennaBlocking_syncEN3xpc4dictENS_5SubIdE_block_invoke;
  v31[3] = &__block_descriptor_tmp_225;
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
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  aBlock = 0;
  object = v26;
  if (v26)
  {
LABEL_31:
    dispatch_retain(v26);
  }

LABEL_32:
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
      goto LABEL_49;
    }

    goto LABEL_48;
  }

  (v28->__on_zero_shared)(v28);
  std::__shared_weak_count::__release_weak(v28);
  v29 = v36;
  if (v36)
  {
LABEL_48:
    CFRelease(v29);
  }

LABEL_49:
  if (v37)
  {
    CFRelease(v37);
  }

LABEL_51:
  v30 = *MEMORY[0x29EDCA608];
}

void sub_2974A3060(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, char a18, int a19, __int16 a20, char a21, char a22, int a23, __int16 a24, char a25, char a26, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void ___ZN4coex6Module5State33handleTriggerAntennaBlocking_syncEN3xpc4dictENS_5SubIdE_block_invoke(uint64_t a1, uint64_t *a2)
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
      _os_log_impl(&dword_297476000, v3, OS_LOG_TYPE_DEFAULT, "#E Failed to trigger antenna blocking: %@", &v5, 0xCu);
    }
  }

  v4 = *MEMORY[0x29EDCA608];
}

void coex::Module::State::handleSetCC1_sync(uint64_t *a1, xpc_object_t *a2, uint64_t a3)
{
  v44 = *MEMORY[0x29EDCA608];
  if (MEMORY[0x29C272BA0](*a2) != MEMORY[0x29EDCAA00])
  {
    v6 = a1[4];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf) = 0;
      _os_log_debug_impl(&dword_297476000, v6, OS_LOG_TYPE_DEBUG, "#D Invalid XPC dict", &buf, 2u);
    }

    goto LABEL_60;
  }

  v42 = 0;
  v7 = *MEMORY[0x29EDB8ED8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v9 = Mutable;
  if (Mutable)
  {
    v42 = Mutable;
  }

  value = xpc_dictionary_get_value(*a2, "kWCMCellularSetCC_Enable");
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
  ctu::cf::insert<__CFString const*,BOOL>(v9, *MEMORY[0x29EDC8660], v11);
  xpc_release(buf);
  v12 = xpc_dictionary_get_value(*a2, "kWCMCellularSetCC_CoexTech");
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
  ctu::cf::insert<__CFString const*,unsigned char>(v9, *MEMORY[0x29EDC8638], v13, v7);
  xpc_release(buf);
  *&buf = xpc_int64_create(a3);
  if (!buf)
  {
    *&buf = xpc_null_create();
  }

  v14 = xpc::dyn_cast_or_default(&buf, 0);
  ctu::cf::insert<__CFString const*,unsigned int>(v9, *MEMORY[0x29EDC8710], v14, v7);
  xpc_release(buf);
  v15 = xpc_dictionary_get_value(*a2, "kWCMCellularSetCC_CarrierId");
  *&buf = v15;
  if (v15)
  {
    xpc_retain(v15);
  }

  else
  {
    *&buf = xpc_null_create();
  }

  v16 = xpc::dyn_cast_or_default(&buf, 0);
  ctu::cf::insert<__CFString const*,unsigned char>(v9, *MEMORY[0x29EDC8668], v16, v7);
  xpc_release(buf);
  if (xpc_dictionary_get_value(*a2, "kWCMCellularSetCC_CenterFrequency") && xpc_dictionary_get_value(*a2, "kWCMCellularSetCC_Bandwidth"))
  {
    v17 = xpc_dictionary_get_value(*a2, "kWCMCellularSetCC_CenterFrequency");
    *&buf = v17;
    if (v17)
    {
      xpc_retain(v17);
    }

    else
    {
      *&buf = xpc_null_create();
    }

    v18 = xpc::dyn_cast_or_default(&buf, 0);
    ctu::cf::insert<__CFString const*,unsigned int>(v9, *MEMORY[0x29EDC8778], v18, v7);
    xpc_release(buf);
    v19 = xpc_dictionary_get_value(*a2, "kWCMCellularSetCC_Bandwidth");
    *&buf = v19;
    if (v19)
    {
      xpc_retain(v19);
    }

    else
    {
      *&buf = xpc_null_create();
    }

    v20 = xpc::dyn_cast_or_default(&buf, 0);
    ctu::cf::insert<__CFString const*,unsigned int>(v9, *MEMORY[0x29EDC8658], v20, v7);
    xpc_release(buf);
  }

  v41 = 0;
  v21 = CFDictionaryCreateMutable(v7, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v22 = v21;
  if (v21)
  {
    v41 = v21;
  }

  ctu::cf::insert<__CFString const*,__CFDictionary *>(v21, *MEMORY[0x29EDC8678], v9);
  v23 = a1[4];
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v22;
    _os_log_impl(&dword_297476000, v23, OS_LOG_TYPE_DEFAULT, "#I Setting CC1 with: %@", &buf, 0xCu);
  }

  v25 = *a1;
  v24 = a1[1];
  *&buf = *a1;
  if (!v24 || (v26 = std::__shared_weak_count::lock(v24), (*(&buf + 1) = v26) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v27 = v26;
  v28 = a1[5];
  if (v22 && (v29 = CFGetTypeID(v22), v29 == CFDictionaryGetTypeID()))
  {
    cf = v22;
    CFRetain(v22);
  }

  else
  {
    cf = 0;
  }

  v36[0] = MEMORY[0x29EDCA5F8];
  v36[1] = 1174405120;
  v36[2] = ___ZN4coex6Module5State17handleSetCC1_syncEN3xpc4dictENS_5SubIdE_block_invoke;
  v36[3] = &__block_descriptor_tmp_233;
  v36[4] = a1;
  v36[5] = v25;
  v37 = v27;
  atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
  v30 = _Block_copy(v36);
  v31 = a1[2];
  if (v31)
  {
    dispatch_retain(v31);
  }

  if (v30)
  {
    aBlock = _Block_copy(v30);
    object = v31;
    if (!v31)
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

  aBlock = 0;
  object = v31;
  if (v31)
  {
LABEL_40:
    dispatch_retain(v31);
  }

LABEL_41:
  (*(*v28 + 16))(v28, &cf, a3, &aBlock);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v31)
  {
    dispatch_release(v31);
  }

  if (v30)
  {
    _Block_release(v30);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  v32 = v37;
  if (v37 && !atomic_fetch_add(&v37->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v32->__on_zero_shared)(v32);
    std::__shared_weak_count::__release_weak(v32);
  }

  v33 = *(&buf + 1);
  if (!*(&buf + 1) || atomic_fetch_add((*(&buf + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    v34 = v41;
    if (!v41)
    {
      goto LABEL_58;
    }

    goto LABEL_57;
  }

  (v33->__on_zero_shared)(v33);
  std::__shared_weak_count::__release_weak(v33);
  v34 = v41;
  if (v41)
  {
LABEL_57:
    CFRelease(v34);
  }

LABEL_58:
  if (v42)
  {
    CFRelease(v42);
  }

LABEL_60:
  v35 = *MEMORY[0x29EDCA608];
}

void sub_2974A37E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, char a18, int a19, __int16 a20, char a21, char a22, int a23, __int16 a24, char a25, char a26, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void ___ZN4coex6Module5State17handleSetCC1_syncEN3xpc4dictENS_5SubIdE_block_invoke(uint64_t a1, uint64_t *a2)
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
      _os_log_impl(&dword_297476000, v3, OS_LOG_TYPE_DEFAULT, "#E Failed to set CC1: %@", &v5, 0xCu);
    }
  }

  v4 = *MEMORY[0x29EDCA608];
}

void coex::Module::State::handleSetCC2_sync(uint64_t *a1, xpc_object_t *a2, uint64_t a3)
{
  v44 = *MEMORY[0x29EDCA608];
  if (MEMORY[0x29C272BA0](*a2) != MEMORY[0x29EDCAA00])
  {
    v6 = a1[4];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf) = 0;
      _os_log_debug_impl(&dword_297476000, v6, OS_LOG_TYPE_DEBUG, "#D Invalid XPC dict", &buf, 2u);
    }

    goto LABEL_60;
  }

  v42 = 0;
  v7 = *MEMORY[0x29EDB8ED8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v9 = Mutable;
  if (Mutable)
  {
    v42 = Mutable;
  }

  value = xpc_dictionary_get_value(*a2, "kWCMCellularSetCC_Enable");
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
  ctu::cf::insert<__CFString const*,BOOL>(v9, *MEMORY[0x29EDC8660], v11);
  xpc_release(buf);
  v12 = xpc_dictionary_get_value(*a2, "kWCMCellularSetCC_CoexTech");
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
  ctu::cf::insert<__CFString const*,unsigned char>(v9, *MEMORY[0x29EDC8638], v13, v7);
  xpc_release(buf);
  *&buf = xpc_int64_create(a3);
  if (!buf)
  {
    *&buf = xpc_null_create();
  }

  v14 = xpc::dyn_cast_or_default(&buf, 0);
  ctu::cf::insert<__CFString const*,unsigned int>(v9, *MEMORY[0x29EDC8710], v14, v7);
  xpc_release(buf);
  v15 = xpc_dictionary_get_value(*a2, "kWCMCellularSetCC_CarrierId");
  *&buf = v15;
  if (v15)
  {
    xpc_retain(v15);
  }

  else
  {
    *&buf = xpc_null_create();
  }

  v16 = xpc::dyn_cast_or_default(&buf, 0);
  ctu::cf::insert<__CFString const*,unsigned char>(v9, *MEMORY[0x29EDC8668], v16, v7);
  xpc_release(buf);
  if (xpc_dictionary_get_value(*a2, "kWCMCellularSetCC_CenterFrequency") && xpc_dictionary_get_value(*a2, "kWCMCellularSetCC_Bandwidth"))
  {
    v17 = xpc_dictionary_get_value(*a2, "kWCMCellularSetCC_CenterFrequency");
    *&buf = v17;
    if (v17)
    {
      xpc_retain(v17);
    }

    else
    {
      *&buf = xpc_null_create();
    }

    v18 = xpc::dyn_cast_or_default(&buf, 0);
    ctu::cf::insert<__CFString const*,unsigned int>(v9, *MEMORY[0x29EDC8778], v18, v7);
    xpc_release(buf);
    v19 = xpc_dictionary_get_value(*a2, "kWCMCellularSetCC_Bandwidth");
    *&buf = v19;
    if (v19)
    {
      xpc_retain(v19);
    }

    else
    {
      *&buf = xpc_null_create();
    }

    v20 = xpc::dyn_cast_or_default(&buf, 0);
    ctu::cf::insert<__CFString const*,unsigned int>(v9, *MEMORY[0x29EDC8658], v20, v7);
    xpc_release(buf);
  }

  v41 = 0;
  v21 = CFDictionaryCreateMutable(v7, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v22 = v21;
  if (v21)
  {
    v41 = v21;
  }

  ctu::cf::insert<__CFString const*,__CFDictionary *>(v21, *MEMORY[0x29EDC8680], v9);
  v23 = a1[4];
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v22;
    _os_log_impl(&dword_297476000, v23, OS_LOG_TYPE_DEFAULT, "#I Setting CC2 with: %@", &buf, 0xCu);
  }

  v25 = *a1;
  v24 = a1[1];
  *&buf = *a1;
  if (!v24 || (v26 = std::__shared_weak_count::lock(v24), (*(&buf + 1) = v26) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v27 = v26;
  v28 = a1[5];
  if (v22 && (v29 = CFGetTypeID(v22), v29 == CFDictionaryGetTypeID()))
  {
    cf = v22;
    CFRetain(v22);
  }

  else
  {
    cf = 0;
  }

  v36[0] = MEMORY[0x29EDCA5F8];
  v36[1] = 1174405120;
  v36[2] = ___ZN4coex6Module5State17handleSetCC2_syncEN3xpc4dictENS_5SubIdE_block_invoke;
  v36[3] = &__block_descriptor_tmp_236_0;
  v36[4] = a1;
  v36[5] = v25;
  v37 = v27;
  atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
  v30 = _Block_copy(v36);
  v31 = a1[2];
  if (v31)
  {
    dispatch_retain(v31);
  }

  if (v30)
  {
    aBlock = _Block_copy(v30);
    object = v31;
    if (!v31)
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

  aBlock = 0;
  object = v31;
  if (v31)
  {
LABEL_40:
    dispatch_retain(v31);
  }

LABEL_41:
  (*(*v28 + 16))(v28, &cf, a3, &aBlock);
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v31)
  {
    dispatch_release(v31);
  }

  if (v30)
  {
    _Block_release(v30);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  v32 = v37;
  if (v37 && !atomic_fetch_add(&v37->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v32->__on_zero_shared)(v32);
    std::__shared_weak_count::__release_weak(v32);
  }

  v33 = *(&buf + 1);
  if (!*(&buf + 1) || atomic_fetch_add((*(&buf + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    v34 = v41;
    if (!v41)
    {
      goto LABEL_58;
    }

    goto LABEL_57;
  }

  (v33->__on_zero_shared)(v33);
  std::__shared_weak_count::__release_weak(v33);
  v34 = v41;
  if (v41)
  {
LABEL_57:
    CFRelease(v34);
  }

LABEL_58:
  if (v42)
  {
    CFRelease(v42);
  }

LABEL_60:
  v35 = *MEMORY[0x29EDCA608];
}

void sub_2974A3FCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, char a18, int a19, __int16 a20, char a21, char a22, int a23, __int16 a24, char a25, char a26, xpc_object_t object)
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
      _os_log_impl(&dword_297476000, v3, OS_LOG_TYPE_DEFAULT, "#E Failed to set CC2: %@", &v5, 0xCu);
    }
  }

  v4 = *MEMORY[0x29EDCA608];
}

void coex::Module::State::handleSetLaaGpioThrottle_sync(uint64_t *a1, xpc_object_t *a2, uint64_t a3)
{
  v37 = *MEMORY[0x29EDCA608];
  if (MEMORY[0x29C272BA0](*a2) != MEMORY[0x29EDCAA00])
  {
    v6 = a1[4];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf) = 0;
      _os_log_debug_impl(&dword_297476000, v6, OS_LOG_TYPE_DEBUG, "#D Invalid XPC dict", &buf, 2u);
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
    _os_log_impl(&dword_297476000, v16, OS_LOG_TYPE_DEFAULT, "#I Setting LAA GPIO throttle with: %@", &buf, 0xCu);
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
  v29[3] = &__block_descriptor_tmp_241_0;
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

void sub_2974A463C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, char a18, int a19, __int16 a20, char a21, char a22, int a23, __int16 a24, char a25, char a26, xpc_object_t object)
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
      _os_log_impl(&dword_297476000, v3, OS_LOG_TYPE_DEFAULT, "#E Failed to set LAA GPIO throttle: %@", &v5, 0xCu);
    }
  }

  v4 = *MEMORY[0x29EDCA608];
}

void coex::Module::State::handleSetGnssParams_sync(uint64_t *a1, xpc_object_t *a2, uint64_t a3)
{
  v39 = *MEMORY[0x29EDCA608];
  if (MEMORY[0x29C272BA0](*a2) != MEMORY[0x29EDCAA00])
  {
    v6 = a1[4];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf) = 0;
      _os_log_debug_impl(&dword_297476000, v6, OS_LOG_TYPE_DEBUG, "#D Invalid XPC dict", &buf, 2u);
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
    _os_log_impl(&dword_297476000, v18, OS_LOG_TYPE_DEFAULT, "#I Setting Gnss params with: %@", &buf, 0xCu);
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
  v31[3] = &__block_descriptor_tmp_247_0;
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

void sub_2974A4C7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, char a18, int a19, __int16 a20, char a21, char a22, int a23, __int16 a24, char a25, char a26, xpc_object_t object)
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
      _os_log_impl(&dword_297476000, v3, OS_LOG_TYPE_DEFAULT, "#E Failed to set Gnss params: %@", &v5, 0xCu);
    }
  }

  v4 = *MEMORY[0x29EDCA608];
}

void coex::Module::State::handleSetLAAConfig_sync(uint64_t *a1, xpc_object_t *a2, uint64_t a3)
{
  v46 = *MEMORY[0x29EDCA608];
  if (MEMORY[0x29C272BA0](*a2) != MEMORY[0x29EDCAA00])
  {
    v6 = a1[4];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf) = 0;
      _os_log_debug_impl(&dword_297476000, v6, OS_LOG_TYPE_DEBUG, "#D Invalid XPC dict", &buf, 2u);
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
      _os_log_impl(&dword_297476000, v26, OS_LOG_TYPE_DEFAULT, "#I Setting LAA config with: %@", &buf, 0xCu);
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
    _os_log_impl(&dword_297476000, v12, OS_LOG_TYPE_DEFAULT, "#E Missing LAA config", &buf, 2u);
  }

LABEL_4:
  v7 = *MEMORY[0x29EDCA608];
}

void sub_2974A543C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, char a18, int a19, __int16 a20, char a21, char a22, int a23, __int16 a24, char a25, char a26, xpc_object_t object)
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
      _os_log_impl(&dword_297476000, v3, OS_LOG_TYPE_DEFAULT, "#E Failed to set LAA config: %@", &v5, 0xCu);
    }
  }

  v4 = *MEMORY[0x29EDCA608];
}

void coex::Module::State::handleSetFCMBCMAntennaMode_sync(uint64_t *a1, xpc_object_t *a2, uint64_t a3)
{
  v47 = *MEMORY[0x29EDCA608];
  if (MEMORY[0x29C272BA0](*a2) != MEMORY[0x29EDCAA00])
  {
    v6 = a1[4];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_297476000, v6, OS_LOG_TYPE_DEBUG, "#D Invalid XPC dict", buf, 2u);
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
    applier[3] = &unk_29EE6B2C8;
    applier[4] = buf;
    xpc_array_apply(v45, applier);
    if (!CFArrayGetCount(*(v40 + 5)))
    {
      v28 = a1[4];
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v46) = 0;
        _os_log_debug_impl(&dword_297476000, v28, OS_LOG_TYPE_DEBUG, "#D Empty port map passed for FCM BCM Antenna mode", &v46, 2u);
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
      _os_log_impl(&dword_297476000, v17, OS_LOG_TYPE_DEFAULT, "#I Setting FCM BCM Antenna mode with: %@", &v46, 0xCu);
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
    _os_log_impl(&dword_297476000, v8, OS_LOG_TYPE_DEFAULT, "#E Invalid RAT option passed for FCM BCM Antenna mode", buf, 2u);
  }

LABEL_55:
  v30 = *MEMORY[0x29EDCA608];
}

void sub_2974A5C28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = 0;
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __Block_byref_object_dispose_(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    CFRelease(v1);
  }
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

  if (MEMORY[0x29C272BA0](v4) == MEMORY[0x29EDCAA00])
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

void sub_2974A5F10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
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
      _os_log_impl(&dword_297476000, v3, OS_LOG_TYPE_DEFAULT, "#E Failed to set FCM BCM Antenna mode: %@", &v5, 0xCu);
    }
  }

  v4 = *MEMORY[0x29EDCA608];
}

void coex::Module::State::handleSetRC1DurationParam_sync(uint64_t *a1, xpc_object_t *a2, uint64_t a3)
{
  v37 = *MEMORY[0x29EDCA608];
  if (MEMORY[0x29C272BA0](*a2) != MEMORY[0x29EDCAA00])
  {
    v6 = a1[4];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_297476000, v6, OS_LOG_TYPE_DEBUG, "#D Invalid XPC dict", buf, 2u);
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
      _os_log_impl(&dword_297476000, v16, OS_LOG_TYPE_DEFAULT, "#I Setting RC1 duration to %u", buf, 8u);
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
    _os_log_impl(&dword_297476000, v9, OS_LOG_TYPE_DEFAULT, "#E Invalid RC1 duration passed", buf, 2u);
  }

LABEL_4:
  v7 = *MEMORY[0x29EDCA608];
}

void sub_2974A6488(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, char a18, int a19, __int16 a20, char a21, char a22, int a23, __int16 a24, char a25, char a26, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_2974A6548(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
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
      _os_log_impl(&dword_297476000, v3, OS_LOG_TYPE_DEFAULT, "#E Failed to set RC1 duration; %@", &v5, 0xCu);
    }
  }

  v4 = *MEMORY[0x29EDCA608];
}

void coex::Module::State::convertScanFreqBandFilter_sync(uint64_t a1, xpc_object_t *a2, CFArrayRef *a3)
{
  if (MEMORY[0x29C272BA0](*a2) == MEMORY[0x29EDCA9E0])
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
              if (MEMORY[0x29C272BA0](v14) == v9)
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
            MEMORY[0x29C270ED0](v25);
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
              if (MEMORY[0x29C272BA0](v16) == v9)
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

void sub_2974A68D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void sub_2974A6924(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, const void *a12)
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

  if (MEMORY[0x29C272BA0](v5) == MEMORY[0x29EDCA9E0])
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
  aBlock[3] = &unk_2A1E429A8;
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

void sub_2974A6D04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
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
      _os_log_impl(&dword_297476000, v6, OS_LOG_TYPE_DEFAULT, "#I Failed to get: %@", buf, 0xCu);
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

  MEMORY[0x29C270ED0](buf);
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

void sub_2974A6FA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12, int a13, __int16 a14, char a15, char a16)
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

void coex::Module::State::fetchBandInfoSet_sync(uint64_t a1, CFArrayRef *a2, const char *a3, xpc_object_t *a4)
{
  if (a3)
  {
    if (*a2)
    {
      if (MEMORY[0x29C272BA0](*a4) == MEMORY[0x29EDCAA00])
      {
        Count = CFArrayGetCount(*a2);
        if (Count >= 1)
        {
          v8 = Count;
          v9 = xpc_array_create(0, 0);
          v10 = MEMORY[0x29EDCA9E0];
          if (v9 || (v9 = xpc_null_create()) != 0)
          {
            if (MEMORY[0x29C272BA0](v9) == v10)
            {
              xpc_retain(v9);
              v11 = v9;
            }

            else
            {
              v11 = xpc_null_create();
            }
          }

          else
          {
            v11 = xpc_null_create();
            v9 = 0;
          }

          v35 = a4;
          xarray = v11;
          xpc_release(v9);
          v12 = 0;
          v13 = *MEMORY[0x29EDC8778];
          v14 = *MEMORY[0x29EDC8658];
          v15 = *MEMORY[0x29EDC8720];
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(*a2, v12);
            v17 = ValueAtIndex;
            if (ValueAtIndex)
            {
              v18 = CFGetTypeID(ValueAtIndex);
              if (v18 == CFDictionaryGetTypeID())
              {
                v39 = v17;
                CFRetain(v17);
                v38[0] = 0xAAAAAAAAAAAAAAAALL;
                v38[1] = 0xAAAAAAAAAAAAAAAALL;
                ctu::cf::dict_adapter::dict_adapter(v38, v17);
                v19 = xpc_dictionary_create(0, 0, 0);
                if (v19 || (v19 = xpc_null_create()) != 0)
                {
                  if (MEMORY[0x29C272BA0](v19) == MEMORY[0x29EDCAA00])
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
                Int = ctu::cf::map_adapter::getInt(v38, v13);
                v22 = xpc_int64_create(Int);
                if (!v22)
                {
                  v22 = xpc_null_create();
                }

                xpc_dictionary_set_value(v20, "kWCMCellularNetworkConfiguration_BandInfoSet_CenterFreq", v22);
                v23 = xpc_null_create();
                xpc_release(v22);
                xpc_release(v23);
                ctu::cf::map_adapter::getDouble(v38, v14, 0.0);
                v25 = xpc_double_create(v24);
                if (!v25)
                {
                  v25 = xpc_null_create();
                }

                xpc_dictionary_set_value(v20, "kWCMCellularNetworkConfiguration_BandInfoSet_Bandwidth", v25);
                v26 = xpc_null_create();
                xpc_release(v25);
                xpc_release(v26);
                v27 = ctu::cf::map_adapter::copyCFDataRef(v38, v15);
                v28 = v27;
                cf = v27;
                if (v27)
                {
                  CFRetain(v27);
                  *buffer = 0;
                  v41.length = CFDataGetLength(v28);
                  v41.location = 0;
                  CFDataGetBytes(v28, v41, buffer);
                  v29 = *buffer;
                  CFRelease(v28);
                  v30 = xpc_uint64_create(v29);
                  if (!v30)
                  {
                    v30 = xpc_null_create();
                  }
                }

                else
                {
                  v31 = ctu::cf::map_adapter::getInt(v38, v15);
                  v30 = xpc_uint64_create(v31);
                  if (!v30)
                  {
                    v30 = xpc_null_create();
                  }
                }

                xpc_dictionary_set_value(v20, "kWCMCellularNetworkConfiguration_BandInfoSet_DirectionMask", v30);
                v32 = xpc_null_create();
                xpc_release(v30);
                xpc_release(v32);
                xpc_array_append_value(xarray, v20);
                if (cf)
                {
                  CFRelease(cf);
                }

                xpc_release(v20);
                MEMORY[0x29C270ED0](v38);
                if (v39)
                {
                  CFRelease(v39);
                }
              }
            }

            ++v12;
          }

          while (v8 != v12);
          if (MEMORY[0x29C272BA0](xarray) == MEMORY[0x29EDCA9E0])
          {
            if (xarray)
            {
              xpc_retain(xarray);
              v33 = xarray;
            }

            else
            {
              v33 = xpc_null_create();
            }

            xpc_dictionary_set_value(*v35, a3, v33);
            v34 = xpc_null_create();
            xpc_release(v33);
            xpc_release(v34);
          }

          xpc_release(xarray);
        }
      }
    }
  }
}

void coex::Module::State::fetchCarrierIdSet_sync(uint64_t a1, CFArrayRef *a2, const char *a3, xpc_object_t *a4)
{
  if (a3)
  {
    if (*a2)
    {
      if (MEMORY[0x29C272BA0](*a4) == MEMORY[0x29EDCAA00])
      {
        Count = CFArrayGetCount(*a2);
        if (Count >= 1)
        {
          v8 = Count;
          v9 = xpc_array_create(0, 0);
          v10 = MEMORY[0x29EDCA9E0];
          if (v9 || (v9 = xpc_null_create()) != 0)
          {
            if (MEMORY[0x29C272BA0](v9) == v10)
            {
              xpc_retain(v9);
              v11 = v9;
            }

            else
            {
              v11 = xpc_null_create();
            }
          }

          else
          {
            v11 = xpc_null_create();
            v9 = 0;
          }

          xpc_release(v9);
          for (i = 0; i != v8; ++i)
          {
            LODWORD(value) = 0;
            ValueAtIndex = CFArrayGetValueAtIndex(*a2, i);
            v14 = ValueAtIndex;
            if (ValueAtIndex)
            {
              v15 = CFGetTypeID(ValueAtIndex);
              if (v15 == CFNumberGetTypeID())
              {
                if (ctu::cf::assign(&value, v14, v16))
                {
                  v17 = xpc_int64_create(value);
                  if (!v17)
                  {
                    v17 = xpc_null_create();
                  }

                  xpc_array_append_value(v11, v17);
                  xpc_release(v17);
                }
              }
            }
          }

          if (MEMORY[0x29C272BA0](v11) == v10 && xpc_array_get_count(v11))
          {
            if (v11)
            {
              xpc_retain(v11);
              v18 = v11;
            }

            else
            {
              v18 = xpc_null_create();
            }

            xpc_dictionary_set_value(*a4, a3, v18);
            v19 = xpc_null_create();
            xpc_release(v18);
            xpc_release(v19);
          }

          xpc_release(v11);
        }
      }
    }
  }
}

void coex::Module::State::sendWWANState_sync(uint64_t a1, uint64_t a2)
{
  v173 = 0;
  v174 = &v173;
  v175 = 0x3002000000;
  v176 = __Block_byref_object_copy__277;
  v177 = __Block_byref_object_dispose__278;
  v178 = 0xAAAAAAAAAAAAAAAALL;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    v178 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    v178 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x29C272BA0](v5) == MEMORY[0x29EDCAA00])
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  v178 = v6;
LABEL_9:
  xpc_release(v5);
  v172 = 0xAAAAAAAAAAAAAAAALL;
  coex::Module::State::getSubProperty(a1, coex::kKeyWWANState, a2, 0, &v172);
  if (v172)
  {
    v170[0] = 0xAAAAAAAAAAAAAAAALL;
    v170[1] = 0xAAAAAAAAAAAAAAAALL;
    v7 = ctu::cf::dict_adapter::dict_adapter(v170, v172);
    v169 = 0;
    v8 = ctu::cf::map_adapter::copyCFDictionaryRef(v7, *MEMORY[0x29EDC87E8]);
    v169 = v8;
    if (v8)
    {
      v167 = 0xAAAAAAAAAAAAAAAALL;
      v168 = 0xAAAAAAAAAAAAAAAALL;
      ctu::cf::dict_adapter::dict_adapter(&v167, v8);
      v9 = ctu::cf::dict_adapter::dict_adapter(v166, &v167);
      v10 = *MEMORY[0x29EDC87E0];
      v162[0] = MEMORY[0x29EDCA5F8];
      v162[1] = 0x40000000;
      v163 = ___ZN4coex6Module5State18sendWWANState_syncENS_5SubIdE_block_invoke;
      v164 = &unk_29EE6B2F0;
      v165 = &v173;
      v11 = (*v166[0])(v9, v10);
      v12 = v11;
      if (v11)
      {
        v13 = CFGetTypeID(v11);
        TypeID = CFDictionaryGetTypeID();
        CFRelease(v12);
        if (v13 == TypeID)
        {
          v163(v162, v12);
        }
      }

      MEMORY[0x29C270ED0](v166);
      ctu::cf::dict_adapter::dict_adapter(v161, &v167);
      v15 = *MEMORY[0x29EDC87C8];
      v157[0] = MEMORY[0x29EDCA5F8];
      v157[1] = 0x40000000;
      v158 = ___ZN4coex6Module5State18sendWWANState_syncENS_5SubIdE_block_invoke_2;
      v159 = &unk_29EE6B318;
      v160 = &v173;
      v16 = (*v161[0])(v161, v15);
      v17 = v16;
      if (v16)
      {
        v18 = CFGetTypeID(v16);
        v19 = CFDictionaryGetTypeID();
        CFRelease(v17);
        if (v18 == v19)
        {
          v158(v157, v17);
        }
      }

      MEMORY[0x29C270ED0](v161);
      MEMORY[0x29C270ED0](&v167);
    }

    v20 = ctu::cf::map_adapter::copyCFDictionaryRef(v170, *MEMORY[0x29EDC87D0]);
    v169 = v20;
    if (v8)
    {
      CFRelease(v8);
    }

    if (v20)
    {
      v167 = 0xAAAAAAAAAAAAAAAALL;
      v168 = 0xAAAAAAAAAAAAAAAALL;
      ctu::cf::dict_adapter::dict_adapter(&v167, v20);
      ctu::cf::dict_adapter::dict_adapter(v156, &v167);
      v21 = *MEMORY[0x29EDC86D0];
      v152[0] = MEMORY[0x29EDCA5F8];
      v152[1] = 0x40000000;
      v153 = ___ZN4coex6Module5State18sendWWANState_syncENS_5SubIdE_block_invoke_3;
      v154 = &unk_29EE6B340;
      v155 = &v173;
      v22 = (*v156[0])(v156, v21);
      v23 = v22;
      if (v22)
      {
        v24 = CFGetTypeID(v22);
        if (v24 == CFNumberGetTypeID())
        {
          LODWORD(v131) = -1431655766;
          v26 = ctu::cf::assign(&v131, v23, v25);
          CFRelease(v23);
          if (v26)
          {
            v153(v152, v131);
          }
        }

        else
        {
          CFRelease(v23);
        }
      }

      MEMORY[0x29C270ED0](v156);
      ctu::cf::dict_adapter::dict_adapter(v151, &v167);
      v33 = *MEMORY[0x29EDC8690];
      v147[0] = MEMORY[0x29EDCA5F8];
      v147[1] = 0x40000000;
      v148 = ___ZN4coex6Module5State18sendWWANState_syncENS_5SubIdE_block_invoke_4;
      v149 = &unk_29EE6B368;
      v150 = &v173;
      v34 = (*v151[0])(v151, v33);
      v35 = v34;
      if (v34)
      {
        v36 = CFGetTypeID(v34);
        if (v36 == CFNumberGetTypeID())
        {
          LODWORD(v131) = -1431655766;
          v38 = ctu::cf::assign(&v131, v35, v37);
          CFRelease(v35);
          if (v38)
          {
            v148(v147, v131);
          }
        }

        else
        {
          CFRelease(v35);
        }
      }

      MEMORY[0x29C270ED0](v151);
      ctu::cf::dict_adapter::dict_adapter(v146, &v167);
      v39 = *MEMORY[0x29EDC8770];
      v142[0] = MEMORY[0x29EDCA5F8];
      v142[1] = 0x40000000;
      v143 = ___ZN4coex6Module5State18sendWWANState_syncENS_5SubIdE_block_invoke_5;
      v144 = &unk_29EE6B390;
      v145 = &v173;
      v40 = (*v146[0])(v146, v39);
      v41 = v40;
      if (v40)
      {
        v42 = CFGetTypeID(v40);
        if (v42 == CFNumberGetTypeID())
        {
          LODWORD(v131) = -1431655766;
          v44 = ctu::cf::assign(&v131, v41, v43);
          CFRelease(v41);
          if (v44)
          {
            v143(v142, v131);
          }
        }

        else
        {
          CFRelease(v41);
        }
      }

      MEMORY[0x29C270ED0](v146);
      ctu::cf::dict_adapter::dict_adapter(v141, &v167);
      v45 = *MEMORY[0x29EDC8650];
      v137[0] = MEMORY[0x29EDCA5F8];
      v137[1] = 0x40000000;
      v138 = ___ZN4coex6Module5State18sendWWANState_syncENS_5SubIdE_block_invoke_6;
      v139 = &unk_29EE6B3B8;
      v140 = &v173;
      v46 = (*v141[0])(v141, v45);
      v47 = v46;
      if (v46)
      {
        v48 = CFGetTypeID(v46);
        if (v48 == CFNumberGetTypeID())
        {
          LODWORD(v131) = -1431655766;
          v50 = ctu::cf::assign(&v131, v47, v49);
          CFRelease(v47);
          if (v50)
          {
            v138(v137, v131);
          }
        }

        else
        {
          CFRelease(v47);
        }
      }

      MEMORY[0x29C270ED0](v141);
      ctu::cf::dict_adapter::dict_adapter(v136, &v167);
      v51 = *MEMORY[0x29EDC8640];
      v132[0] = MEMORY[0x29EDCA5F8];
      v132[1] = 0x40000000;
      v133 = ___ZN4coex6Module5State18sendWWANState_syncENS_5SubIdE_block_invoke_7;
      v134 = &unk_29EE6B3E0;
      v135 = &v173;
      v52 = (*v136[0])(v136, v51);
      v53 = v52;
      if (v52)
      {
        v54 = CFGetTypeID(v52);
        if (v54 == CFNumberGetTypeID())
        {
          LODWORD(v131) = -1431655766;
          v56 = ctu::cf::assign(&v131, v53, v55);
          CFRelease(v53);
          if (v56)
          {
            v133(v132, v131);
          }
        }

        else
        {
          CFRelease(v53);
        }
      }

      MEMORY[0x29C270ED0](v136);
      MEMORY[0x29C270ED0](&v167);
    }

    v57 = ctu::cf::map_adapter::copyCFArrayRef(v170, *MEMORY[0x29EDC88D0]);
    v58 = v57;
    v131 = v57;
    if (v57)
    {
      v130 = v57;
      CFRetain(v57);
      v59 = v174[5];
      v129 = v59;
      if (v59)
      {
        v60 = xpc_retain(v59);
      }

      else
      {
        v60 = xpc_null_create();
        v59 = v60;
        v129 = v60;
      }

      coex::Module::State::fetchBandInfoSet_sync(v60, &v130, "kWCMCellularNetworkConfiguration_LTEBandInformationSet", &v129);
      xpc_release(v59);
      v129 = 0;
      CFRelease(v58);
    }

    v61 = ctu::cf::map_adapter::copyCFArrayRef(v170, *MEMORY[0x29EDC89D8]);
    v62 = v61;
    v128[1] = v61;
    if (v61)
    {
      v128[0] = v61;
      CFRetain(v61);
      v63 = v174[5];
      v127 = v63;
      if (v63)
      {
        v64 = xpc_retain(v63);
      }

      else
      {
        v64 = xpc_null_create();
        v63 = v64;
        v127 = v64;
      }

      coex::Module::State::fetchBandInfoSet_sync(v64, v128, "kWCMCellularNetworkConfiguration_TDSCDMABandInformationSet", &v127);
      xpc_release(v63);
      v127 = 0;
      CFRelease(v62);
    }

    v65 = ctu::cf::map_adapter::copyCFArrayRef(v170, *MEMORY[0x29EDC88B0]);
    v66 = v65;
    v126[1] = v65;
    if (v65)
    {
      v126[0] = v65;
      CFRetain(v65);
      v67 = v174[5];
      v125 = v67;
      if (v67)
      {
        v68 = xpc_retain(v67);
      }

      else
      {
        v68 = xpc_null_create();
        v67 = v68;
        v125 = v68;
      }

      coex::Module::State::fetchBandInfoSet_sync(v68, v126, "kWCMCellularNetworkConfiguration_GSMBandInformationSet", &v125);
      xpc_release(v67);
      v125 = 0;
      CFRelease(v66);
    }

    cf = v66;
    v69 = ctu::cf::map_adapter::copyCFArrayRef(v170, *MEMORY[0x29EDC8910]);
    v70 = v69;
    v124[1] = v69;
    if (v69)
    {
      v124[0] = v69;
      CFRetain(v69);
      v71 = v174[5];
      v123 = v71;
      if (v71)
      {
        v72 = xpc_retain(v71);
      }

      else
      {
        v72 = xpc_null_create();
        v71 = v72;
        v123 = v72;
      }

      coex::Module::State::fetchBandInfoSet_sync(v72, v124, "kWCMCellularNetworkConfiguration_ONEXBandInformationSet", &v123);
      xpc_release(v71);
      v123 = 0;
      CFRelease(v70);
    }

    v73 = ctu::cf::map_adapter::copyCFArrayRef(v170, *MEMORY[0x29EDC88C0]);
    v74 = v73;
    v122[1] = v73;
    if (v73)
    {
      v122[0] = v73;
      CFRetain(v73);
      v75 = v174[5];
      v121 = v75;
      if (v75)
      {
        v76 = xpc_retain(v75);
      }

      else
      {
        v76 = xpc_null_create();
        v75 = v76;
        v121 = v76;
      }

      coex::Module::State::fetchBandInfoSet_sync(v76, v122, "kWCMCellularNetworkConfiguration_HDRBandInformationSet", &v121);
      xpc_release(v75);
      v121 = 0;
      CFRelease(v74);
    }

    v105 = a1;
    v77 = ctu::cf::map_adapter::copyCFArrayRef(v170, *MEMORY[0x29EDC8968]);
    v78 = v77;
    v120[1] = v77;
    if (v77)
    {
      v120[0] = v77;
      CFRetain(v77);
      v79 = v174[5];
      v119 = v79;
      if (v79)
      {
        v80 = xpc_retain(v79);
      }

      else
      {
        v80 = xpc_null_create();
        v79 = v80;
        v119 = v80;
      }

      coex::Module::State::fetchBandInfoSet_sync(v80, v120, "kWCMCellularNetworkConfiguration_WCDMABandInformationSet", &v119);
      xpc_release(v79);
      v119 = 0;
      CFRelease(v78);
    }

    v102 = a2;
    v81 = ctu::cf::map_adapter::copyCFArrayRef(v170, *MEMORY[0x29EDC88E0]);
    v82 = v81;
    v118[1] = v81;
    if (v81)
    {
      v118[0] = v81;
      CFRetain(v81);
      v83 = v174[5];
      v117 = v83;
      if (v83)
      {
        v84 = xpc_retain(v83);
      }

      else
      {
        v84 = xpc_null_create();
        v83 = v84;
        v117 = v84;
      }

      coex::Module::State::fetchBandInfoSet_sync(v84, v118, "kWCMCellularNetworkConfiguration_NGCBandInformationSet", &v117);
      xpc_release(v83);
      v117 = 0;
      CFRelease(v82);
    }

    v85 = ctu::cf::map_adapter::copyCFArrayRef(v170, *MEMORY[0x29EDC8988]);
    v86 = v85;
    v116[1] = v85;
    if (v85)
    {
      v116[0] = v85;
      CFRetain(v85);
      v87 = v174[5];
      v115 = v87;
      if (v87)
      {
        v88 = xpc_retain(v87);
      }

      else
      {
        v88 = xpc_null_create();
        v87 = v88;
        v115 = v88;
      }

      coex::Module::State::fetchCarrierIdSet_sync(v88, v116, "kWCMCellularNetworkConfiguration_LTECarrierInformationSet", &v115);
      xpc_release(v87);
      v115 = 0;
      CFRelease(v86);
    }

    v104 = v62;
    v89 = ctu::cf::map_adapter::copyCFArrayRef(v170, *MEMORY[0x29EDC8990]);
    v90 = v89;
    v114[1] = v89;
    if (v89)
    {
      v114[0] = v89;
      CFRetain(v89);
      v91 = v174[5];
      v113 = v91;
      if (v91)
      {
        v92 = xpc_retain(v91);
      }

      else
      {
        v92 = xpc_null_create();
        v91 = v92;
        v113 = v92;
      }

      coex::Module::State::fetchCarrierIdSet_sync(v92, v114, "kWCMCellularNetworkConfiguration_NGCCarrierInformationSet", &v113);
      xpc_release(v91);
      v113 = 0;
      CFRelease(v90);
    }

    v103 = v58;
    v93 = *MEMORY[0x29EDC86F0];
    v94 = ctu::cf::map_adapter::copyCFDictionaryRef(v170, *MEMORY[0x29EDC86F0]);
    v169 = v94;
    if (v20)
    {
      CFRelease(v20);
    }

    if (v94)
    {
      v167 = 0xAAAAAAAAAAAAAAAALL;
      v168 = 0xAAAAAAAAAAAAAAAALL;
      ctu::cf::dict_adapter::dict_adapter(&v167, v94);
      ctu::cf::dict_adapter::dict_adapter(v112, &v167);
      v108[0] = MEMORY[0x29EDCA5F8];
      v108[1] = 0x40000000;
      v109 = ___ZN4coex6Module5State18sendWWANState_syncENS_5SubIdE_block_invoke_8;
      v110 = &unk_29EE6B408;
      v111 = &v173;
      v95 = (*v112[0])(v112, v93);
      v96 = v95;
      if (v95)
      {
        v97 = CFGetTypeID(v95);
        if (v97 == CFNumberGetTypeID())
        {
          v179[0] = -1431655766;
          v99 = ctu::cf::assign(v179, v96, v98);
          CFRelease(v96);
          if (v99)
          {
            v109(v108, v179[0]);
          }
        }

        else
        {
          CFRelease(v96);
        }
      }

      MEMORY[0x29C270ED0](v112);
      MEMORY[0x29C270ED0](&v167);
    }

    v100 = *(v105 + 56);
    if (v100)
    {
      v101 = v174[5];
      v107 = v101;
      if (v101)
      {
        xpc_retain(v101);
      }

      else
      {
        v101 = xpc_null_create();
        v107 = v101;
      }

      coex::XpcClient::sendMessage(v100, 300, &v107, v102);
      xpc_release(v101);
      v107 = 0;
    }

    if (v90)
    {
      CFRelease(v90);
    }

    if (v86)
    {
      CFRelease(v86);
    }

    if (v82)
    {
      CFRelease(v82);
    }

    if (v78)
    {
      CFRelease(v78);
    }

    if (v74)
    {
      CFRelease(v74);
    }

    if (v70)
    {
      CFRelease(v70);
    }

    if (cf)
    {
      CFRelease(cf);
    }

    if (v104)
    {
      CFRelease(v104);
    }

    if (v103)
    {
      CFRelease(v103);
    }

    if (v94)
    {
      CFRelease(v94);
    }

    MEMORY[0x29C270ED0](v170);
    v32 = v172;
    if (v172)
    {
LABEL_140:
      CFRelease(v32);
    }
  }

  else
  {
    v170[0] = 0;
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    v28 = Mutable;
    if (Mutable)
    {
      v170[0] = Mutable;
    }

    v29 = *MEMORY[0x29EDB8F00];
    ctu::cf::insert<__CFString const*,__CFBoolean const*>(Mutable, *MEMORY[0x29EDC8728], *MEMORY[0x29EDB8F00]);
    ctu::cf::insert<__CFString const*,__CFBoolean const*>(v28, *MEMORY[0x29EDC8780], v29);
    ctu::cf::insert<__CFString const*,__CFBoolean const*>(v28, *MEMORY[0x29EDC86B8], v29);
    v30 = *(a1 + 40);
    if (v30)
    {
      if (v28 && (v31 = CFGetTypeID(v28), v31 == CFDictionaryGetTypeID()))
      {
        v171 = v28;
        CFRetain(v28);
      }

      else
      {
        v171 = 0;
      }

      (*(*v30 + 40))(v30, &v171, a2);
      if (v171)
      {
        CFRelease(v171);
      }
    }

    if (v28)
    {
      CFRelease(v28);
    }

    v32 = v172;
    if (v172)
    {
      goto LABEL_140;
    }
  }

  _Block_object_dispose(&v173, 8);
  xpc_release(v178);
}

void sub_2974A8894(_Unwind_Exception *a1)
{
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef((v1 - 176));
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef((v1 - 192));
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef((v1 - 168));
  _Block_object_dispose((v1 - 160), 8);
  xpc_release(*(v1 - 120));
  _Unwind_Resume(a1);
}

xpc_object_t __Block_byref_object_copy__277(uint64_t a1, uint64_t a2)
{
  *(a1 + 40) = *(a2 + 40);
  result = xpc_null_create();
  *(a2 + 40) = result;
  return result;
}

uint64_t ___ZN4coex6Module5State18sendWWANState_syncENS_5SubIdE_block_invoke(uint64_t a1, const __CFDictionary *a2)
{
  v10[0] = 0xAAAAAAAAAAAAAAAALL;
  v10[1] = 0xAAAAAAAAAAAAAAAALL;
  ctu::cf::dict_adapter::dict_adapter(v10, a2);
  Int = ctu::cf::map_adapter::getInt(v10, *MEMORY[0x29EDC8778]);
  v4 = xpc_int64_create(Int);
  if (!v4)
  {
    v4 = xpc_null_create();
  }

  xpc_dictionary_set_value(*(*(*(a1 + 32) + 8) + 40), "kWCMCellularNetworkConfiguration_ULBandInfo_CenterFreq", v4);
  v5 = xpc_null_create();
  xpc_release(v4);
  xpc_release(v5);
  ctu::cf::map_adapter::getDouble(v10, *MEMORY[0x29EDC8658], 0.0);
  v7 = xpc_double_create(v6);
  if (!v7)
  {
    v7 = xpc_null_create();
  }

  xpc_dictionary_set_value(*(*(*(a1 + 32) + 8) + 40), "kWCMCellularNetworkConfiguration_ULBandInfo_BandWidth", v7);
  v8 = xpc_null_create();
  xpc_release(v7);
  xpc_release(v8);
  return MEMORY[0x29C270ED0](v10);
}

uint64_t ___ZN4coex6Module5State18sendWWANState_syncENS_5SubIdE_block_invoke_2(uint64_t a1, const __CFDictionary *a2)
{
  v10[0] = 0xAAAAAAAAAAAAAAAALL;
  v10[1] = 0xAAAAAAAAAAAAAAAALL;
  ctu::cf::dict_adapter::dict_adapter(v10, a2);
  Int = ctu::cf::map_adapter::getInt(v10, *MEMORY[0x29EDC8778]);
  v4 = xpc_int64_create(Int);
  if (!v4)
  {
    v4 = xpc_null_create();
  }

  xpc_dictionary_set_value(*(*(*(a1 + 32) + 8) + 40), "kWCMCellularNetworkConfiguration_DLBandInfo_CenterFreq", v4);
  v5 = xpc_null_create();
  xpc_release(v4);
  xpc_release(v5);
  ctu::cf::map_adapter::getDouble(v10, *MEMORY[0x29EDC8658], 0.0);
  v7 = xpc_double_create(v6);
  if (!v7)
  {
    v7 = xpc_null_create();
  }

  xpc_dictionary_set_value(*(*(*(a1 + 32) + 8) + 40), "kWCMCellularNetworkConfiguration_DLBandInfo_BandWidth", v7);
  v8 = xpc_null_create();
  xpc_release(v7);
  xpc_release(v8);
  return MEMORY[0x29C270ED0](v10);
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
    if (MEMORY[0x29C272BA0](v4) == MEMORY[0x29EDCAA00])
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
      MEMORY[0x29C270ED0](value);
      if (cf)
      {
        CFRelease(cf);
      }
    }

    if (v23)
    {
      CFRelease(v23);
    }

    MEMORY[0x29C270ED0](v24);
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

void sub_2974A956C(_Unwind_Exception *a1, uint64_t a2, ...)
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
  MEMORY[0x29C270ED0](va);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(va1);
  ctu::cf::CFSharedRef<__CFNumber const>::~CFSharedRef(va2);
  MEMORY[0x29C270ED0](va3);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(va4);
  xpc_release(v2);
  _Unwind_Resume(a1);
}

void coex::Module::State::sendFailCondition_sync(uint64_t a1, int a2)
{
  v70 = 0xAAAAAAAAAAAAAAAALL;
  coex::Module::State::getSubProperty(a1, coex::kKeyFailCondition, a2, 0, &v70);
  if (!v70)
  {
    return;
  }

  v69[0] = 0xAAAAAAAAAAAAAAAALL;
  v69[1] = 0xAAAAAAAAAAAAAAAALL;
  v4 = ctu::cf::dict_adapter::dict_adapter(v69, v70);
  v5 = ctu::cf::map_adapter::copyCFDataRef(v4, *MEMORY[0x29EDC8AA8]);
  v6 = v5;
  v68 = v5;
  if (v5)
  {
    v67 = v5;
    CFRetain(v5);
    *buffer = 0;
    v71.length = CFDataGetLength(v6);
    v71.location = 0;
    CFDataGetBytes(v6, v71, buffer);
    v7 = buffer[0];
    CFRelease(v6);
    if (v7)
    {
      *buffer = 0;
      v62 = buffer;
      v63 = 0x3002000000;
      v64 = __Block_byref_object_copy__277;
      v65 = __Block_byref_object_dispose__278;
      v66 = 0xAAAAAAAAAAAAAAAALL;
      v8 = xpc_dictionary_create(0, 0, 0);
      v9 = v8;
      if (v8)
      {
        v66 = v8;
      }

      else
      {
        v9 = xpc_null_create();
        v66 = v9;
        if (!v9)
        {
          v10 = xpc_null_create();
          v9 = 0;
          goto LABEL_11;
        }
      }

      if (MEMORY[0x29C272BA0](v9) == MEMORY[0x29EDCAA00])
      {
        xpc_retain(v9);
LABEL_12:
        xpc_release(v9);
        v11 = xpc_int64_create(1);
        if (!v11)
        {
          v11 = xpc_null_create();
        }

        xpc_dictionary_set_value(*(v62 + 5), "kWCMCellularThresholdReached_EventType", v11);
        v12 = xpc_null_create();
        xpc_release(v11);
        xpc_release(v12);
        ctu::cf::dict_adapter::dict_adapter(v60, v69);
        v13 = *MEMORY[0x29EDC8AD0];
        v56[0] = MEMORY[0x29EDCA5F8];
        v56[1] = 0x40000000;
        v57 = ___ZN4coex6Module5State22sendFailCondition_syncENS_5SubIdE_block_invoke;
        v58 = &unk_29EE6B430;
        v59 = buffer;
        v14 = (*v60[0])(v60, v13);
        v15 = v14;
        if (v14)
        {
          v16 = CFGetTypeID(v14);
          if (v16 == CFNumberGetTypeID())
          {
            LODWORD(cf) = -1431655766;
            v18 = ctu::cf::assign(&cf, v15, v17);
            CFRelease(v15);
            if (v18)
            {
              v57(v56, cf);
            }
          }

          else
          {
            CFRelease(v15);
          }
        }

        MEMORY[0x29C270ED0](v60);
        v19 = *(a1 + 56);
        if (v19)
        {
          v20 = *(v62 + 5);
          v55 = v20;
          if (v20)
          {
            xpc_retain(v20);
          }

          else
          {
            v20 = xpc_null_create();
            v55 = v20;
          }

          coex::XpcClient::sendMessage(v19, 303, &v55, a2);
          xpc_release(v20);
          v55 = 0;
        }

        _Block_object_dispose(buffer, 8);
        xpc_release(v66);
        goto LABEL_25;
      }

      v10 = xpc_null_create();
LABEL_11:
      v66 = v10;
      goto LABEL_12;
    }
  }

LABEL_25:
  v21 = ctu::cf::map_adapter::copyCFDataRef(v69, *MEMORY[0x29EDC8848]);
  v22 = v21;
  cf = v21;
  if (v21)
  {
    v53[2] = v21;
    CFRetain(v21);
    *buffer = 0;
    v72.length = CFDataGetLength(v22);
    v72.location = 0;
    CFDataGetBytes(v22, v72, buffer);
    v23 = buffer[0];
    CFRelease(v22);
    if ((v23 & 2) != 0)
    {
      *buffer = 0;
      v62 = buffer;
      v63 = 0x3002000000;
      v64 = __Block_byref_object_copy__277;
      v65 = __Block_byref_object_dispose__278;
      v66 = 0xAAAAAAAAAAAAAAAALL;
      v24 = xpc_dictionary_create(0, 0, 0);
      v25 = v24;
      if (v24)
      {
        v66 = v24;
      }

      else
      {
        v25 = xpc_null_create();
        v66 = v25;
        if (!v25)
        {
          v26 = xpc_null_create();
          v25 = 0;
          goto LABEL_34;
        }
      }

      if (MEMORY[0x29C272BA0](v25) == MEMORY[0x29EDCAA00])
      {
        xpc_retain(v25);
LABEL_35:
        xpc_release(v25);
        v27 = xpc_int64_create(0);
        if (!v27)
        {
          v27 = xpc_null_create();
        }

        xpc_dictionary_set_value(*(v62 + 5), "kWCMCellularThresholdReached_EventType", v27);
        v28 = xpc_null_create();
        xpc_release(v27);
        xpc_release(v28);
        ctu::cf::dict_adapter::dict_adapter(v53, v69);
        v29 = *MEMORY[0x29EDC88F8];
        v49[0] = MEMORY[0x29EDCA5F8];
        v49[1] = 0x40000000;
        v50 = ___ZN4coex6Module5State22sendFailCondition_syncENS_5SubIdE_block_invoke_2;
        v51 = &unk_29EE6B458;
        v52 = buffer;
        v30 = (*v53[0])(v53, v29);
        v31 = v30;
        if (v30)
        {
          v32 = CFGetTypeID(v30);
          if (v32 == CFNumberGetTypeID())
          {
            LODWORD(v47) = -1431655766;
            v34 = ctu::cf::assign(&v47, v31, v33);
            CFRelease(v31);
            if (v34)
            {
              v50(v49, v47);
            }
          }

          else
          {
            CFRelease(v31);
          }
        }

        MEMORY[0x29C270ED0](v53);
        v35 = *(a1 + 56);
        if (v35)
        {
          v36 = *(v62 + 5);
          v48 = v36;
          if (v36)
          {
            xpc_retain(v36);
          }

          else
          {
            v36 = xpc_null_create();
            v48 = v36;
          }

          coex::XpcClient::sendMessage(v35, 303, &v48, a2);
          xpc_release(v36);
          v48 = 0;
        }

        _Block_object_dispose(buffer, 8);
        xpc_release(v66);
        goto LABEL_48;
      }

      v26 = xpc_null_create();
LABEL_34:
      v66 = v26;
      goto LABEL_35;
    }
  }

LABEL_48:
  v37 = ctu::cf::map_adapter::copyCFDataRef(v69, *MEMORY[0x29EDC8918]);
  v38 = v37;
  v47 = v37;
  if (v37)
  {
    v46[1] = v37;
    CFRetain(v37);
    *buffer = 0;
    v73.length = CFDataGetLength(v38);
    v73.location = 0;
    CFDataGetBytes(v38, v73, buffer);
    v39 = *buffer;
    CFRelease(v38);
    if (!v39)
    {
      goto LABEL_64;
    }

    v40 = xpc_dictionary_create(0, 0, 0);
    if (v40 || (v40 = xpc_null_create()) != 0)
    {
      if (MEMORY[0x29C272BA0](v40) == MEMORY[0x29EDCAA00])
      {
        xpc_retain(v40);
        v41 = v40;
      }

      else
      {
        v41 = xpc_null_create();
      }
    }

    else
    {
      v41 = xpc_null_create();
      v40 = 0;
    }

    xpc_release(v40);
    v42 = xpc_uint64_create(v39);
    if (!v42)
    {
      v42 = xpc_null_create();
    }

    xpc_dictionary_set_value(v41, "kWCMCellularTxPower_Response", v42);
    v43 = xpc_null_create();
    xpc_release(v42);
    xpc_release(v43);
    v44 = *(a1 + 56);
    if (v44)
    {
      v46[0] = v41;
      if (v41)
      {
        xpc_retain(v41);
        v45 = v46[0];
      }

      else
      {
        v45 = xpc_null_create();
        v46[0] = v45;
      }

      coex::XpcClient::sendMessage(v44, 301, v46, a2);
      xpc_release(v45);
      v46[0] = 0;
    }

    xpc_release(v41);
    v38 = v47;
    if (v47)
    {
LABEL_64:
      CFRelease(v38);
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v68)
  {
    CFRelease(v68);
  }

  MEMORY[0x29C270ED0](v69);
  if (v70)
  {
    CFRelease(v70);
  }
}

void sub_2974A9DCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose((v13 - 136), 8);
  xpc_release(*(v13 - 96));
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(va);
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef((v13 - 80));
  MEMORY[0x29C270ED0](v13 - 72);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef((v13 - 56));
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

void ___ZN4coex6Module5State14setPolicy_syncENS_5SubIdE_block_invoke(uint64_t a1, const void **a2)
{
  v22 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 32);
  v5 = *a2;
  if (*a2)
  {
    v6 = *(v4 + 32);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = v5;
      _os_log_impl(&dword_297476000, v6, OS_LOG_TYPE_DEFAULT, "#I Failed to set policy: %@", buf, 0xCu);
    }
  }

  ctu::cf::dict_adapter::dict_adapter(v19, (a1 + 56));
  v14[0] = MEMORY[0x29EDCA5F8];
  v14[1] = 1174405120;
  v15 = ___ZN4coex6Module5State14setPolicy_syncENS_5SubIdE_block_invoke_317;
  v16 = &__block_descriptor_tmp_319;
  v7 = *a2;
  v17 = v4;
  cf = v7;
  if (v7)
  {
    CFRetain(v7);
  }

  v8 = (*v19[0])(v19, *MEMORY[0x29EDC88F8]);
  v9 = v8;
  if (v8)
  {
    v10 = CFGetTypeID(v8);
    if (v10 == CFNumberGetTypeID())
    {
      *buf = -1431655766;
      v12 = ctu::cf::assign(buf, v9, v11);
      CFRelease(v9);
      if (v12)
      {
        v15(v14, *buf);
      }
    }

    else
    {
      CFRelease(v9);
    }
  }

  MEMORY[0x29C270ED0](v19);
  if (cf)
  {
    CFRelease(cf);
  }

  v13 = *MEMORY[0x29EDCA608];
}

void sub_2974AA220(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_2974AA240(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef((v7 + 40));
  MEMORY[0x29C270ED0](va);
  _Unwind_Resume(a1);
}

void ___ZN4coex6Module5State14setPolicy_syncENS_5SubIdE_block_invoke_317(uint64_t a1, int a2)
{
  v4 = *(a1 + 32);
  v5 = xpc_dictionary_create(0, 0, 0);
  if (v5 || (v5 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x29C272BA0](v5) == MEMORY[0x29EDCAA00])
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

uint64_t __copy_helper_block_e8_40c46_ZTSNSt3__110shared_ptrIN4coex6Module5StateEEE56c27_ZTSN3ctu2cf12dict_adapterE(void *a1, void *a2)
{
  v2 = a2[6];
  a1[5] = a2[5];
  a1[6] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return ctu::cf::dict_adapter::dict_adapter((a1 + 7), (a2 + 7));
}

void __destroy_helper_block_e8_40c46_ZTSNSt3__110shared_ptrIN4coex6Module5StateEEE56c27_ZTSN3ctu2cf12dict_adapterE(uint64_t a1)
{
  MEMORY[0x29C270ED0](a1 + 56);
  v2 = *(a1 + 48);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);

    std::__shared_weak_count::__release_weak(v2);
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
    _os_log_error_impl(&dword_297476000, v3, OS_LOG_TYPE_ERROR, "Failed to set SINR and/or BLER: %@", &v6, 0xCu);
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

void ctu::cf::update<__CFString const*,void const*>(__CFDictionary *a1, CFTypeRef cf, CFTypeRef a3)
{
  if (cf)
  {
    CFRetain(cf);
  }

  CFRetain(a3);
  if (cf)
  {
    CFDictionarySetValue(a1, cf, a3);
  }

  CFRelease(a3);
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_2974AA7E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a9);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a10);
  _Unwind_Resume(a1);
}

void sub_2974AA804(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  _Unwind_Resume(a1);
}

void ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
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
  if (v2 != 0x800000029769ACCDLL)
  {
    if (((v2 & 0x800000029769ACCDLL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000029769ACCDLL))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000029769ACCDLL & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t ctu::PthreadMutexGuardPolicy<CommandDriverFactory>::~PthreadMutexGuardPolicy(uint64_t a1)
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

void *_ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(void **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    v4 = v2[2];
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v5 = v2;
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      v2 = v5;
    }

    operator delete(v2);
    return v3;
  }

  return v1;
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

void sub_2974AAD24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  operator delete(v10);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a10);
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

void sub_2974AAE08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  operator delete(v10);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a10);
  _Unwind_Resume(a1);
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb1_E3__3EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS9_NSE_14default_deleteIS9_EEEEENUlPvE_8__invokeESJ_(void *a1)
{
  v2 = *a1;
  v3 = **a1;
  v4 = *(*a1 + 8);
  object = v4;
  if (v4 && MEMORY[0x29C272BA0](v4) == MEMORY[0x29EDCA9E0])
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

void sub_2974AAF24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, xpc_object_t *a11, xpc_object_t object)
{
  xpc_release(object);
  _ZNSt3__110unique_ptrIZZN4coex6Module5State4initEvEUb1_E3__3NS_14default_deleteIS4_EEED1B8ne200100Ev(&a11);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a10);
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

void sub_2974AB070(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, xpc_object_t *a11, xpc_object_t object)
{
  xpc_release(object);
  _ZNSt3__110unique_ptrIZZN4coex6Module5State4initEvEUb2_E3__4NS_14default_deleteIS4_EEED1B8ne200100Ev(&a11);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a10);
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

void sub_2974AB1BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, xpc_object_t *a11, xpc_object_t object)
{
  xpc_release(object);
  _ZNSt3__110unique_ptrIZZN4coex6Module5State4initEvEUb3_E3__5NS_14default_deleteIS4_EEED1B8ne200100Ev(&a11);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a10);
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
  if (v3 && MEMORY[0x29C272BA0]((*a1)[1]) == MEMORY[0x29EDCAA00])
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
    _os_log_error_impl(&dword_297476000, v5, OS_LOG_TYPE_ERROR, "WCMCellularSetWCI2CalibrationInfo not supported", v7, 2u);
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
  if (v3 && MEMORY[0x29C272BA0](v3) == MEMORY[0x29EDCAA00])
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

void sub_2974AB454(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, xpc_object_t *a11)
{
  xpc_release(v11);
  _ZNSt3__110unique_ptrIZZN4coex6Module5State4initEvEUb5_E3__7NS_14default_deleteIS4_EEED1B8ne200100Ev(&a11);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a10);
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
  if (v3 && MEMORY[0x29C272BA0](v3) == MEMORY[0x29EDCAA00])
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

void sub_2974AB5D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, xpc_object_t *a11)
{
  xpc_release(v11);
  _ZNSt3__110unique_ptrIZZN4coex6Module5State4initEvEUb6_E3__8NS_14default_deleteIS4_EEED1B8ne200100Ev(&a11);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a10);
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
  if (v4 && MEMORY[0x29C272BA0](v4) == MEMORY[0x29EDCA9E0])
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

void sub_2974AB740(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, xpc_object_t *a11, xpc_object_t object)
{
  xpc_release(object);
  _ZNSt3__110unique_ptrIZZN4coex6Module5State4initEvEUb7_E3__9NS_14default_deleteIS4_EEED1B8ne200100Ev(&a11);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a10);
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

void sub_2974AB878(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  operator delete(v10);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a10);
  _Unwind_Resume(a1);
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb9_E4__11EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS9_NSE_14default_deleteIS9_EEEEENUlPvE_8__invokeESJ_(void *a1)
{
  v2 = *a1;
  v4 = **a1;
  v3 = *(*a1 + 8);
  v6 = v3;
  if (v3 && MEMORY[0x29C272BA0](v3) == MEMORY[0x29EDCAA00])
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

void sub_2974AB9A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, xpc_object_t *a11)
{
  xpc_release(v11);
  _ZNSt3__110unique_ptrIZZN4coex6Module5State4initEvEUb9_E4__11NS_14default_deleteIS4_EEED1B8ne200100Ev(&a11);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a10);
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
  if (v3 && MEMORY[0x29C272BA0](v3) == MEMORY[0x29EDCAA00])
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

void sub_2974ABB1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, xpc_object_t *a11)
{
  xpc_release(v11);
  _ZNSt3__110unique_ptrIZZN4coex6Module5State4initEvEUb10_E4__12NS_14default_deleteIS4_EEED1B8ne200100Ev(&a11);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a10);
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
  if (v4 && MEMORY[0x29C272BA0](v4) == MEMORY[0x29EDCAA00])
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

void sub_2974ABC8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, xpc_object_t *a11, xpc_object_t object)
{
  xpc_release(object);
  _ZNSt3__110unique_ptrIZZN4coex6Module5State4initEvEUb11_E4__13NS_14default_deleteIS4_EEED1B8ne200100Ev(&a11);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a10);
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
  if (v3 && MEMORY[0x29C272BA0](v3) == MEMORY[0x29EDCAA00])
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

void sub_2974ABE08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, xpc_object_t *a11)
{
  xpc_release(v11);
  _ZNSt3__110unique_ptrIZZN4coex6Module5State4initEvEUb12_E4__14NS_14default_deleteIS4_EEED1B8ne200100Ev(&a11);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a10);
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
  if (v4 && MEMORY[0x29C272BA0](v4) == MEMORY[0x29EDCAA00])
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

void sub_2974ABF78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, xpc_object_t *a11, xpc_object_t object)
{
  xpc_release(object);
  _ZNSt3__110unique_ptrIZZN4coex6Module5State4initEvEUb13_E4__15NS_14default_deleteIS4_EEED1B8ne200100Ev(&a11);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a10);
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
  if (v4 && MEMORY[0x29C272BA0](v4) == MEMORY[0x29EDCAA00])
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

void sub_2974AC0E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, xpc_object_t *a11, xpc_object_t object)
{
  xpc_release(object);
  _ZNSt3__110unique_ptrIZZN4coex6Module5State4initEvEUb14_E4__16NS_14default_deleteIS4_EEED1B8ne200100Ev(&a11);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a10);
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
  if (v4 && MEMORY[0x29C272BA0](v4) == MEMORY[0x29EDCAA00])
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

void sub_2974AC258(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, xpc_object_t *a11, xpc_object_t object)
{
  xpc_release(object);
  _ZNSt3__110unique_ptrIZZN4coex6Module5State4initEvEUb15_E4__17NS_14default_deleteIS4_EEED1B8ne200100Ev(&a11);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a10);
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
  if (v4 && MEMORY[0x29C272BA0](v4) == MEMORY[0x29EDCAA00])
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

void sub_2974AC3C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, xpc_object_t *a11, xpc_object_t object)
{
  xpc_release(object);
  _ZNSt3__110unique_ptrIZZN4coex6Module5State4initEvEUb16_E4__18NS_14default_deleteIS4_EEED1B8ne200100Ev(&a11);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a10);
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
  if (v4 && MEMORY[0x29C272BA0](v4) == MEMORY[0x29EDCAA00])
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

void sub_2974AC538(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, xpc_object_t *a11, xpc_object_t object)
{
  xpc_release(object);
  _ZNSt3__110unique_ptrIZZN4coex6Module5State4initEvEUb17_E4__19NS_14default_deleteIS4_EEED1B8ne200100Ev(&a11);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a10);
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
  if (v3 && MEMORY[0x29C272BA0](v3) == MEMORY[0x29EDCAA00])
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

void sub_2974AC6B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, xpc_object_t *a11)
{
  xpc_release(v11);
  _ZNSt3__110unique_ptrIZZN4coex6Module5State4initEvEUb18_E4__20NS_14default_deleteIS4_EEED1B8ne200100Ev(&a11);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a10);
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
  if (v3 && MEMORY[0x29C272BA0](v3) == MEMORY[0x29EDCAA00])
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

void sub_2974AC830(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, xpc_object_t *a11)
{
  xpc_release(v11);
  _ZNSt3__110unique_ptrIZZN4coex6Module5State4initEvEUb19_E4__21NS_14default_deleteIS4_EEED1B8ne200100Ev(&a11);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a10);
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
  if (v3 && MEMORY[0x29C272BA0](v3) == MEMORY[0x29EDCAA00])
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

void sub_2974AC9AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, xpc_object_t *a11)
{
  xpc_release(v11);
  _ZNSt3__110unique_ptrIZZN4coex6Module5State4initEvEUb20_E4__22NS_14default_deleteIS4_EEED1B8ne200100Ev(&a11);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a10);
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
  if (v3 && MEMORY[0x29C272BA0](v3) == MEMORY[0x29EDCAA00])
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

void sub_2974ACB28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, xpc_object_t *a11)
{
  xpc_release(v11);
  _ZNSt3__110unique_ptrIZZN4coex6Module5State4initEvEUb21_E4__23NS_14default_deleteIS4_EEED1B8ne200100Ev(&a11);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a10);
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
  if (v3 && MEMORY[0x29C272BA0](v3) == MEMORY[0x29EDCAA00])
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

void sub_2974ACCA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, xpc_object_t *a11)
{
  xpc_release(v11);
  _ZNSt3__110unique_ptrIZZN4coex6Module5State4initEvEUb22_E4__24NS_14default_deleteIS4_EEED1B8ne200100Ev(&a11);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a10);
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
  if (v4 && MEMORY[0x29C272BA0](v4) == MEMORY[0x29EDCAA00])
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

void sub_2974ACE14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, xpc_object_t *a11, xpc_object_t object)
{
  xpc_release(object);
  _ZNSt3__110unique_ptrIZZN4coex6Module5State4initEvEUb23_E4__25NS_14default_deleteIS4_EEED1B8ne200100Ev(&a11);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a10);
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

void std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>>>::destroy(*a1);
    std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>>>::destroy(a1[1]);

    operator delete(a1);
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