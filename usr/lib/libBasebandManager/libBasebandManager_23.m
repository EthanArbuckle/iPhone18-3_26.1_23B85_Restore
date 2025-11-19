void sub_297122FF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23, uint64_t a24, const void *a25)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x29C26B180](&a23);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&a25);
  std::vector<ResetInfo::RegexPatternAndReasonMask>::~vector[abi:ne200100](v25);
  _Unwind_Resume(a1);
}

void ResetInfo::readResetInfoReasonPatternsFromPreferences(void ***a1@<X8>)
{
  v18 = 0;
  v19 = 0;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  pthread_mutex_lock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  if (!xmmword_2A18B7520)
  {
    v4 = operator new(0x18uLL);
    MEMORY[0x29C26B190](v4, @"com.apple.AppleBasebandManager", *MEMORY[0x29EDB8FB0]);
    __p[0] = v4;
    v3 = operator new(0x20uLL);
    *v3 = &unk_2A1E26558;
    v3[1] = 0;
    v3[2] = 0;
    v3[3] = v4;
    v5 = *(&xmmword_2A18B7520 + 1);
    *&xmmword_2A18B7520 = v4;
    *(&xmmword_2A18B7520 + 1) = v3;
    if (!v5)
    {
      *&v17 = v4;
      *(&v17 + 1) = v3;
      goto LABEL_8;
    }

    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }
  }

  v3 = *(&xmmword_2A18B7520 + 1);
  v4 = xmmword_2A18B7520;
  v17 = xmmword_2A18B7520;
  if (*(&xmmword_2A18B7520 + 1))
  {
LABEL_8:
    atomic_fetch_add_explicit(v3 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  strcpy(__p, "ResetInfoRegexPatterns");
  HIBYTE(__p[2]) = 22;
  v6 = Preferences::getPreference<__CFArray const*>(v4, __p, &v19);
  if (v19)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  v8 = *(&v17 + 1);
  if (*(&v17 + 1) && !atomic_fetch_add((*(&v17 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
    if (v7)
    {
      goto LABEL_17;
    }

LABEL_30:
    if ((atomic_load_explicit(&qword_2A18B78E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18B78E0))
    {
      qword_2A18B78E8 = 0;
      qword_2A18B78F0 = 0;
      __cxa_guard_release(&qword_2A18B78E0);
    }

    if (_MergedGlobals_10 == -1)
    {
      v14 = qword_2A18B78F0;
      if (!os_log_type_enabled(qword_2A18B78F0, OS_LOG_TYPE_INFO))
      {
        goto LABEL_34;
      }
    }

    else
    {
      dispatch_once(&_MergedGlobals_10, &__block_literal_global_42);
      v14 = qword_2A18B78F0;
      if (!os_log_type_enabled(qword_2A18B78F0, OS_LOG_TYPE_INFO))
      {
        goto LABEL_34;
      }
    }

    LOWORD(__p[0]) = 0;
    _os_log_impl(&dword_296FF7000, v14, OS_LOG_TYPE_INFO, "No reset reason patterns entry found in ABMProperties", __p, 2u);
    goto LABEL_34;
  }

  if (!v7)
  {
    goto LABEL_30;
  }

LABEL_17:
  v9 = v18;
  v10 = v19;
  v18 = v19;
  if (v9)
  {
    CFRelease(v9);
  }

  v15 = v10;
  if (v10)
  {
    CFRetain(v10);
  }

  ResetInfo::convertResetInfoReasonPatternsFromCFSharedArrayToVector(&v15, __p);
  v11 = *a1;
  if (*a1)
  {
    v12 = a1[1];
    while (v12 != v11)
    {
      v13 = *(v12 - 9);
      v12 -= 4;
      if (v13 < 0)
      {
        operator delete(*v12);
      }
    }

    operator delete(v11);
  }

  *a1 = *__p;
  a1[2] = __p[2];
  memset(__p, 0, 24);
  if (v10)
  {
    CFRelease(v10);
  }

LABEL_34:
  if (v18)
  {
    CFRelease(v18);
  }
}

void sub_2971233A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18)
{
  std::unique_ptr<ABMProperties>::~unique_ptr[abi:ne200100](&__p);
  pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
  std::vector<ResetInfo::RegexPatternAndReasonMask>::~vector[abi:ne200100](v18);
  ctu::cf::CFSharedRef<__CFArray const>::~CFSharedRef((v19 - 48));
  _Unwind_Resume(a1);
}

void ___ZN9ResetInfo23readResetReasonPatternsEv_block_invoke()
{
  v27 = *MEMORY[0x29EDCA608];
  ResetInfo::readResetInfoReasonPatternsFromPreferences(&buf);
  v1 = *ResetInfo::sPatternMasks;
  if (*ResetInfo::sPatternMasks)
  {
    v2 = *&ResetInfo::sPatternMasks[8];
    v3 = *ResetInfo::sPatternMasks;
    if (*&ResetInfo::sPatternMasks[8] != *ResetInfo::sPatternMasks)
    {
      do
      {
        v4 = *(v2 - 9);
        v2 -= 4;
        if (v4 < 0)
        {
          operator delete(*v2);
        }
      }

      while (v2 != v1);
      v3 = *ResetInfo::sPatternMasks;
    }

    *&ResetInfo::sPatternMasks[8] = v1;
    operator delete(v3);
    *ResetInfo::sPatternMasks = 0;
    *&ResetInfo::sPatternMasks[8] = 0;
    *&ResetInfo::sPatternMasks[16] = 0;
  }

  *ResetInfo::sPatternMasks = buf;
  if (buf.__r_.__value_.__r.__words[0] != buf.__r_.__value_.__l.__size_)
  {
    if ((atomic_load_explicit(&qword_2A18B78E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18B78E0))
    {
      qword_2A18B78E8 = 0;
      qword_2A18B78F0 = 0;
      __cxa_guard_release(&qword_2A18B78E0);
    }

    if (_MergedGlobals_10 == -1)
    {
      v5 = qword_2A18B78F0;
      v0 = os_log_type_enabled(qword_2A18B78F0, OS_LOG_TYPE_INFO);
      if (!v0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    dispatch_once(&_MergedGlobals_10, &__block_literal_global_42);
    v5 = qword_2A18B78F0;
    v0 = os_log_type_enabled(qword_2A18B78F0, OS_LOG_TYPE_INFO);
    if (v0)
    {
LABEL_13:
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&dword_296FF7000, v5, OS_LOG_TYPE_INFO, "Reset info reason patterns and masks initialized from preferences file", &buf, 2u);
    }
  }

LABEL_14:
  if (*ResetInfo::sPatternMasks == *&ResetInfo::sPatternMasks[8] && capabilities::radio::initium(v0))
  {
    ResetInfo::readResetInfoReasonPatternsFromFactoryFile(&buf);
    v6 = *ResetInfo::sPatternMasks;
    if (*ResetInfo::sPatternMasks)
    {
      v7 = *&ResetInfo::sPatternMasks[8];
      v8 = *ResetInfo::sPatternMasks;
      if (*&ResetInfo::sPatternMasks[8] != *ResetInfo::sPatternMasks)
      {
        do
        {
          v9 = *(v7 - 9);
          v7 -= 4;
          if (v9 < 0)
          {
            operator delete(*v7);
          }
        }

        while (v7 != v6);
        v8 = *ResetInfo::sPatternMasks;
      }

      *&ResetInfo::sPatternMasks[8] = v6;
      operator delete(v8);
      *ResetInfo::sPatternMasks = 0;
      *&ResetInfo::sPatternMasks[8] = 0;
      *&ResetInfo::sPatternMasks[16] = 0;
    }

    *ResetInfo::sPatternMasks = buf;
    if (buf.__r_.__value_.__r.__words[0] != buf.__r_.__value_.__l.__size_)
    {
      if ((atomic_load_explicit(&qword_2A18B78E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18B78E0))
      {
        qword_2A18B78E8 = 0;
        qword_2A18B78F0 = 0;
        __cxa_guard_release(&qword_2A18B78E0);
      }

      if (_MergedGlobals_10 == -1)
      {
        v10 = qword_2A18B78F0;
        if (!os_log_type_enabled(qword_2A18B78F0, OS_LOG_TYPE_INFO))
        {
          goto LABEL_29;
        }

        goto LABEL_28;
      }

      dispatch_once(&_MergedGlobals_10, &__block_literal_global_42);
      v10 = qword_2A18B78F0;
      if (os_log_type_enabled(qword_2A18B78F0, OS_LOG_TYPE_INFO))
      {
LABEL_28:
        LOWORD(buf.__r_.__value_.__l.__data_) = 0;
        _os_log_impl(&dword_296FF7000, v10, OS_LOG_TYPE_INFO, "Reset info reason patterns and masks initialized from factory file", &buf, 2u);
      }
    }
  }

LABEL_29:
  if (*ResetInfo::sPatternMasks == *&ResetInfo::sPatternMasks[8])
  {
    if ((atomic_load_explicit(&qword_2A18B78E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18B78E0))
    {
      qword_2A18B78E8 = 0;
      qword_2A18B78F0 = 0;
      __cxa_guard_release(&qword_2A18B78E0);
    }

    if (_MergedGlobals_10 == -1)
    {
      v11 = qword_2A18B78F0;
      if (!os_log_type_enabled(qword_2A18B78F0, OS_LOG_TYPE_INFO))
      {
LABEL_34:
        std::vector<ResetInfo::RegexPatternAndReasonMask>::__assign_with_size[abi:ne200100]<ResetInfo::RegexPatternAndReasonMask*,ResetInfo::RegexPatternAndReasonMask*>(ResetInfo::sPatternMasks, kDefaultPatternMasks, qword_2A18B76B0, (qword_2A18B76B0 - kDefaultPatternMasks) >> 5);
        goto LABEL_35;
      }
    }

    else
    {
      dispatch_once(&_MergedGlobals_10, &__block_literal_global_42);
      v11 = qword_2A18B78F0;
      if (!os_log_type_enabled(qword_2A18B78F0, OS_LOG_TYPE_INFO))
      {
        goto LABEL_34;
      }
    }

    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&dword_296FF7000, v11, OS_LOG_TYPE_INFO, "Default reset info reason patterns and masks will be used", &buf, 2u);
    goto LABEL_34;
  }

LABEL_35:
  if ((atomic_load_explicit(&qword_2A18B78E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18B78E0))
  {
    qword_2A18B78E8 = 0;
    qword_2A18B78F0 = 0;
    __cxa_guard_release(&qword_2A18B78E0);
  }

  if (_MergedGlobals_10 == -1)
  {
    v12 = qword_2A18B78F0;
    if (!os_log_type_enabled(qword_2A18B78F0, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_38;
    }

LABEL_59:
    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    _os_log_debug_impl(&dword_296FF7000, v12, OS_LOG_TYPE_DEBUG, "The effective reset info reason patterns and masks:", &buf, 2u);
    v13 = *ResetInfo::sPatternMasks;
    v14 = *&ResetInfo::sPatternMasks[8];
    if (*ResetInfo::sPatternMasks != *&ResetInfo::sPatternMasks[8])
    {
      goto LABEL_39;
    }

    goto LABEL_60;
  }

  dispatch_once(&_MergedGlobals_10, &__block_literal_global_42);
  v12 = qword_2A18B78F0;
  if (os_log_type_enabled(qword_2A18B78F0, OS_LOG_TYPE_DEBUG))
  {
    goto LABEL_59;
  }

LABEL_38:
  v13 = *ResetInfo::sPatternMasks;
  v14 = *&ResetInfo::sPatternMasks[8];
  if (*ResetInfo::sPatternMasks != *&ResetInfo::sPatternMasks[8])
  {
LABEL_39:
    v15 = 0;
    do
    {
      if ((atomic_load_explicit(&qword_2A18B78E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18B78E0))
      {
        qword_2A18B78E8 = 0;
        qword_2A18B78F0 = 0;
        __cxa_guard_release(&qword_2A18B78E0);
      }

      if (_MergedGlobals_10 == -1)
      {
        v16 = qword_2A18B78F0;
        if (!os_log_type_enabled(qword_2A18B78F0, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_42;
        }
      }

      else
      {
        dispatch_once(&_MergedGlobals_10, &__block_literal_global_42);
        v16 = qword_2A18B78F0;
        if (!os_log_type_enabled(qword_2A18B78F0, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_42;
        }
      }

      if (*(v13 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v20, *v13, *(v13 + 1));
      }

      else
      {
        v17 = *v13;
        v20.__r_.__value_.__r.__words[2] = *(v13 + 2);
        *&v20.__r_.__value_.__l.__data_ = v17;
      }

      v21 = *(v13 + 6);
      ResetInfo::toString(&v20, &buf);
      p_buf = &buf;
      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_buf = buf.__r_.__value_.__r.__words[0];
      }

      *v23 = 67109378;
      v24 = v15;
      v25 = 2080;
      v26 = p_buf;
      _os_log_debug_impl(&dword_296FF7000, v16, OS_LOG_TYPE_DEBUG, "pattern mask [%d]: %s", v23, 0x12u);
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
        if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_53;
        }
      }

      else if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
      {
LABEL_53:
        operator delete(v20.__r_.__value_.__l.__data_);
      }

      ++v15;
LABEL_42:
      v13 += 2;
    }

    while (v13 != v14);
  }

LABEL_60:
  v19 = *MEMORY[0x29EDCA608];
}

void sub_297123A04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ResetInfo::toString(int *a1@<X0>, std::string *a2@<X8>)
{
  v3 = 0x7FFFFFFFFFFFFFF7;
  v4 = *(a1 + 23);
  if (v4 >= 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    v5 = *(a1 + 1);
  }

  v6 = v5 + 15;
  if (v5 + 15 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v6 < 0x17)
  {
    v28.__r_.__value_.__r.__words[2] = 0;
    *(&v28.__r_.__value_.__s + 23) = v5 + 15;
    strcpy(&v28, "regex pattern: ");
    v9 = &v28.__r_.__value_.__s.__data_[15];
    if (!v5)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if ((v6 | 7) == 0x17)
    {
      v8 = 25;
    }

    else
    {
      v8 = (v6 | 7) + 1;
    }

    v28.__r_.__value_.__l.__size_ = v5 + 15;
    v28.__r_.__value_.__r.__words[2] = v8 | 0x8000000000000000;
    v28.__r_.__value_.__r.__words[0] = operator new(v8);
    qmemcpy(v28.__r_.__value_.__l.__data_, "regex pattern: ", 15);
    v9 = (v28.__r_.__value_.__r.__words[0] + 15);
  }

  v10 = *a1;
  if (v4 >= 0)
  {
    v11 = a1;
  }

  else
  {
    v11 = *a1;
  }

  memmove(v9, v11, v5);
LABEL_15:
  v9[v5] = 0;
  size = SHIBYTE(v28.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
  {
    if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) - 2) < 0x15)
    {
      if (*(&v28.__r_.__value_.__s + 23))
      {
        v13 = SHIBYTE(v28.__r_.__value_.__r.__words[2]) + 21;
        v14 = &v28;
        v15 = 22;
LABEL_22:
        v16 = 2 * v15;
        if (v13 > 2 * v15)
        {
          v16 = v13;
        }

        if ((v16 | 7) == 0x17)
        {
          v17 = 25;
        }

        else
        {
          v17 = (v16 | 7) + 1;
        }

        if (v16 >= 0x17)
        {
          v3 = v17;
        }

        else
        {
          v3 = 23;
        }

        v18 = v15 == 22;
        goto LABEL_31;
      }

LABEL_57:
      std::string::__throw_length_error[abi:ne200100]();
    }

    v22 = &v28;
LABEL_38:
    qmemcpy(v22 + size, ", reason mask value: ", 21);
    v23 = size + 21;
    if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
    {
      v28.__r_.__value_.__l.__size_ = size + 21;
    }

    else
    {
      *(&v28.__r_.__value_.__s + 23) = v23 & 0x7F;
    }

    v21 = v22 + v23;
    goto LABEL_42;
  }

  size = v28.__r_.__value_.__l.__size_;
  v15 = (v28.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v15 - v28.__r_.__value_.__l.__size_ >= 0x15)
  {
    v22 = v28.__r_.__value_.__r.__words[0];
    goto LABEL_38;
  }

  v13 = v28.__r_.__value_.__l.__size_ + 21;
  if (0x7FFFFFFFFFFFFFF7 - (v28.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < v28.__r_.__value_.__l.__size_ + 21 - v15)
  {
    goto LABEL_57;
  }

  v14 = v28.__r_.__value_.__r.__words[0];
  if (v15 <= 0x3FFFFFFFFFFFFFF2)
  {
    goto LABEL_22;
  }

  v18 = 0;
LABEL_31:
  v19 = operator new(v3);
  v20 = v19;
  if (size)
  {
    memmove(v19, v14, size);
  }

  qmemcpy((v20 + size), ", reason mask value: ", 21);
  if (!v18)
  {
    operator delete(v14);
  }

  v28.__r_.__value_.__l.__size_ = v13;
  v28.__r_.__value_.__r.__words[2] = v3 | 0x8000000000000000;
  v28.__r_.__value_.__r.__words[0] = v20;
  v21 = (v20 + v13);
LABEL_42:
  *v21 = 0;
  v29 = v28;
  memset(&v28, 0, sizeof(v28));
  std::to_string(&__p, a1[6]);
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
    v25 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v25 = __p.__r_.__value_.__l.__size_;
  }

  v26 = std::string::append(&v29, p_p, v25);
  *a2 = *v26;
  v26->__r_.__value_.__l.__size_ = 0;
  v26->__r_.__value_.__r.__words[2] = 0;
  v26->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_50:
      if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return;
      }

LABEL_54:
      operator delete(v28.__r_.__value_.__l.__data_);
      return;
    }
  }

  else if ((SHIBYTE(v29.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_50;
  }

  operator delete(v29.__r_.__value_.__l.__data_);
  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_54;
  }
}

void sub_297123D14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if (a26 < 0)
    {
LABEL_5:
      operator delete(a21);
      if (a20 < 0)
      {
LABEL_8:
        operator delete(a15);
        _Unwind_Resume(a1);
      }

LABEL_9:
      _Unwind_Resume(a1);
    }
  }

  else if (a26 < 0)
  {
    goto LABEL_5;
  }

  if (a20 < 0)
  {
    goto LABEL_8;
  }

  goto LABEL_9;
}

void ****std::__exception_guard_exceptions<std::vector<ResetInfo::RegexPatternAndReasonMask>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](void ****a1)
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
          v6 = *(v4 - 9);
          v4 -= 4;
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

void ___ZL16sGetOsLogContextv_block_invoke_3()
{
  ctu::OsLogContext::OsLogContext(v0, "com.apple.telephony.abm", "reset.info");
  ctu::OsLogContext::operator=();
  ctu::OsLogContext::~OsLogContext(v0);
}

uint64_t __cxx_global_var_init_36()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ABMProperties>::~PthreadMutexGuardPolicy, &ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance, &dword_296FF7000);
  }

  return result;
}

void _GLOBAL__sub_I_ResetInfo_cpp()
{
  v77 = *MEMORY[0x29EDCA608];
  v9 = 15;
  strcpy(v8, ".*\\[abmtool\\].*");
  v10[0] = 1;
  v12 = 14;
  strcpy(v11, ".*\\[bbutil\\].*");
  v13 = 1;
  v14 = operator new(0x50uLL);
  v15 = xmmword_29722B3F0;
  strcpy(v14, ".*AP forced coredump via SPMI - Please analyze reason from AP perspective.*");
  v16 = 1;
  v17 = operator new(0x19uLL);
  v18 = xmmword_297227AC0;
  strcpy(v17, ".*(after OTASP/OTAPA).*");
  v19 = 1;
  v20 = operator new(0x38uLL);
  v21 = xmmword_29722B400;
  strcpy(v20, ".*Carrier bundle updated settings that require reset");
  v22 = 1;
  v23 = operator new(0x28uLL);
  v24 = xmmword_297227A80;
  strcpy(v23, ".*Manually Triggering BB Core Dump");
  v25 = 1;
  v26 = operator new(0x28uLL);
  v27 = xmmword_29722B410;
  strcpy(v26, ".*modem manager triggered reset.*");
  v28 = 1;
  v29 = operator new(0x38uLL);
  v30 = xmmword_29722B420;
  strcpy(v29, ".*User requested to change Baseband field test config");
  v31 = 1;
  v32 = operator new(0x28uLL);
  v33 = 33;
  v34 = 0x8000000000000028;
  strcpy(v32, ".*applebbproxy setup AT interface");
  v35 = 1;
  v36 = operator new(0x28uLL);
  v37 = 36;
  v38 = 0x8000000000000028;
  strcpy(v36, ".*Resetting Baseband after restore.*");
  v39 = 1;
  v40 = operator new(0x30uLL);
  v41 = 42;
  v42 = 0x8000000000000030;
  strcpy(v40, ".*Resetting baseband after pushing files.*");
  v43 = 1;
  v44 = operator new(0x40uLL);
  v45 = 59;
  v46 = 0x8000000000000040;
  strcpy(v44, ".*Resetting Baseband after successful restore of carrier NV");
  v47 = 1;
  v48 = operator new(0x30uLL);
  v49 = 41;
  v50 = 0x8000000000000030;
  strcpy(v48, ".*Resetting modem from WirelessAutomation");
  v51 = 1;
  v52 = operator new(0x20uLL);
  v53 = 25;
  v54 = 0x8000000000000020;
  strcpy(v52, ".*Requesting Soft Reset.*");
  v55 = 1;
  v58 = 0x8000000000000030;
  v56 = operator new(0x30uLL);
  v57 = 42;
  strcpy(v56, ".*AP-triggered((?!: locationd PDS).*|(.*))");
  v59 = 1;
  v62 = 0x8000000000000038;
  v60 = operator new(0x38uLL);
  v61 = 50;
  strcpy(v60, ".*User ((requested state)|(Triggered Core))dump.*");
  v63 = 1;
  HIBYTE(v64[2]) = 19;
  strcpy(v64, ".*SIM APNs change.*");
  v65 = 1;
  v66 = operator new(0x28uLL);
  v68 = 0x8000000000000028;
  v67 = 34;
  strcpy(v66, ".*AttachAPN Push to force detach.*");
  v69 = 1;
  v71 = 14;
  strcpy(v70, ".*CSIM reset.*");
  v72 = 1;
  __p = operator new(0x20uLL);
  v75 = 0x8000000000000020;
  v74 = 25;
  strcpy(__p, ".*com\\.apple\\.symptomsd.*");
  v76 = 1;
  qword_2A18B76B0 = 0;
  qword_2A18B76B8 = 0;
  kDefaultPatternMasks = 0;
  v0 = 0;
  kDefaultPatternMasks = operator new(0x280uLL);
  qword_2A18B76B0 = kDefaultPatternMasks;
  qword_2A18B76B8 = kDefaultPatternMasks + 640;
  v7 = kDefaultPatternMasks;
  v1 = kDefaultPatternMasks;
  do
  {
    v4 = &v8[v0 / 2];
    if (*(&v9 + v0 * 4) < 0)
    {
      std::string::__init_copy_ctor_external(v1, *v4, v4[1]);
      v3 = v7;
    }

    else
    {
      v2 = *v4;
      *(v1 + 16) = v4[2];
      *v1 = v2;
      v3 = v1;
    }

    *(v1 + 24) = v10[v0];
    v0 += 8;
    v1 = v3 + 32;
    v7 = v3 + 32;
  }

  while (v0 != 160);
  qword_2A18B76B0 = v3 + 32;
  if (SHIBYTE(v75) < 0)
  {
    operator delete(__p);
    if ((v71 & 0x80000000) == 0)
    {
LABEL_8:
      if ((SHIBYTE(v68) & 0x80000000) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_30;
    }
  }

  else if ((v71 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  operator delete(v70[0]);
  if ((SHIBYTE(v68) & 0x80000000) == 0)
  {
LABEL_9:
    if ((SHIBYTE(v64[2]) & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_31;
  }

LABEL_30:
  operator delete(v66);
  if ((SHIBYTE(v64[2]) & 0x80000000) == 0)
  {
LABEL_10:
    if ((SHIBYTE(v62) & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_32;
  }

LABEL_31:
  operator delete(v64[0]);
  if ((SHIBYTE(v62) & 0x80000000) == 0)
  {
LABEL_11:
    if ((SHIBYTE(v58) & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_33;
  }

LABEL_32:
  operator delete(v60);
  if ((SHIBYTE(v58) & 0x80000000) == 0)
  {
LABEL_12:
    if ((SHIBYTE(v54) & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_34;
  }

LABEL_33:
  operator delete(v56);
  if ((SHIBYTE(v54) & 0x80000000) == 0)
  {
LABEL_13:
    if ((SHIBYTE(v50) & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_35;
  }

LABEL_34:
  operator delete(v52);
  if ((SHIBYTE(v50) & 0x80000000) == 0)
  {
LABEL_14:
    if ((SHIBYTE(v46) & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_36;
  }

LABEL_35:
  operator delete(v48);
  if ((SHIBYTE(v46) & 0x80000000) == 0)
  {
LABEL_15:
    if ((SHIBYTE(v42) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_37;
  }

LABEL_36:
  operator delete(v44);
  if ((SHIBYTE(v42) & 0x80000000) == 0)
  {
LABEL_16:
    if ((SHIBYTE(v38) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_38;
  }

LABEL_37:
  operator delete(v40);
  if ((SHIBYTE(v38) & 0x80000000) == 0)
  {
LABEL_17:
    if ((SHIBYTE(v34) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_39;
  }

LABEL_38:
  operator delete(v36);
  if ((SHIBYTE(v34) & 0x80000000) == 0)
  {
LABEL_18:
    if ((SHIBYTE(v30) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_40;
  }

LABEL_39:
  operator delete(v32);
  if ((SHIBYTE(v30) & 0x80000000) == 0)
  {
LABEL_19:
    if ((SHIBYTE(v27) & 0x80000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_41;
  }

LABEL_40:
  operator delete(v29);
  if ((SHIBYTE(v27) & 0x80000000) == 0)
  {
LABEL_20:
    if ((SHIBYTE(v24) & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_42;
  }

LABEL_41:
  operator delete(v26);
  if ((SHIBYTE(v24) & 0x80000000) == 0)
  {
LABEL_21:
    if ((SHIBYTE(v21) & 0x80000000) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_43;
  }

LABEL_42:
  operator delete(v23);
  if ((SHIBYTE(v21) & 0x80000000) == 0)
  {
LABEL_22:
    if ((SHIBYTE(v18) & 0x80000000) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_44;
  }

LABEL_43:
  operator delete(v20);
  if ((SHIBYTE(v18) & 0x80000000) == 0)
  {
LABEL_23:
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_45;
  }

LABEL_44:
  operator delete(v17);
  if ((SHIBYTE(v15) & 0x80000000) == 0)
  {
LABEL_24:
    if ((v12 & 0x80000000) == 0)
    {
      goto LABEL_25;
    }

LABEL_46:
    operator delete(v11[0]);
    if ((v9 & 0x80000000) == 0)
    {
      goto LABEL_26;
    }

LABEL_47:
    operator delete(v8[0]);
    v6 = *MEMORY[0x29EDCA608];
    return;
  }

LABEL_45:
  operator delete(v14);
  if (v12 < 0)
  {
    goto LABEL_46;
  }

LABEL_25:
  if (v9 < 0)
  {
    goto LABEL_47;
  }

LABEL_26:
  v5 = *MEMORY[0x29EDCA608];
}

void sub_297124670(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void ***a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, uint64_t a52, void *a53, uint64_t a54, int a55, __int16 a56, char a57, char a58, uint64_t a59, void *a60, uint64_t a61, int a62, __int16 a63)
{
  std::__exception_guard_exceptions<std::vector<ResetInfo::RegexPatternAndReasonMask>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](&a10);
  if (SLOBYTE(STACK[0x2BF]) < 0)
  {
    operator delete(STACK[0x2A8]);
    if ((SLOBYTE(STACK[0x29F]) & 0x80000000) == 0)
    {
LABEL_3:
      if ((SLOBYTE(STACK[0x27F]) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }
  }

  else if ((SLOBYTE(STACK[0x29F]) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(STACK[0x288]);
  if ((SLOBYTE(STACK[0x27F]) & 0x80000000) == 0)
  {
LABEL_4:
    if ((SLOBYTE(STACK[0x25F]) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

LABEL_24:
  operator delete(STACK[0x268]);
  if ((SLOBYTE(STACK[0x25F]) & 0x80000000) == 0)
  {
LABEL_5:
    if ((SLOBYTE(STACK[0x23F]) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

LABEL_25:
  operator delete(STACK[0x248]);
  if ((SLOBYTE(STACK[0x23F]) & 0x80000000) == 0)
  {
LABEL_6:
    if ((SLOBYTE(STACK[0x21F]) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

LABEL_26:
  operator delete(STACK[0x228]);
  if ((SLOBYTE(STACK[0x21F]) & 0x80000000) == 0)
  {
LABEL_7:
    if ((a84 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_27:
  operator delete(STACK[0x208]);
  if ((a84 & 0x80000000) == 0)
  {
LABEL_8:
    if ((a82 & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

LABEL_28:
  operator delete(a83);
  if ((a82 & 0x80000000) == 0)
  {
LABEL_9:
    if ((a80 & 0x80000000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_30;
  }

LABEL_29:
  operator delete(a81);
  if ((a80 & 0x80000000) == 0)
  {
LABEL_10:
    if ((a78 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_31;
  }

LABEL_30:
  operator delete(a79);
  if ((a78 & 0x80000000) == 0)
  {
LABEL_11:
    if ((a76 & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_32;
  }

LABEL_31:
  operator delete(a77);
  if ((a76 & 0x80000000) == 0)
  {
LABEL_12:
    if ((a74 & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_33;
  }

LABEL_32:
  operator delete(a75);
  if ((a74 & 0x80000000) == 0)
  {
LABEL_13:
    if ((a72 & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_34;
  }

LABEL_33:
  operator delete(a73);
  if ((a72 & 0x80000000) == 0)
  {
LABEL_14:
    if ((a65 & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_35;
  }

LABEL_34:
  operator delete(a67);
  if ((a65 & 0x80000000) == 0)
  {
LABEL_15:
    if ((a58 & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_36;
  }

LABEL_35:
  operator delete(a60);
  if ((a58 & 0x80000000) == 0)
  {
LABEL_16:
    if ((a51 & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_37;
  }

LABEL_36:
  operator delete(a53);
  if ((a51 & 0x80000000) == 0)
  {
LABEL_17:
    if ((a44 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_38;
  }

LABEL_37:
  operator delete(a46);
  if ((a44 & 0x80000000) == 0)
  {
LABEL_18:
    if ((a37 & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_39;
  }

LABEL_38:
  operator delete(a39);
  if ((a37 & 0x80000000) == 0)
  {
LABEL_19:
    if ((a30 & 0x80000000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_40;
  }

LABEL_39:
  operator delete(a32);
  if ((a30 & 0x80000000) == 0)
  {
LABEL_20:
    if ((a23 & 0x80000000) == 0)
    {
LABEL_42:
      _Unwind_Resume(a1);
    }

LABEL_41:
    operator delete(a18);
    _Unwind_Resume(a1);
  }

LABEL_40:
  operator delete(a25);
  if ((a23 & 0x80000000) == 0)
  {
    goto LABEL_42;
  }

  goto LABEL_41;
}

uint64_t abm::stats::typeAsString@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result)
  {
    strcpy(a2, "UNKNOWN");
    a2[23] = 7;
  }

  else
  {
    strcpy(a2, "Boot Statistics");
    a2[23] = 15;
  }

  return result;
}

void ResetDetection::create(NSObject **this@<X0>, queue a2@<0:X1>, void *a3@<X8>)
{
  *a3 = 0xAAAAAAAAAAAAAAAALL;
  a3[1] = 0xAAAAAAAAAAAAAAAALL;
  v7 = operator new(0x78uLL);
  v8 = *this;
  v10 = v8;
  if (v8)
  {
    dispatch_retain(v8);
  }

  v9.fObj.fObj = &v10;
  ResetDetection::ResetDetection(v7, v9, a2.fObj.fObj);
  *a3 = 0xAAAAAAAAAAAAAAAALL;
  a3[1] = 0xAAAAAAAAAAAAAAAALL;
  std::shared_ptr<ResetDetection>::shared_ptr[abi:ne200100]<ResetDetection,std::shared_ptr<ResetDetection> ctu::SharedSynchronizable<ResetDetection>::make_shared_ptr<ResetDetection>(ResetDetection*)::{lambda(ResetDetection*)#1},0>(a3, v7);
  if (v8)
  {

    dispatch_release(v8);
  }
}

void sub_2971249CC(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    dispatch_release(v2);
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

void ResetDetection::ResetDetection(ResetDetection *this, queue a2, __CFRunLoop *a3)
{
  ctu::OsLogContext::OsLogContext(v8, "com.apple.telephony.abm", "reset.detect");
  *this = 0;
  *(this + 1) = 0;
  v6 = *a2.fObj.fObj;
  *(this + 2) = *a2.fObj.fObj;
  if (v6)
  {
    dispatch_retain(v6);
  }

  *(this + 3) = 0;
  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x29C26B010](this + 32, v9);
  MEMORY[0x29C26B020](v9);
  ctu::OsLogContext::~OsLogContext(v8);
  *(this + 5) = a3;
  *(this + 6) = 0;
  v7 = *MEMORY[0x29EDB8ED8];
  *(this + 7) = TelephonyBasebandCreateController();
  *(this + 16) = 2;
  *(this + 10) = 0;
  *(this + 9) = this + 80;
  *(this + 14) = 0;
  *(this + 13) = 0;
  *(this + 11) = 0;
  *(this + 12) = this + 104;
}

void ResetDetection::~ResetDetection(ResetDetection *this)
{
  v2 = *(this + 7);
  *(this + 7) = 0;
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(this + 5);
  v4 = *(this + 6);
  *(this + 6) = 0;
  v5 = *MEMORY[0x29EDB8FC0];
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZN14ResetDetectionD2Ev_block_invoke;
  block[3] = &__block_descriptor_tmp_11;
  block[4] = v4;
  CFRunLoopPerformBlock(v3, v5, block);
  CFRunLoopWakeUp(*(this + 5));
  std::__tree<std::__value_type<std::string,std::pair<dispatch_source_s *,dispatch::block<void({block_pointer})(int)>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::pair<dispatch_source_s *,dispatch::block<void({block_pointer})(int)>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::pair<dispatch_source_s *,dispatch::block<void({block_pointer})(int)>>>>>::destroy(*(this + 13));
  std::__tree<std::__value_type<std::string,std::pair<dispatch_source_s *,dispatch::block<void({block_pointer})(int)>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::pair<dispatch_source_s *,dispatch::block<void({block_pointer})(int)>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::pair<dispatch_source_s *,dispatch::block<void({block_pointer})(int)>>>>>::destroy(*(this + 10));
  v6 = *(this + 7);
  if (v6)
  {
    CFRelease(v6);
  }

  MEMORY[0x29C26B020](this + 32);
  v7 = *(this + 3);
  if (v7)
  {
    dispatch_release(v7);
  }

  v8 = *(this + 2);
  if (v8)
  {
    dispatch_release(v8);
  }

  v9 = *(this + 1);
  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
  }
}

void ___ZN14ResetDetectionD2Ev_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = v1[1];
    if (v2)
    {
      std::__shared_weak_count::__release_weak(v2);
    }

    operator delete(v1);
  }
}

void ResetDetection::start(ResetDetection *this)
{
  v1[0] = MEMORY[0x29EDCA5F8];
  v1[1] = 0x40000000;
  v1[2] = ___ZN14ResetDetection5startEv_block_invoke;
  v1[3] = &__block_descriptor_tmp_3;
  v1[4] = this;
  ctu::SharedSynchronizable<ResetDetection>::execute_wrapped(this, v1);
}

void ___ZN14ResetDetection5startEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1[4];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_296FF7000, v2, OS_LOG_TYPE_DEFAULT, "#I Started", buf, 2u);
  }

  v3 = operator new(0x10uLL);
  v4 = v1[1];
  if (!v4 || (v5 = *v1, (v6 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  *v3 = v5;
  v3[1] = v6;
  atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v1[6] = v3;
  if (atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v8 = v1[6];
    v7 = v1[7];
    v9 = v1[5];
    if (TelephonyBasebandRegisterForReset())
    {
      goto LABEL_10;
    }
  }

  else
  {
    v10 = v6;
    (v6->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v10);
    v12 = v1[6];
    v11 = v1[7];
    v13 = v1[5];
    if (TelephonyBasebandRegisterForReset())
    {
      goto LABEL_10;
    }
  }

  v14 = v1[4];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *v16 = 0;
    _os_log_error_impl(&dword_296FF7000, v14, OS_LOG_TYPE_ERROR, "failed registering for reset detect", v16, 2u);
    if (!v1[7])
    {
      return;
    }

    goto LABEL_11;
  }

LABEL_10:
  if (!v1[7])
  {
    return;
  }

LABEL_11:
  v19 = 1;
  if (TelephonyBasebandGetReset())
  {
    *(v1 + 16) = v19;
  }

  else
  {
    v15 = v1[4];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *v18 = 0;
      _os_log_error_impl(&dword_296FF7000, v15, OS_LOG_TYPE_ERROR, "failed to poll for reset detect", v18, 2u);
    }
  }
}

uint64_t ResetDetection::poll(ResetDetection *this, BOOL *a2)
{
  result = *(this + 7);
  if (result)
  {
    v9 = 1;
    result = TelephonyBasebandGetReset();
    if (result)
    {
      *a2 = v9;
    }

    else
    {
      v5 = *(this + 4);
      v6 = result;
      v7 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
      result = v6;
      if (v7)
      {
        *v8 = 0;
        _os_log_error_impl(&dword_296FF7000, v5, OS_LOG_TYPE_ERROR, "failed to poll for reset detect", v8, 2u);
        return v6;
      }
    }
  }

  return result;
}

void ResetDetection::add(uint64_t *a1, uint64_t a2, char a3, void **a4, uint64_t a5)
{
  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 1174405120;
  v10[2] = ___ZN14ResetDetection3addENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEbN8dispatch5blockIU13block_pointerFviEEEy_block_invoke;
  v10[3] = &__block_descriptor_tmp_4_2;
  v10[4] = a1;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
    v14 = a3;
    v9 = *a4;
    if (!*a4)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  __p = *a2;
  v14 = a3;
  v9 = *a4;
  if (*a4)
  {
LABEL_5:
    v9 = _Block_copy(v9);
  }

LABEL_6:
  aBlock = v9;
  v13 = a5;
  ctu::SharedSynchronizable<ResetDetection>::execute_wrapped(a1, v10);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void ___ZN14ResetDetection3addENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEbN8dispatch5blockIU13block_pointerFviEEEy_block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = (a1 + 40);
    if (*(a1 + 63) < 0)
    {
      v4 = *v4;
    }

    v5 = *(a1 + 80);
    *buf = 136315394;
    v24 = v4;
    v25 = 1024;
    v26 = v5;
    _os_log_impl(&dword_296FF7000, v3, OS_LOG_TYPE_DEFAULT, "#I Added detection with key '%s', reset=%d", buf, 0x12u);
  }

  v6 = *(v2 + 64);
  v7 = v6;
  if (v6)
  {
    if (v6 == 2)
    {
      goto LABEL_25;
    }

    v7 = 1;
    if (v6 != 1)
    {
      v7 = 2;
    }

    if (!*(a1 + 80))
    {
      v7 = 0;
    }
  }

  if (v6 == 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = *(a1 + 80);
  }

  v9 = v6 | *(a1 + 80);
  if (v7)
  {
    v10 = 0;
  }

  else
  {
    v10 = v8;
  }

  if (v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = v8;
  }

  if (v7 == 1)
  {
    v11 = 0;
  }

  if ((v10 & 1) == 0 && (v11 & 1) == 0)
  {
    (*(*(a1 + 64) + 16))();
    goto LABEL_47;
  }

LABEL_25:
  v12 = *(a1 + 63);
  if (*(a1 + 80))
  {
    if (v12 < 0)
    {
      std::string::__init_copy_ctor_external(&v22, *(a1 + 40), *(a1 + 48));
    }

    else
    {
      v22 = *(a1 + 40);
    }

    v13 = *(a1 + 64);
    if (v13)
    {
      v14 = _Block_copy(v13);
    }

    else
    {
      v14 = 0;
    }

    v21 = v14;
    ResetDetection::addToBlocks_sync(v2, &v22, &v21, (v2 + 72), *(a1 + 72));
    if (v14)
    {
      _Block_release(v14);
    }

    if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
    {
      v17 = v22.__r_.__value_.__r.__words[0];
LABEL_46:
      operator delete(v17);
    }
  }

  else
  {
    if (v12 < 0)
    {
      std::string::__init_copy_ctor_external(&v20, *(a1 + 40), *(a1 + 48));
    }

    else
    {
      v20 = *(a1 + 40);
    }

    v15 = *(a1 + 64);
    if (v15)
    {
      v16 = _Block_copy(v15);
    }

    else
    {
      v16 = 0;
    }

    v19 = v16;
    ResetDetection::addToBlocks_sync(v2, &v20, &v19, (v2 + 96), *(a1 + 72));
    if (v16)
    {
      _Block_release(v16);
    }

    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      v17 = v20.__r_.__value_.__r.__words[0];
      goto LABEL_46;
    }
  }

LABEL_47:
  v18 = *MEMORY[0x29EDCA608];
}

void sub_2971252D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ResetDetection::addToBlocks_sync(uint64_t *a1, uint64_t a2, void **a3, uint64_t **a4, dispatch_time_t a5)
{
  v10 = dispatch_source_create(MEMORY[0x29EDCA5D0], 1uLL, 0, a1[2]);
  dispatch_source_set_timer(v10, a5, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
  v11 = a1[1];
  if (!v11 || (v12 = *a1, (v13 = std::__shared_weak_count::lock(v11)) == 0))
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

  handler[0] = MEMORY[0x29EDCA5F8];
  handler[1] = 1174405120;
  handler[2] = ___ZN14ResetDetection16addToBlocks_syncENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEN8dispatch5blockIU13block_pointerFviEEERNS0_3mapIS6_NS0_4pairIP17dispatch_source_sSB_EENS0_4lessIS6_EENS4_INSD_IKS6_SG_EEEEEEy_block_invoke;
  handler[3] = &__block_descriptor_tmp_5_11;
  handler[4] = a1;
  handler[5] = v12;
  v38 = v14;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  v39 = a4;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  dispatch_source_set_event_handler(v10, handler);
  dispatch_activate(v10);
  v16 = *a3;
  if (*a3)
  {
    v16 = _Block_copy(v16);
  }

  v36 = v16;
  v18 = a4 + 1;
  v17 = a4[1];
  if (v17)
  {
    v19 = *(a2 + 23);
    if (v19 >= 0)
    {
      v20 = a2;
    }

    else
    {
      v20 = *a2;
    }

    if (v19 >= 0)
    {
      v21 = *(a2 + 23);
    }

    else
    {
      v21 = *(a2 + 8);
    }

    while (1)
    {
      v22 = v17;
      v25 = v17[4];
      v23 = v17 + 4;
      v24 = v25;
      v26 = *(v23 + 23);
      if (v26 >= 0)
      {
        v27 = v23;
      }

      else
      {
        v27 = v24;
      }

      if (v26 >= 0)
      {
        v28 = *(v23 + 23);
      }

      else
      {
        v28 = v23[1];
      }

      if (v28 >= v21)
      {
        v29 = v21;
      }

      else
      {
        v29 = v28;
      }

      v30 = memcmp(v20, v27, v29);
      if (v30)
      {
        if (v30 < 0)
        {
          goto LABEL_17;
        }

LABEL_31:
        v31 = memcmp(v27, v20, v29);
        if (v31)
        {
          if ((v31 & 0x80000000) == 0)
          {
            goto LABEL_45;
          }
        }

        else if (v28 >= v21)
        {
LABEL_45:
          v35 = v22[8];
          v22[7] = v10;
          v22[8] = v36;
          if (v35)
          {
            goto LABEL_46;
          }

          goto LABEL_47;
        }

        v17 = v22[1];
        if (!v17)
        {
          v18 = v22 + 1;
          goto LABEL_38;
        }
      }

      else
      {
        if (v21 >= v28)
        {
          goto LABEL_31;
        }

LABEL_17:
        v17 = *v22;
        v18 = v22;
        if (!*v22)
        {
          goto LABEL_38;
        }
      }
    }
  }

  v22 = a4 + 1;
LABEL_38:
  v32 = operator new(0x48uLL);
  v33 = v32;
  v41 = v32;
  v42 = a4;
  v43 = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((v32 + 32), *a2, *(a2 + 8));
  }

  else
  {
    *(v32 + 2) = *a2;
    *(v32 + 6) = *(a2 + 16);
  }

  v33[7] = 0;
  v33[8] = 0;
  *v33 = 0;
  v33[1] = 0;
  v33[2] = v22;
  *v18 = v33;
  v34 = **a4;
  if (v34)
  {
    *a4 = v34;
  }

  std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a4[1], v33);
  a4[2] = (a4[2] + 1);
  v35 = v33[8];
  v33[7] = v10;
  v33[8] = v36;
  if (v35)
  {
LABEL_46:
    _Block_release(v35);
  }

LABEL_47:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v38)
  {
    std::__shared_weak_count::__release_weak(v38);
  }

  std::__shared_weak_count::__release_weak(v14);
}

void sub_29712567C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::pair<dispatch_source_s *,dispatch::block<void({block_pointer})(int)>>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::pair<dispatch_source_s *,dispatch::block<void({block_pointer})(int)>>>,void *>>>>::~unique_ptr[abi:ne200100]((v27 - 104));
  std::pair<dispatch_source_s *,dispatch::block<void({block_pointer})(int)>>::~pair(&a11);
  if (a26 < 0)
  {
    operator delete(__p);
    v29 = a19;
    if (!a19)
    {
LABEL_3:
      std::__shared_weak_count::__release_weak(v26);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v29 = a19;
    if (!a19)
    {
      goto LABEL_3;
    }
  }

  std::__shared_weak_count::__release_weak(v29);
  std::__shared_weak_count::__release_weak(v26);
  _Unwind_Resume(a1);
}

void *__copy_helper_block_e8_40c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE64c43_ZTSN8dispatch5blockIU13block_pointerFviEEE(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 63) & 0x80000000) == 0)
  {
    v4 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v4;
    result = *(a2 + 64);
    if (!result)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  std::string::__init_copy_ctor_external((a1 + 40), *(a2 + 40), *(a2 + 48));
  result = *(a2 + 64);
  if (result)
  {
LABEL_5:
    result = _Block_copy(result);
  }

LABEL_6:
  *(a1 + 64) = result;
  return result;
}

void __destroy_helper_block_e8_40c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE64c43_ZTSN8dispatch5blockIU13block_pointerFviEEE(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    _Block_release(v2);
  }

  if (*(a1 + 63) < 0)
  {
    v3 = *(a1 + 40);

    operator delete(v3);
  }
}

void ___ZN14ResetDetection16addToBlocks_syncENSt3__112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEEN8dispatch5blockIU13block_pointerFviEEERNS0_3mapIS6_NS0_4pairIP17dispatch_source_sSB_EENS0_4lessIS6_EENS4_INSD_IKS6_SG_EEEEEEy_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (!v2)
  {
    return;
  }

  v3 = *(a1 + 32);
  v4 = std::__shared_weak_count::lock(v2);
  if (!v4)
  {
    return;
  }

  v5 = v4;
  if (!*(a1 + 40))
  {
    goto LABEL_54;
  }

  v6 = *(a1 + 56);
  v9 = *(v6 + 8);
  v7 = (v6 + 8);
  v8 = v9;
  if (!v9)
  {
    goto LABEL_54;
  }

  v10 = *(a1 + 87);
  if (v10 >= 0)
  {
    v11 = (a1 + 64);
  }

  else
  {
    v11 = *(a1 + 64);
  }

  if (v10 >= 0)
  {
    v12 = *(a1 + 87);
  }

  else
  {
    v12 = *(a1 + 72);
  }

  v13 = v7;
  do
  {
    while (1)
    {
      v14 = *(v8 + 55);
      v15 = v14 >= 0 ? (v8 + 4) : v8[4];
      v16 = v14 >= 0 ? *(v8 + 55) : v8[5];
      v17 = v12 >= v16 ? v16 : v12;
      v18 = memcmp(v15, v11, v17);
      if (v18)
      {
        break;
      }

      if (v16 >= v12)
      {
        goto LABEL_26;
      }

LABEL_12:
      v8 = v8[1];
      if (!v8)
      {
        goto LABEL_27;
      }
    }

    if (v18 < 0)
    {
      goto LABEL_12;
    }

LABEL_26:
    v13 = v8;
    v8 = *v8;
  }

  while (v8);
LABEL_27:
  if (v13 != v7)
  {
    v19 = v13[4];
    v20 = *(v13 + 55);
    if (v20 >= 0)
    {
      v21 = v13 + 4;
    }

    else
    {
      v21 = v13[4];
    }

    if (v20 >= 0)
    {
      v22 = *(v13 + 55);
    }

    else
    {
      v22 = v13[5];
    }

    if (v22 >= v12)
    {
      v23 = v12;
    }

    else
    {
      v23 = v22;
    }

    v24 = memcmp(v11, v21, v23);
    if (v24)
    {
      if (v24 < 0)
      {
        goto LABEL_54;
      }

LABEL_41:
      ResetDetection::invokeBlock_sync(v3, (v13 + 4), 3760250883);
      v25 = *(a1 + 56);
      v26 = v13[1];
      if (v26)
      {
        do
        {
          v27 = v26;
          v26 = *v26;
        }

        while (v26);
      }

      else
      {
        v28 = v13;
        do
        {
          v27 = v28[2];
          v29 = *v27 == v28;
          v28 = v27;
        }

        while (!v29);
      }

      if (*v25 == v13)
      {
        *v25 = v27;
      }

      v30 = v25[1];
      v25[2] = (v25[2] - 1);
      std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v30, v13);
      v31 = v13[8];
      if (v31)
      {
        _Block_release(v31);
      }

      if (*(v13 + 55) < 0)
      {
        operator delete(v13[4]);
      }

      operator delete(v13);
    }

    else if (v12 >= v22)
    {
      goto LABEL_41;
    }
  }

LABEL_54:
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);

    std::__shared_weak_count::__release_weak(v5);
  }
}

void ResetDetection::invokeBlock_sync(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = *MEMORY[0x29EDCA608];
  memset(&__p, 170, sizeof(__p));
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  v7 = *(a2 + 24);
  v6 = *(a2 + 32);
  if (v6)
  {
    v8 = _Block_copy(v6);
    *(a2 + 24) = 0;
    if (!v7)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v8 = 0;
  *(a2 + 24) = 0;
  if (v7)
  {
LABEL_6:
    dispatch_source_cancel(v7);
    dispatch_release(v7);
  }

LABEL_7:
  v9 = *(a1 + 32);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    p_p = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    *buf = 136315138;
    v14 = p_p;
    _os_log_impl(&dword_296FF7000, v9, OS_LOG_TYPE_DEFAULT, "#I Signalling %s", buf, 0xCu);
  }

  v8[2](v8, a3);
  _Block_release(v8);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v11 = *MEMORY[0x29EDCA608];
}

void sub_297125B78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void __copy_helper_block_e8_40c39_ZTSNSt3__18weak_ptrI14ResetDetectionEE64c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 87) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 64), *(a2 + 64), *(a2 + 72));
  }

  else
  {
    v3 = *(a2 + 64);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 64) = v3;
  }
}

void sub_297125C28(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_40c39_ZTSNSt3__18weak_ptrI14ResetDetectionEE64c67_ZTSKNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1)
{
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
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

void ResetDetection::notifyResetDetectBlocks_sync(uint64_t a1, uint64_t a2)
{
  v3 = &v15;
  v4 = *(a2 + 8);
  v15 = *a2;
  v16[0] = v4;
  v5 = *(a2 + 16);
  *(a2 + 16) = 0;
  *(a2 + 8) = 0;
  v16[1] = v5;
  if (v5)
  {
    v3 = v4 + 16;
  }

  *v3 = v16;
  *a2 = a2 + 8;
  v6 = v15;
  if (v15 != v16)
  {
    while (1)
    {
      aBlock = 0xAAAAAAAAAAAAAAAALL;
      *&v7 = 0xAAAAAAAAAAAAAAAALL;
      *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *__p = v7;
      v13 = v7;
      if (*(v6 + 55) < 0)
      {
        std::string::__init_copy_ctor_external(__p, v6[4], v6[5]);
      }

      else
      {
        *__p = *(v6 + 2);
        *&v13 = v6[6];
      }

      v8 = v6[8];
      *(&v13 + 1) = v6[7];
      if (v8)
      {
        v8 = _Block_copy(v8);
      }

      aBlock = v8;
      ResetDetection::invokeBlock_sync(a1, __p, 0);
      if (aBlock)
      {
        _Block_release(aBlock);
      }

      if (SBYTE7(v13) < 0)
      {
        operator delete(__p[0]);
        v9 = v6[1];
        if (v9)
        {
          do
          {
LABEL_17:
            v10 = v9;
            v9 = *v9;
          }

          while (v9);
          goto LABEL_5;
        }
      }

      else
      {
        v9 = v6[1];
        if (v9)
        {
          goto LABEL_17;
        }
      }

      do
      {
        v10 = v6[2];
        v11 = *v10 == v6;
        v6 = v10;
      }

      while (!v11);
LABEL_5:
      v6 = v10;
      if (v10 == v16)
      {
        v4 = v16[0];
        break;
      }
    }
  }

  std::__tree<std::__value_type<std::string,std::pair<dispatch_source_s *,dispatch::block<void({block_pointer})(int)>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::pair<dispatch_source_s *,dispatch::block<void({block_pointer})(int)>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::pair<dispatch_source_s *,dispatch::block<void({block_pointer})(int)>>>>>::destroy(v4);
}

void sub_297125DFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char *a15)
{
  std::pair<std::string const,std::pair<dispatch_source_s *,dispatch::block<void({block_pointer})(int)>>>::~pair(&a9);
  std::__tree<std::__value_type<std::string,std::pair<dispatch_source_s *,dispatch::block<void({block_pointer})(int)>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::pair<dispatch_source_s *,dispatch::block<void({block_pointer})(int)>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::pair<dispatch_source_s *,dispatch::block<void({block_pointer})(int)>>>>>::destroy(a15);
  _Unwind_Resume(a1);
}

void ResetDetection::resetDetectCallback(ResetDetection *this, void *a2, unsigned int a3, int a4, void *a5)
{
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 0x40000000;
  v5[2] = ___ZN14ResetDetection19resetDetectCallbackEPvjjS0__block_invoke;
  v5[3] = &__block_descriptor_tmp_6_0;
  v5[4] = this;
  v6 = a4;
  ctu::SharedSynchronizable<ResetDetection>::execute_wrapped(this, v5);
}

uint64_t std::pair<dispatch_source_s *,dispatch::block<void({block_pointer})(int)>>::~pair(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    _Block_release(v2);
  }

  return a1;
}

uint64_t std::pair<std::string const,std::pair<dispatch_source_s *,dispatch::block<void({block_pointer})(int)>>>::~pair(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    _Block_release(v2);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void *std::shared_ptr<ResetDetection>::shared_ptr[abi:ne200100]<ResetDetection,std::shared_ptr<ResetDetection> ctu::SharedSynchronizable<ResetDetection>::make_shared_ptr<ResetDetection>(ResetDetection*)::{lambda(ResetDetection*)#1},0>(void *a1, void *a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_2A1E2B258;
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

void sub_297126064(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[2], v1, std::shared_ptr<ResetDetection> ctu::SharedSynchronizable<ResetDetection>::make_shared_ptr<ResetDetection>(ResetDetection*)::{lambda(ResetDetection*)#1}::operator() const(ResetDetection*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<ResetDetection *,std::shared_ptr<ResetDetection> ctu::SharedSynchronizable<ResetDetection>::make_shared_ptr<ResetDetection>(ResetDetection*)::{lambda(ResetDetection *)#1},std::allocator<ResetDetection>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<ResetDetection *,std::shared_ptr<ResetDetection> ctu::SharedSynchronizable<ResetDetection>::make_shared_ptr<ResetDetection>(ResetDetection*)::{lambda(ResetDetection *)#1},std::allocator<ResetDetection>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableI14ResetDetectionE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableI14ResetDetectionE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableI14ResetDetectionE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableI14ResetDetectionE15make_shared_ptrIS1_EENSt3__110shared_ptrIT_EEPS6_EUlPS1_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void std::shared_ptr<ResetDetection> ctu::SharedSynchronizable<ResetDetection>::make_shared_ptr<ResetDetection>(ResetDetection*)::{lambda(ResetDetection*)#1}::operator() const(ResetDetection*)::{lambda(void *)#1}::__invoke(ResetDetection *a1)
{
  if (a1)
  {
    ResetDetection::~ResetDetection(a1);

    operator delete(v1);
  }
}

void std::__tree<std::__value_type<std::string,std::pair<dispatch_source_s *,dispatch::block<void({block_pointer})(int)>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::pair<dispatch_source_s *,dispatch::block<void({block_pointer})(int)>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::pair<dispatch_source_s *,dispatch::block<void({block_pointer})(int)>>>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<std::string,std::pair<dispatch_source_s *,dispatch::block<void({block_pointer})(int)>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::pair<dispatch_source_s *,dispatch::block<void({block_pointer})(int)>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::pair<dispatch_source_s *,dispatch::block<void({block_pointer})(int)>>>>>::destroy(*a1);
    std::__tree<std::__value_type<std::string,std::pair<dispatch_source_s *,dispatch::block<void({block_pointer})(int)>>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::pair<dispatch_source_s *,dispatch::block<void({block_pointer})(int)>>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::pair<dispatch_source_s *,dispatch::block<void({block_pointer})(int)>>>>>::destroy(*(a1 + 1));
    v2 = *(a1 + 8);
    if (v2)
    {
      _Block_release(v2);
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

uint64_t *std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::pair<dispatch_source_s *,dispatch::block<void({block_pointer})(int)>>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::pair<dispatch_source_s *,dispatch::block<void({block_pointer})(int)>>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      v3 = *(v2 + 64);
      if (v3)
      {
        _Block_release(v3);
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

uint64_t TraceFilter::determineFilterAction(std::string *a1)
{
  v74 = *MEMORY[0x29EDCA608];
  std::string::__assign_external(a1, *MEMORY[0x29EDBECB0]);
  if (TelephonyUtilIsInternalBuild())
  {
    v66 = -1431655766;
    v2 = *MEMORY[0x29EDBEB40];
    v3 = strlen(*MEMORY[0x29EDBEB40]);
    if (v3 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v4 = v3;
    if (v3 >= 0x17)
    {
      if ((v3 | 7) == 0x17)
      {
        v8 = 25;
      }

      else
      {
        v8 = (v3 | 7) + 1;
      }

      p_dst = operator new(v8);
      *(&__dst + 1) = v4;
      v69 = v8 | 0x8000000000000000;
      *&__dst = p_dst;
    }

    else
    {
      HIBYTE(v69) = v3;
      p_dst = &__dst;
      if (!v3)
      {
LABEL_12:
        *(p_dst + v4) = 0;
        memset(&__p, 0, 24);
        if (prop::logfilter::get(&__dst, &__p))
        {
          v9 = util::convert<int>(&__p, &v66, 0);
          if ((SHIBYTE(__p.st_gid) & 0x80000000) == 0)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v9 = 0;
          if ((SHIBYTE(__p.st_gid) & 0x80000000) == 0)
          {
            goto LABEL_17;
          }
        }

        operator delete(*&__p.st_dev);
LABEL_17:
        if (SHIBYTE(v69) < 0)
        {
          operator delete(__dst);
          if (v9)
          {
LABEL_19:
            v10 = v66;
            v67.__r_.__value_.__l.__size_ = 0xAAAAAAAAAAAAAAAALL;
            v67.__r_.__value_.__r.__words[2] = 0xAAAAAAAAAAAAAALL;
            v67.__r_.__value_.__r.__words[0] = 0xAAAAAAAAAAAAAA00;
            v11 = *MEMORY[0x29EDBFC08];
            v12 = strlen(*MEMORY[0x29EDBFC08]);
            if (v12 > 0x7FFFFFFFFFFFFFF7)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            v13 = v12;
            if (v12 >= 0x17)
            {
              if ((v12 | 7) == 0x17)
              {
                v22 = 25;
              }

              else
              {
                v22 = (v12 | 7) + 1;
              }

              v14 = operator new(v22);
              *(&__dst + 1) = v13;
              v69 = v22 | 0x8000000000000000;
              *&__dst = v14;
            }

            else
            {
              HIBYTE(v69) = v12;
              v14 = &__dst;
              if (!v12)
              {
                LOBYTE(__dst) = 0;
                v15 = SHIBYTE(v69);
                if ((SHIBYTE(v69) & 0x80000000) == 0)
                {
                  goto LABEL_23;
                }

                goto LABEL_34;
              }
            }

            memmove(v14, v11, v13);
            *(v14 + v13) = 0;
            v15 = SHIBYTE(v69);
            if ((SHIBYTE(v69) & 0x80000000) == 0)
            {
LABEL_23:
              if (!v15)
              {
                goto LABEL_45;
              }

              memset(&__p, 0, 64);
              v16 = statvfs(&__dst, &__p);
              st_ino = __p.st_ino;
              st_rdev = __p.st_rdev;
              if ((v15 & 0x80000000) == 0)
              {
                goto LABEL_25;
              }

              goto LABEL_36;
            }

LABEL_34:
            if (!*(&__dst + 1))
            {
              operator delete(__dst);
              goto LABEL_45;
            }

            memset(&__p, 0, 64);
            v16 = statvfs(__dst, &__p);
            st_ino = __p.st_ino;
            st_rdev = __p.st_rdev;
            if ((v15 & 0x80000000) == 0)
            {
LABEL_25:
              if (v16)
              {
                goto LABEL_45;
              }

              goto LABEL_37;
            }

LABEL_36:
            v23 = v16;
            operator delete(__dst);
            if (v23)
            {
              goto LABEL_45;
            }

LABEL_37:
            v24 = (st_ino * st_rdev) >> 20;
            if ((v10 & 0x80000000) == 0 && v24 <= v10)
            {
              std::string::__assign_external(&v67, *MEMORY[0x29EDBECA8]);
            }

            if ((atomic_load_explicit(&qword_2A18B7900, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18B7900))
            {
              qword_2A18B7908 = 0;
              qword_2A18B7910 = 0;
              __cxa_guard_release(&qword_2A18B7900);
            }

            if (_MergedGlobals_11 != -1)
            {
              dispatch_once(&_MergedGlobals_11, &__block_literal_global_11);
              v25 = qword_2A18B7910;
              if (!os_log_type_enabled(qword_2A18B7910, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_45;
              }

              goto LABEL_43;
            }

            v25 = qword_2A18B7910;
            if (os_log_type_enabled(qword_2A18B7910, OS_LOG_TYPE_DEFAULT))
            {
LABEL_43:
              __p.st_dev = 134217984;
              *&__p.st_mode = v24;
              _os_log_impl(&dword_296FF7000, v25, OS_LOG_TYPE_DEFAULT, "Free disk space = %lu MB", &__p, 0xCu);
            }

LABEL_45:
            size = v67.__r_.__value_.__l.__size_;
            v19 = v67.__r_.__value_.__r.__words[0];
            v21 = HIBYTE(v67.__r_.__value_.__r.__words[2]);
LABEL_46:
            v65 = -1431655766;
            v26 = *MEMORY[0x29EDBEDE8];
            v27 = strlen(*MEMORY[0x29EDBEDE8]);
            if (v27 > 0x7FFFFFFFFFFFFFF7)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            v28 = v27;
            if (v27 >= 0x17)
            {
              if ((v27 | 7) == 0x17)
              {
                v30 = 25;
              }

              else
              {
                v30 = (v27 | 7) + 1;
              }

              v29 = operator new(v30);
              *(&__dst + 1) = v28;
              v69 = v30 | 0x8000000000000000;
              *&__dst = v29;
            }

            else
            {
              HIBYTE(v69) = v27;
              v29 = &__dst;
              if (!v27)
              {
LABEL_55:
                *(v29 + v28) = 0;
                memset(&__p, 0, 24);
                if (prop::logfilter::get(&__dst, &__p))
                {
                  v6 = util::convert<int>(&__p, &v65, 0);
                  if ((SHIBYTE(__p.st_gid) & 0x80000000) == 0)
                  {
                    goto LABEL_60;
                  }
                }

                else
                {
                  v6 = 0;
                  if ((SHIBYTE(__p.st_gid) & 0x80000000) == 0)
                  {
                    goto LABEL_60;
                  }
                }

                operator delete(*&__p.st_dev);
LABEL_60:
                if (SHIBYTE(v69) < 0)
                {
                  operator delete(__dst);
                  if (v6)
                  {
LABEL_62:
                    v31 = v65;
                    memset(&v64, 0, sizeof(v64));
                    if (v65 < 0)
                    {
                      v42 = 0;
                      v41 = 0;
                      v40 = 0;
                      if ((v21 & 0x80u) == 0)
                      {
                        v44 = v21;
                      }

                      else
                      {
                        v44 = size;
                      }

                      if (v44)
                      {
                        goto LABEL_147;
                      }

                      goto LABEL_144;
                    }

                    __dst = 0uLL;
                    v69 = 0;
                    pthread_mutex_lock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
                    v32 = off_2A18B75C0;
                    if (!off_2A18B75C0)
                    {
                      SharedData::create_default_global(&__p.st_dev);
                      v33 = *&__p.st_dev;
                      *&__p.st_dev = 0;
                      __p.st_ino = 0;
                      v34 = *(&off_2A18B75C0 + 1);
                      off_2A18B75C0 = v33;
                      if (v34 && !atomic_fetch_add(&v34->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                      {
                        (v34->__on_zero_shared)(v34);
                        std::__shared_weak_count::__release_weak(v34);
                      }

                      v35 = __p.st_ino;
                      if (__p.st_ino && !atomic_fetch_add((__p.st_ino + 8), 0xFFFFFFFFFFFFFFFFLL))
                      {
                        (v35->__on_zero_shared)(v35);
                        std::__shared_weak_count::__release_weak(v35);
                      }

                      v32 = off_2A18B75C0;
                    }

                    v67.__r_.__value_.__r.__words[0] = v32;
                    v67.__r_.__value_.__l.__size_ = *(&off_2A18B75C0 + 1);
                    if (*(&off_2A18B75C0 + 1))
                    {
                      atomic_fetch_add_explicit((*(&off_2A18B75C0 + 1) + 8), 1uLL, memory_order_relaxed);
                    }

                    pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
                    v36 = *MEMORY[0x29EDBFC30];
                    v37 = strlen(*MEMORY[0x29EDBFC30]);
                    if (v37 > 0x7FFFFFFFFFFFFFF7)
                    {
                      std::string::__throw_length_error[abi:ne200100]();
                    }

                    v38 = v37;
                    if (v37 >= 0x17)
                    {
                      v63 = v19;
                      if ((v37 | 7) == 0x17)
                      {
                        v45 = 25;
                      }

                      else
                      {
                        v45 = (v37 | 7) + 1;
                      }

                      p_p = operator new(v45);
                      __p.st_ino = v38;
                      *&__p.st_uid = v45 | 0x8000000000000000;
                      *&__p.st_dev = p_p;
                      v19 = v63;
                    }

                    else
                    {
                      HIBYTE(__p.st_gid) = v37;
                      p_p = &__p;
                      if (!v37)
                      {
LABEL_93:
                        *(&p_p->st_dev + v38) = 0;
                        os_unfair_lock_lock((v32 + 40));
                        if ((__p.st_gid & 0x80000000) == 0)
                        {
                          v46 = &__p;
                        }

                        else
                        {
                          v46 = *&__p.st_dev;
                        }

                        ctu::cf::MakeCFString::MakeCFString(buf, v46);
                        v47 = (**v32)(v32, *buf);
                        if (v47)
                        {
                          ctu::cf::assign();
                          CFRelease(v47);
                        }

                        MEMORY[0x29C26B130](buf);
                        os_unfair_lock_unlock((v32 + 40));
                        if (SHIBYTE(__p.st_gid) < 0)
                        {
                          operator delete(*&__p.st_dev);
                        }

                        v48 = v67.__r_.__value_.__l.__size_;
                        if (v67.__r_.__value_.__l.__size_ && !atomic_fetch_add((v67.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
                        {
                          (v48->__on_zero_shared)(v48);
                          std::__shared_weak_count::__release_weak(v48);
                        }

                        v49.tv_sec = 0xAAAAAAAAAAAAAAAALL;
                        v49.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
                        *&__p.st_blksize = v49;
                        *__p.st_qspare = v49;
                        __p.st_birthtimespec = v49;
                        *&__p.st_size = v49;
                        __p.st_mtimespec = v49;
                        __p.st_ctimespec = v49;
                        *&__p.st_uid = v49;
                        __p.st_atimespec = v49;
                        *&__p.st_dev = v49;
                        if (v69 >= 0)
                        {
                          v50 = &__dst;
                        }

                        else
                        {
                          v50 = __dst;
                        }

                        if (stat(v50, &__p))
                        {
                          v51 = -1;
                          goto LABEL_134;
                        }

                        if (SHIBYTE(v69) < 0)
                        {
                          std::string::__init_copy_ctor_external(&__p, __dst, *(&__dst + 1));
                        }

                        else
                        {
                          *&__p.st_dev = __dst;
                          *&__p.st_uid = v69;
                        }

                        v52 = *MEMORY[0x29EDBFBF8];
                        v53 = strlen(*MEMORY[0x29EDBFBF8]);
                        if (v53 > 0x7FFFFFFFFFFFFFF7)
                        {
                          std::string::__throw_length_error[abi:ne200100]();
                        }

                        v54 = v53;
                        if (v53 >= 0x17)
                        {
                          if ((v53 | 7) == 0x17)
                          {
                            v56 = 25;
                          }

                          else
                          {
                            v56 = (v53 | 7) + 1;
                          }

                          v55 = operator new(v56);
                          v67.__r_.__value_.__l.__size_ = v54;
                          v67.__r_.__value_.__r.__words[2] = v56 | 0x8000000000000000;
                          v67.__r_.__value_.__r.__words[0] = v55;
                        }

                        else
                        {
                          *(&v67.__r_.__value_.__s + 23) = v53;
                          v55 = &v67;
                          if (!v53)
                          {
LABEL_120:
                            v55[v54] = 0;
                            NumberOfLogDumps = util::getNumberOfLogDumps(&__p, &v67);
                            if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
                            {
                              operator delete(v67.__r_.__value_.__l.__data_);
                              if ((SHIBYTE(__p.st_gid) & 0x80000000) == 0)
                              {
LABEL_122:
                                if (NumberOfLogDumps >> 31)
                                {
                                  v51 = -1;
                                }

                                else
                                {
                                  v51 = NumberOfLogDumps;
                                }

                                if (v51 == -1)
                                {
                                  goto LABEL_134;
                                }

LABEL_132:
                                if (v51 >= v31)
                                {
                                  std::string::__assign_external(&v64, *MEMORY[0x29EDBECA8]);
                                  v51 = NumberOfLogDumps;
                                }

LABEL_134:
                                if ((atomic_load_explicit(&qword_2A18B7900, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A18B7900))
                                {
                                  qword_2A18B7908 = 0;
                                  qword_2A18B7910 = 0;
                                  __cxa_guard_release(&qword_2A18B7900);
                                }

                                if (_MergedGlobals_11 == -1)
                                {
                                  v58 = qword_2A18B7910;
                                  if (!os_log_type_enabled(qword_2A18B7910, OS_LOG_TYPE_DEFAULT))
                                  {
                                    goto LABEL_138;
                                  }
                                }

                                else
                                {
                                  dispatch_once(&_MergedGlobals_11, &__block_literal_global_11);
                                  v58 = qword_2A18B7910;
                                  if (!os_log_type_enabled(qword_2A18B7910, OS_LOG_TYPE_DEFAULT))
                                  {
LABEL_138:
                                    if (SHIBYTE(v69) < 0)
                                    {
                                      operator delete(__dst);
                                    }

                                    v41 = v64.__r_.__value_.__l.__size_;
                                    v40 = v64.__r_.__value_.__r.__words[0];
                                    v42 = HIBYTE(v64.__r_.__value_.__r.__words[2]);
                                    if ((v21 & 0x80u) == 0)
                                    {
                                      v59 = v21;
                                    }

                                    else
                                    {
                                      v59 = size;
                                    }

                                    if (v59)
                                    {
                                      goto LABEL_147;
                                    }

LABEL_144:
                                    if ((v42 & 0x80u) == 0)
                                    {
                                      v41 = v42;
                                    }

                                    if (!v41)
                                    {
LABEL_148:
                                      if ((v42 & 0x80) != 0)
                                      {
                                        operator delete(v40);
                                        if ((v21 & 0x80) == 0)
                                        {
                                          goto LABEL_150;
                                        }
                                      }

                                      else if ((v21 & 0x80) == 0)
                                      {
LABEL_150:
                                        v60 = *MEMORY[0x29EDCA608];
                                        return v6;
                                      }

                                      operator delete(v19);
                                      v62 = *MEMORY[0x29EDCA608];
                                      return v6;
                                    }

LABEL_147:
                                    std::string::__assign_external(a1, *MEMORY[0x29EDBECA8]);
                                    goto LABEL_148;
                                  }
                                }

                                *buf = 67109376;
                                *&buf[4] = v51;
                                v71 = 1024;
                                v72 = v31;
                                _os_log_impl(&dword_296FF7000, v58, OS_LOG_TYPE_DEFAULT, "Log dump count = %d, max log limit = %d", buf, 0xEu);
                                goto LABEL_138;
                              }
                            }

                            else if ((SHIBYTE(__p.st_gid) & 0x80000000) == 0)
                            {
                              goto LABEL_122;
                            }

                            operator delete(*&__p.st_dev);
                            if (NumberOfLogDumps >> 31)
                            {
                              v51 = -1;
                            }

                            else
                            {
                              v51 = NumberOfLogDumps;
                            }

                            if (v51 == -1)
                            {
                              goto LABEL_134;
                            }

                            goto LABEL_132;
                          }
                        }

                        memmove(v55, v52, v54);
                        goto LABEL_120;
                      }
                    }

                    memmove(p_p, v36, v38);
                    goto LABEL_93;
                  }
                }

                else if (v6)
                {
                  goto LABEL_62;
                }

                v40 = 0;
                v41 = 0;
                v42 = 0;
                if ((v21 & 0x80u) == 0)
                {
                  v43 = v21;
                }

                else
                {
                  v43 = size;
                }

                if (v43)
                {
                  goto LABEL_147;
                }

                goto LABEL_144;
              }
            }

            memmove(v29, v26, v28);
            goto LABEL_55;
          }
        }

        else if (v9)
        {
          goto LABEL_19;
        }

        v19 = 0;
        size = 0;
        v21 = 0;
        goto LABEL_46;
      }
    }

    memmove(p_dst, v2, v4);
    goto LABEL_12;
  }

  v6 = 1;
  v7 = *MEMORY[0x29EDCA608];
  return v6;
}

void sub_297126C80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  if (v38 < 0)
  {
    operator delete(v37);
  }

  _Unwind_Resume(exception_object);
}

void ___ZL16sGetOsLogContextv_block_invoke_4()
{
  ctu::OsLogContext::OsLogContext(v0, "com.apple.telephony.abm", "trace.filter");
  ctu::OsLogContext::operator=();
  ctu::OsLogContext::~OsLogContext(v0);
}

uint64_t __cxx_global_var_init_12()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<SharedData>::~PthreadMutexGuardPolicy, &ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance, &dword_296FF7000);
  }

  return result;
}

uint64_t data::TransportService::ThrottlingConfig::asString@<X0>(data::TransportService::ThrottlingConfig *this@<X0>, _BYTE *a2@<X8>)
{
  v24 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v23[7] = v4;
  v23[8] = v4;
  v23[5] = v4;
  v23[6] = v4;
  v23[3] = v4;
  v23[4] = v4;
  v23[1] = v4;
  v23[2] = v4;
  v22 = v4;
  v23[0] = v4;
  *__p = v4;
  v21 = v4;
  v18 = v4;
  *__src = v4;
  v16 = v4;
  v17 = v4;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v16);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, "enabled ", 8);
  v6 = "???";
  if (!*this)
  {
    v6 = "Disabled";
  }

  if (*this == 1)
  {
    v7 = "Enabled";
  }

  else
  {
    v7 = v6;
  }

  v8 = strlen(v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, v7, v8);
  if (*this == 1)
  {
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v16, ", timeout ", 10);
    MEMORY[0x29C26BE00](v9, *(this + 1));
  }

  if ((BYTE8(v22) & 0x10) != 0)
  {
    v11 = v22;
    if (v22 < __src[1])
    {
      *&v22 = __src[1];
      v11 = __src[1];
    }

    v12 = __src[0];
    v10 = v11 - __src[0];
    if ((v11 - __src[0]) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_26;
    }
  }

  else
  {
    if ((BYTE8(v22) & 8) == 0)
    {
      v10 = 0;
      a2[23] = 0;
      goto LABEL_22;
    }

    v12 = *(&v17 + 1);
    v10 = *(&v18 + 1) - *(&v17 + 1);
    if (*(&v18 + 1) - *(&v17 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
    {
LABEL_26:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

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

    v14 = operator new(v13);
    *(a2 + 1) = v10;
    *(a2 + 2) = v13 | 0x8000000000000000;
    *a2 = v14;
    a2 = v14;
    goto LABEL_21;
  }

  a2[23] = v10;
  if (v10)
  {
LABEL_21:
    memmove(a2, v12, v10);
  }

LABEL_22:
  a2[v10] = 0;
  *&v16 = *MEMORY[0x29EDC9538];
  *(&v16 + *(v16 - 24)) = *(MEMORY[0x29EDC9538] + 24);
  *(&v16 + 1) = MEMORY[0x29EDC9570] + 16;
  if (SHIBYTE(v21) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v16 + 1) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(&v17);
  std::ostream::~ostream();
  return MEMORY[0x29C26C030](v23);
}

void sub_297127114(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::ostringstream::~ostringstream(&a9, MEMORY[0x29EDC9538]);
  MEMORY[0x29C26C030](v9 + 112);
  _Unwind_Resume(a1);
}

data::TransportService *data::TransportService::TransportService(data::TransportService *this)
{
  data::TransportService::State::create(this, this);
  return this;
}

{
  data::TransportService::State::create(this, this);
  return this;
}

void data::TransportService::State::create(data::TransportService::State *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  if (capabilities::abs::supportsDataTransportService(this))
  {
    v3 = operator new(0x68uLL);
    data::TransportService::State::State(v3);
    *&v5 = 0xAAAAAAAAAAAAAAAALL;
    *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
    std::shared_ptr<data::TransportService::State>::shared_ptr[abi:ne200100]<data::TransportService::State,std::shared_ptr<data::TransportService::State> ctu::SharedSynchronizable<data::TransportService::State>::make_shared_ptr<data::TransportService::State>(data::TransportService::State*)::{lambda(data::TransportService::State*)#1},0>(&v5, v3);
    v4 = v5;
    *a2 = v5;
    data::TransportService::State::init(v4);
  }
}

void sub_2971271D4(_Unwind_Exception *a1)
{
  operator delete(v2);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

void data::TransportService::enterLowPower(data::TransportService *this)
{
  v1 = *this;
  if (*this)
  {
    v3[0] = MEMORY[0x29EDCA5F8];
    v3[1] = 0x40000000;
    v3[2] = ___ZN4data16TransportService5State13enterLowPowerEv_block_invoke;
    v3[3] = &__block_descriptor_tmp_46;
    v3[4] = v1;
    v4 = v3;
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 0x40000000;
    block[2] = ___ZNK3ctu20SharedSynchronizableIN4data16TransportService5StateEE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS9__block_invoke;
    block[3] = &__block_descriptor_tmp_47;
    block[4] = v1;
    block[5] = &v4;
    v2 = *(v1 + 16);
    if (*(v1 + 24))
    {
      dispatch_async_and_wait(v2, block);
    }

    else
    {
      dispatch_sync(v2, block);
    }
  }
}

void data::TransportService::exitLowPower(uint64_t **this)
{
  v1 = *this;
  if (v1)
  {
    v2[0] = MEMORY[0x29EDCA5F8];
    v2[1] = 0x40000000;
    v2[2] = ___ZN4data16TransportService5State12exitLowPowerEv_block_invoke;
    v2[3] = &__block_descriptor_tmp_48;
    v2[4] = v1;
    ctu::SharedSynchronizable<data::TransportService::State>::execute_wrapped(v1, v2);
  }
}

void data::TransportService::setConfig(uint64_t **a1, uint64_t *a2)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *a2;
    v4[0] = MEMORY[0x29EDCA5F8];
    v4[1] = 0x40000000;
    v4[2] = ___ZN4data16TransportService5State9setConfigENS0_16ThrottlingConfigE_block_invoke;
    v4[3] = &__block_descriptor_tmp_51;
    v4[4] = v2;
    v4[5] = v3;
    ctu::SharedSynchronizable<data::TransportService::State>::execute_wrapped(v2, v4);
  }
}

void data::TransportService::dumpState(data::TransportService *this)
{
  v1 = *this;
  if (*this)
  {
    v3[0] = MEMORY[0x29EDCA5F8];
    v3[1] = 0x40000000;
    v3[2] = ___ZNK4data16TransportService5State9dumpStateEv_block_invoke;
    v3[3] = &__block_descriptor_tmp_52;
    v3[4] = v1;
    v4 = v3;
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 0x40000000;
    block[2] = ___ZNK3ctu20SharedSynchronizableIN4data16TransportService5StateEE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS9__block_invoke;
    block[3] = &__block_descriptor_tmp_47;
    block[4] = v1;
    block[5] = &v4;
    v2 = *(v1 + 16);
    if (*(v1 + 24))
    {
      dispatch_async_and_wait(v2, block);
    }

    else
    {
      dispatch_sync(v2, block);
    }
  }
}

void data::TransportService::unblockThrottling(data::TransportService *this)
{
  v1 = *this;
  if (*this)
  {
    v3[0] = MEMORY[0x29EDCA5F8];
    v3[1] = 0x40000000;
    v3[2] = ___ZN4data16TransportService5State17unblockThrottlingEv_block_invoke;
    v3[3] = &__block_descriptor_tmp_53;
    v3[4] = v1;
    v4 = v3;
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 0x40000000;
    block[2] = ___ZNK3ctu20SharedSynchronizableIN4data16TransportService5StateEE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS9__block_invoke;
    block[3] = &__block_descriptor_tmp_47;
    block[4] = v1;
    block[5] = &v4;
    v2 = *(v1 + 16);
    if (*(v1 + 24))
    {
      dispatch_async_and_wait(v2, block);
    }

    else
    {
      dispatch_sync(v2, block);
    }
  }
}

uint64_t ctu::PthreadMutexGuardPolicy<sys::UIObserver>::~PthreadMutexGuardPolicy(uint64_t a1)
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

void data::TransportService::State::init(data::TransportService::State *this)
{
  v59 = *MEMORY[0x29EDCA608];
  v2 = *(this + 4);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_296FF7000, v2, OS_LOG_TYPE_DEFAULT, "#I Inited", buf, 2u);
  }

  v37 = 0xAAAAAAAAAAAAAAAALL;
  v38 = 0xAAAAAAAAAAAAAAAALL;
  pthread_mutex_lock(&ctu::Singleton<sys::UIObserver,sys::UIObserver,ctu::PthreadMutexGuardPolicy<sys::UIObserver>>::sInstance);
  v3 = off_2A18B7250;
  if (!off_2A18B7250)
  {
    memset(buf, 170, sizeof(buf));
    v4 = operator new(0x40uLL);
    sys::UIObserver::UIObserver(v4);
    std::shared_ptr<sys::UIObserver>::shared_ptr[abi:ne200100]<sys::UIObserver,0>(buf, v4);
    v5 = *buf;
    memset(buf, 0, sizeof(buf));
    v6 = *(&off_2A18B7250 + 1);
    off_2A18B7250 = v5;
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

    v3 = off_2A18B7250;
  }

  v37 = v3;
  v38 = *(&off_2A18B7250 + 1);
  if (*(&off_2A18B7250 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18B7250 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<sys::UIObserver,sys::UIObserver,ctu::PthreadMutexGuardPolicy<sys::UIObserver>>::sInstance);
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZN3ctu20SharedSynchronizableIN4data16TransportService5StateEE13connect_eventIN5boost8signals26signalIFvbENS7_19optional_last_valueIvEEiNSt3__14lessIiEENS6_8functionIS9_EENSF_IFvRKNS7_10connectionEbEEENS7_5mutexEEES3_vJbEEEDTcl7connectfp_cvNSC_10shared_ptrIS3_EE_EcvP16dispatch_queue_s_EcvPFT1_DpT2_ELi0EEERT_MT0_FSS_SU_E_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_13;
  aBlock[4] = this;
  aBlock[5] = data::TransportService::State::handleUILockStateChange_sync;
  aBlock[6] = 0;
  v8 = _Block_copy(aBlock);
  v9 = *(this + 1);
  if (!v9 || (v10 = *this, (v11 = std::__shared_weak_count::lock(v9)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v12 = v11;
  v13 = *(this + 2);
  object = v13;
  if (v8)
  {
    v14 = _Block_copy(v8);
  }

  else
  {
    v14 = 0;
  }

  v41 = v14;
  dispatch_retain(v13);
  *v42 = 0u;
  v43 = 0u;
  boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>::init_slot_function<ctu::DispatchSlot<dispatch::block<void({block_pointer})(BOOL)>>>(v42, &object);
  atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v15 = operator new(0x18uLL);
  *v15 = &unk_2A1E2B4A8;
  v15[1] = v10;
  v15[2] = v12;
  atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v16 = operator new(0x18uLL);
  *v16 = &unk_2A1E2B4A8;
  v16[1] = v10;
  v16[2] = v12;
  atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  *&buf[8] = v16;
  *buf = 2;
  v17 = v42[1];
  if (v42[1] < v43)
  {
    v18 = operator new(0x18uLL);
    *v18 = &unk_2A1E2B4A8;
    v18[1] = v10;
    v18[2] = v12;
    atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v17[1] = v18;
    *v17 = 2;
    v42[1] = v17 + 3;
LABEL_20:
    (*(*v16 + 8))(v16);
    goto LABEL_21;
  }

  v26 = std::vector<boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>>::__emplace_back_slow_path<boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>>(v42, buf);
  v27 = *buf ^ (*buf >> 31);
  v42[1] = v26;
  if (v27 == 2)
  {
    v16 = *&buf[8];
    if (*&buf[8])
    {
      goto LABEL_20;
    }
  }

  else if (v27 == 1)
  {
    v28 = v46;
    if (v46 && atomic_fetch_add((v46 + 12), 0xFFFFFFFF) == 1)
    {
LABEL_44:
      (*(*v28 + 24))(v28);
    }
  }

  else
  {
    v28 = v46;
    if (v46 && atomic_fetch_add((v46 + 12), 0xFFFFFFFF) == 1)
    {
      goto LABEL_44;
    }
  }

LABEL_21:
  (*(*v15 + 8))(v15);
  std::__shared_weak_count::__release_weak(v12);
  v19 = *(v3 + 40);
  *&v20 = 0xAAAAAAAAAAAAAAAALL;
  *(&v20 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v53 = v20;
  v54 = v20;
  v51 = v20;
  v52 = v20;
  v49 = v20;
  v50 = v20;
  v47 = v20;
  v48 = v20;
  *buf = v20;
  v46 = v20;
  v21 = *(v19 + 24);
  v55 = 10;
  __p = buf;
  v57 = 0;
  v58 = v21;
  pthread_mutex_lock(v21);
  boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::nolock_connect(v19, buf, v42, 0, &v36);
  pthread_mutex_unlock(v58);
  v22 = __p;
  if (__p)
  {
    if (v57 > 0)
    {
      v34 = __p + 16 * v57;
      do
      {
        v35 = *(v34 - 1);
        if (v35)
        {
          if (atomic_fetch_add(v35 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v35 + 16))(v35);
            if (atomic_fetch_add(v35 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v35 + 24))(v35);
            }
          }
        }

        v34 -= 16;
      }

      while (v34 > v22);
    }

    if (v55 >= 0xB)
    {
      operator delete(__p);
    }
  }

  if (*(&v43 + 1))
  {
    if ((BYTE8(v43) & 1) == 0 && **(&v43 + 1))
    {
      (**(&v43 + 1))(v44, v44, 2);
    }

    *(&v43 + 1) = 0;
  }

  v23 = v42[0];
  if (v42[0])
  {
    v24 = v42[1];
    v25 = v42[0];
    if (v42[1] != v42[0])
    {
      do
      {
        v24 -= 24;
        boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>::destroy_content(v24);
      }

      while (v24 != v23);
      v25 = v42[0];
    }

    v42[1] = v23;
    operator delete(v25);
  }

  dispatch_release(object);
  if (v41)
  {
    _Block_release(v41);
  }

  if (atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (!v8)
    {
      goto LABEL_47;
    }

    goto LABEL_46;
  }

  (v12->__on_zero_shared)(v12);
  std::__shared_weak_count::__release_weak(v12);
  if (v8)
  {
LABEL_46:
    _Block_release(v8);
  }

LABEL_47:
  v29 = operator new(0x20uLL);
  v29[1] = v36;
  v31 = *(this + 7);
  v30 = (this + 56);
  *v29 = v31;
  *(v29 + 1) = v30;
  *(v31 + 8) = v29;
  *v30 = v29;
  ++v30[2];
  v32 = v38;
  if (v38 && !atomic_fetch_add((v38 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v32->__on_zero_shared)(v32);
    std::__shared_weak_count::__release_weak(v32);
  }

  v33 = *MEMORY[0x29EDCA608];
}

void sub_297127D40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void *std::shared_ptr<data::TransportService::State>::shared_ptr[abi:ne200100]<data::TransportService::State,std::shared_ptr<data::TransportService::State> ctu::SharedSynchronizable<data::TransportService::State>::make_shared_ptr<data::TransportService::State>(data::TransportService::State*)::{lambda(data::TransportService::State*)#1},0>(void *a1, void *a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_2A1E2B300;
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

void sub_297127FA4(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[2], v1, std::shared_ptr<data::TransportService::State> ctu::SharedSynchronizable<data::TransportService::State>::make_shared_ptr<data::TransportService::State>(data::TransportService::State*)::{lambda(data::TransportService::State*)#1}::operator() const(data::TransportService::State*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void std::__shared_ptr_pointer<data::TransportService::State *,std::shared_ptr<data::TransportService::State> ctu::SharedSynchronizable<data::TransportService::State>::make_shared_ptr<data::TransportService::State>(data::TransportService::State*)::{lambda(data::TransportService::State *)#1},std::allocator<data::TransportService::State>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<data::TransportService::State *,std::shared_ptr<data::TransportService::State> ctu::SharedSynchronizable<data::TransportService::State>::make_shared_ptr<data::TransportService::State>(data::TransportService::State*)::{lambda(data::TransportService::State *)#1},std::allocator<data::TransportService::State>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableIN4data16TransportService5StateEE15make_shared_ptrIS3_EENSt3__110shared_ptrIT_EEPS8_EUlPS3_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableIN4data16TransportService5StateEE15make_shared_ptrIS3_EENSt3__110shared_ptrIT_EEPS8_EUlPS3_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableIN4data16TransportService5StateEE15make_shared_ptrIS3_EENSt3__110shared_ptrIT_EEPS8_EUlPS3_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableIN4data16TransportService5StateEE15make_shared_ptrIS3_EENSt3__110shared_ptrIT_EEPS8_EUlPS3_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void std::shared_ptr<data::TransportService::State> ctu::SharedSynchronizable<data::TransportService::State>::make_shared_ptr<data::TransportService::State>(data::TransportService::State*)::{lambda(data::TransportService::State*)#1}::operator() const(data::TransportService::State*)::{lambda(void *)#1}::__invoke(void *a1)
{
  if (!a1)
  {
    return;
  }

  v2 = a1 + 7;
  v3 = a1[8];
  if (v3 != a1 + 7)
  {
    do
    {
      boost::signals2::connection::disconnect((v3 + 2));
      v3 = v3[1];
    }

    while (v3 != v2);
  }

  if (a1[9])
  {
    v4 = a1[8];
    v5 = *(a1[7] + 8);
    v6 = *v4;
    *(v6 + 8) = v5;
    *v5 = v6;
    a1[9] = 0;
    if (v4 != v2)
    {
      do
      {
        v7 = v4[1];
        v8 = v4[3];
        if (v8 && atomic_fetch_add(v8 + 3, 0xFFFFFFFF) == 1)
        {
          v9 = v4;
          (*(*v8 + 24))(v8);
          v4 = v9;
        }

        operator delete(v4);
        v4 = v7;
      }

      while (v7 != v2);
    }
  }

  v10 = a1[12];
  if (v10)
  {
    dispatch_release(v10);
  }

  v11 = a1[11];
  if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
    if (a1[9])
    {
LABEL_16:
      v12 = a1[8];
      v13 = *(a1[7] + 8);
      v14 = *v12;
      *(v14 + 8) = v13;
      *v13 = v14;
      a1[9] = 0;
      if (v12 != v2)
      {
        do
        {
          v15 = v12[1];
          v16 = v12[3];
          if (v16 && atomic_fetch_add(v16 + 3, 0xFFFFFFFF) == 1)
          {
            v17 = v12;
            (*(*v16 + 24))(v16);
            v12 = v17;
          }

          operator delete(v12);
          v12 = v15;
        }

        while (v15 != v2);
      }
    }
  }

  else if (a1[9])
  {
    goto LABEL_16;
  }

  MEMORY[0x29C26B020](a1 + 4);
  v18 = a1[3];
  if (v18)
  {
    dispatch_release(v18);
  }

  v19 = a1[2];
  if (v19)
  {
    dispatch_release(v19);
  }

  v20 = a1[1];
  if (v20)
  {
    std::__shared_weak_count::__release_weak(v20);
  }

  operator delete(a1);
}

data::TransportService::State *data::TransportService::State::State(data::TransportService::State *this)
{
  v10 = 12;
  strcpy(label, "ipc.svc.data");
  v7 = 12;
  strcpy(__p, "ipc.svc.data");
  ctu::OsLogContext::OsLogContext(v8, "com.apple.telephony.abm", __p);
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_DEFAULT, 0);
  v3 = dispatch_queue_create(label, v2);
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = v3;
  if (v3)
  {
    v4 = v3;
    dispatch_retain(v3);
    *(this + 3) = 0;
    dispatch_release(v4);
  }

  else
  {
    *(this + 3) = 0;
  }

  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x29C26B010](this + 32, v11);
  MEMORY[0x29C26B020](v11);
  ctu::OsLogContext::~OsLogContext(v8);
  if (v7 < 0)
  {
    operator delete(__p[0]);
    if ((v10 & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

LABEL_8:
    operator delete(*label);
    goto LABEL_6;
  }

  if (v10 < 0)
  {
    goto LABEL_8;
  }

LABEL_6:
  *(this + 12) = 0;
  *(this + 7) = this + 56;
  *(this + 8) = this + 56;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 5) = 0x2D00000000;
  return this;
}

uint64_t ctu::DispatchSlot<dispatch::block<void({block_pointer})(BOOL)>>::~DispatchSlot(uint64_t a1)
{
  dispatch_release(*a1);
  v2 = *(a1 + 8);
  if (v2)
  {
    _Block_release(v2);
  }

  return a1;
}

atomic_uint *boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::nolock_connect@<X0>(uint64_t **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t *a5@<X8>)
{
  boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::nolock_force_unique_connection_list(a1, a2);
  v9 = operator new(0x50uLL);
  boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>::connection_body(v9, a3, a1 + 3);
  v15 = v9;
  v16 = 0;
  boost::detail::sp_pointer_construct<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>,boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>(&v15, v9, &v16);
  *v14 = 0xAAAAAA00AAAAAAAALL;
  *&v14[8] = -1431655766;
  if (a4)
  {
    *v14 = 0;
    v10 = **a1;
    v17 = *(v10 + 24);
  }

  else
  {
    *v14 = 2;
    v10 = **a1;
    v17 = v10 + 32;
  }

  boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>>::m_insert(v10, &v17, v14, &v15);
  v12 = v15;
  result = v16;
  v15[16] = *v14;
  *(v12 + 68) = *&v14[4];
  if (!result)
  {
    *a5 = v12;
    a5[1] = 0;
    v13 = v16;
    if (!v16)
    {
      return result;
    }

    goto LABEL_10;
  }

  atomic_fetch_add_explicit(result + 3, 1u, memory_order_relaxed);
  *a5 = v12;
  a5[1] = result;
  atomic_fetch_add_explicit(result + 3, 1u, memory_order_relaxed);
  if (atomic_fetch_add(result + 3, 0xFFFFFFFF) == 1)
  {
    result = (*(*result + 24))(result);
  }

  v13 = v16;
  if (v16)
  {
LABEL_10:
    if (atomic_fetch_add(v13 + 2, 0xFFFFFFFF) == 1)
    {
      result = (*(*v13 + 16))(v13);
      if (atomic_fetch_add(v13 + 3, 0xFFFFFFFF) == 1)
      {
        return (*(*v13 + 24))(v13);
      }
    }
  }

  return result;
}

void sub_297128664(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>::~shared_ptr(va);
  _Unwind_Resume(a1);
}

uint64_t *boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::nolock_force_unique_connection_list(uint64_t ***a1, uint64_t a2)
{
  v2 = a1;
  v3 = a1[1];
  if (v3 && atomic_load_explicit(v3 + 2, memory_order_acquire) == 1)
  {
    v4 = **a1;
    v5 = a1[2];
    if (v5 == v4)
    {
      v5 = v4[1];
    }

    v14 = v5;
    v6 = 2;
  }

  else
  {
    v7 = a2;
    v8 = operator new(0x20uLL);
    v9 = *v2;
    v10 = **v2;
    v11 = operator new(0x40uLL);
    boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>>::grouped_list(v11, v10);
    *v8 = v11;
    *(v8 + 1) = 0;
    boost::detail::sp_pointer_construct<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>>,boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>>>(v8, v11, v8 + 1);
    *(v8 + 2) = v9[2];
    v12 = v9[3];
    *(v8 + 3) = v12;
    if (v12)
    {
      atomic_fetch_add_explicit((v12 + 8), 1u, memory_order_relaxed);
    }

    boost::shared_ptr<boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::invocation_state>::reset<boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::invocation_state>(v2, v8);
    v14 = *(**v2 + 8);
    a1 = v2;
    a2 = v7;
    v6 = 0;
  }

  return boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::nolock_cleanup_connections_from(a1, a2, 1, &v14, v6);
}

void sub_2971287BC(_Unwind_Exception *a1)
{
  boost::detail::shared_count::~shared_count(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void sub_2971287D8(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

atomic_uint *boost::shared_ptr<boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::invocation_state>::reset<boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::invocation_state>(uint64_t *a1, uint64_t a2)
{
  v6 = a2;
  result = boost::detail::sp_pointer_construct<boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::invocation_state,boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::invocation_state>(&v6, a2, &v6 + 1);
  v4 = *a1;
  v5 = a1[1];
  *a1 = v6;
  *&v6 = v4;
  *(&v6 + 1) = v5;
  if (v5 && atomic_fetch_add(v5 + 2, 0xFFFFFFFF) == 1)
  {
    result = (*(*v5 + 16))(v5);
    if (atomic_fetch_add(v5 + 3, 0xFFFFFFFF) == 1)
    {
      return (*(*v5 + 24))(v5);
    }
  }

  return result;
}

void sub_2971288D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  boost::detail::shared_count::~shared_count(va);
  _Unwind_Resume(a1);
}

uint64_t *boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::nolock_cleanup_connections_from(uint64_t ***a1, uint64_t a2, char a3, uint64_t **a4, int a5)
{
  result = *a4;
  v21 = result;
  v7 = **a1;
  if (v7 != result)
  {
    v8 = a5 - 1;
    if (a3)
    {
      v10 = 0;
      do
      {
        v12 = result[2];
        v13 = *(v12 + 32);
        if (v13)
        {
          for (i = *v13; i != v13[1]; i += 24)
          {
            if ((*i ^ (*i >> 31)) > 1)
            {
              if ((*(**(i + 8) + 24))(*(i + 8)))
              {
                goto LABEL_18;
              }
            }

            else
            {
              v15 = *(i + 16);
              if (!v15 || !atomic_load_explicit((v15 + 8), memory_order_acquire))
              {
LABEL_18:
                if (*(v12 + 24) == 1)
                {
                  *(v12 + 24) = 0;
                  boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::mutex>(v12, a2);
                }

                break;
              }
            }
          }
        }

        v16 = v21[2];
        if (*(v16 + 24))
        {
          result = v21[1];
        }

        else
        {
          result = boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>>::erase(**a1, (v16 + 64), &v21);
        }

        v21 = result;
        ++v10;
      }

      while (result != **a1 && v8 >= v10);
    }

    else
    {
      v17 = 1;
      do
      {
        while (1)
        {
          v19 = result[2];
          if (*(v19 + 24))
          {
            break;
          }

          result = boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>>::erase(v7, (v19 + 64), &v21);
          v7 = **a1;
          v21 = result;
          if (result == v7 || v8 < v17++)
          {
            goto LABEL_33;
          }
        }

        result = result[1];
        v21 = result;
      }

      while (result != v7 && v8 >= v17++);
    }
  }

LABEL_33:
  a1[2] = result;
  return result;
}

atomic_uint *boost::detail::sp_pointer_construct<boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::invocation_state,boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::invocation_state>(uint64_t a1, uint64_t a2, atomic_uint **a3)
{
  result = operator new(0x18uLL);
  *(result + 1) = 0x100000001;
  *result = &unk_2A1E2B600;
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

void sub_297128B6C(void *a1)
{
  __cxa_begin_catch(a1);
  boost::checked_delete<boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::invocation_state>(v1);
  __cxa_rethrow();
}

void boost::checked_delete<boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::invocation_state>(void *a1)
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

void boost::detail::sp_counted_impl_p<boost::signals2::detail::signal_impl<void ()(BOOL),boost::signals2::optional_last_value<void>,int,std::less<int>,boost::function<void ()(BOOL)>,boost::function<void ()(boost::signals2::connection const&,BOOL)>,boost::signals2::mutex>::invocation_state>::dispose(uint64_t a1)
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

uint64_t boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>>::grouped_list(uint64_t a1, uint64_t a2)
{
  *a1 = a1;
  *(a1 + 8) = a1;
  *(a1 + 16) = 0;
  v4 = *(a2 + 8);
  if (v4 != a2)
  {
    v5 = 0;
    v6 = a1;
    do
    {
      v7 = operator new(0x20uLL);
      v8 = v4[3];
      v7[2] = v4[2];
      v7[3] = v8;
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 8), 1u, memory_order_relaxed);
        v6 = *a1;
        v5 = *(a1 + 16);
      }

      *v7 = v6;
      v7[1] = a1;
      v6[1] = v7;
      *a1 = v7;
      *(a1 + 16) = ++v5;
      v4 = v4[1];
      v6 = v7;
    }

    while (v4 != a2);
  }

  *(a1 + 24) = 0;
  v9 = (a1 + 24);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 24) = a1 + 32;
  v10 = *(a2 + 24);
  v11 = (a2 + 32);
  if (v10 != (a2 + 32))
  {
    do
    {
      v33 = 0xAAAAAAAAAAAAAAAALL;
      v34 = 0xAAAAAAAAAAAAAAAALL;
      v12 = std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>,void *>>>>::__find_equal<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>>((a1 + 24), (a1 + 32), &v34, &v33, v10 + 8);
      if (*v12)
      {
        v13 = *(v10 + 1);
        if (v13)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v14 = operator new(0x38uLL);
        v15 = *(v10 + 2);
        v14[6] = *(v10 + 6);
        *(v14 + 2) = v15;
        v16 = v34;
        *v14 = 0;
        v14[1] = 0;
        v14[2] = v16;
        *v12 = v14;
        v17 = **v9;
        if (v17)
        {
          *v9 = v17;
        }

        std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(a1 + 32), v14);
        ++*(a1 + 40);
        v13 = *(v10 + 1);
        if (v13)
        {
          do
          {
LABEL_15:
            v18 = v13;
            v13 = *v13;
          }

          while (v13);
          goto LABEL_8;
        }
      }

      do
      {
        v18 = *(v10 + 2);
        v19 = *v18 == v10;
        v10 = v18;
      }

      while (!v19);
LABEL_8:
      v10 = v18;
    }

    while (v18 != v11);
  }

  *(a1 + 56) = *(a2 + 56);
  v20 = *(a2 + 24);
  if (v20 != v11)
  {
    v21 = *(a1 + 24);
    v22 = *(a1 + 8);
    do
    {
      v21[6] = v22;
      v23 = a2;
      if (v20 != v11)
      {
        v23 = *(v20 + 6);
      }

      v24 = *(v20 + 1);
      v25 = v24;
      v26 = v20;
      if (v24)
      {
        do
        {
          v27 = v25;
          v25 = *v25;
        }

        while (v25);
      }

      else
      {
        do
        {
          v27 = *(v26 + 2);
          v19 = *v27 == v26;
          v26 = v27;
        }

        while (!v19);
      }

      v28 = a2;
      if (v27 != v11)
      {
        v28 = *(v27 + 6);
      }

      while (v23 != v28)
      {
        v23 = *(v23 + 8);
        v22 = *(v22 + 8);
      }

      if (v24)
      {
        do
        {
          v29 = v24;
          v24 = *v24;
        }

        while (v24);
      }

      else
      {
        do
        {
          v29 = *(v20 + 2);
          v19 = *v29 == v20;
          v20 = v29;
        }

        while (!v19);
      }

      v30 = v21[1];
      if (v30)
      {
        do
        {
          v31 = v30;
          v30 = *v30;
        }

        while (v30);
      }

      else
      {
        do
        {
          v31 = v21[2];
          v19 = *v31 == v21;
          v21 = v31;
        }

        while (!v19);
      }

      v20 = v29;
      v21 = v31;
    }

    while (v29 != v11);
  }

  return a1;
}

void sub_297129114(_Unwind_Exception *a1)
{
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v2, *(v1 + 32));
  std::list<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>>::~list(v1);
  _Unwind_Resume(a1);
}

void std::__list_imp<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>>::clear(uint64_t *a1)
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

uint64_t *std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>,void *>>>>::__find_equal<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>>(void *a1, uint64_t *a2, uint64_t **a3, uint64_t **a4, int *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2)
  {
    goto LABEL_8;
  }

  v6 = *a5;
  v7 = *(a2 + 8);
  if (*a5 == v7)
  {
    if (v6 != 1)
    {
LABEL_6:
      *a3 = a2;
      *a4 = a2;
      return a4;
    }

    v8 = a5[2];
    v9 = *(a2 + 10);
    if (v8 >= v9)
    {
      if (v9 >= v8)
      {
        goto LABEL_6;
      }

      goto LABEL_15;
    }

LABEL_8:
    v11 = *a2;
    if (*a1 == a2)
    {
      v13 = a2;
    }

    else
    {
      if (v11)
      {
        v12 = *a2;
        do
        {
          v13 = v12;
          v12 = v12[1];
        }

        while (v12);
      }

      else
      {
        v17 = a2;
        do
        {
          v13 = v17[2];
          v18 = *v13 == v17;
          v17 = v13;
        }

        while (v18);
      }

      v19 = *(v13 + 8);
      v20 = *a5;
      if (v19 == *a5)
      {
        if (v19 != 1 || *(v13 + 10) >= a5[2])
        {
          goto LABEL_24;
        }
      }

      else if (v19 >= v20)
      {
LABEL_24:
        v21 = *v5;
        if (!*v5)
        {
          *a3 = v5;
          return a1 + 1;
        }

        if (v20 != 1)
        {
          while (1)
          {
            v26 = *(v21 + 8);
            v23 = v21;
            if (v20 == v26)
            {
              break;
            }

            if (v20 < v26)
            {
              v21 = *v21;
              v5 = v23;
              if (!*v23)
              {
                break;
              }
            }

            else
            {
              if (v26 >= v20)
              {
                break;
              }

              v5 = v21 + 1;
              v21 = v21[1];
              if (!v21)
              {
                break;
              }
            }
          }

LABEL_40:
          *a3 = v23;
          return v5;
        }

        v22 = a5[2];
        while (1)
        {
          v23 = v21;
          v24 = *(v21 + 8);
          if (v24 == 1)
          {
            v25 = *(v23 + 10);
            if (v22 >= v25)
            {
              if (v25 >= v22)
              {
                goto LABEL_40;
              }

              goto LABEL_33;
            }

LABEL_27:
            v21 = *v23;
            v5 = v23;
            if (!*v23)
            {
              goto LABEL_40;
            }
          }

          else
          {
            if (v24 > 1)
            {
              goto LABEL_27;
            }

LABEL_33:
            v5 = v23 + 1;
            v21 = v23[1];
            if (!v21)
            {
              goto LABEL_40;
            }
          }
        }
      }
    }

    if (v11)
    {
      *a3 = v13;
      return v13 + 1;
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  if (v6 < v7)
  {
    goto LABEL_8;
  }

  if (v7 >= v6)
  {
    goto LABEL_6;
  }

LABEL_15:
  v14 = a2[1];
  if (v14)
  {
    v15 = a2[1];
    do
    {
      v16 = v15;
      v15 = *v15;
    }

    while (v15);
  }

  else
  {
    v27 = a2;
    do
    {
      v16 = v27[2];
      v18 = *v16 == v27;
      v27 = v16;
    }

    while (!v18);
  }

  if (v16 == v5)
  {
    goto LABEL_56;
  }

  v28 = *(v16 + 8);
  if (v6 == v28)
  {
    if (v6 == 1)
    {
      v29 = a5[2];
      if (v29 >= *(v16 + 10))
      {
        v30 = *v5;
        if (!*v5)
        {
          *a3 = v5;
          return a1 + 1;
        }

        goto LABEL_61;
      }

      goto LABEL_56;
    }

    goto LABEL_58;
  }

  if (v6 < v28)
  {
LABEL_56:
    if (v14)
    {
      *a3 = v16;
      return v16;
    }

    else
    {
      *a3 = a2;
      return a2 + 1;
    }
  }

LABEL_58:
  v30 = *v5;
  if (*v5)
  {
    if (v6 == 1)
    {
      v29 = a5[2];
LABEL_61:
      v31 = v30;
      while (1)
      {
        v30 = v31;
        v32 = *(v31 + 8);
        if (v32 == 1)
        {
          v33 = *(v30 + 10);
          if (v29 >= v33)
          {
            if (v33 >= v29)
            {
              goto LABEL_72;
            }

            goto LABEL_68;
          }

LABEL_62:
          v31 = *v30;
          v5 = v30;
          if (!*v30)
          {
            goto LABEL_72;
          }
        }

        else
        {
          if (v32 > 1)
          {
            goto LABEL_62;
          }

LABEL_68:
          v5 = v30 + 1;
          v31 = v30[1];
          if (!v31)
          {
            goto LABEL_72;
          }
        }
      }
    }

    v34 = *(v30 + 8);
    while (v6 != v34)
    {
      if (v6 < v34)
      {
        v35 = *v30;
        v5 = v30;
        if (!*v30)
        {
          break;
        }
      }

      else
      {
        if (v34 >= v6)
        {
          break;
        }

        v5 = v30 + 1;
        v35 = v30[1];
        if (!v35)
        {
          break;
        }
      }

      v34 = *(v35 + 32);
      v30 = v35;
    }
  }

  else
  {
    v30 = a1 + 1;
  }

LABEL_72:
  *a3 = v30;
  return v5;
}

uint64_t *std::list<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>>::~list(uint64_t *a1)
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

atomic_uint *boost::detail::sp_pointer_construct<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>>,boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>>>(uint64_t a1, uint64_t a2, atomic_uint **a3)
{
  result = operator new(0x18uLL);
  *(result + 1) = 0x100000001;
  *result = &unk_2A1E2B5A0;
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

void sub_2971296EC(void *a1)
{
  __cxa_begin_catch(a1);
  boost::checked_delete<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>>>(v1);
  __cxa_rethrow();
}

void boost::checked_delete<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>>>(uint64_t *a1)
{
  if (a1)
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

    operator delete(a1);
  }
}

void boost::detail::sp_counted_impl_p<boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>>>::dispose(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy((v1 + 3), v1[4]);
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

void *boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>>::erase(void *a1, int *a2, uint64_t **a3)
{
  v6 = a1 + 4;
  v5 = a1[4];
  if (!v5)
  {
    if (a1[10] != *a3)
    {
      goto LABEL_50;
    }

    v17 = (*a3)[1];
    v9 = v6;
    v21 = (v6 - 1);
    if (v17 != a1)
    {
LABEL_41:
      v35 = a2;
      std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>,void *>>>>::__emplace_unique_key_args<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::piecewise_construct_t const&,std::tuple<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>> const&>,std::tuple<>>(v21, a2, &std::piecewise_construct, &v35)[6] = v17;
      goto LABEL_50;
    }

    goto LABEL_28;
  }

  v7 = *a2;
  v8 = a2[2];
  v9 = v6;
  v10 = v5;
  if (*a2 == 1)
  {
    do
    {
      while (1)
      {
        v15 = *(v10 + 8);
        v16 = v15 < 1;
        if (v15 == 1)
        {
          v16 = *(v10 + 10) < v8;
        }

        if (!v16)
        {
          break;
        }

        v10 = v10[1];
        if (!v10)
        {
          goto LABEL_16;
        }
      }

      v9 = v10;
      v10 = *v10;
    }

    while (v10);
  }

  else
  {
    do
    {
      v11 = *(v10 + 8);
      v12 = v11 == v7;
      v16 = v11 < v7;
      v13 = v11 < v7;
      if (v16)
      {
        v14 = v9;
      }

      else
      {
        v14 = v10;
      }

      if (v12)
      {
        v13 = 0;
        v9 = v10;
      }

      else
      {
        v9 = v14;
      }

      v10 = v10[v13];
    }

    while (v10);
  }

LABEL_16:
  if (v9[6] == *a3)
  {
    v17 = (*a3)[1];
    if (v7 == 1)
    {
      v18 = v6;
      v19 = v5;
      while (1)
      {
        v20 = *(v19 + 8);
        if (v20 == 1)
        {
          if (v8 < *(v19 + 10))
          {
            goto LABEL_24;
          }

LABEL_19:
          v19 = v19[1];
          if (!v19)
          {
            goto LABEL_39;
          }
        }

        else
        {
          if (v20 <= 1)
          {
            goto LABEL_19;
          }

LABEL_24:
          v18 = v19;
          v19 = *v19;
          if (!v19)
          {
            goto LABEL_39;
          }
        }
      }
    }

    v18 = v6;
    v24 = v5;
    do
    {
      v25 = *(v24 + 8);
      v26 = v7 == v25;
      v16 = v7 < v25;
      v27 = v7 >= v25;
      if (v16)
      {
        v28 = v24;
      }

      else
      {
        v28 = v18;
      }

      if (v26)
      {
        v27 = 1;
      }

      else
      {
        v18 = v28;
      }

      v24 = v24[v27];
    }

    while (v24);
LABEL_39:
    if (v18 == v6)
    {
      v21 = (v6 - 1);
      if (v17 != a1)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v21 = (v6 - 1);
      if (v17 != v18[6])
      {
        goto LABEL_41;
      }
    }

LABEL_28:
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
      v29 = v9;
      do
      {
        v23 = v29[2];
        v12 = *v23 == v29;
        v29 = v23;
      }

      while (!v12);
    }

    if (*v21 == v9)
    {
      *v21 = v23;
    }

    --a1[5];
    std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v5, v9);
    operator delete(v9);
  }

LABEL_50:
  v30 = *a3;
  v31 = **a3;
  v32 = (*a3)[1];
  *(v31 + 8) = v32;
  *v32 = v31;
  --a1[2];
  v33 = v30[3];
  if (v33)
  {
    if (atomic_fetch_add(v33 + 2, 0xFFFFFFFF) == 1)
    {
      (*(*v33 + 16))(v33);
      if (atomic_fetch_add(v33 + 3, 0xFFFFFFFF) == 1)
      {
        (*(*v33 + 24))(v33);
      }
    }
  }

  operator delete(v30);
  return v32;
}

uint64_t *std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>,void *>>>>::__emplace_unique_key_args<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::piecewise_construct_t const&,std::tuple<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>> const&>,std::tuple<>>(uint64_t **a1, int *a2, uint64_t a3, void **a4)
{
  v7 = (a1 + 1);
  v6 = a1[1];
  if (v6)
  {
    v8 = *a2;
    if (*a2 != 1)
    {
      v13 = *(v6 + 8);
      if (v8 == v13)
      {
        return v6;
      }

      v10 = a1[1];
      while (1)
      {
        if (v8 < v13)
        {
          v6 = *v10;
          v7 = v10;
          if (!*v10)
          {
            goto LABEL_22;
          }
        }

        else
        {
          if (v13 >= v8)
          {
            return v10;
          }

          v6 = v10[1];
          if (!v6)
          {
LABEL_21:
            v7 = v10 + 1;
            goto LABEL_22;
          }
        }

        v13 = *(v6 + 8);
        v10 = v6;
        if (v8 == v13)
        {
          return v6;
        }
      }
    }

    v9 = a2[2];
    while (1)
    {
      v10 = v6;
      v11 = *(v6 + 8);
      if (v11 == 1)
      {
        v12 = *(v6 + 10);
        if (v9 >= v12)
        {
          if (v12 >= v9)
          {
            return v10;
          }

          goto LABEL_10;
        }

LABEL_4:
        v6 = *v6;
        v7 = v10;
        if (!*v10)
        {
          goto LABEL_22;
        }
      }

      else
      {
        if (v11 > 1)
        {
          goto LABEL_4;
        }

LABEL_10:
        v6 = v6[1];
        if (!v6)
        {
          goto LABEL_21;
        }
      }
    }
  }

  v10 = (a1 + 1);
LABEL_22:
  v15 = operator new(0x38uLL);
  v16 = *(*a4 + 2);
  v15[4] = **a4;
  *(v15 + 10) = v16;
  v15[6] = 0;
  *v15 = 0;
  v15[1] = 0;
  v15[2] = v10;
  *v7 = v15;
  v17 = **a1;
  if (v17)
  {
    *a1 = v17;
  }

  std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], v15);
  a1[2] = (a1[2] + 1);
  return v15;
}

uint64_t boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>::connection_body(uint64_t a1, uint64_t a2, void *a3)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 28) = 1;
  *a1 = &unk_2A1E2B350;
  v6 = operator new(0x38uLL);
  std::vector<boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>>::vector[abi:ne200100](v6, a2);
  v6[3] = 0;
  v7 = *(a2 + 24);
  if (v7)
  {
    v6[3] = v7;
    if (v7)
    {
      *(v6 + 2) = *(a2 + 32);
      v6[6] = *(a2 + 48);
    }

    else
    {
      (*v7)(a2 + 32, v6 + 32, 0);
    }
  }

  *(a1 + 40) = 0;
  *(a1 + 32) = v6;
  boost::detail::sp_pointer_construct<boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>>(a1 + 32, v6, (a1 + 40));
  v8 = a3[1];
  *(a1 + 48) = *a3;
  *(a1 + 56) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1u, memory_order_relaxed);
  }

  *(a1 + 64) = 0;
  *(a1 + 68) = 0;
  return a1;
}

void sub_297129ED4(_Unwind_Exception *a1)
{
  boost::signals2::slot_base::~slot_base(v3);
  operator delete(v3);
  *v1 = &unk_2A1E24C40;
  boost::weak_ptr<void>::~weak_ptr(v2);
  _Unwind_Resume(a1);
}

void sub_297129F54(_Unwind_Exception *a1)
{
  *v1 = &unk_2A1E24C40;
  boost::weak_ptr<void>::~weak_ptr(v2);
  _Unwind_Resume(a1);
}

void boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>::~connection_body(void *a1)
{
  v1 = boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>::~connection_body(a1);

  operator delete(v1);
}

uint64_t boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>::connected(uint64_t a1)
{
  v15 = *MEMORY[0x29EDCA608];
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v10[8] = v2;
  v10[9] = v2;
  v10[6] = v2;
  v10[7] = v2;
  v10[4] = v2;
  v10[5] = v2;
  v10[2] = v2;
  v10[3] = v2;
  v10[0] = v2;
  v10[1] = v2;
  v3 = *(a1 + 48);
  v11 = 10;
  __p = v10;
  v13 = 0;
  v14 = v3;
  pthread_mutex_lock(v3);
  boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>::nolock_grab_tracked_objects<boost::signals2::mutex,boost::iterators::function_output_iterator<boost::signals2::detail::does_nothing>>(a1, v10);
  v4 = *(a1 + 24);
  pthread_mutex_unlock(v14);
  v5 = __p;
  if (__p)
  {
    if (v13 > 0)
    {
      v8 = __p + 16 * v13;
      do
      {
        v9 = *(v8 - 1);
        if (v9)
        {
          if (atomic_fetch_add(v9 + 2, 0xFFFFFFFF) == 1)
          {
            (*(*v9 + 16))(v9);
            if (atomic_fetch_add(v9 + 3, 0xFFFFFFFF) == 1)
            {
              (*(*v9 + 24))(v9);
            }
          }
        }

        v8 -= 16;
      }

      while (v8 > v5);
    }

    if (v11 >= 0xB)
    {
      operator delete(__p);
    }
  }

  v6 = *MEMORY[0x29EDCA608];
  return v4;
}

void sub_29712A124(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>::release_slot@<X0>(uint64_t result@<X0>, void *a2@<X8>)
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

atomic_uint *boost::detail::sp_pointer_construct<boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>>(uint64_t a1, uint64_t a2, atomic_uint **a3)
{
  result = operator new(0x18uLL);
  *(result + 1) = 0x100000001;
  *result = &unk_2A1E2B3A8;
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

void sub_29712A314(void *a1)
{
  __cxa_begin_catch(a1);
  boost::checked_delete<boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>>(v1);
  __cxa_rethrow();
}

void boost::checked_delete<boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>>(void **__p)
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

void boost::detail::sp_counted_impl_p<boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>>::dispose(uint64_t a1)
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

void *boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>::~connection_body(void *a1)
{
  *a1 = &unk_2A1E2B350;
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

void boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>::nolock_grab_tracked_objects<boost::signals2::mutex,boost::iterators::function_output_iterator<boost::signals2::detail::does_nothing>>(uint64_t a1, uint64_t a2)
{
  v10[3] = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *v2;
    if (*v2 != v2[1])
    {
      while (1)
      {
        memset(v10, 170, 24);
        boost::variant<boost::weak_ptr<boost::signals2::detail::trackable_pointee>,boost::weak_ptr<void>,boost::signals2::detail::foreign_void_weak_ptr>::apply_visitor<boost::signals2::detail::lock_weak_ptr_visitor const>(v3, v10);
        if ((*v3 ^ (*v3 >> 31)) == 2)
        {
          if (!(*(**(v3 + 8) + 24))(*(v3 + 8)))
          {
            goto LABEL_6;
          }
        }

        else
        {
          v6 = *(v3 + 16);
          if (v6 && atomic_load_explicit((v6 + 8), memory_order_acquire))
          {
LABEL_6:
            v7 = 0;
            if (LODWORD(v10[0]) == SLODWORD(v10[0]) >> 31)
            {
              goto LABEL_13;
            }

            goto LABEL_7;
          }
        }

        if (*(a1 + 24) == 1)
        {
          *(a1 + 24) = 0;
          boost::signals2::detail::connection_body_base::dec_slot_refcount<boost::signals2::mutex>(a1, a2);
        }

        v7 = 1;
        if (LODWORD(v10[0]) == SLODWORD(v10[0]) >> 31)
        {
LABEL_13:
          v8 = v10[2];
          if (v10[2])
          {
            if (atomic_fetch_add((v10[2] + 8), 0xFFFFFFFF) == 1)
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
        if (v10[1])
        {
          (*(*v10[1] + 8))(v10[1]);
        }

LABEL_17:
        if ((v7 & 1) == 0)
        {
          v3 += 24;
          if (v3 != *(*(a1 + 32) + 8))
          {
            continue;
          }
        }

        break;
      }
    }
  }

  v9 = *MEMORY[0x29EDCA608];
}

void sub_29712A860(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

atomic_uint *boost::detail::sp_pointer_construct<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>,boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>(uint64_t a1, uint64_t a2, atomic_uint **a3)
{
  result = operator new(0x18uLL);
  *(result + 1) = 0x100000001;
  *result = &unk_2A1E2B408;
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

void sub_29712A980(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  __cxa_rethrow();
}

uint64_t boost::detail::sp_counted_impl_p<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>::dispose(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t *boost::signals2::detail::grouped_list<int,std::less<int>,boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>>::m_insert(uint64_t a1, uint64_t *a2, int *a3, uint64_t *a4)
{
  v8 = *a2;
  v9 = (a1 + 32);
  v10 = a1;
  if (*a2 != a1 + 32)
  {
    v10 = *(v8 + 48);
  }

  result = operator new(0x20uLL);
  v12 = a4[1];
  result[2] = *a4;
  result[3] = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1u, memory_order_relaxed);
    v8 = *a2;
  }

  v13 = *v10;
  *(v13 + 8) = result;
  *result = v13;
  *v10 = result;
  result[1] = v10;
  ++*(a1 + 16);
  if (v8 == v9)
  {
    goto LABEL_14;
  }

  v14 = *a3;
  v15 = *(v8 + 32);
  v16 = *a3 < v15;
  if (*a3 == v15)
  {
    if (v14 != 1)
    {
      goto LABEL_16;
    }

    v14 = a3[2];
    v15 = *(v8 + 40);
    v16 = v14 < v15;
  }

  if (v16 || v15 < v14)
  {
LABEL_14:
    v18 = *v9;
    if (*v9)
    {
      goto LABEL_25;
    }

LABEL_45:
    v34 = *a3;
    v35 = a3[2];
    v36 = result;
    return std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>,void *>>>>::__emplace_unique_key_args<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::pair<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>> const,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>,void *>>>((a1 + 24), &v34, &v34);
  }

LABEL_16:
  v19 = *(v8 + 8);
  if (v19)
  {
    do
    {
      v20 = v19;
      v19 = *v19;
    }

    while (v19);
  }

  else
  {
    v21 = v8;
    do
    {
      v20 = v21[2];
      v28 = *v20 == v21;
      v21 = v20;
    }

    while (!v28);
  }

  v22 = result;
  if (*(a1 + 24) == v8)
  {
    *(a1 + 24) = v20;
  }

  v23 = *(a1 + 32);
  --*(a1 + 40);
  std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v23, v8);
  operator delete(v8);
  result = v22;
  v18 = *v9;
  if (!*v9)
  {
    goto LABEL_45;
  }

LABEL_25:
  v24 = *a3;
  v25 = a3[2];
  v26 = v9;
  if (*a3 == 1)
  {
    do
    {
      while (1)
      {
        v30 = *(v18 + 8);
        v31 = v30 < 1;
        if (v30 == 1)
        {
          v31 = *(v18 + 10) < v25;
        }

        if (!v31)
        {
          break;
        }

        v18 = v18[1];
        if (!v18)
        {
          goto LABEL_37;
        }
      }

      v26 = v18;
      v18 = *v18;
    }

    while (v18);
  }

  else
  {
    do
    {
      v27 = *(v18 + 8);
      v28 = v27 == v24;
      v16 = v27 < v24;
      v29 = v27 < v24;
      if (!v16)
      {
        v26 = v18;
      }

      if (v28)
      {
        v29 = 0;
        v26 = v18;
      }

      v18 = v18[v29];
    }

    while (v18);
  }

LABEL_37:
  if (v26 == v9 || *(v26 + 8) != v24)
  {
    goto LABEL_45;
  }

  if (v24 == 1)
  {
    v32 = *(v26 + 10);
    if (v32 < v25 || v25 < v32)
    {
      goto LABEL_45;
    }
  }

  return result;
}

uint64_t *std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>,void *>>>>::__emplace_unique_key_args<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::pair<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>> const,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>,void *>>>(uint64_t **a1, int *a2, uint64_t a3)
{
  v6 = (a1 + 1);
  v5 = a1[1];
  if (v5)
  {
    v7 = *a2;
    if (*a2 != 1)
    {
      v12 = *(v5 + 8);
      if (v7 == v12)
      {
        return v5;
      }

      v9 = a1[1];
      while (1)
      {
        if (v7 < v12)
        {
          v5 = *v9;
          v6 = v9;
          if (!*v9)
          {
            goto LABEL_22;
          }
        }

        else
        {
          if (v12 >= v7)
          {
            return v9;
          }

          v5 = v9[1];
          if (!v5)
          {
LABEL_21:
            v6 = v9 + 1;
            goto LABEL_22;
          }
        }

        v12 = *(v5 + 8);
        v9 = v5;
        if (v7 == v12)
        {
          return v5;
        }
      }
    }

    v8 = a2[2];
    while (1)
    {
      v9 = v5;
      v10 = *(v5 + 8);
      if (v10 == 1)
      {
        v11 = *(v5 + 10);
        if (v8 >= v11)
        {
          if (v11 >= v8)
          {
            return v9;
          }

          goto LABEL_10;
        }

LABEL_4:
        v5 = *v5;
        v6 = v9;
        if (!*v9)
        {
          goto LABEL_22;
        }
      }

      else
      {
        if (v10 > 1)
        {
          goto LABEL_4;
        }

LABEL_10:
        v5 = v5[1];
        if (!v5)
        {
          goto LABEL_21;
        }
      }
    }
  }

  v9 = (a1 + 1);
LABEL_22:
  v14 = operator new(0x38uLL);
  v14[2] = *a3;
  *(v14 + 6) = *(a3 + 16);
  *v14 = 0;
  *(v14 + 1) = 0;
  *(v14 + 2) = v9;
  *v6 = v14;
  v15 = **a1;
  if (v15)
  {
    *a1 = v15;
  }

  std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], v14);
  a1[2] = (a1[2] + 1);
  return v14;
}

uint64_t boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>,boost::signals2::mutex>>::~shared_ptr(uint64_t result)
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

void boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>::init_slot_function<ctu::DispatchSlot<dispatch::block<void({block_pointer})(BOOL)>>>(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v3 = *(a2 + 8);
  object = *a2;
  if (v3)
  {
    v3 = _Block_copy(v3);
  }

  aBlock = v3;
  dispatch_retain(v4);
  boost::function<void ()(BOOL)>::operator=<ctu::DispatchSlot<dispatch::block<void({block_pointer})(BOOL)>>>(a1 + 24, &object);
  dispatch_release(object);
  if (aBlock)
  {
    _Block_release(aBlock);
  }
}

void (***boost::function<void ()(BOOL)>::~function(void (***result)(void, void, void)))(void, void, void)
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

uint64_t boost::function<void ()(BOOL)>::operator=<ctu::DispatchSlot<dispatch::block<void({block_pointer})(BOOL)>>>(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v3 = *(a2 + 8);
  object = *a2;
  if (v3)
  {
    v3 = _Block_copy(v3);
  }

  aBlock = v3;
  dispatch_retain(v4);
  boost::function<void ()(BOOL)>::function<ctu::DispatchSlot<dispatch::block<void({block_pointer})(BOOL)>>>(&v8, &object);
  boost::function1<void,BOOL>::swap(&v8, a1);
  if (v8)
  {
    if ((v8 & 1) == 0 && *v8)
    {
      (*v8)(v9, v9, 2);
    }

    v8 = 0;
  }

  dispatch_release(object);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  return a1;
}

void sub_29712AFD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void (**a11)(void, void, void))
{
  boost::function<void ()(BOOL)>::~function(&a11);
  ctu::DispatchSlot<dispatch::block<void({block_pointer})(BOOL)>>::~DispatchSlot(&a9);
  _Unwind_Resume(a1);
}

uint64_t boost::function1<void,BOOL>::swap(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v3 = result;
    v4 = 0;
    memset(v5, 170, sizeof(v5));
    boost::function1<void,BOOL>::move_assign(&v4, result);
    boost::function1<void,BOOL>::move_assign(v3, a2);
    result = boost::function1<void,BOOL>::move_assign(a2, &v4);
    if (v4)
    {
      if ((v4 & 1) == 0)
      {
        if (*v4)
        {
          return (*v4)(v5, v5, 2);
        }
      }
    }
  }

  return result;
}

void *boost::function<void ()(BOOL)>::function<ctu::DispatchSlot<dispatch::block<void({block_pointer})(BOOL)>>>(void *a1, uint64_t a2)
{
  v4 = *a2;
  v3 = *(a2 + 8);
  object = *a2;
  if (v3)
  {
    v3 = _Block_copy(v3);
  }

  aBlock = v3;
  dispatch_retain(v4);
  boost::function1<void,BOOL>::function1<ctu::DispatchSlot<dispatch::block<void({block_pointer})(BOOL)>>>(a1, &object);
  dispatch_release(object);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  return a1;
}

void *boost::function1<void,BOOL>::function1<ctu::DispatchSlot<dispatch::block<void({block_pointer})(BOOL)>>>(void *a1, uint64_t a2)
{
  *a1 = 0;
  v4 = *a2;
  v3 = *(a2 + 8);
  object = *a2;
  if (v3)
  {
    v3 = _Block_copy(v3);
  }

  aBlock = v3;
  dispatch_retain(v4);
  boost::function1<void,BOOL>::assign_to<ctu::DispatchSlot<dispatch::block<void({block_pointer})(BOOL)>>>(a1, &object);
  dispatch_release(object);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  return a1;
}

void boost::function1<void,BOOL>::assign_to<ctu::DispatchSlot<dispatch::block<void({block_pointer})(BOOL)>>>(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v3 = *(a2 + 8);
  object = *a2;
  if (v3)
  {
    v3 = _Block_copy(v3);
  }

  aBlock = v3;
  dispatch_retain(v4);
  v5 = boost::detail::function::basic_vtable1<void,BOOL>::assign_to<ctu::DispatchSlot<dispatch::block<void({block_pointer})(BOOL)>>>(boost::function1<void,BOOL>::assign_to<ctu::DispatchSlot<dispatch::block<void({block_pointer})(BOOL)>>>(ctu::DispatchSlot<dispatch::block<void({block_pointer})(BOOL)>>)::stored_vtable, &object, (a1 + 8));
  dispatch_release(object);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v5)
  {
    v6 = boost::function1<void,BOOL>::assign_to<ctu::DispatchSlot<dispatch::block<void({block_pointer})(BOOL)>>>(ctu::DispatchSlot<dispatch::block<void({block_pointer})(BOOL)>>)::stored_vtable;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
}

void boost::detail::function::functor_manager<ctu::DispatchSlot<dispatch::block<void({block_pointer})(BOOL)>>>::manage(uint64_t a1, _WORD *a2, unsigned int a3)
{
  if (a3 == 4)
  {
    a2[4] = 0;
  }

  else
  {
    boost::detail::function::functor_manager_common<ctu::DispatchSlot<dispatch::block<void({block_pointer})(BOOL)>>>::manage_small(a1, a2, a3);
  }
}

uint64_t boost::detail::function::basic_vtable1<void,BOOL>::assign_to<ctu::DispatchSlot<dispatch::block<void({block_pointer})(BOOL)>>>(uint64_t a1, uint64_t a2, NSObject **a3)
{
  v6 = *a2;
  v5 = *(a2 + 8);
  object = *a2;
  if (v5)
  {
    v5 = _Block_copy(v5);
  }

  aBlock = v5;
  dispatch_retain(v6);
  v7 = boost::detail::function::basic_vtable1<void,BOOL>::assign_to<ctu::DispatchSlot<dispatch::block<void({block_pointer})(BOOL)>>>(a1, &object, a3);
  dispatch_release(object);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  return v7;
}

{
  v5 = *a2;
  v4 = *(a2 + 8);
  if (!v4)
  {
    dispatch_retain(*a2);
    *a3 = v5;
    goto LABEL_5;
  }

  v6 = _Block_copy(v4);
  dispatch_retain(v5);
  *a3 = v5;
  if (!v6)
  {
LABEL_5:
    a3[1] = 0;
    dispatch_retain(v5);
    dispatch_release(v5);
    return 1;
  }

  v7 = _Block_copy(v6);
  v8 = *a3;
  a3[1] = v7;
  dispatch_retain(v8);
  dispatch_release(v5);
  _Block_release(v6);
  return 1;
}

void boost::detail::function::functor_manager_common<ctu::DispatchSlot<dispatch::block<void({block_pointer})(BOOL)>>>::manage_small(uint64_t a1, _WORD *a2, unsigned int a3)
{
  if (a3 > 1)
  {
    if (a3 == 3)
    {
      v9 = (*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL);
      if (v9 == (0x800000029722B7F1 & 0x7FFFFFFFFFFFFFFFLL) || !strcmp(v9, (0x800000029722B7F1 & 0x7FFFFFFFFFFFFFFFLL)))
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
        a2[4] = 0;
        return;
      }

      dispatch_release(*a2);
      v8 = *(a2 + 1);
      if (v8)
      {
        goto LABEL_6;
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
LABEL_6:
        _Block_release(v8);
      }
    }
  }
}

uint64_t boost::function1<void,BOOL>::move_assign(uint64_t result, uint64_t a2)
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

void sub_29712B5B8(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_rethrow();
}

void (***boost::function1<void,BOOL>::~function1(void (***result)(void, void, void)))(void, void, void)
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

uint64_t boost::signals2::detail::foreign_weak_ptr_impl<std::weak_ptr<data::TransportService::State>>::~foreign_weak_ptr_impl(uint64_t result)
{
  *result = &unk_2A1E2B4A8;
  if (*(result + 16))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 16));
    return v1;
  }

  return result;
}

void boost::signals2::detail::foreign_weak_ptr_impl<std::weak_ptr<data::TransportService::State>>::~foreign_weak_ptr_impl(std::__shared_weak_count **a1)
{
  *a1 = &unk_2A1E2B4A8;
  if (a1[2])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[2]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

void *boost::signals2::detail::foreign_weak_ptr_impl<std::weak_ptr<data::TransportService::State>>::clone(uint64_t a1)
{
  result = operator new(0x18uLL);
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  *result = &unk_2A1E2B4A8;
  result[1] = v4;
  result[2] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void *boost::signals2::detail::foreign_shared_ptr_impl<std::shared_ptr<data::TransportService::State>>::~foreign_shared_ptr_impl(void *result)
{
  *result = &unk_2A1E2B4F8;
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

void **boost::signals2::slot<void ()(BOOL),boost::function<void ()(BOOL)>>::~slot(void **a1)
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

void data::TransportService::State::unblockThrottling_sync(data::TransportService::State *this)
{
  v17 = *MEMORY[0x29EDCA608];
  v2 = *(this + 4);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v13) = 0;
    _os_log_impl(&dword_296FF7000, v2, OS_LOG_TYPE_DEFAULT, "#I Disabling throttling", &v13, 2u);
  }

  if (*(this + 10))
  {
    v3 = *(this + 4);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_296FF7000, v3, OS_LOG_TYPE_DEFAULT, "#I Stop Listening for UI events", &v13, 2u);
    }

    v4 = *(this + 11);
    *(this + 10) = 0;
    *(this + 11) = 0;
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }
  }

  v5 = *(this + 12);
  if (v5)
  {
    dispatch_source_cancel(v5);
    v6 = *(this + 12);
    *(this + 12) = 0;
    if (v6)
    {
      dispatch_release(v6);
    }

    v7 = *(this + 4);
    v5 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_296FF7000, v7, OS_LOG_TYPE_DEFAULT, "#I Limit timer stopped", &v13, 2u);
    }
  }

  if (*(this + 10) != 1)
  {
    goto LABEL_21;
  }

  if (*(this + 12) == 1)
  {
    v8 = *(this + 4);
    v5 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      v13 = 136315394;
      v14 = "Throttled";
      v15 = 2080;
      v16 = "Idle";
      _os_log_impl(&dword_296FF7000, v8, OS_LOG_TYPE_DEFAULT, "#I State changing from %s to %s", &v13, 0x16u);
    }

    *(this + 12) = 0;
  }

  Instance = ApplePDPHelperInterface::getInstance(v5);
  if ((ApplePDPHelperInterface::activateLowPowerPDPThrottle(Instance) & 1) == 0 && (v10 = *(this + 4), os_log_type_enabled(v10, OS_LOG_TYPE_ERROR)))
  {
    LOWORD(v13) = 0;
    _os_log_error_impl(&dword_296FF7000, v10, OS_LOG_TYPE_ERROR, "Failed to disable flow for throttling", &v13, 2u);
    v12 = *MEMORY[0x29EDCA608];
  }

  else
  {
LABEL_21:
    v11 = *MEMORY[0x29EDCA608];
  }
}

void ___ZN4data16TransportService5State13enterLowPowerEv_block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  v2 = *(v1 + 96);
  if (v2)
  {
    dispatch_source_cancel(v2);
    v3 = *(v1 + 96);
    *(v1 + 96) = 0;
    if (v3)
    {
      dispatch_release(v3);
    }

    v4 = *(v1 + 32);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_296FF7000, v4, OS_LOG_TYPE_DEFAULT, "#I Limit timer stopped", &v10, 2u);
    }
  }

  v5 = *(v1 + 48);
  if (v5 >= 2)
  {
    if (v5 == 2)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v6 = *(v1 + 32);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = "Idle";
      if (v5 == 1)
      {
        v7 = "Throttled";
      }

      v10 = 136315394;
      v11 = v7;
      v12 = 2080;
      v13 = "LowPower";
      _os_log_impl(&dword_296FF7000, v6, OS_LOG_TYPE_DEFAULT, "#I State changing from %s to %s", &v10, 0x16u);
    }

    *(v1 + 48) = 2;
  }

  v8 = *(v1 + 32);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v10) = 0;
    _os_log_impl(&dword_296FF7000, v8, OS_LOG_TYPE_DEFAULT, "#I Entered low power", &v10, 2u);
  }

LABEL_15:
  v9 = *MEMORY[0x29EDCA608];
}

void ___ZN4data16TransportService5State20startLimitTimer_syncEv_block_invoke(void *a1)
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
        v6 = *(v3 + 4);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *v7 = 0;
          _os_log_impl(&dword_296FF7000, v6, OS_LOG_TYPE_DEFAULT, "#I Limit timer expired", v7, 2u);
        }

        data::TransportService::State::unblockThrottling_sync(v3);
      }

      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }
}

void sub_29712BD40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_40c54_ZTSNSt3__18weak_ptrIN4data16TransportService5StateEEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c54_ZTSNSt3__18weak_ptrIN4data16TransportService5StateEEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZN4data16TransportService5State9setConfigENS0_16ThrottlingConfigE_block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT) && ((data::TransportService::ThrottlingConfig::asString((a1 + 40), __p), v14 >= 0) ? (v4 = __p) : (v4 = __p[0]), *buf = 136315138, v16 = v4, _os_log_impl(&dword_296FF7000, v3, OS_LOG_TYPE_DEFAULT, "#I Config set to %s", buf, 0xCu), v14 < 0))
  {
    operator delete(__p[0]);
    v5 = *(v2 + 40);
    v6 = *(a1 + 40);
    if (v5 == v6)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v5 = *(v2 + 40);
    v6 = *(a1 + 40);
    if (v5 == v6)
    {
      goto LABEL_13;
    }
  }

  *(v2 + 40) = v6;
  v7 = *(v2 + 32);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    LODWORD(__p[0]) = 67109120;
    HIDWORD(__p[0]) = v6;
    _os_log_impl(&dword_296FF7000, v7, OS_LOG_TYPE_DEFAULT, "#I Throttling %d", __p, 8u);
  }

  Instance = ApplePDPHelperInterface::getInstance(v8);
  if ((ApplePDPHelperInterface::enableLowPowerPDPThrottle(Instance) & 1) == 0)
  {
    v10 = *(v2 + 32);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      LODWORD(__p[0]) = 67109120;
      HIDWORD(__p[0]) = v6;
      _os_log_error_impl(&dword_296FF7000, v10, OS_LOG_TYPE_ERROR, "Failed setting throttling to %d", __p, 8u);
    }
  }

  v5 = *(a1 + 40);
LABEL_13:
  if (v5 == 1)
  {
    v11 = *(a1 + 44);
    if (*(v2 + 44) != v11)
    {
      *(v2 + 44) = v11;
      if (*(v2 + 96))
      {
        data::TransportService::State::startLimitTimer_sync(v2);
      }
    }
  }

  v12 = *MEMORY[0x29EDCA608];
}

void ___ZNK4data16TransportService5State9dumpStateEv_block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x29EDCA608];
  v1 = *(a1 + 32);
  v2 = *(v1 + 32);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    data::TransportService::ThrottlingConfig::asString((v1 + 40), __p);
    if (v15 >= 0)
    {
      v3 = __p;
    }

    else
    {
      v3 = *__p;
    }

    *buf = 136315138;
    *&buf[4] = v3;
    _os_log_impl(&dword_296FF7000, v2, OS_LOG_TYPE_DEFAULT, "#I Config: %s", buf, 0xCu);
    if (v15 < 0)
    {
      operator delete(*__p);
    }

    v2 = *(v1 + 32);
  }

  v4 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    v5 = *(v1 + 48);
    if (v5 > 2)
    {
      v6 = "???";
    }

    else
    {
      v6 = off_29EE64828[v5];
    }

    *__p = 136315138;
    *&__p[4] = v6;
    _os_log_impl(&dword_296FF7000, v2, OS_LOG_TYPE_DEFAULT, "#I Low Power State %s", __p, 0xCu);
  }

  memset(buf, 0, 12);
  ApplePDPHelperInterface::getInstance(v4);
  NumLowPowerPDPThrottleStats = ApplePDPHelperInterface::getNumLowPowerPDPThrottleStats();
  v8 = *(v1 + 32);
  if (NumLowPowerPDPThrottleStats)
  {
    if (os_log_type_enabled(*(v1 + 32), OS_LOG_TYPE_DEFAULT))
    {
      *__p = 67109632;
      *&__p[4] = *buf;
      *&__p[8] = 1024;
      *&__p[10] = *&buf[4];
      v13 = 1024;
      v14 = *&buf[8];
      _os_log_impl(&dword_296FF7000, v8, OS_LOG_TYPE_DEFAULT, "#I Blocked outgoing packets: %u, non-baseband wakes: %u, incoming traffic deactivations: %u", __p, 0x14u);
      v9 = *MEMORY[0x29EDCA608];
      return;
    }
  }

  else if (os_log_type_enabled(*(v1 + 32), OS_LOG_TYPE_ERROR))
  {
    *__p = 0;
    _os_log_error_impl(&dword_296FF7000, v8, OS_LOG_TYPE_ERROR, "Failed to query throttle stats", __p, 2u);
    v11 = *MEMORY[0x29EDCA608];
    return;
  }

  v10 = *MEMORY[0x29EDCA608];
}

void ___ZN4data16TransportService5State17unblockThrottlingEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 4);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_296FF7000, v2, OS_LOG_TYPE_DEFAULT, "#I Unblocking throttling", v3, 2u);
  }

  data::TransportService::State::unblockThrottling_sync(v1);
}

void LegacyAccessoryManager::create(LegacyAccessoryManager *this@<X0>, const char *a2@<X1>, queue a3@<0:X2>, LegacyAccessoryManager **a4@<X8>)
{
  v7 = operator new(0x78uLL);
  v8 = *a2;
  v20 = v8;
  if (v8)
  {
    dispatch_retain(v8);
  }

  v9.fObj.fObj = &v20;
  LegacyAccessoryManager::LegacyAccessoryManager(v7, this, v9);
  v21 = v7;
  *buf = v7;
  v10 = operator new(0x20uLL);
  v10[1] = 0;
  v11 = v10 + 1;
  *v10 = &unk_2A1E2B6C0;
  v10[2] = 0;
  v10[3] = v7;
  v22 = v10;
  *buf = 0;
  v12 = *(v7 + 2);
  if (!v12)
  {
    atomic_fetch_add_explicit(v10 + 1, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(v10 + 2, 1uLL, memory_order_relaxed);
    *(v7 + 1) = v7;
    *(v7 + 2) = v10;
    if (atomic_fetch_add(v11, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (v12->__shared_owners_ == -1)
  {
    atomic_fetch_add_explicit(v10 + 1, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(v10 + 2, 1uLL, memory_order_relaxed);
    *(v7 + 1) = v7;
    *(v7 + 2) = v10;
    v13 = v10;
    std::__shared_weak_count::__release_weak(v12);
    v10 = v13;
    if (!atomic_fetch_add(v11, 0xFFFFFFFFFFFFFFFFLL))
    {
LABEL_8:
      v14 = v10;
      (*(*v10 + 16))();
      std::__shared_weak_count::__release_weak(v14);
    }
  }

LABEL_9:
  if (*buf)
  {
    LegacyAccessoryManager::~LegacyAccessoryManager(*buf);
    operator delete(v15);
  }

  if (v8)
  {
    dispatch_release(v8);
  }

  v16 = v21;
  if (v21 && LegacyAccessoryManager::init(v21))
  {
    v17 = v22;
    *a4 = v16;
    a4[1] = v17;
    return;
  }

  {
    GetOsLogContext(void)::sOsLogContext = 0;
    qword_2A18B7680 = 0;
  }

  if (GetOsLogContext(void)::onceToken == -1)
  {
    v18 = qword_2A18B7680;
    if (!os_log_type_enabled(qword_2A18B7680, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

LABEL_24:
    *buf = 0;
    _os_log_error_impl(&dword_296FF7000, v18, OS_LOG_TYPE_ERROR, "Failed to create OBD Manager!", buf, 2u);
    *a4 = 0;
    a4[1] = 0;
    v19 = v22;
    if (!v22)
    {
      return;
    }

    goto LABEL_20;
  }

  dispatch_once(&GetOsLogContext(void)::onceToken, &__block_literal_global_16);
  v18 = qword_2A18B7680;
  if (os_log_type_enabled(qword_2A18B7680, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_24;
  }

LABEL_19:
  *a4 = 0;
  a4[1] = 0;
  v19 = v22;
  if (!v22)
  {
    return;
  }

LABEL_20:
  if (!atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v19);
  }
}

void sub_29712C4E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_29712C4F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::unique_ptr<LegacyAccessoryManager>::~unique_ptr[abi:ne200100](va);
  if (v5)
  {
    dispatch_release(v5);
  }

  _Unwind_Resume(a1);
}

BOOL LegacyAccessoryManager::init(LegacyAccessoryManager *this)
{
  v21 = *MEMORY[0x29EDCA608];
  v2 = *(this + 7);
  if (v2)
  {
    v4 = *(this + 1);
    v3 = *(this + 2);
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    LegacyAccessoryManager::generateAccessoryMapping(this);
    if (*(this + 9))
    {
      aBlock[0] = MEMORY[0x29EDCA5F8];
      aBlock[1] = 1174405120;
      aBlock[2] = ___ZN22LegacyAccessoryManager4initEv_block_invoke;
      aBlock[3] = &__block_descriptor_tmp_36;
      aBlock[4] = this;
      aBlock[5] = v4;
      v17 = v3;
      if (v3)
      {
        atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      }

      v18 = _Block_copy(aBlock);
      ctu::iokit::IOHIDController::registerKeyboardCallback();
      if (v18)
      {
        _Block_release(v18);
      }

      ctu::iokit::IOHIDController::start(*(this + 9));
      if (v17)
      {
        std::__shared_weak_count::__release_weak(v17);
      }
    }

    v5 = *(this + 7);
    if (!v5)
    {
      goto LABEL_33;
    }

    v14[0] = MEMORY[0x29EDCA5F8];
    v14[1] = 1174405120;
    v14[2] = ___ZN22LegacyAccessoryManager4initEv_block_invoke_5;
    v14[3] = &__block_descriptor_tmp_9_4;
    v14[4] = this;
    v14[5] = v4;
    v15 = v3;
    if (v3)
    {
      atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    v6 = _Block_copy(v14);
    v7 = *(this + 3);
    if (v7)
    {
      dispatch_retain(*(this + 3));
    }

    if (v6)
    {
      v8 = _Block_copy(v6);
      v9 = *(v5 + 24);
      *(v5 + 24) = v8;
      if (!v9)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v9 = *(v5 + 24);
      *(v5 + 24) = 0;
      if (!v9)
      {
LABEL_23:
        if (v7)
        {
          dispatch_retain(v7);
        }

        v11 = *(v5 + 32);
        *(v5 + 32) = v7;
        if (v11)
        {
          dispatch_release(v11);
        }

        if (v7)
        {
          dispatch_release(v7);
        }

        if (v6)
        {
          _Block_release(v6);
        }

        IOKitEventNotifier::start(*(this + 7));
        if (v15)
        {
          std::__shared_weak_count::__release_weak(v15);
        }

LABEL_33:
        if (v3)
        {
          std::__shared_weak_count::__release_weak(v3);
        }

        goto LABEL_35;
      }
    }

    _Block_release(v9);
    goto LABEL_23;
  }

  v10 = *this;
  if (os_log_type_enabled(*this, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v20 = "LegacyAccessoryManager";
    _os_log_impl(&dword_296FF7000, v10, OS_LOG_TYPE_DEFAULT, "#I IOKit Event Notifier is NULL: %s", buf, 0xCu);
  }

LABEL_35:
  result = v2 != 0;
  v13 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29712C7C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void LegacyAccessoryManager::LegacyAccessoryManager(LegacyAccessoryManager *this, const char *__s, queue a3)
{
  v6 = 0x7FFFFFFFFFFFFFF7;
  v7 = strlen(__s);
  if (v7 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = v7;
  if (v7 >= 0x17)
  {
    if ((v7 | 7) == 0x17)
    {
      v14 = 25;
    }

    else
    {
      v14 = (v7 | 7) + 1;
    }

    p_dst = operator new(v14);
    *(&__dst + 1) = v8;
    v52 = v14 | 0x8000000000000000;
    *&__dst = p_dst;
  }

  else
  {
    HIBYTE(v52) = v7;
    p_dst = &__dst;
    if (!v7)
    {
      LOBYTE(__dst) = 0;
      v10 = SHIBYTE(v52);
      if ((SHIBYTE(v52) & 0x8000000000000000) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_12;
    }
  }

  memcpy(p_dst, __s, v8);
  *(p_dst + v8) = 0;
  v10 = SHIBYTE(v52);
  if ((SHIBYTE(v52) & 0x8000000000000000) == 0)
  {
LABEL_5:
    v11 = &__dst;
    if (v10 == 22)
    {
      v12 = 22;
      v13 = 23;
LABEL_15:
      v15 = 2 * v12;
      if (v13 > 2 * v12)
      {
        v15 = v13;
      }

      if ((v15 | 7) == 0x17)
      {
        v16 = 25;
      }

      else
      {
        v16 = (v15 | 7) + 1;
      }

      if (v15 >= 0x17)
      {
        v17 = v16;
      }

      else
      {
        v17 = 23;
      }

      v18 = v12 == 22;
      goto LABEL_24;
    }

LABEL_30:
    *(v11 + v10) = 46;
    v22 = v10 + 1;
    if (SHIBYTE(v52) < 0)
    {
      *(&__dst + 1) = v22;
    }

    else
    {
      HIBYTE(v52) = v22 & 0x7F;
    }

    v21 = v11 + v22;
    goto LABEL_34;
  }

LABEL_12:
  v10 = *(&__dst + 1);
  v13 = v52 & 0x7FFFFFFFFFFFFFFFLL;
  v12 = (v52 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v12 != *(&__dst + 1))
  {
    v11 = __dst;
    goto LABEL_30;
  }

  if (v13 == 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v11 = __dst;
  if (v12 < 0x3FFFFFFFFFFFFFF3)
  {
    goto LABEL_15;
  }

  v18 = 0;
  v17 = 0x7FFFFFFFFFFFFFF7;
LABEL_24:
  v19 = operator new(v17);
  v20 = v19;
  if (v12)
  {
    memmove(v19, v11, v12);
  }

  v20[v12] = 46;
  if (!v18)
  {
    operator delete(v11);
  }

  *(&__dst + 1) = v13;
  v52 = v17 | 0x8000000000000000;
  *&__dst = v20;
  v21 = &v20[v13];
LABEL_34:
  *v21 = 0;
  v54 = v52;
  *v53 = __dst;
  v52 = 0;
  __dst = 0uLL;
  v23 = SHIBYTE(v54);
  if ((SHIBYTE(v54) & 0x8000000000000000) == 0)
  {
    if ((SHIBYTE(v54) - 1) < 0x16)
    {
      v24 = (SHIBYTE(v54) + 22);
      v25 = v53;
      v26 = 22;
LABEL_40:
      v27 = 2 * v26;
      if (v24 > 2 * v26)
      {
        v27 = v24;
      }

      if ((v27 | 7) == 0x17)
      {
        v28 = 25;
      }

      else
      {
        v28 = (v27 | 7) + 1;
      }

      if (v27 >= 0x17)
      {
        v6 = v28;
      }

      else
      {
        v6 = 23;
      }

      v29 = v26 == 22;
      goto LABEL_49;
    }

    v33 = v53;
LABEL_56:
    qmemcpy(v33 + v23, "LegacyAccessoryManager", 22);
    v34 = v23 + 22;
    if (SHIBYTE(v54) < 0)
    {
      v53[1] = (v23 + 22);
    }

    else
    {
      HIBYTE(v54) = v34 & 0x7F;
    }

    v32 = v33 + v34;
    goto LABEL_60;
  }

  v23 = v53[1];
  v26 = (v54 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v26 - v53[1] >= 0x16)
  {
    v33 = v53[0];
    goto LABEL_56;
  }

  v24 = v53[1] + 22;
  if ((0x7FFFFFFFFFFFFFF7 - (v54 & 0x7FFFFFFFFFFFFFFFLL)) < v53[1] - v26 + 22)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v25 = v53[0];
  if (v26 < 0x3FFFFFFFFFFFFFF3)
  {
    goto LABEL_40;
  }

  v29 = 0;
LABEL_49:
  v30 = operator new(v6);
  v31 = v30;
  if (v23)
  {
    memmove(v30, v25, v23);
  }

  qmemcpy(v31 + v23, "LegacyAccessoryManager", 22);
  if (!v29)
  {
    operator delete(v25);
  }

  v53[1] = v24;
  v54 = v6 | 0x8000000000000000;
  v53[0] = v31;
  v32 = &v24[v31];
LABEL_60:
  *v32 = 0;
  v56 = v54;
  *__p = *v53;
  v53[1] = 0;
  v54 = 0;
  v53[0] = 0;
  if (v56 >= 0)
  {
    v35 = __p;
  }

  else
  {
    v35 = __p[0];
  }

  ctu::OsLogLogger::OsLogLogger(this, "com.apple.telephony.abm", v35);
  if (SHIBYTE(v56) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v54) & 0x80000000) == 0)
    {
LABEL_65:
      if ((SHIBYTE(v52) & 0x80000000) == 0)
      {
        goto LABEL_66;
      }

      goto LABEL_98;
    }
  }

  else if ((SHIBYTE(v54) & 0x80000000) == 0)
  {
    goto LABEL_65;
  }

  operator delete(v53[0]);
  if ((SHIBYTE(v52) & 0x80000000) == 0)
  {
LABEL_66:
    *(this + 1) = 0;
    *(this + 2) = 0;
    v36 = *a3.fObj.fObj;
    *(this + 3) = *a3.fObj.fObj;
    if (!v36)
    {
      goto LABEL_68;
    }

    goto LABEL_67;
  }

LABEL_98:
  operator delete(__dst);
  *(this + 1) = 0;
  *(this + 2) = 0;
  v36 = *a3.fObj.fObj;
  *(this + 3) = *a3.fObj.fObj;
  if (v36)
  {
LABEL_67:
    dispatch_retain(v36);
  }

LABEL_68:
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 6) = 0;
  pthread_mutex_lock(&ctu::Singleton<ABMServer,ABMServer,ctu::PthreadMutexGuardPolicy<ABMServer>>::sInstance);
  v37 = off_2A18B7340;
  if (!off_2A18B7340)
  {
    ABMServer::create_default_global(__p);
    v38 = *__p;
    __p[0] = 0;
    __p[1] = 0;
    v39 = *(&off_2A18B7340 + 1);
    off_2A18B7340 = v38;
    if (v39 && !atomic_fetch_add(&v39->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v39->__on_zero_shared)(v39);
      std::__shared_weak_count::__release_weak(v39);
    }

    v40 = __p[1];
    if (__p[1] && !atomic_fetch_add(__p[1] + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v40->__on_zero_shared)(v40);
      std::__shared_weak_count::__release_weak(v40);
    }

    v37 = off_2A18B7340;
  }

  v41 = *(&off_2A18B7340 + 1);
  v53[0] = v37;
  v53[1] = *(&off_2A18B7340 + 1);
  if (*(&off_2A18B7340 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18B7340 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ABMServer,ABMServer,ctu::PthreadMutexGuardPolicy<ABMServer>>::sInstance);
  v42 = *(*v37 + 144);
  *(this + 7) = 0xAAAAAAAAAAAAAAAALL;
  *(this + 8) = 0xAAAAAAAAAAAAAAAALL;
  v43 = operator new(0x88uLL);
  v43[1] = 0;
  v43[2] = 0;
  *v43 = &unk_2A1E26468;
  ctu::OsLogLogger::OsLogLogger((v43 + 3), "com.apple.telephony", "iokit.event");
  v45 = ctu::iokit::Controller::create(v42, v44);
  *(v43 + 6) = 0u;
  *(v43 + 7) = 0u;
  *(v43 + 4) = 0u;
  *(v43 + 5) = 0u;
  *(v43 + 3) = 0u;
  v43[16] = v42;
  *(this + 7) = v43 + 3;
  *(this + 8) = v43;
  if (v41 && !atomic_fetch_add(&v41->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v41->__on_zero_shared)(v41);
    std::__shared_weak_count::__release_weak(v41);
  }

  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 92) = 0;
  *(this + 13) = 0;
  *(this + 14) = 0;
  *(this + 12) = this + 104;
  if (capabilities::txpower::supportsKeyboard(v45))
  {
    v50 = *a3.fObj.fObj;
    if (*a3.fObj.fObj)
    {
      dispatch_retain(*a3.fObj.fObj);
    }

    ctu::iokit::IOHIDController::create();
    v46 = *__p;
    __p[0] = 0;
    __p[1] = 0;
    v47 = *(this + 10);
    *(this + 72) = v46;
    if (v47 && !atomic_fetch_add(&v47->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v47->__on_zero_shared)(v47);
      std::__shared_weak_count::__release_weak(v47);
    }

    v48 = __p[1];
    if (__p[1] && !atomic_fetch_add(__p[1] + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v48->__on_zero_shared)(v48);
      std::__shared_weak_count::__release_weak(v48);
    }

    if (v50)
    {
      dispatch_release(v50);
    }

    if (!*(this + 9))
    {
      v49 = *this;
      if (os_log_type_enabled(*this, OS_LOG_TYPE_ERROR))
      {
        LOWORD(__p[0]) = 0;
        _os_log_error_impl(&dword_296FF7000, v49, OS_LOG_TYPE_ERROR, "Failed to create IO HID Controller!", __p, 2u);
      }
    }
  }
}

void sub_29712CF1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, dispatch_object_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  pthread_mutex_unlock(&ctu::Singleton<ABMServer,ABMServer,ctu::PthreadMutexGuardPolicy<ABMServer>>::sInstance);
  std::vector<dispatch::callback<void({block_pointer})>>::~vector[abi:ne200100](v24);
  v26 = *(v23 + 24);
  if (v26)
  {
    dispatch_release(v26);
  }

  v27 = *(v23 + 16);
  if (v27)
  {
    std::__shared_weak_count::__release_weak(v27);
  }

  MEMORY[0x29C26B020](v23);
  _Unwind_Resume(a1);
}

void sub_29712D008(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
    if (a20 < 0)
    {
LABEL_5:
      operator delete(a15);
      if (SHIBYTE(a14) < 0)
      {
        operator delete(a12);
        _Unwind_Resume(a1);
      }

      JUMPOUT(0x29712D000);
    }
  }

  else if (a20 < 0)
  {
    goto LABEL_5;
  }

  JUMPOUT(0x29712CF60);
}

void LegacyAccessoryManager::~LegacyAccessoryManager(LegacyAccessoryManager *this)
{
  v2 = *(this + 4);
  for (i = *(this + 5); i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      dispatch_release(v4);
    }

    v6 = *(i - 16);
    v5 = v6;
    if (v6)
    {
      _Block_release(v5);
    }
  }

  *(this + 5) = v2;
  v7 = *(this + 9);
  if (v7)
  {
    ctu::iokit::IOHIDController::stop(v7);
  }

  v8 = *(this + 7);
  if (v8)
  {
    IOKitEventNotifier::shutdown(v8);
  }

  std::__tree<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,std::__map_value_compare<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>,boost::signals2::detail::group_key_less<int,std::less<int>>,false>,std::allocator<std::__value_type<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,std::__list_iterator<boost::shared_ptr<boost::signals2::detail::connection_body<std::pair<boost::signals2::detail::slot_meta_group,boost::optional<int>>,boost::signals2::slot<void ()(void),boost::function<void ()(void)>>,boost::signals2::mutex>>,void *>>>>::destroy(*(this + 13));
  v9 = *(this + 10);
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  v10 = *(this + 8);
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
    v11 = *(this + 4);
    if (!v11)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v11 = *(this + 4);
    if (!v11)
    {
      goto LABEL_26;
    }
  }

  v12 = *(this + 5);
  v13 = v11;
  if (v12 != v11)
  {
    do
    {
      v14 = *(v12 - 1);
      if (v14)
      {
        dispatch_release(v14);
      }

      v16 = *(v12 - 2);
      v12 -= 16;
      v15 = v16;
      if (v16)
      {
        _Block_release(v15);
      }
    }

    while (v12 != v11);
    v13 = *(this + 4);
  }

  *(this + 5) = v11;
  operator delete(v13);
LABEL_26:
  v17 = *(this + 3);
  if (v17)
  {
    dispatch_release(v17);
  }

  v18 = *(this + 2);
  if (v18)
  {
    std::__shared_weak_count::__release_weak(v18);
  }

  JUMPOUT(0x29C26B020);
}

uint64_t *LegacyAccessoryManager::generateAccessoryMapping(uint64_t *this)
{
  v1 = this;
  v3 = this + 13;
  v2 = this[13];
  v4 = this + 13;
  v5 = this + 13;
  if (v2)
  {
    v6 = this[13];
    while (1)
    {
      while (1)
      {
        v5 = v6;
        v7 = *(v6 + 28);
        if (v7 < 3)
        {
          break;
        }

        v6 = *v5;
        v4 = v5;
        if (!*v5)
        {
          goto LABEL_8;
        }
      }

      if (v7 == 2)
      {
        break;
      }

      v6 = v5[1];
      if (!v6)
      {
        v4 = v5 + 1;
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    v8 = v5;
    v5 = operator new(0x28uLL);
    *(v5 + 28) = 2;
    *v5 = 0;
    v5[1] = 0;
    v5[2] = v8;
    *v4 = v5;
    v9 = **(v1 + 96);
    if (v9)
    {
      *(v1 + 96) = v9;
    }

    this = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v1 + 104), v5);
    v2 = *(v1 + 104);
    ++*(v1 + 112);
  }

  *(v5 + 8) = 16;
  v10 = v3;
  v11 = v3;
  if (v2)
  {
    while (1)
    {
      while (1)
      {
        v11 = v2;
        v12 = *(v2 + 28);
        if (v12 < 5)
        {
          break;
        }

        v2 = *v11;
        v10 = v11;
        if (!*v11)
        {
          goto LABEL_18;
        }
      }

      if (v12 == 4)
      {
        break;
      }

      v2 = v11[1];
      if (!v2)
      {
        v10 = v11 + 1;
        goto LABEL_18;
      }
    }
  }

  else
  {
LABEL_18:
    v13 = v11;
    v11 = operator new(0x28uLL);
    *(v11 + 28) = 4;
    *v11 = 0;
    v11[1] = 0;
    v11[2] = v13;
    *v10 = v11;
    v14 = **(v1 + 96);
    if (v14)
    {
      *(v1 + 96) = v14;
    }

    this = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v1 + 104), v11);
    ++*(v1 + 112);
  }

  *(v11 + 8) = 32;
  v15 = *v3;
  v16 = v3;
  v17 = v3;
  if (*v3)
  {
    v18 = *v3;
    while (1)
    {
      while (1)
      {
        v17 = v18;
        v19 = *(v18 + 28);
        if (v19 < 9)
        {
          break;
        }

        v18 = *v17;
        v16 = v17;
        if (!*v17)
        {
          goto LABEL_28;
        }
      }

      if (v19 == 8)
      {
        break;
      }

      v18 = v17[1];
      if (!v18)
      {
        v16 = v17 + 1;
        goto LABEL_28;
      }
    }
  }

  else
  {
LABEL_28:
    v20 = v17;
    v17 = operator new(0x28uLL);
    *(v17 + 28) = 8;
    *v17 = 0;
    v17[1] = 0;
    v17[2] = v20;
    *v16 = v17;
    v21 = **(v1 + 96);
    if (v21)
    {
      *(v1 + 96) = v21;
    }

    this = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v1 + 104), v17);
    v15 = *(v1 + 104);
    ++*(v1 + 112);
  }

  *(v17 + 8) = 64;
  v22 = v3;
  v23 = v3;
  if (v15)
  {
    while (1)
    {
      while (1)
      {
        v23 = v15;
        v24 = *(v15 + 28);
        if (v24 < 0x11)
        {
          break;
        }

        v15 = *v23;
        v22 = v23;
        if (!*v23)
        {
          goto LABEL_38;
        }
      }

      if (v24 == 16)
      {
        break;
      }

      v15 = v23[1];
      if (!v15)
      {
        v22 = v23 + 1;
        goto LABEL_38;
      }
    }
  }

  else
  {
LABEL_38:
    v25 = v23;
    v23 = operator new(0x28uLL);
    *(v23 + 28) = 16;
    *v23 = 0;
    v23[1] = 0;
    v23[2] = v25;
    *v22 = v23;
    v26 = **(v1 + 96);
    if (v26)
    {
      *(v1 + 96) = v26;
    }

    this = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v1 + 104), v23);
    ++*(v1 + 112);
  }

  *(v23 + 8) = 1024;
  v27 = *v3;
  v28 = v3;
  v29 = v3;
  if (*v3)
  {
    v30 = *v3;
    while (1)
    {
      while (1)
      {
        v29 = v30;
        v31 = *(v30 + 28);
        if (v31 < 0x21)
        {
          break;
        }

        v30 = *v29;
        v28 = v29;
        if (!*v29)
        {
          goto LABEL_48;
        }
      }

      if (v31 == 32)
      {
        break;
      }

      v30 = v29[1];
      if (!v30)
      {
        v28 = v29 + 1;
        goto LABEL_48;
      }
    }
  }

  else
  {
LABEL_48:
    v32 = v29;
    v29 = operator new(0x28uLL);
    *(v29 + 28) = 32;
    *v29 = 0;
    v29[1] = 0;
    v29[2] = v32;
    *v28 = v29;
    v33 = **(v1 + 96);
    if (v33)
    {
      *(v1 + 96) = v33;
    }

    this = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v1 + 104), v29);
    v27 = *(v1 + 104);
    ++*(v1 + 112);
  }

  *(v29 + 8) = 256;
  v34 = v3;
  v35 = v3;
  if (v27)
  {
    while (1)
    {
      while (1)
      {
        v35 = v27;
        v36 = *(v27 + 28);
        if (v36 < 0x41)
        {
          break;
        }

        v27 = *v35;
        v34 = v35;
        if (!*v35)
        {
          goto LABEL_58;
        }
      }

      if (v36 == 64)
      {
        break;
      }

      v27 = v35[1];
      if (!v27)
      {
        v34 = v35 + 1;
        goto LABEL_58;
      }
    }
  }

  else
  {
LABEL_58:
    v37 = v35;
    v35 = operator new(0x28uLL);
    *(v35 + 28) = 64;
    *v35 = 0;
    v35[1] = 0;
    v35[2] = v37;
    *v34 = v35;
    v38 = **(v1 + 96);
    if (v38)
    {
      *(v1 + 96) = v38;
    }

    this = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v1 + 104), v35);
    ++*(v1 + 112);
  }

  *(v35 + 8) = 2048;
  v39 = *v3;
  v40 = v3;
  v41 = v3;
  if (*v3)
  {
    v42 = *v3;
    while (1)
    {
      while (1)
      {
        v41 = v42;
        v43 = *(v42 + 28);
        if (v43 < 0x81)
        {
          break;
        }

        v42 = *v41;
        v40 = v41;
        if (!*v41)
        {
          goto LABEL_68;
        }
      }

      if (v43 == 128)
      {
        break;
      }

      v42 = v41[1];
      if (!v42)
      {
        v40 = v41 + 1;
        goto LABEL_68;
      }
    }
  }

  else
  {
LABEL_68:
    v44 = v41;
    v41 = operator new(0x28uLL);
    *(v41 + 28) = 128;
    *v41 = 0;
    v41[1] = 0;
    v41[2] = v44;
    *v40 = v41;
    v45 = **(v1 + 96);
    if (v45)
    {
      *(v1 + 96) = v45;
    }

    this = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v1 + 104), v41);
    v39 = *(v1 + 104);
    ++*(v1 + 112);
  }

  *(v41 + 8) = 4096;
  v46 = v3;
  v47 = v3;
  if (v39)
  {
    while (1)
    {
      while (1)
      {
        v47 = v39;
        v48 = *(v39 + 28);
        if (v48 < 0x101)
        {
          break;
        }

        v39 = *v47;
        v46 = v47;
        if (!*v47)
        {
          goto LABEL_78;
        }
      }

      if (v48 == 256)
      {
        break;
      }

      v39 = v47[1];
      if (!v39)
      {
        v46 = v47 + 1;
        goto LABEL_78;
      }
    }
  }

  else
  {
LABEL_78:
    v49 = v47;
    v47 = operator new(0x28uLL);
    *(v47 + 28) = 256;
    *v47 = 0;
    v47[1] = 0;
    v47[2] = v49;
    *v46 = v47;
    v50 = **(v1 + 96);
    if (v50)
    {
      *(v1 + 96) = v50;
    }

    this = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v1 + 104), v47);
    ++*(v1 + 112);
  }

  *(v47 + 8) = 0x2000;
  v51 = *v3;
  v52 = v3;
  v53 = v3;
  if (*v3)
  {
    v54 = *v3;
    while (1)
    {
      while (1)
      {
        v53 = v54;
        v55 = *(v54 + 28);
        if (v55 < 0x201)
        {
          break;
        }

        v54 = *v53;
        v52 = v53;
        if (!*v53)
        {
          goto LABEL_88;
        }
      }

      if (v55 == 512)
      {
        break;
      }

      v54 = v53[1];
      if (!v54)
      {
        v52 = v53 + 1;
        goto LABEL_88;
      }
    }
  }

  else
  {
LABEL_88:
    v56 = v53;
    v53 = operator new(0x28uLL);
    *(v53 + 28) = 512;
    *v53 = 0;
    v53[1] = 0;
    v53[2] = v56;
    *v52 = v53;
    v57 = **(v1 + 96);
    if (v57)
    {
      *(v1 + 96) = v57;
    }

    this = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v1 + 104), v53);
    v51 = *(v1 + 104);
    ++*(v1 + 112);
  }

  *(v53 + 8) = 0x4000;
  v58 = v3;
  v59 = v3;
  if (v51)
  {
    while (1)
    {
      while (1)
      {
        v59 = v51;
        v60 = *(v51 + 28);
        if (v60 < 0x401)
        {
          break;
        }

        v51 = *v59;
        v58 = v59;
        if (!*v59)
        {
          goto LABEL_98;
        }
      }

      if (v60 == 1024)
      {
        break;
      }

      v51 = v59[1];
      if (!v51)
      {
        v58 = v59 + 1;
        goto LABEL_98;
      }
    }
  }

  else
  {
LABEL_98:
    v61 = v59;
    v59 = operator new(0x28uLL);
    *(v59 + 28) = 1024;
    *v59 = 0;
    v59[1] = 0;
    v59[2] = v61;
    *v58 = v59;
    v62 = **(v1 + 96);
    if (v62)
    {
      *(v1 + 96) = v62;
    }

    this = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v1 + 104), v59);
    ++*(v1 + 112);
  }

  *(v59 + 8) = 0x8000;
  v63 = *v3;
  v64 = v3;
  v65 = v3;
  if (*v3)
  {
    v66 = *v3;
    while (1)
    {
      while (1)
      {
        v65 = v66;
        v67 = *(v66 + 28);
        if (v67 < 0x801)
        {
          break;
        }

        v66 = *v65;
        v64 = v65;
        if (!*v65)
        {
          goto LABEL_108;
        }
      }

      if (v67 == 2048)
      {
        break;
      }

      v66 = v65[1];
      if (!v66)
      {
        v64 = v65 + 1;
        goto LABEL_108;
      }
    }
  }

  else
  {
LABEL_108:
    v68 = v65;
    v65 = operator new(0x28uLL);
    *(v65 + 28) = 2048;
    *v65 = 0;
    v65[1] = 0;
    v65[2] = v68;
    *v64 = v65;
    v69 = **(v1 + 96);
    if (v69)
    {
      *(v1 + 96) = v69;
    }

    this = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v1 + 104), v65);
    v63 = *(v1 + 104);
    ++*(v1 + 112);
  }

  *(v65 + 8) = 0x10000;
  v70 = v3;
  if (v63)
  {
    while (1)
    {
      while (1)
      {
        v70 = v63;
        v71 = *(v63 + 28);
        if (v71 <= 0x1000)
        {
          break;
        }

        v63 = *v70;
        v3 = v70;
        if (!*v70)
        {
          goto LABEL_118;
        }
      }

      if (v71 == 4096)
      {
        break;
      }

      v63 = v70[1];
      if (!v63)
      {
        v3 = v70 + 1;
        goto LABEL_118;
      }
    }
  }

  else
  {
LABEL_118:
    v72 = v70;
    v70 = operator new(0x28uLL);
    *(v70 + 28) = 4096;
    *v70 = 0;
    v70[1] = 0;
    v70[2] = v72;
    *v3 = v70;
    v73 = **(v1 + 96);
    if (v73)
    {
      *(v1 + 96) = v73;
    }

    this = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v1 + 104), v70);
    ++*(v1 + 112);
  }

  *(v70 + 8) = 0x20000;
  return this;
}

void ___ZN22LegacyAccessoryManager4initEv_block_invoke(void *a1, int a2)
{
  v34 = *MEMORY[0x29EDCA608];
  v3 = a1[6];
  if (!v3)
  {
    goto LABEL_58;
  }

  v5 = a1[4];
  v6 = std::__shared_weak_count::lock(v3);
  if (!v6)
  {
    goto LABEL_58;
  }

  v7 = a1[5];
  if (atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (!v7)
    {
      goto LABEL_58;
    }
  }

  else
  {
    v8 = v6;
    (v6->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v8);
    if (!v7)
    {
      goto LABEL_58;
    }
  }

  if (*(v5 + 92) == a2)
  {
    goto LABEL_58;
  }

  v9 = *v5;
  if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = "OPENED";
    if (a2)
    {
      v10 = "CLOSED";
    }

    LODWORD(v29) = 136315138;
    *(&v29 + 4) = v10;
    _os_log_impl(&dword_296FF7000, v9, OS_LOG_TYPE_DEFAULT, "#I Smart Keyboard Cover: %s", &v29, 0xCu);
  }

  v12 = (v5 + 104);
  v11 = *(v5 + 104);
  *(v5 + 92) = a2;
  v13 = (v5 + 104);
  if (a2)
  {
    if (v11)
    {
      while (1)
      {
        while (1)
        {
          v13 = v11;
          v14 = *(v11 + 7);
          if (v14 <= 0x1000)
          {
            break;
          }

          v11 = *v13;
          v12 = v13;
          if (!*v13)
          {
            goto LABEL_20;
          }
        }

        if (v14 == 4096)
        {
          break;
        }

        v11 = v13[1];
        if (!v11)
        {
          v12 = v13 + 1;
          goto LABEL_20;
        }
      }

      v15 = v13;
    }

    else
    {
LABEL_20:
      v15 = operator new(0x28uLL);
      *(v15 + 28) = 4096;
      *v15 = 0;
      v15[1] = 0;
      v15[2] = v13;
      *v12 = v15;
      v16 = **(v5 + 96);
      if (v16)
      {
        *(v5 + 96) = v16;
      }

      std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v5 + 104), v15);
      ++*(v5 + 112);
    }

    *(v5 + 88) |= *(v15 + 8);
    v20 = *(v5 + 32);
    v21 = *(v5 + 40);
    if (v20 != v21)
    {
      goto LABEL_40;
    }

    goto LABEL_58;
  }

  if (v11)
  {
    while (1)
    {
      while (1)
      {
        v13 = v11;
        v17 = *(v11 + 7);
        if (v17 <= 0x1000)
        {
          break;
        }

        v11 = *v13;
        v12 = v13;
        if (!*v13)
        {
          goto LABEL_30;
        }
      }

      if (v17 == 4096)
      {
        break;
      }

      v11 = v13[1];
      if (!v11)
      {
        v12 = v13 + 1;
        goto LABEL_30;
      }
    }

    v18 = v13;
  }

  else
  {
LABEL_30:
    v18 = operator new(0x28uLL);
    *(v18 + 28) = 4096;
    *v18 = 0;
    v18[1] = 0;
    v18[2] = v13;
    *v12 = v18;
    v19 = **(v5 + 96);
    if (v19)
    {
      *(v5 + 96) = v19;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v5 + 104), v18);
    ++*(v5 + 112);
  }

  *(v5 + 88) &= ~*(v18 + 8);
  v20 = *(v5 + 32);
  v21 = *(v5 + 40);
  if (v20 != v21)
  {
LABEL_40:
    while (!*v20)
    {
      v22 = 0;
      v23 = *(v20 + 8);
      if (v23)
      {
        goto LABEL_42;
      }

LABEL_43:
      v24 = *(v5 + 88);
      if (!v22)
      {
        v26 = 0;
        *&v29 = MEMORY[0x29EDCA5F8];
        *(&v29 + 1) = 1174405120;
        v30 = ___ZNK8dispatch8callbackIU13block_pointerFvjEEclIJjEEEvDpT__block_invoke;
        v31 = &__block_descriptor_tmp_17_1;
LABEL_49:
        v27 = 0;
        goto LABEL_50;
      }

      v25 = _Block_copy(v22);
      v26 = v25;
      *&v29 = MEMORY[0x29EDCA5F8];
      *(&v29 + 1) = 1174405120;
      v30 = ___ZNK8dispatch8callbackIU13block_pointerFvjEEclIJjEEEvDpT__block_invoke;
      v31 = &__block_descriptor_tmp_17_1;
      if (!v25)
      {
        goto LABEL_49;
      }

      v27 = _Block_copy(v25);
LABEL_50:
      aBlock = v27;
      v33 = v24;
      dispatch_async(v23, &v29);
      if (aBlock)
      {
        _Block_release(aBlock);
      }

      if (v26)
      {
        _Block_release(v26);
      }

      if (v23)
      {
        dispatch_release(v23);
      }

      if (v22)
      {
        _Block_release(v22);
      }

      v20 += 16;
      if (v20 == v21)
      {
        goto LABEL_58;
      }
    }

    v22 = _Block_copy(*v20);
    v23 = *(v20 + 8);
    if (!v23)
    {
      goto LABEL_43;
    }

LABEL_42:
    dispatch_retain(v23);
    goto LABEL_43;
  }

LABEL_58:
  v28 = *MEMORY[0x29EDCA608];
}

void sub_29712DD40(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_40c47_ZTSNSt3__18weak_ptrI22LegacyAccessoryManagerEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_40c47_ZTSNSt3__18weak_ptrI22LegacyAccessoryManagerEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void ___ZN22LegacyAccessoryManager4initEv_block_invoke_5(void *a1, unint64_t a2, int a3)
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

      LegacyAccessoryManager::accessoryNotification_sync(v7, a2, a3);
    }
  }
}

void LegacyAccessoryManager::accessoryNotification_sync(uint64_t a1, unint64_t a2, int a3)
{
  v33 = *MEMORY[0x29EDCA608];
  v6 = *a1;
  if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(__p[0]) = 67109120;
    HIDWORD(__p[0]) = a3;
    _os_log_impl(&dword_296FF7000, v6, OS_LOG_TYPE_DEFAULT, "#I Accessory Port Number: %u", __p, 8u);
    v6 = *a1;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    ctu::iokit::asString();
    if (v30 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    *buf = 136315138;
    v32 = v7;
    _os_log_impl(&dword_296FF7000, v6, OS_LOG_TYPE_DEFAULT, "#I Accessory Status: %s", buf, 0xCu);
    if (v30 < 0)
    {
      operator delete(__p[0]);
    }

    v6 = *a1;
  }

  v8 = HIDWORD(a2);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT) && ((ctu::iokit::asString(), v30 >= 0) ? (v9 = __p) : (v9 = __p[0]), *buf = 136315138, v32 = v9, _os_log_impl(&dword_296FF7000, v6, OS_LOG_TYPE_DEFAULT, "#I Accessory Type: %s", buf, 0xCu), v30 < 0))
  {
    operator delete(__p[0]);
    if ((a3 - 3) <= 0xFFFFFFFD)
    {
LABEL_16:
      v10 = *a1;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(__p[0]) = 67109120;
        HIDWORD(__p[0]) = a3;
        _os_log_impl(&dword_296FF7000, v10, OS_LOG_TYPE_DEFAULT, "#I This port (%d) is not supported.", __p, 8u);
      }

      goto LABEL_61;
    }
  }

  else if ((a3 - 3) <= 0xFFFFFFFD)
  {
    goto LABEL_16;
  }

  v11 = *a1;
  v12 = os_log_type_enabled(*a1, OS_LOG_TYPE_DEBUG);
  if (a2 == 1)
  {
    if (!v12)
    {
      if (v8 == 4096)
      {
        goto LABEL_42;
      }

LABEL_22:
      v13 = *a1;
      if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(__p[0]) = 0;
        _os_log_debug_impl(&dword_296FF7000, v13, OS_LOG_TYPE_DEBUG, "#D Detected not keyboard type. Setting the accessory bitmask", __p, 2u);
        v15 = (a1 + 104);
        v14 = *(a1 + 104);
        if (v14)
        {
          while (1)
          {
LABEL_33:
            while (1)
            {
              v16 = v14;
              v17 = *(v14 + 28);
              if (v17 <= v8)
              {
                break;
              }

              v14 = *v16;
              v15 = v16;
              if (!*v16)
              {
                goto LABEL_37;
              }
            }

            if (v17 >= v8)
            {
              break;
            }

            v14 = v16[1];
            if (!v14)
            {
              v15 = v16 + 1;
              goto LABEL_37;
            }
          }

          v18 = v16;
          goto LABEL_41;
        }
      }

      else
      {
        v15 = (a1 + 104);
        v14 = *(a1 + 104);
        if (v14)
        {
          goto LABEL_33;
        }
      }

      v16 = v15;
LABEL_37:
      v18 = operator new(0x28uLL);
      v18[7] = v8;
      v18[8] = 0;
      *v18 = 0;
      *(v18 + 1) = 0;
      *(v18 + 2) = v16;
      *v15 = v18;
      v19 = **(a1 + 96);
      if (v19)
      {
        *(a1 + 96) = v19;
      }

      std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(a1 + 104), v18);
      ++*(a1 + 112);
LABEL_41:
      *(a1 + 88) |= v18[8];
      goto LABEL_42;
    }

    LOWORD(__p[0]) = 0;
    _os_log_debug_impl(&dword_296FF7000, v11, OS_LOG_TYPE_DEBUG, "#D An accessory is attached", __p, 2u);
    if (v8 != 4096)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if (v12)
    {
      LOWORD(__p[0]) = 0;
      _os_log_debug_impl(&dword_296FF7000, v11, OS_LOG_TYPE_DEBUG, "#D An accessory is detached. Clear all the bits in the accessory state", __p, 2u);
    }

    *(a1 + 88) = 0;
  }

LABEL_42:
  v20 = *a1;
  if (*(a1 + 92) == 1)
  {
    if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(__p[0]) = 0;
      _os_log_debug_impl(&dword_296FF7000, v20, OS_LOG_TYPE_DEBUG, "#D If a keyboard is covered, we should set the keyboard accessory state regardless of the accessory event", __p, 2u);
      v22 = (a1 + 104);
      v21 = *(a1 + 104);
      if (v21)
      {
        while (1)
        {
LABEL_49:
          while (1)
          {
            v23 = v21;
            v24 = *(v21 + 7);
            if (v24 <= 0x1000)
            {
              break;
            }

            v21 = *v23;
            v22 = v23;
            if (!*v23)
            {
              goto LABEL_53;
            }
          }

          if (v24 == 4096)
          {
            break;
          }

          v21 = v23[1];
          if (!v21)
          {
            v22 = v23 + 1;
            goto LABEL_53;
          }
        }

        v25 = v23;
        goto LABEL_57;
      }
    }

    else
    {
      v22 = (a1 + 104);
      v21 = *(a1 + 104);
      if (v21)
      {
        goto LABEL_49;
      }
    }

    v23 = v22;
LABEL_53:
    v25 = operator new(0x28uLL);
    *(v25 + 28) = 4096;
    *v25 = 0;
    v25[1] = 0;
    v25[2] = v23;
    *v22 = v25;
    v26 = **(a1 + 96);
    if (v26)
    {
      *(a1 + 96) = v26;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(a1 + 104), v25);
    ++*(a1 + 112);
LABEL_57:
    *(a1 + 88) |= *(v25 + 8);
    v20 = *a1;
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v27 = *(a1 + 88);
    LODWORD(__p[0]) = 67109120;
    HIDWORD(__p[0]) = v27;
    _os_log_impl(&dword_296FF7000, v20, OS_LOG_TYPE_DEFAULT, "#I Accessory State: 0x%x\n", __p, 8u);
  }

  LegacyAccessoryManager::notifyClients(a1);
LABEL_61:
  v28 = *MEMORY[0x29EDCA608];
}