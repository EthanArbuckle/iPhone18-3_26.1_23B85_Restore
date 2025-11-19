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
            _os_log_error_impl(&dword_296FF7000, v8, OS_LOG_TYPE_ERROR, "Timeout for getting power estimation", &block, 2u);
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

void sub_297067B8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *aBlock, uint64_t a17, char a18)
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

  v5 = &unk_2A1E260F0;
  v29[0] = &unk_2A1E260F0;
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
    _os_log_impl(&dword_296FF7000, v11, OS_LOG_TYPE_DEFAULT, "#I Brick mode is %s", &buf, 0xCu);
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

void sub_297067F90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *aBlock, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23)
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
  if ((atomic_load_explicit(&qword_2A18B77D0, memory_order_acquire) & 1) == 0)
  {
    v21 = __cxa_guard_acquire(&qword_2A18B77D0);
    if (v21)
    {
      dword_2A18B77CC = capabilities::abs::thermalSensorMaxCount(v21);
      __cxa_guard_release(&qword_2A18B77D0);
    }
  }

  v23 = 0;
  memset(v22, 0, sizeof(v22));
  v4 = dword_2A18B77CC;
  if (dword_2A18B77CC == 2)
  {
    v5 = 2;
  }

  else
  {
    if (dword_2A18B77CC != 3)
    {
      v14 = *(a1 + 104);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        *v25 = v4;
        _os_log_error_impl(&dword_296FF7000, v14, OS_LOG_TYPE_ERROR, "Failed to find the SMC Exchange BB version with the number of sensor capability %u", buf, 8u);
      }

      goto LABEL_28;
    }

    v5 = 1;
  }

  v6 = _MergedGlobals_2++;
  v7 = *(a1 + 104);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    *v25 = v5;
    _os_log_debug_impl(&dword_296FF7000, v7, OS_LOG_TYPE_DEBUG, "#D Thermal Report to SMC: Version: %u", buf, 8u);
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
  _os_log_debug_impl(&dword_296FF7000, v7, OS_LOG_TYPE_DEBUG, "#D Thermal Report to SMC: Number of Sensors: %u", buf, 8u);
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
      _os_log_impl(&dword_296FF7000, v18, OS_LOG_TYPE_DEFAULT, "#I %s to report the thermal data to SMC, result: %u", buf, 0x12u);
    }

    goto LABEL_28;
  }

LABEL_23:
  *buf = 67109120;
  *v25 = v6;
  _os_log_debug_impl(&dword_296FF7000, v7, OS_LOG_TYPE_DEBUG, "#D Thermal Report to SMC: Sequence Number: %u", buf, 8u);
  v8 = *a2;
  v9 = a2[1];
  if (*a2 == v9)
  {
    goto LABEL_24;
  }

LABEL_10:
  v10 = dword_2A18B77CC;
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
      _os_log_debug_impl(&dword_296FF7000, v13, OS_LOG_TYPE_DEBUG, "#D Thermal Report to SMC: Sensor ID: %d, Sensor Data: %f", buf, 0x12u);
      v10 = dword_2A18B77CC;
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
    _os_log_error_impl(&dword_296FF7000, v15, OS_LOG_TYPE_ERROR, "Sensor ID (%d) cannot exceed the max number of sensors (%u) in the device", buf, 0xEu);
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
    _os_log_impl(&dword_296FF7000, v11, OS_LOG_TYPE_DEFAULT, "#I Thermal Report to %s", buf, 0xCu);
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

void sub_297068760(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, void *aBlock, uint64_t a17, char a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, std::__shared_weak_count *a27)
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
          _os_log_debug_impl(&dword_296FF7000, v11, OS_LOG_TYPE_DEBUG, "#D Reporting thermal data to SMC:", buf, 2u);
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
              _os_log_debug_impl(&dword_296FF7000, v12, OS_LOG_TYPE_DEBUG, "#D Sensor ID: %d", buf, 8u);
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
                  _os_log_debug_impl(&dword_296FF7000, v16, OS_LOG_TYPE_DEBUG, v17, buf, v18);
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

        if (MEMORY[0x29C26CE60](v24) == v25)
        {
          xpc_retain(v24);
          goto LABEL_32;
        }

        v26 = xpc_null_create();
LABEL_31:
        xdict = v26;
LABEL_32:
        xpc_release(v24);
        if (MEMORY[0x29C26CE60](xdict) != v25)
        {
          v27 = *(v5 + 104);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_296FF7000, v27, OS_LOG_TYPE_ERROR, "Failed to create xpc dictionary!", buf, 2u);
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
          _os_log_debug_impl(&dword_296FF7000, v30, OS_LOG_TYPE_DEBUG, "#D Reporting thermal data to Thermal Monitor: %s", object, 0xCu);
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
        _os_log_impl(&dword_296FF7000, v22, OS_LOG_TYPE_DEFAULT, "#I Thermal Data is empty!", buf, 2u);
      }
    }
  }

LABEL_65:
  v39 = *MEMORY[0x29EDCA608];
}

void sub_297068D6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *aBlock, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, xpc_object_t object, char a22, uint64_t a23, uint64_t a24, uint64_t a25, xpc_object_t a26)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void xpc::dict::to_debug_string(xpc::dict *this@<X0>, void *a2@<X8>)
{
  v3 = MEMORY[0x29C26CD90](*this);
  memset(a2, 170, 24);
  v4 = strlen(v3);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    if ((v4 | 7) == 0x17)
    {
      v6 = 25;
    }

    else
    {
      v6 = (v4 | 7) + 1;
    }

    v7 = operator new(v6);
    a2[1] = v5;
    a2[2] = v6 | 0x8000000000000000;
    *a2 = v7;
    a2 = v7;
    goto LABEL_9;
  }

  *(a2 + 23) = v4;
  if (v4)
  {
LABEL_9:
    memcpy(a2, v3, v5);
  }

  *(a2 + v5) = 0;

  free(v3);
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
        _os_log_debug_impl(&dword_296FF7000, v9, OS_LOG_TYPE_DEBUG, "#D Thermal Report Interval (%u ms) is set.", object, 8u);
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

void sub_2970690AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object)
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
        _os_log_debug_impl(&dword_296FF7000, v10, OS_LOG_TYPE_DEBUG, "#D Current power estimation in baseband side: %s, and reporting back to CPMS: %@", object, 0x16u);
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
        if (*object && MEMORY[0x29C26CE60](*object) == v16)
        {
          xpc_retain(v15);
        }

        else
        {
          v15 = xpc_null_create();
          __p[0] = v15;
        }

        xpc_release(*object);
        if (MEMORY[0x29C26CE60](v15) == v16)
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

void sub_297069404(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void dispatch::block<void({block_pointer})(int,xpc::dict)>::operator()<int,xpc::dict&>(uint64_t *a1, unsigned int *a2, void **a3)
{
  v3 = *a1;
  v4 = *a2;
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

  (*(v3 + 16))(v3, v4, &object);
  xpc_release(object);
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
    _os_log_debug_impl(&dword_296FF7000, v3, OS_LOG_TYPE_DEBUG, "#D Because baseband is not in traffic(%s) or online(%s), reporting idle power estimation back to CPMS: %@", &v9, 0x20u);
    v8 = *MEMORY[0x29EDCA608];
  }

  else
  {
    v4 = *MEMORY[0x29EDCA608];
  }
}

void GlobalService::getShutdownStages(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
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

void sub_297069914(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  std::unique_ptr<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
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

void sub_297069A0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  std::unique_ptr<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
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

void sub_297069B04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  std::unique_ptr<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
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
      _os_log_fault_impl(&dword_296FF7000, v12, OS_LOG_TYPE_FAULT, "%s (%s): File: %s Line: %d", buf, 0x26u);
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
  _os_log_error_impl(&dword_296FF7000, v7, OS_LOG_TYPE_ERROR, "Failed to initialization of CPMS power config.", buf, 2u);
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

void sub_297069D9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  operator delete(v10);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
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
  _os_log_error_impl(&dword_296FF7000, v10, OS_LOG_TYPE_ERROR, "Expected response handler", aBlock, 2u);
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

void sub_297069FDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *aBlock)
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
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
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

  if (MEMORY[0x29C26CE60](v10) != v11)
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
  if (MEMORY[0x29C26CE60](v24) == v11)
  {
    v17 = *(a2 + 8);
    if (*a2 == v17)
    {
      v20 = *(v5 + 104);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(object[0]) = 0;
        _os_log_impl(&dword_296FF7000, v20, OS_LOG_TYPE_DEFAULT, "#I Thermal IDs are empty!", object, 2u);
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

void sub_29706A2DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object)
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

void sub_29706A4CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11)
{
  if (v11)
  {
    _Block_release(v11);
  }

  _ZNSt3__110unique_ptrIZZN10CPMSModule28registerCommandHandlers_syncEvEUb0_E3__5NS_14default_deleteIS2_EEED1B8ne200100Ev(&a11);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
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
  _os_log_error_impl(&dword_296FF7000, v10, OS_LOG_TYPE_ERROR, "Expected response handler", aBlock, 2u);
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

void sub_29706A770(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *aBlock)
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
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
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

  if (MEMORY[0x29C26CE60](v10) != v11)
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
  if (MEMORY[0x29C26CE60](v24) == v11)
  {
    v17 = *(a2 + 8);
    if (*a2 == v17)
    {
      v20 = *(v5 + 104);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(object[0]) = 0;
        _os_log_impl(&dword_296FF7000, v20, OS_LOG_TYPE_DEFAULT, "#I Power Mitigation Data are empty!", object, 2u);
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

void sub_29706AA70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object)
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
  if (MEMORY[0x29C26CE60](*(*a1 + 24)) != MEMORY[0x29EDCAA00] || (v8 = *(v2 + 24)) == 0)
  {
    v4 = *(v3 + 104);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      LOWORD(object) = 0;
      _os_log_error_impl(&dword_296FF7000, v4, OS_LOG_TYPE_ERROR, "Expected intput/response handler", &object, 2u);
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
        _os_log_impl(&dword_296FF7000, v22, OS_LOG_TYPE_DEFAULT, "#I Budget Scale: %s, value: %d", buf, 0x12u);
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

void sub_29706B0B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, int a18, __int16 a19, char a20, char a21, xpc_object_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28)
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
  *result = &unk_2A1E25F70;
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
  *a1 = &unk_2A1E25F70;
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
  *result = &unk_2A1E25F70;
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
  *a2 = &unk_2A1E25F70;
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

void sub_29706B694(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
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

void sub_29706B980(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
    std::unique_ptr<CPMSModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},std::default_delete<CPMSModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&a10);
    std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
    _Unwind_Resume(a1);
  }

  std::unique_ptr<CPMSModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},std::default_delete<CPMSModule::registerEventHandlers_sync(void)::$_0::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
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
  *result = &unk_2A1E25FF0;
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
  *a1 = &unk_2A1E25FF0;
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
  *result = &unk_2A1E25FF0;
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
  *a2 = &unk_2A1E25FF0;
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

void sub_29706BE28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
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

void sub_29706C014(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, xpc_object_t object)
{
  xpc_release(object);
  std::unique_ptr<CPMSModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1},std::default_delete<CPMSModule::registerEventHandlers_sync(void)::$_1::operator() const(dispatch::group_session,xpc::dict)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&a11);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
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
  *result = &unk_2A1E26070;
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
  *a1 = &unk_2A1E26070;
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
  *result = &unk_2A1E26070;
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
  *a2 = &unk_2A1E26070;
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

void sub_29706C47C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
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
  _os_log_debug_impl(&dword_296FF7000, v10, OS_LOG_TYPE_DEBUG, "#D Baseband is in %s state", __p, 0xCu);
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

void sub_29706C7A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, xpc_object_t object, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
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
    _os_log_impl(&dword_296FF7000, v5, OS_LOG_TYPE_DEFAULT, "#I Given budget from CPMS is %@", &buf, 0xCu);
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
    _os_log_impl(&dword_296FF7000, v6, OS_LOG_TYPE_DEFAULT, "#I Budget from CPMS: %s, Cached Budgets: %s", v21, 0x16u);
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
    _os_log_impl(&dword_296FF7000, v12, OS_LOG_TYPE_DEFAULT, "#I Acked CPMS %s for power budget %@", v23, 0x16u);
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

void sub_29706CC8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  PowerBudget::~PowerBudget(&a26);
  operator delete(v26);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
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
  *result = &unk_2A1E260F0;
  result[1] = v3;
  return result;
}

uint64_t std::__function::__func<CPMSModule::evaluateBrickMode_sync(PowerBudget)::$_0,std::allocator<CPMSModule::evaluateBrickMode_sync(PowerBudget)::$_0>,BOOL ()(abm::BasebandCPMSPowerBudgetScale const&,std::optional<unsigned int> const&)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1E260F0;
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
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<CommandDriverFactory>::~PthreadMutexGuardPolicy, &ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance, &dword_296FF7000);
  }

  return result;
}

void Simulator::create(uint64_t *a1@<X0>, atomic_ullong *a2@<X8>)
{
  v4 = operator new(0x78uLL);
  v5 = v4;
  v6 = *a1;
  v7 = a1[1];
  v8[0] = v6;
  v8[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  Simulator::Simulator(v4, v8);
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  std::shared_ptr<Simulator>::shared_ptr[abi:ne200100]<Simulator,std::shared_ptr<Simulator> ctu::SharedSynchronizable<Simulator>::make_shared_ptr<Simulator>(Simulator*)::{lambda(Simulator*)#1},0>(a2, v5);
  if (v7)
  {

    std::__shared_weak_count::__release_weak(v7);
  }
}

void sub_29706D0AC(_Unwind_Exception *exception_object)
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

uint64_t Simulator::Simulator(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  *a1 = &unk_2A1E2E7E8;
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
    *a1 = &unk_2A1E23A28;
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
    *a1 = &unk_2A1E23A28;
  }

  *a1 = &unk_2A1E26180;
  ctu::OsLogContext::OsLogContext(v6, "com.apple.telephony.abm", "simulator");
  ctu::SharedLoggable<Simulator,ctu::OsLogLogger>::SharedLoggable<ctu::OsLogContext>((a1 + 72), "simulator", QOS_CLASS_DEFAULT);
  ctu::OsLogContext::~OsLogContext(v6);
  *a1 = &unk_2A1E26180;
  *(a1 + 112) = 0;
  return a1;
}

void sub_29706D228(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  ctu::OsLogContext::~OsLogContext(&a9);
  Service::~Service(v9);
  _Unwind_Resume(a1);
}

void *ctu::SharedLoggable<Simulator,ctu::OsLogLogger>::SharedLoggable<ctu::OsLogContext>(void *a1, const char *a2, dispatch_qos_class_t a3)
{
  object = 0;
  ctu::SharedSynchronizable<Simulator>::SharedSynchronizable(a1, a2, a3, &object);
  if (object)
  {
    dispatch_release(object);
  }

  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x29C26B010](a1 + 4, &object);
  MEMORY[0x29C26B020](&object);
  return a1;
}

void Simulator::bootstrap(void *a1, int a2, dispatch_object_t *a3)
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
    dispatch_async_f(v10, v11, dispatch::async<void ctu::SharedSynchronizable<Simulator>::execute_wrapped<Simulator::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(Simulator::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<Simulator::bootstrap(BootstrapStage,dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<Simulator::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke);
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
  dispatch_async_f(v17, v18, dispatch::async<void ctu::SharedSynchronizable<Simulator>::execute_wrapped<Simulator::bootstrap(BootstrapStage,dispatch::group_session)::$_1>(Simulator::bootstrap(BootstrapStage,dispatch::group_session)::$_1 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<Simulator::bootstrap(BootstrapStage,dispatch::group_session)::$_1,dispatch_queue_s *::default_delete<Simulator::bootstrap(BootstrapStage,dispatch::group_session)::$_1>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_14;
  }
}

void Simulator::registerCommandHandlers_sync(Simulator *this)
{
  v2 = *(this + 13);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(__dst[0]) = 0;
    _os_log_debug_impl(&dword_296FF7000, v2, OS_LOG_TYPE_DEBUG, "#D Registering command handlers", __dst, 2u);
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

  v7 = *MEMORY[0x29EDBF698];
  v8 = strlen(*MEMORY[0x29EDBF698]);
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
  v13[2] = ___ZN9Simulator28registerCommandHandlers_syncEv_block_invoke;
  v13[3] = &__block_descriptor_tmp_4_1;
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

void sub_29706D6D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
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

void ___ZN9Simulator28registerCommandHandlers_syncEv_block_invoke(void *a1, void **a2, void **a3)
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
      v12[2] = ___ZN9Simulator28registerCommandHandlers_syncEv_block_invoke_2;
      v12[3] = &__block_descriptor_tmp_27;
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
          ctu::SharedSynchronizable<Simulator>::execute_wrapped((v7 + 72), v12);
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

void ___ZN9Simulator28registerCommandHandlers_syncEv_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  value = xpc_dictionary_get_value(*(a1 + 40), *MEMORY[0x29EDBF400]);
  object = value;
  if (value)
  {
    xpc_retain(value);
  }

  else
  {
    object = xpc_null_create();
  }

  v4 = xpc::dyn_cast_or_default(&object, 0);
  xpc_release(object);
  if ((v4 | 0xE0000000) != 0xE0000270)
  {
    *(v2 + 112) = (v4 | 0xE0000000) == -536870272;
  }

  v5 = xpc_null_create();
  v6 = *(a1 + 48);
  object = v5;
  v7 = xpc_null_create();
  (*(v6 + 16))(v6, 3760250880, &object);
  xpc_release(object);
  xpc_release(v7);
}

void sub_29706D994(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(v10);
  _Unwind_Resume(a1);
}

uint64_t Simulator::handleSimulatedPowerNotification_sync(Simulator *this, int a2)
{
  if (a2 != -536870288)
  {
    *(this + 112) = a2 == -536870272;
  }

  return 0;
}

uint64_t __copy_helper_block_e8_40c33_ZTSNSt3__18weak_ptrI9SimulatorEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c33_ZTSNSt3__18weak_ptrI9SimulatorEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void Simulator::registerEventHandlers_sync(Simulator *this)
{
  v18 = *MEMORY[0x29EDCA608];
  v2 = *(this + 13);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(__p) = 0;
    _os_log_debug_impl(&dword_296FF7000, v2, OS_LOG_TYPE_DEBUG, "#D Registering event handlers", &__p, 2u);
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

  v7 = *MEMORY[0x29EDBF278];
  v8 = strlen(*MEMORY[0x29EDBF278]);
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

    p_p = operator new(v11);
    *(&__p + 1) = v9;
    v15 = v11 | 0x8000000000000000;
    *&__p = p_p;
    goto LABEL_14;
  }

  HIBYTE(v15) = v8;
  p_p = &__p;
  if (v8)
  {
LABEL_14:
    memmove(p_p, v7, v9);
  }

  *(p_p + v9) = 0;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v17 = 0;
  v12 = operator new(0x20uLL);
  *v12 = &unk_2A1E263B8;
  v12[1] = this;
  v12[2] = v4;
  v12[3] = v6;
  v17 = v12;
  Service::registerEventHandler(this, &__p, v16);
  if (v17 == v16)
  {
    (*(*v17 + 32))(v17);
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

LABEL_21:
    operator delete(__p);
    goto LABEL_19;
  }

  if (v17)
  {
    (*(*v17 + 40))();
  }

  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_21;
  }

LABEL_19:
  Service::eventsOn(this);
  std::__shared_weak_count::__release_weak(v6);
  v13 = *MEMORY[0x29EDCA608];
}

_WORD *Simulator::getBootstrapStages@<X0>(void *a1@<X8>)
{
  v3 = operator new(2uLL);
  *a1 = v3;
  *v3 = 256;
  result = v3 + 1;
  a1[1] = result;
  a1[2] = result;
  return result;
}

_BYTE *Simulator::getShutdownStages@<X0>(void *a1@<X8>)
{
  v3 = operator new(1uLL);
  *a1 = v3;
  *v3 = 3;
  result = v3 + 1;
  a1[1] = result;
  a1[2] = result;
  return result;
}

void Simulator::shutdownWithStage(uint64_t a1, char a2, NSObject **a3)
{
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 1174405120;
  v6[2] = ___ZN9Simulator17shutdownWithStageE13ShutdownStageN8dispatch13group_sessionE_block_invoke;
  v6[3] = &__block_descriptor_tmp_5_5;
  v5 = *a3;
  group = v5;
  if (v5)
  {
    dispatch_retain(v5);
    dispatch_group_enter(group);
  }

  v8 = a2;
  ctu::SharedSynchronizable<Simulator>::execute_wrapped((a1 + 72), v6);
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }
}

void Simulator::~Simulator(Simulator *this)
{
  MEMORY[0x29C26B020](this + 104);
  v2 = *(this + 12);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(this + 11);
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = *(this + 10);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  *this = &unk_2A1E2E7E8;
  std::__tree<std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>>>::destroy(this + 48, *(this + 7));
  v5 = *(this + 3);
  if (v5)
  {
    v6 = *(this + 4);
    v7 = *(this + 3);
    if (v6 != v5)
    {
      do
      {
        v8 = *(v6 - 1);
        v6 -= 3;
        if (v8 < 0)
        {
          operator delete(*v6);
        }
      }

      while (v6 != v5);
      v7 = *(this + 3);
    }

    *(this + 4) = v5;
    operator delete(v7);
  }

  v9 = *(this + 2);
  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }
}

{
  MEMORY[0x29C26B020](this + 104);
  v2 = *(this + 12);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(this + 11);
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = *(this + 10);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  *this = &unk_2A1E2E7E8;
  std::__tree<std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>>>::destroy(this + 48, *(this + 7));
  v5 = *(this + 3);
  if (v5)
  {
    v6 = *(this + 4);
    v7 = *(this + 3);
    if (v6 != v5)
    {
      do
      {
        v8 = *(v6 - 1);
        v6 -= 3;
        if (v8 < 0)
        {
          operator delete(*v6);
        }
      }

      while (v6 != v5);
      v7 = *(this + 3);
    }

    *(this + 4) = v5;
    operator delete(v7);
  }

  v9 = *(this + 2);
  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }

  operator delete(this);
}

atomic_ullong *std::shared_ptr<Simulator>::shared_ptr[abi:ne200100]<Simulator,std::shared_ptr<Simulator> ctu::SharedSynchronizable<Simulator>::make_shared_ptr<Simulator>(Simulator*)::{lambda(Simulator*)#1},0>(atomic_ullong *a1, atomic_ullong a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_2A1E26330;
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

void sub_29706E108(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[11], v1, std::shared_ptr<Simulator> ctu::SharedSynchronizable<Simulator>::make_shared_ptr<Simulator>(Simulator*)::{lambda(Simulator*)#1}::operator() const(Simulator*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<Simulator *,std::shared_ptr<Simulator> ctu::SharedSynchronizable<Simulator>::make_shared_ptr<Simulator>(Simulator*)::{lambda(Simulator *)#1},std::allocator<Simulator>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<Simulator *,std::shared_ptr<Simulator> ctu::SharedSynchronizable<Simulator>::make_shared_ptr<Simulator>(Simulator*)::{lambda(Simulator *)#1},std::allocator<Simulator>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableI9SimulatorE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableI9SimulatorE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableI9SimulatorE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableI9SimulatorE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::shared_ptr<Simulator> ctu::SharedSynchronizable<Simulator>::make_shared_ptr<Simulator>(Simulator*)::{lambda(Simulator*)#1}::operator() const(Simulator*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void *ctu::SharedSynchronizable<Simulator>::SharedSynchronizable(void *a1, const char *a2, dispatch_qos_class_t a3, dispatch_object_t *a4)
{
  v8 = *a4;
  if (*a4)
  {
    dispatch_retain(*a4);
  }

  initially_inactive = dispatch_queue_attr_make_initially_inactive(0);
  v10 = dispatch_queue_create_with_target_V2(a2, initially_inactive, v8);
  dispatch_set_qos_class_floor(v10, a3, 0);
  dispatch_activate(v10);
  *a1 = 0;
  a1[1] = 0;
  a1[2] = v10;
  if (v10)
  {
    dispatch_retain(v10);
  }

  v11 = *a4;
  a1[3] = *a4;
  if (v11)
  {
    dispatch_retain(v11);
  }

  if (v10)
  {
    dispatch_release(v10);
  }

  if (v8)
  {
    dispatch_release(v8);
  }

  return a1;
}

void dispatch::async<void ctu::SharedSynchronizable<Simulator>::execute_wrapped<Simulator::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(Simulator::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<Simulator::bootstrap(BootstrapStage,dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<Simulator::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v2 = *a1;
  Simulator::registerCommandHandlers_sync(**a1);
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

void sub_29706E3B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  std::unique_ptr<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<Simulator>::execute_wrapped<Simulator::bootstrap(BootstrapStage,dispatch::group_session)::$_1>(Simulator::bootstrap(BootstrapStage,dispatch::group_session)::$_1 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<Simulator::bootstrap(BootstrapStage,dispatch::group_session)::$_1,dispatch_queue_s *::default_delete<Simulator::bootstrap(BootstrapStage,dispatch::group_session)::$_1>>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v2 = *a1;
  Simulator::registerEventHandlers_sync(**a1);
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

void sub_29706E4A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  std::unique_ptr<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void ctu::SharedSynchronizable<Simulator>::execute_wrapped(uint64_t *a1, uint64_t a2)
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
  block[2] = ___ZNK3ctu20SharedSynchronizableI9SimulatorE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_2A1E26378;
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

uint64_t __copy_helper_block_e8_40c37_ZTSNSt3__110shared_ptrIK9SimulatorEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c37_ZTSNSt3__110shared_ptrIK9SimulatorEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t std::__function::__func<Simulator::registerEventHandlers_sync(void)::$_0,std::allocator<Simulator::registerEventHandlers_sync(void)::$_0>,void ()(dispatch::group_session,xpc::dict)>::~__func(uint64_t result)
{
  *result = &unk_2A1E263B8;
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
  *a1 = &unk_2A1E263B8;
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
  *result = &unk_2A1E263B8;
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
  *a2 = &unk_2A1E263B8;
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
      _os_log_impl(&dword_296FF7000, v4, OS_LOG_TYPE_DEFAULT, "#I Baseband reset during simulated low power, simulating exit low power", v8, 2u);
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

uint64_t __cxx_global_var_init_3()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ctu::power::assertion>::~PthreadMutexGuardPolicy, &ctu::Singleton<ctu::power::assertion,ctu::power::assertion,ctu::PthreadMutexGuardPolicy<ctu::power::assertion>>::sInstance, &dword_296FF7000);
  }

  return result;
}

{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<sys::UIObserver>::~PthreadMutexGuardPolicy, &ctu::Singleton<sys::UIObserver,sys::UIObserver,ctu::PthreadMutexGuardPolicy<sys::UIObserver>>::sInstance, &dword_296FF7000);
  }

  return result;
}

void IOKitEventNotifier::start(IOKitEventNotifier *this)
{
  v45 = *MEMORY[0x29EDCA608];
  if (!*(this + 1))
  {
    goto LABEL_59;
  }

  v2 = *(this + 3);
  if (!v2 || !*(this + 4))
  {
    goto LABEL_12;
  }

  v3 = _Block_copy(v2);
  v4 = *(this + 4);
  aBlock = v3;
  object = v4;
  if (v4)
  {
    dispatch_retain(v4);
  }

  v5 = ctu::iokit::Controller::setAccessoryCallback();
  if (object)
  {
    dispatch_release(object);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if ((v5 & 1) == 0 && (v6 = *this, os_log_type_enabled(*this, OS_LOG_TYPE_ERROR)))
  {
    *buf = 0;
    _os_log_error_impl(&dword_296FF7000, v6, OS_LOG_TYPE_ERROR, "Failed to setup accessory callback", buf, 2u);
    v7 = *(this + 5);
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  else
  {
LABEL_12:
    v7 = *(this + 5);
    if (!v7)
    {
      goto LABEL_23;
    }
  }

  if (*(this + 6))
  {
    v8 = *(this + 1);
    v9 = _Block_copy(v7);
    v10 = *(this + 6);
    v39 = v9;
    v40 = v10;
    if (v10)
    {
      dispatch_retain(v10);
    }

    v11 = ctu::iokit::Controller::setDisplayCallback();
    if (v40)
    {
      dispatch_release(v40);
    }

    if (v39)
    {
      _Block_release(v39);
    }

    if ((v11 & 1) == 0)
    {
      v12 = *this;
      if (os_log_type_enabled(*this, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_296FF7000, v12, OS_LOG_TYPE_ERROR, "Failed to setup display callback", buf, 2u);
      }
    }
  }

LABEL_23:
  v13 = *(this + 7);
  if (!v13 || !*(this + 8))
  {
    goto LABEL_67;
  }

  v14 = *(this + 1);
  v15 = _Block_copy(v13);
  v16 = *(this + 8);
  v37 = v15;
  v38 = v16;
  if (v16)
  {
    dispatch_retain(v16);
  }

  v17 = ctu::iokit::Controller::setPowerSourceCallback();
  if (v38)
  {
    dispatch_release(v38);
  }

  if (v37)
  {
    _Block_release(v37);
  }

  if ((v17 & 1) == 0 && (v18 = *this, os_log_type_enabled(*this, OS_LOG_TYPE_ERROR)))
  {
    *buf = 0;
    _os_log_error_impl(&dword_296FF7000, v18, OS_LOG_TYPE_ERROR, "Failed to setup power source", buf, 2u);
    if (*(this + 9))
    {
LABEL_34:
      if (*(this + 10))
      {
        goto LABEL_37;
      }
    }
  }

  else
  {
LABEL_67:
    if (*(this + 9))
    {
      goto LABEL_34;
    }
  }

  if (!*(this + 11) || !*(this + 12))
  {
    goto LABEL_59;
  }

LABEL_37:
  v19 = ctu::iokit::Controller::setupCameraService(*(this + 1));
  v20 = *this;
  if (os_log_type_enabled(*this, OS_LOG_TYPE_DEFAULT))
  {
    v21 = "failed";
    if (v19)
    {
      v21 = "succeeded";
    }

    *buf = 136315138;
    v44 = v21;
    _os_log_impl(&dword_296FF7000, v20, OS_LOG_TYPE_DEFAULT, "#I Setup camera service is %s", buf, 0xCu);
  }

  if (v19)
  {
    v22 = *(this + 9);
    if (v22 && *(this + 10))
    {
      v23 = *(this + 1);
      v24 = _Block_copy(v22);
      v25 = *(this + 10);
      v35 = v24;
      v36 = v25;
      if (v25)
      {
        dispatch_retain(v25);
      }

      ctu::iokit::Controller::setFaceIDCallback();
      if (v36)
      {
        dispatch_release(v36);
      }

      if (v35)
      {
        _Block_release(v35);
      }
    }

    v26 = *(this + 11);
    if (v26 && *(this + 12))
    {
      v27 = *(this + 1);
      v28 = _Block_copy(v26);
      v29 = *(this + 12);
      v33 = v28;
      v34 = v29;
      if (v29)
      {
        dispatch_retain(v29);
      }

      ctu::iokit::Controller::setFrontCameraCallback();
      if (v34)
      {
        dispatch_release(v34);
      }

      if (v33)
      {
        _Block_release(v33);
      }
    }

    goto LABEL_59;
  }

  v30 = *this;
  if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
LABEL_59:
    v31 = *MEMORY[0x29EDCA608];
    return;
  }

  *buf = 0;
  _os_log_error_impl(&dword_296FF7000, v30, OS_LOG_TYPE_ERROR, "Failed to setup camera service callback", buf, 2u);
  v32 = *MEMORY[0x29EDCA608];
}

void sub_29706EFC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, char a13, uint64_t a14, char a15, uint64_t a16, char a17)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void IOKitEventNotifier::registerCallbackAccessory(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  if (*a2)
  {
    v4 = _Block_copy(v4);
  }

  v5 = *(a1 + 24);
  *(a1 + 24) = v4;
  if (v5)
  {
    _Block_release(v5);
  }

  v6 = *(a2 + 8);
  if (v6)
  {
    dispatch_retain(v6);
  }

  v7 = *(a1 + 32);
  *(a1 + 32) = v6;
  if (v7)
  {

    dispatch_release(v7);
  }
}

void IOKitEventNotifier::registerCallbackVideo(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  if (*a2)
  {
    v4 = _Block_copy(v4);
  }

  v5 = *(a1 + 40);
  *(a1 + 40) = v4;
  if (v5)
  {
    _Block_release(v5);
  }

  v6 = *(a2 + 8);
  if (v6)
  {
    dispatch_retain(v6);
  }

  v7 = *(a1 + 48);
  *(a1 + 48) = v6;
  if (v7)
  {

    dispatch_release(v7);
  }
}

void IOKitEventNotifier::registerCallbackPowerSource(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  if (*a2)
  {
    v4 = _Block_copy(v4);
  }

  v5 = *(a1 + 56);
  *(a1 + 56) = v4;
  if (v5)
  {
    _Block_release(v5);
  }

  v6 = *(a2 + 8);
  if (v6)
  {
    dispatch_retain(v6);
  }

  v7 = *(a1 + 64);
  *(a1 + 64) = v6;
  if (v7)
  {

    dispatch_release(v7);
  }
}

void IOKitEventNotifier::registerCallbackFaceID(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  if (*a2)
  {
    v4 = _Block_copy(v4);
  }

  v5 = *(a1 + 72);
  *(a1 + 72) = v4;
  if (v5)
  {
    _Block_release(v5);
  }

  v6 = *(a2 + 8);
  if (v6)
  {
    dispatch_retain(v6);
  }

  v7 = *(a1 + 80);
  *(a1 + 80) = v6;
  if (v7)
  {

    dispatch_release(v7);
  }
}

void IOKitEventNotifier::registerCallbackFrontCamera(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  if (*a2)
  {
    v4 = _Block_copy(v4);
  }

  v5 = *(a1 + 88);
  *(a1 + 88) = v4;
  if (v5)
  {
    _Block_release(v5);
  }

  v6 = *(a2 + 8);
  if (v6)
  {
    dispatch_retain(v6);
  }

  v7 = *(a1 + 96);
  *(a1 + 96) = v6;
  if (v7)
  {

    dispatch_release(v7);
  }
}

uint64_t IOKitEventNotifier::queryPowerSource(IOKitEventNotifier *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    return ctu::iokit::Controller::queryPowerSource(v1);
  }

  else
  {
    return 1;
  }
}

void IOKitEventNotifier::IOKitEventNotifier(IOKitEventNotifier *this, __CFRunLoop *a2)
{
  ctu::OsLogLogger::OsLogLogger(this, "com.apple.telephony", "iokit.event");
  ctu::iokit::Controller::create(a2, v4);
  *(this + 88) = 0u;
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 13) = a2;
}

{
  ctu::OsLogLogger::OsLogLogger(this, "com.apple.telephony", "iokit.event");
  ctu::iokit::Controller::create(a2, v4);
  *(this + 88) = 0u;
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 13) = a2;
}

void IOKitEventNotifier::shutdown(IOKitEventNotifier *this)
{
  v2 = *(this + 2);
  *(this + 1) = 0;
  *(this + 2) = 0;
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = *(this + 13);
    if (!v3)
    {
      return;
    }
  }

  else
  {
    v3 = *(this + 13);
    if (!v3)
    {
      return;
    }
  }

  if (CFRunLoopIsWaiting(v3))
  {
    v4 = dispatch_group_create();
    v5 = v4;
    if (v4)
    {
      dispatch_retain(v4);
      dispatch_group_enter(v5);
    }

    v6 = *(this + 13);
    v7 = *MEMORY[0x29EDB8FC0];
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 1174405120;
    block[2] = ___ZN18IOKitEventNotifier8shutdownEv_block_invoke;
    block[3] = &__block_descriptor_tmp_28;
    group = v5;
    if (v5)
    {
      dispatch_retain(v5);
      dispatch_group_enter(group);
    }

    CFRunLoopPerformBlock(v6, v7, block);
    CFRunLoopWakeUp(*(this + 13));
    if (group)
    {
      dispatch_group_leave(group);
      if (group)
      {
        dispatch_release(group);
      }
    }

    if (v5)
    {
      dispatch_group_leave(v5);
      dispatch_release(v5);
      dispatch_group_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
      dispatch_release(v5);
    }

    else
    {
      dispatch_group_wait(0, 0xFFFFFFFFFFFFFFFFLL);
    }
  }
}

void sub_29706F598(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, dispatch_group_t group)
{
  if (group)
  {
    dispatch_group_leave(group);
    dispatch_release(group);
  }

  if (v14)
  {
    dispatch_group_leave(v14);
    dispatch_release(v14);
    dispatch_release(v14);
  }

  _Unwind_Resume(exception_object);
}

void IOKitEventNotifier::~IOKitEventNotifier(IOKitEventNotifier *this)
{
  IOKitEventNotifier::shutdown(this);
  v2 = *(this + 12);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(this + 11);
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = *(this + 10);
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = *(this + 9);
  if (v5)
  {
    _Block_release(v5);
  }

  v6 = *(this + 8);
  if (v6)
  {
    dispatch_release(v6);
  }

  v7 = *(this + 7);
  if (v7)
  {
    _Block_release(v7);
  }

  v8 = *(this + 6);
  if (v8)
  {
    dispatch_release(v8);
  }

  v9 = *(this + 5);
  if (v9)
  {
    _Block_release(v9);
  }

  v10 = *(this + 4);
  if (v10)
  {
    dispatch_release(v10);
  }

  v11 = *(this + 3);
  if (v11)
  {
    _Block_release(v11);
  }

  v12 = *(this + 2);
  if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  JUMPOUT(0x29C26B020);
}

double IOKitEventNotifier::create@<D0>(IOKitEventNotifier *this@<X0>, void *a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  v5 = operator new(0x88uLL);
  v5[1] = 0;
  v5[2] = 0;
  *v5 = &unk_2A1E26468;
  ctu::OsLogLogger::OsLogLogger((v5 + 3), "com.apple.telephony", "iokit.event");
  ctu::iokit::Controller::create(this, v6);
  result = 0.0;
  *(v5 + 6) = 0u;
  *(v5 + 7) = 0u;
  *(v5 + 4) = 0u;
  *(v5 + 5) = 0u;
  *(v5 + 3) = 0u;
  v5[16] = this;
  *a2 = v5 + 3;
  a2[1] = v5;
  return result;
}

uint64_t dispatch::callback<void({block_pointer})(ctu::iokit::TelephonyIOKitAccessoryParameter)>::~callback(uint64_t a1)
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

uint64_t dispatch::callback<void({block_pointer})(ctu::iokit::TelephonyIOKitDisplayLink)>::~callback(uint64_t a1)
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

uint64_t dispatch::callback<void({block_pointer})(ctu::iokit::TelephonyIOKitPowerSource)>::~callback(uint64_t a1)
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

uint64_t dispatch::callback<void({block_pointer})(ctu::iokit::TelephonyIOKitFaceIDState)>::~callback(uint64_t a1)
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

uint64_t dispatch::callback<void({block_pointer})(ctu::iokit::TelephonyIOKitFrontCameraState)>::~callback(uint64_t a1)
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

void std::__shared_ptr_emplace<IOKitEventNotifier>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E26468;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void BootControllerLegacy::BootControllerLegacy(BootControllerLegacy *this)
{
  BootController::BootController(this);
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  *v1 = &unk_2A1E264B8;
  *(v1 + 72) = 1;
}

{
  BootController::BootController(this);
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  *v1 = &unk_2A1E264B8;
  *(v1 + 72) = 1;
}

BOOL BootControllerLegacy::prepare(capabilities::radio *a1, std::string *a2)
{
  v14 = *MEMORY[0x29EDCA608];
  memset(__p, 170, sizeof(__p));
  capabilities::radio::personalizedFirmwarePath(__p, a1);
  v4.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v4.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v13.st_blksize = v4;
  *v13.st_qspare = v4;
  v13.st_birthtimespec = v4;
  *&v13.st_size = v4;
  v13.st_mtimespec = v4;
  v13.st_ctimespec = v4;
  *&v13.st_uid = v4;
  v13.st_atimespec = v4;
  *&v13.st_dev = v4;
  if (SHIBYTE(__p[2]) >= 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  v6 = stat(v5, &v13);
  if (v6)
  {
    v7 = *(a1 + 1);
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
    if (v8)
    {
      v11 = __p;
      if (SHIBYTE(__p[2]) < 0)
      {
        v11 = __p[0];
      }

      v13.st_dev = 136315138;
      *&v13.st_mode = v11;
      _os_log_error_impl(&dword_296FF7000, v7, OS_LOG_TYPE_ERROR, "Failed to find the firmware in %s", &v13, 0xCu);
    }

    capabilities::trace::allowed(v8);
    std::string::__assign_external(a2, "Baseband Firmware Path Not Found", 0x20uLL);
  }

  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  result = v6 == 0;
  v10 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29706FB6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BootControllerLegacy::bootModem(uint64_t a1, uint64_t a2)
{
  v58 = *MEMORY[0x29EDCA608];
  v51 = 0xAAAAAAAAAAAAAAAALL;
  v52 = 0xAAAAAAAAAAAAAAAALL;
  v4 = pthread_mutex_lock(&ctu::Singleton<ctu::XpcJetsamAssertion,ctu::XpcJetsamAssertion,ctu::PthreadMutexGuardPolicy<ctu::XpcJetsamAssertion>>::sInstance);
  v5 = xmmword_2A18B71B0;
  if (!xmmword_2A18B71B0)
  {
    ctu::XpcJetsamAssertion::create_default_global(values, v4);
    v6 = *values;
    values[0] = 0;
    values[1] = 0;
    v7 = *(&xmmword_2A18B71B0 + 1);
    xmmword_2A18B71B0 = v6;
    if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }

    v8 = values[1];
    if (values[1] && !atomic_fetch_add(values[1] + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }

    v5 = xmmword_2A18B71B0;
  }

  v9 = *(&xmmword_2A18B71B0 + 1);
  *buf = v5;
  *&buf[8] = *(&xmmword_2A18B71B0 + 1);
  if (*(&xmmword_2A18B71B0 + 1))
  {
    atomic_fetch_add_explicit((*(&xmmword_2A18B71B0 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ctu::XpcJetsamAssertion,ctu::XpcJetsamAssertion,ctu::PthreadMutexGuardPolicy<ctu::XpcJetsamAssertion>>::sInstance);
  v50 = 13;
  strcpy(__p, "Booting modem");
  ctu::XpcJetsamAssertion::createActivity();
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  BYTE5(v48[2]) = -86;
  HIWORD(v48[2]) = 5290;
  strcpy(v48, "boot::debugArguments");
  if (*(a2 + 23) < 0)
  {
    *(a2 + 8) = 7;
    v10 = *a2;
  }

  else
  {
    *(a2 + 23) = 7;
    v10 = a2;
  }

  strcpy(v10, "unknown");
  cf = 0;
  v11 = BBUpdaterExtremeCreate();
  if (!v11)
  {
    std::string::__assign_external(a2, "failed creating BBUpdaterExtremeRef", 0x23uLL);
    v14 = (a1 + 72);
    if (*(a1 + 72) == 1)
    {
      goto LABEL_71;
    }

    goto LABEL_54;
  }

  pthread_mutex_lock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  if (!xmmword_2A18B7520)
  {
    v13 = operator new(0x18uLL);
    MEMORY[0x29C26B190](v13, @"com.apple.AppleBasebandManager", *MEMORY[0x29EDB8FB0]);
    *buf = v13;
    v12 = operator new(0x20uLL);
    *v12 = &unk_2A1E26558;
    v12[1] = 0;
    v12[2] = 0;
    v12[3] = v13;
    v15 = *(&xmmword_2A18B7520 + 1);
    *&xmmword_2A18B7520 = v13;
    *(&xmmword_2A18B7520 + 1) = v12;
    if (!v15)
    {
      values[0] = v13;
      values[1] = v12;
      goto LABEL_27;
    }

    if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v15->__on_zero_shared)(v15);
      std::__shared_weak_count::__release_weak(v15);
    }
  }

  v12 = *(&xmmword_2A18B7520 + 1);
  v13 = xmmword_2A18B7520;
  *values = xmmword_2A18B7520;
  if (*(&xmmword_2A18B7520 + 1))
  {
LABEL_27:
    atomic_fetch_add_explicit(v12 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  if (SHIBYTE(v48[2]) >= 0)
  {
    v16 = v48;
  }

  else
  {
    v16 = v48[0];
  }

  ctu::cf::MakeCFString::MakeCFString(buf, v16);
  v17 = (**v13)(v13, *buf);
  v18 = v17;
  if (v17)
  {
    v19 = CFGetTypeID(v17);
    TypeID = CFStringGetTypeID();
    CFRelease(v18);
    MEMORY[0x29C26B130](buf);
    if (v19 == TypeID)
    {
      v21 = values[1];
      if (!values[1])
      {
        goto LABEL_39;
      }

      goto LABEL_37;
    }
  }

  else
  {
    MEMORY[0x29C26B130](buf);
  }

  v18 = @"-l 0xffffffff -v 0 -N";
  v21 = values[1];
  if (!values[1])
  {
    goto LABEL_39;
  }

LABEL_37:
  if (!atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v21->__on_zero_shared)(v21);
    std::__shared_weak_count::__release_weak(v21);
  }

LABEL_39:
  v46 = v18;
  CFRetain(v18);
  valuePtr = 1;
  v22 = *MEMORY[0x29EDB8ED8];
  v23 = CFNumberCreate(*MEMORY[0x29EDB8ED8], kCFNumberIntType, &valuePtr);
  v44 = v23;
  v24 = *MEMORY[0x29EDB8F00];
  values[0] = *MEMORY[0x29EDB8F00];
  values[1] = v23;
  if (!*(a1 + 24))
  {
    v24 = *MEMORY[0x29EDB8EF8];
  }

  v54 = v18;
  v55 = v24;
  v25 = CFDictionaryCreate(v22, &BootControllerLegacy::bootModem(std::string &)::keys, values, 4, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v43 = v25;
  v26 = BBUpdaterSetOptions();
  if (!v26)
  {
    memset(buf, 0, sizeof(buf));
    v57 = 0;
    ctu::cf::assign();
    *v41 = *buf;
    v42 = v57;
    v27 = *(a1 + 8);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v39 = v41;
      if (SHIBYTE(v42) < 0)
      {
        v39 = v41[0];
      }

      *buf = 136315138;
      *&buf[4] = v39;
      _os_log_error_impl(&dword_296FF7000, v27, OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
      if ((*(a2 + 23) & 0x80000000) == 0)
      {
LABEL_47:
        *a2 = *v41;
        *(a2 + 16) = v42;
        CFRelease(cf);
        cf = 0;
        if (!v25)
        {
          goto LABEL_49;
        }

        goto LABEL_48;
      }
    }

    else if ((*(a2 + 23) & 0x80000000) == 0)
    {
      goto LABEL_47;
    }

    operator delete(*a2);
    goto LABEL_47;
  }

  if (v25)
  {
LABEL_48:
    CFRelease(v25);
  }

LABEL_49:
  if (v23)
  {
    CFRelease(v23);
  }

  CFRelease(v18);
  v14 = (a1 + 72);
  if ((*(a1 + 72) & 1) == 0)
  {
LABEL_54:
    v28 = *(a1 + 16);
    if (TelephonyBasebandPowerOnModem())
    {
      v41[0] = 0;
      goto LABEL_56;
    }

    if (*(a2 + 23) < 0)
    {
      *(a2 + 8) = 21;
      v31 = *a2;
    }

    else
    {
      *(a2 + 23) = 21;
      v31 = a2;
    }

    strcpy(v31, "failed power on modem");
LABEL_71:
    v41[0] = 0;
    goto LABEL_72;
  }

  v41[0] = 0;
  if (!v26)
  {
LABEL_72:
    v34 = *(a1 + 8);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a2 + 23) >= 0)
      {
        v35 = a2;
      }

      else
      {
        v35 = *a2;
      }

      LODWORD(values[0]) = 136446210;
      *(values + 4) = v35;
      _os_log_impl(&dword_296FF7000, v34, OS_LOG_TYPE_DEFAULT, "#I boot failed due to %{public}s", values, 0xCu);
    }

    v32 = 0;
    *v14 = 0;
    v33 = v41[0];
    if (v41[0])
    {
      goto LABEL_78;
    }

    goto LABEL_79;
  }

LABEL_56:
  v29 = BBUpdaterExecCommand();
  if (!v29 && cf)
  {
    values[0] = 0;
    values[1] = 0;
    v54 = 0;
    ctu::cf::assign();
    *buf = *values;
    v57 = v54;
    v30 = *(a1 + 8);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v40 = buf;
      if (SHIBYTE(v57) < 0)
      {
        v40 = *buf;
      }

      LODWORD(values[0]) = 136315138;
      *(values + 4) = v40;
      _os_log_error_impl(&dword_296FF7000, v30, OS_LOG_TYPE_ERROR, "%s", values, 0xCu);
      if ((*(a2 + 23) & 0x80000000) == 0)
      {
        goto LABEL_61;
      }
    }

    else if ((*(a2 + 23) & 0x80000000) == 0)
    {
LABEL_61:
      *a2 = *buf;
      *(a2 + 16) = v57;
      CFRelease(cf);
      cf = 0;
      goto LABEL_72;
    }

    operator delete(*a2);
    goto LABEL_61;
  }

  if (!v29)
  {
    goto LABEL_72;
  }

  if (!v41[0])
  {
    std::string::__assign_external(a2, "BBUpdaterExecCommand failed returning output", 0x2CuLL);
    goto LABEL_72;
  }

  BootControllerLegacy::printOutput(a1, v41[0]);
  values[0] = 0xAAAAAAAAAAAAAAAALL;
  values[1] = 0xAAAAAAAAAAAAAAAALL;
  ctu::cf::dict_adapter::dict_adapter(values, v41[0]);
  if ((ctu::cf::map_adapter::getBool(values, @"done") & 1) == 0)
  {
    std::string::__assign_external(a2, "output did not return done", 0x1AuLL);
    MEMORY[0x29C26B180](values);
    goto LABEL_72;
  }

  MEMORY[0x29C26B180](values);
  *(a1 + 24) = 0;
  v32 = 1;
  *v14 = 0;
  v33 = v41[0];
  if (v41[0])
  {
LABEL_78:
    CFRelease(v33);
    v41[0] = 0;
  }

LABEL_79:
  if (v11)
  {
    CFRelease(v11);
  }

  if (SHIBYTE(v48[2]) < 0)
  {
    operator delete(v48[0]);
  }

  v36 = v52;
  if (v52 && !atomic_fetch_add((v52 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v36->__on_zero_shared)(v36);
    std::__shared_weak_count::__release_weak(v36);
  }

  v37 = *MEMORY[0x29EDCA608];
  return v32;
}

void sub_297070438(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, char a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a32);
  _Unwind_Resume(a1);
}

void BootControllerLegacy::handleError(BootControllerLegacy *this@<X0>, _OWORD *a2@<X8>)
{
  v11 = *MEMORY[0x29EDCA608];
  memset(a2, 170, 24);
  v9 = 0uLL;
  v10 = 0;
  ctu::cf::assign();
  *a2 = 0uLL;
  *(a2 + 2) = v10;
  v5 = *(this + 1);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    if (*(a2 + 23) >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    LODWORD(v9) = 136315138;
    *(&v9 + 4) = v7;
    _os_log_error_impl(&dword_296FF7000, v5, OS_LOG_TYPE_ERROR, "%s", &v9, 0xCu);
    v8 = *MEMORY[0x29EDCA608];
  }

  else
  {
    v6 = *MEMORY[0x29EDCA608];
  }
}

void sub_297070688(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void **ctu::cf::CFSharedRef<__CFString const>::~CFSharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void BootControllerLegacy::printOutput(BootControllerLegacy *this, CFTypeRef cf)
{
  v12 = *MEMORY[0x29EDCA608];
  v3 = CFCopyDescription(cf);
  v8 = 0;
  v9 = v3;
  __p[0] = 0;
  __p[1] = 0;
  ctu::cf::assign();
  v4 = *(this + 1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = __p;
    if (v8 < 0)
    {
      v5 = __p[0];
    }

    *buf = 136315138;
    v11 = v5;
    _os_log_error_impl(&dword_296FF7000, v4, OS_LOG_TYPE_ERROR, "%s", buf, 0xCu);
    if ((SHIBYTE(v8) & 0x80000000) == 0)
    {
LABEL_3:
      if (!v3)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else if ((SHIBYTE(v8) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p[0]);
  if (v3)
  {
LABEL_9:
    CFRelease(v3);
  }

LABEL_10:
  v6 = *MEMORY[0x29EDCA608];
}

void sub_2970707D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ctu::PthreadMutexGuardPolicy<ctu::XpcJetsamAssertion>::~PthreadMutexGuardPolicy(uint64_t a1)
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

void std::__shared_ptr_pointer<ABMProperties *,std::shared_ptr<ABMProperties>::__shared_ptr_default_delete<ABMProperties,ABMProperties>,std::allocator<ABMProperties>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<ABMProperties *,std::shared_ptr<ABMProperties>::__shared_ptr_default_delete<ABMProperties,ABMProperties>,std::allocator<ABMProperties>>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 24))
  {
    v1 = MEMORY[0x29C26B1A0]();

    operator delete(v1);
  }
}

uint64_t std::__shared_ptr_pointer<ABMProperties *,std::shared_ptr<ABMProperties>::__shared_ptr_default_delete<ABMProperties,ABMProperties>,std::allocator<ABMProperties>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x800000029722559FLL)
  {
    if (((v2 & 0x800000029722559FLL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000029722559FLL))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000029722559FLL & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void *std::unique_ptr<ABMProperties>::~unique_ptr[abi:ne200100](void *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    v4 = MEMORY[0x29C26B1A0]();
    operator delete(v4);
    return v3;
  }

  return v1;
}

uint64_t ctu::PthreadMutexGuardPolicy<ABMProperties>::~PthreadMutexGuardPolicy(uint64_t a1)
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

uint64_t __cxx_global_var_init_4()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ctu::XpcJetsamAssertion>::~PthreadMutexGuardPolicy, &ctu::Singleton<ctu::XpcJetsamAssertion,ctu::XpcJetsamAssertion,ctu::PthreadMutexGuardPolicy<ctu::XpcJetsamAssertion>>::sInstance, &dword_296FF7000);
  }

  return result;
}

uint64_t __cxx_global_var_init_29()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ABMProperties>::~PthreadMutexGuardPolicy, &ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance, &dword_296FF7000);
  }

  return result;
}

void DeviceHistoryDB::DeviceHistoryDB(DeviceHistoryDB *this)
{
  *this = &unk_2A1E265A8;
  v2 = this + 8;
  ctu::OsLogContext::OsLogContext(v3, "com.apple.telephony.abm", "DeviceHistroyDB");
  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x29C26B010](v2, v4);
  MEMORY[0x29C26B020](v4);
  ctu::OsLogContext::~OsLogContext(v3);
  *this = &unk_2A1E265A8;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 40) = 0;
  DeviceHistoryDB::initFromDisk(this);
}

void sub_297070C80(_Unwind_Exception *a1)
{
  std::vector<_DeviceHistoryItem>::~vector[abi:ne200100](v2);
  MEMORY[0x29C26B020](v1);
  _Unwind_Resume(a1);
}

void DeviceHistoryDB::initFromDisk(DeviceHistoryDB *this)
{
  v37 = 0;
  pthread_mutex_lock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  v2 = off_2A18B75C0;
  if (!off_2A18B75C0)
  {
    SharedData::create_default_global(&__dst);
    v3 = __dst;
    __dst = 0uLL;
    v4 = *(&off_2A18B75C0 + 1);
    off_2A18B75C0 = v3;
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    v5 = *(&__dst + 1);
    if (*(&__dst + 1) && !atomic_fetch_add((*(&__dst + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    v2 = off_2A18B75C0;
  }

  v33[3] = v2;
  v33[4] = *(&off_2A18B75C0 + 1);
  if (*(&off_2A18B75C0 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18B75C0 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  v6 = *MEMORY[0x29EDBE890];
  v7 = strlen(*MEMORY[0x29EDBE890]);
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

    p_dst = operator new(v10);
    *(&__dst + 1) = v8;
    *v28 = v10 | 0x8000000000000000;
    *&__dst = p_dst;
    goto LABEL_19;
  }

  v28[7] = v7;
  p_dst = &__dst;
  if (v7)
  {
LABEL_19:
    memmove(p_dst, v6, v8);
  }

  *(p_dst + v8) = 0;
  os_unfair_lock_lock(v2 + 10);
  Preferences::getPreference<__CFArray const*>(v2, &__dst, &v37);
  os_unfair_lock_unlock(v2 + 10);
  if ((v28[7] & 0x80000000) != 0)
  {
    operator delete(__dst);
  }

  v11 = v33[4];
  if (v33[4] && !atomic_fetch_add(v33[4] + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
    v12 = v37;
    v36 = v37;
    if (!v37)
    {
      return;
    }
  }

  else
  {
    v12 = v37;
    v36 = v37;
    if (!v37)
    {
      return;
    }
  }

  CFRetain(v12);
  Count = CFArrayGetCount(v12);
  v14 = Count;
  if (Count)
  {
    v15 = 0;
    v26 = *MEMORY[0x29EDBE930];
    v25 = *MEMORY[0x29EDBE988];
    v16 = *MEMORY[0x29EDBEC08];
    v17 = *MEMORY[0x29EDBEC00];
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v12, v15);
      v19 = ValueAtIndex;
      if (ValueAtIndex && (v20 = CFGetTypeID(ValueAtIndex), v20 == CFDictionaryGetTypeID()))
      {
        v35 = v19;
        CFRetain(v19);
      }

      else
      {
        v19 = 0;
        v35 = 0;
      }

      v34[0] = 0xAAAAAAAAAAAAAAAALL;
      v34[1] = 0xAAAAAAAAAAAAAAAALL;
      ctu::cf::dict_adapter::dict_adapter(v34, v19);
      memset(&v33[3], 170, 24);
      __dst = 0uLL;
      *v28 = 0;
      ctu::cf::MakeCFString::MakeCFString(v33, v26);
      ctu::cf::map_adapter::getString();
      MEMORY[0x29C26B130](v33);
      if ((v28[7] & 0x80000000) != 0)
      {
        operator delete(__dst);
      }

      memset(v33, 170, 24);
      __dst = 0uLL;
      *v28 = 0;
      ctu::cf::MakeCFString::MakeCFString(v32, v25);
      ctu::cf::map_adapter::getString();
      MEMORY[0x29C26B130](v32);
      if ((v28[7] & 0x80000000) != 0)
      {
        operator delete(__dst);
      }

      memset(v32, 170, sizeof(v32));
      __dst = 0uLL;
      *v28 = 0;
      ctu::cf::MakeCFString::MakeCFString(v31, v16);
      ctu::cf::map_adapter::getString();
      MEMORY[0x29C26B130](v31);
      if ((v28[7] & 0x80000000) != 0)
      {
        operator delete(__dst);
      }

      memset(v31, 170, sizeof(v31));
      __dst = 0uLL;
      *v28 = 0;
      ctu::cf::MakeCFString::MakeCFString(v38, v17);
      ctu::cf::map_adapter::getString();
      MEMORY[0x29C26B130](v38);
      if ((v28[7] & 0x80000000) != 0)
      {
        operator delete(__dst);
        *&v22 = 0xAAAAAAAAAAAAAAAALL;
        *(&v22 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *__p = v22;
        *&__p[16] = v22;
        *&v28[16] = v22;
        *v29 = v22;
        __dst = v22;
        *v28 = v22;
        if ((SHIBYTE(v33[2]) & 0x80000000) == 0)
        {
LABEL_40:
          __dst = *v33;
          *v28 = v33[2];
          goto LABEL_43;
        }
      }

      else
      {
        *&v21 = 0xAAAAAAAAAAAAAAAALL;
        *(&v21 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *__p = v21;
        *&__p[16] = v21;
        *&v28[16] = v21;
        *v29 = v21;
        __dst = v21;
        *v28 = v21;
        if ((SHIBYTE(v33[2]) & 0x80000000) == 0)
        {
          goto LABEL_40;
        }
      }

      std::string::__init_copy_ctor_external(&__dst, v33[0], v33[1]);
LABEL_43:
      if (SHIBYTE(v32[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v28[8], v32[0], v32[1]);
      }

      else
      {
        *&v28[8] = *v32;
        *&v28[24] = v32[2];
      }

      if (SHIBYTE(v31[2]) < 0)
      {
        std::string::__init_copy_ctor_external(v29, v31[0], v31[1]);
      }

      else
      {
        *v29 = *v31;
        *__p = v31[2];
      }

      if (SHIBYTE(v33[5]) < 0)
      {
        std::string::__init_copy_ctor_external(&__p[8], v33[3], v33[4]);
      }

      else
      {
        *&__p[8] = *&v33[3];
        *&__p[24] = v33[5];
      }

      v23 = *(this + 3);
      if (v23 >= *(this + 4))
      {
        v24 = std::vector<_DeviceHistoryItem>::__emplace_back_slow_path<_DeviceHistoryItem const&>(this + 2, &__dst);
      }

      else
      {
        _DeviceHistoryItem::_DeviceHistoryItem(*(this + 3), &__dst);
        v24 = v23 + 4;
        *(this + 3) = v23 + 4;
      }

      *(this + 3) = v24;
      if ((__p[31] & 0x80000000) != 0)
      {
        operator delete(*&__p[8]);
        if ((__p[7] & 0x80000000) == 0)
        {
LABEL_57:
          if ((v28[31] & 0x80000000) == 0)
          {
            goto LABEL_58;
          }

          goto LABEL_67;
        }
      }

      else if ((__p[7] & 0x80000000) == 0)
      {
        goto LABEL_57;
      }

      operator delete(v29[0]);
      if ((v28[31] & 0x80000000) == 0)
      {
LABEL_58:
        if ((v28[7] & 0x80000000) == 0)
        {
          goto LABEL_59;
        }

        goto LABEL_68;
      }

LABEL_67:
      operator delete(*&v28[8]);
      if ((v28[7] & 0x80000000) == 0)
      {
LABEL_59:
        if ((SHIBYTE(v31[2]) & 0x80000000) == 0)
        {
          goto LABEL_60;
        }

        goto LABEL_69;
      }

LABEL_68:
      operator delete(__dst);
      if ((SHIBYTE(v31[2]) & 0x80000000) == 0)
      {
LABEL_60:
        if ((SHIBYTE(v32[2]) & 0x80000000) == 0)
        {
          goto LABEL_61;
        }

        goto LABEL_70;
      }

LABEL_69:
      operator delete(v31[0]);
      if ((SHIBYTE(v32[2]) & 0x80000000) == 0)
      {
LABEL_61:
        if ((SHIBYTE(v33[2]) & 0x80000000) == 0)
        {
          goto LABEL_62;
        }

        goto LABEL_71;
      }

LABEL_70:
      operator delete(v32[0]);
      if ((SHIBYTE(v33[2]) & 0x80000000) == 0)
      {
LABEL_62:
        if ((SHIBYTE(v33[5]) & 0x80000000) == 0)
        {
          goto LABEL_63;
        }

        goto LABEL_72;
      }

LABEL_71:
      operator delete(v33[0]);
      if ((SHIBYTE(v33[5]) & 0x80000000) == 0)
      {
LABEL_63:
        MEMORY[0x29C26B180](v34);
        if (!v19)
        {
          goto LABEL_27;
        }

LABEL_73:
        CFRelease(v19);
        goto LABEL_27;
      }

LABEL_72:
      operator delete(v33[3]);
      MEMORY[0x29C26B180](v34);
      if (v19)
      {
        goto LABEL_73;
      }

LABEL_27:
      ++v15;
    }

    while (v14 != v15);
  }

  CFRelease(v12);
}

void sub_297071330(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  if (a16 < 0)
  {
    operator delete(__p);
    if ((a38 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((a38 & 0x80000000) == 0)
  {
LABEL_6:
    if (a44 < 0)
    {
      operator delete(a39);
    }

    if (a50 < 0)
    {
      operator delete(a45);
    }

    if (*(v50 - 137) < 0)
    {
      operator delete(*(v50 - 160));
    }

    MEMORY[0x29C26B180](v50 - 136);
    ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef((v50 - 120));
    ctu::cf::CFSharedRef<__CFArray const>::~CFSharedRef((v50 - 112));
    _Unwind_Resume(a1);
  }

  operator delete(a33);
  goto LABEL_6;
}

void DeviceHistoryDB::addDeviceHistory(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  v4 = (a1 + 16);
  if (*(a1 + 16) == v3)
  {
    goto LABEL_15;
  }

  v5 = SHIBYTE(v3[-3].__r_.__value_.__r.__words[2]);
  if (v5 >= 0)
  {
    size = HIBYTE(v3[-3].__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v3[-3].__r_.__value_.__l.__size_;
  }

  v7 = *(a2 + 47);
  v8 = v7;
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(a2 + 32);
  }

  if (size != v7)
  {
LABEL_15:
    *(a1 + 40) = 1;
    if (v3 >= *(a1 + 32))
    {
LABEL_14:
      v13 = std::vector<_DeviceHistoryItem>::__emplace_back_slow_path<_DeviceHistoryItem const&>(v4, a2);
      goto LABEL_17;
    }
  }

  else
  {
    if (v5 >= 0)
    {
      data = v3 - 3;
    }

    else
    {
      data = v3[-3].__r_.__value_.__l.__data_;
    }

    v10 = (a2 + 24);
    if (v8 < 0)
    {
      v10 = *(a2 + 24);
    }

    v11 = a2;
    v12 = memcmp(data, v10, size);
    a2 = v11;
    *(a1 + 40) = v12 != 0;
    if (v3 >= *(a1 + 32))
    {
      goto LABEL_14;
    }
  }

  _DeviceHistoryItem::_DeviceHistoryItem(v3, a2);
  v13 = v3 + 4;
  *(a1 + 24) = v3 + 4;
LABEL_17:
  *(a1 + 24) = v13;

  DeviceHistoryDB::commitToDisk(a1);
}

void DeviceHistoryDB::commitToDisk(DeviceHistoryDB *this)
{
  cf = 0;
  v2 = *MEMORY[0x29EDB8ED8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9000]);
  v4 = Mutable;
  if (Mutable)
  {
    cf = Mutable;
  }

  v6 = *(this + 2);
  v5 = *(this + 3);
  if (v6 != v5)
  {
    v7 = *MEMORY[0x29EDBE930];
    v8 = *MEMORY[0x29EDBE988];
    v9 = *MEMORY[0x29EDBEC08];
    v10 = *MEMORY[0x29EDBEC00];
    v11 = MEMORY[0x29EDB9020];
    do
    {
      v13 = CFDictionaryCreateMutable(v2, 0, MEMORY[0x29EDB9010], v11);
      if (*(v6 + 95) < 0)
      {
        std::string::__init_copy_ctor_external(&__dst, *(v6 + 9), *(v6 + 10));
      }

      else
      {
        __dst = *(v6 + 3);
      }

      ctu::cf::insert<char const*,std::string>(v13, v7, &__dst, v2, v12);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
        if ((*(v6 + 23) & 0x80000000) == 0)
        {
LABEL_11:
          v15 = *v6;
          __dst.__r_.__value_.__r.__words[2] = *(v6 + 2);
          *&__dst.__r_.__value_.__l.__data_ = v15;
          goto LABEL_14;
        }
      }

      else if ((*(v6 + 23) & 0x80000000) == 0)
      {
        goto LABEL_11;
      }

      std::string::__init_copy_ctor_external(&__dst, *v6, *(v6 + 1));
LABEL_14:
      ctu::cf::insert<char const*,std::string>(v13, v8, &__dst, v2, v14);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
        if ((*(v6 + 47) & 0x80000000) == 0)
        {
LABEL_16:
          __dst = *(v6 + 1);
          goto LABEL_19;
        }
      }

      else if ((*(v6 + 47) & 0x80000000) == 0)
      {
        goto LABEL_16;
      }

      std::string::__init_copy_ctor_external(&__dst, *(v6 + 3), *(v6 + 4));
LABEL_19:
      ctu::cf::insert<char const*,std::string>(v13, v9, &__dst, v2, v16);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
        if (*(v6 + 71) < 0)
        {
LABEL_23:
          std::string::__init_copy_ctor_external(&__dst, *(v6 + 6), *(v6 + 7));
          goto LABEL_24;
        }
      }

      else if (*(v6 + 71) < 0)
      {
        goto LABEL_23;
      }

      __dst = *(v6 + 2);
LABEL_24:
      ctu::cf::insert<char const*,std::string>(v13, v10, &__dst, v2, v17);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

      CFArrayAppendValue(v4, v13);
      if (v13)
      {
        CFRelease(v13);
      }

      v6 += 6;
    }

    while (v6 != v5);
  }

  pthread_mutex_lock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  v18 = off_2A18B75C0;
  if (!off_2A18B75C0)
  {
    SharedData::create_default_global(&__dst);
    v19 = *&__dst.__r_.__value_.__l.__data_;
    *&__dst.__r_.__value_.__l.__data_ = 0uLL;
    v20 = *(&off_2A18B75C0 + 1);
    off_2A18B75C0 = v19;
    if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v20->__on_zero_shared)(v20);
      std::__shared_weak_count::__release_weak(v20);
    }

    size = __dst.__r_.__value_.__l.__size_;
    if (__dst.__r_.__value_.__l.__size_ && !atomic_fetch_add((__dst.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (size->__on_zero_shared)(size);
      std::__shared_weak_count::__release_weak(size);
    }

    v18 = off_2A18B75C0;
  }

  v29 = *(&off_2A18B75C0 + 1);
  if (*(&off_2A18B75C0 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18B75C0 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  v22 = *MEMORY[0x29EDBE890];
  v23 = strlen(*MEMORY[0x29EDBE890]);
  if (v23 >= 0x7FFFFFFFFFFFFFF8)
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

    p_dst = operator new(v26);
    __dst.__r_.__value_.__l.__size_ = v24;
    __dst.__r_.__value_.__r.__words[2] = v26 | 0x8000000000000000;
    __dst.__r_.__value_.__r.__words[0] = p_dst;
    goto LABEL_46;
  }

  *(&__dst.__r_.__value_.__s + 23) = v23;
  p_dst = &__dst;
  if (v23)
  {
LABEL_46:
    memmove(p_dst, v22, v24);
  }

  *(p_dst + v24) = 0;
  os_unfair_lock_lock(v18 + 10);
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v27 = &__dst;
  }

  else
  {
    v27 = __dst.__r_.__value_.__r.__words[0];
  }

  ctu::cf::MakeCFString::MakeCFString(&v32, v27);
  ctu::cf::plist_adapter::set<__CFArray *>(v18, cf, v32, 1);
  MEMORY[0x29C26B130](&v32);
  os_unfair_lock_unlock(v18 + 10);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  if (!v29 || atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v28 = cf;
    if (!cf)
    {
      return;
    }

    goto LABEL_55;
  }

  (v29->__on_zero_shared)(v29);
  std::__shared_weak_count::__release_weak(v29);
  v28 = cf;
  if (cf)
  {
LABEL_55:
    CFRelease(v28);
  }
}

void sub_297071A74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, const void *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  ctu::cf::CFSharedRef<__CFArray>::~CFSharedRef(&a12);
  _Unwind_Resume(a1);
}

void DeviceHistoryDB::getDeviceHistory(uint64_t a1, uint64_t a2)
{
  if (a1 + 16 != a2)
  {
    std::vector<_DeviceHistoryItem>::__assign_with_size[abi:ne200100]<_DeviceHistoryItem*,_DeviceHistoryItem*>(a2, *(a1 + 16), *(a1 + 24), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 24) - *(a1 + 16)) >> 5));
  }
}

void ***std::vector<_DeviceHistoryItem>::~vector[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 == v2)
    {
LABEL_15:
      a1[1] = v2;
      operator delete(v4);
      return a1;
    }

    while (1)
    {
      if (*(v3 - 1) < 0)
      {
        operator delete(*(v3 - 3));
        if ((*(v3 - 25) & 0x80000000) == 0)
        {
LABEL_7:
          if ((*(v3 - 49) & 0x80000000) == 0)
          {
            goto LABEL_8;
          }

          goto LABEL_12;
        }
      }

      else if ((*(v3 - 25) & 0x80000000) == 0)
      {
        goto LABEL_7;
      }

      operator delete(*(v3 - 6));
      if ((*(v3 - 49) & 0x80000000) == 0)
      {
LABEL_8:
        v5 = v3 - 12;
        if (*(v3 - 73) < 0)
        {
          goto LABEL_13;
        }

        goto LABEL_4;
      }

LABEL_12:
      operator delete(*(v3 - 9));
      v5 = v3 - 12;
      if (*(v3 - 73) < 0)
      {
LABEL_13:
        operator delete(*v5);
      }

LABEL_4:
      v3 = v5;
      if (v5 == v2)
      {
        v4 = *a1;
        goto LABEL_15;
      }
    }
  }

  return a1;
}

std::string *std::vector<_DeviceHistoryItem>::__emplace_back_slow_path<_DeviceHistoryItem const&>(uint64_t *a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x2AAAAAAAAAAAAAALL)
  {
    std::vector<std::shared_ptr<Service>>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 5) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 5);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 5) >= 0x155555555555555)
  {
    v5 = 0x2AAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v3;
  }

  if (v5)
  {
    if (v5 > 0x2AAAAAAAAAAAAAALL)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v6 = a2;
    v7 = operator new(96 * v5);
    a2 = v6;
  }

  else
  {
    v7 = 0;
  }

  v18 = &v7[96 * v2];
  v19 = &v7[96 * v5];
  _DeviceHistoryItem::_DeviceHistoryItem(v18, a2);
  v8 = *a1;
  v9 = a1[1];
  v10 = v18 + *a1 - v9;
  if (v9 != *a1)
  {
    v11 = *a1;
    v12 = v18 + *a1 - v9;
    do
    {
      v13 = *v11;
      *(v12 + 2) = *(v11 + 2);
      *v12 = v13;
      *(v11 + 1) = 0;
      *(v11 + 2) = 0;
      *v11 = 0;
      v14 = *(v11 + 24);
      *(v12 + 5) = *(v11 + 5);
      *(v12 + 24) = v14;
      *(v11 + 4) = 0;
      *(v11 + 5) = 0;
      *(v11 + 3) = 0;
      v15 = v11[3];
      *(v12 + 8) = *(v11 + 8);
      *(v12 + 3) = v15;
      *(v11 + 7) = 0;
      *(v11 + 8) = 0;
      *(v11 + 6) = 0;
      v16 = *(v11 + 72);
      *(v12 + 11) = *(v11 + 11);
      *(v12 + 72) = v16;
      *(v11 + 9) = 0;
      *(v11 + 10) = 0;
      *(v11 + 11) = 0;
      v11 += 6;
      v12 += 96;
    }

    while (v11 != v9);
    while (1)
    {
      if (*(v8 + 95) < 0)
      {
        operator delete(*(v8 + 72));
        if ((*(v8 + 71) & 0x80000000) == 0)
        {
LABEL_18:
          if ((*(v8 + 47) & 0x80000000) == 0)
          {
            goto LABEL_19;
          }

          goto LABEL_23;
        }
      }

      else if ((*(v8 + 71) & 0x80000000) == 0)
      {
        goto LABEL_18;
      }

      operator delete(*(v8 + 48));
      if ((*(v8 + 47) & 0x80000000) == 0)
      {
LABEL_19:
        if (*(v8 + 23) < 0)
        {
          goto LABEL_24;
        }

        goto LABEL_15;
      }

LABEL_23:
      operator delete(*(v8 + 24));
      if (*(v8 + 23) < 0)
      {
LABEL_24:
        operator delete(*v8);
      }

LABEL_15:
      v8 += 96;
      if (v8 == v9)
      {
        v8 = *a1;
        break;
      }
    }
  }

  *a1 = v10;
  a1[1] = &v18[4];
  a1[2] = v19;
  if (v8)
  {
    operator delete(v8);
  }

  return v18 + 4;
}

void sub_297071E3C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<_DeviceHistoryItem>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void _DeviceHistoryItem::_DeviceHistoryItem(std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
    if ((*(a2 + 47) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
    if ((*(a2 + 47) & 0x80000000) == 0)
    {
LABEL_3:
      v5 = *(a2 + 24);
      this[1].__r_.__value_.__r.__words[2] = *(a2 + 5);
      *&this[1].__r_.__value_.__l.__data_ = v5;
      goto LABEL_6;
    }
  }

  std::string::__init_copy_ctor_external(this + 1, *(a2 + 3), *(a2 + 4));
LABEL_6:
  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(this + 2, *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v6 = a2[3];
    this[2].__r_.__value_.__r.__words[2] = *(a2 + 8);
    *&this[2].__r_.__value_.__l.__data_ = v6;
  }

  if (*(a2 + 95) < 0)
  {
    std::string::__init_copy_ctor_external(this + 3, *(a2 + 9), *(a2 + 10));
  }

  else
  {
    v7 = *(a2 + 72);
    this[3].__r_.__value_.__r.__words[2] = *(a2 + 11);
    *&this[3].__r_.__value_.__l.__data_ = v7;
  }
}

void sub_297071F28(_Unwind_Exception *exception_object)
{
  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
    if ((*(v1 + 47) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v1 + 23) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((*(v1 + 47) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v1 + 24));
  if ((*(v1 + 23) & 0x80000000) == 0)
  {
LABEL_4:
    _Unwind_Resume(exception_object);
  }

LABEL_7:
  operator delete(*v1);
  _Unwind_Resume(exception_object);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<_DeviceHistoryItem>,_DeviceHistoryItem*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = *(a1 + 8);
    v2 = *(a1 + 16);
    v4 = *v2;
    v5 = *v3;
    if (*v2 != *v3)
    {
      do
      {
        if (*(v4 - 1) < 0)
        {
          operator delete(*(v4 - 3));
          if ((*(v4 - 25) & 0x80000000) == 0)
          {
LABEL_7:
            if ((*(v4 - 49) & 0x80000000) == 0)
            {
              goto LABEL_8;
            }

            goto LABEL_12;
          }
        }

        else if ((*(v4 - 25) & 0x80000000) == 0)
        {
          goto LABEL_7;
        }

        operator delete(*(v4 - 6));
        if ((*(v4 - 49) & 0x80000000) == 0)
        {
LABEL_8:
          v7 = v4 - 12;
          if (*(v4 - 73) < 0)
          {
            goto LABEL_13;
          }

          goto LABEL_4;
        }

LABEL_12:
        operator delete(*(v4 - 9));
        v7 = v4 - 12;
        if (*(v4 - 73) < 0)
        {
LABEL_13:
          operator delete(*v7);
        }

LABEL_4:
        v4 = v7;
      }

      while (v7 != v5);
    }
  }

  return a1;
}

uint64_t std::__split_buffer<_DeviceHistoryItem>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 96;
    if (*(i - 1) < 0)
    {
      operator delete(*(i - 24));
      if ((*(i - 25) & 0x80000000) == 0)
      {
LABEL_6:
        if (*(i - 49) < 0)
        {
          goto LABEL_11;
        }

        goto LABEL_7;
      }
    }

    else if ((*(i - 25) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    operator delete(*(i - 48));
    if (*(i - 49) < 0)
    {
LABEL_11:
      operator delete(*(i - 72));
      if ((*(i - 73) & 0x80000000) == 0)
      {
        continue;
      }

      goto LABEL_12;
    }

LABEL_7:
    if ((*(i - 73) & 0x80000000) == 0)
    {
      continue;
    }

LABEL_12:
    operator delete(*(i - 96));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void _DeviceHistoryItem::~_DeviceHistoryItem(void **this)
{
  if (*(this + 95) < 0)
  {
    operator delete(this[9]);
    if ((*(this + 71) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(this + 47) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((*(this + 71) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(this[6]);
  if ((*(this + 47) & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(this + 23) & 0x80000000) == 0)
    {
      return;
    }

LABEL_9:
    operator delete(*this);
    return;
  }

LABEL_8:
  operator delete(this[3]);
  if (*(this + 23) < 0)
  {
    goto LABEL_9;
  }
}

void std::vector<_DeviceHistoryItem>::__assign_with_size[abi:ne200100]<_DeviceHistoryItem*,_DeviceHistoryItem*>(uint64_t a1, __int128 *a2, __int128 *a3, unint64_t a4)
{
  v5 = a2;
  v7 = *(a1 + 16);
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - *a1) >> 5) < a4)
  {
    if (!v8)
    {
      goto LABEL_40;
    }

    v9 = a4;
    v10 = *(a1 + 8);
    v11 = *a1;
    if (v10 == v8)
    {
LABEL_39:
      *(a1 + 8) = v8;
      operator delete(v11);
      v7 = 0;
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      a4 = v9;
LABEL_40:
      if (a4 > 0x2AAAAAAAAAAAAAALL)
      {
        goto LABEL_51;
      }

      v18 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 5);
      v19 = 2 * v18;
      if (2 * v18 <= a4)
      {
        v19 = a4;
      }

      v20 = v18 >= 0x155555555555555 ? 0x2AAAAAAAAAAAAAALL : v19;
      if (v20 > 0x2AAAAAAAAAAAAAALL)
      {
LABEL_51:
        std::vector<std::shared_ptr<Service>>::__throw_length_error[abi:ne200100]();
      }

      v21 = 4 * v20;
      v22 = operator new(96 * v20);
      *a1 = v22;
      *(a1 + 8) = v22;
      *(a1 + 16) = &v22[v21];
      for (i = v22; v5 != a3; i += 4)
      {
        _DeviceHistoryItem::_DeviceHistoryItem(v22, v5);
        v5 += 6;
        v22 = i + 4;
      }

      *(a1 + 8) = v22;
      return;
    }

    while (1)
    {
      if (*(v10 - 1) < 0)
      {
        operator delete(*(v10 - 3));
        if ((*(v10 - 25) & 0x80000000) == 0)
        {
LABEL_8:
          if ((*(v10 - 49) & 0x80000000) == 0)
          {
            goto LABEL_9;
          }

          goto LABEL_13;
        }
      }

      else if ((*(v10 - 25) & 0x80000000) == 0)
      {
        goto LABEL_8;
      }

      operator delete(*(v10 - 6));
      if ((*(v10 - 49) & 0x80000000) == 0)
      {
LABEL_9:
        v12 = (v10 - 96);
        if (*(v10 - 73) < 0)
        {
          goto LABEL_14;
        }

        goto LABEL_5;
      }

LABEL_13:
      operator delete(*(v10 - 9));
      v12 = (v10 - 96);
      if (*(v10 - 73) < 0)
      {
LABEL_14:
        operator delete(*v12);
      }

LABEL_5:
      v10 = v12;
      if (v12 == v8)
      {
        v11 = *a1;
        goto LABEL_39;
      }
    }
  }

  v13 = *(a1 + 8);
  v14 = v13 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v13 - v8) >> 5) >= a4)
  {
    if (a2 != a3)
    {
      do
      {
        _DeviceHistoryItem::operator=(v8, v5);
        v5 += 6;
        v8 += 96;
      }

      while (v5 != a3);
      v13 = *(a1 + 8);
    }

    if (v13 == v8)
    {
LABEL_27:
      *(a1 + 8) = v8;
      return;
    }

    while (1)
    {
      if (SHIBYTE(v13[-1].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v13[-1].__r_.__value_.__l.__data_);
        if ((SHIBYTE(v13[-2].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_31:
          if ((SHIBYTE(v13[-3].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_32;
          }

          goto LABEL_36;
        }
      }

      else if ((SHIBYTE(v13[-2].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_31;
      }

      operator delete(v13[-2].__r_.__value_.__l.__data_);
      if ((SHIBYTE(v13[-3].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_32:
        p_data = &v13[-4].__r_.__value_.__l.__data_;
        if (SHIBYTE(v13[-4].__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_37;
        }

        goto LABEL_28;
      }

LABEL_36:
      operator delete(v13[-3].__r_.__value_.__l.__data_);
      p_data = &v13[-4].__r_.__value_.__l.__data_;
      if (SHIBYTE(v13[-4].__r_.__value_.__r.__words[2]) < 0)
      {
LABEL_37:
        operator delete(*p_data);
      }

LABEL_28:
      v13 = p_data;
      if (p_data == v8)
      {
        goto LABEL_27;
      }
    }
  }

  v15 = (a2 + v14);
  if (v13 != v8)
  {
    do
    {
      _DeviceHistoryItem::operator=(v8, v5);
      v5 += 6;
      v8 += 96;
      v14 -= 96;
    }

    while (v14);
    v13 = *(a1 + 8);
  }

  v23 = v13;
  v16 = v13;
  if (v15 != a3)
  {
    v16 = v13;
    do
    {
      _DeviceHistoryItem::_DeviceHistoryItem(v16, v15);
      v15 += 6;
      v16 = v23 + 4;
      v23 += 4;
    }

    while (v15 != a3);
  }

  *(a1 + 8) = v16;
}

void sub_2970724EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<_DeviceHistoryItem>,_DeviceHistoryItem*>>::~__exception_guard_exceptions[abi:ne200100](&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

void sub_297072504(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<_DeviceHistoryItem>,_DeviceHistoryItem*>>::~__exception_guard_exceptions[abi:ne200100](&a9);
  *(v9 + 8) = v10;
  _Unwind_Resume(a1);
}

char *_DeviceHistoryItem::operator=(char *a1, char *a2)
{
  if (a1 == a2)
  {
    return a1;
  }

  v3 = a2;
  if ((a1[23] & 0x80000000) == 0)
  {
    if (a2[23] < 0)
    {
      std::string::__assign_no_alias<true>(a1, *a2, *(a2 + 1));
      v5 = v3 + 24;
      v6 = v3[47];
      if (a1[47] < 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v4 = *a2;
      *(a1 + 2) = *(a2 + 2);
      *a1 = v4;
      v5 = a2 + 24;
      v6 = a2[47];
      if (a1[47] < 0)
      {
        goto LABEL_14;
      }
    }

LABEL_10:
    if ((v6 & 0x80) != 0)
    {
      std::string::__assign_no_alias<true>(a1 + 3, *(v3 + 3), *(v3 + 4));
      v9 = v3 + 48;
      v10 = v3[71];
      if ((a1[71] & 0x80000000) == 0)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v8 = *v5;
      *(a1 + 5) = *(v5 + 2);
      *(a1 + 24) = v8;
      v9 = v3 + 48;
      v10 = v3[71];
      if ((a1[71] & 0x80000000) == 0)
      {
        goto LABEL_21;
      }
    }

LABEL_25:
    if ((v10 & 0x80u) == 0)
    {
      v16 = v9;
    }

    else
    {
      v16 = *(v3 + 6);
    }

    if ((v10 & 0x80u) == 0)
    {
      v17 = v10;
    }

    else
    {
      v17 = *(v3 + 7);
    }

    std::string::__assign_no_alias<false>(a1 + 6, v16, v17);
    v14 = v3 + 72;
    v15 = v3[95];
    if (a1[95] < 0)
    {
      goto LABEL_36;
    }

    goto LABEL_32;
  }

  if (a2[23] >= 0)
  {
    v7 = a2[23];
  }

  else
  {
    a2 = *a2;
    v7 = *(v3 + 1);
  }

  std::string::__assign_no_alias<false>(a1, a2, v7);
  v5 = v3 + 24;
  v6 = v3[47];
  if ((a1[47] & 0x80000000) == 0)
  {
    goto LABEL_10;
  }

LABEL_14:
  if ((v6 & 0x80u) == 0)
  {
    v11 = v5;
  }

  else
  {
    v11 = *(v3 + 3);
  }

  if ((v6 & 0x80u) == 0)
  {
    v12 = v6;
  }

  else
  {
    v12 = *(v3 + 4);
  }

  std::string::__assign_no_alias<false>(a1 + 3, v11, v12);
  v9 = v3 + 48;
  v10 = v3[71];
  if (a1[71] < 0)
  {
    goto LABEL_25;
  }

LABEL_21:
  if ((v10 & 0x80) == 0)
  {
    v13 = *v9;
    *(a1 + 8) = v9[2];
    *(a1 + 3) = v13;
    v14 = v3 + 72;
    v15 = v3[95];
    if (a1[95] < 0)
    {
      goto LABEL_36;
    }

    goto LABEL_32;
  }

  std::string::__assign_no_alias<true>(a1 + 6, *(v3 + 6), *(v3 + 7));
  v14 = v3 + 72;
  v15 = v3[95];
  if ((a1[95] & 0x80000000) == 0)
  {
LABEL_32:
    if ((v15 & 0x80) != 0)
    {
      std::string::__assign_no_alias<true>(a1 + 9, *(v3 + 9), *(v3 + 10));
      return a1;
    }

    v18 = *v14;
    *(a1 + 11) = v14[2];
    *(a1 + 72) = v18;
    return a1;
  }

LABEL_36:
  if ((v15 & 0x80u) == 0)
  {
    v20 = v14;
  }

  else
  {
    v20 = *(v3 + 9);
  }

  if ((v15 & 0x80u) == 0)
  {
    v21 = v15;
  }

  else
  {
    v21 = *(v3 + 10);
  }

  std::string::__assign_no_alias<false>(a1 + 9, v20, v21);
  return a1;
}

BOOL Preferences::getPreference<__CFArray const*>(uint64_t (***a1)(void, uint64_t), const char *a2, void *a3)
{
  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  ctu::cf::MakeCFString::MakeCFString(&v11, a2);
  v5 = (**a1)(a1, v11);
  v6 = v5;
  if (v5)
  {
    v7 = CFGetTypeID(v5);
    v8 = v7 == CFArrayGetTypeID();
    v9 = v8;
    if (v8)
    {
      *a3 = v6;
    }

    CFRelease(v6);
  }

  else
  {
    v9 = 0;
  }

  MEMORY[0x29C26B130](&v11);
  return v9;
}

BOOL ctu::cf::plist_adapter::set<__CFArray *>(uint64_t a1, CFTypeRef cf, const __CFString *a3, int a4)
{
  if (!cf)
  {
    return 0;
  }

  CFRetain(cf);
  v8 = *MEMORY[0x29EDB8FA8];
  CFPreferencesSetValue(a3, cf, *(a1 + 8), *(a1 + 16), *MEMORY[0x29EDB8FA8]);
  if (a4)
  {
    v9 = CFPreferencesSynchronize(*(a1 + 8), *(a1 + 16), v8) != 0;
  }

  else
  {
    v9 = 1;
  }

  CFRelease(cf);
  return v9;
}

void sub_297072894(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  _Unwind_Resume(a1);
}

uint64_t __cxx_global_var_init_5()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<SharedData>::~PthreadMutexGuardPolicy, &ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance, &dword_296FF7000);
  }

  return result;
}

{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<support::log::buffer>::~PthreadMutexGuardPolicy, &ctu::Singleton<support::log::buffer,support::log::buffer,ctu::PthreadMutexGuardPolicy<support::log::buffer>>::sInstance, &dword_296FF7000);
  }

  return result;
}

uint64_t lcdm::CrashEntry::CrashEntry(uint64_t a1, unsigned int *a2, unint64_t a3, uint64_t a4)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0u;
  v6 = (a1 + 24);
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  v67 = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v65 = v7;
  v66 = v7;
  v64 = v7;
  lcdm::deserializeToSubTLVs(a2, a3, &v64);
  if (v64 != 1)
  {
    goto LABEL_23;
  }

  v8 = v67;
  if (v67 < 2)
  {
    goto LABEL_23;
  }

  v9 = *(&v66 + 1);
  v10 = (*(v65 + ((*(&v66 + 1) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (BYTE8(v66) & 0x7F));
  v12 = *v10;
  v11 = v10[1];
  v13 = v10[2];
  v14 = v13 - v11;
  if (v13 == v11)
  {
    __p = 0;
    if (!v11)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if ((v14 & 0x8000000000000000) != 0)
    {
      std::vector<std::shared_ptr<Service>>::__throw_length_error[abi:ne200100]();
    }

    __p = operator new(v13 - v11);
    memcpy(__p, v11, v14);
    if (!v11)
    {
      goto LABEL_7;
    }
  }

  v10[2] = v11;
  operator delete(v11);
  v9 = *(&v66 + 1);
  v8 = v67;
LABEL_7:
  v15 = v9 + 1;
  *(&v66 + 1) = v9 + 1;
  v67 = v8 - 1;
  if ((v9 + 1) >= 0x100)
  {
    operator delete(*v65);
    v15 = *(&v66 + 1) - 128;
    *&v65 = v65 + 8;
    *(&v66 + 1) -= 128;
  }

  if (HIDWORD(v12) == 4)
  {
    v16 = *__p;
    LOBYTE(v64) = 1;
    *a1 = v16;
    v17 = *(v65 + ((v15 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v15 & 0x7F);
    v18 = *(v17 + 8);
    if (v18)
    {
      *(v17 + 16) = v18;
      operator delete(v18);
      v15 = *(&v66 + 1);
    }

    v19 = v15 + 1;
    *(&v66 + 1) = v19;
    --v67;
    if (v19 >= 0x100)
    {
      operator delete(*v65);
      v19 = *(&v66 + 1) - 128;
      *&v65 = v65 + 8;
      *(&v66 + 1) -= 128;
    }

    *(a1 + 8) = a4;
    if (v6 == (&v64 + 8))
    {
      goto LABEL_69;
    }

    v20 = (v19 >> 4) & 0xFFFFFFFFFFFFFF8;
    v21 = (v65 + v20);
    if (*(&v65 + 1) == v65)
    {
      v23 = 0;
    }

    else
    {
      v22 = v19 & 0x7F;
      v23 = *v21 + 32 * v22;
      v24 = v67 + v19;
      v25 = ((v67 + v19) >> 4) & 0xFFFFFFFFFFFFFF8;
      if (*(v65 + v25) + 32 * (v24 & 0x7F) != v23)
      {
        v26 = (v24 & 0x7F) - v22 + 16 * (v25 - v20);
        v28 = (a1 + 64);
        v27 = *(a1 + 64);
        if (v27 < v26)
        {
          v29 = (*v21 + 32 * v22);
          v30 = (v65 + v20);
          if (v27)
          {
            v31 = v22 + v27;
            if (v31 < 1)
            {
              v53 = 127 - v31;
              v30 = &v21[-(v53 >> 7)];
              v29 = (*v30 + 32 * (~v53 & 0x7F));
            }

            else
            {
              v30 = &v21[v31 >> 7];
              v29 = (*v30 + 32 * (v31 & 0x7F));
            }
          }

          v54 = *(a1 + 32);
          if (*(a1 + 40) == v54)
          {
            v55 = 0;
          }

          else
          {
            v55 = *(v54 + 8 * (*(a1 + 56) >> 7)) + 32 * (*(a1 + 56) & 0x7FLL);
          }

          v68 = (v54 + 8 * (*(a1 + 56) >> 7));
          v69 = v55;
          std::__for_each_segment[abi:ne200100]<std::__deque_iterator<lcdm::SubTLV,lcdm::SubTLV const*,lcdm::SubTLV const&,lcdm::SubTLV const* const*,long,128l>,std::__copy_impl::_CopySegment<std::__deque_iterator<lcdm::SubTLV,lcdm::SubTLV const*,lcdm::SubTLV const&,lcdm::SubTLV const* const*,long,128l>,std::__deque_iterator<lcdm::SubTLV,lcdm::SubTLV*,lcdm::SubTLV&,lcdm::SubTLV**,long,128l>>>(v21, v23, v30, v29, &v68);
          std::deque<lcdm::SubTLV>::__append_with_size[abi:ne200100]<std::__deque_iterator<lcdm::SubTLV,lcdm::SubTLV const*,lcdm::SubTLV const&,lcdm::SubTLV const* const*,long,128l>>(v6, v30, v29, v26 - *v28);
          goto LABEL_69;
        }

LABEL_28:
        v34 = v23;
        v35 = *(a1 + 32);
        v36 = (v35 + 8 * (*(a1 + 56) >> 7));
        if (*(a1 + 40) == v35)
        {
          v37 = 0;
          v38 = v21;
          if (!v26)
          {
LABEL_35:
            v68 = v36;
            v69 = v37;
            std::__for_each_segment[abi:ne200100]<std::__deque_iterator<lcdm::SubTLV,lcdm::SubTLV const*,lcdm::SubTLV const&,lcdm::SubTLV const* const*,long,128l>,std::__copy_impl::_CopySegment<std::__deque_iterator<lcdm::SubTLV,lcdm::SubTLV const*,lcdm::SubTLV const&,lcdm::SubTLV const* const*,long,128l>,std::__deque_iterator<lcdm::SubTLV,lcdm::SubTLV*,lcdm::SubTLV&,lcdm::SubTLV**,long,128l>>>(v21, v34, v38, v23, &v68);
            v42 = *(a1 + 56);
            v41 = *(a1 + 64);
            v44 = *(a1 + 32);
            v43 = *(a1 + 40);
            v45 = (v44 + 8 * ((v42 + v41) >> 7));
            if (v43 == v44)
            {
              v46 = 0;
              if (!v69)
              {
                goto LABEL_69;
              }
            }

            else
            {
              v46 = *v45 + 32 * ((v42 + v41) & 0x7F);
              if (v46 == v69)
              {
                goto LABEL_69;
              }
            }

            v47 = ((v46 - *v45) >> 5) + 16 * (v45 - v68);
            v48 = (v69 - *v68) >> 5;
            v49 = v47 - v48;
            if (v47 - v48 >= 1)
            {
              v50 = (v44 + 8 * (v42 >> 7));
              if (v43 == v44)
              {
                v51 = 0;
              }

              else
              {
                v51 = *v50 + 32 * (*(a1 + 56) & 0x7FLL);
              }

              if (v51 != v69)
              {
                v52 = v48 + 16 * (v68 - v50);
                if (v52 != (v51 - *v50) >> 5)
                {
                  if (v52 < 1)
                  {
                    v56 = 127 - v52;
                    v50 -= 8 * (v56 >> 7);
                    v51 = *v50 + 32 * (~v56 & 0x7F);
                  }

                  else
                  {
                    v50 += 8 * (v52 >> 7);
                    v51 = *v50 + 32 * (v52 & 0x7F);
                  }
                }
              }

              if (v51 != v46)
              {
                do
                {
                  v57 = *(v51 + 8);
                  if (v57)
                  {
                    *(v51 + 16) = v57;
                    operator delete(v57);
                  }

                  v51 += 32;
                  if (v51 - *v50 == 4096)
                  {
                    v58 = *(v50 + 1);
                    v50 += 8;
                    v51 = v58;
                  }
                }

                while (v51 != v46);
                v44 = *(a1 + 32);
                v43 = *(a1 + 40);
                v42 = *(a1 + 56);
                v41 = *(a1 + 64);
              }

              if (v43 == v44)
              {
                v59 = 0;
              }

              else
              {
                v59 = 16 * (v43 - v44) - 1;
              }

              v60 = v41 - v49;
              *v28 = v60;
              if (v59 - (v60 + v42) >= 0x100)
              {
                do
                {
                  operator delete(*(v43 - 8));
                  v61 = *(a1 + 32);
                  v43 = *(a1 + 40) - 8;
                  *(a1 + 40) = v43;
                  if (v43 == v61)
                  {
                    v62 = 0;
                  }

                  else
                  {
                    v62 = 16 * (v43 - v61) - 1;
                  }
                }

                while ((v62 - (*(a1 + 64) + *(a1 + 56))) > 0xFF);
              }
            }

LABEL_69:
            *(a1 + 16) = 1;
            v32 = __p;
            if (!__p)
            {
              goto LABEL_23;
            }

            goto LABEL_22;
          }
        }

        else
        {
          v37 = *v36 + 32 * (*(a1 + 56) & 0x7FLL);
          v38 = v21;
          if (!v26)
          {
            goto LABEL_35;
          }
        }

        v39 = v26 + ((v23 - *v21) >> 5);
        if (v39 < 1)
        {
          v40 = 127 - v39;
          v38 = &v21[-(v40 >> 7)];
          v23 = *v38 + 32 * (~v40 & 0x7F);
        }

        else
        {
          v38 = &v21[v39 >> 7];
          v23 = *v38 + 32 * (v39 & 0x7F);
        }

        goto LABEL_35;
      }
    }

    v26 = 0;
    v28 = (a1 + 64);
    goto LABEL_28;
  }

  LOBYTE(v64) = 0;
  *a1 = 0;
  v32 = __p;
  if (__p)
  {
LABEL_22:
    operator delete(v32);
  }

LABEL_23:
  std::deque<lcdm::SubTLV>::~deque[abi:ne200100](&v64 + 8);
  return a1;
}

void sub_297072E68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  operator delete(__p);
  std::deque<lcdm::SubTLV>::~deque[abi:ne200100](v10);
  std::deque<lcdm::SubTLV>::~deque[abi:ne200100](v11);
  _Unwind_Resume(a1);
}

uint64_t std::deque<lcdm::SubTLV>::~deque[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 == v2)
  {
    v3 = *(a1 + 8);
    *(a1 + 40) = 0;
    v11 = 0;
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = &v2[v4 >> 7];
    v6 = *v5;
    v7 = *v5 + 32 * (v4 & 0x7F);
    v8 = *(v2 + (((*(a1 + 40) + v4) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((*(a1 + 40) + v4) & 0x7F);
    if (v7 != v8)
    {
      do
      {
        v9 = *(v7 + 8);
        if (v9)
        {
          *(v7 + 16) = v9;
          operator delete(v9);
          v6 = *v5;
        }

        v7 += 32;
        if (v7 - v6 == 4096)
        {
          v10 = v5[1];
          ++v5;
          v6 = v10;
          v7 = v10;
        }
      }

      while (v7 != v8);
      v2 = *(a1 + 8);
      v3 = *(a1 + 16);
    }

    *(a1 + 40) = 0;
    v11 = v3 - v2;
    if (v11 >= 3)
    {
      do
      {
        operator delete(*v2);
        v3 = *(a1 + 16);
        v2 = (*(a1 + 8) + 8);
        *(a1 + 8) = v2;
        v11 = v3 - v2;
      }

      while (v11 > 2);
    }
  }

  if (v11 == 1)
  {
    v12 = 64;
    goto LABEL_17;
  }

  if (v11 == 2)
  {
    v12 = 128;
LABEL_17:
    *(a1 + 32) = v12;
  }

  if (v2 != v3)
  {
    do
    {
      v13 = *v2++;
      operator delete(v13);
    }

    while (v2 != v3);
    v15 = *(a1 + 8);
    v14 = *(a1 + 16);
    if (v14 != v15)
    {
      *(a1 + 16) = v14 + ((v15 - v14 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 == v2)
  {
    *(a1 + 40) = 0;
    v11 = 0;
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = &v2[v4 >> 7];
    v6 = *v5;
    v7 = *v5 + 32 * (v4 & 0x7F);
    v8 = *(v2 + (((*(a1 + 40) + v4) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((*(a1 + 40) + v4) & 0x7F);
    if (v7 != v8)
    {
      do
      {
        v9 = *(v7 + 8);
        if (v9)
        {
          *(v7 + 16) = v9;
          operator delete(v9);
          v6 = *v5;
        }

        v7 += 32;
        if (v7 - v6 == 4096)
        {
          v10 = v5[1];
          ++v5;
          v6 = v10;
          v7 = v10;
        }
      }

      while (v7 != v8);
      v2 = *(a1 + 8);
      v3 = *(a1 + 16);
    }

    *(a1 + 40) = 0;
    v11 = v3 - v2;
    if (v11 >= 3)
    {
      do
      {
        operator delete(*v2);
        v3 = *(a1 + 16);
        v2 = (*(a1 + 8) + 8);
        *(a1 + 8) = v2;
        v11 = v3 - v2;
      }

      while (v11 > 2);
    }
  }

  if (v11 == 1)
  {
    v12 = 64;
    goto LABEL_17;
  }

  if (v11 == 2)
  {
    v12 = 128;
LABEL_17:
    *(a1 + 32) = v12;
  }

  if (v2 != v3)
  {
    do
    {
      v13 = *v2++;
      operator delete(v13);
    }

    while (v2 != v3);
    v15 = *(a1 + 8);
    v14 = *(a1 + 16);
    if (v14 != v15)
    {
      *(a1 + 16) = v14 + ((v15 - v14 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t lcdm::CrashEntry::serialize(lcdm::CrashEntry *a1, uint64_t a2, unint64_t a3)
{
  v18 = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v16 = v5;
  v17 = v5;
  v15 = v5;
  lcdm::CrashEntry::convertToSubTLVs(a1, &v15);
  if (v15 == 1 && (v6 = (v16 + 8 * (*(&v17 + 1) >> 7)), v7 = *v6 + 32 * (BYTE8(v17) & 0x7F), *(v7 + 4) == 4) && a3 >= **(v7 + 8))
  {
    if (*(&v16 + 1) == v16 || (v10 = *(v16 + (((v18 + *(&v17 + 1)) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((v18 + *(&v17 + 1)) & 0x7F), v7 == v10))
    {
      v8 = 1;
    }

    else
    {
      v11 = 0;
      v8 = 1;
      while (a3 - v11 >= *(v7 + 4) + 8)
      {
        v12 = (a2 + v11);
        *v12 = *v7;
        v12[1] = *(v7 + 4);
        memcpy((a2 + v11 + 8), *(v7 + 8), *(v7 + 4));
        v13 = v7 + 32;
        if (v7 + 32 - *v6 == 4096)
        {
          v14 = v6[1];
          ++v6;
          v13 = v14;
        }

        v11 += *(v7 + 4) + 8;
        v7 = v13;
        if (v13 == v10)
        {
          goto LABEL_5;
        }
      }

      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

LABEL_5:
  std::deque<lcdm::SubTLV>::~deque[abi:ne200100](&v15 + 8);
  return v8;
}

void lcdm::CrashEntry::convertToSubTLVs(lcdm::CrashEntry *this@<X0>, uint64_t a2@<X8>)
{
  memset(v27, 0, sizeof(v27));
  v26 = 4;
  strcpy(__p, "TIME");
  lcdm::constructSubTLVWithUInt64Value(__p, *(this + 1), &v22);
  v4 = v22;
  v28 = *(&v22 + 1);
  v21 = v23;
  v29 = v23;
  v30 = v24;
  *&v24 = 0;
  v23 = 0uLL;
  if ((v26 & 0x80000000) == 0)
  {
    if (v22)
    {
      goto LABEL_3;
    }

LABEL_9:
    v23 = 0u;
    v24 = 0u;
    v22 = 0u;
    *a2 = 0;
    *(a2 + 8) = 0u;
    *(a2 + 24) = 0u;
    *(a2 + 40) = 0u;
    std::deque<lcdm::SubTLV>::__append_with_size[abi:ne200100]<std::__deque_iterator<lcdm::SubTLV,lcdm::SubTLV const*,lcdm::SubTLV const&,lcdm::SubTLV const* const*,long,128l>>((a2 + 8), 0, 0, 0);
    std::deque<lcdm::SubTLV>::~deque[abi:ne200100](&v22);
    goto LABEL_22;
  }

  operator delete(__p[0]);
  if ((v4 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  v26 = 4;
  strcpy(__p, "SAH ");
  lcdm::constructSubTLVWithUInt32Value(__p, *this, &v22);
  v5 = v22;
  *&v27[0] = *(&v22 + 1);
  v20 = v23;
  *(v27 + 8) = v23;
  *(&v27[1] + 1) = v24;
  *&v24 = 0;
  v23 = 0uLL;
  if ((v26 & 0x80000000) == 0)
  {
    v6 = 0uLL;
    if (v22)
    {
      goto LABEL_5;
    }

LABEL_11:
    v23 = v6;
    v24 = v6;
    v22 = v6;
    *a2 = 0;
    *(a2 + 8) = v6;
    *(a2 + 24) = v6;
    *(a2 + 40) = v6;
    std::deque<lcdm::SubTLV>::__append_with_size[abi:ne200100]<std::__deque_iterator<lcdm::SubTLV,lcdm::SubTLV const*,lcdm::SubTLV const&,lcdm::SubTLV const* const*,long,128l>>((a2 + 8), 0, 0, 0);
    goto LABEL_20;
  }

  operator delete(__p[0]);
  v6 = 0uLL;
  if ((v5 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_5:
  v23 = v6;
  v24 = v6;
  v22 = v6;
  v7 = *(this + 7);
  v8 = (v7 >> 4) & 0xFFFFFFFFFFFFFF8;
  v9 = *(this + 4);
  if (*(this + 5) == v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = (*(v9 + v8) + 32 * (*(this + 7) & 0x7FLL));
    v11 = *(this + 8) + v7;
    v12 = (v11 >> 4) & 0xFFFFFFFFFFFFFF8;
    v13 = v11 & 0x7F;
    if ((*(v9 + v12) + 32 * v13) != v10)
    {
      v14 = v13 - (*(this + 7) & 0x7FLL) + 16 * (v12 - v8);
      goto LABEL_14;
    }
  }

  v14 = 0;
LABEL_14:
  std::deque<lcdm::SubTLV>::__append_with_size[abi:ne200100]<std::__deque_iterator<lcdm::SubTLV,lcdm::SubTLV const*,lcdm::SubTLV const&,lcdm::SubTLV const* const*,long,128l>>(&v22, (v9 + v8), v10, v14);
  std::deque<lcdm::SubTLV>::push_front(&v22, &v28);
  std::deque<lcdm::SubTLV>::push_front(&v22, v27);
  *a2 = 1;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  v15 = (v24 >> 4) & 0xFFFFFFFFFFFFFF8;
  if (v23 == *(&v22 + 1))
  {
    v16 = 0;
    goto LABEL_18;
  }

  v16 = (*(*(&v22 + 1) + v15) + 32 * (v24 & 0x7F));
  v17 = ((*(&v24 + 1) + v24) >> 4) & 0xFFFFFFFFFFFFFF8;
  v18 = (BYTE8(v24) + v24) & 0x7F;
  if ((*(*(&v22 + 1) + v17) + 32 * v18) == v16)
  {
LABEL_18:
    v19 = 0;
    goto LABEL_19;
  }

  v19 = v18 - (v24 & 0x7F) + 16 * (v17 - v15);
LABEL_19:
  std::deque<lcdm::SubTLV>::__append_with_size[abi:ne200100]<std::__deque_iterator<lcdm::SubTLV,lcdm::SubTLV const*,lcdm::SubTLV const&,lcdm::SubTLV const* const*,long,128l>>((a2 + 8), (*(&v22 + 1) + v15), v16, v19);
LABEL_20:
  std::deque<lcdm::SubTLV>::~deque[abi:ne200100](&v22);
  if (v20)
  {
    operator delete(v20);
  }

LABEL_22:
  if (v21)
  {
    operator delete(v21);
  }
}

void sub_297073470(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, __int128 a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  std::__split_buffer<lcdm::SubTLV *>::~__split_buffer(v23);
  std::deque<lcdm::SubTLV>::~deque[abi:ne200100](&__p);
  if (a9)
  {
    operator delete(a9);
  }

  if (a10)
  {
    operator delete(a10);
  }

  _Unwind_Resume(a1);
}

void lcdm::CrashEntry::toDebugString(lcdm::CrashEntry *this@<X0>, void *a2@<X8>)
{
  v19 = *MEMORY[0x29EDCA608];
  v12[0] = *this;
  v12[1] = 0;
  v3 = *(this + 1);
  v12[3] = 0;
  v12[4] = 230;
  v12[2] = v3;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v17[14] = v4;
  v17[15] = v4;
  v17[13] = v4;
  v17[12] = v4;
  v17[11] = v4;
  v17[10] = v4;
  v17[9] = v4;
  v17[8] = v4;
  v17[7] = v4;
  v17[6] = v4;
  v17[5] = v4;
  v17[4] = v4;
  v17[3] = v4;
  v17[2] = v4;
  v17[1] = v4;
  v17[0] = v4;
  v13 = v17;
  *__len = xmmword_297225680;
  v15 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
  v16 = 0;
  __p = v17;
  v11[0] = 2;
  v11[1] = v12;
  v11[2] = 230;
  std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&v13, "fLength = {}, fTimestamp = {}", 29, v11);
  v5 = __len[1];
  if (__len[1] >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v6 = __p;
  if (__len[1] >= 0x17)
  {
    if ((__len[1] | 7) == 0x17)
    {
      v9 = 25;
    }

    else
    {
      v9 = (__len[1] | 7) + 1;
    }

    v10 = operator new(v9);
    a2[1] = v5;
    a2[2] = v9 | 0x8000000000000000;
    *a2 = v10;
    a2 = v10;
LABEL_11:
    memmove(a2, v6, v5);
    *(a2 + v5) = 0;
    v7 = __p;
    if (__p == v17)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  *(a2 + 23) = __len[1];
  if (v5)
  {
    goto LABEL_11;
  }

  *a2 = 0;
  v7 = __p;
  if (__p != v17)
  {
LABEL_5:
    operator delete(v7);
  }

LABEL_6:
  v8 = *MEMORY[0x29EDCA608];
}

void sub_297073704(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *__p)
{
  if (__p != v57)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int64x2_t std::deque<lcdm::SubTLV>::push_front(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    goto LABEL_50;
  }

  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = 16 * (v5 - v6) - 1;
  if (v5 == v6)
  {
    v7 = 0;
  }

  if ((v7 - *(a1 + 40)) < 0x80)
  {
    v8 = *(a1 + 24);
    v9 = *a1;
    v10 = &v8[-*a1];
    if (v5 - v6 < v10)
    {
      if (v6 == v9)
      {
        v55 = operator new(0x1000uLL);
        std::__split_buffer<lcdm::SubTLV *>::emplace_back<lcdm::SubTLV *&>(a1, &v55);
        v38 = *(a1 + 16);
        v55 = *(v38 - 8);
        *(a1 + 16) = v38 - 8;
        std::__split_buffer<lcdm::SubTLV *>::emplace_front<lcdm::SubTLV *>(a1, &v55);
        if (*(a1 + 16) - *(a1 + 8) == 8)
        {
          goto LABEL_9;
        }
      }

      else
      {
        v55 = operator new(0x1000uLL);
        std::__split_buffer<lcdm::SubTLV *>::emplace_front<lcdm::SubTLV *>(a1, &v55);
        if (*(a1 + 16) - *(a1 + 8) == 8)
        {
LABEL_9:
          *(a1 + 32) = 64;
          goto LABEL_49;
        }
      }

      *(a1 + 32) += 128;
      goto LABEL_49;
    }

    if (v8 == v9)
    {
      v11 = 1;
    }

    else
    {
      v11 = v10 >> 2;
    }

    if (v11 >> 61)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v12 = operator new(8 * v11);
    v13 = operator new(0x1000uLL);
    v14 = v13;
    if (v11)
    {
      v15 = &v12[8 * v11];
      *v12 = v13;
      v16 = v12 + 8;
      if (v6 != v5)
      {
LABEL_16:
        v17 = v12;
        while (1)
        {
          if (v16 == v15)
          {
            if (v17 <= v12)
            {
              if (v16 == v12)
              {
                v21 = 1;
              }

              else
              {
                v21 = (v16 - v12) >> 2;
              }

              if (v21 >> 61)
              {
                std::__throw_bad_array_new_length[abi:ne200100]();
              }

              v22 = operator new(8 * v21);
              v23 = v22;
              v24 = v21 >> 2;
              v18 = &v22[8 * (v21 >> 2)];
              v26 = v16 - v17;
              v25 = v16 == v17;
              v16 = v18;
              if (!v25)
              {
                v16 = &v18[v26];
                v27 = v26 - 8;
                if (v27 < 0x18 || (v28 = 8 * v24, (&v22[8 * v24] - v17) < 0x20))
                {
                  v29 = &v22[8 * (v21 >> 2)];
                  v30 = v17;
                  goto LABEL_32;
                }

                v32 = (v27 >> 3) + 1;
                v33 = 8 * (v32 & 0x3FFFFFFFFFFFFFFCLL);
                v29 = &v18[v33];
                v30 = &v17[v33];
                v34 = (v17 + 16);
                v35 = &v22[v28 + 16];
                v36 = v32 & 0x3FFFFFFFFFFFFFFCLL;
                do
                {
                  v37 = *v34;
                  *(v35 - 1) = *(v34 - 1);
                  *v35 = v37;
                  v34 += 2;
                  v35 += 32;
                  v36 -= 4;
                }

                while (v36);
                if (v32 != (v32 & 0x3FFFFFFFFFFFFFFCLL))
                {
                  do
                  {
LABEL_32:
                    v31 = *v30;
                    v30 += 8;
                    *v29 = v31;
                    v29 += 8;
                  }

                  while (v29 != v16);
                }
              }

              v15 = &v22[8 * v21];
              if (v12)
              {
                operator delete(v12);
              }

              v12 = v23;
              goto LABEL_18;
            }

            v20 = (((v17 - v12) >> 3) + 1 + ((((v17 - v12) >> 3) + 1) >> 63)) >> 1;
            v18 = &v17[-8 * v20];
            if (v16 != v17)
            {
              memmove(&v17[-8 * v20], v17, v16 - v17);
            }

            v16 = &v18[v16 - v17];
          }

          else
          {
            v18 = v17;
          }

LABEL_18:
          v19 = *v6;
          v6 += 8;
          *v16 = v19;
          v16 += 8;
          v17 = v18;
          if (v6 == *(a1 + 16))
          {
            goto LABEL_44;
          }
        }
      }
    }

    else
    {
      v39 = operator new(8uLL);
      v15 = v39 + 8;
      operator delete(v12);
      v6 = *(a1 + 8);
      v40 = *(a1 + 16);
      v12 = v39;
      *v39 = v14;
      v16 = v39 + 8;
      if (v6 != v40)
      {
        goto LABEL_16;
      }
    }

    v18 = v12;
LABEL_44:
    v41 = *a1;
    *a1 = v12;
    *(a1 + 8) = v18;
    *(a1 + 16) = v16;
    *(a1 + 24) = v15;
    if (v16 - v18 == 8)
    {
      v42 = 64;
    }

    else
    {
      v42 = *(a1 + 32) + 128;
    }

    *(a1 + 32) = v42;
    if (v41)
    {
      operator delete(v41);
    }

    goto LABEL_49;
  }

  *(a1 + 32) = 128;
  v55 = *(v5 - 1);
  *(a1 + 16) = v5 - 8;
  std::__split_buffer<lcdm::SubTLV *>::emplace_front<lcdm::SubTLV *>(a1, &v55);
LABEL_49:
  v4 = *(a1 + 32);
LABEL_50:
  v43 = *(a1 + 8);
  v44 = (v43 + 8 * (v4 >> 7));
  v45 = *v44 + 32 * (v4 & 0x7F);
  if (*(a1 + 16) == v43)
  {
    v46 = 0;
  }

  else
  {
    v46 = v45;
  }

  if (v46 == *v44)
  {
    v46 = *(v44 - 1) + 4096;
  }

  v47 = *a2;
  *(v46 - 24) = 0;
  v48 = v46 - 24;
  *(v46 - 32) = v47;
  *(v48 + 8) = 0;
  *(v48 + 16) = 0;
  v50 = a2[1];
  v49 = a2[2];
  v51 = v49 - v50;
  if (v49 != v50)
  {
    if ((v51 & 0x8000000000000000) != 0)
    {
      std::vector<std::shared_ptr<Service>>::__throw_length_error[abi:ne200100]();
    }

    v52 = operator new(v49 - v50);
    *(v46 - 24) = v52;
    *(v46 - 16) = v52;
    v53 = &v52[v51];
    *(v46 - 8) = &v52[v51];
    memcpy(v52, v50, v51);
    *(v46 - 16) = v53;
  }

  result = vaddq_s64(*(a1 + 32), xmmword_297225690);
  *(a1 + 32) = result;
  return result;
}

void sub_297073AF0(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<lcdm::SubTLV *>::~__split_buffer(uint64_t result)
{
  v2 = *(result + 8);
  v1 = *(result + 16);
  if (v1 != v2)
  {
    *(result + 16) = v1 + ((v2 - v1 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  if (*result)
  {
    v3 = result;
    operator delete(*result);
    return v3;
  }

  return result;
}

void std::deque<lcdm::SubTLV>::__append_with_size[abi:ne200100]<std::__deque_iterator<lcdm::SubTLV,lcdm::SubTLV const*,lcdm::SubTLV const&,lcdm::SubTLV const* const*,long,128l>>(void *a1, void *a2, void *a3, unint64_t a4)
{
  v7 = a1;
  v8 = a1[1];
  v9 = a1[2];
  if (v9 == v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = 16 * (v9 - v8) - 1;
  }

  v11 = a1[5];
  v12 = v11 + a1[4];
  v13 = v10 - v12;
  if (a4 > v13)
  {
    std::deque<lcdm::SubTLV>::__add_back_capacity(a1, a4 - v13);
    v11 = v7[5];
    v8 = v7[1];
    v9 = v7[2];
    v12 = v7[4] + v11;
  }

  v14 = (v8 + 8 * (v12 >> 7));
  if (v9 == v8)
  {
    v15 = 0;
    v16 = 0;
    if (a4)
    {
      goto LABEL_8;
    }

LABEL_12:
    v18 = (v8 + 8 * (v12 >> 7));
    if (v15 != v16)
    {
      goto LABEL_15;
    }

    return;
  }

  v15 = *v14 + 32 * (v12 & 0x7F);
  v16 = v15;
  if (!a4)
  {
    goto LABEL_12;
  }

LABEL_8:
  v17 = a4 + ((v16 - *v14) >> 5);
  if (v17 >= 1)
  {
    v18 = &v14[v17 >> 7];
    v16 = *v18 + 32 * (v17 & 0x7F);
    if (v15 == v16)
    {
      return;
    }

LABEL_15:
    v31 = v16;
    v32 = v7;
    v30 = v18;
    while (1)
    {
      v20 = v16;
      if (v14 != v18)
      {
        v20 = *v14 + 4096;
      }

      if (v15 == v20)
      {
        v7[5] = v11;
        if (v14 == v18)
        {
          return;
        }
      }

      else
      {
        v21 = 0;
        v22 = v15;
        do
        {
          *v22 = *a3;
          v22[1] = 0;
          v22[2] = 0;
          v22[3] = 0;
          v24 = a3[1];
          v23 = a3[2];
          v25 = v23 - v24;
          if (v23 != v24)
          {
            if ((v25 & 0x8000000000000000) != 0)
            {
              std::vector<std::shared_ptr<Service>>::__throw_length_error[abi:ne200100]();
            }

            v26 = operator new(v23 - v24);
            v22[1] = v26;
            v22[2] = v26;
            v27 = &v26[v25];
            v22[3] = &v26[v25];
            memcpy(v26, v24, v25);
            v22[2] = v27;
          }

          a3 += 4;
          if ((a3 - *a2) == 4096)
          {
            v28 = a2[1];
            ++a2;
            a3 = v28;
          }

          v22 += 4;
          v21 -= 32;
        }

        while (v22 != v20);
        v16 = v31;
        v7 = v32;
        v18 = v30;
        v11 = v32[5] + ((v20 - v15) >> 5);
        v32[5] = v11;
        if (v14 == v30)
        {
          return;
        }
      }

      v29 = v14[1];
      ++v14;
      v15 = v29;
      if (v29 == v16)
      {
        return;
      }
    }
  }

  v19 = 127 - v17;
  v18 = &v14[-(v19 >> 7)];
  v16 = *v18 + 32 * (~v19 & 0x7F);
  if (v15 != v16)
  {
    goto LABEL_15;
  }
}

void sub_297073DA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v14 = *(v12 + 8);
  if (v14)
  {
    *(v12 + 16) = v14;
    v15 = a1;
    operator delete(v14);
    a1 = v15;
  }

  *(a12 + 40) += -v13 >> 5;
  _Unwind_Resume(a1);
}