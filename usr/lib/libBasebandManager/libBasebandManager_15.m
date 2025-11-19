void OBDManager::stopOBDTimer(OBDManager *this)
{
  v2 = *(this + 12);
  if (v2)
  {
    dispatch_source_cancel(v2);
    v3 = *(this + 12);
    *(this + 12) = 0;
    if (v3)
    {
      dispatch_release(v3);
      v4 = *(this + 12);
      *(this + 12) = 0;
      if (v4)
      {

        dispatch_release(v4);
      }
    }
  }
}

void OBDManager::stopCoreMotionCallbackWatchdog(OBDManager *this)
{
  v2 = *(this + 10);
  if (v2)
  {
    dispatch_source_cancel(v2);
    v3 = *(this + 10);
    *(this + 10) = 0;
    if (v3)
    {
      dispatch_release(v3);
      v4 = *(this + 10);
      *(this + 10) = 0;
      if (v4)
      {

        dispatch_release(v4);
      }
    }
  }
}

void ___ZN10OBDManager4initEv_block_invoke(void *a1, unsigned int a2, int a3)
{
  v22 = *MEMORY[0x29EDCA608];
  v4 = a1[6];
  if (!v4)
  {
    goto LABEL_18;
  }

  v7 = a1[4];
  v8 = std::__shared_weak_count::lock(v4);
  if (!v8)
  {
    goto LABEL_18;
  }

  v9 = a1[5];
  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v10 = v8;
    (v8->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v10);
  }

  if (!v9)
  {
    goto LABEL_18;
  }

  v11 = *v7;
  if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
  {
    if (a2 > 2)
    {
      v12 = "Unknown";
    }

    else
    {
      v12 = off_29EE64220[a2];
    }

    v13 = "Confidence Level Unknown";
    if (a3 == 1)
    {
      v13 = "Confidence Level High";
    }

    if (!a3)
    {
      v13 = "Confidence Level Low";
    }

    v18 = 136315394;
    v19 = v12;
    v20 = 2080;
    v21 = v13;
    _os_log_impl(&dword_296FF7000, v11, OS_LOG_TYPE_DEFAULT, "#I On Body Callback: OnBody: %s, confidence: %s", &v18, 0x16u);
  }

  *(v7 + 88) = a2;
  if (*(v7 + 96))
  {
    OBDManager::startCoreMotionCallbackWatchdog(v7);
    v14 = *MEMORY[0x29EDCA608];
    return;
  }

  v15 = *v7;
  if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v18) = 0;
    _os_log_error_impl(&dword_296FF7000, v15, OS_LOG_TYPE_ERROR, "OBD has not started yet!", &v18, 2u);
    v17 = *MEMORY[0x29EDCA608];
  }

  else
  {
LABEL_18:
    v16 = *MEMORY[0x29EDCA608];
  }
}

void OBDManager::startCoreMotionCallbackWatchdog(OBDManager *this)
{
  v2 = *(this + 10);
  if (v2)
  {
    dispatch_source_cancel(v2);
    v3 = *(this + 10);
    *(this + 10) = 0;
    if (v3)
    {
      dispatch_release(v3);
      v4 = *(this + 10);
      *(this + 10) = 0;
      if (v4)
      {
        dispatch_release(v4);
      }
    }
  }

  v5 = dispatch_source_create(MEMORY[0x29EDCA5D0], 1uLL, 0, *(this + 3));
  v6 = *(this + 10);
  *(this + 10) = v5;
  if (v6)
  {
    dispatch_release(v6);
    v5 = *(this + 10);
  }

  v7 = dispatch_time(0, 5120000000);
  dispatch_source_set_timer(v5, v7, 0xFFFFFFFFFFFFFFFFLL, 0xBEBC200uLL);
  v8 = *(this + 1);
  v9 = *(this + 2);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = *(this + 10);
  handler[0] = MEMORY[0x29EDCA5F8];
  handler[1] = 3321888768;
  handler[2] = ___ZN10OBDManager31startCoreMotionCallbackWatchdogEv_block_invoke;
  handler[3] = &__block_descriptor_56_e8_40c35_ZTSNSt3__18weak_ptrI10OBDManagerEE_e5_v8__0l;
  handler[4] = this;
  handler[5] = v8;
  v12 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  dispatch_source_set_event_handler(v10, handler);
  dispatch_activate(*(this + 10));
  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }
}

uint64_t __copy_helper_block_e8_40c35_ZTSNSt3__18weak_ptrI10OBDManagerEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c35_ZTSNSt3__18weak_ptrI10OBDManagerEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

char *OBDManager::registerCallback(unint64_t *a1, void **a2)
{
  v4 = a1[6];
  if (v4 >= a1[7])
  {
    result = std::vector<dispatch::callback<void({block_pointer})(sar::OBDState,sar::TunerState)>>::__emplace_back_slow_path<dispatch::callback<void({block_pointer})(sar::OBDState,sar::TunerState)> const&>(a1 + 5, a2);
    a1[6] = result;
  }

  else
  {
    v5 = *a2;
    if (*a2)
    {
      v5 = _Block_copy(v5);
    }

    v6 = a2[1];
    *v4 = v5;
    v4[1] = v6;
    if (v6)
    {
      dispatch_retain(v6);
    }

    result = (v4 + 2);
    a1[6] = (v4 + 2);
  }

  return result;
}

void OBDManager::start(OBDManager *this, uint64_t a2)
{
  v9 = *MEMORY[0x29EDCA608];
  if (*(this + 12))
  {
    v4 = *this;
    if (os_log_type_enabled(*this, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v7) = 0;
      _os_log_impl(&dword_296FF7000, v4, OS_LOG_TYPE_DEFAULT, "#I WARNING - OBD Manager has started already!", &v7, 2u);
    }
  }

  if (*(this + 8))
  {
    OBDManager::startCoreMotionCallbackWatchdog(this);
    CMOnBodyDelegate::startMotionDetection(*(this + 8));
  }

  OBDManager::startOBDTimer(this, a2);
  v5 = *this;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    v8 = a2;
    _os_log_impl(&dword_296FF7000, v5, OS_LOG_TYPE_DEFAULT, "#I Core Motion OnBody Detection is starting with %lld msec", &v7, 0xCu);
  }

  v6 = *MEMORY[0x29EDCA608];
}

void OBDManager::startOBDTimer(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 96);
  if (v4)
  {
    dispatch_source_cancel(v4);
    v5 = *(a1 + 96);
    *(a1 + 96) = 0;
    if (v5)
    {
      dispatch_release(v5);
      v6 = *(a1 + 96);
      *(a1 + 96) = 0;
      if (v6)
      {
        dispatch_release(v6);
      }
    }
  }

  v7 = dispatch_source_create(MEMORY[0x29EDCA5D0], 1uLL, 0, *(a1 + 24));
  v8 = *(a1 + 96);
  *(a1 + 96) = v7;
  if (v8)
  {
    dispatch_release(v8);
    v7 = *(a1 + 96);
  }

  v9 = dispatch_time(0, 1000000 * a2);
  dispatch_source_set_timer(v7, v9, 0xFFFFFFFFFFFFFFFFLL, 0xBEBC200uLL);
  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = *(a1 + 96);
  v13[0] = MEMORY[0x29EDCA5F8];
  v13[1] = 3321888768;
  v13[2] = ___ZN10OBDManager13startOBDTimerENSt3__16chrono8durationIxNS0_5ratioILl1ELl1000EEEEE_block_invoke;
  v13[3] = &__block_descriptor_64_e8_40c35_ZTSNSt3__18weak_ptrI10OBDManagerEE_e5_v8__0l;
  v13[4] = a1;
  v13[5] = v10;
  v14 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v15 = a2;
  dispatch_source_set_event_handler(v12, v13);
  dispatch_activate(*(a1 + 96));
  if (v14)
  {
    std::__shared_weak_count::__release_weak(v14);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }
}

void OBDManager::stop(OBDManager *this)
{
  v2 = *(this + 12);
  if (v2)
  {
    dispatch_source_cancel(v2);
    v3 = *(this + 12);
    *(this + 12) = 0;
    if (v3)
    {
      dispatch_release(v3);
      v4 = *(this + 12);
      *(this + 12) = 0;
      if (v4)
      {
        dispatch_release(v4);
      }
    }
  }

  if (*(this + 8))
  {
    v5 = *(this + 10);
    if (v5)
    {
      dispatch_source_cancel(v5);
      v6 = *(this + 10);
      *(this + 10) = 0;
      if (v6)
      {
        dispatch_release(v6);
        v7 = *(this + 10);
        *(this + 10) = 0;
        if (v7)
        {
          dispatch_release(v7);
        }
      }
    }

    v8 = *(this + 8);

    CMOnBodyDelegate::stopMotionDetection(v8);
  }
}

void ___ZN10OBDManager31startCoreMotionCallbackWatchdogEv_block_invoke(void *a1)
{
  v11 = *MEMORY[0x29EDCA608];
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
        v7 = *v3;
        if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
        {
          v9 = 134217984;
          v10 = 5120;
          _os_log_impl(&dword_296FF7000, v7, OS_LOG_TYPE_DEFAULT, "#I WARNING - Motion did not report the callback in %llu milli-seconds", &v9, 0xCu);
        }
      }
    }
  }

  v8 = *MEMORY[0x29EDCA608];
}

void ___ZN10OBDManager13startOBDTimerENSt3__16chrono8durationIxNS0_5ratioILl1ELl1000EEEEE_block_invoke(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = a1[5];
      if (atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        if (!v5)
        {
          return;
        }
      }

      else
      {
        v6 = v4;
        (v4->__on_zero_shared)();
        std::__shared_weak_count::__release_weak(v6);
        if (!v5)
        {
          return;
        }
      }

      v17 = a1;
      if (config::hw::iPad(v4))
      {
        OBDManager::updateOBDState_iPad(v3);
        v7 = *(v3 + 40);
        v8 = *(v3 + 48);
        if (v7 != v8)
        {
          goto LABEL_13;
        }

        goto LABEL_32;
      }

      OBDManager::updateOBDState_iPhone(v3);
      v7 = *(v3 + 40);
      v8 = *(v3 + 48);
      if (v7 == v8)
      {
LABEL_32:
        v15 = *(v3 + 96);
        v16 = dispatch_time(0, 1000000 * v17[7]);
        dispatch_source_set_timer(v15, v16, 0xFFFFFFFFFFFFFFFFLL, 0xBEBC200uLL);
        return;
      }

LABEL_13:
      while (*v7)
      {
        v9 = _Block_copy(*v7);
        v10 = *(v7 + 8);
        if (v10)
        {
          goto LABEL_15;
        }

LABEL_16:
        v11 = *(v3 + 32);
        v12 = *(v3 + 33);
        if (v9)
        {
          v13 = _Block_copy(v9);
        }

        else
        {
          v13 = 0;
        }

        block[0] = MEMORY[0x29EDCA5F8];
        block[1] = 3321888768;
        block[2] = ___ZNK8dispatch8callbackIU13block_pointerFvN3sar8OBDStateENS1_10TunerStateEEEclIJS2_S3_EEEvDpT__block_invoke;
        block[3] = &__block_descriptor_42_e8_32c74_ZTSN8dispatch5blockIU13block_pointerFvN3sar8OBDStateENS1_10TunerStateEEEE_e5_v8__0l;
        if (v13)
        {
          v14 = _Block_copy(v13);
        }

        else
        {
          v14 = 0;
        }

        aBlock = v14;
        v20 = v11;
        v21 = v12;
        dispatch_async(v10, block);
        if (aBlock)
        {
          _Block_release(aBlock);
        }

        if (v13)
        {
          _Block_release(v13);
        }

        if (v10)
        {
          dispatch_release(v10);
        }

        if (v9)
        {
          _Block_release(v9);
        }

        v7 += 16;
        if (v7 == v8)
        {
          goto LABEL_32;
        }
      }

      v9 = 0;
      v10 = *(v7 + 8);
      if (!v10)
      {
        goto LABEL_16;
      }

LABEL_15:
      dispatch_retain(v10);
      goto LABEL_16;
    }
  }
}

void OBDManager::updateOBDState(OBDManager *this)
{
  if (config::hw::iPad(this))
  {

    OBDManager::updateOBDState_iPad(this);
  }

  else
  {

    OBDManager::updateOBDState_iPhone(this);
  }
}

void OBDManager::setMotionParameter(uint64_t a1, ctu **a2)
{
  if (*(a1 + 64))
  {
    ctu::xpc_to_cf(&cf, *a2, a2);
    v3 = cf;
    if (cf && (v4 = CFGetTypeID(cf), v4 == CFDictionaryGetTypeID()))
    {
      v7 = v3;
      CFRetain(v3);
      v5 = cf;
      if (!cf)
      {
LABEL_8:
        CMOnBodyDelegate::setThresholds(*(a1 + 64), v3);
        if (v3)
        {
          CFRelease(v3);
        }

        return;
      }
    }

    else
    {
      v3 = 0;
      v7 = 0;
      v5 = cf;
      if (!cf)
      {
        goto LABEL_8;
      }
    }

    CFRelease(v5);
    goto LABEL_8;
  }
}

void sub_2970BB9E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void OBDManager::updateOBDState_iPad(OBDManager *this)
{
  v22 = *MEMORY[0x29EDCA608];
  *(this + 16) = 257;
  v2 = *(this + 30);
  if (capabilities::txpower::operator&() && !*(this + 22))
  {
    *(this + 16) = 0;
    v3 = *this;
    if (!os_log_type_enabled(*this, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_10;
    }
  }

  else
  {
    v3 = *this;
    if (!os_log_type_enabled(*this, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_10;
    }
  }

  v4 = *(this + 22);
  if (v4 > 2)
  {
    v5 = "Unknown";
  }

  else
  {
    v5 = off_29EE64220[v4];
  }

  v6 = *(this + 32);
  v7 = sar::toString();
  v8 = *(this + 33);
  v9 = sar::toString();
  v10 = *(this + 30);
  v11 = capabilities::txpower::operator&();
  v12 = "YES";
  v14 = 136315906;
  v15 = v5;
  v16 = 2080;
  if (!v11)
  {
    v12 = "NO";
  }

  v17 = v7;
  v18 = 2080;
  v19 = v9;
  v20 = 2080;
  v21 = v12;
  _os_log_impl(&dword_296FF7000, v3, OS_LOG_TYPE_DEFAULT, "#I Motion Status: %s. Notifying OBD State: %s, Tuner State: %s, Motion Status as an input: %s", &v14, 0x2Au);
LABEL_10:
  v13 = *MEMORY[0x29EDCA608];
}

void OBDManager::updateOBDState_iPhone(OBDManager *this)
{
  v1 = this;
  v30 = *MEMORY[0x29EDCA608];
  v2 = *(*(this + 13) + 56);
  *(this + 32) = 1;
  if (!v2)
  {
LABEL_7:
    if (!capabilities::txpower::supportsMotionAlways(this) || (v5 = *(v1 + 30), !capabilities::txpower::operator&()) || *(v1 + 22))
    {
      *(v1 + 33) = 1;
      v6 = v1 + 33;
      if (*(v1 + 22))
      {
        v3 = *v1;
        if (os_log_type_enabled(*v1, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_16;
        }

        goto LABEL_12;
      }

LABEL_15:
      *v6 = 0;
      v3 = *v1;
      if (os_log_type_enabled(*v1, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_16;
      }

LABEL_12:
      v7 = *MEMORY[0x29EDCA608];
      return;
    }

LABEL_14:
    *(v1 + 32) = 0;
    v6 = v1 + 33;
    goto LABEL_15;
  }

  if (v2 != 1)
  {
    v4 = *(this + 30);
    this = capabilities::txpower::operator&();
    if (this && !*(v1 + 22))
    {
      goto LABEL_14;
    }

    goto LABEL_7;
  }

  *(this + 16) = 256;
  v3 = *this;
  if (!os_log_type_enabled(*this, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_12;
  }

LABEL_16:
  v8 = *(*(v1 + 13) + 56);
  if (v8 > 3)
  {
    v9 = "Unknown Audio Output";
    v10 = *(v1 + 22);
    if (v10 > 2)
    {
      goto LABEL_18;
    }

LABEL_20:
    v11 = off_29EE64220[v10];
    goto LABEL_21;
  }

  v9 = off_29EE64200[v8];
  v10 = *(v1 + 22);
  if (v10 <= 2)
  {
    goto LABEL_20;
  }

LABEL_18:
  v11 = "Unknown";
LABEL_21:
  v12 = *(v1 + 32);
  v13 = sar::toString();
  v14 = *(v1 + 33);
  v15 = sar::toString();
  v16 = *(v1 + 30);
  v17 = capabilities::txpower::operator&();
  v20 = 136316162;
  v18 = "YES";
  v21 = v9;
  v22 = 2080;
  if (!v17)
  {
    v18 = "NO";
  }

  v23 = v11;
  v24 = 2080;
  v25 = v13;
  v26 = 2080;
  v27 = v15;
  v28 = 2080;
  v29 = v18;
  _os_log_impl(&dword_296FF7000, v3, OS_LOG_TYPE_DEFAULT, "#I Audio Output: %s, Motion Status: %s. Notifying OBD State: %s, Tuner State: %s, Motion Status as an input: %s", &v20, 0x34u);
  v19 = *MEMORY[0x29EDCA608];
}

void **std::vector<dispatch::callback<void({block_pointer})(sar::OBDState,sar::TunerState)>>::~vector[abi:ne200100](void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 1);
        if (v5)
        {
          dispatch_release(v5);
        }

        v7 = *(v3 - 2);
        v3 -= 16;
        v6 = v7;
        if (v7)
        {
          _Block_release(v6);
        }
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t dispatch::callback<void({block_pointer})(CMOnBodyDelegate::CMOnBodyResult,CMOnBodyDelegate::CMOnBodyResultConfidence)>::~callback(uint64_t a1)
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

char *std::vector<dispatch::callback<void({block_pointer})(sar::OBDState,sar::TunerState)>>::__emplace_back_slow_path<dispatch::callback<void({block_pointer})(sar::OBDState,sar::TunerState)> const&>(unint64_t *a1, uint64_t a2)
{
  v2 = a1[1] - *a1;
  v3 = v2 >> 4;
  v4 = (v2 >> 4) + 1;
  if (v4 >> 60)
  {
    std::vector<std::shared_ptr<Service>>::__throw_length_error[abi:ne200100]();
  }

  v7 = a1[2] - *a1;
  if (v7 >> 3 > v4)
  {
    v4 = v7 >> 3;
  }

  if (v7 >= 0x7FFFFFFFFFFFFFF0)
  {
    v8 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = v4;
  }

  if (!v8)
  {
    v9 = 0;
    v10 = *a2;
    if (!*a2)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (v8 >> 60)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v9 = operator new(16 * v8);
  v10 = *a2;
  if (*a2)
  {
LABEL_12:
    v10 = _Block_copy(v10);
  }

LABEL_13:
  v11 = *(a2 + 8);
  v12 = &v9[16 * v3];
  *v12 = v10;
  *(v12 + 1) = v11;
  if (v11)
  {
    dispatch_retain(v11);
  }

  v13 = *a1;
  v14 = a1[1];
  v15 = &v12[-(v14 - *a1)];
  v16 = v14 - *a1;
  if (v14 != *a1)
  {
    v17 = v16 - 16;
    v18 = *a1;
    v19 = &v12[-(v14 - *a1)];
    if ((v16 - 16) < 0x110)
    {
      goto LABEL_48;
    }

    v20 = &v9[v2 + (v17 & 0xFFFFFFFFFFFFFFF0) - v16];
    v21 = v20 + 8;
    v22 = v13 + (v17 & 0xFFFFFFFFFFFFFFF0);
    v23 = (v20 + 16);
    v24 = &v9[v2 - v16 + 8] >= v22 + 16 || v13 + 8 >= v23;
    v25 = !v24;
    v26 = v13 >= v21 || v15 >= v22 + 8;
    v18 = *a1;
    v19 = &v12[-(v14 - *a1)];
    if (!v26)
    {
      goto LABEL_48;
    }

    v18 = *a1;
    v19 = &v12[-(v14 - *a1)];
    if (v25)
    {
      goto LABEL_48;
    }

    v27 = v16 >> 4;
    v28 = (v17 >> 4) + 1;
    v29 = 16 * (v28 & 0x1FFFFFFFFFFFFFFCLL);
    v18 = v13 + v29;
    v19 = (v15 + v29);
    v30 = &v9[16 * v3 + 32 + -16 * v27];
    v31 = (v13 + 32);
    v32 = v28 & 0x1FFFFFFFFFFFFFFCLL;
    do
    {
      v33 = *(v31 - 1);
      v34 = *v31;
      v35 = v31[1];
      *(v30 - 2) = *(v31 - 2);
      *(v30 - 1) = v33;
      *v30 = v34;
      *(v30 + 1) = v35;
      v30 += 64;
      *(v31 - 2) = 0uLL;
      *(v31 - 1) = 0uLL;
      *v31 = 0uLL;
      v31[1] = 0uLL;
      v31 += 4;
      v32 -= 4;
    }

    while (v32);
    if (v28 != (v28 & 0x1FFFFFFFFFFFFFFCLL))
    {
LABEL_48:
      do
      {
        *v19 = *v18;
        v19 += 16;
        *v18 = 0;
        *(v18 + 8) = 0;
        v18 += 16;
      }

      while (v18 != v14);
    }

    do
    {
      v36 = *(v13 + 8);
      if (v36)
      {
        dispatch_release(v36);
      }

      if (*v13)
      {
        _Block_release(*v13);
      }

      v13 += 16;
    }

    while (v13 != v14);
    v13 = *a1;
  }

  *a1 = v15;
  a1[1] = (v12 + 16);
  a1[2] = &v9[16 * v8];
  if (v13)
  {
    operator delete(v13);
  }

  return v12 + 16;
}

void std::__shared_ptr_pointer<OBDManager *,std::shared_ptr<OBDManager>::__shared_ptr_default_delete<OBDManager,OBDManager>,std::allocator<OBDManager>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<OBDManager *,std::shared_ptr<OBDManager>::__shared_ptr_default_delete<OBDManager,OBDManager>,std::allocator<OBDManager>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    OBDManager::~OBDManager(v1);

    operator delete(v2);
  }
}

uint64_t std::__shared_ptr_pointer<OBDManager *,std::shared_ptr<OBDManager>::__shared_ptr_default_delete<OBDManager,OBDManager>,std::allocator<OBDManager>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x8000000297228C3BLL)
  {
    if (((v2 & 0x8000000297228C3BLL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x8000000297228C3BLL))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x8000000297228C3BLL & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

OBDManager **std::unique_ptr<OBDManager>::~unique_ptr[abi:ne200100](OBDManager **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    OBDManager::~OBDManager(v2);
    operator delete(v4);
    return v3;
  }

  return v1;
}

void *__copy_helper_block_e8_32c74_ZTSN8dispatch5blockIU13block_pointerFvN3sar8OBDStateENS1_10TunerStateEEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 32) = result;
  return result;
}

void __destroy_helper_block_e8_32c74_ZTSN8dispatch5blockIU13block_pointerFvN3sar8OBDStateENS1_10TunerStateEEEE(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    _Block_release(v1);
  }
}

uint64_t abb::router::MipcTransport::MipcTransport(uint64_t result)
{
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = &unk_2A1E28130;
  *(result + 136) = 0;
  *(result + 144) = 0;
  *(result + 152) = 256;
  return result;
}

{
  *(result + 8) = 0;
  *(result + 16) = 0;
  *result = &unk_2A1E28130;
  *(result + 136) = 0;
  *(result + 144) = 0;
  *(result + 152) = 256;
  return result;
}

uint64_t abb::router::MipcTransport::open(uint64_t a1, uint64_t a2, NSObject **a3)
{
  v30[3] = *MEMORY[0x29EDCA608];
  v4 = *(a2 + 24);
  if (!v4 || !*a3)
  {
    v6 = 0;
    goto LABEL_40;
  }

  if (v4 == a2)
  {
    *(&v26 + 1) = &v25;
    (*(*v4 + 24))(v4, &v25);
  }

  else
  {
    *(&v26 + 1) = (*(*v4 + 16))(v4);
  }

  v7 = (a1 + 112);
  if ((a1 + 112) == &v25)
  {
    goto LABEL_16;
  }

  v8 = *(&v26 + 1);
  v9 = *(a1 + 136);
  if (*(&v26 + 1) != &v25)
  {
    if (v9 != v7)
    {
      *(&v26 + 1) = *(a1 + 136);
      *(a1 + 136) = v8;
      v10 = v9;
      if (v9 == &v25)
      {
        goto LABEL_42;
      }

      goto LABEL_17;
    }

    (*(*v9 + 24))(*(a1 + 136), &v25);
    (*(**(a1 + 136) + 32))(*(a1 + 136));
    *(a1 + 136) = *(&v26 + 1);
    *(&v26 + 1) = &v25;
LABEL_16:
    v10 = *(&v26 + 1);
    if (*(&v26 + 1) == &v25)
    {
      goto LABEL_42;
    }

    goto LABEL_17;
  }

  if (v9 == v7)
  {
    memset(v30, 170, 24);
    (*(**(&v26 + 1) + 24))();
    (*(**(&v26 + 1) + 32))(*(&v26 + 1));
    *(&v26 + 1) = 0;
    (*(**(a1 + 136) + 24))(*(a1 + 136), &v25);
    (*(**(a1 + 136) + 32))(*(a1 + 136));
    *(a1 + 136) = 0;
    *(&v26 + 1) = &v25;
    (*(v30[0] + 24))(v30, a1 + 112);
    (*(v30[0] + 32))(v30);
    *(a1 + 136) = v7;
    v10 = *(&v26 + 1);
    if (*(&v26 + 1) == &v25)
    {
      goto LABEL_42;
    }
  }

  else
  {
    (*(**(&v26 + 1) + 24))();
    (*(**(&v26 + 1) + 32))(*(&v26 + 1));
    *(&v26 + 1) = *(a1 + 136);
    v11 = *(&v26 + 1);
    *(a1 + 136) = v7;
    v10 = v11;
    if (v11 == &v25)
    {
LABEL_42:
      (*(*v10 + 32))(v10);
      v12 = *a3;
      if (!v12)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }
  }

LABEL_17:
  if (v10)
  {
    (*(*v10 + 40))(v10);
  }

  v12 = *a3;
  if (!v12)
  {
    goto LABEL_21;
  }

LABEL_20:
  dispatch_retain(v12);
LABEL_21:
  v13 = *(a1 + 144);
  *(a1 + 144) = v12;
  if (v13)
  {
    dispatch_release(v13);
  }

  v29 = 0xAAAAAAAAAAAAAAAALL;
  *&v14 = 0xAAAAAAAAAAAAAAAALL;
  *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v28[0] = v14;
  v28[1] = v14;
  v27 = v14;
  v25 = v14;
  v26 = v14;
  inited = TelephonyBasebandPCITransportInitParameters();
  *(&v25 + 1) = *(a1 + 144);
  *(v28 + 8) = 0u;
  *(&v27 + 4) = 0xF0000000003FLL;
  if (*(a1 + 153))
  {
    v16 = 31;
  }

  else
  {
    v16 = 30;
  }

  LODWORD(v25) = v16;
  *(&v26 + 1) = 0x200001B58;
  LODWORD(v29) = 25;
  LODWORD(v27) = v27 | 5;
  v18 = *(a1 + 8);
  v17 = *(a1 + 16);
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v23[0] = MEMORY[0x29EDCA5F8];
  v23[1] = 1174405120;
  v23[2] = ___ZN3abb6router13MipcTransport4openENSt3__18functionIFvPKhmEEEN8dispatch5queueE_block_invoke;
  v23[3] = &__block_descriptor_tmp_30;
  v23[4] = v18;
  v24 = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  *&v26 = v23;
  if (capabilities::pci::supportsRxIOPool(inited))
  {
    LODWORD(v27) = v27 | 8;
    HIDWORD(v27) = 2 * DWORD1(v27);
  }

  v21[0] = MEMORY[0x29EDCA5F8];
  v21[1] = 1174405120;
  v21[2] = ___ZN3abb6router13MipcTransport4openENSt3__18functionIFvPKhmEEEN8dispatch5queueE_block_invoke_1;
  v21[3] = &__block_descriptor_tmp_3_1;
  v21[4] = a1;
  v21[5] = v18;
  v22 = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  *(a1 + 24) = 0u;
  *&v28[0] = v21;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0;
  v6 = TelephonyBasebandPCITransportCreate();
  *(a1 + 152) = v6;
  if (v22)
  {
    std::__shared_weak_count::__release_weak(v22);
  }

  if (v24)
  {
    std::__shared_weak_count::__release_weak(v24);
  }

  if (v17)
  {
    std::__shared_weak_count::__release_weak(v17);
  }

LABEL_40:
  v19 = *MEMORY[0x29EDCA608];
  return v6;
}

void sub_2970BC7CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN3abb6router13MipcTransport4openENSt3__18functionIFvPKhmEEEN8dispatch5queueE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = std::__shared_weak_count::lock(v1);
    if (v2)
    {
      if (!atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v3 = v2;
        (v2->__on_zero_shared)();

        std::__shared_weak_count::__release_weak(v3);
      }
    }
  }
}

uint64_t __copy_helper_block_e8_32c46_ZTSNSt3__18weak_ptrIN3abb6router9TransportEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c46_ZTSNSt3__18weak_ptrIN3abb6router9TransportEEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZN3abb6router13MipcTransport4openENSt3__18functionIFvPKhmEEEN8dispatch5queueE_block_invoke_1(std::__shared_weak_count *a1, int a2, void *a3, unsigned int a4)
{
  if (a3)
  {
    shared_owners = a1[1].__shared_owners_;
    if (a1[2].__vftable)
    {
      v6 = a1;
      a1 = std::__shared_weak_count::lock(a1[2].__vftable);
      v9 = a1;
      if (a1)
      {
        shared_weak_owners = v6[1].__shared_weak_owners_;
        if (!a2)
        {
          if (v6[1].__shared_weak_owners_)
          {
            v13 = a4;
            v14 = a3;
            v10 = *(shared_owners + 136);
            if (!v10)
            {
              std::__throw_bad_function_call[abi:ne200100]();
            }

            v11 = (*(*v10 + 48))(v10, &v14, &v13);
            if ((capabilities::pci::supportsRxIOPool(v11) & 1) == 0)
            {
              free(a3);
            }

LABEL_13:
            if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v9->__on_zero_shared)(v9);
              std::__shared_weak_count::__release_weak(v9);
            }

            return;
          }
        }
      }
    }

    else
    {
      v9 = 0;
    }

    if ((capabilities::pci::supportsRxIOPool(a1) & 1) == 0)
    {
      free(a3);
    }

    if (v9)
    {
      goto LABEL_13;
    }
  }
}

uint64_t __copy_helper_block_e8_40c46_ZTSNSt3__18weak_ptrIN3abb6router9TransportEEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c46_ZTSNSt3__18weak_ptrIN3abb6router9TransportEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t abb::router::MipcTransport::close(abb::router::MipcTransport *this)
{
  v2 = *(this + 10);
  if (v2 && v2(this + 24))
  {
    v3 = *(this + 5);
    if (v3)
    {
      v3(this + 24);
    }

    TelephonyUtilTransportFree();
  }

  *(this + 13) = 0;
  *(this + 88) = 0u;
  *(this + 72) = 0u;
  *(this + 56) = 0u;
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 152) = 0;
  return 1;
}

uint64_t abb::router::MipcTransport::write(abb::router::MipcTransport *this, const unsigned __int8 *a2, uint64_t a3, unint64_t *a4)
{
  result = 0;
  if (a2 && a3)
  {
    if (*(this + 152) != 1)
    {
      return 0;
    }

    v6 = *(this + 10);
    if (!v6)
    {
      return 0;
    }

    result = v6(this + 24);
    if (!result)
    {
      return result;
    }

    v11 = 0;
    v10 = *(this + 3);
    if (!v10)
    {
      return 0;
    }

    result = v10(this + 24, a2, a3, &v11, 1, 10000, 0);
    if (a4)
    {
      if (result)
      {
        *a4 = v11;
        return 1;
      }
    }
  }

  return result;
}

uint64_t abb::router::MipcTransport::isReady(abb::router::MipcTransport *this)
{
  if (*(this + 152) == 1 && (v1 = *(this + 10)) != 0)
  {
    return v1(this + 24);
  }

  else
  {
    return 0;
  }
}

void abb::router::MipcTransport::~MipcTransport(abb::router::MipcTransport *this)
{
  *this = &unk_2A1E28130;
  v2 = *(this + 18);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(this + 17);
  if (v3 == (this + 112))
  {
    (*(*v3 + 32))(v3);
    v4 = *(this + 2);
    if (!v4)
    {
      return;
    }

    goto LABEL_7;
  }

  if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  v4 = *(this + 2);
  if (v4)
  {
LABEL_7:
    std::__shared_weak_count::__release_weak(v4);
  }
}

{
  *this = &unk_2A1E28130;
  v2 = *(this + 18);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(this + 17);
  if (v3 == (this + 112))
  {
    (*(*v3 + 32))(v3);
    v4 = *(this + 2);
    if (v4)
    {
LABEL_7:
      std::__shared_weak_count::__release_weak(v4);
    }
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = *(this + 2);
    if (v4)
    {
      goto LABEL_7;
    }
  }

  operator delete(this);
}

void sub_2970BD2AC(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::function<void ()(BOOL,BOOL,char const*)>::~function(uint64_t a1)
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

uint64_t VoIPCallDelegate::create@<X0>(capabilities::abs *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  capabilities::abs::supportedSARFeatures(a1);
  result = capabilities::abs::operator&();
  if (result)
  {
    *a3 = 0xAAAAAAAAAAAAAAAALL;
    a3[1] = 0xAAAAAAAAAAAAAAAALL;
    v7 = operator new(0x28uLL);
    *(v7 + 1) = 0;
    *(v7 + 2) = 0;
    *v7 = &unk_2A1E28298;
    result = std::construct_at[abi:ne200100]<VoIPCallDelegate,dispatch::queue &,std::function<void ()(BOOL,BOOL,char const*)> &,VoIPCallDelegate*>(v7 + 3, a1, a2);
    *a3 = v7 + 24;
    a3[1] = v7;
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
  }

  return result;
}

void sub_2970BD928(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void ***VoIPCallDelegate::VoIPCallDelegate(void ***a1, dispatch_object_t *a2, uint64_t a3)
{
  v23 = *MEMORY[0x29EDCA608];
  v5 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
  }

  v6 = *(a3 + 24);
  if (!v6)
  {
    goto LABEL_6;
  }

  if (v6 != a3)
  {
    v6 = (*(*v6 + 16))(v6);
LABEL_6:
    v18 = v6;
    goto LABEL_8;
  }

  v18 = v17;
  (*(*v6 + 24))(v6, v17);
LABEL_8:
  *a1 = 0;
  a1[1] = 0;
  v7 = operator new(8uLL);
  if (v5)
  {
    dispatch_retain(v5);
  }

  v8 = v18;
  if (!v18)
  {
    goto LABEL_13;
  }

  if (v18 != v17)
  {
    v8 = (*(*v18 + 16))();
LABEL_13:
    v20 = v8;
    goto LABEL_15;
  }

  v20 = v19;
  (*(*v18 + 24))();
LABEL_15:
  *v7 = 0;
  v9 = [VoIPCallObserverImpl alloc];
  v10 = v20;
  if (!v20)
  {
LABEL_18:
    v22 = v10;
    goto LABEL_20;
  }

  v11 = v9;
  if (v20 != v19)
  {
    v10 = (*(*v20 + 16))();
    v9 = v11;
    goto LABEL_18;
  }

  v22 = v21;
  (*(*v20 + 24))();
  v9 = v11;
LABEL_20:
  v12 = [(VoIPCallObserverImpl *)v9 initWithCallback:v21 queue:v5];
  v13 = *v7;
  *v7 = v12;

  if (v22 == v21)
  {
    (*(*v22 + 32))(v22);
  }

  else if (v22)
  {
    (*(*v22 + 40))();
  }

  v21[0] = v7;
  v14 = operator new(0x20uLL);
  *v14 = &unk_2A1E28248;
  v14[1] = 0;
  v14[2] = 0;
  v14[3] = v7;
  *a1 = v7;
  a1[1] = v14;
  if (v20 == v19)
  {
    (*(*v20 + 32))(v20);
    if (v5)
    {
LABEL_28:
      dispatch_release(v5);
    }
  }

  else
  {
    if (v20)
    {
      (*(*v20 + 40))();
    }

    if (v5)
    {
      goto LABEL_28;
    }
  }

  if (v18 == v17)
  {
    (*(*v18 + 32))(v18);
    if (!v5)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  if (v18)
  {
    (*(*v18 + 40))();
  }

  if (v5)
  {
LABEL_33:
    dispatch_release(v5);
  }

LABEL_34:
  v15 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_2970BDCD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  if (v18)
  {
    dispatch_release(v18);
  }

  operator delete(v20);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v19);
  std::function<void ()(BOOL,BOOL,char const*)>::~function(&a10);
  if (v18)
  {
    dispatch_release(v18);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void ___ZL16sGetOsLogContextv_block_invoke_2()
{
  ctu::OsLogContext::OsLogContext(v0, "com.apple.telephony.abm", "voip");
  ctu::OsLogContext::operator=();
  ctu::OsLogContext::~OsLogContext(v0);
}

void std::__shared_ptr_pointer<VoIPCallObserver *,std::shared_ptr<VoIPCallObserver>::__shared_ptr_default_delete<VoIPCallObserver,VoIPCallObserver>,std::allocator<VoIPCallObserver>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<VoIPCallObserver *,std::shared_ptr<VoIPCallObserver>::__shared_ptr_default_delete<VoIPCallObserver,VoIPCallObserver>,std::allocator<VoIPCallObserver>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {

    operator delete(v1);
  }
}

uint64_t std::__shared_ptr_pointer<VoIPCallObserver *,std::shared_ptr<VoIPCallObserver>::__shared_ptr_default_delete<VoIPCallObserver,VoIPCallObserver>,std::allocator<VoIPCallObserver>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x8000000297228D89)
  {
    if (((v2 & 0x8000000297228D89 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x8000000297228D89))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x8000000297228D89 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

id **std::unique_ptr<VoIPCallObserver>::~unique_ptr[abi:ne200100](id **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;

    operator delete(v1);
    return v2;
  }

  return result;
}

void std::__shared_ptr_emplace<VoIPCallDelegate>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E28298;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<VoIPCallDelegate>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void ***std::construct_at[abi:ne200100]<VoIPCallDelegate,dispatch::queue &,std::function<void ()(BOOL,BOOL,char const*)> &,VoIPCallDelegate*>(void ***a1, NSObject **a2, uint64_t a3)
{
  v12 = *MEMORY[0x29EDCA608];
  v5 = *a2;
  v9 = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  v6 = *(a3 + 24);
  if (!v6)
  {
    goto LABEL_6;
  }

  if (v6 != a3)
  {
    v6 = (*(*v6 + 16))(v6);
LABEL_6:
    v11 = v6;
    goto LABEL_8;
  }

  v11 = v10;
  (*(*v6 + 24))(v6, v10);
LABEL_8:
  VoIPCallDelegate::VoIPCallDelegate(a1, &v9, v10);
  if (v11 == v10)
  {
    (*(*v11 + 32))(v11);
    if (!v5)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (v11)
  {
    (*(*v11 + 40))(v11);
  }

  if (v5)
  {
LABEL_12:
    dispatch_release(v5);
  }

LABEL_13:
  v7 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_2970BE134(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (v10)
  {
    dispatch_release(v10);
  }

  _Unwind_Resume(exception_object);
}

void sys::getCurrentBootSessionUUID(_BYTE *a1@<X8>)
{
  v17 = *MEMORY[0x29EDCA608];
  *&v16[13] = 0xAAAAAAAAAAAAAAAALL;
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *__s = v3;
  *v16 = v3;
  v12 = 37;
  if (!sysctlbyname("kern.bootsessionuuid", __s, &v12, 0, 0) && v12 == 37)
  {
    v4 = strlen(__s);
    if (v4 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v5 = v4;
    if (v4 >= 0x17)
    {
      if ((v4 | 7) == 0x17)
      {
        v7 = 25;
      }

      else
      {
        v7 = (v4 | 7) + 1;
      }

      v8 = operator new(v7);
      *(a1 + 1) = v5;
      *(a1 + 2) = v7 | 0x8000000000000000;
      *a1 = v8;
      a1 = v8;
    }

    else
    {
      a1[23] = v4;
      if (!v4)
      {
        goto LABEL_16;
      }
    }

    memcpy(a1, __s, v5);
LABEL_16:
    a1 += v5;
    goto LABEL_17;
  }

  {
    GetOsLogContext(void)::sOsLogContext = 0;
    qword_2A18B7680 = 0;
  }

  if (GetOsLogContext(void)::onceToken != -1)
  {
    dispatch_once(&GetOsLogContext(void)::onceToken, &__block_literal_global_16);
    v6 = qword_2A18B7680;
    if (!os_log_type_enabled(qword_2A18B7680, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

LABEL_19:
    v10 = __error();
    v11 = strerror(*v10);
    *buf = 136315138;
    v14 = v11;
    _os_log_error_impl(&dword_296FF7000, v6, OS_LOG_TYPE_ERROR, "Failed to get boot session uuid, error: %s", buf, 0xCu);
    goto LABEL_10;
  }

  v6 = qword_2A18B7680;
  if (os_log_type_enabled(qword_2A18B7680, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_19;
  }

LABEL_10:
  a1[23] = 0;
LABEL_17:
  *a1 = 0;
  v9 = *MEMORY[0x29EDCA608];
}

uint64_t sys::updateBootSessionUUID(sys *this)
{
  memset(&v19, 170, sizeof(v19));
  sys::getCurrentBootSessionUUID(&v19);
  pthread_mutex_lock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  v1 = off_2A18B75C0;
  if (!off_2A18B75C0)
  {
    SharedData::create_default_global(&v21);
    v2 = *&v21.__r_.__value_.__l.__data_;
    *&v21.__r_.__value_.__l.__data_ = 0uLL;
    v3 = *(&off_2A18B75C0 + 1);
    off_2A18B75C0 = v2;
    if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
    }

    size = v21.__r_.__value_.__l.__size_;
    if (v21.__r_.__value_.__l.__size_ && !atomic_fetch_add((v21.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (size->__on_zero_shared)(size);
      std::__shared_weak_count::__release_weak(size);
    }

    v1 = off_2A18B75C0;
  }

  v17 = v1;
  v18 = *(&off_2A18B75C0 + 1);
  if (*(&off_2A18B75C0 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18B75C0 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  v5 = *MEMORY[0x29EDBE8F8];
  v6 = strlen(*MEMORY[0x29EDBE8F8]);
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
    v16 = v9 | 0x8000000000000000;
    __dst[0] = v8;
LABEL_20:
    memmove(v8, v5, v7);
    *(v7 + v8) = 0;
    if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_21;
  }

  HIBYTE(v16) = v6;
  v8 = __dst;
  if (v6)
  {
    goto LABEL_20;
  }

  LOBYTE(__dst[0]) = 0;
  if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_15:
    __p = v19;
    goto LABEL_22;
  }

LABEL_21:
  std::string::__init_copy_ctor_external(&__p, v19.__r_.__value_.__l.__data_, v19.__r_.__value_.__l.__size_);
LABEL_22:
  os_unfair_lock_lock(v1 + 10);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v20, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v20 = __p;
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v21, v20.__r_.__value_.__l.__data_, v20.__r_.__value_.__l.__size_);
  }

  else
  {
    v21 = v20;
  }

  if (v16 >= 0)
  {
    v10 = __dst;
  }

  else
  {
    v10 = __dst[0];
  }

  v11 = ctu::cf::plist_adapter::set<std::string>(v1, &v21, v10);
  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_33:
      os_unfair_lock_unlock(v1 + 10);
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_34;
      }

      goto LABEL_39;
    }
  }

  else if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_33;
  }

  operator delete(v20.__r_.__value_.__l.__data_);
  os_unfair_lock_unlock(v1 + 10);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_34:
    if ((SHIBYTE(v16) & 0x80000000) == 0)
    {
      goto LABEL_35;
    }

    goto LABEL_40;
  }

LABEL_39:
  operator delete(__p.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v16) & 0x80000000) == 0)
  {
LABEL_35:
    v12 = v18;
    if (!v18)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

LABEL_40:
  operator delete(__dst[0]);
  v12 = v18;
  if (!v18)
  {
    goto LABEL_42;
  }

LABEL_41:
  if (!atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
    if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return v11;
    }

    goto LABEL_43;
  }

LABEL_42:
  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_43:
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  return v11;
}

void sub_2970BE688(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  __clang_call_terminate(a1);
}

BOOL sys::isBootSessionChanged(sys *this)
{
  memset(v28, 170, sizeof(v28));
  sys::getCurrentBootSessionUUID(v28);
  v25 = 0;
  v26 = 0;
  v27 = 0;
  pthread_mutex_lock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  v1 = off_2A18B75C0;
  if (!off_2A18B75C0)
  {
    SharedData::create_default_global(__p);
    v2 = *__p;
    __p[0] = 0;
    __p[1] = 0;
    v3 = *(&off_2A18B75C0 + 1);
    off_2A18B75C0 = v2;
    if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
    }

    v4 = __p[1];
    if (__p[1] && !atomic_fetch_add(__p[1] + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    v1 = off_2A18B75C0;
  }

  v23 = v1;
  v24 = *(&off_2A18B75C0 + 1);
  if (*(&off_2A18B75C0 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18B75C0 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  v5 = *MEMORY[0x29EDBE8F8];
  v6 = strlen(*MEMORY[0x29EDBE8F8]);
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
    __p[1] = v7;
    v22 = v9 | 0x8000000000000000;
    __p[0] = v8;
    goto LABEL_19;
  }

  HIBYTE(v22) = v6;
  v8 = __p;
  if (v6)
  {
LABEL_19:
    memmove(v8, v5, v7);
  }

  *(v7 + v8) = 0;
  os_unfair_lock_lock((v1 + 40));
  if (v22 >= 0)
  {
    v10 = __p;
  }

  else
  {
    v10 = __p[0];
  }

  ctu::cf::MakeCFString::MakeCFString(&v29, v10);
  v11 = (**v1)(v1, v29);
  if (v11)
  {
    ctu::cf::assign();
    CFRelease(v11);
  }

  MEMORY[0x29C26B130](&v29);
  os_unfair_lock_unlock((v1 + 40));
  if (SHIBYTE(v22) < 0)
  {
    operator delete(__p[0]);
  }

  v12 = v24;
  if (v24 && !atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  v13 = SHIBYTE(v28[2]);
  if (SHIBYTE(v28[2]) >= 0)
  {
    v14 = HIBYTE(v28[2]);
  }

  else
  {
    v14 = v28[1];
  }

  v15 = HIBYTE(v27);
  v16 = SHIBYTE(v27);
  if (v27 < 0)
  {
    v15 = v26;
  }

  if (v14 == v15)
  {
    if (SHIBYTE(v28[2]) >= 0)
    {
      v17 = v28;
    }

    else
    {
      v17 = v28[0];
    }

    if (v27 >= 0)
    {
      v18 = &v25;
    }

    else
    {
      v18 = v25;
    }

    v19 = memcmp(v17, v18, v14) != 0;
    if ((v16 & 0x80000000) == 0)
    {
      goto LABEL_46;
    }
  }

  else
  {
    v19 = 1;
    if ((SHIBYTE(v27) & 0x80000000) == 0)
    {
      goto LABEL_46;
    }
  }

  operator delete(v25);
LABEL_46:
  if (v13 < 0)
  {
    operator delete(v28[0]);
  }

  return v19;
}

void sub_2970BEA2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

BOOL sys::isHardwareModelChanged(sys *this)
{
  v35 = 0;
  pthread_mutex_lock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  v1 = off_2A18B75C0;
  if (!off_2A18B75C0)
  {
    SharedData::create_default_global(__dst);
    v2 = __dst[0];
    __dst[0] = 0uLL;
    v3 = *(&off_2A18B75C0 + 1);
    off_2A18B75C0 = v2;
    if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
    }

    v4 = *(&__dst[0] + 1);
    if (*(&__dst[0] + 1) && !atomic_fetch_add((*(&__dst[0] + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    v1 = off_2A18B75C0;
  }

  __p = v1;
  v30 = *(&off_2A18B75C0 + 1);
  if (*(&off_2A18B75C0 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18B75C0 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  v5 = *MEMORY[0x29EDBEA50];
  v6 = strlen(*MEMORY[0x29EDBEA50]);
  if (v6 > 0x7FFFFFFFFFFFFFF7)
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
    *(&__dst[0] + 1) = v7;
    *&__dst[1] = v9 | 0x8000000000000000;
    *&__dst[0] = v8;
    goto LABEL_19;
  }

  BYTE7(__dst[1]) = v6;
  v8 = __dst;
  if (v6)
  {
LABEL_19:
    memmove(v8, v5, v7);
  }

  *(v8 + v7) = 0;
  os_unfair_lock_lock(v1 + 10);
  Preferences::getPreference<__CFDictionary const*>(v1, __dst, &v35);
  os_unfair_lock_unlock(v1 + 10);
  if (SBYTE7(__dst[1]) < 0)
  {
    operator delete(*&__dst[0]);
  }

  if (v30 && !atomic_fetch_add(&v30->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v30->__on_zero_shared)(v30);
    std::__shared_weak_count::__release_weak(v30);
    v10 = v35;
    if (!v35)
    {
      return 0;
    }
  }

  else
  {
    v10 = v35;
    if (!v35)
    {
      return 0;
    }
  }

  v11 = CFGetTypeID(v10);
  if (v11 != CFDictionaryGetTypeID())
  {
    return 0;
  }

  v12 = v35;
  cf = v35;
  if (v35)
  {
    CFRetain(v35);
  }

  v32[0] = 0xAAAAAAAAAAAAAAAALL;
  v32[1] = 0xAAAAAAAAAAAAAAAALL;
  ctu::cf::dict_adapter::dict_adapter(v32, v12);
  memset(__dst, 170, 24);
  v13 = *MEMORY[0x29EDBF8A8];
  v14 = strlen(*MEMORY[0x29EDBF8A8]);
  if (v14 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v15 = v14;
  if (v14 >= 0x17)
  {
    if ((v14 | 7) == 0x17)
    {
      v18 = 25;
    }

    else
    {
      v18 = (v14 | 7) + 1;
    }

    p_p = operator new(v18);
    v30 = v15;
    v31 = v18 | 0x8000000000000000;
    __p = p_p;
    goto LABEL_38;
  }

  HIBYTE(v31) = v14;
  p_p = &__p;
  if (v14)
  {
LABEL_38:
    memmove(p_p, v13, v15);
  }

  v19 = *MEMORY[0x29EDBE988];
  *(&v15->__vftable + p_p) = 0;
  ctu::cf::MakeCFString::MakeCFString(&v36, v19);
  ctu::cf::map_adapter::getString();
  v20 = MEMORY[0x29C26B130](&v36);
  if (SHIBYTE(v31) < 0)
  {
    operator delete(__p);
  }

  config::hw::product(v20);
  v21 = BYTE7(__dst[1]);
  if ((SBYTE7(__dst[1]) & 0x80u) == 0)
  {
    v22 = BYTE7(__dst[1]);
  }

  else
  {
    v22 = *(&__dst[0] + 1);
  }

  v23 = HIBYTE(v31);
  v24 = SHIBYTE(v31);
  if (v31 < 0)
  {
    v23 = v30;
  }

  if (v22 == v23)
  {
    if ((SBYTE7(__dst[1]) & 0x80u) == 0)
    {
      v25 = __dst;
    }

    else
    {
      v25 = *&__dst[0];
    }

    if (v31 >= 0)
    {
      v26 = &__p;
    }

    else
    {
      v26 = __p;
    }

    v17 = memcmp(v25, v26, v22) != 0;
    if ((v24 & 0x80000000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_56;
  }

  v17 = 1;
  if (SHIBYTE(v31) < 0)
  {
LABEL_56:
    operator delete(__p);
    v21 = BYTE7(__dst[1]);
  }

LABEL_57:
  if ((v21 & 0x80) == 0)
  {
    MEMORY[0x29C26B180](v32);
    v27 = cf;
    if (!cf)
    {
      return v17;
    }

    goto LABEL_61;
  }

  operator delete(*&__dst[0]);
  MEMORY[0x29C26B180](v32);
  v27 = cf;
  if (cf)
  {
LABEL_61:
    CFRelease(v27);
  }

  return v17;
}

void sub_2970BEE90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, const void *a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
    MEMORY[0x29C26B180](&a15);
    ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&a17);
    _Unwind_Resume(a1);
  }

  MEMORY[0x29C26B180](&a15);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&a17);
  _Unwind_Resume(a1);
}

BOOL sys::isFWVersionChanged(const void **a1)
{
  cf = 0;
  pthread_mutex_lock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  v2 = off_2A18B75C0;
  if (!off_2A18B75C0)
  {
    SharedData::create_default_global(__dst);
    v3 = __dst[0];
    __dst[0] = 0uLL;
    v4 = *(&off_2A18B75C0 + 1);
    off_2A18B75C0 = v3;
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    v5 = *(&__dst[0] + 1);
    if (*(&__dst[0] + 1) && !atomic_fetch_add((*(&__dst[0] + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    v2 = off_2A18B75C0;
  }

  __p = v2;
  v29 = *(&off_2A18B75C0 + 1);
  if (*(&off_2A18B75C0 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18B75C0 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  v6 = *MEMORY[0x29EDBEA50];
  v7 = strlen(*MEMORY[0x29EDBEA50]);
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

    v9 = operator new(v10);
    *(&__dst[0] + 1) = v8;
    *&__dst[1] = v10 | 0x8000000000000000;
    *&__dst[0] = v9;
    goto LABEL_19;
  }

  BYTE7(__dst[1]) = v7;
  v9 = __dst;
  if (v7)
  {
LABEL_19:
    memmove(v9, v6, v8);
  }

  *(v9 + v8) = 0;
  os_unfair_lock_lock(v2 + 10);
  Preferences::getPreference<__CFDictionary const*>(v2, __dst, &cf);
  os_unfair_lock_unlock(v2 + 10);
  if (SBYTE7(__dst[1]) < 0)
  {
    operator delete(*&__dst[0]);
  }

  if (v29 && !atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v29->__on_zero_shared)(v29);
    std::__shared_weak_count::__release_weak(v29);
    v11 = cf;
    if (!cf)
    {
      return 0;
    }
  }

  else
  {
    v11 = cf;
    if (!cf)
    {
      return 0;
    }
  }

  v12 = CFGetTypeID(v11);
  if (v12 != CFDictionaryGetTypeID())
  {
    return 0;
  }

  v13 = cf;
  v32 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  v31[0] = 0xAAAAAAAAAAAAAAAALL;
  v31[1] = 0xAAAAAAAAAAAAAAAALL;
  ctu::cf::dict_adapter::dict_adapter(v31, v13);
  memset(__dst, 170, 24);
  v14 = *MEMORY[0x29EDBF8A8];
  v15 = strlen(*MEMORY[0x29EDBF8A8]);
  if (v15 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v16 = v15;
  if (v15 >= 0x17)
  {
    if ((v15 | 7) == 0x17)
    {
      v19 = 25;
    }

    else
    {
      v19 = (v15 | 7) + 1;
    }

    p_p = operator new(v19);
    v29 = v16;
    v30 = v19 | 0x8000000000000000;
    __p = p_p;
    goto LABEL_38;
  }

  HIBYTE(v30) = v15;
  p_p = &__p;
  if (v15)
  {
LABEL_38:
    memmove(p_p, v14, v16);
  }

  v20 = *MEMORY[0x29EDBEC00];
  *(&v16->__vftable + p_p) = 0;
  ctu::cf::MakeCFString::MakeCFString(&v35, v20);
  ctu::cf::map_adapter::getString();
  MEMORY[0x29C26B130](&v35);
  if (SHIBYTE(v30) < 0)
  {
    operator delete(__p);
  }

  v21 = SBYTE7(__dst[1]);
  if ((SBYTE7(__dst[1]) & 0x80u) == 0)
  {
    v22 = BYTE7(__dst[1]);
  }

  else
  {
    v22 = *(&__dst[0] + 1);
  }

  v23 = *(a1 + 23);
  v24 = v23;
  if (v23 < 0)
  {
    v23 = a1[1];
  }

  if (v22 == v23)
  {
    if ((SBYTE7(__dst[1]) & 0x80u) == 0)
    {
      v25 = __dst;
    }

    else
    {
      v25 = *&__dst[0];
    }

    if (v24 >= 0)
    {
      v26 = a1;
    }

    else
    {
      v26 = *a1;
    }

    v18 = memcmp(v25, v26, v22) != 0;
    if ((v21 & 0x80000000) == 0)
    {
      goto LABEL_57;
    }
  }

  else
  {
    v18 = 1;
    if ((SBYTE7(__dst[1]) & 0x80000000) == 0)
    {
      goto LABEL_57;
    }
  }

  operator delete(*&__dst[0]);
LABEL_57:
  MEMORY[0x29C26B180](v31);
  if (v32)
  {
    CFRelease(v32);
  }

  return v18;
}

BOOL sys::isOSVersionChanged(sys *this)
{
  v35 = 0;
  pthread_mutex_lock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  v1 = off_2A18B75C0;
  if (!off_2A18B75C0)
  {
    SharedData::create_default_global(__dst);
    v2 = __dst[0];
    __dst[0] = 0uLL;
    v3 = *(&off_2A18B75C0 + 1);
    off_2A18B75C0 = v2;
    if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
    }

    v4 = *(&__dst[0] + 1);
    if (*(&__dst[0] + 1) && !atomic_fetch_add((*(&__dst[0] + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    v1 = off_2A18B75C0;
  }

  __p = v1;
  v30 = *(&off_2A18B75C0 + 1);
  if (*(&off_2A18B75C0 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18B75C0 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  v5 = *MEMORY[0x29EDBEA50];
  v6 = strlen(*MEMORY[0x29EDBEA50]);
  if (v6 > 0x7FFFFFFFFFFFFFF7)
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
    *(&__dst[0] + 1) = v7;
    *&__dst[1] = v9 | 0x8000000000000000;
    *&__dst[0] = v8;
    goto LABEL_19;
  }

  BYTE7(__dst[1]) = v6;
  v8 = __dst;
  if (v6)
  {
LABEL_19:
    memmove(v8, v5, v7);
  }

  *(v8 + v7) = 0;
  os_unfair_lock_lock(v1 + 10);
  Preferences::getPreference<__CFDictionary const*>(v1, __dst, &v35);
  os_unfair_lock_unlock(v1 + 10);
  if (SBYTE7(__dst[1]) < 0)
  {
    operator delete(*&__dst[0]);
  }

  if (v30 && !atomic_fetch_add(&v30->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v30->__on_zero_shared)(v30);
    std::__shared_weak_count::__release_weak(v30);
    v10 = v35;
    if (!v35)
    {
      return 0;
    }
  }

  else
  {
    v10 = v35;
    if (!v35)
    {
      return 0;
    }
  }

  v11 = CFGetTypeID(v10);
  if (v11 != CFDictionaryGetTypeID())
  {
    return 0;
  }

  v12 = v35;
  cf = v35;
  if (v35)
  {
    CFRetain(v35);
  }

  v32[0] = 0xAAAAAAAAAAAAAAAALL;
  v32[1] = 0xAAAAAAAAAAAAAAAALL;
  ctu::cf::dict_adapter::dict_adapter(v32, v12);
  memset(__dst, 170, 24);
  v13 = *MEMORY[0x29EDBF8A8];
  v14 = strlen(*MEMORY[0x29EDBF8A8]);
  if (v14 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v15 = v14;
  if (v14 >= 0x17)
  {
    if ((v14 | 7) == 0x17)
    {
      v18 = 25;
    }

    else
    {
      v18 = (v14 | 7) + 1;
    }

    p_p = operator new(v18);
    v30 = v15;
    v31 = v18 | 0x8000000000000000;
    __p = p_p;
    goto LABEL_38;
  }

  HIBYTE(v31) = v14;
  p_p = &__p;
  if (v14)
  {
LABEL_38:
    memmove(p_p, v13, v15);
  }

  v19 = *MEMORY[0x29EDBEC08];
  *(&v15->__vftable + p_p) = 0;
  ctu::cf::MakeCFString::MakeCFString(&v36, v19);
  ctu::cf::map_adapter::getString();
  v20 = MEMORY[0x29C26B130](&v36);
  if (SHIBYTE(v31) < 0)
  {
    operator delete(__p);
  }

  config::build::version(v20);
  v21 = BYTE7(__dst[1]);
  if ((SBYTE7(__dst[1]) & 0x80u) == 0)
  {
    v22 = BYTE7(__dst[1]);
  }

  else
  {
    v22 = *(&__dst[0] + 1);
  }

  v23 = HIBYTE(v31);
  v24 = SHIBYTE(v31);
  if (v31 < 0)
  {
    v23 = v30;
  }

  if (v22 == v23)
  {
    if ((SBYTE7(__dst[1]) & 0x80u) == 0)
    {
      v25 = __dst;
    }

    else
    {
      v25 = *&__dst[0];
    }

    if (v31 >= 0)
    {
      v26 = &__p;
    }

    else
    {
      v26 = __p;
    }

    v17 = memcmp(v25, v26, v22) != 0;
    if ((v24 & 0x80000000) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_56;
  }

  v17 = 1;
  if (SHIBYTE(v31) < 0)
  {
LABEL_56:
    operator delete(__p);
    v21 = BYTE7(__dst[1]);
  }

LABEL_57:
  if ((v21 & 0x80) == 0)
  {
    MEMORY[0x29C26B180](v32);
    v27 = cf;
    if (!cf)
    {
      return v17;
    }

    goto LABEL_61;
  }

  operator delete(*&__dst[0]);
  MEMORY[0x29C26B180](v32);
  v27 = cf;
  if (cf)
  {
LABEL_61:
    CFRelease(v27);
  }

  return v17;
}

void sub_2970BF7B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, const void *a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
    MEMORY[0x29C26B180](&a15);
    ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&a17);
    _Unwind_Resume(a1);
  }

  MEMORY[0x29C26B180](&a15);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&a17);
  _Unwind_Resume(a1);
}

uint64_t sys::getDeviceBootTime(sys *this)
{
  v6 = *MEMORY[0x29EDCA608];
  v4[0] = 0xAAAAAAAAAAAAAAAALL;
  v4[1] = 0xAAAAAAAAAAAAAAAALL;
  v3 = 16;
  *v5 = 0x1500000001;
  if (sysctl(v5, 2u, v4, &v3, 0, 0) >= 0)
  {
    result = v4[0];
  }

  else
  {
    result = 0;
  }

  v2 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t __cxx_global_var_init_7()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<SharedData>::~PthreadMutexGuardPolicy, &ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance, &dword_296FF7000);
  }

  return result;
}

{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ABMNetworkPolicy>::~PthreadMutexGuardPolicy, &ctu::Singleton<ABMNetworkPolicy,ABMNetworkPolicy,ctu::PthreadMutexGuardPolicy<ABMNetworkPolicy>>::sInstance, &dword_296FF7000);
  }

  return result;
}

void BootController::BootController(BootController *this)
{
  *this = &unk_2A1E282E8;
  ctu::OsLogLogger::OsLogLogger((this + 8), "com.apple.telephony", "boot.ctrl");
  *this = &unk_2A1E282E8;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 24) = 1;
  v2 = *MEMORY[0x29EDB8ED8];
  Controller = TelephonyBasebandCreateController();
  v4 = *(this + 2);
  *(this + 2) = Controller;
  if (v4)
  {
    CFRelease(v4);
  }
}

void sub_2970BFA10(_Unwind_Exception *a1)
{
  v4 = v3;
  v6 = *v4;
  if (*v4)
  {
    *(v1 + 40) = v6;
    operator delete(v6);
  }

  ctu::cf::CFSharedRef<__TelephonyBasebandControllerHandle_tag>::~CFSharedRef(v2);
  MEMORY[0x29C26B020](v1 + 8);
  _Unwind_Resume(a1);
}

uint64_t BootController::resetModem(BootController *this)
{
  v2 = _os_activity_create(&dword_296FF7000, "Reset baseband", MEMORY[0x29EDCA978], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v2, &state);
  os_activity_scope_leave(&state);
  v3 = *(this + 1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(state.opaque[0]) = 0;
    _os_log_impl(&dword_296FF7000, v3, OS_LOG_TYPE_DEFAULT, "#I Reset baseband", &state, 2u);
  }

  v4 = *(this + 2);
  v5 = TelephonyBasebandResetModem();
  if ((v5 & 1) == 0)
  {
    v6 = *(this + 1);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      LOWORD(state.opaque[0]) = 0;
      _os_log_error_impl(&dword_296FF7000, v6, OS_LOG_TYPE_ERROR, "Failed Resetting Modem", &state, 2u);
      if (!v2)
      {
        return v5;
      }

      goto LABEL_6;
    }
  }

  if (v2)
  {
LABEL_6:
    os_release(v2);
  }

  return v5;
}

void sub_2970BFB68(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::os::scoped_activity::~scoped_activity(va);
  _Unwind_Resume(a1);
}

uint64_t BootController::powerCycleModem(BootController *this)
{
  v2 = _os_activity_create(&dword_296FF7000, "Powercycle baseband", MEMORY[0x29EDCA978], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v2, &state);
  os_activity_scope_leave(&state);
  v3 = *(this + 1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(state.opaque[0]) = 0;
    _os_log_impl(&dword_296FF7000, v3, OS_LOG_TYPE_DEFAULT, "#I Powercycle baseband", &state, 2u);
  }

  v4 = *(this + 2);
  v5 = TelephonyBasebandPowercycleModem();
  if ((v5 & 1) == 0)
  {
    v6 = *(this + 1);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      LOWORD(state.opaque[0]) = 0;
      _os_log_error_impl(&dword_296FF7000, v6, OS_LOG_TYPE_ERROR, "Failed to powercycle baseband", &state, 2u);
      if (!v2)
      {
        return v5;
      }

      goto LABEL_6;
    }
  }

  if (v2)
  {
LABEL_6:
    os_release(v2);
  }

  return v5;
}

void sub_2970BFC90(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::os::scoped_activity::~scoped_activity(va);
  _Unwind_Resume(a1);
}

uint64_t BootController::powerOffModem(BootController *this)
{
  v2 = _os_activity_create(&dword_296FF7000, "Poweroff baseband", MEMORY[0x29EDCA978], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v2, &state);
  os_activity_scope_leave(&state);
  v3 = *(this + 1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(state.opaque[0]) = 0;
    _os_log_impl(&dword_296FF7000, v3, OS_LOG_TYPE_DEFAULT, "#I Poweroff baseband", &state, 2u);
  }

  v4 = *(this + 2);
  v5 = TelephonyBasebandPowerOnModem();
  if ((v5 & 1) == 0)
  {
    v6 = *(this + 1);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      LOWORD(state.opaque[0]) = 0;
      _os_log_error_impl(&dword_296FF7000, v6, OS_LOG_TYPE_ERROR, "Failed to poweroff baseband", &state, 2u);
      if (!v2)
      {
        return v5;
      }

      goto LABEL_6;
    }
  }

  if (v2)
  {
LABEL_6:
    os_release(v2);
  }

  return v5;
}

void sub_2970BFDBC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::os::scoped_activity::~scoped_activity(va);
  _Unwind_Resume(a1);
}

void BootController::markNonvolatileDataErased(BootController *this)
{
  v2 = *(this + 1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_296FF7000, v2, OS_LOG_TYPE_DEFAULT, "#I Marking EFS as erased", v3, 2u);
  }

  *(this + 24) = 1;
}

uint64_t BootController::setManagerState(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = TelephonyBasebandSetManagerState();
  if ((result & 1) == 0)
  {
    v4 = *(a1 + 8);
    v5 = result;
    v6 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);
    result = v5;
    if (v6)
    {
      *v7 = 0;
      _os_log_error_impl(&dword_296FF7000, v4, OS_LOG_TYPE_ERROR, "Failed to set manager state", v7, 2u);
      return v5;
    }
  }

  return result;
}

uint64_t BootController::getManagerState(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = TelephonyBasebandGetManagerState();
  if ((result & 1) == 0)
  {
    v4 = *(a1 + 8);
    v5 = result;
    v6 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);
    result = v5;
    if (v6)
    {
      *v7 = 0;
      _os_log_error_impl(&dword_296FF7000, v4, OS_LOG_TYPE_ERROR, "Failed to get manager state", v7, 2u);
      return v5;
    }
  }

  return result;
}

BOOL BootController::setBasebandState(capabilities::radio *a1)
{
  if (!capabilities::radio::supportsBasebandStateController(a1))
  {
    return 1;
  }

  v2 = *(a1 + 2);
  if (TelephonyBasebandSetBasebandState())
  {
    return 1;
  }

  v4 = *(a1 + 1);
  result = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);
  if (result)
  {
    *v5 = 0;
    _os_log_error_impl(&dword_296FF7000, v4, OS_LOG_TYPE_ERROR, "Failed to set baseband state", v5, 2u);
    return 0;
  }

  return result;
}

BOOL BootController::getBasebandState(capabilities::radio *a1, _DWORD *a2)
{
  *a2 = 0;
  if (!capabilities::radio::supportsBasebandStateController(a1))
  {
    return 1;
  }

  v3 = *(a1 + 2);
  if (TelephonyBasebandGetBasebandState())
  {
    return 1;
  }

  v5 = *(a1 + 1);
  result = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
  if (result)
  {
    *v6 = 0;
    _os_log_error_impl(&dword_296FF7000, v5, OS_LOG_TYPE_ERROR, "Failed to get baseband state", v6, 2u);
    return 0;
  }

  return result;
}

void BootController::setCrashContextData(void *a1, void *a2)
{
  v4 = a1[1];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v19[0] = 0;
    _os_log_impl(&dword_296FF7000, v4, OS_LOG_TYPE_DEFAULT, "#I Setting crash context data", v19, 2u);
  }

  if (a1 + 4 != a2)
  {
    v5 = *a2;
    v6 = a2[1];
    v7 = &v6[-*a2];
    v8 = a1[6];
    v9 = a1[4];
    if (v8 - v9 >= v7)
    {
      v15 = a1[5];
      v16 = v15 - v9;
      if (v15 - v9 >= v7)
      {
        if (v6 != v5)
        {
          v18 = a1[4];
          memmove(v9, v5, v7);
          v9 = v18;
        }

        v14 = &v9[v7];
      }

      else
      {
        v17 = &v5[v16];
        if (v15 != v9)
        {
          memmove(v9, v5, v16);
          v15 = a1[5];
        }

        if (v6 != v17)
        {
          memmove(v15, v17, v6 - v17);
        }

        v14 = &v15[v6 - v17];
      }
    }

    else
    {
      if (v9)
      {
        a1[5] = v9;
        operator delete(v9);
        v8 = 0;
        a1[4] = 0;
        a1[5] = 0;
        a1[6] = 0;
      }

      if ((v7 & 0x8000000000000000) != 0)
      {
        std::vector<std::shared_ptr<Service>>::__throw_length_error[abi:ne200100]();
      }

      v10 = 2 * v8;
      if (2 * v8 <= v7)
      {
        v10 = v7;
      }

      if (v8 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v11 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      v12 = operator new(v11);
      v13 = v12;
      a1[4] = v12;
      a1[5] = v12;
      a1[6] = &v12[v11];
      if (v6 != v5)
      {
        memcpy(v12, v5, v7);
      }

      v14 = &v13[v7];
    }

    a1[5] = v14;
  }
}

const void **ctu::cf::CFSharedRef<__TelephonyBasebandControllerHandle_tag>::~CFSharedRef(const void **a1)
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

const char *asString(_DWORD *a1)
{
  v1 = "Unknown";
  if (*a1 == 1)
  {
    v1 = "PoweredOn";
  }

  if (*a1)
  {
    return v1;
  }

  else
  {
    return "LowPower";
  }
}

const char *asString(unsigned int *a1)
{
  v1 = *a1;
  if (v1 > 2)
  {
    return "Unknown";
  }

  else
  {
    return off_29EE64238[v1];
  }
}

void SystemState::SystemState(SystemState *this)
{
  *this = 0x200000001;
  *(this + 2) = -536870144;
}

{
  *this = 0x200000001;
  *(this + 2) = -536870144;
}

uint64_t SystemState::acceptSystemNotification(SystemState *this, int a2)
{
  v2 = 0;
  HIDWORD(v4) = a2 + 536870288;
  LODWORD(v4) = a2 + 536870288;
  v3 = v4 >> 4;
  if (v3 <= 1)
  {
    if (!v3)
    {
      if (*this == 1)
      {
        *(this + 1) = 0;
        goto LABEL_21;
      }

      return 0;
    }

    if (v3 == 1)
    {
      if (*this == 1)
      {
        if (*(this + 1))
        {
          *(this + 1) = 1;
        }

        *this = 0;
        goto LABEL_21;
      }

      return 0;
    }

    return v2;
  }

  if (v3 != 2)
  {
    if (v3 == 9)
    {
      if (!*this && *(this + 1) == 2)
      {
        *this = 1;
        goto LABEL_21;
      }

      return 0;
    }

    if (v3 == 11)
    {
      if (!*this && *(this + 1) != 2)
      {
        *(this + 1) = 2;
LABEL_21:
        *(this + 2) = a2;
        return 1;
      }

      return 0;
    }

    return v2;
  }

  if (!*(this + 1))
  {
    *this = 0x200000001;
    goto LABEL_21;
  }

  return 0;
}

uint64_t __cxx_global_var_init_8()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ctu::power::assertion>::~PthreadMutexGuardPolicy, &ctu::Singleton<ctu::power::assertion,ctu::power::assertion,ctu::PthreadMutexGuardPolicy<ctu::power::assertion>>::sInstance, &dword_296FF7000);
  }

  return result;
}

{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<CommandDriverFactory>::~PthreadMutexGuardPolicy, &ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance, &dword_296FF7000);
  }

  return result;
}

BOOL MobileAssetSupport::lockAsset(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v102 = *MEMORY[0x29EDCA608];
  v8 = MobileAssetSupport::getMAAutoAssetSet(a1, a2);
  if (v8)
  {
    *(a4 + 24) = 0;
    if (*(a1 + 23) >= 0)
    {
      v9 = a1;
    }

    else
    {
      v9 = *a1;
    }

    if (*(a2 + 23) >= 0)
    {
      v10 = a2;
    }

    else
    {
      v10 = *a2;
    }

    v11 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@.%s.%s", @"AppleBasebandServices", v9, v10];
    if ((atomic_load_explicit(&qword_2A18B7890, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18B7890))
    {
      qword_2A18B7898 = 0;
      qword_2A18B78A0 = 0;
      __cxa_guard_release(&qword_2A18B7890);
    }

    if (_MergedGlobals_7 != -1)
    {
      dispatch_once(&_MergedGlobals_7, &__block_literal_global_43);
    }

    v12 = qword_2A18B78A0;
    if (os_log_type_enabled(qword_2A18B78A0, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      *&buf[4] = v11;
      *&buf[12] = 2048;
      *&buf[14] = a3;
      _os_log_impl(&dword_296FF7000, v12, OS_LOG_TYPE_INFO, "Trying to lock assetSetId %@, timeout:%ld", buf, 0x16u);
    }

    v13 = objc_opt_new();
    [v13 setAllowCheckDownloadWhenBatteryLow:1];
    [v13 setAllowCheckDownloadWhenCPUHigh:1];
    [v13 setAllowCheckDownloadOverExpensive:1];
    [v13 setAllowCheckDownloadOverCellular:1];
    [v13 setUserInitiated:1];
    v95 = 0;
    v96 = 0;
    v89 = [v8 lockAtomicSync:@"AppleBasebandServicesAccess" forAtomicInstance:0 withNeedPolicy:v13 withTimeout:a3 lockedAtomicEntries:&v96 error:&v95];
    v90 = v96;
    v14 = v95;

    if (v14)
    {
      if ((atomic_load_explicit(&qword_2A18B7890, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18B7890))
      {
        qword_2A18B7898 = 0;
        qword_2A18B78A0 = 0;
        __cxa_guard_release(&qword_2A18B7890);
      }

      if (_MergedGlobals_7 == -1)
      {
        v15 = qword_2A18B78A0;
        if (!os_log_type_enabled(qword_2A18B78A0, OS_LOG_TYPE_ERROR))
        {
LABEL_17:
          v16 = 0;
LABEL_143:

          goto LABEL_144;
        }
      }

      else
      {
        dispatch_once(&_MergedGlobals_7, &__block_literal_global_43);
        v15 = qword_2A18B78A0;
        if (!os_log_type_enabled(qword_2A18B78A0, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_17;
        }
      }

      *buf = 138412546;
      *&buf[4] = v11;
      *&buf[12] = 2112;
      *&buf[14] = v14;
      _os_log_error_impl(&dword_296FF7000, v15, OS_LOG_TYPE_ERROR, "Failed to lock assetSetId %@: %@", buf, 0x16u);
      goto LABEL_17;
    }

    if (![v90 count])
    {
      if ((atomic_load_explicit(&qword_2A18B7890, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18B7890))
      {
        qword_2A18B7898 = 0;
        qword_2A18B78A0 = 0;
        __cxa_guard_release(&qword_2A18B7890);
      }

      if (_MergedGlobals_7 != -1)
      {
        dispatch_once(&_MergedGlobals_7, &__block_literal_global_43);
      }

      v26 = qword_2A18B78A0;
      if (os_log_type_enabled(qword_2A18B78A0, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        *&buf[4] = v11;
        _os_log_error_impl(&dword_296FF7000, v26, OS_LOG_TYPE_ERROR, "url is missing for assetSetId %@", buf, 0xCu);
      }

      v14 = 0;
      v16 = 0;
      goto LABEL_143;
    }

    v17 = [v90 objectAtIndex:0];
    v88 = [v17 localContentURL];

    v18 = v88;
    v16 = v88 != 0;
    if (!v88)
    {
      v14 = 0;
LABEL_142:

      goto LABEL_143;
    }

    v87 = v11;
    v19 = [v88 path];
    v20 = v19;
    v21 = [v19 UTF8String];
    v22 = 0x7FFFFFFFFFFFFFF7;
    v23 = strlen(v21);
    if (v23 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v24 = v23;
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

      v25 = operator new(v27);
      *&buf[8] = v24;
      *&buf[16] = v27 | 0x8000000000000000;
      *buf = v25;
    }

    else
    {
      buf[23] = v23;
      v25 = buf;
      if (!v23)
      {
LABEL_37:
        v25[v24] = 0;
        if (*(a4 + 23) < 0)
        {
          operator delete(*a4);
        }

        *a4 = *buf;
        *(a4 + 16) = *&buf[16];

        memset(__dst, 170, sizeof(__dst));
        v28 = [v88 path];
        v29 = v28;
        v30 = [v28 UTF8String];
        v31 = strlen(v30);
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
          __dst[1] = v32;
          __dst[2] = (v34 | 0x8000000000000000);
          __dst[0] = v33;
        }

        else
        {
          HIBYTE(__dst[2]) = v31;
          v33 = __dst;
          if (!v31)
          {
LABEL_48:
            *(v32 + v33) = 0;

            v86 = MEMORY[0x29EDB8E70];
            v35 = MEMORY[0x29EDBA0F8];
            if (SHIBYTE(__dst[2]) >= 0)
            {
              v36 = __dst;
            }

            else
            {
              v36 = __dst[0];
            }

            if (SHIBYTE(__dst[2]) >= 0)
            {
              v37 = SHIBYTE(__dst[2]);
            }

            else
            {
              v37 = __dst[1];
            }

            v38 = v36 + v37;
            if (v37 >= 9)
            {
              v40 = MEMORY[0x29EDBA0F8];
              v41 = v37;
              v42 = v36;
              do
              {
                v39 = memchr(v42, 65, v41 - 8);
                if (!v39)
                {
                  break;
                }

                if (*v39 == 0x7461447465737341 && v39[8] == 97)
                {
                  goto LABEL_64;
                }

                v42 = (v39 + 1);
                v41 = v38 - v42;
              }

              while (v38 - v42 > 8);
              v39 = v36 + v37;
LABEL_64:
              v35 = v40;
            }

            else
            {
              v39 = v36 + v37;
            }

            v44 = v39 - v36;
            if (v39 == v38)
            {
              v44 = -1;
            }

            if (v37 >= v44)
            {
              v45 = v44;
            }

            else
            {
              v45 = v37;
            }

            if (v45 > 0x7FFFFFFFFFFFFFF7)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            if (v45 >= 0x17)
            {
              if ((v45 | 7) == 0x17)
              {
                v47 = 25;
              }

              else
              {
                v47 = (v45 | 7) + 1;
              }

              v46 = operator new(v47);
              __p[1] = v45;
              v93 = v47 | 0x8000000000000000;
              __p[0] = v46;
            }

            else
            {
              HIBYTE(v93) = v45;
              v46 = __p;
              if (!v45)
              {
LABEL_79:
                *(v46 + v45) = 0;
                v48 = SHIBYTE(v93);
                if ((SHIBYTE(v93) & 0x8000000000000000) != 0)
                {
                  v48 = __p[1];
                  v51 = (v93 & 0x7FFFFFFFFFFFFFFFLL) - 1;
                  if (v51 - __p[1] < 0xA)
                  {
                    v49 = __p[1] + 10;
                    if ((0x7FFFFFFFFFFFFFF7 - (v93 & 0x7FFFFFFFFFFFFFFFLL)) < __p[1] - v51 + 10)
                    {
                      std::string::__throw_length_error[abi:ne200100]();
                    }

                    v50 = __p[0];
                    if (v51 > 0x3FFFFFFFFFFFFFF2)
                    {
                      v54 = 0;
LABEL_94:
                      v55 = operator new(v22);
                      v56 = v55;
                      if (v48)
                      {
                        memmove(v55, v50, v48);
                      }

                      v57 = v56 + v48;
                      *v57 = *"Info.plist";
                      *(v57 + 4) = 29811;
                      if (!v54)
                      {
                        operator delete(v50);
                      }

                      __p[1] = v49;
                      v93 = v22 | 0x8000000000000000;
                      __p[0] = v56;
                      v58 = &v49[v56];
LABEL_105:
                      *v58 = 0;
                      *&buf[16] = v93;
                      *buf = *__p;
                      __p[1] = 0;
                      v93 = 0;
                      __p[0] = 0;
                      if (buf[23] >= 0)
                      {
                        v62 = buf;
                      }

                      else
                      {
                        v62 = *buf;
                      }

                      v63 = [v35 stringWithUTF8String:v62];
                      v64 = [v86 fileURLWithPath:v63];

                      if ((buf[23] & 0x80000000) != 0)
                      {
                        operator delete(*buf);
                      }

                      if (SHIBYTE(v93) < 0)
                      {
                        operator delete(__p[0]);
                      }

                      v65 = objc_alloc(MEMORY[0x29EDB8DC0]);
                      v91 = 0;
                      v66 = [v65 initWithContentsOfURL:v64 error:&v91];
                      v14 = v91;
                      if (!v14 && v66)
                      {
                        v67 = [v66 objectForKey:@"ManagerProperties"];
                        v68 = [v67 objectForKey:@"IsNotificationEnabled"];

                        if (v68)
                        {
                          v69 = [MEMORY[0x29EDBA070] numberWithBool:1];
                          v70 = [v68 isEqual:v69];

                          if (v70)
                          {
                            *(a4 + 24) = 1;
                          }
                        }

                        v71 = [v66 objectForKey:@"ManagerProperties"];
                        v72 = [v71 objectForKey:@"notificationActionUrl"];

                        if (v72)
                        {
                          v73 = v72;
                          std::string::__assign_external((a4 + 32), [v72 UTF8String]);
                        }

                        v74 = [v66 objectForKey:@"CFBundleVersion"];
                        v75 = v74;
                        if (v74)
                        {
                          v76 = v74;
                          std::string::__assign_external((a4 + 56), [v75 UTF8String]);
                        }

LABEL_125:
                        if (atomic_load_explicit(&qword_2A18B7890, memory_order_acquire))
                        {
LABEL_126:
                          if (_MergedGlobals_7 != -1)
                          {
                            dispatch_once(&_MergedGlobals_7, &__block_literal_global_43);
                          }

                          v11 = v87;
                          v78 = qword_2A18B78A0;
                          if (os_log_type_enabled(qword_2A18B78A0, OS_LOG_TYPE_INFO))
                          {
                            v79 = *(a4 + 24);
                            if (*(a4 + 55) >= 0)
                            {
                              v80 = a4 + 32;
                            }

                            else
                            {
                              v80 = *(a4 + 32);
                            }

                            if (*(a4 + 79) >= 0)
                            {
                              v81 = a4 + 56;
                            }

                            else
                            {
                              v81 = *(a4 + 56);
                            }

                            if (*(a4 + 23) >= 0)
                            {
                              v82 = a4;
                            }

                            else
                            {
                              v82 = *a4;
                            }

                            *buf = 138413314;
                            *&buf[4] = v87;
                            *&buf[12] = 1024;
                            *&buf[14] = v79;
                            *&buf[18] = 2080;
                            *&buf[20] = v80;
                            v98 = 2080;
                            v99 = v81;
                            v100 = 2080;
                            v101 = v82;
                            _os_log_impl(&dword_296FF7000, v78, OS_LOG_TYPE_INFO, "Locked assetSetId %@: enableNotification=%d, actionURL=%s, assetVersion=%s, path=%s", buf, 0x30u);
                          }

                          if (SHIBYTE(__dst[2]) < 0)
                          {
                            operator delete(__dst[0]);
                          }

                          v18 = v88;
                          goto LABEL_142;
                        }

LABEL_152:
                        if (__cxa_guard_acquire(&qword_2A18B7890))
                        {
                          qword_2A18B7898 = 0;
                          qword_2A18B78A0 = 0;
                          __cxa_guard_release(&qword_2A18B7890);
                        }

                        goto LABEL_126;
                      }

                      if ((atomic_load_explicit(&qword_2A18B7890, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18B7890))
                      {
                        qword_2A18B7898 = 0;
                        qword_2A18B78A0 = 0;
                        __cxa_guard_release(&qword_2A18B7890);
                      }

                      if (_MergedGlobals_7 == -1)
                      {
                        v77 = qword_2A18B78A0;
                        if (!os_log_type_enabled(qword_2A18B78A0, OS_LOG_TYPE_ERROR))
                        {
                          goto LABEL_125;
                        }
                      }

                      else
                      {
                        dispatch_once(&_MergedGlobals_7, &__block_literal_global_43);
                        v77 = qword_2A18B78A0;
                        if (!os_log_type_enabled(qword_2A18B78A0, OS_LOG_TYPE_ERROR))
                        {
                          goto LABEL_125;
                        }
                      }

                      v85 = ", plist dictionary is null";
                      if (v66)
                      {
                        v85 = "";
                      }

                      *buf = 138412546;
                      *&buf[4] = v14;
                      *&buf[12] = 2080;
                      *&buf[14] = v85;
                      _os_log_error_impl(&dword_296FF7000, v77, OS_LOG_TYPE_ERROR, "Failed to read Info file: error=%@ %s", buf, 0x16u);
                      if (atomic_load_explicit(&qword_2A18B7890, memory_order_acquire))
                      {
                        goto LABEL_126;
                      }

                      goto LABEL_152;
                    }

LABEL_85:
                    v52 = 2 * v51;
                    if (v49 > 2 * v51)
                    {
                      v52 = v49;
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
                      v22 = v53;
                    }

                    else
                    {
                      v22 = 23;
                    }

                    v54 = v51 == 22;
                    goto LABEL_94;
                  }

                  v59 = __p[0];
                }

                else
                {
                  if ((SHIBYTE(v93) - 13) < 0xA)
                  {
                    v49 = (SHIBYTE(v93) + 10);
                    v50 = __p;
                    v51 = 22;
                    goto LABEL_85;
                  }

                  v59 = __p;
                }

                v60 = v59 + v48;
                *v60 = *"Info.plist";
                *(v60 + 4) = 29811;
                v61 = v48 + 10;
                if (SHIBYTE(v93) < 0)
                {
                  __p[1] = (v48 + 10);
                }

                else
                {
                  HIBYTE(v93) = v61 & 0x7F;
                }

                v58 = v59 + v61;
                goto LABEL_105;
              }
            }

            memmove(v46, v36, v45);
            goto LABEL_79;
          }
        }

        memmove(v33, v30, v32);
        goto LABEL_48;
      }
    }

    memmove(v25, v21, v24);
    goto LABEL_37;
  }

  v16 = 0;
LABEL_144:

  v83 = *MEMORY[0x29EDCA608];
  return v16;
}

void sub_2970C0FF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *a16, void *a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

BOOL MobileAssetSupport::unlockAsset(uint64_t *a1, uint64_t *a2)
{
  v19 = *MEMORY[0x29EDCA608];
  if (*(a1 + 23) >= 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = *a1;
  }

  if (*(a2 + 23) >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  v4 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@.%s.%s", @"AppleBasebandServices", v2, v3];
  if ((atomic_load_explicit(&qword_2A18B7890, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18B7890))
  {
    qword_2A18B7898 = 0;
    qword_2A18B78A0 = 0;
    __cxa_guard_release(&qword_2A18B7890);
  }

  if (_MergedGlobals_7 == -1)
  {
    v5 = qword_2A18B78A0;
    if (!os_log_type_enabled(qword_2A18B78A0, OS_LOG_TYPE_INFO))
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  dispatch_once(&_MergedGlobals_7, &__block_literal_global_43);
  v5 = qword_2A18B78A0;
  if (os_log_type_enabled(qword_2A18B78A0, OS_LOG_TYPE_INFO))
  {
LABEL_10:
    *buf = 138412290;
    v16 = v4;
    _os_log_impl(&dword_296FF7000, v5, OS_LOG_TYPE_INFO, "Trying to unlock assetSetId %@", buf, 0xCu);
  }

LABEL_11:
  v6 = [MEMORY[0x29EDC5D08] endAtomicLocksSync:0 usingClientDomain:@"com.apple.AppleBasebandServices" forClientName:@"com.apple.AppleBasebandServices" forAssetSetIdentifier:v4 ofAtomicInstance:@"ALL_INSTANCES" removingLockCount:-1];
  explicit = atomic_load_explicit(&qword_2A18B7890, memory_order_acquire);
  if (!v6)
  {
    if ((explicit & 1) == 0 && __cxa_guard_acquire(&qword_2A18B7890))
    {
      qword_2A18B7898 = 0;
      qword_2A18B78A0 = 0;
      __cxa_guard_release(&qword_2A18B7890);
    }

    if (_MergedGlobals_7 == -1)
    {
      v12 = qword_2A18B78A0;
      if (!os_log_type_enabled(qword_2A18B78A0, OS_LOG_TYPE_INFO))
      {
        goto LABEL_21;
      }
    }

    else
    {
      dispatch_once(&_MergedGlobals_7, &__block_literal_global_43);
      v12 = qword_2A18B78A0;
      if (!os_log_type_enabled(qword_2A18B78A0, OS_LOG_TYPE_INFO))
      {
        goto LABEL_21;
      }
    }

    *buf = 138412290;
    v16 = v4;
    v9 = "Unlocked assetSetId %@";
    v10 = v12;
    v11 = 12;
    goto LABEL_20;
  }

  if ((explicit & 1) == 0 && __cxa_guard_acquire(&qword_2A18B7890))
  {
    qword_2A18B7898 = 0;
    qword_2A18B78A0 = 0;
    __cxa_guard_release(&qword_2A18B7890);
  }

  if (_MergedGlobals_7 != -1)
  {
    dispatch_once(&_MergedGlobals_7, &__block_literal_global_43);
    v8 = qword_2A18B78A0;
    if (!os_log_type_enabled(qword_2A18B78A0, OS_LOG_TYPE_INFO))
    {
      goto LABEL_21;
    }

    goto LABEL_15;
  }

  v8 = qword_2A18B78A0;
  if (os_log_type_enabled(qword_2A18B78A0, OS_LOG_TYPE_INFO))
  {
LABEL_15:
    *buf = 138412546;
    v16 = v4;
    v17 = 2112;
    v18 = v6;
    v9 = "Failed to unlock assetSetId %@: %@";
    v10 = v8;
    v11 = 22;
LABEL_20:
    _os_log_impl(&dword_296FF7000, v10, OS_LOG_TYPE_INFO, v9, buf, v11);
  }

LABEL_21:

  v13 = *MEMORY[0x29EDCA608];
  return v6 == 0;
}

uint64_t support::mobileasset::registerForUpdates(std::string::size_type a1, std::string::size_type a2, NSObject *a3, void *a4)
{
  v19 = *MEMORY[0x29EDCA608];
  v7 = a4;
  if ((atomic_load_explicit(&qword_2A18B7890, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18B7890))
  {
    qword_2A18B7898 = 0;
    qword_2A18B78A0 = 0;
    __cxa_guard_release(&qword_2A18B7890);
  }

  if (_MergedGlobals_7 == -1)
  {
    v8 = qword_2A18B78A0;
    if (!os_log_type_enabled(qword_2A18B78A0, OS_LOG_TYPE_INFO))
    {
      goto LABEL_11;
    }
  }

  else
  {
    dispatch_once(&_MergedGlobals_7, &__block_literal_global_43);
    v8 = qword_2A18B78A0;
    if (!os_log_type_enabled(qword_2A18B78A0, OS_LOG_TYPE_INFO))
    {
      goto LABEL_11;
    }
  }

  if (*(a1 + 23) >= 0)
  {
    v9 = a1;
  }

  else
  {
    v9 = *a1;
  }

  if (*(a2 + 23) >= 0)
  {
    v10 = a2;
  }

  else
  {
    v10 = *a2;
  }

  LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
  *(buf.__r_.__value_.__r.__words + 4) = v9;
  WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
  *(&buf.__r_.__value_.__r.__words[1] + 6) = v10;
  _os_log_impl(&dword_296FF7000, v8, OS_LOG_TYPE_INFO, "Registering for assetType %s, directory %s", &buf, 0x16u);
LABEL_11:
  v11 = MobileAssetSupport::registerDownloadedHandler(a1, a2, a3, v7);
  v14[0] = MEMORY[0x29EDCA5F8];
  v14[1] = 3321888768;
  v14[2] = ___ZN7support11mobileasset18registerForUpdatesERKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEES9_P16dispatch_queue_sU13block_pointerFviE_block_invoke;
  v14[3] = &__block_descriptor_80_ea8_32c162_ZTSKZN7support11mobileasset18registerForUpdatesERKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEES9_P16dispatch_queue_sU13block_pointerFviEE3__0_e5_v8__0l;
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&buf, *a1, *(a1 + 8));
  }

  else
  {
    buf = *a1;
  }

  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v15, buf.__r_.__value_.__l.__data_, buf.__r_.__value_.__l.__size_);
  }

  else
  {
    v15 = buf;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v16, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v16 = __p;
  }

  dispatch_async(a3, v14);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_25:
      if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_26;
      }

LABEL_30:
      operator delete(v16.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_27;
      }

LABEL_31:
      operator delete(v15.__r_.__value_.__l.__data_);
      goto LABEL_27;
    }
  }

  else if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_25;
  }

  operator delete(buf.__r_.__value_.__l.__data_);
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_30;
  }

LABEL_26:
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_31;
  }

LABEL_27:

  v12 = *MEMORY[0x29EDCA608];
  return v11;
}

void sub_2970C1748(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::pair<std::string,std::string>::~pair(&a22);

  _Unwind_Resume(a1);
}

uint64_t MobileAssetSupport::registerDownloadedHandler(uint64_t *a1, uint64_t *a2, NSObject *a3, void *a4)
{
  v7 = a4;
  out_token = -1;
  v8 = MEMORY[0x29EDC5D18];
  if (*(a1 + 23) >= 0)
  {
    v9 = a1;
  }

  else
  {
    v9 = *a1;
  }

  if (*(a2 + 23) >= 0)
  {
    v10 = a2;
  }

  else
  {
    v10 = *a2;
  }

  v11 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@.%s.%s", @"AppleBasebandServices", v9, v10];
  v12 = [v8 notifyRegistrationName:@"ATOMIC_INSTANCE_DOWNLOADED" forAssetSetIdentifier:v11];

  notify_register_dispatch([v12 UTF8String], &out_token, a3, v7);
  v13 = out_token;

  return v13;
}

void ___ZN7support11mobileasset18registerForUpdatesERKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEES9_P16dispatch_queue_sU13block_pointerFviE_block_invoke(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    std::string::__init_copy_ctor_external(&v3, *(a1 + 32), *(a1 + 40));
    if ((*(a1 + 79) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = *(a1 + 32);
    if ((*(a1 + 79) & 0x80000000) == 0)
    {
LABEL_3:
      __p = *(a1 + 56);
      goto LABEL_6;
    }
  }

  std::string::__init_copy_ctor_external(&__p, *(a1 + 56), *(a1 + 64));
LABEL_6:
  MobileAssetSupport::indicateNeedForAsset(&v3, &__p);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v3.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_10:
    operator delete(v3.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(v3.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_10;
  }
}

void sub_2970C198C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if ((a21 & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void __copy_helper_block_ea8_32c162_ZTSKZN7support11mobileasset18registerForUpdatesERKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEES9_P16dispatch_queue_sU13block_pointerFviEE3__0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 55) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 32), *(a2 + 32), *(a2 + 40));
    if ((*(a2 + 79) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v4;
    if ((*(a2 + 79) & 0x80000000) == 0)
    {
LABEL_3:
      v5 = *(a2 + 56);
      *(a1 + 72) = *(a2 + 72);
      *(a1 + 56) = v5;
      return;
    }
  }

  std::string::__init_copy_ctor_external((a1 + 56), *(a2 + 56), *(a2 + 64));
}

void sub_2970C1A58(_Unwind_Exception *exception_object)
{
  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_ea8_32c162_ZTSKZN7support11mobileasset18registerForUpdatesERKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEES9_P16dispatch_queue_sU13block_pointerFviEE3__0(uint64_t a1)
{
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
    if ((*(a1 + 55) & 0x80000000) == 0)
    {
      return;
    }
  }

  else if ((*(a1 + 55) & 0x80000000) == 0)
  {
    return;
  }

  v2 = *(a1 + 32);

  operator delete(v2);
}

uint64_t MobileAssetSupport::getAssetSetIdentifier(uint64_t *a1, uint64_t *a2)
{
  if (*(a1 + 23) >= 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = *a1;
  }

  if (*(a2 + 23) >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@.%s.%s", @"AppleBasebandServices", v2, v3];
}

void MobileAssetSupport::indicateNeedForAsset(uint64_t *a1, uint64_t *a2)
{
  v2 = MobileAssetSupport::getMAAutoAssetSet(a1, a2);
  if (v2)
  {
    v4 = v2;
    v3 = objc_opt_new();
    [v3 setAllowCheckDownloadWhenBatteryLow:1];
    [v3 setAllowCheckDownloadWhenCPUHigh:1];
    [v3 setAllowCheckDownloadOverExpensive:1];
    [v3 setAllowCheckDownloadOverCellular:1];
    [v3 setUserInitiated:1];
    [v4 needForAtomic:@"AppleBasebandServicesAccess" withNeedPolicy:v3 completion:&__block_literal_global_5];

    v2 = v4;
  }
}

id MobileAssetSupport::getMAAutoAssetSet(uint64_t *a1, uint64_t *a2)
{
  v29 = *MEMORY[0x29EDCA608];
  v4 = objc_opt_new();
  v5 = objc_alloc(MEMORY[0x29EDC5D10]);
  if (*(a1 + 23) >= 0)
  {
    v6 = a1;
  }

  else
  {
    v6 = *a1;
  }

  v7 = [MEMORY[0x29EDBA0F8] stringWithCString:v6 encoding:4];
  if (*(a2 + 23) >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  v9 = [MEMORY[0x29EDBA0F8] stringWithCString:v8 encoding:4];
  v10 = [v5 initForAssetType:v7 withAssetSpecifier:v9];

  [v4 addObject:v10];
  v11 = objc_alloc(MEMORY[0x29EDC5D08]);
  if (*(a1 + 23) >= 0)
  {
    v12 = a1;
  }

  else
  {
    v12 = *a1;
  }

  if (*(a2 + 23) >= 0)
  {
    v13 = a2;
  }

  else
  {
    v13 = *a2;
  }

  v14 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@.%s.%s", @"AppleBasebandServices", v12, v13];
  v22 = 0;
  v15 = [v11 initUsingClientDomain:@"com.apple.AppleBasebandServices" forClientName:@"com.apple.AppleBasebandServices" forAssetSetIdentifier:v14 comprisedOfEntries:v4 error:&v22];
  v16 = v22;

  if (v16 || !v15)
  {
    if ((atomic_load_explicit(&qword_2A18B7890, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18B7890))
    {
      qword_2A18B7898 = 0;
      qword_2A18B78A0 = 0;
      __cxa_guard_release(&qword_2A18B7890);
    }

    if (_MergedGlobals_7 == -1)
    {
      v17 = qword_2A18B78A0;
      if (!os_log_type_enabled(qword_2A18B78A0, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
      }

LABEL_22:
      if (*(a1 + 23) >= 0)
      {
        v20 = a1;
      }

      else
      {
        v20 = *a1;
      }

      if (*(a2 + 23) >= 0)
      {
        v21 = a2;
      }

      else
      {
        v21 = *a2;
      }

      *buf = 136315650;
      v24 = v20;
      v25 = 2080;
      v26 = v21;
      v27 = 2112;
      v28 = v16;
      _os_log_error_impl(&dword_296FF7000, v17, OS_LOG_TYPE_ERROR, "Failed to create assetSet for %s-%s: %@", buf, 0x20u);
      goto LABEL_18;
    }

    dispatch_once(&_MergedGlobals_7, &__block_literal_global_43);
    v17 = qword_2A18B78A0;
    if (os_log_type_enabled(qword_2A18B78A0, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }
  }

LABEL_18:

  v18 = *MEMORY[0x29EDCA608];

  return v15;
}

id MobileAssetSupport::getMAAssetSetPolicy(MobileAssetSupport *this)
{
  v1 = objc_opt_new();
  [v1 setAllowCheckDownloadWhenBatteryLow:1];
  [v1 setAllowCheckDownloadWhenCPUHigh:1];
  [v1 setAllowCheckDownloadOverExpensive:1];
  [v1 setAllowCheckDownloadOverCellular:1];
  [v1 setUserInitiated:1];

  return v1;
}

void ___ZN18MobileAssetSupport20indicateNeedForAssetENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEES6__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x29EDCA608];
  v4 = a2;
  v5 = a3;
  explicit = atomic_load_explicit(&qword_2A18B7890, memory_order_acquire);
  if (!v5)
  {
    if ((explicit & 1) == 0 && __cxa_guard_acquire(&qword_2A18B7890))
    {
      qword_2A18B7898 = 0;
      qword_2A18B78A0 = 0;
      __cxa_guard_release(&qword_2A18B7890);
    }

    if (_MergedGlobals_7 == -1)
    {
      v8 = qword_2A18B78A0;
      if (!os_log_type_enabled(qword_2A18B78A0, OS_LOG_TYPE_INFO))
      {
        goto LABEL_10;
      }
    }

    else
    {
      dispatch_once(&_MergedGlobals_7, &__block_literal_global_43);
      v8 = qword_2A18B78A0;
      if (!os_log_type_enabled(qword_2A18B78A0, OS_LOG_TYPE_INFO))
      {
        goto LABEL_10;
      }
    }

    v10 = 138412290;
    v11 = v4;
    _os_log_impl(&dword_296FF7000, v8, OS_LOG_TYPE_INFO, "Indicated need for assetSetId %@", &v10, 0xCu);
    goto LABEL_10;
  }

  if ((explicit & 1) == 0 && __cxa_guard_acquire(&qword_2A18B7890))
  {
    qword_2A18B7898 = 0;
    qword_2A18B78A0 = 0;
    __cxa_guard_release(&qword_2A18B7890);
  }

  if (_MergedGlobals_7 != -1)
  {
    dispatch_once(&_MergedGlobals_7, &__block_literal_global_43);
    v7 = qword_2A18B78A0;
    if (!os_log_type_enabled(qword_2A18B78A0, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    goto LABEL_5;
  }

  v7 = qword_2A18B78A0;
  if (os_log_type_enabled(qword_2A18B78A0, OS_LOG_TYPE_ERROR))
  {
LABEL_5:
    v10 = 138412546;
    v11 = v4;
    v12 = 2112;
    v13 = v5;
    _os_log_error_impl(&dword_296FF7000, v7, OS_LOG_TYPE_ERROR, "Failed to indicate need for assetSetId %@: %@", &v10, 0x16u);
  }

LABEL_10:

  v9 = *MEMORY[0x29EDCA608];
}

void ___ZN12_GLOBAL__N_116sGetOsLogContextEv_block_invoke()
{
  ctu::OsLogContext::OsLogContext(v0, "com.apple.telephony.abm", "support.mobileasset");
  ctu::OsLogContext::operator=();
  ctu::OsLogContext::~OsLogContext(v0);
}

uint64_t config::hw::iPhone(config::hw *this)
{
  v1 = pthread_mutex_lock(&ctu::Singleton<ctu::Gestalt,ctu::Gestalt,ctu::PthreadMutexGuardPolicy<ctu::Gestalt>>::sInstance);
  v2 = off_2A18B7110;
  if (!off_2A18B7110)
  {
    ctu::Gestalt::create_default_global(&v9, v1);
    v3 = v9;
    v9 = 0uLL;
    v4 = *(&off_2A18B7110 + 1);
    off_2A18B7110 = v3;
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    v5 = *(&v9 + 1);
    if (*(&v9 + 1) && !atomic_fetch_add((*(&v9 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    v2 = off_2A18B7110;
  }

  v6 = *(&off_2A18B7110 + 1);
  if (*(&off_2A18B7110 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18B7110 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ctu::Gestalt,ctu::Gestalt,ctu::PthreadMutexGuardPolicy<ctu::Gestalt>>::sInstance);
  result = (*(*v2 + 136))(v2);
  if (v6)
  {
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v8 = result;
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
      return v8;
    }
  }

  return result;
}

uint64_t config::hw::watch(config::hw *this)
{
  v1 = pthread_mutex_lock(&ctu::Singleton<ctu::Gestalt,ctu::Gestalt,ctu::PthreadMutexGuardPolicy<ctu::Gestalt>>::sInstance);
  v2 = off_2A18B7110;
  if (!off_2A18B7110)
  {
    ctu::Gestalt::create_default_global(&v9, v1);
    v3 = v9;
    v9 = 0uLL;
    v4 = *(&off_2A18B7110 + 1);
    off_2A18B7110 = v3;
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    v5 = *(&v9 + 1);
    if (*(&v9 + 1) && !atomic_fetch_add((*(&v9 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    v2 = off_2A18B7110;
  }

  v6 = *(&off_2A18B7110 + 1);
  if (*(&off_2A18B7110 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18B7110 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ctu::Gestalt,ctu::Gestalt,ctu::PthreadMutexGuardPolicy<ctu::Gestalt>>::sInstance);
  result = (*(*v2 + 152))(v2);
  if (v6)
  {
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v8 = result;
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
      return v8;
    }
  }

  return result;
}

uint64_t config::hw::iPad(config::hw *this)
{
  v1 = pthread_mutex_lock(&ctu::Singleton<ctu::Gestalt,ctu::Gestalt,ctu::PthreadMutexGuardPolicy<ctu::Gestalt>>::sInstance);
  v2 = off_2A18B7110;
  if (!off_2A18B7110)
  {
    ctu::Gestalt::create_default_global(&v9, v1);
    v3 = v9;
    v9 = 0uLL;
    v4 = *(&off_2A18B7110 + 1);
    off_2A18B7110 = v3;
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    v5 = *(&v9 + 1);
    if (*(&v9 + 1) && !atomic_fetch_add((*(&v9 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    v2 = off_2A18B7110;
  }

  v6 = *(&off_2A18B7110 + 1);
  if (*(&off_2A18B7110 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18B7110 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ctu::Gestalt,ctu::Gestalt,ctu::PthreadMutexGuardPolicy<ctu::Gestalt>>::sInstance);
  result = (*(*v2 + 144))(v2);
  if (v6)
  {
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v8 = result;
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
      return v8;
    }
  }

  return result;
}

void config::hw::product(config::hw *this)
{
  v1 = pthread_mutex_lock(&ctu::Singleton<ctu::Gestalt,ctu::Gestalt,ctu::PthreadMutexGuardPolicy<ctu::Gestalt>>::sInstance);
  v2 = off_2A18B7110;
  if (!off_2A18B7110)
  {
    ctu::Gestalt::create_default_global(&v7, v1);
    v3 = v7;
    v7 = 0uLL;
    v4 = *(&off_2A18B7110 + 1);
    off_2A18B7110 = v3;
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    v5 = *(&v7 + 1);
    if (*(&v7 + 1) && !atomic_fetch_add((*(&v7 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    v2 = off_2A18B7110;
  }

  v6 = *(&off_2A18B7110 + 1);
  if (*(&off_2A18B7110 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18B7110 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ctu::Gestalt,ctu::Gestalt,ctu::PthreadMutexGuardPolicy<ctu::Gestalt>>::sInstance);
  (*(*v2 + 48))(v2);
  if (v6)
  {
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }
}

void config::hw::deviceMaterial(config::hw *this)
{
  v1 = pthread_mutex_lock(&ctu::Singleton<ctu::Gestalt,ctu::Gestalt,ctu::PthreadMutexGuardPolicy<ctu::Gestalt>>::sInstance);
  v2 = off_2A18B7110;
  if (!off_2A18B7110)
  {
    ctu::Gestalt::create_default_global(&v7, v1);
    v3 = v7;
    v7 = 0uLL;
    v4 = *(&off_2A18B7110 + 1);
    off_2A18B7110 = v3;
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    v5 = *(&v7 + 1);
    if (*(&v7 + 1) && !atomic_fetch_add((*(&v7 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    v2 = off_2A18B7110;
  }

  v6 = *(&off_2A18B7110 + 1);
  if (*(&off_2A18B7110 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18B7110 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ctu::Gestalt,ctu::Gestalt,ctu::PthreadMutexGuardPolicy<ctu::Gestalt>>::sInstance);
  (*(*v2 + 104))(v2);
  if (v6)
  {
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }
}

void config::hw::getBootArgs(std::string *a1@<X8>)
{
  memset(v26, 170, 24);
  v3 = pthread_mutex_lock(&ctu::Singleton<ctu::Gestalt,ctu::Gestalt,ctu::PthreadMutexGuardPolicy<ctu::Gestalt>>::sInstance);
  v4 = off_2A18B7110;
  if (!off_2A18B7110)
  {
    ctu::Gestalt::create_default_global(__p, v3);
    v5 = *__p;
    __p[0] = 0;
    __p[1] = 0;
    v6 = *(&off_2A18B7110 + 1);
    off_2A18B7110 = v5;
    if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }

    v7 = __p[1];
    if (__p[1] && !atomic_fetch_add(__p[1] + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }

    v4 = off_2A18B7110;
  }

  v8 = *(&off_2A18B7110 + 1);
  v26[3] = v4;
  v26[4] = *(&off_2A18B7110 + 1);
  if (*(&off_2A18B7110 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18B7110 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ctu::Gestalt,ctu::Gestalt,ctu::PthreadMutexGuardPolicy<ctu::Gestalt>>::sInstance);
  (*(*v4 + 112))(v26, v4);
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  HIBYTE(v25) = 9;
  strcpy(__p, "boot-args");
  v9 = v26[1];
  if (v26[1])
  {
    while (1)
    {
      v11 = v9;
      v14 = v9[4];
      v12 = v9 + 4;
      v13 = v14;
      v15 = *(v12 + 23);
      if (v15 >= 0)
      {
        v16 = v12;
      }

      else
      {
        v16 = v13;
      }

      if (v15 >= 0)
      {
        v17 = *(v12 + 23);
      }

      else
      {
        v17 = v12[1];
      }

      if (v17 >= 9)
      {
        v18 = 9;
      }

      else
      {
        v18 = v17;
      }

      v19 = memcmp(__p, v16, v18);
      if (v19)
      {
        if (v19 < 0)
        {
          goto LABEL_16;
        }

LABEL_30:
        v20 = memcmp(v16, __p, v18);
        if (v20)
        {
          if ((v20 & 0x80000000) == 0)
          {
            goto LABEL_41;
          }
        }

        else if (v17 >= 9)
        {
LABEL_41:
          v21 = v11;
          if (*(v11 + 79) < 0)
          {
            goto LABEL_42;
          }

LABEL_40:
          v23 = *(v21 + 56);
          a1->__r_.__value_.__r.__words[2] = *(v21 + 9);
          *&a1->__r_.__value_.__l.__data_ = v23;
          goto LABEL_43;
        }

        v9 = v11[1];
        if (!v9)
        {
          v10 = v11 + 1;
          goto LABEL_37;
        }
      }

      else
      {
        if (v17 <= 9)
        {
          goto LABEL_30;
        }

LABEL_16:
        v9 = *v11;
        v10 = v11;
        if (!*v11)
        {
          goto LABEL_37;
        }
      }
    }
  }

  v10 = &v26[1];
  v11 = &v26[1];
LABEL_37:
  v21 = operator new(0x50uLL);
  *(v21 + 2) = *__p;
  v22 = v25;
  __p[1] = 0;
  v25 = 0;
  __p[0] = 0;
  *(v21 + 6) = v22;
  *(v21 + 7) = 0;
  *(v21 + 8) = 0;
  *(v21 + 9) = 0;
  *v21 = 0;
  *(v21 + 1) = 0;
  *(v21 + 2) = v11;
  *v10 = v21;
  if (*v26[0])
  {
    v26[0] = *v26[0];
  }

  std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v26[1], v21);
  ++v26[2];
  if ((v21[79] & 0x80000000) == 0)
  {
    goto LABEL_40;
  }

LABEL_42:
  std::string::__init_copy_ctor_external(a1, *(v21 + 7), *(v21 + 8));
LABEL_43:
  if (SHIBYTE(v25) < 0)
  {
    operator delete(__p[0]);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(v26[1]);
}

void sub_2970C2E00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2970C2E18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a16);
  _Unwind_Resume(a1);
}

void config::hw::regionCode(config::hw *this)
{
  v1 = pthread_mutex_lock(&ctu::Singleton<ctu::Gestalt,ctu::Gestalt,ctu::PthreadMutexGuardPolicy<ctu::Gestalt>>::sInstance);
  v2 = off_2A18B7110;
  if (!off_2A18B7110)
  {
    ctu::Gestalt::create_default_global(&v7, v1);
    v3 = v7;
    v7 = 0uLL;
    v4 = *(&off_2A18B7110 + 1);
    off_2A18B7110 = v3;
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    v5 = *(&v7 + 1);
    if (*(&v7 + 1) && !atomic_fetch_add((*(&v7 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    v2 = off_2A18B7110;
  }

  v6 = *(&off_2A18B7110 + 1);
  if (*(&off_2A18B7110 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18B7110 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ctu::Gestalt,ctu::Gestalt,ctu::PthreadMutexGuardPolicy<ctu::Gestalt>>::sInstance);
  (*(*v2 + 72))(v2);
  if (v6)
  {
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }
}

void config::hw::regionInfo(config::hw *this)
{
  v1 = pthread_mutex_lock(&ctu::Singleton<ctu::Gestalt,ctu::Gestalt,ctu::PthreadMutexGuardPolicy<ctu::Gestalt>>::sInstance);
  v2 = off_2A18B7110;
  if (!off_2A18B7110)
  {
    ctu::Gestalt::create_default_global(&v7, v1);
    v3 = v7;
    v7 = 0uLL;
    v4 = *(&off_2A18B7110 + 1);
    off_2A18B7110 = v3;
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    v5 = *(&v7 + 1);
    if (*(&v7 + 1) && !atomic_fetch_add((*(&v7 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    v2 = off_2A18B7110;
  }

  v6 = *(&off_2A18B7110 + 1);
  if (*(&off_2A18B7110 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18B7110 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ctu::Gestalt,ctu::Gestalt,ctu::PthreadMutexGuardPolicy<ctu::Gestalt>>::sInstance);
  (*(*v2 + 64))(v2);
  if (v6)
  {
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }
}

uint64_t config::build::carrier(config::build *this)
{
  result = TelephonyUtilIsCarrierBuild();
  if (result)
  {
    return TelephonyUtilIsInternalBuild() ^ 1;
  }

  return result;
}

uint64_t config::build::internal_or_carrier(config::build *this)
{
  if (TelephonyUtilIsInternalBuild())
  {
    return 1;
  }

  return TelephonyUtilIsCarrierBuild();
}

void config::build::version(config::build *this)
{
  v1 = pthread_mutex_lock(&ctu::Singleton<ctu::Gestalt,ctu::Gestalt,ctu::PthreadMutexGuardPolicy<ctu::Gestalt>>::sInstance);
  v2 = off_2A18B7110;
  if (!off_2A18B7110)
  {
    ctu::Gestalt::create_default_global(&v7, v1);
    v3 = v7;
    v7 = 0uLL;
    v4 = *(&off_2A18B7110 + 1);
    off_2A18B7110 = v3;
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    v5 = *(&v7 + 1);
    if (*(&v7 + 1) && !atomic_fetch_add((*(&v7 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    v2 = off_2A18B7110;
  }

  v6 = *(&off_2A18B7110 + 1);
  if (*(&off_2A18B7110 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18B7110 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ctu::Gestalt,ctu::Gestalt,ctu::PthreadMutexGuardPolicy<ctu::Gestalt>>::sInstance);
  (**v2)(v2);
  if (v6)
  {
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }
}

uint64_t ctu::PthreadMutexGuardPolicy<ctu::Gestalt>::~PthreadMutexGuardPolicy(uint64_t a1)
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

void std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(uint64_t a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(*(a1 + 8));
    if (*(a1 + 79) < 0)
    {
      operator delete(*(a1 + 56));
      if ((*(a1 + 55) & 0x80000000) == 0)
      {
LABEL_4:
        v2 = a1;

LABEL_6:
        operator delete(v2);
        return;
      }
    }

    else if ((*(a1 + 55) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    operator delete(*(a1 + 32));
    v2 = a1;

    goto LABEL_6;
  }
}

void AWDModule::create(uint64_t *a1@<X0>, atomic_ullong *a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  v4 = operator new(0x98uLL);
  v5 = v4;
  v6 = *a1;
  v7 = a1[1];
  v10[0] = v6;
  v10[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  AWDModule::AWDModule(v4, v10);
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  std::shared_ptr<AWDModule>::shared_ptr[abi:ne200100]<AWDModule,std::shared_ptr<AWDModule> ctu::SharedSynchronizable<AWDModule>::make_shared_ptr<AWDModule>(AWDModule*)::{lambda(AWDModule*)#1},0>(a2, v5);
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  v8 = *a2 + 72;
  v11 = *a2;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI9AWDModuleE20execute_wrapped_syncIZNS1_4initEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS5__block_invoke;
  block[3] = &__block_descriptor_tmp_67_0;
  block[4] = v8;
  block[5] = &v11;
  v9 = *(v11 + 88);
  if (*(v11 + 96))
  {
    dispatch_async_and_wait(v9, block);
  }

  else
  {
    dispatch_sync(v9, block);
  }
}

void sub_2970C36C4(_Unwind_Exception *exception_object)
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

void AWDModule::init(AWDModule *this)
{
  v3 = this;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI9AWDModuleE20execute_wrapped_syncIZNS1_4initEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS5__block_invoke;
  block[3] = &__block_descriptor_tmp_67_0;
  block[4] = this + 72;
  block[5] = &v3;
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

void AWDModule::~AWDModule(AWDModule *this)
{
  *this = &unk_2A1E283E8;
  std::__tree<std::__value_type<abm::stats::StatsID,std::shared_ptr<Stats>>,std::__map_value_compare<abm::stats::StatsID,std::__value_type<abm::stats::StatsID,std::shared_ptr<Stats>>,std::less<abm::stats::StatsID>,true>,std::allocator<std::__value_type<abm::stats::StatsID,std::shared_ptr<Stats>>>>::destroy(*(this + 17));
  v2 = *(this + 15);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  MEMORY[0x29C26B020](this + 104);
  v3 = *(this + 12);
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = *(this + 11);
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = *(this + 10);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  *this = &unk_2A1E2E7E8;
  std::__tree<std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>>>::destroy(this + 48, *(this + 7));
  v6 = *(this + 3);
  if (v6)
  {
    v7 = *(this + 4);
    v8 = *(this + 3);
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
      v8 = *(this + 3);
    }

    *(this + 4) = v6;
    operator delete(v8);
  }

  v10 = *(this + 2);
  if (v10)
  {
    std::__shared_weak_count::__release_weak(v10);
  }
}

{
  AWDModule::~AWDModule(this);

  operator delete(v1);
}

void *AWDModule::AWDModule(void *a1, uint64_t *a2)
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
    *a1 = &unk_2A1E23A28;
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
    *a1 = &unk_2A1E23A28;
  }

  *a1 = &unk_2A1E283E8;
  ctu::OsLogContext::OsLogContext(&v15, "com.apple.telephony.abm", "awd.mod");
  initially_inactive = dispatch_queue_attr_make_initially_inactive(0);
  v6 = dispatch_queue_create_with_target_V2("awd.mod", initially_inactive, 0);
  dispatch_set_qos_class_floor(v6, QOS_CLASS_DEFAULT, 0);
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
  MEMORY[0x29C26B010](a1 + 13, v14);
  MEMORY[0x29C26B020](v14);
  ctu::OsLogContext::~OsLogContext(&v15);
  *a1 = &unk_2A1E283E8;
  v7 = pthread_mutex_lock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  v8 = off_2A18B7390;
  if (!off_2A18B7390)
  {
    CommandDriverFactory::create_default_global(&v15, v7);
    v9 = v15;
    v15 = 0uLL;
    v10 = *(&off_2A18B7390 + 1);
    off_2A18B7390 = v9;
    if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
    }

    v11 = *(&v15 + 1);
    if (*(&v15 + 1) && !atomic_fetch_add((*(&v15 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
    }

    v8 = off_2A18B7390;
  }

  v12 = *(&off_2A18B7390 + 1);
  v14[0] = v8;
  v14[1] = *(&off_2A18B7390 + 1);
  if (*(&off_2A18B7390 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18B7390 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  (*(*v8 + 64))(v8);
  if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  a1[18] = 0;
  a1[17] = 0;
  a1[16] = a1 + 17;
  return a1;
}

void sub_2970C3C08(_Unwind_Exception *a1)
{
  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  MEMORY[0x29C26B020](v1 + 104);
  ctu::SharedSynchronizable<StatsModule>::~SharedSynchronizable(v2);
  Service::~Service(v1);
  _Unwind_Resume(a1);
}

_WORD *AWDModule::getBootstrapStages@<X0>(void *a1@<X8>)
{
  v3 = operator new(2uLL);
  *a1 = v3;
  *v3 = 256;
  result = v3 + 1;
  a1[1] = result;
  a1[2] = result;
  return result;
}

_BYTE *AWDModule::getShutdownStages@<X0>(void *a1@<X8>)
{
  v3 = operator new(1uLL);
  *a1 = v3;
  *v3 = 3;
  result = v3 + 1;
  a1[1] = result;
  a1[2] = result;
  return result;
}

void AWDModule::shutdownWithStage(void *a1, char a2, NSObject **a3)
{
  v13[0] = MEMORY[0x29EDCA5F8];
  v13[1] = 1174405120;
  v13[2] = ___ZN9AWDModule17shutdownWithStageE13ShutdownStageN8dispatch13group_sessionE_block_invoke;
  v13[3] = &__block_descriptor_tmp_31;
  v5 = *a3;
  v13[4] = a1;
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
  block[2] = ___ZNK3ctu20SharedSynchronizableI9AWDModuleE15execute_wrappedEU13block_pointerFvvE_block_invoke;
  block[3] = &unk_2A1E287F0;
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

void ___ZN9AWDModule17shutdownWithStageE13ShutdownStageN8dispatch13group_sessionE_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 120);
  *(v1 + 112) = 0;
  *(v1 + 120) = 0;
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);

    std::__shared_weak_count::__release_weak(v2);
  }
}

void AWDModule::bootstrap(void *a1, int a2, dispatch_object_t *a3)
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
    dispatch_async_f(v10, v11, dispatch::async<void ctu::SharedSynchronizable<AWDModule>::execute_wrapped<AWDModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(AWDModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<AWDModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<AWDModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke);
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
  dispatch_async_f(v17, v18, dispatch::async<void ctu::SharedSynchronizable<AWDModule>::execute_wrapped<AWDModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1>(AWDModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<AWDModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1,dispatch_queue_s *::default_delete<AWDModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_14;
  }
}

void AWDModule::registerCommandHandlers_sync(AWDModule *this)
{
  v2 = *(this + 13);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(__dst) = 0;
    _os_log_debug_impl(&dword_296FF7000, v2, OS_LOG_TYPE_DEBUG, "#D Registering command handlers", &__dst, 2u);
    v3 = *(this + 10);
    if (!v3)
    {
LABEL_68:
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }
  }

  else
  {
    v3 = *(this + 10);
    if (!v3)
    {
      goto LABEL_68;
    }
  }

  v4 = *(this + 9);
  v5 = std::__shared_weak_count::lock(v3);
  if (!v5)
  {
    goto LABEL_68;
  }

  v6 = v5;
  atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = *MEMORY[0x29EDBEE68];
  v8 = strlen(*MEMORY[0x29EDBEE68]);
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
    v44 = v9;
    v45 = v11 | 0x8000000000000000;
    __dst = p_dst;
    goto LABEL_14;
  }

  HIBYTE(v45) = v8;
  p_dst = &__dst;
  if (v8)
  {
LABEL_14:
    memmove(p_dst, v7, v9);
  }

  *(p_dst + v9) = 0;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN9AWDModule28registerCommandHandlers_syncEv_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_5_7;
  aBlock[4] = this;
  aBlock[5] = v4;
  v41 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v12 = _Block_copy(aBlock);
  v42 = v12;
  Service::registerCommandHandler(this, &__dst, &v42);
  if (v12)
  {
    _Block_release(v12);
  }

  if (SHIBYTE(v45) < 0)
  {
    operator delete(__dst);
  }

  v13 = *MEMORY[0x29EDBF110];
  v14 = strlen(*MEMORY[0x29EDBF110]);
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
    v44 = v15;
    v45 = v17 | 0x8000000000000000;
    __dst = v16;
    goto LABEL_27;
  }

  HIBYTE(v45) = v14;
  v16 = &__dst;
  if (v14)
  {
LABEL_27:
    memmove(v16, v13, v15);
  }

  *(v16 + v15) = 0;
  v37[0] = MEMORY[0x29EDCA5F8];
  v37[1] = 1174405120;
  v37[2] = ___ZN9AWDModule28registerCommandHandlers_syncEv_block_invoke_6;
  v37[3] = &__block_descriptor_tmp_9_2;
  v37[4] = this;
  v37[5] = v4;
  v38 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v18 = _Block_copy(v37);
  v39 = v18;
  Service::registerCommandHandler(this, &__dst, &v39);
  if (v18)
  {
    _Block_release(v18);
  }

  if (SHIBYTE(v45) < 0)
  {
    operator delete(__dst);
  }

  v19 = *MEMORY[0x29EDBE8C0];
  v20 = strlen(*MEMORY[0x29EDBE8C0]);
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
    v44 = v21;
    v45 = v23 | 0x8000000000000000;
    __dst = v22;
    goto LABEL_40;
  }

  HIBYTE(v45) = v20;
  v22 = &__dst;
  if (v20)
  {
LABEL_40:
    memmove(v22, v19, v21);
  }

  *(v22 + v21) = 0;
  v34[0] = MEMORY[0x29EDCA5F8];
  v34[1] = 1174405120;
  v34[2] = ___ZN9AWDModule28registerCommandHandlers_syncEv_block_invoke_10;
  v34[3] = &__block_descriptor_tmp_13_3;
  v34[4] = this;
  v34[5] = v4;
  v35 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v24 = _Block_copy(v34);
  v36 = v24;
  Service::registerCommandHandler(this, &__dst, &v36);
  if (v24)
  {
    _Block_release(v24);
  }

  if (SHIBYTE(v45) < 0)
  {
    operator delete(__dst);
  }

  v25 = *MEMORY[0x29EDBEEB0];
  v26 = strlen(*MEMORY[0x29EDBEEB0]);
  if (v26 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v27 = v26;
  if (v26 >= 0x17)
  {
    if ((v26 | 7) == 0x17)
    {
      v29 = 25;
    }

    else
    {
      v29 = (v26 | 7) + 1;
    }

    v28 = operator new(v29);
    v44 = v27;
    v45 = v29 | 0x8000000000000000;
    __dst = v28;
    goto LABEL_53;
  }

  HIBYTE(v45) = v26;
  v28 = &__dst;
  if (v26)
  {
LABEL_53:
    memmove(v28, v25, v27);
  }

  *(v28 + v27) = 0;
  v31[0] = MEMORY[0x29EDCA5F8];
  v31[1] = 1174405120;
  v31[2] = ___ZN9AWDModule28registerCommandHandlers_syncEv_block_invoke_14;
  v31[3] = &__block_descriptor_tmp_17_0;
  v31[4] = this;
  v31[5] = v4;
  v32 = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v30 = _Block_copy(v31);
  v33 = v30;
  Service::registerCommandHandler(this, &__dst, &v33);
  if (v30)
  {
    _Block_release(v30);
  }

  if (SHIBYTE(v45) < 0)
  {
    operator delete(__dst);
  }

  if (v32)
  {
    std::__shared_weak_count::__release_weak(v32);
  }

  if (v35)
  {
    std::__shared_weak_count::__release_weak(v35);
  }

  if (v38)
  {
    std::__shared_weak_count::__release_weak(v38);
  }

  if (v41)
  {
    std::__shared_weak_count::__release_weak(v41);
  }

  std::__shared_weak_count::__release_weak(v6);
}

void sub_2970C4694(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, std::__shared_weak_count *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, std::__shared_weak_count *a39)
{
  if (v40)
  {
    _Block_release(v40);
  }

  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
    if ((*(v41 - 105) & 0x80000000) == 0)
    {
LABEL_5:
      v43 = a23;
      if (!a23)
      {
LABEL_10:
        if (a31)
        {
          std::__shared_weak_count::__release_weak(a31);
        }

        if (a39)
        {
          std::__shared_weak_count::__release_weak(a39);
          std::__shared_weak_count::__release_weak(v39);
          _Unwind_Resume(a1);
        }

        std::__shared_weak_count::__release_weak(v39);
        _Unwind_Resume(a1);
      }

LABEL_9:
      std::__shared_weak_count::__release_weak(v43);
      goto LABEL_10;
    }
  }

  else if ((*(v41 - 105) & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(*(v41 - 128));
  v43 = a23;
  if (!a23)
  {
    goto LABEL_10;
  }

  goto LABEL_9;
}

void ___ZN9AWDModule28registerCommandHandlers_syncEv_block_invoke(void *a1, xpc_object_t *a2, const void **a3)
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

  v9 = v8;
  v10 = a1[5];
  if (v10)
  {
    v11 = a1[6];
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v12 = *a2;
    if (v12)
    {
      xpc_retain(v12);
      v13 = *a3;
      if (*a3)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v12 = xpc_null_create();
      v13 = *a3;
      if (*a3)
      {
LABEL_8:
        v14 = _Block_copy(v13);
        v15 = v7[10];
        if (!v15)
        {
LABEL_24:
          std::__throw_bad_weak_ptr[abi:ne200100]();
        }

        goto LABEL_12;
      }
    }

    v14 = 0;
    v15 = v7[10];
    if (!v15)
    {
      goto LABEL_24;
    }

LABEL_12:
    v16 = v7[9];
    v17 = std::__shared_weak_count::lock(v15);
    if (!v17)
    {
      goto LABEL_24;
    }

    v18 = v17;
    v19 = operator new(0x28uLL);
    v20 = v19;
    *v19 = v10;
    v19[1] = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v19[2] = v7;
    v19[3] = v12;
    v21 = xpc_null_create();
    v20[4] = v14;
    v22 = v7[11];
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    v23 = operator new(0x18uLL);
    *v23 = v20;
    v23[1] = v16;
    v23[2] = v18;
    dispatch_async_f(v22, v23, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI9AWDModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb_E3__3EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_);
    if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v18->__on_zero_shared)(v18);
      std::__shared_weak_count::__release_weak(v18);
    }

    xpc_release(v21);
    if (v11)
    {
      std::__shared_weak_count::__release_weak(v11);
    }
  }

  if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);

    std::__shared_weak_count::__release_weak(v9);
  }
}

uint64_t __copy_helper_block_e8_40c33_ZTSNSt3__18weak_ptrI9AWDModuleEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c33_ZTSNSt3__18weak_ptrI9AWDModuleEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZN9AWDModule28registerCommandHandlers_syncEv_block_invoke_6(void *a1, xpc_object_t *a2, const void **a3)
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

  v9 = v8;
  v10 = a1[5];
  if (v10)
  {
    v11 = a1[6];
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v12 = *a2;
    if (v12)
    {
      xpc_retain(v12);
      v13 = *a3;
      if (*a3)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v12 = xpc_null_create();
      v13 = *a3;
      if (*a3)
      {
LABEL_8:
        v14 = _Block_copy(v13);
        v15 = v7[10];
        if (!v15)
        {
LABEL_24:
          std::__throw_bad_weak_ptr[abi:ne200100]();
        }

        goto LABEL_12;
      }
    }

    v14 = 0;
    v15 = v7[10];
    if (!v15)
    {
      goto LABEL_24;
    }

LABEL_12:
    v16 = v7[9];
    v17 = std::__shared_weak_count::lock(v15);
    if (!v17)
    {
      goto LABEL_24;
    }

    v18 = v17;
    v19 = operator new(0x28uLL);
    v20 = v19;
    *v19 = v10;
    v19[1] = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v19[2] = v7;
    v19[3] = v12;
    v21 = xpc_null_create();
    v20[4] = v14;
    v22 = v7[11];
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    v23 = operator new(0x18uLL);
    *v23 = v20;
    v23[1] = v16;
    v23[2] = v18;
    dispatch_async_f(v22, v23, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI9AWDModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb0_E3__4EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_);
    if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v18->__on_zero_shared)(v18);
      std::__shared_weak_count::__release_weak(v18);
    }

    xpc_release(v21);
    if (v11)
    {
      std::__shared_weak_count::__release_weak(v11);
    }
  }

  if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);

    std::__shared_weak_count::__release_weak(v9);
  }
}

void ___ZN9AWDModule28registerCommandHandlers_syncEv_block_invoke_10(void *a1, xpc_object_t *a2, const void **a3)
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

  v9 = v8;
  v10 = a1[5];
  if (v10)
  {
    v11 = a1[6];
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v12 = *a2;
    if (v12)
    {
      xpc_retain(v12);
      v13 = *a3;
      if (*a3)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v12 = xpc_null_create();
      v13 = *a3;
      if (*a3)
      {
LABEL_8:
        v14 = _Block_copy(v13);
        v15 = v7[10];
        if (!v15)
        {
LABEL_24:
          std::__throw_bad_weak_ptr[abi:ne200100]();
        }

        goto LABEL_12;
      }
    }

    v14 = 0;
    v15 = v7[10];
    if (!v15)
    {
      goto LABEL_24;
    }

LABEL_12:
    v16 = v7[9];
    v17 = std::__shared_weak_count::lock(v15);
    if (!v17)
    {
      goto LABEL_24;
    }

    v18 = v17;
    v19 = operator new(0x28uLL);
    v20 = v19;
    *v19 = v10;
    v19[1] = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v19[2] = v7;
    v19[3] = v12;
    v21 = xpc_null_create();
    v20[4] = v14;
    v22 = v7[11];
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    v23 = operator new(0x18uLL);
    *v23 = v20;
    v23[1] = v16;
    v23[2] = v18;
    dispatch_async_f(v22, v23, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI9AWDModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb1_E3__5EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_);
    if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v18->__on_zero_shared)(v18);
      std::__shared_weak_count::__release_weak(v18);
    }

    xpc_release(v21);
    if (v11)
    {
      std::__shared_weak_count::__release_weak(v11);
    }
  }

  if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);

    std::__shared_weak_count::__release_weak(v9);
  }
}

void ___ZN9AWDModule28registerCommandHandlers_syncEv_block_invoke_14(void *a1, xpc_object_t *a2, const void **a3)
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

  v9 = v8;
  v10 = a1[5];
  if (v10)
  {
    v11 = a1[6];
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v12 = *a2;
    if (v12)
    {
      xpc_retain(v12);
      v13 = *a3;
      if (*a3)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v12 = xpc_null_create();
      v13 = *a3;
      if (*a3)
      {
LABEL_8:
        v14 = _Block_copy(v13);
        v15 = v7[10];
        if (!v15)
        {
LABEL_24:
          std::__throw_bad_weak_ptr[abi:ne200100]();
        }

        goto LABEL_12;
      }
    }

    v14 = 0;
    v15 = v7[10];
    if (!v15)
    {
      goto LABEL_24;
    }

LABEL_12:
    v16 = v7[9];
    v17 = std::__shared_weak_count::lock(v15);
    if (!v17)
    {
      goto LABEL_24;
    }

    v18 = v17;
    v19 = operator new(0x28uLL);
    v20 = v19;
    *v19 = v10;
    v19[1] = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v19[2] = v7;
    v19[3] = v12;
    v21 = xpc_null_create();
    v20[4] = v14;
    v22 = v7[11];
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    v23 = operator new(0x18uLL);
    *v23 = v20;
    v23[1] = v16;
    v23[2] = v18;
    dispatch_async_f(v22, v23, _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI9AWDModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb2_E3__6EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_);
    if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v18->__on_zero_shared)(v18);
      std::__shared_weak_count::__release_weak(v18);
    }

    xpc_release(v21);
    if (v11)
    {
      std::__shared_weak_count::__release_weak(v11);
    }
  }

  if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);

    std::__shared_weak_count::__release_weak(v9);
  }
}

void AWDModule::sendPayload_sync(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 112);
  if (v6)
  {
    v9 = a2[1];
    v17 = *a2;
    v18 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v14[0] = MEMORY[0x29EDCA5F8];
    v14[1] = 1174405120;
    v14[2] = ___ZN9AWDModule16sendPayload_syncENSt3__110shared_ptrIN3awd10AppContextEEENS2_11PayloadTypeERKNS0_6vectorIhNS0_9allocatorIhEEEEN8dispatch5blockIU13block_pointerFvbEEE_block_invoke;
    v14[3] = &__block_descriptor_tmp_19_0;
    v10 = *a5;
    if (*a5)
    {
      v10 = _Block_copy(v10);
    }

    v15 = v10;
    aBlock = _Block_copy(v14);
    (*(*v6 + 8))(v6, &v17, a3, a4, &aBlock);
    if (aBlock)
    {
      _Block_release(aBlock);
    }

    v11 = v18;
    if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
      v12 = v15;
      if (!v15)
      {
        return;
      }
    }

    else
    {
      v12 = v15;
      if (!v15)
      {
        return;
      }
    }

    _Block_release(v12);
  }

  else
  {
    v13 = *(a1 + 104);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_296FF7000, v13, OS_LOG_TYPE_ERROR, "Cannot send payload because driver is unavailable", buf, 2u);
    }

    (*(*a5 + 16))();
  }
}

void sub_2970C525C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *aBlock, char a15)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (a13)
  {
    _Block_release(a13);
  }

  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a15);
  _Unwind_Resume(a1);
}

void *__copy_helper_block_e8_32c43_ZTSN8dispatch5blockIU13block_pointerFvbEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 32) = result;
  return result;
}

void __destroy_helper_block_e8_32c43_ZTSN8dispatch5blockIU13block_pointerFvbEEE(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    _Block_release(v1);
  }
}

void AWDModule::enableMetricSubmission_sync(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 112);
  if (v5)
  {
    v7 = a2[1];
    v15 = *a2;
    v16 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v12[0] = MEMORY[0x29EDCA5F8];
    v12[1] = 1174405120;
    v12[2] = ___ZN9AWDModule27enableMetricSubmission_syncENSt3__110shared_ptrIN3awd10AppContextEEEbN8dispatch5blockIU13block_pointerFvbEEE_block_invoke;
    v12[3] = &__block_descriptor_tmp_22_2;
    v8 = *a4;
    if (*a4)
    {
      v8 = _Block_copy(v8);
    }

    v13 = v8;
    aBlock = _Block_copy(v12);
    (**v5)(v5, &v15, a3, &aBlock);
    if (aBlock)
    {
      _Block_release(aBlock);
    }

    v9 = v16;
    if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
      v10 = v13;
      if (!v13)
      {
        return;
      }
    }

    else
    {
      v10 = v13;
      if (!v13)
      {
        return;
      }
    }

    _Block_release(v10);
  }

  else
  {
    v11 = *(a1 + 104);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_296FF7000, v11, OS_LOG_TYPE_ERROR, "Cannot enable metric submission because driver is unavailable", buf, 2u);
    }

    (*(*a4 + 16))();
  }
}

void sub_2970C54C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *aBlock, char a15)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (a13)
  {
    _Block_release(a13);
  }

  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a15);
  _Unwind_Resume(a1);
}

void AWDModule::clearConfiguration_sync(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(a1 + 112);
  if (v4)
  {
    v5 = a2[1];
    v13 = *a2;
    v14 = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v10[0] = MEMORY[0x29EDCA5F8];
    v10[1] = 1174405120;
    v10[2] = ___ZN9AWDModule23clearConfiguration_syncENSt3__110shared_ptrIN3awd10AppContextEEEN8dispatch5blockIU13block_pointerFvbEEE_block_invoke;
    v10[3] = &__block_descriptor_tmp_25;
    v6 = *a3;
    if (*a3)
    {
      v6 = _Block_copy(v6);
    }

    v11 = v6;
    aBlock = _Block_copy(v10);
    (*(*v4 + 16))(v4, &v13, &aBlock);
    if (aBlock)
    {
      _Block_release(aBlock);
    }

    v7 = v14;
    if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
      v8 = v11;
      if (!v11)
      {
        return;
      }
    }

    else
    {
      v8 = v11;
      if (!v11)
      {
        return;
      }
    }

    _Block_release(v8);
  }

  else
  {
    v9 = *(a1 + 104);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_296FF7000, v9, OS_LOG_TYPE_ERROR, "Cannot clear configuration because driver is unavailable", buf, 2u);
    }

    (*(*a3 + 16))();
  }
}

void sub_2970C56C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *aBlock, char a15)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (a13)
  {
    _Block_release(a13);
  }

  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a15);
  _Unwind_Resume(a1);
}

void AWDModule::updateProperties_sync(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(a1 + 112);
  if (v4)
  {
    v5 = a2[1];
    v13 = *a2;
    v14 = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v10[0] = MEMORY[0x29EDCA5F8];
    v10[1] = 1174405120;
    v10[2] = ___ZN9AWDModule21updateProperties_syncENSt3__110shared_ptrIN3awd10AppContextEEEN8dispatch5blockIU13block_pointerFvbEEE_block_invoke;
    v10[3] = &__block_descriptor_tmp_28_4;
    v6 = *a3;
    if (*a3)
    {
      v6 = _Block_copy(v6);
    }

    v11 = v6;
    aBlock = _Block_copy(v10);
    (*(*v4 + 24))(v4, &v13, &aBlock);
    if (aBlock)
    {
      _Block_release(aBlock);
    }

    v7 = v14;
    if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
      v8 = v11;
      if (!v11)
      {
        return;
      }
    }

    else
    {
      v8 = v11;
      if (!v11)
      {
        return;
      }
    }

    _Block_release(v8);
  }

  else
  {
    v9 = *(a1 + 104);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_296FF7000, v9, OS_LOG_TYPE_ERROR, "Cannot update properties because driver is unavailable", buf, 2u);
    }

    (*(*a3 + 16))();
  }
}

void sub_2970C58BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *aBlock, char a15)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (a13)
  {
    _Block_release(a13);
  }

  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a15);
  _Unwind_Resume(a1);
}

void AWDModule::queryMetric_sync(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 112);
  if (v6)
  {
    v9 = a2[1];
    v17 = *a2;
    v18 = v9;
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v14[0] = MEMORY[0x29EDCA5F8];
    v14[1] = 1174405120;
    v14[2] = ___ZN9AWDModule16queryMetric_syncENSt3__110shared_ptrIN3awd10AppContextEEENS2_10MetricInfoENS2_11TriggerInfoEN8dispatch5blockIU13block_pointerFvbEEE_block_invoke;
    v14[3] = &__block_descriptor_tmp_31_0;
    v10 = *a5;
    if (*a5)
    {
      v10 = _Block_copy(v10);
    }

    v15 = v10;
    aBlock = _Block_copy(v14);
    (*(*v6 + 40))(v6, &v17, a3, a4, &aBlock);
    if (aBlock)
    {
      _Block_release(aBlock);
    }

    v11 = v18;
    if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
      v12 = v15;
      if (!v15)
      {
        return;
      }
    }

    else
    {
      v12 = v15;
      if (!v15)
      {
        return;
      }
    }

    _Block_release(v12);
  }

  else
  {
    v13 = *(a1 + 104);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_296FF7000, v13, OS_LOG_TYPE_ERROR, "Cannot query metric because driver is unavailable", buf, 2u);
    }

    (*(*a5 + 16))();
  }
}

void sub_2970C5AD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *aBlock, char a15)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (a13)
  {
    _Block_release(a13);
  }

  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a15);
  _Unwind_Resume(a1);
}

void AWDModule::appCheckIn_sync(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t *a3@<X8>)
{
  v51 = *MEMORY[0x29EDCA608];
  v5 = *(a1 + 80);
  if (!v5 || (v7 = *(a1 + 72), (v8 = std::__shared_weak_count::lock(v5)) == 0))
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

  *a3 = 0xAAAAAAAAAAAAAAAALL;
  a3[1] = 0xAAAAAAAAAAAAAAAALL;
  v10 = operator new(0x58uLL);
  v11 = v10;
  *(v10 + 1) = 0;
  *(v10 + 2) = 0;
  *v10 = &unk_2A1E28980;
  v12 = v10 + 24;
  v13 = *(a1 + 88);
  if (v13)
  {
    dispatch_retain(*(a1 + 88));
    *(v11 + 3) = v13;
    dispatch_retain(v13);
    *(v11 + 33) = 0;
    *(v11 + 40) = 0u;
    *(v11 + 56) = 0u;
    *(v11 + 72) = 0u;
    v11[32] = a2;
    dispatch_release(v13);
  }

  else
  {
    *(v10 + 3) = 0;
    *(v10 + 33) = 0;
    *(v10 + 40) = 0u;
    *(v10 + 56) = 0u;
    *(v10 + 72) = 0u;
    v10[32] = a2;
  }

  *a3 = v12;
  a3[1] = v11;
  atomic_fetch_add_explicit(v11 + 2, 1uLL, memory_order_relaxed);
  v15 = (a1 + 136);
  v14 = *(a1 + 136);
  if (v14)
  {
    while (1)
    {
      while (1)
      {
        v16 = v14;
        v17 = *(v14 + 32);
        if (v17 <= a2)
        {
          break;
        }

        v14 = *v16;
        v15 = v16;
        if (!*v16)
        {
          goto LABEL_15;
        }
      }

      if (v17 >= a2)
      {
        break;
      }

      v14 = v16[1];
      if (!v14)
      {
        v15 = v16 + 1;
        goto LABEL_15;
      }
    }

    v21 = v16;
    atomic_fetch_add_explicit(v11 + 1, 1uLL, memory_order_relaxed);
    v20 = v16[6];
    v21[5] = v12;
    v21[6] = v11;
    if (!v20)
    {
LABEL_21:
      v22 = *(a1 + 104);
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }
  }

  else
  {
    v16 = (a1 + 136);
LABEL_15:
    v18 = operator new(0x38uLL);
    *(v18 + 32) = a2;
    *(v18 + 5) = 0;
    *(v18 + 6) = 0;
    *v18 = 0;
    *(v18 + 1) = 0;
    *(v18 + 2) = v16;
    *v15 = v18;
    v19 = **(a1 + 128);
    if (v19)
    {
      *(a1 + 128) = v19;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(a1 + 136), v18);
    ++*(a1 + 144);
    atomic_fetch_add_explicit(v11 + 1, 1uLL, memory_order_relaxed);
    v20 = *(v18 + 6);
    *(v18 + 5) = v12;
    *(v18 + 6) = v11;
    if (!v20)
    {
      goto LABEL_21;
    }
  }

  if (atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_21;
  }

  (v20->__on_zero_shared)(v20);
  std::__shared_weak_count::__release_weak(v20);
  v22 = *(a1 + 104);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
LABEL_22:
    v23 = awd::asString();
    *buf = 136315138;
    v50 = v23;
    _os_log_impl(&dword_296FF7000, v22, OS_LOG_TYPE_DEFAULT, "#I New app checking-in: %s", buf, 0xCu);
  }

LABEL_23:
  v24 = *a3;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN9AWDModule15appCheckIn_syncEN3awd5AppIDE_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_35_0;
  aBlock[4] = a1;
  aBlock[5] = v7;
  v47 = v9;
  atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v48 = _Block_copy(aBlock);
  awd::AppContext::setHandler();
  if (v48)
  {
    _Block_release(v48);
  }

  v41[0] = MEMORY[0x29EDCA5F8];
  v41[1] = 1174405120;
  v41[2] = ___ZN9AWDModule15appCheckIn_syncEN3awd5AppIDE_block_invoke_36;
  v41[3] = &__block_descriptor_tmp_38;
  v41[4] = a1;
  v41[5] = v7;
  v42 = v9;
  atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v43 = v12;
  v44 = v11;
  atomic_fetch_add_explicit(v11 + 2, 1uLL, memory_order_relaxed);
  v45 = _Block_copy(v41);
  awd::AppContext::setHandler();
  if (v45)
  {
    _Block_release(v45);
  }

  v36[0] = MEMORY[0x29EDCA5F8];
  v36[1] = 1174405120;
  v36[2] = ___ZN9AWDModule15appCheckIn_syncEN3awd5AppIDE_block_invoke_39;
  v36[3] = &__block_descriptor_tmp_43_0;
  v36[4] = a1;
  v36[5] = v7;
  v37 = v9;
  atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v38 = v12;
  v39 = v11;
  atomic_fetch_add_explicit(v11 + 2, 1uLL, memory_order_relaxed);
  v40 = _Block_copy(v36);
  awd::AppContext::setHandler();
  if (v40)
  {
    _Block_release(v40);
  }

  v31[0] = MEMORY[0x29EDCA5F8];
  v31[1] = 1174405120;
  v31[2] = ___ZN9AWDModule15appCheckIn_syncEN3awd5AppIDE_block_invoke_44;
  v31[3] = &__block_descriptor_tmp_48_2;
  v31[4] = a1;
  v31[5] = v7;
  v32 = v9;
  atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v33 = v12;
  v34 = v11;
  atomic_fetch_add_explicit(v11 + 2, 1uLL, memory_order_relaxed);
  v35 = _Block_copy(v31);
  awd::AppContext::setHandler();
  if (v35)
  {
    _Block_release(v35);
  }

  if (*(a1 + 112))
  {
    v25 = a3[1];
    v30 = v25;
    if (v25)
    {
      atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    awd::AwdCommandDriver::checkIn();
    if (v30 && !atomic_fetch_add(&v30->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v30->__on_zero_shared)(v30);
      std::__shared_weak_count::__release_weak(v30);
      v26 = v34;
      if (!v34)
      {
        goto LABEL_41;
      }

LABEL_40:
      std::__shared_weak_count::__release_weak(v26);
      goto LABEL_41;
    }

LABEL_39:
    v26 = v34;
    if (!v34)
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

  v27 = *(a1 + 104);
  if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_39;
  }

  v29 = awd::asString();
  *buf = 136315138;
  v50 = v29;
  _os_log_error_impl(&dword_296FF7000, v27, OS_LOG_TYPE_ERROR, "Cannot check in context of app %s because driver is unavailable", buf, 0xCu);
  v26 = v34;
  if (v34)
  {
    goto LABEL_40;
  }

LABEL_41:
  if (v32)
  {
    std::__shared_weak_count::__release_weak(v32);
  }

  if (v39)
  {
    std::__shared_weak_count::__release_weak(v39);
  }

  if (v37)
  {
    std::__shared_weak_count::__release_weak(v37);
  }

  if (v44)
  {
    std::__shared_weak_count::__release_weak(v44);
  }

  if (v42)
  {
    std::__shared_weak_count::__release_weak(v42);
  }

  if (v47)
  {
    std::__shared_weak_count::__release_weak(v47);
  }

  std::__shared_weak_count::__release_weak(v11);
  std::__shared_weak_count::__release_weak(v9);
  v28 = *MEMORY[0x29EDCA608];
}

void sub_2970C6158(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, std::__shared_weak_count *a19, void *aBlock, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, std::__shared_weak_count *a27, uint64_t a28, std::__shared_weak_count *a29, void *a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, std::__shared_weak_count *a37, uint64_t a38, std::__shared_weak_count *a39)
{
  if (a19)
  {
    std::__shared_weak_count::__release_weak(a19);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_weak(a17);
  }

  if (a29)
  {
    std::__shared_weak_count::__release_weak(a29);
  }

  if (a27)
  {
    std::__shared_weak_count::__release_weak(a27);
  }

  if (a39)
  {
    std::__shared_weak_count::__release_weak(a39);
  }

  if (a37)
  {
    std::__shared_weak_count::__release_weak(a37);
  }

  v44 = *(v42 - 160);
  if (v44)
  {
    std::__shared_weak_count::__release_weak(v44);
  }

  std::__shared_weak_count::__release_weak(v40);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v41);
  std::__shared_weak_count::__release_weak(v39);
  _Unwind_Resume(a1);
}

void sub_2970C6268(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void *__copy_helper_block_e8_40c33_ZTSNSt3__18weak_ptrI9AWDModuleEE56c41_ZTSNSt3__18weak_ptrIN3awd10AppContextEEE(void *result, void *a2)
{
  v2 = a2[6];
  result[5] = a2[5];
  result[6] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  v3 = a2[8];
  result[7] = a2[7];
  result[8] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_40c33_ZTSNSt3__18weak_ptrI9AWDModuleEE56c41_ZTSNSt3__18weak_ptrIN3awd10AppContextEEE(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

atomic_ullong *std::shared_ptr<AWDModule>::shared_ptr[abi:ne200100]<AWDModule,std::shared_ptr<AWDModule> ctu::SharedSynchronizable<AWDModule>::make_shared_ptr<AWDModule>(AWDModule*)::{lambda(AWDModule*)#1},0>(atomic_ullong *a1, atomic_ullong a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_2A1E287A8;
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

void sub_2970C6430(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[11], v1, std::shared_ptr<AWDModule> ctu::SharedSynchronizable<AWDModule>::make_shared_ptr<AWDModule>(AWDModule*)::{lambda(AWDModule*)#1}::operator() const(AWDModule*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<AWDModule *,std::shared_ptr<AWDModule> ctu::SharedSynchronizable<AWDModule>::make_shared_ptr<AWDModule>(AWDModule*)::{lambda(AWDModule *)#1},std::allocator<AWDModule>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<AWDModule *,std::shared_ptr<AWDModule> ctu::SharedSynchronizable<AWDModule>::make_shared_ptr<AWDModule>(AWDModule*)::{lambda(AWDModule *)#1},std::allocator<AWDModule>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableI9AWDModuleE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableI9AWDModuleE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableI9AWDModuleE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableI9AWDModuleE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::shared_ptr<AWDModule> ctu::SharedSynchronizable<AWDModule>::make_shared_ptr<AWDModule>(AWDModule*)::{lambda(AWDModule*)#1}::operator() const(AWDModule*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void ___ZNK3ctu20SharedSynchronizableI9AWDModuleE20execute_wrapped_syncIZNS1_4initEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS5__block_invoke(uint64_t a1)
{
  v1 = *(**(a1 + 40) + 104);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_296FF7000, v1, OS_LOG_TYPE_DEFAULT, "#I Initializing", v2, 2u);
  }
}

uint64_t __copy_helper_block_e8_40c37_ZTSNSt3__110shared_ptrIK9AWDModuleEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c37_ZTSNSt3__110shared_ptrIK9AWDModuleEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

void dispatch::async<void ctu::SharedSynchronizable<AWDModule>::execute_wrapped<AWDModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(AWDModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<AWDModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<AWDModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v2 = *a1;
  AWDModule::registerCommandHandlers_sync(**a1);
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

void sub_2970C672C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  std::unique_ptr<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0,std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<AWDModule>::execute_wrapped<AWDModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1>(AWDModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<AWDModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1,dispatch_queue_s *::default_delete<AWDModule::bootstrap(BootstrapStage,dispatch::group_session)::$_1>>)::{lambda(void *)#1}::__invoke(void *__p)
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

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI9AWDModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb_E3__3EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 16);
  v44 = 0;
  v45 = &v44;
  v46 = 0x2000000000;
  v47 = -534716414;
  if (MEMORY[0x29C26CE60](*(v1 + 24)) == MEMORY[0x29EDCAA00])
  {
    value = xpc_dictionary_get_value(*(v1 + 24), *MEMORY[0x29EDBF8B0]);
    __p = value;
    if (value)
    {
      xpc_retain(value);
    }

    else
    {
      __p = xpc_null_create();
    }

    v13 = xpc::dyn_cast_or_default(&__p, 0xFFFFFFFFLL);
    xpc_release(__p);
    if (v13 != 1)
    {
      if (v13)
      {
        if ((v13 - 2) > 3u)
        {
          goto LABEL_2;
        }
      }

      else if ((capabilities::abs::supportsWirelessTelemetryUsingMultiClientModel(v14) & 1) == 0)
      {
        goto LABEL_2;
      }
    }

    v42 = 0;
    v43 = 0;
    v15 = *(v2 + 136);
    if (!v15)
    {
      goto LABEL_32;
    }

    v16 = v2 + 136;
    do
    {
      v17 = *(v15 + 32);
      v18 = v17 >= v13;
      v19 = v17 < v13;
      if (v18)
      {
        v16 = v15;
      }

      v15 = *(v15 + 8 * v19);
    }

    while (v15);
    if (v16 != v2 + 136 && *(v16 + 32) <= v13)
    {
      v21 = *(v16 + 40);
      v20 = *(v16 + 48);
      if (v20)
      {
        atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      }
    }

    else
    {
LABEL_32:
      AWDModule::appCheckIn_sync(v2, v13, &__p);
      v21 = __p;
      v20 = v31;
    }

    v42 = v21;
    v43 = v20;
    if (v21)
    {
      *(v45 + 6) = -534716416;
      v22 = xpc_dictionary_get_value(*(v1 + 24), *MEMORY[0x29EDBE650]);
      __p = v22;
      if (v22)
      {
        xpc_retain(v22);
      }

      else
      {
        __p = xpc_null_create();
      }

      v23 = xpc::dyn_cast_or_default(&__p, 0xFFFFFFFFLL);
      xpc_release(__p);
      memset(object, 170, sizeof(object));
      v24 = xpc_dictionary_get_value(*(v1 + 24), *MEMORY[0x29EDBE4D8]);
      v40[0] = v24;
      if (v24)
      {
        xpc_retain(v24);
      }

      else
      {
        v40[0] = xpc_null_create();
      }

      __p = 0;
      v31 = 0;
      v32 = 0;
      xpc::dyn_cast_or_default();
      if (__p)
      {
        v31 = __p;
        operator delete(__p);
      }

      xpc_release(v40[0]);
      v25 = object[0];
      if (object[1] != object[0] && v23 <= 2u)
      {
        v40[0] = v21;
        v40[1] = v20;
        if (v20)
        {
          atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        __p = MEMORY[0x29EDCA5F8];
        v31 = 1174405120;
        v32 = ___ZZZN9AWDModule28registerCommandHandlers_syncEvEUb_ENK3__3clEv_block_invoke;
        v33 = &unk_2A1E28860;
        v35 = v2;
        v26 = *(v1 + 32);
        if (v26)
        {
          v26 = _Block_copy(v26);
        }

        aBlock = v26;
        v37 = v21;
        v38 = v20;
        if (v20)
        {
          atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v34 = &v44;
        v27 = _Block_copy(&__p);
        v39 = v27;
        AWDModule::sendPayload_sync(v2, v40, v23, object, &v39);
        if (v27)
        {
          _Block_release(v27);
        }

        if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v20->__on_zero_shared)(v20);
          std::__shared_weak_count::__release_weak(v20);
        }

        v28 = v38;
        if (v38 && !atomic_fetch_add(&v38->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v28->__on_zero_shared)(v28);
          std::__shared_weak_count::__release_weak(v28);
        }

        if (aBlock)
        {
          _Block_release(aBlock);
        }

        v25 = object[0];
      }

      if (v25)
      {
        object[1] = v25;
        operator delete(v25);
      }

      v20 = v43;
    }

    if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v20->__on_zero_shared)(v20);
      std::__shared_weak_count::__release_weak(v20);
    }
  }

LABEL_2:
  v3 = v45;
  if (*(v45 + 6) == -534716414)
  {
    v4 = xpc_null_create();
    v5 = *(v1 + 32);
    v6 = *(v3 + 6);
    object[0] = v4;
    v7 = xpc_null_create();
    (*(v5 + 16))(v5, v6, object);
    xpc_release(object[0]);
    xpc_release(v7);
  }

  _Block_object_dispose(&v44, 8);
  if (v1)
  {
    v8 = *(v1 + 32);
    if (v8)
    {
      _Block_release(v8);
    }

    xpc_release(*(v1 + 24));
    *(v1 + 24) = 0;
    v9 = *(v1 + 8);
    if (v9)
    {
      std::__shared_weak_count::__release_weak(v9);
    }

    operator delete(v1);
  }

  v10 = a1;
  if (a1)
  {
    v11 = a1[2];
    if (v11)
    {
      if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v11->__on_zero_shared)(v11);
        std::__shared_weak_count::__release_weak(v11);
        v10 = a1;
      }
    }

    operator delete(v10);
  }
}

void sub_2970C6CF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, xpc_object_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *aBlock, uint64_t a19, uint64_t a20, uint64_t a21, xpc_object_t object, uint64_t a23, void *__p, uint64_t a25)
{
  if (v25)
  {
    _Block_release(v25);
  }

  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v26 + 56);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&object);
  if (__p)
  {
    a25 = __p;
    operator delete(__p);
  }

  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v27 - 112);
  _Block_object_dispose((v27 - 96), 8);
  _ZNSt3__110unique_ptrIZZN9AWDModule28registerCommandHandlers_syncEvEUb_E3__3NS_14default_deleteIS2_EEED1B8ne200100Ev(&a11);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

uint64_t *_ZNSt3__110unique_ptrIZZN9AWDModule28registerCommandHandlers_syncEvEUb_E3__3NS_14default_deleteIS2_EEED1B8ne200100Ev(uint64_t *a1)
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

void ___ZZZN9AWDModule28registerCommandHandlers_syncEvEUb_ENK3__3clEv_block_invoke(void *a1, char a2)
{
  if (a2)
  {
    v3 = a1[5];
    v4 = a1[8];
    v15[0] = a1[7];
    v15[1] = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1174405120;
    aBlock[2] = ___ZZZN9AWDModule28registerCommandHandlers_syncEvEUb_ENK3__3clEv_block_invoke_2;
    aBlock[3] = &unk_2A1E28828;
    aBlock[4] = a1[4];
    v13 = 1;
    v5 = a1[6];
    if (v5)
    {
      v5 = _Block_copy(v5);
    }

    v12 = v5;
    v6 = _Block_copy(aBlock);
    v14 = v6;
    AWDModule::enableMetricSubmission_sync(v3, v15, 1, &v14);
    if (v6)
    {
      _Block_release(v6);
    }

    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      v7 = v12;
      if (v12)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v7 = v12;
      if (v12)
      {
LABEL_11:
        _Block_release(v7);
      }
    }
  }

  else
  {
    v8 = xpc_null_create();
    v9 = a1[6];
    v16 = v8;
    v10 = xpc_null_create();
    (*(v9 + 16))(v9, 3760250880, &v16);
    xpc_release(v16);
    xpc_release(v10);
  }
}

void sub_2970C701C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *aBlock)
{
  xpc_release(*(v16 - 40));
  xpc_release(v15);
  _Unwind_Resume(a1);
}

void ___ZZZN9AWDModule28registerCommandHandlers_syncEvEUb_ENK3__3clEv_block_invoke_2(uint64_t a1, unsigned __int8 a2)
{
  if ((*(a1 + 48) & a2) != 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = -534716416;
  }

  *(*(*(a1 + 32) + 8) + 24) = v3;
  v4 = *(*(a1 + 32) + 8);
  v5 = xpc_null_create();
  v6 = *(a1 + 40);
  v7 = *(v4 + 24);
  object = v5;
  v8 = xpc_null_create();
  (*(v6 + 16))(v6, v7, &object);
  xpc_release(object);
  xpc_release(v8);
}

void sub_2970C711C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(v10);
  _Unwind_Resume(a1);
}

void *__copy_helper_block_e8_48c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE56c44_ZTSNSt3__110shared_ptrIN3awd10AppContextEEE(void *a1, void *a2)
{
  result = a2[6];
  if (result)
  {
    result = _Block_copy(result);
  }

  v6 = a2[7];
  v5 = a2[8];
  a1[6] = result;
  a1[7] = v6;
  a1[8] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_48c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE56c44_ZTSNSt3__110shared_ptrIN3awd10AppContextEEE(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
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

  _Block_release(v2);
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI9AWDModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb0_E3__4EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 16);
  v29 = 0;
  v30 = &v29;
  v31 = 0x2000000000;
  v32 = -534716414;
  if (MEMORY[0x29C26CE60](*(v1 + 24)) == MEMORY[0x29EDCAA00])
  {
    value = xpc_dictionary_get_value(*(v1 + 24), *MEMORY[0x29EDBF8B0]);
    object[0] = value;
    if (value)
    {
      xpc_retain(value);
    }

    else
    {
      object[0] = xpc_null_create();
    }

    v13 = xpc::dyn_cast_or_default(object, 0xFFFFFFFFLL);
    xpc_release(object[0]);
    if (v13 != 1)
    {
      if (v13)
      {
        if (v13 - 2 > 3)
        {
          goto LABEL_2;
        }
      }

      else if ((capabilities::abs::supportsWirelessTelemetryUsingMultiClientModel(v14) & 1) == 0)
      {
        goto LABEL_2;
      }
    }

    v15 = v2[17];
    if (v15)
    {
      v16 = v2 + 17;
      do
      {
        v17 = *(v15 + 32);
        v18 = v17 >= v13;
        v19 = v17 < v13;
        if (v18)
        {
          v16 = v15;
        }

        v15 = *(v15 + 8 * v19);
      }

      while (v15);
      if (v16 != v2 + 17 && *(v16 + 32) <= v13)
      {
        *(v30 + 6) = -534716416;
        v20 = v16[6];
        v28[0] = v16[5];
        v28[1] = v20;
        if (v20)
        {
          atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        object[0] = MEMORY[0x29EDCA5F8];
        object[1] = 1174405120;
        object[2] = ___ZZZN9AWDModule28registerCommandHandlers_syncEvEUb0_ENK3__4clEv_block_invoke;
        object[3] = &unk_2A1E288D0;
        object[5] = v2;
        v21 = *(v1 + 32);
        if (v21)
        {
          v21 = _Block_copy(v21);
        }

        aBlock = v21;
        v26 = v16;
        object[4] = &v29;
        v22 = _Block_copy(object);
        v27 = v22;
        AWDModule::clearConfiguration_sync(v2, v28, &v27);
        if (v22)
        {
          _Block_release(v22);
        }

        if (v20 && !atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v20->__on_zero_shared)(v20);
          std::__shared_weak_count::__release_weak(v20);
        }

        if (aBlock)
        {
          _Block_release(aBlock);
        }
      }
    }
  }

LABEL_2:
  v3 = v30;
  if (*(v30 + 6) == -534716414)
  {
    v4 = xpc_null_create();
    v5 = *(v1 + 32);
    v6 = *(v3 + 6);
    v33 = v4;
    v7 = xpc_null_create();
    (*(v5 + 16))(v5, v6, &v33);
    xpc_release(v33);
    xpc_release(v7);
  }

  _Block_object_dispose(&v29, 8);
  if (v1)
  {
    v8 = *(v1 + 32);
    if (v8)
    {
      _Block_release(v8);
    }

    xpc_release(*(v1 + 24));
    *(v1 + 24) = 0;
    v9 = *(v1 + 8);
    if (v9)
    {
      std::__shared_weak_count::__release_weak(v9);
    }

    operator delete(v1);
  }

  v10 = a1;
  if (a1)
  {
    v11 = a1[2];
    if (v11)
    {
      if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v11->__on_zero_shared)(v11);
        std::__shared_weak_count::__release_weak(v11);
        v10 = a1;
      }
    }

    operator delete(v10);
  }
}

void sub_2970C7540(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *aBlock, uint64_t a18, uint64_t a19, char a20)
{
  if (v20)
  {
    _Block_release(v20);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a20);
  _Block_object_dispose((v21 - 88), 8);
  _ZNSt3__110unique_ptrIZZN9AWDModule28registerCommandHandlers_syncEvEUb0_E3__4NS_14default_deleteIS2_EEED1B8ne200100Ev(&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t *_ZNSt3__110unique_ptrIZZN9AWDModule28registerCommandHandlers_syncEvEUb0_E3__4NS_14default_deleteIS2_EEED1B8ne200100Ev(uint64_t *a1)
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

void ___ZZZN9AWDModule28registerCommandHandlers_syncEvEUb0_ENK3__4clEv_block_invoke(void *a1, char a2)
{
  if (a2)
  {
    v3 = a1[5];
    v4 = a1[7];
    v5 = *(v4 + 48);
    v16[0] = *(v4 + 40);
    v16[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    aBlock[0] = MEMORY[0x29EDCA5F8];
    aBlock[1] = 1174405120;
    aBlock[2] = ___ZZZN9AWDModule28registerCommandHandlers_syncEvEUb0_ENK3__4clEv_block_invoke_2;
    aBlock[3] = &unk_2A1E28898;
    aBlock[4] = a1[4];
    v14 = 1;
    v6 = a1[6];
    if (v6)
    {
      v6 = _Block_copy(v6);
    }

    v13 = v6;
    v7 = _Block_copy(aBlock);
    v15 = v7;
    AWDModule::enableMetricSubmission_sync(v3, v16, 0, &v15);
    if (v7)
    {
      _Block_release(v7);
    }

    if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
      v8 = v13;
      if (v13)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v8 = v13;
      if (v13)
      {
LABEL_11:
        _Block_release(v8);
      }
    }
  }

  else
  {
    v9 = xpc_null_create();
    v10 = a1[6];
    v17 = v9;
    v11 = xpc_null_create();
    (*(v10 + 16))(v10, 3760250880, &v17);
    xpc_release(v17);
    xpc_release(v11);
  }
}

void sub_2970C77F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *aBlock)
{
  xpc_release(*(v16 - 40));
  xpc_release(v15);
  _Unwind_Resume(a1);
}

void ___ZZZN9AWDModule28registerCommandHandlers_syncEvEUb0_ENK3__4clEv_block_invoke_2(uint64_t a1, unsigned __int8 a2)
{
  if ((*(a1 + 48) & a2) != 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = -534716416;
  }

  *(*(*(a1 + 32) + 8) + 24) = v3;
  v4 = *(*(a1 + 32) + 8);
  v5 = xpc_null_create();
  v6 = *(a1 + 40);
  v7 = *(v4 + 24);
  object = v5;
  v8 = xpc_null_create();
  (*(v6 + 16))(v6, v7, &object);
  xpc_release(object);
  xpc_release(v8);
}

void sub_2970C78F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(v10);
  _Unwind_Resume(a1);
}

void *__copy_helper_block_e8_48c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 48) = result;
  return result;
}

void __destroy_helper_block_e8_48c54_ZTSN8dispatch5blockIU13block_pointerFviN3xpc4dictEEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    _Block_release(v1);
  }
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI9AWDModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb1_E3__5EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 16);
  v50 = 0;
  v51 = &v50;
  v52 = 0x2000000000;
  v53 = -534716414;
  if (MEMORY[0x29C26CE60](*(v1 + 24)) == MEMORY[0x29EDCAA00])
  {
    value = xpc_dictionary_get_value(*(v1 + 24), *MEMORY[0x29EDBF8B0]);
    aBlock[0] = value;
    if (value)
    {
      xpc_retain(value);
    }

    else
    {
      aBlock[0] = xpc_null_create();
    }

    v13 = xpc::dyn_cast_or_default(aBlock, 0xFFFFFFFFLL);
    xpc_release(aBlock[0]);
    if (v13 <= 5u && (((1 << v13) & 0x36) != 0 || !v13 && capabilities::abs::supportsWirelessTelemetryUsingMultiClientModel(v14)))
    {
      v15 = *(v2 + 136);
      if (v15)
      {
        v16 = v2 + 136;
        do
        {
          v17 = *(v15 + 32);
          v18 = v17 >= v13;
          v19 = v17 < v13;
          if (v18)
          {
            v16 = v15;
          }

          v15 = *(v15 + 8 * v19);
        }

        while (v15);
        if (v16 != v2 + 136 && *(v16 + 32) <= v13)
        {
          *(v51 + 6) = -534716416;
          v20 = xpc_dictionary_get_value(*(v1 + 24), *MEMORY[0x29EDBE5E8]);
          aBlock[0] = v20;
          if (v20)
          {
            xpc_retain(v20);
          }

          else
          {
            aBlock[0] = xpc_null_create();
          }

          v21 = xpc::dyn_cast_or_default(aBlock, 0);
          xpc_release(aBlock[0]);
          v22 = xpc_dictionary_get_value(*(v1 + 24), *MEMORY[0x29EDBE680]);
          aBlock[0] = v22;
          if (v22)
          {
            xpc_retain(v22);
          }

          else
          {
            aBlock[0] = xpc_null_create();
          }

          v23 = xpc::dyn_cast_or_default(aBlock, 0);
          xpc_release(aBlock[0]);
          v24 = xpc_dictionary_get_value(*(v1 + 24), *MEMORY[0x29EDBE5A0]);
          aBlock[0] = v24;
          if (v24)
          {
            xpc_retain(v24);
          }

          else
          {
            aBlock[0] = xpc_null_create();
          }

          v25 = xpc::dyn_cast_or_default(aBlock, 0);
          xpc_release(aBlock[0]);
          v26 = xpc_dictionary_get_value(*(v1 + 24), *MEMORY[0x29EDBE570]);
          aBlock[0] = v26;
          if (v26)
          {
            xpc_retain(v26);
          }

          else
          {
            aBlock[0] = xpc_null_create();
          }

          v27 = xpc::dyn_cast_or_default(aBlock, 0);
          xpc_release(aBlock[0]);
          v28 = xpc_dictionary_get_value(*(v1 + 24), *MEMORY[0x29EDBE520]);
          aBlock[0] = v28;
          if (v28)
          {
            xpc_retain(v28);
          }

          else
          {
            aBlock[0] = xpc_null_create();
          }

          v29 = xpc::dyn_cast_or_default(aBlock, 0);
          xpc_release(aBlock[0]);
          v30 = xpc_dictionary_get_value(*(v1 + 24), *MEMORY[0x29EDBE6D8]);
          aBlock[0] = v30;
          if (v30)
          {
            xpc_retain(v30);
          }

          else
          {
            aBlock[0] = xpc_null_create();
          }

          v31 = xpc::dyn_cast_or_default(aBlock, 0);
          xpc_release(aBlock[0]);
          v32 = *(v16 + 40);
          v33 = *(v16 + 48);
          v49[0] = v32;
          v49[1] = v33;
          if (v33)
          {
            atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          object = __PAIR64__(v29, v27);
          v43 = 0;
          v44 = v31;
          v45 = 0;
          v46 = -1431699456;
          v47 = -1431655936;
          v48 = -1431655936;
          v40[0] = v25;
          v40[1] = v21;
          v40[2] = v23;
          v40[3] = -1431655766;
          v41 = 0;
          aBlock[0] = MEMORY[0x29EDCA5F8];
          aBlock[1] = 1174405120;
          aBlock[2] = ___ZZZN9AWDModule28registerCommandHandlers_syncEvEUb1_ENK3__5clEv_block_invoke;
          aBlock[3] = &unk_2A1E28908;
          aBlock[4] = &v50;
          v34 = *(v1 + 32);
          if (v34)
          {
            v34 = _Block_copy(v34);
          }

          v38 = v34;
          v35 = _Block_copy(aBlock);
          v39 = v35;
          AWDModule::queryMetric_sync(v2, v49, &object, v40, &v39);
          if (v35)
          {
            _Block_release(v35);
          }

          if (v33 && !atomic_fetch_add(&v33->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v33->__on_zero_shared)(v33);
            std::__shared_weak_count::__release_weak(v33);
          }

          if (v38)
          {
            _Block_release(v38);
          }
        }
      }
    }
  }

  v3 = v51;
  if (*(v51 + 6) == -534716414)
  {
    v4 = xpc_null_create();
    v5 = *(v1 + 32);
    v6 = *(v3 + 6);
    object = v4;
    v7 = xpc_null_create();
    (*(v5 + 16))(v5, v6, &object);
    xpc_release(object);
    xpc_release(v7);
  }

  _Block_object_dispose(&v50, 8);
  if (v1)
  {
    v8 = *(v1 + 32);
    if (v8)
    {
      _Block_release(v8);
    }

    xpc_release(*(v1 + 24));
    *(v1 + 24) = 0;
    v9 = *(v1 + 8);
    if (v9)
    {
      std::__shared_weak_count::__release_weak(v9);
    }

    operator delete(v1);
  }

  v10 = a1;
  if (a1)
  {
    v11 = a1[2];
    if (v11)
    {
      if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v11->__on_zero_shared)(v11);
        std::__shared_weak_count::__release_weak(v11);
        v10 = a1;
      }
    }

    operator delete(v10);
  }
}

void sub_2970C7E98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, xpc_object_t object, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *aBlock, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, xpc_object_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  if (v26)
  {
    _Block_release(v26);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a26);
  _Block_object_dispose((v27 - 120), 8);
  _ZNSt3__110unique_ptrIZZN9AWDModule28registerCommandHandlers_syncEvEUb1_E3__5NS_14default_deleteIS2_EEED1B8ne200100Ev(&a11);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

uint64_t *_ZNSt3__110unique_ptrIZZN9AWDModule28registerCommandHandlers_syncEvEUb1_E3__5NS_14default_deleteIS2_EEED1B8ne200100Ev(uint64_t *a1)
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

void ___ZZZN9AWDModule28registerCommandHandlers_syncEvEUb1_ENK3__5clEv_block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = 0;
  }

  else
  {
    v3 = -534716416;
  }

  *(*(*(a1 + 32) + 8) + 24) = v3;
  v4 = *(*(a1 + 32) + 8);
  v5 = xpc_null_create();
  v6 = *(a1 + 40);
  v7 = *(v4 + 24);
  object = v5;
  v8 = xpc_null_create();
  (*(v6 + 16))(v6, v7, &object);
  xpc_release(object);
  xpc_release(v8);
}

void sub_2970C8110(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(v10);
  _Unwind_Resume(a1);
}

void _ZZN8dispatch5asyncIZNK3ctu20SharedSynchronizableI9AWDModuleE15execute_wrappedIZZNS3_28registerCommandHandlers_syncEvEUb2_E3__6EEvOT_EUlvE_EEvP16dispatch_queue_sNSt3__110unique_ptrIS7_NSC_14default_deleteIS7_EEEEENUlPvE_8__invokeESH_(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 16);
  v33 = 0;
  v34 = &v33;
  v35 = 0x2000000000;
  v36 = -534716414;
  if (MEMORY[0x29C26CE60](*(v1 + 24)) == MEMORY[0x29EDCAA00])
  {
    value = xpc_dictionary_get_value(*(v1 + 24), *MEMORY[0x29EDBF8B0]);
    object[0] = value;
    if (value)
    {
      xpc_retain(value);
    }

    else
    {
      object[0] = xpc_null_create();
    }

    v13 = xpc::dyn_cast_or_default(object, 0xFFFFFFFFLL);
    xpc_release(object[0]);
    if (v13 <= 5u && (((1 << v13) & 0x36) != 0 || !v13 && capabilities::abs::supportsWirelessTelemetryUsingMultiClientModel(v14)))
    {
      v15 = *(v2 + 136);
      if (v15)
      {
        v16 = v2 + 136;
        do
        {
          v17 = *(v15 + 32);
          v18 = v17 >= v13;
          v19 = v17 < v13;
          if (v18)
          {
            v16 = v15;
          }

          v15 = *(v15 + 8 * v19);
        }

        while (v15);
        if (v16 != v2 + 136 && *(v16 + 32) <= v13)
        {
          *(v34 + 6) = -534716416;
          v20 = xpc_dictionary_get_value(*(v1 + 24), *MEMORY[0x29EDBE910]);
          object[0] = v20;
          if (v20)
          {
            xpc_retain(v20);
          }

          else
          {
            object[0] = xpc_null_create();
          }

          v21 = xpc::dyn_cast_or_default(object, 0);
          xpc_release(object[0]);
          v22 = xpc_dictionary_get_value(*(v1 + 24), *MEMORY[0x29EDBE5D0]);
          object[0] = v22;
          if (v22)
          {
            xpc_retain(v22);
          }

          else
          {
            object[0] = xpc_null_create();
          }

          v23 = xpc::dyn_cast_or_default(object, 0);
          xpc_release(object[0]);
          LOWORD(v37) = -21846;
          BYTE2(v37) = -86;
          LOBYTE(v37) = awd::AppContext::getProperties(*(v16 + 40));
          BYTE1(v37) = v23;
          BYTE2(v37) = v21;
          v24 = *(v16 + 40);
          awd::AppContext::setProperties();
          v25 = *(v16 + 48);
          v32[0] = *(v16 + 40);
          v32[1] = v25;
          if (v25)
          {
            atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          object[0] = MEMORY[0x29EDCA5F8];
          object[1] = 1174405120;
          object[2] = ___ZZZN9AWDModule28registerCommandHandlers_syncEvEUb2_ENK3__6clEv_block_invoke;
          object[3] = &unk_2A1E28940;
          object[4] = &v33;
          v26 = *(v1 + 32);
          if (v26)
          {
            v26 = _Block_copy(v26);
          }

          aBlock = v26;
          v27 = _Block_copy(object);
          v31 = v27;
          AWDModule::updateProperties_sync(v2, v32, &v31);
          if (v27)
          {
            _Block_release(v27);
          }

          if (v25 && !atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v25->__on_zero_shared)(v25);
            std::__shared_weak_count::__release_weak(v25);
          }

          if (aBlock)
          {
            _Block_release(aBlock);
          }
        }
      }
    }
  }

  v3 = v34;
  if (*(v34 + 6) == -534716414)
  {
    v4 = xpc_null_create();
    v5 = *(v1 + 32);
    v6 = *(v3 + 6);
    v37 = v4;
    v7 = xpc_null_create();
    (*(v5 + 16))(v5, v6, &v37);
    xpc_release(v37);
    xpc_release(v7);
  }

  _Block_object_dispose(&v33, 8);
  if (v1)
  {
    v8 = *(v1 + 32);
    if (v8)
    {
      _Block_release(v8);
    }

    xpc_release(*(v1 + 24));
    *(v1 + 24) = 0;
    v9 = *(v1 + 8);
    if (v9)
    {
      std::__shared_weak_count::__release_weak(v9);
    }

    operator delete(v1);
  }

  v10 = a1;
  if (a1)
  {
    v11 = a1[2];
    if (v11)
    {
      if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v11->__on_zero_shared)(v11);
        std::__shared_weak_count::__release_weak(v11);
        v10 = a1;
      }
    }

    operator delete(v10);
  }
}

void sub_2970C851C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *aBlock, uint64_t a17, char a18, uint64_t a19, char a20)
{
  if (v20)
  {
    _Block_release(v20);
  }

  if (aBlock)
  {
    _Block_release(aBlock);
  }

  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a18);
  _Block_object_dispose(&a20, 8);
  _ZNSt3__110unique_ptrIZZN9AWDModule28registerCommandHandlers_syncEvEUb2_E3__6NS_14default_deleteIS2_EEED1B8ne200100Ev(&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<StatsModule>::execute_wrapped<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0>(StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&)::{lambda(void)#1},std::default_delete<StatsModule::bootstrap(BootstrapStage,dispatch::group_session)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t *_ZNSt3__110unique_ptrIZZN9AWDModule28registerCommandHandlers_syncEvEUb2_E3__6NS_14default_deleteIS2_EEED1B8ne200100Ev(uint64_t *a1)
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

void ___ZZZN9AWDModule28registerCommandHandlers_syncEvEUb2_ENK3__6clEv_block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = 0;
  }

  else
  {
    v3 = -534716416;
  }

  *(*(*(a1 + 32) + 8) + 24) = v3;
  v4 = *(*(a1 + 32) + 8);
  v5 = xpc_null_create();
  v6 = *(a1 + 40);
  v7 = *(v4 + 24);
  object = v5;
  v8 = xpc_null_create();
  (*(v6 + 16))(v6, v7, &object);
  xpc_release(object);
  xpc_release(v8);
}

void sub_2970C8718(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(v10);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<awd::AppContext>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E28980;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<awd::AppContext>::__on_zero_shared(void *a1)
{
  v2 = a1[10];
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = a1[9];
  if (v3)
  {
    _Block_release(v3);
  }

  v4 = a1[8];
  if (v4)
  {
    _Block_release(v4);
  }

  v5 = a1[7];
  if (v5)
  {
    _Block_release(v5);
  }

  v6 = a1[6];
  if (v6)
  {
    _Block_release(v6);
  }

  v7 = a1[5];
  if (v7)
  {
    _Block_release(v7);
  }

  v8 = a1[3];
  if (v8)
  {

    dispatch_release(v8);
  }
}

uint64_t __cxx_global_var_init_49()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<CommandDriverFactory>::~PthreadMutexGuardPolicy, &ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance, &dword_296FF7000);
  }

  return result;
}

void NetworkingModule::create(uint64_t *a1@<X0>, atomic_ullong *a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  v4 = operator new(0x90uLL);
  v5 = v4;
  v6 = *a1;
  v7 = a1[1];
  v9[0] = v6;
  v9[1] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  NetworkingModule::NetworkingModule(v4, v9);
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  std::shared_ptr<NetworkingModule>::shared_ptr[abi:ne200100]<NetworkingModule,std::shared_ptr<NetworkingModule> ctu::SharedSynchronizable<NetworkingModule>::make_shared_ptr<NetworkingModule>(NetworkingModule*)::{lambda(NetworkingModule*)#1},0>(a2, v5);
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  v8 = *a2;

  NetworkingModule::init(v8);
}

void sub_2970C8938(_Unwind_Exception *exception_object)
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

void NetworkingModule::init(NetworkingModule *this)
{
  v2 = *(this + 10);
  if (!v2 || (v3 = *(this + 9), (v4 = std::__shared_weak_count::lock(v2)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v5 = v4;
  v6 = operator new(8uLL);
  *v6 = this;
  v7 = *(this + 11);
  atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  v8 = operator new(0x18uLL);
  *v8 = v6;
  v8[1] = v3;
  v8[2] = v5;
  dispatch_async_f(v7, v8, dispatch::async<void ctu::SharedSynchronizable<NetworkingModule>::execute_wrapped<NetworkingModule::init(void)::$_0>(NetworkingModule::init(void)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<NetworkingModule::init(void)::$_0,dispatch_queue_s *::default_delete<NetworkingModule::init(void)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);

    std::__shared_weak_count::__release_weak(v5);
  }
}

uint64_t NetworkingModule::NetworkingModule(uint64_t a1, uint64_t *a2)
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
    *a1 = &unk_2A1E25E48;
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
    *a1 = &unk_2A1E25E48;
  }

  *a1 = &unk_2A1E289D0;
  ctu::OsLogContext::OsLogContext(v6, "com.apple.telephony.abm", "net.mod");
  ctu::SharedLoggable<NetworkingModule,ctu::OsLogLogger>::SharedLoggable<ctu::OsLogContext>((a1 + 72), "net.mod", QOS_CLASS_DEFAULT);
  ctu::OsLogContext::~OsLogContext(v6);
  *a1 = &unk_2A1E289D0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 112) = 0;
  *(a1 + 136) = 0;
  return a1;
}

void sub_2970C8BBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  ctu::OsLogContext::~OsLogContext(&a9);
  Service::~Service(v9);
  _Unwind_Resume(a1);
}

void *ctu::SharedLoggable<NetworkingModule,ctu::OsLogLogger>::SharedLoggable<ctu::OsLogContext>(void *a1, const char *a2, dispatch_qos_class_t a3)
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

void NetworkingModule::~NetworkingModule(NetworkingModule *this)
{
  *this = &unk_2A1E289D0;
  v2 = *(this + 16);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 15);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  MEMORY[0x29C26B020](this + 104);
  v4 = *(this + 12);
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = *(this + 11);
  if (v5)
  {
    dispatch_release(v5);
  }

  v6 = *(this + 10);
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  *this = &unk_2A1E2E7E8;
  std::__tree<std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::function<void ()(dispatch::group_session,xpc::dict)>>>>::destroy(this + 48, *(this + 7));
  v7 = *(this + 3);
  if (v7)
  {
    v8 = *(this + 4);
    v9 = *(this + 3);
    if (v8 != v7)
    {
      do
      {
        v10 = *(v8 - 1);
        v8 -= 3;
        if (v10 < 0)
        {
          operator delete(*v8);
        }
      }

      while (v8 != v7);
      v9 = *(this + 3);
    }

    *(this + 4) = v7;
    operator delete(v9);
  }

  v11 = *(this + 2);
  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }
}

{
  NetworkingModule::~NetworkingModule(this);

  operator delete(v1);
}