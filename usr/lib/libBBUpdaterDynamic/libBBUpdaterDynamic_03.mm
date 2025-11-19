void sub_1E525D6C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20, int a21, const void *a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (*(v35 - 105) < 0)
  {
    operator delete(*(v35 - 128));
    ctu::cf::CFSharedRef<__CFURL const>::~CFSharedRef(&a22);
    if ((a28 & 0x80000000) == 0)
    {
LABEL_3:
      if (a19 < 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else
  {
    ctu::cf::CFSharedRef<__CFURL const>::~CFSharedRef(&a22);
    if ((a28 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  operator delete(a23);
  if (a19 < 0)
  {
LABEL_4:
    operator delete(__p);
    _Unwind_Resume(a1);
  }

LABEL_7:
  _Unwind_Resume(a1);
}

void sub_1E525D7FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a12);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a19);
  _Unwind_Resume(a1);
}

void BBUpdaterController::dumpDebugLogBuffer(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    if (a1[13])
    {
      v9 = a1[14];
      v12[0] = a1[13];
      v12[1] = v9;
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      BBUpdaterController::dumpLogBufferInternal(a1, v12, "Debug Log Buffer");
      if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v9->__on_zero_shared)(v9);
        std::__shared_weak_count::__release_weak(v9);
      }
    }

    if (BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS == -1)
    {
      if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS == -1)
      {
        goto LABEL_10;
      }
    }

    else
    {
      dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS, &__block_literal_global_7);
      if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS == -1)
      {
LABEL_10:
        if ((BBUpdaterCommon::inRestoreOS(void)::restoreOS & 1) == 0)
        {
          goto LABEL_11;
        }

        goto LABEL_19;
      }
    }

    dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS, &__block_literal_global_13);
    if ((BBUpdaterCommon::inRestoreOS(void)::restoreOS & 1) == 0)
    {
LABEL_11:
      if ((BBUpdaterCommon::inRestoreOS(void)::recoveryOS & 1) == 0)
      {
        return;
      }
    }

LABEL_19:
    if (a1[15])
    {
      v10 = a1[16];
      v11[0] = a1[15];
      v11[1] = v10;
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      BBUpdaterController::dumpLogBufferInternal(a1, v11, "Kernel IPC Log");
      if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v10->__on_zero_shared)(v10);

        std::__shared_weak_count::__release_weak(v10);
      }
    }

    return;
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
    {
      return;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
    {
      return;
    }
  }

  if (gBBULogVerbosity >= 6)
  {
    _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", a6, a7, a8, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp");
  }
}

void sub_1E525DAB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void BBUpdaterController::getCoreDumpPath(BBUpdaterController *this, uint64_t a2)
{
  v32[2] = *MEMORY[0x1E69E9840];
  __p = operator new(0x48uLL);
  v30 = xmmword_1E538EBF0;
  strcpy(__p, "/wireless/Library/Logs/CrashReporter/Baseband/baseband_updater_logs/");
  memset(this, 170, 24);
  *(this + 23) = 0;
  *this = 0;
  memset(&v28, 170, sizeof(v28));
  pthread_mutex_lock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
  v4 = off_1ED944170;
  if (!off_1ED944170)
  {
    v5 = operator new(0x18uLL);
    BBUPartitionManager::BBUPartitionManager(v5);
    v6 = operator new(0x20uLL);
    *v6 = &unk_1F5F05A00;
    v6[1] = 0;
    v6[2] = 0;
    v6[3] = v5;
    v7 = off_1ED944178;
    off_1ED944170 = v5;
    off_1ED944178 = v6;
    if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }

    v4 = off_1ED944170;
  }

  v8 = off_1ED944178;
  v27.__r_.__value_.__r.__words[0] = v4;
  v27.__r_.__value_.__l.__size_ = off_1ED944178;
  if (off_1ED944178)
  {
    atomic_fetch_add_explicit(off_1ED944178 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
  v9 = v4[1];
  if (!v9)
  {
LABEL_14:
    std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
  }

  while (1)
  {
    while (1)
    {
      v10 = *(v9 + 8);
      if (v10 < 2)
      {
        break;
      }

      v9 = *v9;
      if (!v9)
      {
        goto LABEL_14;
      }
    }

    if (v10 == 1)
    {
      break;
    }

    v9 = v9[1];
    if (!v9)
    {
      goto LABEL_14;
    }
  }

  if (*(v9 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v28, v9[5], v9[6]);
  }

  else
  {
    v28 = *(v9 + 5);
  }

  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
    size = HIBYTE(v28.__r_.__value_.__r.__words[2]);
    if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v28.__r_.__value_.__l.__size_;
    }

    if (!size)
    {
      goto LABEL_57;
    }
  }

  else
  {
    v11 = HIBYTE(v28.__r_.__value_.__r.__words[2]);
    if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v11 = v28.__r_.__value_.__l.__size_;
    }

    if (!v11)
    {
      goto LABEL_57;
    }
  }

  pthread_mutex_lock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
  v12 = off_1ED944170;
  if (!off_1ED944170)
  {
    v13 = operator new(0x18uLL);
    BBUPartitionManager::BBUPartitionManager(v13);
    v31 = v13;
    v14 = operator new(0x20uLL);
    *v14 = &unk_1F5F05A00;
    v14[1] = 0;
    v14[2] = 0;
    v14[3] = v13;
    v15 = off_1ED944178;
    off_1ED944170 = v13;
    off_1ED944178 = v14;
    if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v15->__on_zero_shared)(v15);
      std::__shared_weak_count::__release_weak(v15);
    }

    v12 = off_1ED944170;
  }

  v16 = off_1ED944178;
  if (off_1ED944178)
  {
    atomic_fetch_add_explicit(off_1ED944178 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
  v17 = v12[1];
  if (!v17)
  {
LABEL_36:
    std::__throw_out_of_range[abi:ne200100]("map::at:  key not found");
  }

  while (1)
  {
    while (1)
    {
      v18 = *(v17 + 8);
      if (v18 < 2)
      {
        break;
      }

      v17 = *v17;
      if (!v17)
      {
        goto LABEL_36;
      }
    }

    if (v18 == 1)
    {
      break;
    }

    v17 = v17[1];
    if (!v17)
    {
      goto LABEL_36;
    }
  }

  if (*(v17 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v27, v17[5], v17[6]);
  }

  else
  {
    v27 = *(v17 + 5);
  }

  if (v30 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if (v30 >= 0)
  {
    v21 = HIBYTE(v30);
  }

  else
  {
    v21 = v30;
  }

  v22 = std::string::append(&v27, p_p, v21);
  v23 = v22->__r_.__value_.__r.__words[0];
  v32[0] = v22->__r_.__value_.__l.__size_;
  *(v32 + 7) = *(&v22->__r_.__value_.__r.__words[1] + 7);
  v24 = HIBYTE(v22->__r_.__value_.__r.__words[2]);
  v22->__r_.__value_.__l.__size_ = 0;
  v22->__r_.__value_.__r.__words[2] = 0;
  v22->__r_.__value_.__r.__words[0] = 0;
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }

  *this = v23;
  *(this + 1) = v32[0];
  *(this + 15) = *(v32 + 7);
  *(this + 23) = v24;
  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
  }

LABEL_57:
  v27.__r_.__value_.__r.__words[0] = 0;
  if (CFDictionaryGetValueIfPresent(*(a2 + 40), @"coreDumpPath", &v27.__r_.__value_.__l.__data_) && (ctu::cf::assign() & 1) == 0)
  {
    BBUFeedback::handleComment(*(a2 + 56), "failed converting core dump path to string");
    if (*(this + 23) < 0)
    {
      *(this + 1) = 0;
      this = *this;
    }

    else
    {
      *(this + 23) = 0;
    }

    *this = 0;
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v30) & 0x80000000) == 0)
    {
      goto LABEL_65;
    }
  }

  else if ((SHIBYTE(v30) & 0x80000000) == 0)
  {
LABEL_65:
    v25 = *MEMORY[0x1E69E9840];
    return;
  }

  operator delete(__p);
  v26 = *MEMORY[0x1E69E9840];
}

void sub_1E525DFD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  std::unique_ptr<BBUPartitionManager>::~unique_ptr[abi:ne200100]((v30 - 80));
  pthread_mutex_unlock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (*(v29 + 23) < 0)
  {
    operator delete(*v29);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(a1);
}

const void **ctu::cf::CFSharedRef<__CFURL const>::~CFSharedRef(const void **a1)
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

void BBUpdaterController::updateProvisioningInfo(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (!v2)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 86, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp", 0x6A0u, "Assertion failure(dict && Failed to create dictionary for updating provisioning parameters.)", v19, v20, v21, v53);
    goto LABEL_37;
  }

  if ((*(a1 + 242) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 86, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp", 0x6A2u, "Assertion failure(fProvisionState.requested && Failed to request provision state.)", v22, v23, v24, v53);
LABEL_37:
  }

  v5 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  valuePtr[1] = Mutable;
  if (!Mutable)
  {
    v25 = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(v25, 86, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp", 0x6A8u, "Assertion failure(tmp && Failed to create dictionary for updating provisioning parameters.)", v26, v27, v28, v53);
  }

  v7 = Mutable;
  LODWORD(valuePtr[0]) = *(a1 + 241) ^ 1;
  v8 = CFNumberCreate(v5, kCFNumberSInt32Type, valuePtr);
  value = v8;
  CFDictionarySetValue(v7, @"Status", v8);
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = *a2;
  v10 = *(*a2 + 32);
  if (v10)
  {
    v11 = CFDataCreate(v5, *v10, *(v10 + 8));
    v12 = v11;
    if (!v11)
    {
      v29 = __cxa_allocate_exception(0x210uLL);
      _BBUException::_BBUException(v29, 103, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Provisioning/BBUProvisioningParameters.h", 0x6Cu, "Assertion failure(success && Failed to get session key.)", v30, v31, v32, v53);
    }

    value = v11;
    CFDictionarySetValue(v7, @"EncryptedSessionKey", v11);
    CFRelease(v12);
    v9 = *a2;
  }

  if (*(a1 + 240) == 1)
  {
    if (*v9)
    {
      value = 0xAAAAAAAAAAAAAAAALL;
      if ((ctu::cf::convert_copy() & 1) == 0)
      {
        v41 = __cxa_allocate_exception(0x210uLL);
        _BBUException::_BBUException(v41, 30, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Provisioning/BBUProvisioningParameters.h", 0x1Cu, "Assertion failure(success && Failed to get IMEI.)", v42, v43, v44, v53);
      }

      v13 = value;
      valuePtr[0] = value;
      CFDictionarySetValue(v7, @"IMEI", value);
      if (v13)
      {
        CFRelease(v13);
      }

      v9 = *a2;
    }

    if (v9[1])
    {
      value = 0xAAAAAAAAAAAAAAAALL;
      if ((ctu::cf::convert_copy() & 1) == 0)
      {
        v45 = __cxa_allocate_exception(0x210uLL);
        _BBUException::_BBUException(v45, 30, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Provisioning/BBUProvisioningParameters.h", 0x1Cu, "Assertion failure(success && Failed to get IMEI.)", v46, v47, v48, v53);
      }

      v14 = value;
      valuePtr[0] = value;
      CFDictionarySetValue(v7, @"IMEI2", value);
      if (v14)
      {
        CFRelease(v14);
      }

      v9 = *a2;
    }

    if (v9[2])
    {
      value = 0xAAAAAAAAAAAAAAAALL;
      if ((ctu::cf::convert_copy() & 1) == 0)
      {
        v49 = __cxa_allocate_exception(0x210uLL);
        _BBUException::_BBUException(v49, 29, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Provisioning/BBUProvisioningParameters.h", 0x36u, "Assertion failure(success && Failed to get MEID.)", v50, v51, v52, v53);
      }

      v15 = value;
      valuePtr[0] = value;
      CFDictionarySetValue(v7, @"MEID", value);
      if (v15)
      {
        CFRelease(v15);
      }

      v9 = *a2;
    }
  }

  if (v9[3])
  {
    value = 0xAAAAAAAAAAAAAAAALL;
    if ((ctu::cf::convert_copy() & 1) == 0)
    {
      v33 = __cxa_allocate_exception(0x210uLL);
      _BBUException::_BBUException(v33, 107, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Provisioning/BBUProvisioningParameters.h", 0x50u, "Assertion failure(success && Failed to get EID.)", v34, v35, v36, v53);
    }

    v16 = value;
    valuePtr[0] = value;
    CFDictionarySetValue(v7, @"EID", value);
    if (v16)
    {
      CFRelease(v16);
    }

    v9 = *a2;
  }

  if (v9[6])
  {
    value = 0xAAAAAAAAAAAAAAAALL;
    if ((ctu::cf::convert_copy() & 1) == 0)
    {
      v37 = __cxa_allocate_exception(0x210uLL);
      _BBUException::_BBUException(v37, 32, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Provisioning/BBUProvisioningParameters.h", 0xA1u, "Assertion failure(success && Unrecognized radio type.)", v38, v39, v40, v53);
    }

    v17 = value;
    valuePtr[0] = value;
    CFDictionarySetValue(v7, @"CarrierID", value);
    if (v17)
    {
      CFRelease(v17);
    }
  }

  CFDictionarySetValue(v2, @"provisioning", v7);
  CFRelease(v7);
}

void sub_1E525E668(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, const void *a12)
{
  __cxa_free_exception(v12);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(&a12);
  _Unwind_Resume(a1);
}

void sub_1E525E720(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  ctu::cf::CFSharedRef<__CFString const>::~CFSharedRef(va);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(va1);
  _Unwind_Resume(a1);
}

void sub_1E525E744(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  ctu::cf::CFSharedRef<__CFData const>::~CFSharedRef(va1);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void sub_1E525E764(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void sub_1E525E778(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void sub_1E525E78C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void sub_1E525E7A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  ctu::cf::CFSharedRef<__CFNumber const>::~CFSharedRef(va1);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void sub_1E525E7C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void sub_1E525E7D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

BBUProvisioningParameters **std::unique_ptr<BBUProvisioningParameters>::~unique_ptr[abi:ne200100](BBUProvisioningParameters **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    BBUProvisioningParameters::~BBUProvisioningParameters(v2);
    operator delete(v4);
    return v3;
  }

  return v1;
}

void BBUpdaterController::provision(uint64_t a1, int a2)
{
  v34 = 0;
  v4 = operator new(0x38uLL);
  *v4 = 0u;
  v4[1] = 0u;
  v4[2] = 0u;
  *(v4 + 6) = 0;
  v33 = v4;
  v6 = BBUProvisioner::create(*(a1 + 56), v5);
  v7 = v6;
  if (!v6)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp", 0x3B3u, "Assertion failure(provisioner)", v26, v27, v28, v29);
  }

  (*(*v6 + 24))(v6, 1);
  FirmwareDataSource = BBUpdaterController::getFirmwareDataSource(a1, 0);
  v12 = FirmwareDataSource;
  if (FirmwareDataSource)
  {
    (*(*FirmwareDataSource + 104))(FirmwareDataSource);
    if (((*(*v12 + 120))(v12, 1, &v34) & 1) == 0)
    {
      BBUFeedback::handleComment(*(a1 + 56), "No provisioning data");
      BBUpdaterController::process_event<BBUpdaterControllerFSM::eventFinalize>(*(a1 + 16), *(a1 + 24), &v31);
      goto LABEL_11;
    }

    v13 = *(a1 + 56);
    if (a2 == 1)
    {
      BBUFeedback::handleComment(v13, "Will provision");
      BBUFeedback::handleComment(*(a1 + 56), "Sending start provisioning command");
      v17 = (*(*v7 + 32))(v7, v34, v4, a1 + 152);
      if (!v17)
      {
        BBUpdaterController::updateProvisioningInfo(a1, &v33);
LABEL_11:
        (*(*v12 + 16))(v12);
        goto LABEL_12;
      }

      if (gBBULogMaskGet(void)::once == -1)
      {
        if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
        {
          goto LABEL_34;
        }
      }

      else
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
        {
          goto LABEL_34;
        }
      }

      if (gBBULogVerbosity >= 6)
      {
        _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", v14, v15, v16, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp");
      }

LABEL_34:
      std::string::basic_string[abi:ne200100]<0>(&__p, "Failed starting mature provisioning.");
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        v31 = __p;
        goto LABEL_43;
      }

      goto LABEL_42;
    }

    BBUFeedback::handleComment(v13, "Sending finish provisioning command");
    v17 = (*(*v7 + 40))(v7, v34, a1 + 152);
    if (!v17)
    {
      *(a1 + 241) = 1;
      BBUFeedback::handleComment(*(a1 + 56), "Updating provisioning parameters from BB");
      v17 = (*(**(a1 + 72) + 88))(*(a1 + 72), a1 + 152, v4);
      if (!v17)
      {
        BBUpdaterController::updateProvisioningInfo(a1, &v33);
        BBUpdaterController::process_event<BBUpdaterControllerFSM::eventFinalize>(*(a1 + 16), *(a1 + 24), &v31);
        goto LABEL_11;
      }

      if (gBBULogMaskGet(void)::once == -1)
      {
        if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
        {
          goto LABEL_40;
        }
      }

      else
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
        {
          goto LABEL_40;
        }
      }

      if (gBBULogVerbosity >= 6)
      {
        _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", v21, v22, v23, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp");
      }

LABEL_40:
      std::string::basic_string[abi:ne200100]<0>(&__p, "Failed to update provisioning parameters");
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        v31 = __p;
        goto LABEL_43;
      }

      goto LABEL_42;
    }

    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_28;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_28;
      }
    }

    if (gBBULogVerbosity >= 6)
    {
      _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", v18, v19, v20, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp");
    }

LABEL_28:
    std::string::basic_string[abi:ne200100]<0>(&__p, "Failed completing mature provisioning.");
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      v31 = __p;
LABEL_43:
      v32 = v17;
      BBUpdaterController::process_event<BBUpdaterControllerFSM::eventError>(a1, &v31);
      if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v31.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      goto LABEL_11;
    }

LABEL_42:
    std::string::__init_copy_ctor_external(&v31, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    goto LABEL_43;
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
    {
      goto LABEL_15;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
    {
LABEL_15:
      if (gBBULogVerbosity >= 6)
      {
        _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", v9, v10, v11, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp");
      }
    }
  }

  std::string::basic_string[abi:ne200100]<0>(&__p, "Fail to get update source for provision");
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v31, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v31 = __p;
  }

  v32 = 35;
  BBUpdaterController::process_event<BBUpdaterControllerFSM::eventError>(a1, &v31);
  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_12:
  (*(*v7 + 8))(v7);
  BBUProvisioningParameters::~BBUProvisioningParameters(v4);
  operator delete(v24);
}

void sub_1E525EF08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  (*(*v24 + 16))(v24);
  (*(*v23 + 8))(v23);
  std::unique_ptr<BBUProvisioningParameters>::~unique_ptr[abi:ne200100]((v25 - 64));
  _Unwind_Resume(a1);
}

void BBUpdaterController::process_event<BBUpdaterControllerFSM::eventFinalize>(int *a1, std::__shared_weak_count *a2, uint64_t a3)
{
  v27 = a1;
  v28 = a2;
  if (a2)
  {
    atomic_fetch_add_explicit(&a2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  __dst[1] = 0xAAAAAAAAAAAAAAAALL;
  v26 = 0x7AAAAAAAAAAAAAALL;
  strcpy(__dst, "unknown");
  memset(__p, 170, sizeof(__p));
  (*(*a1 + 24))(__p, a1);
  v5 = __p[0];
  v6 = (__p[0] + 24 * a1[8]);
  if (__dst != v6)
  {
    v7 = *(v6 + 23);
    if (SHIBYTE(v26) < 0)
    {
      if (v7 >= 0)
      {
        v9 = __p[0] + 24 * a1[8];
      }

      else
      {
        v9 = *v6;
      }

      if (v7 >= 0)
      {
        v10 = *(v6 + 23);
      }

      else
      {
        v10 = v6[1];
      }

      std::string::__assign_no_alias<false>(__dst, v9, v10);
    }

    else if ((*(v6 + 23) & 0x80) != 0)
    {
      std::string::__assign_no_alias<true>(__dst, *v6, v6[1]);
    }

    else
    {
      v8 = *v6;
      v26 = v6[2];
      *__dst = v8;
    }

    v5 = __p[0];
  }

  if (v5)
  {
    v11 = __p[1];
    v12 = v5;
    if (__p[1] != v5)
    {
      do
      {
        v13 = *(v11 - 1);
        v11 -= 3;
        if (v13 < 0)
        {
          operator delete(*v11);
        }
      }

      while (v11 != v5);
      v12 = __p[0];
    }

    __p[1] = v5;
    operator delete(v12);
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x20) == 0)
    {
      goto LABEL_32;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x20) == 0)
    {
      goto LABEL_32;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    boost::core::demangle(__p, (0x80000001E538FC41 & 0x7FFFFFFFFFFFFFFFLL));
    if (SHIBYTE(__p[2]) >= 0)
    {
      v17 = __p;
    }

    else
    {
      LOBYTE(v17) = __p[0];
    }

    v23 = a1[8];
    _BBULog(21, 0, "BBUpdaterController", "", "processing event: %s, current state %d [%s]\n", v14, v15, v16, v17);
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }
  }

LABEL_32:
  boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::process_event_internal<BBUpdaterControllerFSM::eventFinalize>(v27, a3, 1);
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x20) == 0)
    {
      goto LABEL_40;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x20) == 0)
    {
      goto LABEL_40;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    boost::core::demangle(__p, (0x80000001E538FC41 & 0x7FFFFFFFFFFFFFFFLL));
    if (SHIBYTE(__p[2]) >= 0)
    {
      v21 = __p;
    }

    else
    {
      LOBYTE(v21) = __p[0];
    }

    _BBULog(21, 0, "BBUpdaterController", "", "finish processing event: %s\n", v18, v19, v20, v21);
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }
  }

LABEL_40:
  if (SHIBYTE(v26) < 0)
  {
    operator delete(__dst[0]);
  }

  v22 = v28;
  if (v28)
  {
    if (!atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v22->__on_zero_shared)(v22);
      std::__shared_weak_count::__release_weak(v22);
    }
  }
}

void sub_1E525F3C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  std::vector<std::string>::~vector[abi:ne200100](&a12);
  if ((a23 & 0x80000000) == 0)
  {
    std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v23 - 64);
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v23 - 64);
  _Unwind_Resume(a1);
}

uint64_t BBUpdaterController::createTransportNoEvents(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22 = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v21[7] = v6;
  v21[8] = v6;
  v21[5] = v6;
  v21[6] = v6;
  v21[3] = v6;
  v21[4] = v6;
  v21[1] = v6;
  v21[2] = v6;
  v20 = v6;
  v21[0] = v6;
  *__p = v6;
  v19 = v6;
  v17[1] = v6;
  v17[2] = v6;
  v16 = v6;
  v17[0] = v6;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v16);
  (*(**(a1 + 64) + 40))(*(a1 + 64), a1 + 152);
  v10 = (*(**(a1 + 72) + 40))(*(a1 + 72), *(a1 + 48), a3, a2);
  if (v10)
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_8;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_8;
      }
    }

    if (gBBULogVerbosity < 6)
    {
      goto LABEL_8;
    }

    goto LABEL_14;
  }

  v10 = (*(**(a1 + 64) + 16))(*(a1 + 64), a1 + 152, a3, 0, 0, 0.0);
  if (v10)
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_8;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_8;
      }
    }

    if (gBBULogVerbosity < 6)
    {
      goto LABEL_8;
    }

LABEL_14:
    _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", v7, v8, v9, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp");
    goto LABEL_8;
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    v10 = 0;
    if ((*gBBULogMaskGet(void)::sBBULogMask & 0x10) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    v10 = 0;
    if ((*gBBULogMaskGet(void)::sBBULogMask & 0x10) == 0)
    {
      goto LABEL_8;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v11 = BBUStageAsString(a3);
    _BBULog(4, 0, "BBUpdaterController", "", "Finish preparing at %s\n", v12, v13, v14, v11);
    v10 = 0;
  }

LABEL_8:
  *&v16 = *MEMORY[0x1E69E54E8];
  *(&v17[-1] + *(v16 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  *(&v16 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v19) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v16 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v17);
  std::ostream::~ostream();
  MEMORY[0x1E69273B0](v21);
  return v10;
}

void sub_1E525F82C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void BBUpdaterController::process_event<BBUpdaterControllerFSM::eventCmdQueryInfo>(int *a1, std::__shared_weak_count *a2, uint64_t a3)
{
  v27 = a1;
  v28 = a2;
  if (a2)
  {
    atomic_fetch_add_explicit(&a2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  __dst[1] = 0xAAAAAAAAAAAAAAAALL;
  v26 = 0x7AAAAAAAAAAAAAALL;
  strcpy(__dst, "unknown");
  memset(__p, 170, sizeof(__p));
  (*(*a1 + 24))(__p, a1);
  v5 = __p[0];
  v6 = (__p[0] + 24 * a1[8]);
  if (__dst != v6)
  {
    v7 = *(v6 + 23);
    if (SHIBYTE(v26) < 0)
    {
      if (v7 >= 0)
      {
        v9 = __p[0] + 24 * a1[8];
      }

      else
      {
        v9 = *v6;
      }

      if (v7 >= 0)
      {
        v10 = *(v6 + 23);
      }

      else
      {
        v10 = v6[1];
      }

      std::string::__assign_no_alias<false>(__dst, v9, v10);
    }

    else if ((*(v6 + 23) & 0x80) != 0)
    {
      std::string::__assign_no_alias<true>(__dst, *v6, v6[1]);
    }

    else
    {
      v8 = *v6;
      v26 = v6[2];
      *__dst = v8;
    }

    v5 = __p[0];
  }

  if (v5)
  {
    v11 = __p[1];
    v12 = v5;
    if (__p[1] != v5)
    {
      do
      {
        v13 = *(v11 - 1);
        v11 -= 3;
        if (v13 < 0)
        {
          operator delete(*v11);
        }
      }

      while (v11 != v5);
      v12 = __p[0];
    }

    __p[1] = v5;
    operator delete(v12);
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x20) == 0)
    {
      goto LABEL_32;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x20) == 0)
    {
      goto LABEL_32;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    boost::core::demangle(__p, (0x80000001E538FD54 & 0x7FFFFFFFFFFFFFFFLL));
    if (SHIBYTE(__p[2]) >= 0)
    {
      v17 = __p;
    }

    else
    {
      LOBYTE(v17) = __p[0];
    }

    v23 = a1[8];
    _BBULog(21, 0, "BBUpdaterController", "", "processing event: %s, current state %d [%s]\n", v14, v15, v16, v17);
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }
  }

LABEL_32:
  boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::process_event_internal<BBUpdaterControllerFSM::eventCmdQueryInfo>(v27, a3, 1);
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x20) == 0)
    {
      goto LABEL_40;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x20) == 0)
    {
      goto LABEL_40;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    boost::core::demangle(__p, (0x80000001E538FD54 & 0x7FFFFFFFFFFFFFFFLL));
    if (SHIBYTE(__p[2]) >= 0)
    {
      v21 = __p;
    }

    else
    {
      LOBYTE(v21) = __p[0];
    }

    _BBULog(21, 0, "BBUpdaterController", "", "finish processing event: %s\n", v18, v19, v20, v21);
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }
  }

LABEL_40:
  if (SHIBYTE(v26) < 0)
  {
    operator delete(__dst[0]);
  }

  v22 = v28;
  if (v28)
  {
    if (!atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v22->__on_zero_shared)(v22);
      std::__shared_weak_count::__release_weak(v22);
    }
  }
}

void sub_1E525FBB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  std::vector<std::string>::~vector[abi:ne200100](&a12);
  if ((a23 & 0x80000000) == 0)
  {
    std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v23 - 64);
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v23 - 64);
  _Unwind_Resume(a1);
}

void BBUpdaterController::updateOutputPersonalizedParameters(BBUpdaterController *this)
{
  v2 = *(this + 4);
  v3 = *(*(this + 12) + 32);
  if (v3 && (*(*v3 + 16))(v3))
  {
    v4 = (*(*v3 + 16))(v3);
    CFDictionarySetValue(v2, @"ChipSerialNo", v4);
    v5 = *(*(this + 12) + 24);
    if (!v5)
    {
LABEL_9:
      CFDictionaryRemoveValue(v2, @"CertID");
      v7 = *(*(this + 12) + 40);
      if (!v7)
      {
        goto LABEL_14;
      }

      goto LABEL_10;
    }
  }

  else
  {
    CFDictionaryRemoveValue(v2, @"ChipSerialNo");
    v5 = *(*(this + 12) + 24);
    if (!v5)
    {
      goto LABEL_9;
    }
  }

  if (!(*(*v5 + 16))(v5))
  {
    goto LABEL_9;
  }

  v6 = (*(*v5 + 16))(v5);
  CFDictionarySetValue(v2, @"CertID", v6);
  v7 = *(*(this + 12) + 40);
  if (!v7)
  {
    goto LABEL_14;
  }

LABEL_10:
  if ((*(*v7 + 16))(v7))
  {
    v8 = (*(*v7 + 16))(v7);

    CFDictionarySetValue(v2, @"CertHash", v8);
    return;
  }

LABEL_14:

  CFDictionaryRemoveValue(v2, @"CertHash");
}

void BBUpdaterController::cmdCopyRequirePartitionMount(BBUFeedback **this, const __CFDictionary **a2)
{
  if (a2)
  {
    v4 = *MEMORY[0x1E695E480];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    ctu::cf::insert<__CFString const*,BOOL>(Mutable, @"requireSystemPartitionMount", 1);
    BBUFeedback::handleComment(this[7], "%s: supports flashless %d", "cmdCopyRequirePartitionMount", 1);
    BBUFeedback::handleComment(this[7], "%s: supports REFS %d", "cmdCopyRequirePartitionMount", 1);
    v6 = ctu::cf::insert<__CFString const*,BOOL>(Mutable, @"requireUserPartitionMount", 1);
    v7 = capabilities::updater::BBUFSPartitionSizeMB(v6);
    block[0] = @"requestedBasebandFSPartitionMountSize";
    CFRetain(@"requestedBasebandFSPartitionMountSize");
    *&valuePtr = v7;
    v8 = CFNumberCreate(v4, kCFNumberLongLongType, &valuePtr);
    __p[0] = v8;
    if (v8)
    {
      CFDictionaryAddValue(Mutable, @"requestedBasebandFSPartitionMountSize", v8);
      CFRelease(v8);
    }

    CFRelease(@"requestedBasebandFSPartitionMountSize");
    *a2 = Mutable;
    return;
  }

  pthread_mutex_lock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
  v9 = off_1ED944120;
  if (!off_1ED944120)
  {
    v10 = operator new(0x38uLL);
    v11 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v12 = dispatch_queue_create("BBUError", v11);
    *v10 = 0;
    v10[1] = 0;
    v10[2] = v12;
    if (v12)
    {
      v13 = v12;
      dispatch_retain(v12);
      v10[3] = 0;
      dispatch_release(v13);
    }

    else
    {
      v10[3] = 0;
    }

    v10[4] = 0;
    v10[5] = 0;
    v10[6] = 0;
    std::shared_ptr<BBUError>::shared_ptr[abi:ne200100]<BBUError,std::shared_ptr<BBUError> ctu::SharedSynchronizable<BBUError>::make_shared_ptr<BBUError>(BBUError*)::{lambda(BBUError*)#1},0>(&valuePtr, v10);
    v14 = valuePtr;
    valuePtr = 0uLL;
    v15 = *(&off_1ED944120 + 1);
    off_1ED944120 = v14;
    if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v15->__on_zero_shared)(v15);
      std::__shared_weak_count::__release_weak(v15);
    }

    v16 = *(&valuePtr + 1);
    if (*(&valuePtr + 1) && !atomic_fetch_add((*(&valuePtr + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v16->__on_zero_shared)(v16);
      std::__shared_weak_count::__release_weak(v16);
    }

    v9 = off_1ED944120;
  }

  v17 = *(&off_1ED944120 + 1);
  if (*(&off_1ED944120 + 1))
  {
    atomic_fetch_add_explicit((*(&off_1ED944120 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
  v20 = 15;
  strcpy(__p, "Null output ptr");
  *&valuePtr = MEMORY[0x1E69E9820];
  *(&valuePtr + 1) = 0x40000000;
  v22 = ___ZN8BBUError8addErrorERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE9BBUReturn_block_invoke;
  v23 = &__block_descriptor_tmp_8;
  v24 = v9;
  v25 = __p;
  v26 = 2;
  p_valuePtr = &valuePtr;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI8BBUErrorE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  block[3] = &__block_descriptor_tmp_13_0;
  block[4] = v9;
  block[5] = &p_valuePtr;
  v18 = *(v9 + 16);
  if (!*(v9 + 24))
  {
    dispatch_sync(v18, block);
    if ((v20 & 0x80000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  dispatch_async_and_wait(v18, block);
  if (v20 < 0)
  {
LABEL_21:
    operator delete(__p[0]);
  }

LABEL_22:
  if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
  }
}

void sub_1E5260218(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef((v4 - 96));
  _Unwind_Resume(a1);
}

uint64_t ctu::cf::insert<__CFString const*,BOOL>(CFMutableDictionaryRef theDict, CFTypeRef cf, int a3)
{
  if (cf)
  {
    CFRetain(cf);
  }

  v6 = MEMORY[0x1E695E4D0];
  if (!a3)
  {
    v6 = MEMORY[0x1E695E4C0];
  }

  v7 = *v6;
  if (cf)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = !v8;
  if (v8)
  {
    if (!v7)
    {
      goto LABEL_15;
    }
  }

  else
  {
    CFDictionaryAddValue(theDict, cf, v7);
  }

  CFRelease(v7);
LABEL_15:
  if (cf)
  {
    CFRelease(cf);
  }

  return v9;
}

void sub_1E52602F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a9);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a10);
  _Unwind_Resume(a1);
}

void *BBUpdaterController::getFirmwareFolder(void *this, const __CFDictionary *a2)
{
  *this = 0;
  this[1] = 0;
  this[2] = 0;
  if (a2)
  {
    v2 = this;
    v5[0] = 0xAAAAAAAAAAAAAAAALL;
    v5[1] = 0xAAAAAAAAAAAAAAAALL;
    ctu::cf::dict_adapter::dict_adapter(v5, a2);
    ctu::cf::map_adapter::getString();
    *v2 = v3;
    v2[2] = v4;
    return MEMORY[0x1E69265E0](v5);
  }

  return this;
}

void sub_1E52603AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1E69265E0](v14 - 32);
  _Unwind_Resume(a1);
}

uint64_t BBUpdaterController::getNVRestoreSetting(BBUpdaterController *this, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  value = 0xAAAAAAAAAAAAAAAALL;
  if (!this || !CFDictionaryGetValueIfPresent(this, @"NVRestoreSetting", &value) || (v15 = -1431655766, (v8 = value) == 0) || (v9 = CFGetTypeID(value), v9 != CFNumberGetTypeID()) || (v11 = ctu::cf::assign(&v15, v8, v10), (v11 & 1) == 0))
  {
LABEL_11:
    v13 = 2;
    goto LABEL_12;
  }

  v12 = v15;
  if (v15 - 6 > 0xFFFFFFFA)
  {
    v13 = v15;
    if (v15 != 5)
    {
      goto LABEL_12;
    }

    if (capabilities::updater::supportsNVSettingOQCMagic(v11))
    {
      v13 = 5;
      goto LABEL_12;
    }

    if (gBBULogMaskGet(void)::once == -1)
    {
      v13 = 3;
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 8) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      v13 = 3;
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 8) == 0)
      {
        goto LABEL_12;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      _BBULog(19, 0, "BBUpdaterController", "", "Invalid NVRestore setting provided: %d, changing to NoUpdate settings\n", a6, a7, a8, 5);
      v13 = 3;
    }
  }

  else
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      v13 = 2;
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 8) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_9;
    }

    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    v13 = 2;
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 8) != 0)
    {
LABEL_9:
      if (gBBULogVerbosity < 0)
      {
        goto LABEL_12;
      }

      _BBULog(19, 0, "BBUpdaterController", "", "Invalid NVRestore setting provided: %d, changing to Shipping (or NoUpdate for non-iOS) settings\n", a6, a7, a8, v12);
      goto LABEL_11;
    }
  }

LABEL_12:
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 8) == 0)
    {
      return v13;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 8) == 0)
    {
      return v13;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    _BBULog(19, 0, "BBUpdaterController", "", "NVRestore setting: %d\n", a6, a7, a8, v13);
  }

  return v13;
}

void BBUpdaterController::updateOutputFusingManifestInfo(BBUpdaterController *this)
{
  v1 = *(this + 4);
  if (!v1)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 24, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp", 0x633u, "Assertion failure(dict && Failed to create output dictionary for fusing manifest info.)", v26, v27, v28, v37);
  }

  v3 = *MEMORY[0x1E695E480];
  v4 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, (*(this + 12) + 88));
  if (!v4)
  {
    v29 = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(v29, 24, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp", 0x638u, "Assertion failure(stateRef && Failed to create state reference for fusing manifest info.)", v30, v31, v32, v37);
  }

  v5 = v4;
  CFDictionarySetValue(v1, @"FusingStatus", v4);
  v6 = *(this + 12);
  if (*(v6 + 88) == 3)
  {
    BBUpdaterController::updateOutputPersonalizedParameters(this);
    v6 = *(this + 12);
  }

  v7 = *(v6 + 8);
  if (v7 && (*(*v7 + 16))(v7))
  {
    v8 = (*(*v7 + 16))(v7);
    CFDictionarySetValue(v1, @"Nonce", v8);
  }

  else
  {
    CFDictionaryRemoveValue(v1, @"Nonce");
  }

  v9 = *(*(this + 12) + 16);
  if (v9 && (*(*v9 + 16))(v9))
  {
    v10 = (*(*v9 + 16))(v9);
    CFDictionarySetValue(v1, @"ChipID", v10);
  }

  else
  {
    CFDictionaryRemoveValue(v1, @"ChipID");
  }

  Mutable = CFDictionaryCreateMutable(v3, 6, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    v33 = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(v33, 24, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp", 0x65Au, "Assertion failure(manifestInfo && Failed to create fusing manifest info dictionary.)", v34, v35, v36, 0);
  }

  v12 = *(*(this + 12) + 48);
  if (v12 && (*(*v12 + 16))(v12))
  {
    v13 = (*(*v12 + 16))(v12);
    CFDictionarySetValue(Mutable, @"SKeyStatus", v13);
  }

  v14 = *(*(this + 12) + 56);
  if (v14 && (*(*v14 + 16))(v14))
  {
    v15 = (*(*v14 + 16))(v14);
    CFDictionarySetValue(Mutable, @"SKeyHash", v15);
  }

  v16 = *(*(this + 12) + 64);
  if (v16 && (*(*v16 + 16))(v16))
  {
    v17 = (*(*v16 + 16))(v16);
    CFDictionarySetValue(Mutable, @"PMStatusCode", v17);
  }

  v18 = *(*(this + 12) + 72);
  if (v18 && (*(*v18 + 16))(v18))
  {
    v19 = (*(*v18 + 16))(v18);
    CFDictionarySetValue(Mutable, @"CMStatusCode", v19);
  }

  v20 = *(*(this + 12) + 80);
  if (v20 && (*(*v20 + 16))(v20))
  {
    v21 = (*(*v20 + 16))(v20);
    CFDictionarySetValue(Mutable, @"FCMStatusCode", v21);
  }

  if (*(this + 242) == 1)
  {
    v22 = *(this + 240);
    v23 = *MEMORY[0x1E695E4D0];
    if (v22)
    {
      v24 = *MEMORY[0x1E695E4D0];
    }

    else
    {
      v24 = *MEMORY[0x1E695E4C0];
    }

    CFDictionarySetValue(Mutable, @"ProvisioningManifestExists", v24);
    CFDictionarySetValue(Mutable, @"ProvisioningManifestSupported", v23);
  }

  if (CFDictionaryGetCount(Mutable) < 1)
  {
    CFDictionaryRemoveValue(v1, @"ManifestInfo");
  }

  else
  {
    CFDictionarySetValue(v1, @"ManifestInfo", Mutable);
  }

  CFRelease(Mutable);
  CFRelease(v5);
}

void sub_1E5260B90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(&a9);
  ctu::cf::CFSharedRef<__CFNumber const>::~CFSharedRef(&a10);
  _Unwind_Resume(a1);
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

{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t BBUpdaterController::getShouldFuseProvision(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  value.__r_.__value_.__r.__words[0] = 0;
  __p.__r_.__value_.__s.__data_[0] = 0;
  ValueIfPresent = *(a1 + 40);
  if (ValueIfPresent && *(*(a1 + 96) + 88) != 3)
  {
    ValueIfPresent = CFDictionaryGetValueIfPresent(ValueIfPresent, @"DisallowFusing", &value.__r_.__value_.__l.__data_);
    if (!ValueIfPresent)
    {
      goto LABEL_8;
    }

    v11 = value.__r_.__value_.__r.__words[0];
    if (value.__r_.__value_.__r.__words[0])
    {
      v12 = CFGetTypeID(value.__r_.__value_.__l.__data_);
      ValueIfPresent = CFBooleanGetTypeID();
      if (v12 == ValueIfPresent)
      {
        ValueIfPresent = ctu::cf::assign(&__p, v11, v13);
      }
    }

    if ((__p.__r_.__value_.__s.__data_[0] & 1) == 0)
    {
LABEL_8:
      ValueIfPresent = CFDictionaryGetValueIfPresent(*(a1 + 32), @"fuseAttemptSucceeded", &value.__r_.__value_.__l.__data_);
      if (!ValueIfPresent)
      {
        goto LABEL_21;
      }

      v14 = value.__r_.__value_.__r.__words[0];
      if (value.__r_.__value_.__r.__words[0])
      {
        v15 = CFGetTypeID(value.__r_.__value_.__l.__data_);
        ValueIfPresent = CFBooleanGetTypeID();
        if (v15 == ValueIfPresent)
        {
          ValueIfPresent = ctu::cf::assign(&__p, v14, v16);
        }
      }

      if ((__p.__r_.__value_.__s.__data_[0] & 1) == 0)
      {
LABEL_21:
        if (gBBULogMaskGet(void)::once == -1)
        {
          if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
          {
            goto LABEL_25;
          }
        }

        else
        {
          dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
          if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 0x20) == 0)
          {
            goto LABEL_25;
          }
        }

        if ((gBBULogVerbosity & 0x80000000) == 0)
        {
          _BBULog(13, 0, "BBUpdaterController", "", "fusing is requested\n", a6, a7, a8, v75);
        }

LABEL_25:
        v19 = *(a1 + 16);
        v18 = *(a1 + 24);
        v82 = v19;
        v83 = v18;
        if (v18)
        {
          atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        value.__r_.__value_.__l.__size_ = 0xAAAAAAAAAAAAAAAALL;
        value.__r_.__value_.__r.__words[2] = 0x7AAAAAAAAAAAAAALL;
        strcpy(&value, "unknown");
        memset(&__p, 170, sizeof(__p));
        (*(*v19 + 24))(&__p, v19);
        v20 = __p.__r_.__value_.__r.__words[0];
        v21 = __p.__r_.__value_.__r.__words[0] + 24 * v19[8];
        if (&value != v21)
        {
          v22 = *(v21 + 23);
          if (SHIBYTE(value.__r_.__value_.__r.__words[2]) < 0)
          {
            if (v22 >= 0)
            {
              v24 = (__p.__r_.__value_.__r.__words[0] + 24 * v19[8]);
            }

            else
            {
              v24 = *v21;
            }

            if (v22 >= 0)
            {
              v25 = *(v21 + 23);
            }

            else
            {
              v25 = *(v21 + 8);
            }

            std::string::__assign_no_alias<false>(&value.__r_.__value_.__l.__data_, v24, v25);
          }

          else if ((*(v21 + 23) & 0x80) != 0)
          {
            std::string::__assign_no_alias<true>(&value, *v21, *(v21 + 8));
          }

          else
          {
            v23 = *v21;
            value.__r_.__value_.__r.__words[2] = *(v21 + 16);
            *&value.__r_.__value_.__l.__data_ = v23;
          }

          v20 = __p.__r_.__value_.__r.__words[0];
        }

        if (v20)
        {
          size = __p.__r_.__value_.__l.__size_;
          v27 = v20;
          if (__p.__r_.__value_.__l.__size_ != v20)
          {
            do
            {
              v28 = *(size - 1);
              size -= 3;
              if (v28 < 0)
              {
                operator delete(*size);
              }
            }

            while (size != v20);
            v27 = __p.__r_.__value_.__r.__words[0];
          }

          __p.__r_.__value_.__l.__size_ = v20;
          operator delete(v27);
        }

        if (gBBULogMaskGet(void)::once == -1)
        {
          if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x20) != 0)
          {
LABEL_50:
            if ((gBBULogVerbosity & 0x80000000) == 0)
            {
              boost::core::demangle(&__p, (0x80000001E5390264 & 0x7FFFFFFFFFFFFFFFLL));
              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                p_p = &__p;
              }

              else
              {
                LOBYTE(p_p) = __p.__r_.__value_.__s.__data_[0];
              }

              v76 = v19[8];
              _BBULog(21, 0, "BBUpdaterController", "", "processing event: %s, current state %d [%s]\n", v29, v30, v31, p_p);
              if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(__p.__r_.__value_.__l.__data_);
              }
            }
          }
        }

        else
        {
          dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
          if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x20) != 0)
          {
            goto LABEL_50;
          }
        }

        boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::process_event_internal<BBUpdaterControllerFSM::eventFuse>(v82, &v78, 1);
        if (gBBULogMaskGet(void)::once == -1)
        {
          if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x20) == 0)
          {
            goto LABEL_128;
          }
        }

        else
        {
          dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
          if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x20) == 0)
          {
            goto LABEL_128;
          }
        }

        if ((gBBULogVerbosity & 0x80000000) == 0)
        {
          boost::core::demangle(&__p, (0x80000001E5390264 & 0x7FFFFFFFFFFFFFFFLL));
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v36 = &__p;
          }

          else
          {
            LOBYTE(v36) = __p.__r_.__value_.__s.__data_[0];
          }

LABEL_126:
          _BBULog(21, 0, "BBUpdaterController", "", "finish processing event: %s\n", v33, v34, v35, v36);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

LABEL_128:
        if (SHIBYTE(value.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(value.__r_.__value_.__l.__data_);
        }

        v69 = v83;
        if (v83)
        {
          if (!atomic_fetch_add(&v83->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v69->__on_zero_shared)(v69);
            std::__shared_weak_count::__release_weak(v69);
          }
        }

        return 0;
      }
    }
  }

  if (BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS == -1)
  {
    if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS == -1)
    {
      goto LABEL_15;
    }

LABEL_63:
    dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS, &__block_literal_global_13);
    if (BBUpdaterCommon::inRestoreOS(void)::restoreOS)
    {
      goto LABEL_64;
    }

    goto LABEL_16;
  }

  dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS, &__block_literal_global_7);
  if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS != -1)
  {
    goto LABEL_63;
  }

LABEL_15:
  if (BBUpdaterCommon::inRestoreOS(void)::restoreOS)
  {
    goto LABEL_64;
  }

LABEL_16:
  if ((BBUpdaterCommon::inRestoreOS(void)::recoveryOS & 1) == 0)
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 8) == 0)
      {
        goto LABEL_83;
      }

      goto LABEL_19;
    }

    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 8) != 0)
    {
LABEL_19:
      if (gBBULogVerbosity < 1)
      {
        goto LABEL_83;
      }

      v17 = "shouldPerformFusingVerification: it is not Resotre OS!\n";
LABEL_82:
      _BBULog(19, 1, "BBUpdaterController", "", v17, a6, a7, a8, v75);
    }

LABEL_83:
    (*(**a2 + 104))();
    if ((*(**a2 + 112))())
    {
      *(a1 + 242) = 1;
      BBUFeedback::handleComment(*(a1 + 56), "Will request provisioning");
      v55 = *(a1 + 16);
      v54 = *(a1 + 24);
      v82 = v55;
      v83 = v54;
      if (v54)
      {
        atomic_fetch_add_explicit(&v54->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      value.__r_.__value_.__l.__size_ = 0xAAAAAAAAAAAAAAAALL;
      value.__r_.__value_.__r.__words[2] = 0x7AAAAAAAAAAAAAALL;
      strcpy(&value, "unknown");
      memset(&__p, 170, sizeof(__p));
      (*(*v55 + 24))(&__p, v55);
      v56 = __p.__r_.__value_.__r.__words[0];
      v57 = __p.__r_.__value_.__r.__words[0] + 24 * v55[8];
      if (&value != v57)
      {
        v58 = *(v57 + 23);
        if (SHIBYTE(value.__r_.__value_.__r.__words[2]) < 0)
        {
          if (v58 >= 0)
          {
            v60 = (__p.__r_.__value_.__r.__words[0] + 24 * v55[8]);
          }

          else
          {
            v60 = *v57;
          }

          if (v58 >= 0)
          {
            v61 = *(v57 + 23);
          }

          else
          {
            v61 = *(v57 + 8);
          }

          std::string::__assign_no_alias<false>(&value.__r_.__value_.__l.__data_, v60, v61);
        }

        else if ((*(v57 + 23) & 0x80) != 0)
        {
          std::string::__assign_no_alias<true>(&value, *v57, *(v57 + 8));
        }

        else
        {
          v59 = *v57;
          value.__r_.__value_.__r.__words[2] = *(v57 + 16);
          *&value.__r_.__value_.__l.__data_ = v59;
        }

        v56 = __p.__r_.__value_.__r.__words[0];
      }

      if (v56)
      {
        v62 = __p.__r_.__value_.__l.__size_;
        v63 = v56;
        if (__p.__r_.__value_.__l.__size_ != v56)
        {
          do
          {
            v64 = *(v62 - 1);
            v62 -= 3;
            if (v64 < 0)
            {
              operator delete(*v62);
            }
          }

          while (v62 != v56);
          v63 = __p.__r_.__value_.__r.__words[0];
        }

        __p.__r_.__value_.__l.__size_ = v56;
        operator delete(v63);
      }

      if (gBBULogMaskGet(void)::once == -1)
      {
        if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x20) != 0)
        {
LABEL_114:
          if ((gBBULogVerbosity & 0x80000000) == 0)
          {
            boost::core::demangle(&__p, (0x80000001E539036DLL & 0x7FFFFFFFFFFFFFFFLL));
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v68 = &__p;
            }

            else
            {
              LOBYTE(v68) = __p.__r_.__value_.__s.__data_[0];
            }

            v77 = v55[8];
            _BBULog(21, 0, "BBUpdaterController", "", "processing event: %s, current state %d [%s]\n", v65, v66, v67, v68);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }
          }
        }
      }

      else
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x20) != 0)
        {
          goto LABEL_114;
        }
      }

      boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::process_event_internal<BBUpdaterControllerFSM::eventProvision>(v82, &v78, 1);
      if (gBBULogMaskGet(void)::once == -1)
      {
        if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x20) == 0)
        {
          goto LABEL_128;
        }
      }

      else
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x20) == 0)
        {
          goto LABEL_128;
        }
      }

      if ((gBBULogVerbosity & 0x80000000) == 0)
      {
        boost::core::demangle(&__p, (0x80000001E539036DLL & 0x7FFFFFFFFFFFFFFFLL));
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v36 = &__p;
        }

        else
        {
          LOBYTE(v36) = __p.__r_.__value_.__s.__data_[0];
        }

        goto LABEL_126;
      }

      goto LABEL_128;
    }

    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x10) != 0)
      {
        goto LABEL_92;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x10) != 0)
      {
LABEL_92:
        if (gBBULogVerbosity >= 1)
        {
          _BBULog(20, 1, "BBUpdaterController", "", "baseband provisioning is not requested\n", v51, v52, v53, v75);
        }
      }
    }

    *(a1 + 242) = 0;
    BBUpdaterController::process_event<BBUpdaterControllerFSM::eventFinalize>(*(a1 + 16), *(a1 + 24), &value);
    return 0;
  }

LABEL_64:
  if ((capabilities::updater::supportsBBFusing(ValueIfPresent) & 1) == 0)
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 8) == 0)
      {
        goto LABEL_83;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 8) == 0)
      {
        goto LABEL_83;
      }
    }

    if (gBBULogVerbosity < 1)
    {
      goto LABEL_83;
    }

    v17 = "shouldPerformFusingVerification: Fusing verification will not perform on legacy device\n";
    goto LABEL_82;
  }

  value.__r_.__value_.__r.__words[0] = 0;
  if (!CFDictionaryGetValueIfPresent(*(a1 + 32), @"fuseAttemptSucceeded", &value.__r_.__value_.__l.__data_))
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 8) == 0)
      {
        goto LABEL_83;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 8) == 0)
      {
        goto LABEL_83;
      }
    }

    if (gBBULogVerbosity < 1)
    {
      goto LABEL_83;
    }

    v17 = "shouldPerformFusingVerification: it didn't go through fusing process before.\n";
    goto LABEL_82;
  }

  v37 = BBUFusing::create(*(a1 + 56), a1 + 152);
  if (!v37)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 24, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp", 0x2E0u, "Assertion failure(fuser && Error in creating fusing process.)", v72, v73, v74, v75);
  }

  v38 = v37;
  FirmwareDataSource = BBUpdaterController::getFirmwareDataSource(a1, 0);
  v43 = FirmwareDataSource;
  if (!FirmwareDataSource)
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
      {
        goto LABEL_155;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
      {
LABEL_155:
        if (gBBULogVerbosity >= 6)
        {
          _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", v40, v41, v42, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp");
        }
      }
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "Fail to get update source for fuse");
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&value, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      value = __p;
    }

    v80 = 35;
    BBUpdaterController::process_event<BBUpdaterControllerFSM::eventError>(a1, &value);
    if (SHIBYTE(value.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(value.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    (*(*v38 + 8))(v38);
    goto LABEL_136;
  }

  if (!(*(*FirmwareDataSource + 64))(FirmwareDataSource))
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
      {
        goto LABEL_161;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
      {
LABEL_161:
        if (gBBULogVerbosity >= 6)
        {
          _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", v44, v45, v46, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp");
        }
      }
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, "Fusing Verification is requested, but could not found the fusing source (fusingprogram.plist)");
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&value, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      value = __p;
    }

    v80 = 24;
    BBUpdaterController::process_event<BBUpdaterControllerFSM::eventError>(a1, &value);
    if (SHIBYTE(value.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(value.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v50 = 0;
    goto LABEL_135;
  }

  if (!(*(*v38 + 24))(v38, v43, 0))
  {
    v50 = 1;
    goto LABEL_135;
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    v50 = 0;
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 8) == 0)
    {
      goto LABEL_135;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    v50 = 0;
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 8) == 0)
    {
      goto LABEL_135;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    _BBULog(19, 0, "BBUpdaterController", "", "Failed to verify fusing\n", v47, v48, v49, v75);
    v50 = 0;
  }

LABEL_135:
  (*(*v43 + 16))(v43);
  (*(*v38 + 8))(v38);
  if (v50)
  {
    goto LABEL_83;
  }

LABEL_136:
  BBUFeedback::handleComment(*(a1 + 56), "Failed to validate fusing");
  return 125;
}

void sub_1E5261B24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  (*(*v27 + 16))(v27);
  (*(*v26 + 8))(v26);
  _Unwind_Resume(a1);
}

void sub_1E5261C48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
    if ((a18 & 0x80000000) == 0)
    {
LABEL_3:
      std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v26 - 64);
      _Unwind_Resume(a1);
    }
  }

  else if ((a18 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a13);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v26 - 64);
  _Unwind_Resume(a1);
}

void sub_1E5261C90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    JUMPOUT(0x1E5261C9CLL);
  }

  JUMPOUT(0x1E5261C5CLL);
}

uint64_t std::ostringstream::basic_ostringstream[abi:ne200100](uint64_t a1)
{
  *(a1 + 160) = 0;
  v2 = MEMORY[0x1E69E5570] + 64;
  *(a1 + 112) = MEMORY[0x1E69E5570] + 64;
  v3 = a1 + 8;
  v4 = *(MEMORY[0x1E69E54E8] + 16);
  v5 = *(MEMORY[0x1E69E54E8] + 8);
  *a1 = v5;
  *(a1 + *(v5 - 24)) = v4;
  v6 = (a1 + *(*a1 - 24));
  std::ios_base::init(v6, (a1 + 8));
  v7 = MEMORY[0x1E69E5570] + 24;
  v6[1].__vftable = 0;
  v6[1].__fmtflags_ = -1;
  *a1 = v7;
  *(a1 + 112) = v2;
  *(a1 + 8) = MEMORY[0x1E69E5538] + 16;
  MEMORY[0x1E69272B0](a1 + 16);
  *(a1 + 72) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 8) = MEMORY[0x1E69E5548] + 16;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 16;
  std::stringbuf::__init_buf_ptrs[abi:ne200100](v3);
  return a1;
}

void sub_1E5261E5C(_Unwind_Exception *a1)
{
  if (*(v2 + 95) < 0)
  {
    operator delete(*v4);
  }

  *(v2 + 8) = v3;
  std::locale::~locale((v2 + 16));
  std::ostream::~ostream();
  MEMORY[0x1E69273B0](v1);
  _Unwind_Resume(a1);
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1)
{
  v2 = MEMORY[0x1E69E54E8];
  v3 = *MEMORY[0x1E69E54E8];
  *a1 = *MEMORY[0x1E69E54E8];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 8) = MEMORY[0x1E69E5548] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale((a1 + 16));
  std::ostream::~ostream();
  MEMORY[0x1E69273B0](a1 + 112);
  return a1;
}

void BBUpdaterController::dumpLogBufferInternal(uint64_t a1, void *a2, const char *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  if (!a3 || !*a2)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp", 0xB7Eu, "Assertion failure(logBuffer && msg)", v14, v15, v16, v17);
  }

  (*(**a2 + 40))(*a2);
  v18 = 0xAAAAAAAAAAAAAAAALL;
  v19 = 0xAAAAAAAAAAAAAAAALL;
  (*(**a2 + 48))(&v18);
  bzero(v21, 0x400uLL);
  BBUFeedback::handleComment(*(a1 + 56), "LOG BEGIN: ******* %s *******\n", a3);
  v6 = MEMORY[0x1E69E5318];
  while (1)
  {
    std::ios_base::getloc((v18 + *(*v18 - 24)));
    v7 = std::locale::use_facet(&v20, v6);
    (v7->__vftable[2].~facet_0)(v7, 10);
    std::locale::~locale(&v20);
    v8 = std::istream::getline();
    v9 = v8 + *(*v8 - 24);
    v10 = *(a1 + 56);
    if ((v9[32] & 5) != 0)
    {
      break;
    }

    BBUFeedback::handleComment(v10, "%s", v21);
  }

  BBUFeedback::handleComment(v10, "LOG END: ******* %s *******\n", a3);
  v11 = v19;
  if (v19 && !atomic_fetch_add((v19 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void sub_1E526224C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_1E5262260(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, std::locale a13)
{
  std::locale::~locale(&a13);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

void sub_1E526227C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void ___ZN19BBUpdaterController16sCmdInfoTableGetEv_block_invoke()
{
  v31 = @"Query Info";
  v0 = _Block_copy(&__block_literal_global_379);
  v30 = @"queryInfo";
  v32 = v0;
  v33 = &v30;
  v1 = std::__tree<std::__value_type<__CFString const*,BBUpdaterController::CmdInfo>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,BBUpdaterController::CmdInfo>,BBUpdaterController::CFStringCompareFunctor,true>,std::allocator<std::__value_type<__CFString const*,BBUpdaterController::CmdInfo>>>::__emplace_unique_key_args<__CFString const*,std::piecewise_construct_t const&,std::tuple<__CFString const*&&>,std::tuple<>>(&v30, &v33);
  v32 = 0;
  v2 = v1[6];
  v1[5] = @"Query Info";
  v1[6] = v0;
  if (v2)
  {
    _Block_release(v2);
  }

  v31 = @"Query Identifier Info";
  v3 = _Block_copy(&__block_literal_global_385);
  v30 = @"CopyIdentifier";
  v32 = v3;
  v33 = &v30;
  v4 = std::__tree<std::__value_type<__CFString const*,BBUpdaterController::CmdInfo>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,BBUpdaterController::CmdInfo>,BBUpdaterController::CFStringCompareFunctor,true>,std::allocator<std::__value_type<__CFString const*,BBUpdaterController::CmdInfo>>>::__emplace_unique_key_args<__CFString const*,std::piecewise_construct_t const&,std::tuple<__CFString const*&&>,std::tuple<>>(&v30, &v33);
  v32 = 0;
  v5 = v4[6];
  v4[5] = @"Query Identifier Info";
  v4[6] = v3;
  if (v5)
  {
    _Block_release(v5);
  }

  v31 = @"Perform Next Stage";
  v6 = _Block_copy(&__block_literal_global_391);
  v30 = @"performNextStage";
  v32 = v6;
  v33 = &v30;
  v7 = std::__tree<std::__value_type<__CFString const*,BBUpdaterController::CmdInfo>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,BBUpdaterController::CmdInfo>,BBUpdaterController::CFStringCompareFunctor,true>,std::allocator<std::__value_type<__CFString const*,BBUpdaterController::CmdInfo>>>::__emplace_unique_key_args<__CFString const*,std::piecewise_construct_t const&,std::tuple<__CFString const*&&>,std::tuple<>>(&v30, &v33);
  v32 = 0;
  v8 = v7[6];
  v7[5] = @"Perform Next Stage";
  v7[6] = v6;
  if (v8)
  {
    _Block_release(v8);
  }

  v31 = @"Perform Core Dump";
  v9 = _Block_copy(&__block_literal_global_397);
  v30 = @"performCoreDump";
  v32 = v9;
  v33 = &v30;
  v10 = std::__tree<std::__value_type<__CFString const*,BBUpdaterController::CmdInfo>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,BBUpdaterController::CmdInfo>,BBUpdaterController::CFStringCompareFunctor,true>,std::allocator<std::__value_type<__CFString const*,BBUpdaterController::CmdInfo>>>::__emplace_unique_key_args<__CFString const*,std::piecewise_construct_t const&,std::tuple<__CFString const*&&>,std::tuple<>>(&v30, &v33);
  v32 = 0;
  v11 = v10[6];
  v10[5] = @"Perform Core Dump";
  v10[6] = v9;
  if (v11)
  {
    _Block_release(v11);
  }

  v31 = @"Boot up";
  v12 = _Block_copy(&__block_literal_global_403);
  v30 = @"performBootup";
  v32 = v12;
  v33 = &v30;
  v13 = std::__tree<std::__value_type<__CFString const*,BBUpdaterController::CmdInfo>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,BBUpdaterController::CmdInfo>,BBUpdaterController::CFStringCompareFunctor,true>,std::allocator<std::__value_type<__CFString const*,BBUpdaterController::CmdInfo>>>::__emplace_unique_key_args<__CFString const*,std::piecewise_construct_t const&,std::tuple<__CFString const*&&>,std::tuple<>>(&v30, &v33);
  v32 = 0;
  v14 = v13[6];
  v13[5] = @"Boot up";
  v13[6] = v12;
  if (v14)
  {
    _Block_release(v14);
  }

  v31 = @"Manifest check";
  v15 = _Block_copy(&__block_literal_global_409);
  v30 = @"performManifestCheck";
  v32 = v15;
  v33 = &v30;
  v16 = std::__tree<std::__value_type<__CFString const*,BBUpdaterController::CmdInfo>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,BBUpdaterController::CmdInfo>,BBUpdaterController::CFStringCompareFunctor,true>,std::allocator<std::__value_type<__CFString const*,BBUpdaterController::CmdInfo>>>::__emplace_unique_key_args<__CFString const*,std::piecewise_construct_t const&,std::tuple<__CFString const*&&>,std::tuple<>>(&v30, &v33);
  v32 = 0;
  v17 = v16[6];
  v16[5] = @"Manifest check";
  v16[6] = v15;
  if (v17)
  {
    _Block_release(v17);
  }

  v31 = @"Query whether the system partition needs to be mounted";
  v18 = _Block_copy(&__block_literal_global_415);
  v30 = @"requireSystemPartitionMount";
  v32 = v18;
  v33 = &v30;
  v19 = std::__tree<std::__value_type<__CFString const*,BBUpdaterController::CmdInfo>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,BBUpdaterController::CmdInfo>,BBUpdaterController::CFStringCompareFunctor,true>,std::allocator<std::__value_type<__CFString const*,BBUpdaterController::CmdInfo>>>::__emplace_unique_key_args<__CFString const*,std::piecewise_construct_t const&,std::tuple<__CFString const*&&>,std::tuple<>>(&v30, &v33);
  v32 = 0;
  v20 = v19[6];
  v19[5] = @"Query whether the system partition needs to be mounted";
  v19[6] = v18;
  if (v20)
  {
    _Block_release(v20);
  }

  v31 = @"Query whether any partitions need to be mounted";
  v21 = _Block_copy(&__block_literal_global_418);
  v30 = @"requirePartitionMount";
  v32 = v21;
  v33 = &v30;
  v22 = std::__tree<std::__value_type<__CFString const*,BBUpdaterController::CmdInfo>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,BBUpdaterController::CmdInfo>,BBUpdaterController::CFStringCompareFunctor,true>,std::allocator<std::__value_type<__CFString const*,BBUpdaterController::CmdInfo>>>::__emplace_unique_key_args<__CFString const*,std::piecewise_construct_t const&,std::tuple<__CFString const*&&>,std::tuple<>>(&v30, &v33);
  v32 = 0;
  v23 = v22[6];
  v22[5] = @"Query whether any partitions need to be mounted";
  v22[6] = v21;
  if (v23)
  {
    _Block_release(v23);
  }

  v31 = @"Copy baseband data to migrate during an erase install";
  v24 = _Block_copy(&__block_literal_global_424);
  v30 = @"copyBasebandMigrationData";
  v32 = v24;
  v33 = &v30;
  v25 = std::__tree<std::__value_type<__CFString const*,BBUpdaterController::CmdInfo>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,BBUpdaterController::CmdInfo>,BBUpdaterController::CFStringCompareFunctor,true>,std::allocator<std::__value_type<__CFString const*,BBUpdaterController::CmdInfo>>>::__emplace_unique_key_args<__CFString const*,std::piecewise_construct_t const&,std::tuple<__CFString const*&&>,std::tuple<>>(&v30, &v33);
  v32 = 0;
  v26 = v25[6];
  v25[5] = @"Copy baseband data to migrate during an erase install";
  v25[6] = v24;
  if (v26)
  {
    _Block_release(v26);
  }

  v31 = @"restoreBasebandMigrationData";
  v27 = _Block_copy(&__block_literal_global_433);
  v30 = @"restoreBasebandMigrationData";
  v32 = v27;
  v33 = &v30;
  v28 = std::__tree<std::__value_type<__CFString const*,BBUpdaterController::CmdInfo>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,BBUpdaterController::CmdInfo>,BBUpdaterController::CFStringCompareFunctor,true>,std::allocator<std::__value_type<__CFString const*,BBUpdaterController::CmdInfo>>>::__emplace_unique_key_args<__CFString const*,std::piecewise_construct_t const&,std::tuple<__CFString const*&&>,std::tuple<>>(&v30, &v33);
  v32 = 0;
  v29 = v28[6];
  v28[5] = @"restoreBasebandMigrationData";
  v28[6] = v27;
  if (v29)
  {
    _Block_release(v29);
  }
}

void sub_1E5262640(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  BBUpdaterController::CmdInfo::~CmdInfo(va);
  _Unwind_Resume(a1);
}

void sub_1E5262658(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  BBUpdaterController::CmdInfo::~CmdInfo(va);
  _Unwind_Resume(a1);
}

void sub_1E5262670(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  BBUpdaterController::CmdInfo::~CmdInfo(va);
  _Unwind_Resume(a1);
}

void sub_1E5262688(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  BBUpdaterController::CmdInfo::~CmdInfo(va);
  _Unwind_Resume(a1);
}

void sub_1E52626A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  BBUpdaterController::CmdInfo::~CmdInfo(va);
  _Unwind_Resume(a1);
}

void sub_1E52626B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  BBUpdaterController::CmdInfo::~CmdInfo(va);
  _Unwind_Resume(a1);
}

void sub_1E52626D0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  BBUpdaterController::CmdInfo::~CmdInfo(va);
  _Unwind_Resume(a1);
}

void sub_1E52626E8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  BBUpdaterController::CmdInfo::~CmdInfo(va);
  _Unwind_Resume(a1);
}

void sub_1E5262700(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  BBUpdaterController::CmdInfo::~CmdInfo(va);
  _Unwind_Resume(a1);
}

void sub_1E5262718(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  BBUpdaterController::CmdInfo::~CmdInfo(va);
  _Unwind_Resume(a1);
}

CFTypeRef ___ZN19BBUpdaterController16sCmdInfoTableGetEv_block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  BBUpdaterController::process_event<BBUpdaterControllerFSM::eventCmdQueryInfo>(*(a2 + 16), *(a2 + 24), &v6);
  BBUpdaterController::updateOutputFusingManifestInfo(a2);
  result = CFRetain(*(a2 + 32));
  *a3 = result;
  return result;
}

void BBUpdaterController::CmdInfo::~CmdInfo(BBUpdaterController::CmdInfo *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    _Block_release(v1);
  }
}

void ___ZN19BBUpdaterController16sCmdInfoTableGetEv_block_invoke_3(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = 1;
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    _BBULog(0, 0, "BBUpdaterController", "", "Entering cmdCopyIdentifier\n", a6, a7, a8, v12);
  }

LABEL_5:
  v10 = *(a2 + 48);
  TelephonyBasebandGetReset();
  BBUpdaterController::process_event<BBUpdaterControllerFSM::eventCmdQueryInfo>(*(a2 + 16), *(a2 + 24), &v13);
  (*(**(a2 + 64) + 40))(*(a2 + 64), a2 + 152);
  BBUpdaterController::updateOutputPersonalizedParameters(a2);
  BBUpdaterController::updateOutputFusingManifestInfo(a2);
  v11 = CFRetain(*(a2 + 32));
  *a3 = v11;
  CFShow(v11);
}

void sub_1E5262B28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if ((a17 & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

CFTypeRef ___ZN19BBUpdaterController16sCmdInfoTableGetEv_block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  memset(&v27, 0, sizeof(v27));
  v29 = 0;
  std::string::__assign_external(&v27, "Fail to perform cmdPerformNextStage", 0x23uLL);
  v28 = 42;
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  v33 = v6;
  v34 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  __dst[1] = 0xAAAAAAAAAAAAAAAALL;
  v32 = 0x7AAAAAAAAAAAAAALL;
  strcpy(__dst, "unknown");
  memset(__p, 170, sizeof(__p));
  (*(*v6 + 24))(__p, v6);
  v7 = __p[0];
  v8 = (__p[0] + 24 * v6[8]);
  if (__dst != v8)
  {
    v9 = *(v8 + 23);
    if (SHIBYTE(v32) < 0)
    {
      if (v9 >= 0)
      {
        v11 = __p[0] + 24 * v6[8];
      }

      else
      {
        v11 = *v8;
      }

      if (v9 >= 0)
      {
        v12 = *(v8 + 23);
      }

      else
      {
        v12 = v8[1];
      }

      std::string::__assign_no_alias<false>(__dst, v11, v12);
    }

    else if ((*(v8 + 23) & 0x80) != 0)
    {
      std::string::__assign_no_alias<true>(__dst, *v8, v8[1]);
    }

    else
    {
      v10 = *v8;
      v32 = v8[2];
      *__dst = v10;
    }

    v7 = __p[0];
  }

  if (v7)
  {
    v13 = __p[1];
    v14 = v7;
    if (__p[1] != v7)
    {
      do
      {
        v15 = *(v13 - 1);
        v13 -= 3;
        if (v15 < 0)
        {
          operator delete(*v13);
        }
      }

      while (v13 != v7);
      v14 = __p[0];
    }

    __p[1] = v7;
    operator delete(v14);
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x20) == 0)
    {
      goto LABEL_32;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x20) == 0)
    {
      goto LABEL_32;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    boost::core::demangle(__p, (0x80000001E5390482 & 0x7FFFFFFFFFFFFFFFLL));
    if (SHIBYTE(__p[2]) >= 0)
    {
      v19 = __p;
    }

    else
    {
      LOBYTE(v19) = __p[0];
    }

    v26 = v6[8];
    _BBULog(21, 0, "BBUpdaterController", "", "processing event: %s, current state %d [%s]\n", v16, v17, v18, v19);
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }
  }

LABEL_32:
  boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::process_event_internal<BBUpdaterControllerFSM::eventCmdPerformNextStage>(v33, &v27, 1);
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x20) == 0)
    {
      goto LABEL_40;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x20) == 0)
    {
      goto LABEL_40;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    boost::core::demangle(__p, (0x80000001E5390482 & 0x7FFFFFFFFFFFFFFFLL));
    if (SHIBYTE(__p[2]) >= 0)
    {
      v23 = __p;
    }

    else
    {
      LOBYTE(v23) = __p[0];
    }

    _BBULog(21, 0, "BBUpdaterController", "", "finish processing event: %s\n", v20, v21, v22, v23);
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }
  }

LABEL_40:
  if (SHIBYTE(v32) < 0)
  {
    operator delete(__dst[0]);
  }

  v24 = v34;
  if (v34 && !atomic_fetch_add(&v34->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v24->__on_zero_shared)(v24);
    std::__shared_weak_count::__release_weak(v24);
    if ((SHIBYTE(v27.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_45:
    operator delete(v27.__r_.__value_.__l.__data_);
  }

LABEL_46:
  BBUpdaterController::updateOutputFusingManifestInfo(a2);
  result = CFRetain(*(a2 + 32));
  *a3 = result;
  return result;
}

void sub_1E5262F48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  std::vector<std::string>::~vector[abi:ne200100](&a19);
  if (a30 < 0)
  {
    operator delete(__p);
  }

  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v30 - 80);
  if (a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(a1);
}

void sub_1E5262FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if ((a17 & 0x80000000) == 0)
  {
    JUMPOUT(0x1E5262FACLL);
  }

  JUMPOUT(0x1E5262FA4);
}

CFTypeRef ___ZN19BBUpdaterController16sCmdInfoTableGetEv_block_invoke_5(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  v31 = v6;
  v32 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  __dst[1] = 0xAAAAAAAAAAAAAAAALL;
  v30 = 0x7AAAAAAAAAAAAAALL;
  strcpy(__dst, "unknown");
  memset(__p, 170, sizeof(__p));
  (*(*v6 + 24))(__p, v6);
  v7 = __p[0];
  v8 = (__p[0] + 24 * v6[8]);
  if (__dst != v8)
  {
    v9 = *(v8 + 23);
    if (SHIBYTE(v30) < 0)
    {
      if (v9 >= 0)
      {
        v11 = __p[0] + 24 * v6[8];
      }

      else
      {
        v11 = *v8;
      }

      if (v9 >= 0)
      {
        v12 = *(v8 + 23);
      }

      else
      {
        v12 = v8[1];
      }

      std::string::__assign_no_alias<false>(__dst, v11, v12);
    }

    else if ((*(v8 + 23) & 0x80) != 0)
    {
      std::string::__assign_no_alias<true>(__dst, *v8, v8[1]);
    }

    else
    {
      v10 = *v8;
      v30 = v8[2];
      *__dst = v10;
    }

    v7 = __p[0];
  }

  if (v7)
  {
    v13 = __p[1];
    v14 = v7;
    if (__p[1] != v7)
    {
      do
      {
        v15 = *(v13 - 1);
        v13 -= 3;
        if (v15 < 0)
        {
          operator delete(*v13);
        }
      }

      while (v13 != v7);
      v14 = __p[0];
    }

    __p[1] = v7;
    operator delete(v14);
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x20) == 0)
    {
      goto LABEL_32;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x20) == 0)
    {
      goto LABEL_32;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    boost::core::demangle(__p, (0x80000001E53907ADLL & 0x7FFFFFFFFFFFFFFFLL));
    if (SHIBYTE(__p[2]) >= 0)
    {
      v19 = __p;
    }

    else
    {
      LOBYTE(v19) = __p[0];
    }

    v26 = v6[8];
    _BBULog(21, 0, "BBUpdaterController", "", "processing event: %s, current state %d [%s]\n", v16, v17, v18, v19);
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }
  }

LABEL_32:
  boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::process_event_internal<BBUpdaterControllerFSM::eventCmdPerformCoreDump>(v31, &v27, 1);
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x20) == 0)
    {
      goto LABEL_40;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x20) == 0)
    {
      goto LABEL_40;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    boost::core::demangle(__p, (0x80000001E53907ADLL & 0x7FFFFFFFFFFFFFFFLL));
    if (SHIBYTE(__p[2]) >= 0)
    {
      v23 = __p;
    }

    else
    {
      LOBYTE(v23) = __p[0];
    }

    _BBULog(21, 0, "BBUpdaterController", "", "finish processing event: %s\n", v20, v21, v22, v23);
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }
  }

LABEL_40:
  if (SHIBYTE(v30) < 0)
  {
    operator delete(__dst[0]);
  }

  v24 = v32;
  if (v32 && !atomic_fetch_add(&v32->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v24->__on_zero_shared)(v24);
    std::__shared_weak_count::__release_weak(v24);
  }

  BBUpdaterController::updateOutputFusingManifestInfo(a2);
  result = CFRetain(*(a2 + 32));
  *a3 = result;
  return result;
}

void sub_1E5263340(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  std::vector<std::string>::~vector[abi:ne200100](&a14);
  if ((a25 & 0x80000000) == 0)
  {
    std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v25 - 80);
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v25 - 80);
  _Unwind_Resume(a1);
}

CFTypeRef ___ZN19BBUpdaterController16sCmdInfoTableGetEv_block_invoke_6(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  v31 = v6;
  v32 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  __dst[1] = 0xAAAAAAAAAAAAAAAALL;
  v30 = 0x7AAAAAAAAAAAAAALL;
  strcpy(__dst, "unknown");
  memset(__p, 170, sizeof(__p));
  (*(*v6 + 24))(__p, v6);
  v7 = __p[0];
  v8 = (__p[0] + 24 * v6[8]);
  if (__dst != v8)
  {
    v9 = *(v8 + 23);
    if (SHIBYTE(v30) < 0)
    {
      if (v9 >= 0)
      {
        v11 = __p[0] + 24 * v6[8];
      }

      else
      {
        v11 = *v8;
      }

      if (v9 >= 0)
      {
        v12 = *(v8 + 23);
      }

      else
      {
        v12 = v8[1];
      }

      std::string::__assign_no_alias<false>(__dst, v11, v12);
    }

    else if ((*(v8 + 23) & 0x80) != 0)
    {
      std::string::__assign_no_alias<true>(__dst, *v8, v8[1]);
    }

    else
    {
      v10 = *v8;
      v30 = v8[2];
      *__dst = v10;
    }

    v7 = __p[0];
  }

  if (v7)
  {
    v13 = __p[1];
    v14 = v7;
    if (__p[1] != v7)
    {
      do
      {
        v15 = *(v13 - 1);
        v13 -= 3;
        if (v15 < 0)
        {
          operator delete(*v13);
        }
      }

      while (v13 != v7);
      v14 = __p[0];
    }

    __p[1] = v7;
    operator delete(v14);
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x20) == 0)
    {
      goto LABEL_32;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x20) == 0)
    {
      goto LABEL_32;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    boost::core::demangle(__p, (0x80000001E53908D4 & 0x7FFFFFFFFFFFFFFFLL));
    if (SHIBYTE(__p[2]) >= 0)
    {
      v19 = __p;
    }

    else
    {
      LOBYTE(v19) = __p[0];
    }

    v26 = v6[8];
    _BBULog(21, 0, "BBUpdaterController", "", "processing event: %s, current state %d [%s]\n", v16, v17, v18, v19);
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }
  }

LABEL_32:
  boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::process_event_internal<BBUpdaterControllerFSM::eventCmdPerformBootup>(v31, &v27, 1);
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x20) == 0)
    {
      goto LABEL_40;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x20) == 0)
    {
      goto LABEL_40;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    boost::core::demangle(__p, (0x80000001E53908D4 & 0x7FFFFFFFFFFFFFFFLL));
    if (SHIBYTE(__p[2]) >= 0)
    {
      v23 = __p;
    }

    else
    {
      LOBYTE(v23) = __p[0];
    }

    _BBULog(21, 0, "BBUpdaterController", "", "finish processing event: %s\n", v20, v21, v22, v23);
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }
  }

LABEL_40:
  if (SHIBYTE(v30) < 0)
  {
    operator delete(__dst[0]);
  }

  v24 = v32;
  if (v32 && !atomic_fetch_add(&v32->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v24->__on_zero_shared)(v24);
    std::__shared_weak_count::__release_weak(v24);
  }

  BBUpdaterController::updateOutputFusingManifestInfo(a2);
  result = CFRetain(*(a2 + 32));
  *a3 = result;
  return result;
}

void sub_1E5263740(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  std::vector<std::string>::~vector[abi:ne200100](&a14);
  if ((a25 & 0x80000000) == 0)
  {
    std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v25 - 80);
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v25 - 80);
  _Unwind_Resume(a1);
}

CFTypeRef ___ZN19BBUpdaterController16sCmdInfoTableGetEv_block_invoke_7(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  v31 = v6;
  v32 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  __dst[1] = 0xAAAAAAAAAAAAAAAALL;
  v30 = 0x7AAAAAAAAAAAAAALL;
  strcpy(__dst, "unknown");
  memset(__p, 170, sizeof(__p));
  (*(*v6 + 24))(__p, v6);
  v7 = __p[0];
  v8 = (__p[0] + 24 * v6[8]);
  if (__dst != v8)
  {
    v9 = *(v8 + 23);
    if (SHIBYTE(v30) < 0)
    {
      if (v9 >= 0)
      {
        v11 = __p[0] + 24 * v6[8];
      }

      else
      {
        v11 = *v8;
      }

      if (v9 >= 0)
      {
        v12 = *(v8 + 23);
      }

      else
      {
        v12 = v8[1];
      }

      std::string::__assign_no_alias<false>(__dst, v11, v12);
    }

    else if ((*(v8 + 23) & 0x80) != 0)
    {
      std::string::__assign_no_alias<true>(__dst, *v8, v8[1]);
    }

    else
    {
      v10 = *v8;
      v30 = v8[2];
      *__dst = v10;
    }

    v7 = __p[0];
  }

  if (v7)
  {
    v13 = __p[1];
    v14 = v7;
    if (__p[1] != v7)
    {
      do
      {
        v15 = *(v13 - 1);
        v13 -= 3;
        if (v15 < 0)
        {
          operator delete(*v13);
        }
      }

      while (v13 != v7);
      v14 = __p[0];
    }

    __p[1] = v7;
    operator delete(v14);
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x20) == 0)
    {
      goto LABEL_32;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x20) == 0)
    {
      goto LABEL_32;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    boost::core::demangle(__p, (0x80000001E53909F7 & 0x7FFFFFFFFFFFFFFFLL));
    if (SHIBYTE(__p[2]) >= 0)
    {
      v19 = __p;
    }

    else
    {
      LOBYTE(v19) = __p[0];
    }

    v26 = v6[8];
    _BBULog(21, 0, "BBUpdaterController", "", "processing event: %s, current state %d [%s]\n", v16, v17, v18, v19);
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }
  }

LABEL_32:
  boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::process_event_internal<BBUpdaterControllerFSM::eventCmdPerformManifestCheck>(v31, &v27, 1);
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x20) == 0)
    {
      goto LABEL_40;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 0x20) == 0)
    {
      goto LABEL_40;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    boost::core::demangle(__p, (0x80000001E53909F7 & 0x7FFFFFFFFFFFFFFFLL));
    if (SHIBYTE(__p[2]) >= 0)
    {
      v23 = __p;
    }

    else
    {
      LOBYTE(v23) = __p[0];
    }

    _BBULog(21, 0, "BBUpdaterController", "", "finish processing event: %s\n", v20, v21, v22, v23);
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }
  }

LABEL_40:
  if (SHIBYTE(v30) < 0)
  {
    operator delete(__dst[0]);
  }

  v24 = v32;
  if (v32 && !atomic_fetch_add(&v32->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v24->__on_zero_shared)(v24);
    std::__shared_weak_count::__release_weak(v24);
  }

  BBUpdaterController::updateOutputFusingManifestInfo(a2);
  result = CFRetain(*(a2 + 32));
  *a3 = result;
  return result;
}

void sub_1E5263B40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  std::vector<std::string>::~vector[abi:ne200100](&a14);
  if ((a25 & 0x80000000) == 0)
  {
    std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v25 - 80);
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v25 - 80);
  _Unwind_Resume(a1);
}

void ___ZN19BBUpdaterController16sCmdInfoTableGetEv_block_invoke_10(capabilities::updater *a1, uint64_t a2, CFMutableDictionaryRef *a3)
{
  if (a3)
  {
    v4 = *(a2 + 56);
    BasebandMigrationDataType = capabilities::updater::getBasebandMigrationDataType(a1);
    if (BasebandMigrationDataType == 1)
    {
      v7 = BBUICE16UpdateSource::copyBasebandMigrationData(v4, v6);
    }

    else if (BasebandMigrationDataType)
    {
      v7 = 0;
    }

    else
    {
      v7 = BBUEUR20UpdateSource::copyBasebandMigrationData(v4, v6);
    }

    *a3 = v7;
    return;
  }

  pthread_mutex_lock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
  v8 = off_1ED944120;
  if (!off_1ED944120)
  {
    v9 = operator new(0x38uLL);
    v10 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v11 = dispatch_queue_create("BBUError", v10);
    *v9 = 0;
    v9[1] = 0;
    v9[2] = v11;
    if (v11)
    {
      v12 = v11;
      dispatch_retain(v11);
      v9[3] = 0;
      dispatch_release(v12);
    }

    else
    {
      v9[3] = 0;
    }

    v9[4] = 0;
    v9[5] = 0;
    v9[6] = 0;
    std::shared_ptr<BBUError>::shared_ptr[abi:ne200100]<BBUError,std::shared_ptr<BBUError> ctu::SharedSynchronizable<BBUError>::make_shared_ptr<BBUError>(BBUError*)::{lambda(BBUError*)#1},0>(&v20, v9);
    v13 = v20;
    v20 = 0uLL;
    v14 = *(&off_1ED944120 + 1);
    off_1ED944120 = v13;
    if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v14->__on_zero_shared)(v14);
      std::__shared_weak_count::__release_weak(v14);
    }

    v15 = *(&v20 + 1);
    if (*(&v20 + 1) && !atomic_fetch_add((*(&v20 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v15->__on_zero_shared)(v15);
      std::__shared_weak_count::__release_weak(v15);
    }

    v8 = off_1ED944120;
  }

  v16 = *(&off_1ED944120 + 1);
  if (*(&off_1ED944120 + 1))
  {
    atomic_fetch_add_explicit((*(&off_1ED944120 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
  v19 = 15;
  strcpy(__p, "Null output ptr");
  *&v20 = MEMORY[0x1E69E9820];
  *(&v20 + 1) = 0x40000000;
  v21 = ___ZN8BBUError8addErrorERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE9BBUReturn_block_invoke;
  v22 = &__block_descriptor_tmp_8;
  v23 = v8;
  v24 = __p;
  v25 = 2;
  v26 = &v20;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI8BBUErrorE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  block[3] = &__block_descriptor_tmp_13_0;
  block[4] = v8;
  block[5] = &v26;
  v17 = *(v8 + 16);
  if (!*(v8 + 24))
  {
    dispatch_sync(v17, block);
    if ((v19 & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  dispatch_async_and_wait(v17, block);
  if (v19 < 0)
  {
LABEL_24:
    operator delete(__p[0]);
  }

LABEL_25:
  if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
  }
}

void ___ZN19BBUpdaterController16sCmdInfoTableGetEv_block_invoke_11(uint64_t a1, uint64_t a2, const __CFDictionary **a3)
{
  if (a3)
  {
    *&v28 = 0xAAAAAAAAAAAAAAAALL;
    *(&v28 + 1) = 0xAAAAAAAAAAAAAAAALL;
    ctu::cf::dict_adapter::dict_adapter(&v28, *a3);
    v4 = (*v28)(&v28, @"MigrationData");
    v5 = v4;
    if (v4)
    {
      v6 = CFGetTypeID(v4);
      if (v6 == CFDictionaryGetTypeID())
      {
        v7 = v5;
      }

      else
      {
        v7 = 0;
      }

      CFRelease(v5);
    }

    else
    {
      v7 = 0;
    }

    BBUFeedback::handleComment(*(a2 + 56), "%s: restoring migration data", "cmdRestoreBasebandMigrationData");
    v13 = *(a2 + 56);
    BasebandMigrationDataType = capabilities::updater::getBasebandMigrationDataType(v14);
    if (BasebandMigrationDataType)
    {
      if (BasebandMigrationDataType != 1)
      {
        if (BasebandMigrationDataType == 2)
        {
          v17 = *(a2 + 56);
LABEL_18:
          v20 = "succeeded";
LABEL_21:
          BBUFeedback::handleComment(v17, "restoring baseband migration data %s", v20);
          MEMORY[0x1E69265E0](&v28);
          return;
        }

        v17 = *(a2 + 56);
LABEL_20:
        v20 = "failed";
        goto LABEL_21;
      }

      v18 = BBUICE16UpdateSource::restoreBasebandMigrationData(v13, v7, v16);
    }

    else
    {
      v18 = BBUEUR20UpdateSource::restoreBasebandMigrationData(v13, v7, v16);
    }

    v19 = v18;
    v17 = *(a2 + 56);
    if (v19)
    {
      goto LABEL_18;
    }

    goto LABEL_20;
  }

  pthread_mutex_lock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
  v8 = off_1ED944120;
  if (!off_1ED944120)
  {
    v9 = operator new(0x38uLL);
    v10 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v11 = dispatch_queue_create("BBUError", v10);
    *v9 = 0;
    v9[1] = 0;
    v9[2] = v11;
    if (v11)
    {
      v12 = v11;
      dispatch_retain(v11);
      v9[3] = 0;
      dispatch_release(v12);
    }

    else
    {
      v9[3] = 0;
    }

    v9[4] = 0;
    v9[5] = 0;
    v9[6] = 0;
    std::shared_ptr<BBUError>::shared_ptr[abi:ne200100]<BBUError,std::shared_ptr<BBUError> ctu::SharedSynchronizable<BBUError>::make_shared_ptr<BBUError>(BBUError*)::{lambda(BBUError*)#1},0>(&v28, v9);
    v21 = v28;
    v28 = 0uLL;
    v22 = *(&off_1ED944120 + 1);
    off_1ED944120 = v21;
    if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v22->__on_zero_shared)(v22);
      std::__shared_weak_count::__release_weak(v22);
    }

    v23 = *(&v28 + 1);
    if (*(&v28 + 1) && !atomic_fetch_add((*(&v28 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v23->__on_zero_shared)(v23);
      std::__shared_weak_count::__release_weak(v23);
    }

    v8 = off_1ED944120;
  }

  v24 = *(&off_1ED944120 + 1);
  if (*(&off_1ED944120 + 1))
  {
    atomic_fetch_add_explicit((*(&off_1ED944120 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<BBUError,BBUError,ctu::PthreadMutexGuardPolicy<BBUError>>::sInstance);
  v27 = 15;
  strcpy(__p, "Null output ptr");
  *&v28 = MEMORY[0x1E69E9820];
  *(&v28 + 1) = 0x40000000;
  v29 = ___ZN8BBUError8addErrorERKNSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE9BBUReturn_block_invoke;
  v30 = &__block_descriptor_tmp_8;
  v31 = v8;
  v32 = __p;
  v33 = 2;
  v34 = &v28;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI8BBUErrorE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  block[3] = &__block_descriptor_tmp_13_0;
  block[4] = v8;
  block[5] = &v34;
  v25 = *(v8 + 16);
  if (!*(v8 + 24))
  {
    dispatch_sync(v25, block);
    if ((v27 & 0x80000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  dispatch_async_and_wait(v25, block);
  if (v27 < 0)
  {
LABEL_35:
    operator delete(__p[0]);
  }

LABEL_36:
  if (v24 && !atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v24->__on_zero_shared)(v24);
    std::__shared_weak_count::__release_weak(v24);
  }
}

void BBUpdaterController::DebugOptions::~DebugOptions(void **this)
{
  if (*(this + 87) < 0)
  {
    operator delete(this[8]);
    if ((*(this + 63) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(this + 39) & 0x80000000) == 0)
      {
        return;
      }

LABEL_7:
      operator delete(this[2]);
      return;
    }
  }

  else if ((*(this + 63) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(this[5]);
  if (*(this + 39) < 0)
  {
    goto LABEL_7;
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

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s, std::string::size_type __n)
{
  LODWORD(v5) = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((v5 & 0x80000000) != 0)
  {
    v10 = this->__r_.__value_.__r.__words[2];
    v8 = (v10 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (__n > v8)
    {
      v11 = 0x7FFFFFFFFFFFFFF7;
      if (0x7FFFFFFFFFFFFFF7 - (v10 & 0x7FFFFFFFFFFFFFFFLL) >= __n - v8)
      {
        v9 = this->__r_.__value_.__r.__words[0];
        if (v8 >= 0x3FFFFFFFFFFFFFF3)
        {
          v6 = operator new(0x7FFFFFFFFFFFFFF7uLL);
          memcpy(v6, __s, __n);
LABEL_25:
          operator delete(v9);
LABEL_26:
          this->__r_.__value_.__r.__words[2] = v11 | 0x8000000000000000;
          this->__r_.__value_.__r.__words[0] = v6;
LABEL_27:
          this->__r_.__value_.__l.__size_ = __n;
          goto LABEL_28;
        }

        v7 = __s;
LABEL_9:
        v12 = 2 * v8;
        if (__n > 2 * v8)
        {
          v12 = __n;
        }

        if ((v12 | 7) == 0x17)
        {
          v13 = 25;
        }

        else
        {
          v13 = (v12 | 7) + 1;
        }

        if (v12 >= 0x17)
        {
          v11 = v13;
        }

        else
        {
          v11 = 23;
        }

        v6 = operator new(v11);
        memcpy(v6, v7, __n);
        if (v8 == 22)
        {
          goto LABEL_26;
        }

        goto LABEL_25;
      }

LABEL_29:
      std::string::__throw_length_error[abi:ne200100]();
    }

    v5 = HIBYTE(v10);
    v6 = this->__r_.__value_.__r.__words[0];
  }

  else
  {
    v6 = this;
    if (__n > 0x16)
    {
      if (__n - 0x7FFFFFFFFFFFFFF7 >= 0x800000000000001FLL)
      {
        v7 = __s;
        v8 = 22;
        v9 = this;
        goto LABEL_9;
      }

      goto LABEL_29;
    }
  }

  if (__n)
  {
    memmove(v6, __s, __n);
    LOBYTE(v5) = *(&this->__r_.__value_.__s + 23);
  }

  if ((v5 & 0x80) != 0)
  {
    goto LABEL_27;
  }

  *(&this->__r_.__value_.__s + 23) = __n & 0x7F;
LABEL_28:
  *(v6 + __n) = 0;
  return this;
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s)
{
  v4 = strlen(__s);

  return std::string::__assign_external(this, __s, v4);
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

{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void *boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::~state_machine(void *a1)
{
  *a1 = &unk_1F5EFF338;
  boost::fusion::vector_detail::vector_data<std::integer_sequence<unsigned long,0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul>,BBUpdaterControllerFSM::ControllerFSM_TOP::stateDebugMode,BBUpdaterControllerFSM::ControllerFSM_TOP::stateCoredump,BBUpdaterControllerFSM::ControllerFSM_TOP::stateRegularMode,BBUpdaterControllerFSM::ControllerFSM_TOP::stateFinalize,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::ControllerFSM_TOP::stateFusing,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::ControllerFSM_TOP::stateManifestCheck,BBUpdaterControllerFSM::ControllerFSM_TOP::stateBooting,BBUpdaterControllerFSM::ControllerFSM_TOP::stateInit>::~vector_data(a1 + 13);
  std::deque<boost::function<boost::msm::back::HandledEnum ()(void)>>::clear(a1 + 5);
  v2 = a1[6];
  v3 = a1[7];
  if (v2 != v3)
  {
    do
    {
      v4 = *v2++;
      operator delete(v4);
    }

    while (v2 != v3);
    v2 = a1[6];
    v3 = a1[7];
  }

  if (v3 != v2)
  {
    a1[7] = v3 + ((v2 - v3 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v5 = a1[5];
  if (v5)
  {
    operator delete(v5);
  }

  return a1;
}

void boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::~state_machine(void *a1)
{
  *a1 = &unk_1F5EFF338;
  boost::fusion::vector_detail::vector_data<std::integer_sequence<unsigned long,0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul>,BBUpdaterControllerFSM::ControllerFSM_TOP::stateDebugMode,BBUpdaterControllerFSM::ControllerFSM_TOP::stateCoredump,BBUpdaterControllerFSM::ControllerFSM_TOP::stateRegularMode,BBUpdaterControllerFSM::ControllerFSM_TOP::stateFinalize,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::ControllerFSM_TOP::stateFusing,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::ControllerFSM_TOP::stateManifestCheck,BBUpdaterControllerFSM::ControllerFSM_TOP::stateBooting,BBUpdaterControllerFSM::ControllerFSM_TOP::stateInit>::~vector_data(a1 + 13);
  std::deque<boost::function<boost::msm::back::HandledEnum ()(void)>>::clear(a1 + 5);
  v2 = a1[6];
  v3 = a1[7];
  if (v2 != v3)
  {
    do
    {
      v4 = *v2++;
      operator delete(v4);
    }

    while (v2 != v3);
    v2 = a1[6];
    v3 = a1[7];
  }

  if (v3 != v2)
  {
    a1[7] = v3 + ((v2 - v3 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v5 = a1[5];
  if (v5)
  {
    operator delete(v5);
  }

  operator delete(a1);
}

void BBUpdaterControllerFSM::ControllerFSM_TOP::getStateNames(std::string **a1@<X8>)
{
  v20 = *MEMORY[0x1E69E9840];
  strcpy(v5, "\tstateBooting");
  strcpy(&v4, "stateInit");
  v6 = 12;
  HIBYTE(v7[2]) = 18;
  strcpy(v7, "stateManifestCheck");
  HIBYTE(v8[2]) = 16;
  strcpy(v8, "statePersonalize");
  v10 = 11;
  strcpy(v9, "stateFusing");
  v12 = 14;
  strcpy(v11, "stateProvision");
  v14 = 13;
  strcpy(v13, "stateFinalize");
  HIBYTE(v15[2]) = 16;
  strcpy(v15, "stateRegularMode");
  v17 = 13;
  strcpy(v16, "stateCoredump");
  v19 = 14;
  strcpy(__p, "stateDebugMode");
  std::vector<std::string>::vector[abi:ne200100](a1, &v4, 0xAuLL);
  if (v19 < 0)
  {
    operator delete(__p[0]);
    if ((v17 & 0x80000000) == 0)
    {
LABEL_3:
      if ((SHIBYTE(v15[2]) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_15;
    }
  }

  else if ((v17 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(v16[0]);
  if ((SHIBYTE(v15[2]) & 0x80000000) == 0)
  {
LABEL_4:
    if ((v14 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(v15[0]);
  if ((v14 & 0x80000000) == 0)
  {
LABEL_5:
    if ((v12 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(v13[0]);
  if ((v12 & 0x80000000) == 0)
  {
LABEL_6:
    if ((v10 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_18;
  }

LABEL_17:
  operator delete(v11[0]);
  if ((v10 & 0x80000000) == 0)
  {
LABEL_7:
    if ((SHIBYTE(v8[2]) & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  operator delete(v9[0]);
  if ((SHIBYTE(v8[2]) & 0x80000000) == 0)
  {
LABEL_8:
    if ((SHIBYTE(v7[2]) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

LABEL_19:
  operator delete(v8[0]);
  if ((SHIBYTE(v7[2]) & 0x80000000) == 0)
  {
LABEL_9:
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

LABEL_21:
    operator delete(*&v5[1]);
    if ((v5[0] & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

LABEL_22:
    operator delete(v4);
    v3 = *MEMORY[0x1E69E9840];
    return;
  }

LABEL_20:
  operator delete(v7[0]);
  if (v6 < 0)
  {
    goto LABEL_21;
  }

LABEL_10:
  if (v5[0] < 0)
  {
    goto LABEL_22;
  }

LABEL_11:
  v2 = *MEMORY[0x1E69E9840];
}

void sub_1E52649B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, void *a52, uint64_t a53, int a54, __int16 a55, char a56, char a57, void *a58, uint64_t a59, int a60, __int16 a61, char a62, char a63)
{
  if (a69 < 0)
  {
    operator delete(__p);
    if ((a63 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a57 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_14;
    }
  }

  else if ((a63 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a58);
  if ((a57 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a51 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(a52);
  if ((a51 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a45 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(a46);
  if ((a45 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a39 & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(a40);
  if ((a39 & 0x80000000) == 0)
  {
LABEL_7:
    if ((a33 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_18;
  }

LABEL_17:
  operator delete(a34);
  if ((a33 & 0x80000000) == 0)
  {
LABEL_8:
    if ((a27 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_19;
  }

LABEL_18:
  operator delete(a28);
  if ((a27 & 0x80000000) == 0)
  {
LABEL_9:
    if ((a21 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  operator delete(a22);
  if ((a21 & 0x80000000) == 0)
  {
LABEL_10:
    if ((a15 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_21;
  }

LABEL_20:
  operator delete(a16);
  if ((a15 & 0x80000000) == 0)
  {
LABEL_11:
    _Unwind_Resume(a1);
  }

LABEL_21:
  operator delete(a10);
  _Unwind_Resume(a1);
}

void *boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::~state_machine(void *a1)
{
  *a1 = &unk_1F5EFF490;
  std::deque<boost::function<boost::msm::back::HandledEnum ()(void)>>::clear(a1 + 4);
  v2 = a1[5];
  v3 = a1[6];
  if (v2 != v3)
  {
    do
    {
      v4 = *v2++;
      operator delete(v4);
    }

    while (v2 != v3);
    v2 = a1[5];
    v3 = a1[6];
  }

  if (v3 != v2)
  {
    a1[6] = v3 + ((v2 - v3 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v5 = a1[4];
  if (v5)
  {
    operator delete(v5);
  }

  return a1;
}

void boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::~state_machine(void *a1)
{
  *a1 = &unk_1F5EFF490;
  std::deque<boost::function<boost::msm::back::HandledEnum ()(void)>>::clear(a1 + 4);
  v2 = a1[5];
  v3 = a1[6];
  if (v2 != v3)
  {
    do
    {
      v4 = *v2++;
      operator delete(v4);
    }

    while (v2 != v3);
    v2 = a1[5];
    v3 = a1[6];
  }

  if (v3 != v2)
  {
    a1[6] = v3 + ((v2 - v3 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v5 = a1[4];
  if (v5)
  {
    operator delete(v5);
  }

  operator delete(a1);
}

void BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_::getStateNames(std::string **a1@<X8>)
{
  v7 = *MEMORY[0x1E69E9840];
  v4[23] = 19;
  strcpy(v4, "stateProvisionStart");
  v6 = 20;
  strcpy(__p, "stateProvisionFinish");
  std::vector<std::string>::vector[abi:ne200100](a1, v4, 2uLL);
  if (v6 < 0)
  {
    operator delete(*__p);
    if ((v4[23] & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    operator delete(*v4);
    v3 = *MEMORY[0x1E69E9840];
    return;
  }

  if ((v4[23] & 0x80000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v2 = *MEMORY[0x1E69E9840];
}

void sub_1E5264CEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a9);
  _Unwind_Resume(exception_object);
}

void std::deque<boost::function<boost::msm::back::HandledEnum ()(void)>>::clear(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    a1[5] = 0;
    v12 = 0;
  }

  else
  {
    v4 = a1[4];
    v5 = &v2[v4 >> 7];
    v6 = *v5;
    v7 = *v5 + 32 * (v4 & 0x7F);
    v8 = *(v2 + (((a1[5] + v4) >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * ((a1[5] + v4) & 0x7F);
    if (v7 != v8)
    {
      do
      {
        v9 = *v7;
        if (*v7)
        {
          if ((v9 & 1) == 0)
          {
            v10 = *v9;
            if (v10)
            {
              v10(v7 + 8, v7 + 8, 2);
              v6 = *v5;
            }
          }

          *v7 = 0;
        }

        v7 += 32;
        if (v7 - v6 == 4096)
        {
          v11 = v5[1];
          ++v5;
          v6 = v11;
          v7 = v11;
        }
      }

      while (v7 != v8);
      v2 = a1[1];
      v3 = a1[2];
    }

    a1[5] = 0;
    v12 = v3 - v2;
    if (v12 >= 3)
    {
      do
      {
        operator delete(*v2);
        v13 = a1[2];
        v2 = (a1[1] + 8);
        a1[1] = v2;
        v12 = (v13 - v2) >> 3;
      }

      while (v12 > 2);
    }
  }

  if (v12 == 1)
  {
    v14 = 64;
  }

  else
  {
    if (v12 != 2)
    {
      return;
    }

    v14 = 128;
  }

  a1[4] = v14;
}

void (***boost::function<boost::msm::back::HandledEnum ()(void)>::~function(void (***result)(void, void, void)))(void, void, void)
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

std::string **std::vector<std::string>::vector[abi:ne200100](std::string **a1, __int128 *a2, unint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a3)
  {
    if (a3 >= 0xAAAAAAAAAAAAAABLL)
    {
      std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
    }

    v5 = a3;
    v6 = operator new(24 * a3);
    *a1 = v6;
    a1[1] = v6;
    a1[2] = &v6[v5];
    v9 = v6;
    do
    {
      while ((*(a2 + 23) & 0x80000000) == 0)
      {
        v7 = *a2;
        v6->__r_.__value_.__r.__words[2] = *(a2 + 2);
        *&v6->__r_.__value_.__l.__data_ = v7;
        ++v6;
        a2 = (a2 + 24);
        v9 = v6;
        if (!(--v5 * 24))
        {
          goto LABEL_7;
        }
      }

      std::string::__init_copy_ctor_external(v6, *a2, *(a2 + 1));
      a2 = (a2 + 24);
      v6 = ++v9;
      --v5;
    }

    while (v5 * 24);
LABEL_7:
    a1[1] = v6;
  }

  return a1;
}

void sub_1E5264FD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void ***a9, uint64_t a10, char a11)
{
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](&a11);
  *(v11 + 8) = v12;
  std::__exception_guard_exceptions<std::vector<std::string>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::string>,std::string*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 1);
      v3 -= 3;
      if (v5 < 0)
      {
        operator delete(*v3);
      }
    }
  }

  return a1;
}

void ****std::__exception_guard_exceptions<std::vector<std::string>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](void ****a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      v4 = v2[1];
      v5 = **a1;
      if (v4 != v3)
      {
        do
        {
          v6 = *(v4 - 1);
          v4 -= 3;
          if (v6 < 0)
          {
            operator delete(*v4);
          }
        }

        while (v4 != v3);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

void *boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::~state_machine(void *a1)
{
  *a1 = &unk_1F5EFF560;
  std::deque<boost::function<boost::msm::back::HandledEnum ()(void)>>::clear(a1 + 4);
  v2 = a1[5];
  v3 = a1[6];
  if (v2 != v3)
  {
    do
    {
      v4 = *v2++;
      operator delete(v4);
    }

    while (v2 != v3);
    v2 = a1[5];
    v3 = a1[6];
  }

  if (v3 != v2)
  {
    a1[6] = v3 + ((v2 - v3 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v5 = a1[4];
  if (v5)
  {
    operator delete(v5);
  }

  return a1;
}

void boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::~state_machine(void *a1)
{
  *a1 = &unk_1F5EFF560;
  std::deque<boost::function<boost::msm::back::HandledEnum ()(void)>>::clear(a1 + 4);
  v2 = a1[5];
  v3 = a1[6];
  if (v2 != v3)
  {
    do
    {
      v4 = *v2++;
      operator delete(v4);
    }

    while (v2 != v3);
    v2 = a1[5];
    v3 = a1[6];
  }

  if (v3 != v2)
  {
    a1[6] = v3 + ((v2 - v3 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v5 = a1[4];
  if (v5)
  {
    operator delete(v5);
  }

  operator delete(a1);
}

void BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_::getStateNames(std::string **a1@<X8>)
{
  v9 = *MEMORY[0x1E69E9840];
  v4[23] = 21;
  strcpy(v4, "statePersonalizeFirst");
  strcpy(v5, "statePersonalizeSecond");
  HIBYTE(v5[2]) = 22;
  strcpy(v6, "statePersonalizeBooted");
  HIBYTE(v6[2]) = 22;
  v8 = 21;
  strcpy(__p, "statePersonalizeEUICC");
  std::vector<std::string>::vector[abi:ne200100](a1, v4, 4uLL);
  if (v8 < 0)
  {
    operator delete(*__p);
    if ((SHIBYTE(v6[2]) & 0x80000000) == 0)
    {
LABEL_3:
      if ((SHIBYTE(v5[2]) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      operator delete(v5[0]);
      if ((v4[23] & 0x80000000) == 0)
      {
        goto LABEL_5;
      }

LABEL_10:
      operator delete(*v4);
      v3 = *MEMORY[0x1E69E9840];
      return;
    }
  }

  else if ((SHIBYTE(v6[2]) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(v6[0]);
  if (SHIBYTE(v5[2]) < 0)
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((v4[23] & 0x80000000) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  v2 = *MEMORY[0x1E69E9840];
}

void sub_1E5265368(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
    if ((a26 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a20 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((a26 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a21);
  if ((a20 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a14 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(a15);
  if ((a14 & 0x80000000) == 0)
  {
LABEL_5:
    _Unwind_Resume(exception_object);
  }

LABEL_9:
  operator delete(a9);
  _Unwind_Resume(exception_object);
}

void **boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::msg_queue_helper<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,void>::~msg_queue_helper(void **a1)
{
  std::deque<boost::function<boost::msm::back::HandledEnum ()(void)>>::clear(a1);
  v2 = a1[1];
  v3 = a1[2];
  if (v2 != v3)
  {
    do
    {
      v4 = *v2++;
      operator delete(v4);
    }

    while (v2 != v3);
    v2 = a1[1];
    v3 = a1[2];
  }

  if (v3 != v2)
  {
    a1[2] = v3 + ((v2 - v3 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *boost::fusion::vector_detail::vector_data<std::integer_sequence<unsigned long,0ul,1ul,2ul,3ul,4ul,5ul,6ul,7ul,8ul,9ul>,BBUpdaterControllerFSM::ControllerFSM_TOP::stateDebugMode,BBUpdaterControllerFSM::ControllerFSM_TOP::stateCoredump,BBUpdaterControllerFSM::ControllerFSM_TOP::stateRegularMode,BBUpdaterControllerFSM::ControllerFSM_TOP::stateFinalize,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::ControllerFSM_TOP::stateFusing,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::ControllerFSM_TOP::stateManifestCheck,BBUpdaterControllerFSM::ControllerFSM_TOP::stateBooting,BBUpdaterControllerFSM::ControllerFSM_TOP::stateInit>::~vector_data(void *a1)
{
  a1[22] = &unk_1F5EFF560;
  std::deque<boost::function<boost::msm::back::HandledEnum ()(void)>>::clear(a1 + 26);
  v2 = a1[27];
  v3 = a1[28];
  if (v2 != v3)
  {
    do
    {
      v4 = *v2++;
      operator delete(v4);
    }

    while (v2 != v3);
    v2 = a1[27];
    v3 = a1[28];
  }

  if (v3 != v2)
  {
    a1[28] = v3 + ((v2 - v3 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v5 = a1[26];
  if (v5)
  {
    operator delete(v5);
  }

  a1[5] = &unk_1F5EFF490;
  std::deque<boost::function<boost::msm::back::HandledEnum ()(void)>>::clear(a1 + 9);
  v6 = a1[10];
  v7 = a1[11];
  if (v6 != v7)
  {
    do
    {
      v8 = *v6++;
      operator delete(v8);
    }

    while (v6 != v7);
    v6 = a1[10];
    v7 = a1[11];
  }

  if (v7 != v6)
  {
    a1[11] = v7 + ((v6 - v7 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v9 = a1[9];
  if (v9)
  {
    operator delete(v9);
  }

  return a1;
}

void std::__shared_ptr_pointer<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_> *,std::shared_ptr<void>::__shared_ptr_default_delete<void,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>>,std::allocator<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_> *,std::shared_ptr<void>::__shared_ptr_default_delete<void,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>>,std::allocator<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_> *,std::shared_ptr<void>::__shared_ptr_default_delete<void,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>>,std::allocator<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x80000001E538F3BBLL)
  {
    if (((v2 & 0x80000001E538F3BBLL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000001E538F3BBLL))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000001E538F3BBLL & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 == result)
  {
    return result;
  }

  while (1)
  {
    v2 = a2[2];
    if (v2[3])
    {
      return result;
    }

    v3 = v2[2];
    v4 = *v3;
    if (*v3 != v2)
    {
      break;
    }

    v8 = v3[1];
    if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
    {
      if (*v2 == a2)
      {
        v20 = a2[2];
        *(v2 + 24) = 1;
        *(v3 + 24) = 0;
        v13 = v4[1];
        *v3 = v13;
        if (v13)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v10 = v2[1];
        v11 = *v10;
        v2[1] = *v10;
        v12 = v2;
        if (v11)
        {
          v11[2] = v2;
          v3 = v2[2];
          v12 = *v3;
        }

        v10[2] = v3;
        v3[v12 != v2] = v10;
        *v10 = v2;
        v2[2] = v10;
        v3 = v10[2];
        v4 = *v3;
        *(v10 + 24) = 1;
        *(v3 + 24) = 0;
        v13 = v4[1];
        *v3 = v13;
        if (v13)
        {
LABEL_15:
          *(v13 + 16) = v3;
        }
      }

      v14 = v3[2];
      v14[*v14 != v3] = v4;
      v4[1] = v3;
      v4[2] = v14;
      v3[2] = v4;
      return result;
    }

LABEL_3:
    *(v2 + 24) = 1;
    a2 = v3;
    *(v3 + 24) = v3 == result;
    *v7 = 1;
    if (v3 == result)
    {
      return result;
    }
  }

  if (v4)
  {
    v6 = *(v4 + 24);
    v5 = v4 + 3;
    if (v6 != 1)
    {
      v7 = v5;
      goto LABEL_3;
    }
  }

  v15 = *v2;
  if (*v2 == a2)
  {
    v16 = *(v15 + 8);
    *v2 = v16;
    if (v16)
    {
      *(v16 + 16) = v2;
      v3 = v2[2];
    }

    v3[*v3 != v2] = v15;
    *(v15 + 8) = v2;
    *(v15 + 16) = v3;
    v2[2] = v15;
    v3 = *(v15 + 16);
  }

  else
  {
    v15 = a2[2];
  }

  *(v15 + 24) = 1;
  *(v3 + 24) = 0;
  v17 = v3[1];
  v18 = *v17;
  v3[1] = *v17;
  if (v18)
  {
    *(v18 + 16) = v3;
  }

  v19 = v3[2];
  v17[2] = v19;
  v19[*v19 != v3] = v17;
  *v17 = v3;
  v3[2] = v17;
  return result;
}

void std::__tree<std::__value_type<__CFString const*,BBUpdaterController::CmdInfo>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,BBUpdaterController::CmdInfo>,BBUpdaterController::CFStringCompareFunctor,true>,std::allocator<std::__value_type<__CFString const*,BBUpdaterController::CmdInfo>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<__CFString const*,BBUpdaterController::CmdInfo>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,BBUpdaterController::CmdInfo>,BBUpdaterController::CFStringCompareFunctor,true>,std::allocator<std::__value_type<__CFString const*,BBUpdaterController::CmdInfo>>>::destroy(*a1);
    std::__tree<std::__value_type<__CFString const*,BBUpdaterController::CmdInfo>,std::__map_value_compare<__CFString const*,std::__value_type<__CFString const*,BBUpdaterController::CmdInfo>,BBUpdaterController::CFStringCompareFunctor,true>,std::allocator<std::__value_type<__CFString const*,BBUpdaterController::CmdInfo>>>::destroy(a1[1]);
    v2 = a1[6];
    if (v2)
    {
      _Block_release(v2);
    }

    operator delete(a1);
  }
}

uint64_t ctu::PthreadMutexGuardPolicy<BBUPartitionManager>::~PthreadMutexGuardPolicy(uint64_t a1)
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

void *BBUError::create_default_global@<X0>(void *a1@<X8>)
{
  v3 = operator new(0x38uLL);
  v4 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
  v5 = dispatch_queue_create("BBUError", v4);
  *v3 = 0;
  v3[1] = 0;
  v3[2] = v5;
  if (v5)
  {
    v6 = v5;
    dispatch_retain(v5);
    v3[3] = 0;
    dispatch_release(v6);
  }

  else
  {
    v3[3] = 0;
  }

  v3[4] = 0;
  v3[5] = 0;
  v3[6] = 0;

  return std::shared_ptr<BBUError>::shared_ptr[abi:ne200100]<BBUError,std::shared_ptr<BBUError> ctu::SharedSynchronizable<BBUError>::make_shared_ptr<BBUError>(BBUError*)::{lambda(BBUError*)#1},0>(a1, v3);
}

uint64_t std::shared_ptr<BBUError>::operator=[abi:ne200100](uint64_t result, __int128 *a2)
{
  v2 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v3 = *(result + 8);
  *result = v2;
  if (v3)
  {
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

void *std::shared_ptr<BBUError>::shared_ptr[abi:ne200100]<BBUError,std::shared_ptr<BBUError> ctu::SharedSynchronizable<BBUError>::make_shared_ptr<BBUError>(BBUError*)::{lambda(BBUError*)#1},0>(void *a1, void *a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_1F5EFFA90;
  v4[2] = 0;
  v4[3] = a2;
  a1[1] = v4;
  if (!a2)
  {
    return a1;
  }

  v6 = a2[1];
  if (v6)
  {
    if (v6->__shared_owners_ == -1)
    {
      atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
      *a2 = a2;
      a2[1] = v4;
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
  *a2 = a2;
  a2[1] = v4;
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

void sub_1E5265B50(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[2], v1, std::shared_ptr<BBUError> ctu::SharedSynchronizable<BBUError>::make_shared_ptr<BBUError>(BBUError*)::{lambda(BBUError*)#1}::operator() const(BBUError*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<BBUError *,std::shared_ptr<BBUError> ctu::SharedSynchronizable<BBUError>::make_shared_ptr<BBUError>(BBUError*)::{lambda(BBUError *)#1},std::allocator<BBUError>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<BBUError *,std::shared_ptr<BBUError> ctu::SharedSynchronizable<BBUError>::make_shared_ptr<BBUError>(BBUError*)::{lambda(BBUError *)#1},std::allocator<BBUError>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableI8BBUErrorE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableI8BBUErrorE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableI8BBUErrorE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableI8BBUErrorE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void std::shared_ptr<BBUError> ctu::SharedSynchronizable<BBUError>::make_shared_ptr<BBUError>(BBUError*)::{lambda(BBUError*)#1}::operator() const(BBUError*)::{lambda(void *)#1}::__invoke(BBUError *a1)
{
  if (a1)
  {
    BBUError::~BBUError(a1);

    operator delete(v1);
  }
}

void BBUError::~BBUError(BBUError *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v3 = *(this + 5);
    v4 = *(this + 4);
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 9);
        v3 -= 4;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != v2);
      v4 = *(this + 4);
    }

    *(this + 5) = v2;
    operator delete(v4);
  }

  v6 = *(this + 3);
  if (v6)
  {
    dispatch_release(v6);
  }

  v7 = *(this + 2);
  if (v7)
  {
    dispatch_release(v7);
  }

  v8 = *(this + 1);
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }
}

uint64_t ctu::PthreadMutexGuardPolicy<BBUError>::~PthreadMutexGuardPolicy(uint64_t a1)
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

void boost::core::demangle(boost::core *this, const char *lpmangled)
{
  status = 0;
  v11 = 0;
  v4 = __cxa_demangle(lpmangled, 0, &v11, &status);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = lpmangled;
  }

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
      v9 = 25;
    }

    else
    {
      v9 = (v7 | 7) + 1;
    }

    v10 = operator new(v9);
    *(this + 1) = v8;
    *(this + 2) = v9 | 0x8000000000000000;
    *this = v10;
    this = v10;
  }

  else
  {
    *(this + 23) = v7;
    if (!v7)
    {
      goto LABEL_13;
    }
  }

  memmove(this, v6, v8);
LABEL_13:
  *(this + v8) = 0;
  free(v5);
}

uint64_t boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::process_event_internal<BBUpdaterControllerFSM::eventError>(uint64_t a1, uint64_t a2, char a3)
{
  if (boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::is_event_handling_blocked_helper<BBUpdaterControllerFSM::eventError>(a1))
  {
    return 1;
  }

  if (!boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::do_pre_msg_queue_helper<BBUpdaterControllerFSM::eventError,BBUpdaterControllerFSM::eventError>(a1, a2))
  {
    return 1;
  }

  v7 = (*(&unk_1ED948990 + *(a1 + 32) + 1))(a1, 0);
  result = (*(&unk_1ED948990 + *(a1 + 36) + 1))(a1, 1) | v7;
  if (*(a1 + 101) != 1 || (a3) && !result)
  {
    v8 = result;
    BBUpdaterControllerFSM::FSMBase<BBUpdaterControllerFSM::ControllerFSM_TOP>::no_transition<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventError>(a1, a1, *(a1 + 32));
    BBUpdaterControllerFSM::FSMBase<BBUpdaterControllerFSM::ControllerFSM_TOP>::no_transition<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventError>(a1, a1, *(a1 + 36));
    result = v8;
  }

  *(a1 + 100) = 0;
  if ((a3 & 6) == 0)
  {
    v9 = result;
    boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::process_message_queue<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>>(a1);
    return v9;
  }

  return result;
}

BOOL boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::is_event_handling_blocked_helper<BBUpdaterControllerFSM::eventError>(uint64_t a1)
{
  qword_1ED9484D8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateDebugMode,boost::msm::TerminateFlag>::flag_true;
  qword_1ED9484D0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateCoredump,boost::msm::TerminateFlag>::flag_false;
  qword_1ED9484C8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateRegularMode,boost::msm::TerminateFlag>::flag_false;
  qword_1ED9484C0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateFinalize,boost::msm::TerminateFlag>::flag_false;
  qword_1ED9484B8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,boost::msm::TerminateFlag>::flag_false;
  qword_1ED9484B0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateFusing,boost::msm::TerminateFlag>::flag_false;
  qword_1ED9484A8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,boost::msm::TerminateFlag>::flag_false;
  qword_1ED9484A0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateManifestCheck,boost::msm::TerminateFlag>::flag_false;
  qword_1ED948498 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateBooting,boost::msm::TerminateFlag>::flag_false;
  qword_1ED948490[0] = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateInit,boost::msm::TerminateFlag>::flag_false;
  v2 = (qword_1ED948490[*(a1 + 32)])();
  v3 = (qword_1ED948490[*(a1 + 36)])(a1);
  result = 1;
  if ((v2 & 1) == 0 && (v3 & 1) == 0)
  {
    qword_1ED948528 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateDebugMode,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED948520 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateCoredump,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED948518 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateRegularMode,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED948510 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateFinalize,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED948508 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED948500 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateFusing,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED9484F8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED9484F0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateManifestCheck,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED9484E8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateBooting,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED9484E0[0] = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateInit,boost::msm::InterruptedFlag>::flag_false;
    v5 = (qword_1ED9484E0[*(a1 + 32)])(a1);
    v6 = (qword_1ED9484E0[*(a1 + 36)])(a1);
    if ((v5 & 1) == 0 && !v6)
    {
      return 0;
    }

    qword_1ED948578 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateDebugMode,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventError>>::flag_false;
    qword_1ED948570 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateCoredump,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventError>>::flag_false;
    qword_1ED948568 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateRegularMode,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventError>>::flag_false;
    qword_1ED948560 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateFinalize,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventError>>::flag_false;
    qword_1ED948558 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventError>>::flag_false;
    qword_1ED948550 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateFusing,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventError>>::flag_false;
    qword_1ED948548 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventError>>::flag_false;
    qword_1ED948540 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateManifestCheck,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventError>>::flag_false;
    qword_1ED948538 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateBooting,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventError>>::flag_false;
    qword_1ED948530[0] = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateInit,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventError>>::flag_false;
    v7 = (qword_1ED948530[*(a1 + 32)])(a1);
    v8 = (qword_1ED948530[*(a1 + 36)])(a1);
    return (v7 & 1) == 0 && !v8;
  }

  return result;
}

uint64_t boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::do_pre_msg_queue_helper<BBUpdaterControllerFSM::eventError,BBUpdaterControllerFSM::eventError>(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 100);
  if (v3 == 1)
  {
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v20, *a2, *(a2 + 8));
      v4 = *(a2 + 24);
      v21 = v4;
      if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_4:
        v34 = v20;
        v35.__r_.__value_.__r.__words[0] = v4;
        if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_12;
      }
    }

    else
    {
      *&v20.__r_.__value_.__l.__data_ = *a2;
      v4 = *(a2 + 24);
      v20.__r_.__value_.__r.__words[2] = *(a2 + 16);
      v21 = v4;
      if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }
    }

    std::string::__init_copy_ctor_external(&v34, v20.__r_.__value_.__l.__data_, v20.__r_.__value_.__l.__size_);
    v4 = v21;
    v35.__r_.__value_.__r.__words[0] = v21;
    if ((SHIBYTE(v34.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_5:
      v38 = v34;
      v39.__r_.__value_.__r.__words[0] = v4;
      if ((SHIBYTE(v34.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    }

LABEL_12:
    std::string::__init_copy_ctor_external(&v38, v34.__r_.__value_.__l.__data_, v34.__r_.__value_.__l.__size_);
    v4 = v35.__r_.__value_.__r.__words[0];
    v39.__r_.__value_.__r.__words[0] = v35.__r_.__value_.__r.__words[0];
    if ((SHIBYTE(v38.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_6:
      v42 = v38;
      v43.__r_.__value_.__r.__words[0] = v4;
      *v46 = a1;
      if ((SHIBYTE(v38.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_14;
    }

LABEL_13:
    std::string::__init_copy_ctor_external(&v42, v38.__r_.__value_.__l.__data_, v38.__r_.__value_.__l.__size_);
    v4 = v39.__r_.__value_.__r.__words[0];
    v43.__r_.__value_.__r.__words[0] = v39.__r_.__value_.__r.__words[0];
    *v46 = a1;
    if ((SHIBYTE(v42.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_7:
      *&v46[8] = *&v42.__r_.__value_.__l.__data_;
      v47.__r_.__value_.__r.__words[0] = v42.__r_.__value_.__r.__words[2];
      v47.__r_.__value_.__l.__size_ = v4;
      v47.__r_.__value_.__s.__data_[16] = 5;
      if ((SHIBYTE(v38.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

LABEL_14:
    std::string::__init_copy_ctor_external(&v46[8], v42.__r_.__value_.__l.__data_, v42.__r_.__value_.__l.__size_);
    v47.__r_.__value_.__l.__size_ = v43.__r_.__value_.__r.__words[0];
    if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v42.__r_.__value_.__l.__data_);
      v47.__r_.__value_.__s.__data_[16] = 5;
      if ((SHIBYTE(v38.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_17:
        *&v22 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::process_event_internal<BBUpdaterControllerFSM::eventError>;
        *(&v22 + 1) = 0;
        v23 = *v46;
        if (v47.__r_.__value_.__s.__data_[7] < 0)
        {
          std::string::__init_copy_ctor_external(&__p, *&v46[8], *&v46[16]);
          *(&v25 + 1) = v47.__r_.__value_.__l.__size_;
          v26 = v47.__r_.__value_.__s.__data_[16];
          if (v47.__r_.__value_.__s.__data_[7] < 0)
          {
            operator delete(*&v46[8]);
            if ((SHIBYTE(v34.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_23:
              v29 = v22;
              v6 = v23;
              v30 = v23;
              if (SBYTE7(v25) < 0)
              {
                std::string::__init_copy_ctor_external(&v31, __p, *(&__p + 1));
                v6 = v30;
              }

              else
              {
                *&v31.__r_.__value_.__l.__data_ = __p;
                v31.__r_.__value_.__r.__words[2] = v25;
              }

              v7 = *(&v25 + 1);
              v32 = *(&v25 + 1);
              v8 = v26;
              v33 = v26;
              v27 = 0;
              *&v34.__r_.__value_.__l.__data_ = v29;
              v34.__r_.__value_.__r.__words[2] = v6;
              if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
              {
                std::string::__init_copy_ctor_external(&v35, v31.__r_.__value_.__l.__data_, v31.__r_.__value_.__l.__size_);
                v7 = v32;
                v8 = v33;
                v6 = v34.__r_.__value_.__r.__words[2];
              }

              else
              {
                v35 = v31;
              }

              v36 = v7;
              v37 = v8;
              *&v38.__r_.__value_.__l.__data_ = *&v34.__r_.__value_.__l.__data_;
              v38.__r_.__value_.__r.__words[2] = v6;
              if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
              {
                std::string::__init_copy_ctor_external(&v39, v35.__r_.__value_.__l.__data_, v35.__r_.__value_.__l.__size_);
                v7 = v36;
                v8 = v37;
                v6 = v38.__r_.__value_.__r.__words[2];
              }

              else
              {
                v39 = v35;
              }

              v40 = v7;
              v41 = v8;
              *&v42.__r_.__value_.__l.__data_ = *&v38.__r_.__value_.__l.__data_;
              v42.__r_.__value_.__r.__words[2] = v6;
              if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
              {
                std::string::__init_copy_ctor_external(&v43, v39.__r_.__value_.__l.__data_, v39.__r_.__value_.__l.__size_);
                v7 = v40;
                v8 = v41;
                v6 = v42.__r_.__value_.__r.__words[2];
              }

              else
              {
                v43 = v39;
              }

              v44 = v7;
              v45 = v8;
              *v46 = *&v42.__r_.__value_.__l.__data_;
              *&v46[16] = v6;
              if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
              {
                std::string::__init_copy_ctor_external(&v47, v43.__r_.__value_.__l.__data_, v43.__r_.__value_.__l.__size_);
                v7 = v44;
                v8 = v45;
              }

              else
              {
                v47 = v43;
              }

              v48 = v7;
              v49 = v8;
              v9 = operator new(0x40uLL);
              *&v9->__r_.__value_.__l.__data_ = *v46;
              v9->__r_.__value_.__r.__words[2] = *&v46[16];
              if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
              {
                v10 = v9;
                std::string::__init_copy_ctor_external(v9 + 1, v47.__r_.__value_.__l.__data_, v47.__r_.__value_.__l.__size_);
                v11 = v49;
                v12 = SHIBYTE(v47.__r_.__value_.__r.__words[2]);
                v10[2].__r_.__value_.__r.__words[0] = v48;
                v10[2].__r_.__value_.__s.__data_[8] = v11;
                v28[0] = v10;
                if (v12 < 0)
                {
                  operator delete(v47.__r_.__value_.__l.__data_);
                  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
                  {
                    goto LABEL_65;
                  }
                }

                else if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
                {
                  goto LABEL_65;
                }
              }

              else
              {
                v9[1] = v47;
                v9[2].__r_.__value_.__r.__words[0] = v7;
                v9[2].__r_.__value_.__s.__data_[8] = v8;
                v28[0] = v9;
                if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
                {
LABEL_65:
                  operator delete(v43.__r_.__value_.__l.__data_);
                  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
                  {
LABEL_66:
                    operator delete(v39.__r_.__value_.__l.__data_);
                    v27 = boost::function0<boost::msm::back::HandledEnum>::assign_to<boost::_bi::bind_t<boost::msm::back::HandledEnum,boost::_mfi::mf2<boost::msm::back::HandledEnum,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventError const&,unsigned char>,boost::_bi::list3<boost::_bi::value<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>*>,boost::_bi::value<BBUpdaterControllerFSM::eventError>,boost::_bi::value<unsigned char>>>>(boost::_bi::bind_t<boost::msm::back::HandledEnum,boost::_mfi::mf2<boost::msm::back::HandledEnum,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventError const&,unsigned char>,boost::_bi::list3<boost::_bi::value<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>*>,boost::_bi::value<BBUpdaterControllerFSM::eventError>,boost::_bi::value<unsigned char>>>)::stored_vtable;
                    if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
                    {
LABEL_67:
                      operator delete(v35.__r_.__value_.__l.__data_);
                      if ((SHIBYTE(v31.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                      {
                        goto LABEL_46;
                      }

                      goto LABEL_68;
                    }

LABEL_45:
                    if ((SHIBYTE(v31.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                    {
                      goto LABEL_46;
                    }

LABEL_68:
                    operator delete(v31.__r_.__value_.__l.__data_);
LABEL_46:
                    v13 = *(a1 + 48);
                    v14 = *(a1 + 56);
                    v15 = *(a1 + 48);
                    v16 = 16 * (v14 - v15) - 1;
                    if (v14 == v15)
                    {
                      v16 = 0;
                    }

                    v17 = *(a1 + 80) + *(a1 + 72);
                    if (v16 == v17)
                    {
                      std::deque<boost::function<boost::msm::back::HandledEnum ()(void)>>::__add_back_capacity(a1 + 40);
                      v15 = *(a1 + 48);
                      v17 = *(a1 + 80) + *(a1 + 72);
                    }

                    v18 = (*(v15 + ((v17 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v17 & 0x7F));
                    *v18 = 0;
                    boost::function0<boost::msm::back::HandledEnum>::move_assign(v18, &v27);
                    ++*(a1 + 80);
                    if (v27)
                    {
                      if ((v27 & 1) == 0 && *v27)
                      {
                        (*v27)(v28, v28, 2);
                      }

                      v27 = 0;
                    }

                    if (SBYTE7(v25) < 0)
                    {
                      operator delete(__p);
                      if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                      {
                        return v3 ^ 1u;
                      }
                    }

                    else if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                    {
                      return v3 ^ 1u;
                    }

                    operator delete(v20.__r_.__value_.__l.__data_);
                    return v3 ^ 1u;
                  }

LABEL_44:
                  v27 = boost::function0<boost::msm::back::HandledEnum>::assign_to<boost::_bi::bind_t<boost::msm::back::HandledEnum,boost::_mfi::mf2<boost::msm::back::HandledEnum,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventError const&,unsigned char>,boost::_bi::list3<boost::_bi::value<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>*>,boost::_bi::value<BBUpdaterControllerFSM::eventError>,boost::_bi::value<unsigned char>>>>(boost::_bi::bind_t<boost::msm::back::HandledEnum,boost::_mfi::mf2<boost::msm::back::HandledEnum,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventError const&,unsigned char>,boost::_bi::list3<boost::_bi::value<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>*>,boost::_bi::value<BBUpdaterControllerFSM::eventError>,boost::_bi::value<unsigned char>>>)::stored_vtable;
                  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
                  {
                    goto LABEL_67;
                  }

                  goto LABEL_45;
                }
              }

              if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
              {
                goto LABEL_66;
              }

              goto LABEL_44;
            }
          }

          else if ((SHIBYTE(v34.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_23;
          }
        }

        else
        {
          __p = *&v46[8];
          v25 = *&v47.__r_.__value_.__l.__data_;
          v26 = v47.__r_.__value_.__s.__data_[16];
          if ((SHIBYTE(v34.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_23;
          }
        }

        operator delete(v34.__r_.__value_.__l.__data_);
        goto LABEL_23;
      }
    }

    else
    {
      v47.__r_.__value_.__s.__data_[16] = 5;
      if ((SHIBYTE(v38.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_17;
      }
    }

LABEL_16:
    operator delete(v38.__r_.__value_.__l.__data_);
    goto LABEL_17;
  }

  *(a1 + 100) = 1;
  return v3 ^ 1u;
}

void sub_1E526684C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *__p, uint64_t a57, int a58, __int16 a59, char a60, char a61)
{
  operator delete(v61);
  if (*(v62 - 81) < 0)
  {
    operator delete(*(v62 - 104));
    if ((*(v62 - 145) & 0x80000000) == 0)
    {
LABEL_3:
      if ((a61 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*(v62 - 145) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v62 - 168));
  if ((a61 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a50 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(__p);
  if ((a50 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a39 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(a45);
  if ((a39 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a24 & 0x80000000) == 0)
    {
LABEL_14:
      if (a14 < 0)
      {
        operator delete(a9);
      }

      _Unwind_Resume(a1);
    }

LABEL_13:
    operator delete(a19);
    goto LABEL_14;
  }

LABEL_12:
  operator delete(a34);
  if ((a24 & 0x80000000) == 0)
  {
    goto LABEL_14;
  }

  goto LABEL_13;
}

void std::deque<boost::function<boost::msm::back::HandledEnum ()(void)>>::__add_back_capacity(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2 >= 0x80;
  v4 = v2 - 128;
  if (v3)
  {
    *(a1 + 32) = v4;
    v5 = *(a1 + 8);
    v63 = *v5;
    *(a1 + 8) = v5 + 1;
LABEL_4:
    std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_back<std::__state<char> *&>(a1, &v63);
    return;
  }

  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = v7 - v9;
  v11 = &v6[-*a1];
  if (v7 - v9 < v11)
  {
    v12 = operator new(0x1000uLL);
    if (v6 != v7)
    {
      *v7 = v12;
      *(a1 + 16) = v7 + 8;
      return;
    }

    if (v9 != v8)
    {
      v23 = v9;
LABEL_61:
      *(v23 - 1) = v12;
      v63 = v12;
      *(a1 + 8) = v23;
      goto LABEL_4;
    }

    v46 = (v6 - v9) >> 2;
    if (v7 == v9)
    {
      v46 = 1;
    }

    if (!(v46 >> 61))
    {
      v47 = v12;
      v48 = (v46 + 3) >> 2;
      v49 = 8 * v46;
      v50 = operator new(8 * v46);
      v23 = &v50[8 * v48];
      v51 = v23;
      v12 = v47;
      if (v7 != v9)
      {
        v51 = &v23[v10];
        v52 = v7 - v9 - 8;
        v53 = &v50[8 * v48];
        v54 = v9;
        if (v52 < 0x38)
        {
          goto LABEL_67;
        }

        v55 = &v50[8 * v48];
        v53 = v55;
        v54 = v9;
        if ((v55 - v9) < 0x20)
        {
          goto LABEL_67;
        }

        v56 = (v52 >> 3) + 1;
        v57 = 8 * (v56 & 0x3FFFFFFFFFFFFFFCLL);
        v53 = &v23[v57];
        v54 = &v9[v57];
        v58 = (v9 + 16);
        v59 = v55 + 16;
        v60 = v56 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v61 = *v58;
          *(v59 - 1) = *(v58 - 1);
          *v59 = v61;
          v58 += 2;
          v59 += 2;
          v60 -= 4;
        }

        while (v60);
        if (v56 != (v56 & 0x3FFFFFFFFFFFFFFCLL))
        {
LABEL_67:
          do
          {
            v62 = *v54;
            v54 += 8;
            *v53 = v62;
            v53 += 8;
          }

          while (v53 != v51);
        }
      }

      *a1 = v50;
      *(a1 + 8) = v23;
      *(a1 + 16) = v51;
      *(a1 + 24) = &v50[v49];
      if (v9)
      {
        operator delete(v8);
        v12 = v47;
        v23 = *(a1 + 8);
      }

      goto LABEL_61;
    }

LABEL_63:
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v13 = v11 >> 2;
  if (v6 == v8)
  {
    v13 = 1;
  }

  if (v13 >> 61)
  {
    goto LABEL_63;
  }

  v14 = 8 * v13;
  v15 = operator new(8 * v13);
  v16 = operator new(0x1000uLL);
  v17 = v16;
  v18 = &v15[v10];
  v19 = &v15[v14];
  if (v10 != v14)
  {
    goto LABEL_14;
  }

  if (v10 < 1)
  {
    if (v7 == v9)
    {
      v24 = 1;
    }

    else
    {
      v24 = v10 >> 2;
    }

    if (v24 >> 61)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v18 = operator new(8 * v24);
    v19 = &v18[8 * v24];
    operator delete(v15);
    v25 = *(a1 + 8);
    v7 = *(a1 + 16);
    v15 = v18;
    *v18 = v17;
    v20 = v18 + 8;
    if (v7 == v25)
    {
      goto LABEL_15;
    }

LABEL_31:
    while (v18 != v15)
    {
      v26 = v18;
LABEL_30:
      v27 = *(v7 - 1);
      v7 -= 8;
      *(v26 - 1) = v27;
      v21 = v26 - 8;
      v18 = v21;
      if (v7 == *(a1 + 8))
      {
        goto LABEL_16;
      }
    }

    if (v20 < v19)
    {
      v26 = &v15[8 * ((((v19 - v20) >> 3) + 1 + ((((v19 - v20) >> 3) + 1) >> 63)) >> 1)];
      v29 = v20 - v15;
      v28 = v20 == v15;
      v20 += 8 * ((((v19 - v20) >> 3) + 1 + ((((v19 - v20) >> 3) + 1) >> 63)) >> 1);
      if (!v28)
      {
        memmove(v26, v18, v29);
      }

      goto LABEL_30;
    }

    if (v19 == v15)
    {
      v30 = 1;
    }

    else
    {
      v30 = (v19 - v15) >> 2;
    }

    if (v30 >> 61)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v31 = operator new(8 * v30);
    v32 = v31;
    v33 = (v30 + 3) >> 2;
    v26 = &v31[8 * v33];
    v34 = v20 - v15;
    v28 = v20 == v15;
    v20 = v26;
    if (!v28)
    {
      v20 = &v26[v34];
      v35 = v34 - 8;
      if (v35 >= 0x18 && (v36 = 8 * v33, (&v31[8 * v33] - v18) >= 0x20))
      {
        v40 = (v35 >> 3) + 1;
        v41 = 8 * (v40 & 0x3FFFFFFFFFFFFFFCLL);
        v37 = &v26[v41];
        v38 = &v18[v41];
        v42 = (v18 + 16);
        v43 = &v31[v36 + 16];
        v44 = v40 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v45 = *v42;
          *(v43 - 1) = *(v42 - 1);
          *v43 = v45;
          v42 += 2;
          v43 += 32;
          v44 -= 4;
        }

        while (v44);
        if (v40 == (v40 & 0x3FFFFFFFFFFFFFFCLL))
        {
          goto LABEL_44;
        }
      }

      else
      {
        v37 = &v31[8 * v33];
        v38 = v18;
      }

      do
      {
        v39 = *v38;
        v38 += 8;
        *v37 = v39;
        v37 += 8;
      }

      while (v37 != v20);
    }

LABEL_44:
    v19 = &v31[8 * v30];
    operator delete(v15);
    v15 = v32;
    goto LABEL_30;
  }

  v18 -= ((v10 >> 1) + 4) & 0xFFFFFFFFFFFFFFF8;
LABEL_14:
  *v18 = v16;
  v20 = v18 + 8;
  if (v7 != v9)
  {
    goto LABEL_31;
  }

LABEL_15:
  v21 = v18;
LABEL_16:
  v22 = *a1;
  *a1 = v15;
  *(a1 + 8) = v21;
  *(a1 + 16) = v20;
  *(a1 + 24) = v19;
  if (v22)
  {

    operator delete(v22);
  }
}

void sub_1E5266EBC(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t boost::function0<boost::msm::back::HandledEnum>::move_assign(uint64_t result, uint64_t a2)
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

void sub_1E5266F9C(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_rethrow();
}

void boost::detail::function::functor_manager<boost::_bi::bind_t<boost::msm::back::HandledEnum,boost::_mfi::mf2<boost::msm::back::HandledEnum,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventError const&,unsigned char>,boost::_bi::list3<boost::_bi::value<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>*>,boost::_bi::value<BBUpdaterControllerFSM::eventError>,boost::_bi::value<unsigned char>>>>::manage(std::string **a1, std::string **a2, int a3)
{
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        *a2 = *a1;
        *a1 = 0;
        return;
      }

      goto LABEL_8;
    }

    v10 = a2;
    v11 = *a1;
    v12 = operator new(0x40uLL);
    v13 = v12;
    *&v12->__r_.__value_.__l.__data_ = *&v11->__r_.__value_.__l.__data_;
    v12->__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
    if (SHIBYTE(v11[1].__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(v12 + 1, v11[1].__r_.__value_.__l.__data_, v11[1].__r_.__value_.__l.__size_);
    }

    else
    {
      v14 = *&v11[1].__r_.__value_.__l.__data_;
      v12[1].__r_.__value_.__r.__words[2] = v11[1].__r_.__value_.__r.__words[2];
      *&v12[1].__r_.__value_.__l.__data_ = v14;
    }

    v13[2].__r_.__value_.__r.__words[0] = v11[2].__r_.__value_.__r.__words[0];
    v13[2].__r_.__value_.__s.__data_[8] = v11[2].__r_.__value_.__s.__data_[8];
    *v10 = v13;
  }

  else if (a3 == 2)
  {
    v3 = *a2;
    if (!*a2)
    {
LABEL_15:
      *a2 = 0;
      return;
    }

    v4 = a2;
    if (SHIBYTE(v3[1].__r_.__value_.__r.__words[2]) < 0)
    {
      v5 = *a2;
      operator delete(v3[1].__r_.__value_.__l.__data_);
      v3 = v5;
    }

    operator delete(v3);
    *v4 = 0;
  }

  else
  {
    if (a3 != 3)
    {
LABEL_8:
      *(a2 + 4) = 0;
      return;
    }

    if (((*a2)->__r_.__value_.__l.__size_ & 0x7FFFFFFFFFFFFFFFLL) != (0x80000001E538F487 & 0x7FFFFFFFFFFFFFFFLL))
    {
      v6 = a1;
      v7 = a2;
      v8 = strcmp(((*a2)->__r_.__value_.__l.__size_ & 0x7FFFFFFFFFFFFFFFLL), (0x80000001E538F487 & 0x7FFFFFFFFFFFFFFFLL));
      a2 = v7;
      v9 = v8;
      a1 = v6;
      if (v9)
      {
        goto LABEL_15;
      }
    }

    *a2 = *a1;
  }
}

uint64_t boost::detail::function::function_obj_invoker0<boost::_bi::bind_t<boost::msm::back::HandledEnum,boost::_mfi::mf2<boost::msm::back::HandledEnum,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventError const&,unsigned char>,boost::_bi::list3<boost::_bi::value<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>*>,boost::_bi::value<BBUpdaterControllerFSM::eventError>,boost::_bi::value<unsigned char>>>,boost::msm::back::HandledEnum>::invoke(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  v3 = (*a1)[56];
  v4 = **a1;
  v5 = (*(*a1 + 2) + (v2 >> 1));
  if (v2)
  {
    return (*(*v5 + v4))();
  }

  else
  {
    return v4(v5, v1 + 3, v3);
  }
}

void BBUpdaterControllerFSM::FSMBase<BBUpdaterControllerFSM::ControllerFSM_TOP>::no_transition<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventError>(uint64_t a1, uint64_t a2, int a3)
{
  memset(v63, 170, sizeof(v63));
  (*(*a1 + 24))(v63);
  v6 = a3;
  if (0xAAAAAAAAAAAAAAABLL * ((v63[1] - v63[0]) >> 3) <= a3)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 69, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterControllerFSM.hpp", 0x87u, "Assertion failure(( state < stateNames.size()) && Unrecognized BBU Stage.)", v45, v46, v47, v48);
  }

  v62 = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v61[7] = v7;
  v61[8] = v7;
  v61[5] = v7;
  v61[6] = v7;
  v61[3] = v7;
  v61[4] = v7;
  v61[1] = v7;
  v61[2] = v7;
  v60 = v7;
  v61[0] = v7;
  *__p = v7;
  v59 = v7;
  v56 = v7;
  v57 = v7;
  v54 = v7;
  v55 = v7;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v54);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v54, "no transition defined: ", 23);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, " in ", 4);
  v10 = (*(*a1 + 16))(a1);
  v11 = strlen(v10);
  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v10, v11);
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " from ", 6);
  v14 = v63[0] + 24 * v6;
  v15 = *(v14 + 23);
  if (v15 >= 0)
  {
    v16 = v63[0] + 24 * v6;
  }

  else
  {
    v16 = *v14;
  }

  if (v15 >= 0)
  {
    v17 = *(v14 + 23);
  }

  else
  {
    v17 = *(v14 + 8);
  }

  v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v16, v17);
  v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " on ", 4);
  v20 = strlen((0x80000001E538F460 & 0x7FFFFFFFFFFFFFFFLL));
  v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, 0x80000001E538F460 & 0x7FFFFFFFFFFFFFFFLL, v20);
  v52[0] = 10;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, v52, 1);
  memset(__dst, 170, sizeof(__dst));
  if ((BYTE8(v60) & 0x10) != 0)
  {
    v24 = v60;
    if (v60 < *(&v57 + 1))
    {
      *&v60 = *(&v57 + 1);
      v24 = *(&v57 + 1);
    }

    v25 = v57;
    v22 = v24 - v57;
    if ((v24 - v57) > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_64;
    }
  }

  else
  {
    if ((BYTE8(v60) & 8) == 0)
    {
      v22 = 0;
      HIBYTE(__dst[2]) = 0;
      v23 = __dst;
      goto LABEL_22;
    }

    v25 = *(&v55 + 1);
    v22 = *(&v56 + 1) - *(&v55 + 1);
    if (*(&v56 + 1) - *(&v55 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
    {
LABEL_64:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v22 >= 0x17)
  {
    if ((v22 | 7) == 0x17)
    {
      v26 = 25;
    }

    else
    {
      v26 = (v22 | 7) + 1;
    }

    v23 = operator new(v26);
    __dst[1] = v22;
    __dst[2] = (v26 | 0x8000000000000000);
    __dst[0] = v23;
    goto LABEL_21;
  }

  HIBYTE(__dst[2]) = v22;
  v23 = __dst;
  if (v22)
  {
LABEL_21:
    memmove(v23, v25, v22);
  }

LABEL_22:
  *(v23 + v22) = 0;
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
    {
      goto LABEL_28;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
    {
      goto LABEL_28;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v27 = (*(*a1 + 16))(a1);
    v31 = __dst;
    if (SHIBYTE(__dst[2]) < 0)
    {
      LOBYTE(v31) = __dst[0];
    }

    _BBULog(1, 0, v27, "", "%s", v28, v29, v30, v31);
  }

LABEL_28:
  *&v32 = 0xAAAAAAAAAAAAAAAALL;
  *(&v32 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v52 = v32;
  *&v52[16] = v32;
  if ((BYTE8(v60) & 0x10) != 0)
  {
    v33 = v60;
    if (v60 < *(&v57 + 1))
    {
      *&v60 = *(&v57 + 1);
      v33 = *(&v57 + 1);
    }

    v34 = v57;
    v35 = v33 - v57;
    if ((v33 - v57) > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_66;
    }
  }

  else
  {
    if ((BYTE8(v60) & 8) == 0)
    {
      HIBYTE(v51) = 0;
      LOBYTE(v50) = 0;
      goto LABEL_37;
    }

    v34 = *(&v55 + 1);
    v35 = *(&v56 + 1) - *(&v55 + 1);
    if (*(&v56 + 1) - *(&v55 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
    {
LABEL_66:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

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

    v36 = operator new(v38);
    *(&v50 + 1) = v35;
    v51 = v38 | 0x8000000000000000;
    *&v50 = v36;
  }

  else
  {
    HIBYTE(v51) = v35;
    v36 = &v50;
    if (!v35)
    {
      LOBYTE(v50) = 0;
      if ((SHIBYTE(v51) & 0x80000000) == 0)
      {
        goto LABEL_37;
      }

LABEL_44:
      v39 = v50;
      std::string::__init_copy_ctor_external(v52, v50, *(&v50 + 1));
      *&v52[24] = 44;
      operator delete(v39);
      v37 = *(a2 + 16);
      if ((v52[23] & 0x80000000) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_45;
    }
  }

  memmove(v36, v34, v35);
  *(v36 + v35) = 0;
  if (SHIBYTE(v51) < 0)
  {
    goto LABEL_44;
  }

LABEL_37:
  *v52 = v50;
  *&v52[16] = v51;
  *&v52[24] = 44;
  v37 = *(a2 + 16);
  if ((SHIBYTE(v51) & 0x80000000) == 0)
  {
LABEL_38:
    v49 = *v52;
    goto LABEL_46;
  }

LABEL_45:
  std::string::__init_copy_ctor_external(&v49, *v52, *&v52[8]);
LABEL_46:
  BBUpdaterController::handleError(v37, &v49, *&v52[24]);
  if ((SHIBYTE(v49.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((v52[23] & 0x80000000) == 0)
    {
      goto LABEL_48;
    }

LABEL_61:
    operator delete(*v52);
    if ((SHIBYTE(__dst[2]) & 0x80000000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_62;
  }

  operator delete(v49.__r_.__value_.__l.__data_);
  if ((v52[23] & 0x80000000) != 0)
  {
    goto LABEL_61;
  }

LABEL_48:
  if ((SHIBYTE(__dst[2]) & 0x80000000) == 0)
  {
    goto LABEL_49;
  }

LABEL_62:
  operator delete(__dst[0]);
LABEL_49:
  *&v54 = *MEMORY[0x1E69E54E8];
  *(&v54 + *(v54 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  *(&v54 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v59) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v54 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v55);
  std::ostream::~ostream();
  MEMORY[0x1E69273B0](v61);
  v40 = v63[0];
  if (v63[0])
  {
    v41 = v63[1];
    v42 = v63[0];
    if (v63[1] != v63[0])
    {
      do
      {
        v43 = *(v41 - 1);
        v41 -= 3;
        if (v43 < 0)
        {
          operator delete(*v41);
        }
      }

      while (v41 != v40);
      v42 = v63[0];
    }

    v63[1] = v40;
    operator delete(v42);
  }
}

void sub_1E5267860(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, char a34)
{
  if (a25 < 0)
  {
    operator delete(__p);
    if ((a33 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((a33 & 0x80000000) == 0)
  {
LABEL_6:
    std::ostringstream::~ostringstream(&a34);
    std::vector<std::string>::~vector[abi:ne200100]((v34 - 88));
    _Unwind_Resume(a1);
  }

  operator delete(a28);
  std::ostringstream::~ostringstream(&a34);
  std::vector<std::string>::~vector[abi:ne200100]((v34 - 88));
  _Unwind_Resume(a1);
}

uint64_t boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::process_message_queue<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>>(uint64_t result)
{
  if (*(result + 80))
  {
    v1 = result;
    while (1)
    {
      *&v2 = 0xAAAAAAAAAAAAAAAALL;
      *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *(&v17[0] + 1) = 0xAAAAAAAAAAAAAAAALL;
      v17[1] = v2;
      v3 = *(v1 + 48);
      v4 = *(v1 + 72);
      v5 = v4 >> 7;
      v6 = v4 & 0x7F;
      v7 = *(v3 + 8 * (v4 >> 7)) + 32 * v6;
      *&v17[0] = 0;
      v8 = *v7;
      if (!*v7)
      {
        goto LABEL_7;
      }

      *&v17[0] = *v7;
      if ((v8 & 1) == 0)
      {
        break;
      }

      v13 = *(v7 + 8);
      *(&v17[1] + 1) = *(v7 + 24);
      *(v17 + 8) = v13;
      v9 = (*(v3 + 8 * v5) + 32 * v6);
      v10 = *v9;
      if (*v9)
      {
LABEL_16:
        if ((v10 & 1) == 0)
        {
          v14 = *v10;
          if (v14)
          {
            v14(v9 + 1, v9 + 1, 2);
            v4 = *(v1 + 72);
          }
        }

        *v9 = 0;
        v15 = *(v1 + 80) - 1;
        v16 = v4 + 1;
        *(v1 + 72) = v16;
        *(v1 + 80) = v15;
        if (v16 < 0x100)
        {
          goto LABEL_10;
        }

LABEL_9:
        operator delete(**(v1 + 48));
        *(v1 + 48) += 8;
        *(v1 + 72) -= 128;
        goto LABEL_10;
      }

LABEL_8:
      v11 = *(v1 + 80) - 1;
      v12 = v4 + 1;
      *(v1 + 72) = v12;
      *(v1 + 80) = v11;
      if (v12 >= 0x100)
      {
        goto LABEL_9;
      }

LABEL_10:
      if (!*&v17[0])
      {
        std::runtime_error::runtime_error(&v18, "call to empty boost::function");
        v18.__vftable = &unk_1F5EFF7C8;
        boost::throw_exception<boost::bad_function_call>(&v18);
      }

      result = (*((*&v17[0] & 0xFFFFFFFFFFFFFFFELL) + 8))(v17 + 8);
      if ((v17[0] & 1) == 0)
      {
        if (**&v17[0])
        {
          result = (**&v17[0])(v17 + 8, v17 + 8, 2);
        }
      }

      if (!*(v1 + 80))
      {
        return result;
      }
    }

    (*v8)(v7 + 8, v17 + 8, 0);
    v3 = *(v1 + 48);
    v4 = *(v1 + 72);
    v5 = v4 >> 7;
    v6 = v4 & 0x7F;
LABEL_7:
    v9 = (*(v3 + 8 * v5) + 32 * v6);
    v10 = *v9;
    if (*v9)
    {
      goto LABEL_16;
    }

    goto LABEL_8;
  }

  return result;
}

void sub_1E5267B48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::runtime_error a13)
{
  std::runtime_error::~runtime_error(&a13);
  boost::function<boost::msm::back::HandledEnum ()(void)>::~function(&a9);
  _Unwind_Resume(a1);
}

void boost::throw_exception<boost::bad_function_call>(const std::runtime_error *a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  v3 = boost::wrapexcept<boost::bad_function_call>::wrapexcept(exception, a1);
}

uint64_t boost::wrapexcept<boost::bad_function_call>::wrapexcept(uint64_t a1, const std::runtime_error *a2)
{
  *a1 = &unk_1F5EFF798;
  std::runtime_error::runtime_error((a1 + 8), a2);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = -1;
  *a1 = &unk_1F5EFF720;
  *(a1 + 8) = &unk_1F5EFF750;
  *(a1 + 24) = &unk_1F5EFF778;
  return a1;
}

uint64_t boost::wrapexcept<boost::bad_function_call>::~wrapexcept(uint64_t a1)
{
  *(a1 + 24) = &unk_1F5EFF7F0;
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
  *v2 = &unk_1F5EFF798;
  std::runtime_error::runtime_error((v2 + 8), (a1 + 8));
  *(v2 + 1) = &unk_1F5EFF7C8;
  v3 = *(a1 + 32);
  *(v2 + 3) = &unk_1F5EFF7F0;
  *(v2 + 4) = v3;
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  *(v2 + 40) = *(a1 + 40);
  *(v2 + 14) = *(a1 + 56);
  *v2 = &unk_1F5EFF720;
  *(v2 + 1) = &unk_1F5EFF750;
  *(v2 + 3) = &unk_1F5EFF778;
  boost::exception_detail::copy_boost_exception((v2 + 24), a1 + 24);
  return v2;
}

void sub_1E5267E3C(_Unwind_Exception *a1)
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
  *(a1 + 24) = &unk_1F5EFF7F0;
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
  a1[1].__vftable = &unk_1F5EFF7F0;
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
  a1[1].__vftable = &unk_1F5EFF7F0;
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
  a1->__vftable = &unk_1F5EFF7F0;
  imp = a1->__imp_.__imp_;
  if (imp && (*(*imp + 32))(imp))
  {
    a1->__imp_.__imp_ = 0;
  }

  std::runtime_error::~runtime_error(a1 - 1);
}

{
  a1->__vftable = &unk_1F5EFF7F0;
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
  *a1 = &unk_1F5EFF798;
  std::runtime_error::runtime_error((a1 + 8), (a2 + 8));
  *(a1 + 8) = &unk_1F5EFF7C8;
  v4 = *(a2 + 32);
  *(a1 + 24) = &unk_1F5EFF7F0;
  *(a1 + 32) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v5;
  *a1 = &unk_1F5EFF720;
  *(a1 + 8) = &unk_1F5EFF750;
  *(a1 + 24) = &unk_1F5EFF778;
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

void sub_1E526851C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a9);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(&a10);
  _Unwind_Resume(a1);
}

void sub_1E526853C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(va);
  _Unwind_Resume(a1);
}

void sub_1E5268550(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  boost::exception_detail::refcount_ptr<boost::exception_detail::error_info_container>::~refcount_ptr(va);
  _Unwind_Resume(a1);
}

uint64_t boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::a_row_<boost::msm::front::Row<BBUpdaterControllerFSM::ControllerFSM_TOP::stateRegularMode,BBUpdaterControllerFSM::eventError,BBUpdaterControllerFSM::ControllerFSM_TOP::stateDebugMode,BBUpdaterControllerFSM::ControllerFSM_TOP::handleError,boost::msm::front::none>>::execute(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v6 = a1 + 32;
  *(a1 + 124) = 0;
  *(a1 + 32 + 4 * a2) = 7;
  v7 = *(a1 + 16);
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a4, *(a4 + 8));
  }

  else
  {
    __p = *a4;
  }

  BBUpdaterController::handleError(v7, &__p, *(a4 + 24));
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *(v6 + 4 * a2) = 9;
  return 1;
}

void sub_1E5268608(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::process_event_internal<BBUpdaterControllerFSM::eventSkipPersonalize>(uint64_t a1, uint64_t a2, char a3)
{
  qword_1ED9484D8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateDebugMode,boost::msm::TerminateFlag>::flag_true;
  qword_1ED9484D0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateCoredump,boost::msm::TerminateFlag>::flag_false;
  qword_1ED9484C8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateRegularMode,boost::msm::TerminateFlag>::flag_false;
  qword_1ED9484C0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateFinalize,boost::msm::TerminateFlag>::flag_false;
  qword_1ED9484B8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,boost::msm::TerminateFlag>::flag_false;
  qword_1ED9484B0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateFusing,boost::msm::TerminateFlag>::flag_false;
  qword_1ED9484A8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,boost::msm::TerminateFlag>::flag_false;
  qword_1ED9484A0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateManifestCheck,boost::msm::TerminateFlag>::flag_false;
  qword_1ED948498 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateBooting,boost::msm::TerminateFlag>::flag_false;
  qword_1ED948490[0] = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateInit,boost::msm::TerminateFlag>::flag_false;
  v5 = (qword_1ED948490[*(a1 + 32)])();
  v6 = (qword_1ED948490[*(a1 + 36)])(a1);
  result = 1;
  if ((v5 & 1) == 0 && (v6 & 1) == 0)
  {
    qword_1ED948528 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateDebugMode,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED948520 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateCoredump,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED948518 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateRegularMode,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED948510 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateFinalize,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED948508 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED948500 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateFusing,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED9484F8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED9484F0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateManifestCheck,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED9484E8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateBooting,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED9484E0[0] = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateInit,boost::msm::InterruptedFlag>::flag_false;
    v8 = (qword_1ED9484E0[*(a1 + 32)])(a1);
    v9 = (qword_1ED9484E0[*(a1 + 36)])(a1);
    if ((v8 & 1) == 0 && !v9)
    {
      goto LABEL_5;
    }

    qword_1ED9485C8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateDebugMode,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventSkipPersonalize>>::flag_false;
    qword_1ED9485C0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateCoredump,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventSkipPersonalize>>::flag_false;
    qword_1ED9485B8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateRegularMode,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventSkipPersonalize>>::flag_false;
    qword_1ED9485B0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateFinalize,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventSkipPersonalize>>::flag_false;
    qword_1ED9485A8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventSkipPersonalize>>::flag_false;
    qword_1ED9485A0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateFusing,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventSkipPersonalize>>::flag_false;
    qword_1ED948598 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventSkipPersonalize>>::flag_false;
    qword_1ED948590 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateManifestCheck,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventSkipPersonalize>>::flag_false;
    qword_1ED948588 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateBooting,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventSkipPersonalize>>::flag_false;
    qword_1ED948580[0] = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateInit,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventSkipPersonalize>>::flag_false;
    v17 = (qword_1ED948580[*(a1 + 32)])(a1);
    v18 = (qword_1ED948580[*(a1 + 36)])(a1);
    if ((v17 & 1) != 0 || v18)
    {
LABEL_5:
      if (*(a1 + 100) == 1)
      {
        v10 = operator new(0x20uLL);
        v11 = *(a1 + 48);
        v12 = *(a1 + 56);
        v13 = *(a1 + 48);
        v14 = 16 * (v12 - v13) - 1;
        *v10 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::process_event_internal<BBUpdaterControllerFSM::eventSkipPersonalize>;
        v10[1] = 0;
        v10[2] = a1;
        *(v10 + 25) = 5;
        v22 = boost::function0<boost::msm::back::HandledEnum>::assign_to<boost::_bi::bind_t<boost::msm::back::HandledEnum,boost::_mfi::mf2<boost::msm::back::HandledEnum,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventSkipPersonalize const&,unsigned char>,boost::_bi::list3<boost::_bi::value<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>*>,boost::_bi::value<BBUpdaterControllerFSM::eventSkipPersonalize>,boost::_bi::value<unsigned char>>>>(boost::_bi::bind_t<boost::msm::back::HandledEnum,boost::_mfi::mf2<boost::msm::back::HandledEnum,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventSkipPersonalize const&,unsigned char>,boost::_bi::list3<boost::_bi::value<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>*>,boost::_bi::value<BBUpdaterControllerFSM::eventSkipPersonalize>,boost::_bi::value<unsigned char>>>)::stored_vtable;
        v23[0] = v10;
        if (v12 == v13)
        {
          v14 = 0;
        }

        v15 = *(a1 + 80) + *(a1 + 72);
        if (v14 == v15)
        {
          std::deque<boost::function<boost::msm::back::HandledEnum ()(void)>>::__add_back_capacity(a1 + 40);
          v13 = *(a1 + 48);
          v15 = *(a1 + 80) + *(a1 + 72);
        }

        v16 = (*(v13 + ((v15 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v15 & 0x7F));
        *v16 = 0;
        boost::function0<boost::msm::back::HandledEnum>::move_assign(v16, &v22);
        ++*(a1 + 80);
        if (v22 && (v22 & 1) == 0)
        {
          if (*v22)
          {
            (*v22)(v23, v23, 2);
          }
        }

        return 1;
      }

      else
      {
        *(a1 + 100) = 1;
        v19 = (*(&unk_1ED9489E8 + *(a1 + 32) + 1))(a1, 0);
        result = (*(&unk_1ED9489E8 + *(a1 + 36) + 1))(a1, 1) | v19;
        if (*(a1 + 101) != 1 || (a3) && !result)
        {
          v20 = result;
          BBUpdaterControllerFSM::FSMBase<BBUpdaterControllerFSM::ControllerFSM_TOP>::no_transition<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventSkipPersonalize>(a1, a1, *(a1 + 32));
          BBUpdaterControllerFSM::FSMBase<BBUpdaterControllerFSM::ControllerFSM_TOP>::no_transition<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventSkipPersonalize>(a1, a1, *(a1 + 36));
          result = v20;
        }

        *(a1 + 100) = 0;
        if ((a3 & 6) == 0)
        {
          v21 = result;
          boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::process_message_queue<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>>(a1);
          return v21;
        }
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}

void boost::detail::function::functor_manager<boost::_bi::bind_t<boost::msm::back::HandledEnum,boost::_mfi::mf2<boost::msm::back::HandledEnum,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventSkipPersonalize const&,unsigned char>,boost::_bi::list3<boost::_bi::value<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>*>,boost::_bi::value<BBUpdaterControllerFSM::eventSkipPersonalize>,boost::_bi::value<unsigned char>>>>::manage(void *a1, uint64_t a2, int a3)
{
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        *a2 = *a1;
        *a1 = 0;
        return;
      }

      goto LABEL_8;
    }

    v8 = *a1;
    v9 = a2;
    v10 = operator new(0x20uLL);
    v11 = v8[1];
    *v10 = *v8;
    v10[1] = v11;
    *v9 = v10;
  }

  else
  {
    if (a3 == 2)
    {
      if (*a2)
      {
        v3 = a2;
        operator delete(*a2);
        *v3 = 0;
        return;
      }

      goto LABEL_13;
    }

    if (a3 != 3)
    {
LABEL_8:
      *(a2 + 8) = 0;
      return;
    }

    if ((*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL) != (0x80000001E538F622 & 0x7FFFFFFFFFFFFFFFLL))
    {
      v4 = a1;
      v5 = a2;
      v6 = strcmp((*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL), (0x80000001E538F622 & 0x7FFFFFFFFFFFFFFFLL));
      a2 = v5;
      v7 = v6;
      a1 = v4;
      if (v7)
      {
LABEL_13:
        *a2 = 0;
        return;
      }
    }

    *a2 = *a1;
  }
}

uint64_t boost::detail::function::function_obj_invoker0<boost::_bi::bind_t<boost::msm::back::HandledEnum,boost::_mfi::mf2<boost::msm::back::HandledEnum,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventSkipPersonalize const&,unsigned char>,boost::_bi::list3<boost::_bi::value<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>*>,boost::_bi::value<BBUpdaterControllerFSM::eventSkipPersonalize>,boost::_bi::value<unsigned char>>>,boost::msm::back::HandledEnum>::invoke(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  v3 = (*a1)[25];
  v4 = **a1;
  v5 = (*(*a1 + 2) + (v2 >> 1));
  if (v2)
  {
    return (*(*v5 + v4))();
  }

  else
  {
    return v4(v5, v1 + 3, v3);
  }
}

void BBUpdaterControllerFSM::FSMBase<BBUpdaterControllerFSM::ControllerFSM_TOP>::no_transition<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventSkipPersonalize>(uint64_t a1, uint64_t a2, int a3)
{
  memset(v63, 170, sizeof(v63));
  (*(*a1 + 24))(v63);
  v6 = a3;
  if (0xAAAAAAAAAAAAAAABLL * ((v63[1] - v63[0]) >> 3) <= a3)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 69, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterControllerFSM.hpp", 0x87u, "Assertion failure(( state < stateNames.size()) && Unrecognized BBU Stage.)", v45, v46, v47, v48);
  }

  v62 = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v61[7] = v7;
  v61[8] = v7;
  v61[5] = v7;
  v61[6] = v7;
  v61[3] = v7;
  v61[4] = v7;
  v61[1] = v7;
  v61[2] = v7;
  v60 = v7;
  v61[0] = v7;
  *__p = v7;
  v59 = v7;
  v56 = v7;
  v57 = v7;
  v54 = v7;
  v55 = v7;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v54);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v54, "no transition defined: ", 23);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, " in ", 4);
  v10 = (*(*a1 + 16))(a1);
  v11 = strlen(v10);
  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v10, v11);
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " from ", 6);
  v14 = v63[0] + 24 * v6;
  v15 = *(v14 + 23);
  if (v15 >= 0)
  {
    v16 = v63[0] + 24 * v6;
  }

  else
  {
    v16 = *v14;
  }

  if (v15 >= 0)
  {
    v17 = *(v14 + 23);
  }

  else
  {
    v17 = *(v14 + 8);
  }

  v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v16, v17);
  v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " on ", 4);
  v20 = strlen((0x80000001E538F5F1 & 0x7FFFFFFFFFFFFFFFLL));
  v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, 0x80000001E538F5F1 & 0x7FFFFFFFFFFFFFFFLL, v20);
  v52[0] = 10;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, v52, 1);
  memset(__dst, 170, sizeof(__dst));
  if ((BYTE8(v60) & 0x10) != 0)
  {
    v24 = v60;
    if (v60 < *(&v57 + 1))
    {
      *&v60 = *(&v57 + 1);
      v24 = *(&v57 + 1);
    }

    v25 = v57;
    v22 = v24 - v57;
    if ((v24 - v57) > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_64;
    }
  }

  else
  {
    if ((BYTE8(v60) & 8) == 0)
    {
      v22 = 0;
      HIBYTE(__dst[2]) = 0;
      v23 = __dst;
      goto LABEL_22;
    }

    v25 = *(&v55 + 1);
    v22 = *(&v56 + 1) - *(&v55 + 1);
    if (*(&v56 + 1) - *(&v55 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
    {
LABEL_64:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v22 >= 0x17)
  {
    if ((v22 | 7) == 0x17)
    {
      v26 = 25;
    }

    else
    {
      v26 = (v22 | 7) + 1;
    }

    v23 = operator new(v26);
    __dst[1] = v22;
    __dst[2] = (v26 | 0x8000000000000000);
    __dst[0] = v23;
    goto LABEL_21;
  }

  HIBYTE(__dst[2]) = v22;
  v23 = __dst;
  if (v22)
  {
LABEL_21:
    memmove(v23, v25, v22);
  }

LABEL_22:
  *(v23 + v22) = 0;
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
    {
      goto LABEL_28;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
    {
      goto LABEL_28;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v27 = (*(*a1 + 16))(a1);
    v31 = __dst;
    if (SHIBYTE(__dst[2]) < 0)
    {
      LOBYTE(v31) = __dst[0];
    }

    _BBULog(1, 0, v27, "", "%s", v28, v29, v30, v31);
  }

LABEL_28:
  *&v32 = 0xAAAAAAAAAAAAAAAALL;
  *(&v32 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v52 = v32;
  *&v52[16] = v32;
  if ((BYTE8(v60) & 0x10) != 0)
  {
    v33 = v60;
    if (v60 < *(&v57 + 1))
    {
      *&v60 = *(&v57 + 1);
      v33 = *(&v57 + 1);
    }

    v34 = v57;
    v35 = v33 - v57;
    if ((v33 - v57) > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_66;
    }
  }

  else
  {
    if ((BYTE8(v60) & 8) == 0)
    {
      HIBYTE(v51) = 0;
      LOBYTE(v50) = 0;
      goto LABEL_37;
    }

    v34 = *(&v55 + 1);
    v35 = *(&v56 + 1) - *(&v55 + 1);
    if (*(&v56 + 1) - *(&v55 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
    {
LABEL_66:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

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

    v36 = operator new(v38);
    *(&v50 + 1) = v35;
    v51 = v38 | 0x8000000000000000;
    *&v50 = v36;
  }

  else
  {
    HIBYTE(v51) = v35;
    v36 = &v50;
    if (!v35)
    {
      LOBYTE(v50) = 0;
      if ((SHIBYTE(v51) & 0x80000000) == 0)
      {
        goto LABEL_37;
      }

LABEL_44:
      v39 = v50;
      std::string::__init_copy_ctor_external(v52, v50, *(&v50 + 1));
      *&v52[24] = 44;
      operator delete(v39);
      v37 = *(a2 + 16);
      if ((v52[23] & 0x80000000) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_45;
    }
  }

  memmove(v36, v34, v35);
  *(v36 + v35) = 0;
  if (SHIBYTE(v51) < 0)
  {
    goto LABEL_44;
  }

LABEL_37:
  *v52 = v50;
  *&v52[16] = v51;
  *&v52[24] = 44;
  v37 = *(a2 + 16);
  if ((SHIBYTE(v51) & 0x80000000) == 0)
  {
LABEL_38:
    v49 = *v52;
    goto LABEL_46;
  }

LABEL_45:
  std::string::__init_copy_ctor_external(&v49, *v52, *&v52[8]);
LABEL_46:
  BBUpdaterController::handleError(v37, &v49, *&v52[24]);
  if ((SHIBYTE(v49.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((v52[23] & 0x80000000) == 0)
    {
      goto LABEL_48;
    }

LABEL_61:
    operator delete(*v52);
    if ((SHIBYTE(__dst[2]) & 0x80000000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_62;
  }

  operator delete(v49.__r_.__value_.__l.__data_);
  if ((v52[23] & 0x80000000) != 0)
  {
    goto LABEL_61;
  }

LABEL_48:
  if ((SHIBYTE(__dst[2]) & 0x80000000) == 0)
  {
    goto LABEL_49;
  }

LABEL_62:
  operator delete(__dst[0]);
LABEL_49:
  *&v54 = *MEMORY[0x1E69E54E8];
  *(&v54 + *(v54 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  *(&v54 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v59) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v54 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v55);
  std::ostream::~ostream();
  MEMORY[0x1E69273B0](v61);
  v40 = v63[0];
  if (v63[0])
  {
    v41 = v63[1];
    v42 = v63[0];
    if (v63[1] != v63[0])
    {
      do
      {
        v43 = *(v41 - 1);
        v41 -= 3;
        if (v43 < 0)
        {
          operator delete(*v41);
        }
      }

      while (v41 != v40);
      v42 = v63[0];
    }

    v63[1] = v40;
    operator delete(v42);
  }
}

void sub_1E5269314(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, char a34)
{
  if (a25 < 0)
  {
    operator delete(__p);
    if ((a33 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((a33 & 0x80000000) == 0)
  {
LABEL_6:
    std::ostringstream::~ostringstream(&a34);
    std::vector<std::string>::~vector[abi:ne200100]((v34 - 88));
    _Unwind_Resume(a1);
  }

  operator delete(a28);
  std::ostringstream::~ostringstream(&a34);
  std::vector<std::string>::~vector[abi:ne200100]((v34 - 88));
  _Unwind_Resume(a1);
}

uint64_t boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::a_row_<boost::msm::front::Row<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_::statePersonalizeSecond,BBUpdaterControllerFSM::eventSkipPersonalize,BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_::statePersonalizeBooted,BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_::skipPersonalize,boost::msm::front::none>>::execute(uint64_t a1, int a2)
{
  v4 = a1 + 24;
  *(a1 + 120) = 0;
  *(a1 + 24 + 4 * a2) = 1;
  v5 = *(a1 + 16);
  v43 = 0;
  v44 = 0;
  v45 = 0;
  v6 = v5[7];
  BBUFeedback::handleComment(v6, "entering %s", "StageContext::SkipPersonalize");
  v7 = *(v6 + 9);
  v8 = *(v6 + 19);
  v9 = *(v6 + 18);
  if (v8 == v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = ((v8 - v9) << 7) - 1;
  }

  v11 = *(v6 + 22);
  v12 = v11 + *(v6 + 21);
  if (v10 == v12)
  {
    std::deque<BBUpdaterCommon::StageContext>::__add_back_capacity(v6 + 136);
    v9 = *(v6 + 18);
    v11 = *(v6 + 22);
    v12 = *(v6 + 21) + v11;
  }

  *(*(v9 + ((v12 >> 7) & 0x1FFFFFFFFFFFFF8)) + 4 * (v12 & 0x3FF)) = 6;
  *(v6 + 22) = v11 + 1;
  FirmwareDataSource = BBUpdaterController::getFirmwareDataSource(v5, 1);
  v42 = FirmwareDataSource;
  if (FirmwareDataSource)
  {
    v20 = BBUpdaterController::pushImagesInternal(v5, &v42, 1, &v43);
    if (!v20)
    {
      v24 = BBUpdaterController::performPingInternal(v5);
      if (!v24)
      {
        BBUpdaterController::performBootedStageInternal(v5, &v42);
        goto LABEL_10;
      }

      if (gBBULogMaskGet(void)::once == -1)
      {
        if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
        {
          goto LABEL_37;
        }
      }

      else
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
        if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
        {
          goto LABEL_37;
        }
      }

      if (gBBULogVerbosity >= 6)
      {
        _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", v21, v22, v23, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp");
      }

LABEL_37:
      std::string::basic_string[abi:ne200100]<0>(&__p, BBUReturnAsString::BBUReturnStrings[v24]);
      std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("Failed to ping baseband: ", &__p, &v39);
      v34 = capabilities::updater::intermittentFailureRetryCount(v33);
      if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
      {
        v35 = v34;
        std::string::__init_copy_ctor_external(&v40, v39.__r_.__value_.__l.__data_, v39.__r_.__value_.__l.__size_);
        v34 = v35;
      }

      else
      {
        v40 = v39;
      }

      v41 = __PAIR64__(v34, v24);
      BBUpdaterController::process_event<BBUpdaterControllerFSM::eventRetry>(v5, &v40);
      if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v40.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v39.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_59:
          if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_10;
          }

LABEL_63:
          operator delete(__p.__r_.__value_.__l.__data_);
          goto LABEL_10;
        }
      }

      else if ((SHIBYTE(v39.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_59;
      }

      operator delete(v39.__r_.__value_.__l.__data_);
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_63;
    }

    if (gBBULogMaskGet(void)::once == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_25;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
      {
        goto LABEL_25;
      }
    }

    if (gBBULogVerbosity >= 6)
    {
      _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", v17, v18, v19, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp");
    }

LABEL_25:
    std::string::basic_string[abi:ne200100]<0>(&v36, BBUReturnAsString::BBUReturnStrings[v20]);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("Failed to push images: ", &v36, &__p);
    std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(": ", &__p, &v39);
    if (v45 >= 0)
    {
      v26 = &v43;
    }

    else
    {
      v26 = v43;
    }

    if (v45 >= 0)
    {
      v27 = HIBYTE(v45);
    }

    else
    {
      v27 = v44;
    }

    v28 = std::string::append(&v39, v26, v27);
    v29 = v28->__r_.__value_.__r.__words[0];
    size = v28->__r_.__value_.__l.__size_;
    v38[0] = v28->__r_.__value_.__r.__words[2];
    *(v38 + 3) = *(&v28->__r_.__value_.__r.__words[2] + 3);
    v31 = SHIBYTE(v28->__r_.__value_.__r.__words[2]);
    v28->__r_.__value_.__l.__size_ = 0;
    v28->__r_.__value_.__r.__words[2] = 0;
    v28->__r_.__value_.__r.__words[0] = 0;
    v32 = capabilities::updater::intermittentFailureRetryCount(v28);
    if (v31 < 0)
    {
      std::string::__init_copy_ctor_external(&v40, v29, size);
    }

    else
    {
      v40.__r_.__value_.__r.__words[0] = v29;
      v40.__r_.__value_.__l.__size_ = size;
      LODWORD(v40.__r_.__value_.__r.__words[2]) = v38[0];
      *(&v40.__r_.__value_.__r.__words[2] + 3) = *(v38 + 3);
      *(&v40.__r_.__value_.__s + 23) = v31;
    }

    v41 = __PAIR64__(v32, v20);
    BBUpdaterController::process_event<BBUpdaterControllerFSM::eventRetry>(v5, &v40);
    if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v40.__r_.__value_.__l.__data_);
      if ((v31 & 0x80000000) == 0)
      {
LABEL_47:
        if ((SHIBYTE(v39.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_48;
        }

        goto LABEL_53;
      }
    }

    else if ((v31 & 0x80000000) == 0)
    {
      goto LABEL_47;
    }

    operator delete(v29);
    if ((SHIBYTE(v39.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_48:
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_49;
      }

      goto LABEL_54;
    }

LABEL_53:
    operator delete(v39.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_49:
      if ((SHIBYTE(v36.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_10;
      }

LABEL_55:
      operator delete(v36.__r_.__value_.__l.__data_);
      goto LABEL_10;
    }

LABEL_54:
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v36.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_55;
  }

  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
    {
      goto LABEL_17;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
    {
LABEL_17:
      if (gBBULogVerbosity >= 6)
      {
        _BBULog(1, 6, "BBUpdaterController", "", "check failed: %s, %d, assertion: %s\n", v13, v14, v15, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterController.cpp");
      }
    }
  }

  std::string::basic_string[abi:ne200100]<0>(&v39, "Fail to get update source for bootup\n");
  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v40, v39.__r_.__value_.__l.__data_, v39.__r_.__value_.__l.__size_);
  }

  else
  {
    v40 = v39;
  }

  v41 = 35;
  BBUpdaterController::process_event<BBUpdaterControllerFSM::eventError>(v5, &v40);
  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }

LABEL_10:
  BBUFeedback::exitStageContext(v5[7]);
  if (FirmwareDataSource)
  {
    (*(*FirmwareDataSource + 16))(FirmwareDataSource);
  }

  if (SHIBYTE(v45) < 0)
  {
    operator delete(v43);
  }

  *(v4 + 4 * a2) = 1;
  ++*(a1 + 108);
  *(v4 + 4 * a2) = 2;
  return 1;
}

void sub_1E5269A08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  if (*(v37 - 89) < 0)
  {
    operator delete(*(v37 - 112));
  }

  _Unwind_Resume(exception_object);
}

uint64_t boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::frow<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventSkipPersonalize>::execute(uint64_t a1, int a2)
{
  if (boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::do_pre_msg_queue_helper<BBUpdaterControllerFSM::eventSkipPersonalize,BBUpdaterControllerFSM::eventSkipPersonalize>(a1 + 280))
  {
    v4 = (_MergedGlobals_1[*(a1 + 304) + 33])(a1 + 280, 0);
    v5 = v4;
    if ((*(a1 + 369) & 1) == 0 && !v4)
    {
      BBUpdaterControllerFSM::FSMBase<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_>::no_transition<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventSkipPersonalize>(a1 + 280, a1 + 280, *(a1 + 304));
    }

    *(a1 + 368) = 0;
    boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::process_message_queue<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>>(a1 + 280);
  }

  else
  {
    v5 = 1;
  }

  *(a1 + 4 * a2 + 32) = 3;
  return v5;
}

uint64_t boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::process_event_internal<BBUpdaterControllerFSM::eventSkipPersonalize>(uint64_t a1, uint64_t a2, char a3)
{
  if (!boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::do_pre_msg_queue_helper<BBUpdaterControllerFSM::eventSkipPersonalize,BBUpdaterControllerFSM::eventSkipPersonalize>())
  {
    return 1;
  }

  result = (_MergedGlobals_1[*(a1 + 24) + 33])(a1, 0);
  if (*(a1 + 89) != 1 || (a3) && !result)
  {
    v6 = result;
    BBUpdaterControllerFSM::FSMBase<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_>::no_transition<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventSkipPersonalize>(a1, a1, *(a1 + 24));
    result = v6;
  }

  *(a1 + 88) = 0;
  if ((a3 & 6) == 0)
  {
    v7 = result;
    boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::process_message_queue<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>>(a1);
    return v7;
  }

  return result;
}

uint64_t boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::do_pre_msg_queue_helper<BBUpdaterControllerFSM::eventSkipPersonalize,BBUpdaterControllerFSM::eventSkipPersonalize>(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2 == 1)
  {
    v3 = operator new(0x20uLL);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v6 = *(a1 + 40);
    v7 = 16 * (v5 - v6) - 1;
    *v3 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::process_event_internal<BBUpdaterControllerFSM::eventSkipPersonalize>;
    v3[1] = 0;
    v3[2] = a1;
    *(v3 + 25) = 5;
    v11 = boost::function0<boost::msm::back::HandledEnum>::assign_to<boost::_bi::bind_t<boost::msm::back::HandledEnum,boost::_mfi::mf2<boost::msm::back::HandledEnum,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventSkipPersonalize const&,unsigned char>,boost::_bi::list3<boost::_bi::value<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>*>,boost::_bi::value<BBUpdaterControllerFSM::eventSkipPersonalize>,boost::_bi::value<unsigned char>>>>(boost::_bi::bind_t<boost::msm::back::HandledEnum,boost::_mfi::mf2<boost::msm::back::HandledEnum,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventSkipPersonalize const&,unsigned char>,boost::_bi::list3<boost::_bi::value<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>*>,boost::_bi::value<BBUpdaterControllerFSM::eventSkipPersonalize>,boost::_bi::value<unsigned char>>>)::stored_vtable;
    v12[0] = v3;
    if (v5 == v6)
    {
      v7 = 0;
    }

    v8 = *(a1 + 72) + *(a1 + 64);
    if (v7 == v8)
    {
      std::deque<boost::function<boost::msm::back::HandledEnum ()(void)>>::__add_back_capacity(a1 + 32);
      v6 = *(a1 + 40);
      v8 = *(a1 + 72) + *(a1 + 64);
    }

    v9 = (*(v6 + ((v8 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v8 & 0x7F));
    *v9 = 0;
    boost::function0<boost::msm::back::HandledEnum>::move_assign(v9, &v11);
    ++*(a1 + 72);
    if (v11 && (v11 & 1) == 0)
    {
      if (*v11)
      {
        (*v11)(v12, v12, 2);
      }
    }

    return 0;
  }

  else
  {
    *(a1 + 88) = 1;
    return v2 ^ 1u;
  }
}

void boost::detail::function::functor_manager<boost::_bi::bind_t<boost::msm::back::HandledEnum,boost::_mfi::mf2<boost::msm::back::HandledEnum,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventSkipPersonalize const&,unsigned char>,boost::_bi::list3<boost::_bi::value<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>*>,boost::_bi::value<BBUpdaterControllerFSM::eventSkipPersonalize>,boost::_bi::value<unsigned char>>>>::manage(void *a1, uint64_t a2, int a3)
{
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        *a2 = *a1;
        *a1 = 0;
        return;
      }

      goto LABEL_8;
    }

    v8 = *a1;
    v9 = a2;
    v10 = operator new(0x20uLL);
    v11 = v8[1];
    *v10 = *v8;
    v10[1] = v11;
    *v9 = v10;
  }

  else
  {
    if (a3 == 2)
    {
      if (*a2)
      {
        v3 = a2;
        operator delete(*a2);
        *v3 = 0;
        return;
      }

      goto LABEL_13;
    }

    if (a3 != 3)
    {
LABEL_8:
      *(a2 + 8) = 0;
      return;
    }

    if ((*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL) != (0x80000001E538F712 & 0x7FFFFFFFFFFFFFFFLL))
    {
      v4 = a1;
      v5 = a2;
      v6 = strcmp((*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL), (0x80000001E538F712 & 0x7FFFFFFFFFFFFFFFLL));
      a2 = v5;
      v7 = v6;
      a1 = v4;
      if (v7)
      {
LABEL_13:
        *a2 = 0;
        return;
      }
    }

    *a2 = *a1;
  }
}

uint64_t boost::detail::function::function_obj_invoker0<boost::_bi::bind_t<boost::msm::back::HandledEnum,boost::_mfi::mf2<boost::msm::back::HandledEnum,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventSkipPersonalize const&,unsigned char>,boost::_bi::list3<boost::_bi::value<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>*>,boost::_bi::value<BBUpdaterControllerFSM::eventSkipPersonalize>,boost::_bi::value<unsigned char>>>,boost::msm::back::HandledEnum>::invoke(unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = *(*a1 + 1);
  v3 = (*a1)[25];
  v4 = **a1;
  v5 = (*(*a1 + 2) + (v2 >> 1));
  if (v2)
  {
    return (*(*v5 + v4))();
  }

  else
  {
    return v4(v5, v1 + 3, v3);
  }
}

void BBUpdaterControllerFSM::FSMBase<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_>::no_transition<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventSkipPersonalize>(uint64_t a1, uint64_t a2, int a3)
{
  memset(v63, 170, sizeof(v63));
  (*(*a1 + 24))(v63);
  v6 = a3;
  if (0xAAAAAAAAAAAAAAABLL * ((v63[1] - v63[0]) >> 3) <= a3)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 69, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/API/BBUpdaterControllerFSM.hpp", 0x87u, "Assertion failure(( state < stateNames.size()) && Unrecognized BBU Stage.)", v45, v46, v47, v48);
  }

  v62 = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v61[7] = v7;
  v61[8] = v7;
  v61[5] = v7;
  v61[6] = v7;
  v61[3] = v7;
  v61[4] = v7;
  v61[1] = v7;
  v61[2] = v7;
  v60 = v7;
  v61[0] = v7;
  *__p = v7;
  v59 = v7;
  v56 = v7;
  v57 = v7;
  v54 = v7;
  v55 = v7;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v54);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v54, "no transition defined: ", 23);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, " in ", 4);
  v10 = (*(*a1 + 16))(a1);
  v11 = strlen(v10);
  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v10, v11);
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " from ", 6);
  v14 = v63[0] + 24 * v6;
  v15 = *(v14 + 23);
  if (v15 >= 0)
  {
    v16 = v63[0] + 24 * v6;
  }

  else
  {
    v16 = *v14;
  }

  if (v15 >= 0)
  {
    v17 = *(v14 + 23);
  }

  else
  {
    v17 = *(v14 + 8);
  }

  v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v16, v17);
  v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " on ", 4);
  v20 = strlen((0x80000001E538F5F1 & 0x7FFFFFFFFFFFFFFFLL));
  v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, 0x80000001E538F5F1 & 0x7FFFFFFFFFFFFFFFLL, v20);
  v52[0] = 10;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, v52, 1);
  memset(__dst, 170, sizeof(__dst));
  if ((BYTE8(v60) & 0x10) != 0)
  {
    v24 = v60;
    if (v60 < *(&v57 + 1))
    {
      *&v60 = *(&v57 + 1);
      v24 = *(&v57 + 1);
    }

    v25 = v57;
    v22 = v24 - v57;
    if ((v24 - v57) > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_64;
    }
  }

  else
  {
    if ((BYTE8(v60) & 8) == 0)
    {
      v22 = 0;
      HIBYTE(__dst[2]) = 0;
      v23 = __dst;
      goto LABEL_22;
    }

    v25 = *(&v55 + 1);
    v22 = *(&v56 + 1) - *(&v55 + 1);
    if (*(&v56 + 1) - *(&v55 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
    {
LABEL_64:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v22 >= 0x17)
  {
    if ((v22 | 7) == 0x17)
    {
      v26 = 25;
    }

    else
    {
      v26 = (v22 | 7) + 1;
    }

    v23 = operator new(v26);
    __dst[1] = v22;
    __dst[2] = (v26 | 0x8000000000000000);
    __dst[0] = v23;
    goto LABEL_21;
  }

  HIBYTE(__dst[2]) = v22;
  v23 = __dst;
  if (v22)
  {
LABEL_21:
    memmove(v23, v25, v22);
  }

LABEL_22:
  *(v23 + v22) = 0;
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
    {
      goto LABEL_28;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) == 0)
    {
      goto LABEL_28;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    v27 = (*(*a1 + 16))(a1);
    v31 = __dst;
    if (SHIBYTE(__dst[2]) < 0)
    {
      LOBYTE(v31) = __dst[0];
    }

    _BBULog(1, 0, v27, "", "%s", v28, v29, v30, v31);
  }

LABEL_28:
  *&v32 = 0xAAAAAAAAAAAAAAAALL;
  *(&v32 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v52 = v32;
  *&v52[16] = v32;
  if ((BYTE8(v60) & 0x10) != 0)
  {
    v33 = v60;
    if (v60 < *(&v57 + 1))
    {
      *&v60 = *(&v57 + 1);
      v33 = *(&v57 + 1);
    }

    v34 = v57;
    v35 = v33 - v57;
    if ((v33 - v57) > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_66;
    }
  }

  else
  {
    if ((BYTE8(v60) & 8) == 0)
    {
      HIBYTE(v51) = 0;
      LOBYTE(v50) = 0;
      goto LABEL_37;
    }

    v34 = *(&v55 + 1);
    v35 = *(&v56 + 1) - *(&v55 + 1);
    if (*(&v56 + 1) - *(&v55 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
    {
LABEL_66:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

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

    v36 = operator new(v38);
    *(&v50 + 1) = v35;
    v51 = v38 | 0x8000000000000000;
    *&v50 = v36;
  }

  else
  {
    HIBYTE(v51) = v35;
    v36 = &v50;
    if (!v35)
    {
      LOBYTE(v50) = 0;
      if ((SHIBYTE(v51) & 0x80000000) == 0)
      {
        goto LABEL_37;
      }

LABEL_44:
      v39 = v50;
      std::string::__init_copy_ctor_external(v52, v50, *(&v50 + 1));
      *&v52[24] = 44;
      operator delete(v39);
      v37 = *(a2 + 16);
      if ((v52[23] & 0x80000000) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_45;
    }
  }

  memmove(v36, v34, v35);
  *(v36 + v35) = 0;
  if (SHIBYTE(v51) < 0)
  {
    goto LABEL_44;
  }

LABEL_37:
  *v52 = v50;
  *&v52[16] = v51;
  *&v52[24] = 44;
  v37 = *(a2 + 16);
  if ((SHIBYTE(v51) & 0x80000000) == 0)
  {
LABEL_38:
    v49 = *v52;
    goto LABEL_46;
  }

LABEL_45:
  std::string::__init_copy_ctor_external(&v49, *v52, *&v52[8]);
LABEL_46:
  BBUpdaterController::handleError(v37, &v49, *&v52[24]);
  if ((SHIBYTE(v49.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((v52[23] & 0x80000000) == 0)
    {
      goto LABEL_48;
    }

LABEL_61:
    operator delete(*v52);
    if ((SHIBYTE(__dst[2]) & 0x80000000) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_62;
  }

  operator delete(v49.__r_.__value_.__l.__data_);
  if ((v52[23] & 0x80000000) != 0)
  {
    goto LABEL_61;
  }

LABEL_48:
  if ((SHIBYTE(__dst[2]) & 0x80000000) == 0)
  {
    goto LABEL_49;
  }

LABEL_62:
  operator delete(__dst[0]);
LABEL_49:
  *&v54 = *MEMORY[0x1E69E54E8];
  *(&v54 + *(v54 - 24)) = *(MEMORY[0x1E69E54E8] + 24);
  *(&v54 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v59) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v54 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&v55);
  std::ostream::~ostream();
  MEMORY[0x1E69273B0](v61);
  v40 = v63[0];
  if (v63[0])
  {
    v41 = v63[1];
    v42 = v63[0];
    if (v63[1] != v63[0])
    {
      do
      {
        v43 = *(v41 - 1);
        v41 -= 3;
        if (v43 < 0)
        {
          operator delete(*v41);
        }
      }

      while (v41 != v40);
      v42 = v63[0];
    }

    v63[1] = v40;
    operator delete(v42);
  }
}

void sub_1E526A680(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, char a34)
{
  if (a25 < 0)
  {
    operator delete(__p);
    if ((a33 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((a33 & 0x80000000) == 0)
  {
LABEL_6:
    std::ostringstream::~ostringstream(&a34);
    std::vector<std::string>::~vector[abi:ne200100]((v34 - 88));
    _Unwind_Resume(a1);
  }

  operator delete(a28);
  std::ostringstream::~ostringstream(&a34);
  std::vector<std::string>::~vector[abi:ne200100]((v34 - 88));
  _Unwind_Resume(a1);
}

uint64_t boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::process_message_queue<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>>(uint64_t result)
{
  if (*(result + 72))
  {
    v1 = result;
    while (1)
    {
      *&v2 = 0xAAAAAAAAAAAAAAAALL;
      *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *v18 = 0xAAAAAAAAAAAAAAAALL;
      *&v18[8] = v2;
      v3 = *(v1 + 40);
      v4 = *(v1 + 64);
      v5 = v4 >> 7;
      v6 = v4 & 0x7F;
      v7 = *(v3 + 8 * (v4 >> 7)) + 32 * v6;
      v17 = 0;
      v8 = *v7;
      if (!*v7)
      {
        goto LABEL_7;
      }

      v17 = *v7;
      if ((v8 & 1) == 0)
      {
        break;
      }

      v13 = *(v7 + 8);
      *&v18[16] = *(v7 + 24);
      *v18 = v13;
      v9 = (*(v3 + 8 * v5) + 32 * v6);
      v10 = *v9;
      if (*v9)
      {
LABEL_16:
        if ((v10 & 1) == 0)
        {
          v14 = *v10;
          if (v14)
          {
            v14(v9 + 1, v9 + 1, 2);
            v4 = *(v1 + 64);
          }
        }

        *v9 = 0;
        v15 = *(v1 + 72) - 1;
        v16 = v4 + 1;
        *(v1 + 64) = v16;
        *(v1 + 72) = v15;
        if (v16 < 0x100)
        {
          goto LABEL_10;
        }

LABEL_9:
        operator delete(**(v1 + 40));
        *(v1 + 40) += 8;
        *(v1 + 64) -= 128;
        goto LABEL_10;
      }

LABEL_8:
      v11 = *(v1 + 72) - 1;
      v12 = v4 + 1;
      *(v1 + 64) = v12;
      *(v1 + 72) = v11;
      if (v12 >= 0x100)
      {
        goto LABEL_9;
      }

LABEL_10:
      if (!v17)
      {
        std::runtime_error::runtime_error(&v19, "call to empty boost::function");
        v19.__vftable = &unk_1F5EFF7C8;
        boost::throw_exception<boost::bad_function_call>(&v19);
      }

      result = (*((v17 & 0xFFFFFFFFFFFFFFFELL) + 8))(v18);
      if ((v17 & 1) == 0)
      {
        if (*v17)
        {
          result = (*v17)(v18, v18, 2);
        }
      }

      if (!*(v1 + 72))
      {
        return result;
      }
    }

    (*v8)(v7 + 8, v18, 0);
    v3 = *(v1 + 40);
    v4 = *(v1 + 64);
    v5 = v4 >> 7;
    v6 = v4 & 0x7F;
LABEL_7:
    v9 = (*(v3 + 8 * v5) + 32 * v6);
    v10 = *v9;
    if (*v9)
    {
      goto LABEL_16;
    }

    goto LABEL_8;
  }

  return result;
}

void sub_1E526A968(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::runtime_error a13)
{
  std::runtime_error::~runtime_error(&a13);
  boost::function<boost::msm::back::HandledEnum ()(void)>::~function(&a9);
  _Unwind_Resume(a1);
}

uint64_t boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::process_event_internal<BBUpdaterControllerFSM::eventRetry>(uint64_t a1, uint64_t a2, char a3)
{
  if (boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::is_event_handling_blocked_helper<BBUpdaterControllerFSM::eventRetry>(a1))
  {
    return 1;
  }

  if (!boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::do_pre_msg_queue_helper<BBUpdaterControllerFSM::eventRetry,BBUpdaterControllerFSM::eventRetry>(a1, a2))
  {
    return 1;
  }

  v7 = (*(&unk_1ED948A40 + *(a1 + 32) + 1))(a1, 0);
  result = (*(&unk_1ED948A40 + *(a1 + 36) + 1))(a1, 1) | v7;
  if (*(a1 + 101) != 1 || (a3) && !result)
  {
    v8 = result;
    BBUpdaterControllerFSM::FSMBase<BBUpdaterControllerFSM::ControllerFSM_TOP>::no_transition<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventRetry>(a1, a1, *(a1 + 32));
    BBUpdaterControllerFSM::FSMBase<BBUpdaterControllerFSM::ControllerFSM_TOP>::no_transition<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventRetry>(a1, a1, *(a1 + 36));
    result = v8;
  }

  *(a1 + 100) = 0;
  if ((a3 & 6) == 0)
  {
    v9 = result;
    boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::process_message_queue<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>>(a1);
    return v9;
  }

  return result;
}

BOOL boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::is_event_handling_blocked_helper<BBUpdaterControllerFSM::eventRetry>(uint64_t a1)
{
  qword_1ED9484D8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateDebugMode,boost::msm::TerminateFlag>::flag_true;
  qword_1ED9484D0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateCoredump,boost::msm::TerminateFlag>::flag_false;
  qword_1ED9484C8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateRegularMode,boost::msm::TerminateFlag>::flag_false;
  qword_1ED9484C0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateFinalize,boost::msm::TerminateFlag>::flag_false;
  qword_1ED9484B8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,boost::msm::TerminateFlag>::flag_false;
  qword_1ED9484B0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateFusing,boost::msm::TerminateFlag>::flag_false;
  qword_1ED9484A8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,boost::msm::TerminateFlag>::flag_false;
  qword_1ED9484A0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateManifestCheck,boost::msm::TerminateFlag>::flag_false;
  qword_1ED948498 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateBooting,boost::msm::TerminateFlag>::flag_false;
  qword_1ED948490[0] = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateInit,boost::msm::TerminateFlag>::flag_false;
  v2 = (qword_1ED948490[*(a1 + 32)])();
  v3 = (qword_1ED948490[*(a1 + 36)])(a1);
  result = 1;
  if ((v2 & 1) == 0 && (v3 & 1) == 0)
  {
    qword_1ED948528 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateDebugMode,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED948520 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateCoredump,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED948518 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateRegularMode,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED948510 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateFinalize,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED948508 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED948500 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateFusing,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED9484F8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED9484F0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateManifestCheck,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED9484E8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateBooting,boost::msm::InterruptedFlag>::flag_false;
    qword_1ED9484E0[0] = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateInit,boost::msm::InterruptedFlag>::flag_false;
    v5 = (qword_1ED9484E0[*(a1 + 32)])(a1);
    v6 = (qword_1ED9484E0[*(a1 + 36)])(a1);
    if ((v5 & 1) == 0 && !v6)
    {
      return 0;
    }

    qword_1ED948618 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateDebugMode,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventRetry>>::flag_false;
    qword_1ED948610 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateCoredump,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventRetry>>::flag_false;
    qword_1ED948608 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateRegularMode,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventRetry>>::flag_false;
    qword_1ED948600 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateFinalize,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventRetry>>::flag_false;
    qword_1ED9485F8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Provision_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventRetry>>::flag_false;
    qword_1ED9485F0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateFusing,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventRetry>>::flag_false;
    qword_1ED9485E8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP::Personalize_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventRetry>>::flag_false;
    qword_1ED9485E0 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateManifestCheck,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventRetry>>::flag_false;
    qword_1ED9485D8 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateBooting,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventRetry>>::flag_false;
    qword_1ED9485D0[0] = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::FlagHandler<BBUpdaterControllerFSM::ControllerFSM_TOP::stateInit,boost::msm::EndInterruptFlag<BBUpdaterControllerFSM::eventRetry>>::flag_false;
    v7 = (qword_1ED9485D0[*(a1 + 32)])(a1);
    v8 = (qword_1ED9485D0[*(a1 + 36)])(a1);
    return (v7 & 1) == 0 && !v8;
  }

  return result;
}

uint64_t boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::do_pre_msg_queue_helper<BBUpdaterControllerFSM::eventRetry,BBUpdaterControllerFSM::eventRetry>(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 100);
  if (v3 == 1)
  {
    if (*(a2 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v20, *a2, *(a2 + 8));
      v4 = *(a2 + 24);
      v21 = v4;
      if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_4:
        v34 = v20;
        v35.__r_.__value_.__r.__words[0] = v4;
        if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_5;
        }

        goto LABEL_12;
      }
    }

    else
    {
      *&v20.__r_.__value_.__l.__data_ = *a2;
      v4 = *(a2 + 24);
      v20.__r_.__value_.__r.__words[2] = *(a2 + 16);
      v21 = v4;
      if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }
    }

    std::string::__init_copy_ctor_external(&v34, v20.__r_.__value_.__l.__data_, v20.__r_.__value_.__l.__size_);
    v4 = v21;
    v35.__r_.__value_.__r.__words[0] = v21;
    if ((SHIBYTE(v34.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_5:
      v38 = v34;
      v39.__r_.__value_.__r.__words[0] = v4;
      if ((SHIBYTE(v34.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    }

LABEL_12:
    std::string::__init_copy_ctor_external(&v38, v34.__r_.__value_.__l.__data_, v34.__r_.__value_.__l.__size_);
    v4 = v35.__r_.__value_.__r.__words[0];
    v39.__r_.__value_.__r.__words[0] = v35.__r_.__value_.__r.__words[0];
    if ((SHIBYTE(v38.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_6:
      v42 = v38;
      v43.__r_.__value_.__r.__words[0] = v4;
      *v46 = a1;
      if ((SHIBYTE(v38.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_14;
    }

LABEL_13:
    std::string::__init_copy_ctor_external(&v42, v38.__r_.__value_.__l.__data_, v38.__r_.__value_.__l.__size_);
    v4 = v39.__r_.__value_.__r.__words[0];
    v43.__r_.__value_.__r.__words[0] = v39.__r_.__value_.__r.__words[0];
    *v46 = a1;
    if ((SHIBYTE(v42.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_7:
      *&v46[8] = *&v42.__r_.__value_.__l.__data_;
      v47.__r_.__value_.__r.__words[0] = v42.__r_.__value_.__r.__words[2];
      v47.__r_.__value_.__l.__size_ = v4;
      v47.__r_.__value_.__s.__data_[16] = 5;
      if ((SHIBYTE(v38.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

LABEL_14:
    std::string::__init_copy_ctor_external(&v46[8], v42.__r_.__value_.__l.__data_, v42.__r_.__value_.__l.__size_);
    v47.__r_.__value_.__l.__size_ = v43.__r_.__value_.__r.__words[0];
    if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v42.__r_.__value_.__l.__data_);
      v47.__r_.__value_.__s.__data_[16] = 5;
      if ((SHIBYTE(v38.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_17:
        *&v22 = boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>::process_event_internal<BBUpdaterControllerFSM::eventRetry>;
        *(&v22 + 1) = 0;
        v23 = *v46;
        if (v47.__r_.__value_.__s.__data_[7] < 0)
        {
          std::string::__init_copy_ctor_external(&__p, *&v46[8], *&v46[16]);
          *(&v25 + 1) = v47.__r_.__value_.__l.__size_;
          v26 = v47.__r_.__value_.__s.__data_[16];
          if (v47.__r_.__value_.__s.__data_[7] < 0)
          {
            operator delete(*&v46[8]);
            if ((SHIBYTE(v34.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_23:
              v29 = v22;
              v6 = v23;
              v30 = v23;
              if (SBYTE7(v25) < 0)
              {
                std::string::__init_copy_ctor_external(&v31, __p, *(&__p + 1));
                v6 = v30;
              }

              else
              {
                *&v31.__r_.__value_.__l.__data_ = __p;
                v31.__r_.__value_.__r.__words[2] = v25;
              }

              v7 = *(&v25 + 1);
              v32 = *(&v25 + 1);
              v8 = v26;
              v33 = v26;
              v27 = 0;
              *&v34.__r_.__value_.__l.__data_ = v29;
              v34.__r_.__value_.__r.__words[2] = v6;
              if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
              {
                std::string::__init_copy_ctor_external(&v35, v31.__r_.__value_.__l.__data_, v31.__r_.__value_.__l.__size_);
                v7 = v32;
                v8 = v33;
                v6 = v34.__r_.__value_.__r.__words[2];
              }

              else
              {
                v35 = v31;
              }

              v36 = v7;
              v37 = v8;
              *&v38.__r_.__value_.__l.__data_ = *&v34.__r_.__value_.__l.__data_;
              v38.__r_.__value_.__r.__words[2] = v6;
              if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
              {
                std::string::__init_copy_ctor_external(&v39, v35.__r_.__value_.__l.__data_, v35.__r_.__value_.__l.__size_);
                v7 = v36;
                v8 = v37;
                v6 = v38.__r_.__value_.__r.__words[2];
              }

              else
              {
                v39 = v35;
              }

              v40 = v7;
              v41 = v8;
              *&v42.__r_.__value_.__l.__data_ = *&v38.__r_.__value_.__l.__data_;
              v42.__r_.__value_.__r.__words[2] = v6;
              if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
              {
                std::string::__init_copy_ctor_external(&v43, v39.__r_.__value_.__l.__data_, v39.__r_.__value_.__l.__size_);
                v7 = v40;
                v8 = v41;
                v6 = v42.__r_.__value_.__r.__words[2];
              }

              else
              {
                v43 = v39;
              }

              v44 = v7;
              v45 = v8;
              *v46 = *&v42.__r_.__value_.__l.__data_;
              *&v46[16] = v6;
              if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
              {
                std::string::__init_copy_ctor_external(&v47, v43.__r_.__value_.__l.__data_, v43.__r_.__value_.__l.__size_);
                v7 = v44;
                v8 = v45;
              }

              else
              {
                v47 = v43;
              }

              v48 = v7;
              v49 = v8;
              v9 = operator new(0x40uLL);
              *&v9->__r_.__value_.__l.__data_ = *v46;
              v9->__r_.__value_.__r.__words[2] = *&v46[16];
              if (SHIBYTE(v47.__r_.__value_.__r.__words[2]) < 0)
              {
                v10 = v9;
                std::string::__init_copy_ctor_external(v9 + 1, v47.__r_.__value_.__l.__data_, v47.__r_.__value_.__l.__size_);
                v11 = v49;
                v12 = SHIBYTE(v47.__r_.__value_.__r.__words[2]);
                v10[2].__r_.__value_.__r.__words[0] = v48;
                v10[2].__r_.__value_.__s.__data_[8] = v11;
                v28[0] = v10;
                if (v12 < 0)
                {
                  operator delete(v47.__r_.__value_.__l.__data_);
                  if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
                  {
                    goto LABEL_65;
                  }
                }

                else if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
                {
                  goto LABEL_65;
                }
              }

              else
              {
                v9[1] = v47;
                v9[2].__r_.__value_.__r.__words[0] = v7;
                v9[2].__r_.__value_.__s.__data_[8] = v8;
                v28[0] = v9;
                if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
                {
LABEL_65:
                  operator delete(v43.__r_.__value_.__l.__data_);
                  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
                  {
LABEL_66:
                    operator delete(v39.__r_.__value_.__l.__data_);
                    v27 = boost::function0<boost::msm::back::HandledEnum>::assign_to<boost::_bi::bind_t<boost::msm::back::HandledEnum,boost::_mfi::mf2<boost::msm::back::HandledEnum,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventRetry const&,unsigned char>,boost::_bi::list3<boost::_bi::value<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>*>,boost::_bi::value<BBUpdaterControllerFSM::eventRetry>,boost::_bi::value<unsigned char>>>>(boost::_bi::bind_t<boost::msm::back::HandledEnum,boost::_mfi::mf2<boost::msm::back::HandledEnum,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventRetry const&,unsigned char>,boost::_bi::list3<boost::_bi::value<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>*>,boost::_bi::value<BBUpdaterControllerFSM::eventRetry>,boost::_bi::value<unsigned char>>>)::stored_vtable;
                    if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
                    {
LABEL_67:
                      operator delete(v35.__r_.__value_.__l.__data_);
                      if ((SHIBYTE(v31.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                      {
                        goto LABEL_46;
                      }

                      goto LABEL_68;
                    }

LABEL_45:
                    if ((SHIBYTE(v31.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                    {
                      goto LABEL_46;
                    }

LABEL_68:
                    operator delete(v31.__r_.__value_.__l.__data_);
LABEL_46:
                    v13 = *(a1 + 48);
                    v14 = *(a1 + 56);
                    v15 = *(a1 + 48);
                    v16 = 16 * (v14 - v15) - 1;
                    if (v14 == v15)
                    {
                      v16 = 0;
                    }

                    v17 = *(a1 + 80) + *(a1 + 72);
                    if (v16 == v17)
                    {
                      std::deque<boost::function<boost::msm::back::HandledEnum ()(void)>>::__add_back_capacity(a1 + 40);
                      v15 = *(a1 + 48);
                      v17 = *(a1 + 80) + *(a1 + 72);
                    }

                    v18 = (*(v15 + ((v17 >> 4) & 0xFFFFFFFFFFFFFF8)) + 32 * (v17 & 0x7F));
                    *v18 = 0;
                    boost::function0<boost::msm::back::HandledEnum>::move_assign(v18, &v27);
                    ++*(a1 + 80);
                    if (v27)
                    {
                      if ((v27 & 1) == 0 && *v27)
                      {
                        (*v27)(v28, v28, 2);
                      }

                      v27 = 0;
                    }

                    if (SBYTE7(v25) < 0)
                    {
                      operator delete(__p);
                      if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                      {
                        return v3 ^ 1u;
                      }
                    }

                    else if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                    {
                      return v3 ^ 1u;
                    }

                    operator delete(v20.__r_.__value_.__l.__data_);
                    return v3 ^ 1u;
                  }

LABEL_44:
                  v27 = boost::function0<boost::msm::back::HandledEnum>::assign_to<boost::_bi::bind_t<boost::msm::back::HandledEnum,boost::_mfi::mf2<boost::msm::back::HandledEnum,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventRetry const&,unsigned char>,boost::_bi::list3<boost::_bi::value<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>*>,boost::_bi::value<BBUpdaterControllerFSM::eventRetry>,boost::_bi::value<unsigned char>>>>(boost::_bi::bind_t<boost::msm::back::HandledEnum,boost::_mfi::mf2<boost::msm::back::HandledEnum,boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>,BBUpdaterControllerFSM::eventRetry const&,unsigned char>,boost::_bi::list3<boost::_bi::value<boost::msm::back::state_machine<BBUpdaterControllerFSM::ControllerFSM_TOP,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_,boost::parameter::void_>*>,boost::_bi::value<BBUpdaterControllerFSM::eventRetry>,boost::_bi::value<unsigned char>>>)::stored_vtable;
                  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
                  {
                    goto LABEL_67;
                  }

                  goto LABEL_45;
                }
              }

              if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
              {
                goto LABEL_66;
              }

              goto LABEL_44;
            }
          }

          else if ((SHIBYTE(v34.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_23;
          }
        }

        else
        {
          __p = *&v46[8];
          v25 = *&v47.__r_.__value_.__l.__data_;
          v26 = v47.__r_.__value_.__s.__data_[16];
          if ((SHIBYTE(v34.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_23;
          }
        }

        operator delete(v34.__r_.__value_.__l.__data_);
        goto LABEL_23;
      }
    }

    else
    {
      v47.__r_.__value_.__s.__data_[16] = 5;
      if ((SHIBYTE(v38.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_17;
      }
    }

LABEL_16:
    operator delete(v38.__r_.__value_.__l.__data_);
    goto LABEL_17;
  }

  *(a1 + 100) = 1;
  return v3 ^ 1u;
}

void sub_1E526B32C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *__p, uint64_t a57, int a58, __int16 a59, char a60, char a61)
{
  operator delete(v61);
  if (*(v62 - 81) < 0)
  {
    operator delete(*(v62 - 104));
    if ((*(v62 - 145) & 0x80000000) == 0)
    {
LABEL_3:
      if ((a61 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*(v62 - 145) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v62 - 168));
  if ((a61 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a50 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(__p);
  if ((a50 & 0x80000000) == 0)
  {
LABEL_5:
    if ((a39 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete(a45);
  if ((a39 & 0x80000000) == 0)
  {
LABEL_6:
    if ((a24 & 0x80000000) == 0)
    {
LABEL_14:
      if (a14 < 0)
      {
        operator delete(a9);
      }

      _Unwind_Resume(a1);
    }

LABEL_13:
    operator delete(a19);
    goto LABEL_14;
  }

LABEL_12:
  operator delete(a34);
  if ((a24 & 0x80000000) == 0)
  {
    goto LABEL_14;
  }

  goto LABEL_13;
}