uint64_t __copy_helper_block_e8_32c41_ZTSNSt3__18weak_ptrI16CMOnBodyDelegateEE(uint64_t result, uint64_t a2)
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

void __destroy_helper_block_e8_32c41_ZTSNSt3__18weak_ptrI16CMOnBodyDelegateEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void CMOnBodyDelegate::setThresholds(CMOnBodyDelegate *this, CFTypeRef cf)
{
  if (*(this + 7))
  {
    v3 = *(this + 2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_297476000, v3, OS_LOG_TYPE_ERROR, "Motion parameters already set, ignore request to set them again", buf, 2u);
    }
  }

  else
  {
    if (cf)
    {
      CFRetain(cf);
      v5 = *(this + 7);
      *(this + 7) = cf;
      if (v5)
      {
        CFRelease(v5);
      }
    }

    else
    {
      *(this + 7) = 0;
    }

    [objc_msgSend(MEMORY[0x29EDB93C8] "sharedOnBodyStatusManager")];
    v6 = *(this + 2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_297476000, v6, OS_LOG_TYPE_DEFAULT, "#I Motion parameters set successfully", v7, 2u);
    }
  }
}

char *CMOnBodyDelegate::registerCallback(unint64_t *a1, void **a2)
{
  v4 = a1[5];
  if (v4 >= a1[6])
  {
    result = std::vector<dispatch::callback<void({block_pointer})(CMOnBodyDelegate::CMOnBodyResult,CMOnBodyDelegate::CMOnBodyResultConfidence)>>::__emplace_back_slow_path<dispatch::callback<void({block_pointer})(CMOnBodyDelegate::CMOnBodyResult,CMOnBodyDelegate::CMOnBodyResultConfidence)> const&>(a1 + 4, a2);
    a1[5] = result;
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
    a1[5] = (v4 + 2);
  }

  return result;
}

const char *CMOnBodyDelegate::toString(unsigned int a1)
{
  if (a1 > 2)
  {
    return "Unknown";
  }

  else
  {
    return off_29EE6BF10[a1];
  }
}

const char *CMOnBodyDelegate::toString(int a1)
{
  v1 = "Confidence Level Unknown";
  if (a1 == 1)
  {
    v1 = "Confidence Level High";
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return "Confidence Level Low";
  }
}

char *std::vector<dispatch::callback<void({block_pointer})(CMOnBodyDelegate::CMOnBodyResult,CMOnBodyDelegate::CMOnBodyResultConfidence)>>::__emplace_back_slow_path<dispatch::callback<void({block_pointer})(CMOnBodyDelegate::CMOnBodyResult,CMOnBodyDelegate::CMOnBodyResultConfidence)> const&>(unint64_t *a1, uint64_t a2)
{
  v2 = a1[1] - *a1;
  v3 = v2 >> 4;
  v4 = (v2 >> 4) + 1;
  if (v4 >> 60)
  {
    std::vector<dispatch::callback<void({block_pointer})(sar::OBDState,sar::TunerState)>>::__throw_length_error[abi:ne200100]();
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

void std::__shared_ptr_pointer<CMOnBodyDelegate *,void({block_pointer})(CMOnBodyDelegate *),std::allocator<CMOnBodyDelegate>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<CMOnBodyDelegate *,void({block_pointer})(CMOnBodyDelegate *),std::allocator<CMOnBodyDelegate>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == 0x80000002976A3455)
  {
    return a1 + 32;
  }

  if (((v2 & 0x80000002976A3455 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000002976A3455))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000002976A3455 & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 32;
  }

  return 0;
}

void *__copy_helper_block_e8_32c109_ZTSN8dispatch5blockIU13block_pointerFvN16CMOnBodyDelegate14CMOnBodyResultENS1_24CMOnBodyResultConfidenceEEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 32) = result;
  return result;
}

void __destroy_helper_block_e8_32c109_ZTSN8dispatch5blockIU13block_pointerFvN16CMOnBodyDelegate14CMOnBodyResultENS1_24CMOnBodyResultConfidenceEEEE(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    _Block_release(v1);
  }
}

BOOL BootControllerINT::prepare(capabilities::radio *a1, std::string *a2)
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
      _os_log_error_impl(&dword_297476000, v7, OS_LOG_TYPE_ERROR, "Failed to find the firmware in %s", &v13, 0xCu);
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

void sub_2975B08E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BootControllerINT::bootModem(void *a1, uint64_t a2)
{
  v79 = *MEMORY[0x29EDCA608];
  v75 = 0xAAAAAAAAAAAAAAAALL;
  v76 = 0xAAAAAAAAAAAAAAAALL;
  v4 = pthread_mutex_lock(&ctu::Singleton<ctu::XpcJetsamAssertion,ctu::XpcJetsamAssertion,ctu::PthreadMutexGuardPolicy<ctu::XpcJetsamAssertion>>::sInstance);
  v5 = xmmword_2A18CABA8;
  if (!xmmword_2A18CABA8)
  {
    ctu::XpcJetsamAssertion::create_default_global(&v78, v4);
    v6 = *&v78.__r_.__value_.__l.__data_;
    *&v78.__r_.__value_.__l.__data_ = 0uLL;
    v7 = *(&xmmword_2A18CABA8 + 1);
    xmmword_2A18CABA8 = v6;
    if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }

    size = v78.__r_.__value_.__l.__size_;
    if (v78.__r_.__value_.__l.__size_ && !atomic_fetch_add((v78.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (size->__on_zero_shared)(size);
      std::__shared_weak_count::__release_weak(size);
    }

    v5 = xmmword_2A18CABA8;
  }

  v9 = *(&xmmword_2A18CABA8 + 1);
  v73[0] = v5;
  v73[1] = *(&xmmword_2A18CABA8 + 1);
  if (*(&xmmword_2A18CABA8 + 1))
  {
    atomic_fetch_add_explicit((*(&xmmword_2A18CABA8 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<ctu::XpcJetsamAssertion,ctu::XpcJetsamAssertion,ctu::PthreadMutexGuardPolicy<ctu::XpcJetsamAssertion>>::sInstance);
  v74[23] = 13;
  strcpy(v74, "Booting modem");
  ctu::XpcJetsamAssertion::createActivity();
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  BYTE5(v73[2]) = -86;
  HIWORD(v73[2]) = 5290;
  strcpy(v73, "boot::debugArguments");
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
  v71 = 0;
  v72 = 0;
  v70 = 0;
  v11 = *MEMORY[0x29EDB8ED8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v13 = Mutable;
  if (Mutable)
  {
    v72 = Mutable;
    v14 = CFDictionaryCreateMutable(v11, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
    v15 = v14;
    if (v14)
    {
      v71 = v14;
      v16 = CFDictionaryCreateMutable(v11, 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
      v17 = v16;
      if (v16)
      {
        cf = 0;
        v70 = v16;
        if (a1[5] != a1[4])
        {
          ctu::cf::convert_copy();
          v18 = a1[4];
          if (a1[5] != v18)
          {
            a1[5] = v18;
          }
        }

        ctu::cf::update<__CFString const*,__CFData const*>(v13, @"RestoreOptions", v15);
        v19 = ctu::cf::update<__CFString const*,__CFData const*>(v13, @"Options", v17);
        capabilities::radio::personalizedFirmwarePath(&__p, v19);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&v78, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
        }

        else
        {
          v78 = __p;
        }

        v62.__r_.__value_.__r.__words[0] = @"firmwareDataFolder";
        CFRetain(@"firmwareDataFolder");
        value[0] = 0;
        ctu::cf::convert_copy();
        v77 = 0;
        CFRelease(@"firmwareDataFolder");
        if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v78.__r_.__value_.__l.__data_);
          if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_36;
          }
        }

        else if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_36;
        }

        operator delete(__p.__r_.__value_.__l.__data_);
LABEL_36:
        v78.__r_.__value_.__r.__words[0] = @"BootMode";
        CFRetain(@"BootMode");
        LODWORD(value[0]) = 1;
        v25 = CFNumberCreate(v11, kCFNumberIntType, value);
        __p.__r_.__value_.__r.__words[0] = v25;
        if (v25)
        {
          CFDictionarySetValue(v13, @"BootMode", v25);
          CFRelease(v25);
        }

        CFRelease(@"BootMode");
        v26 = *MEMORY[0x29EDB8F00];
        ctu::cf::update<__CFString const*,__CFBoolean const*>(v13, @"skipCoredump", *MEMORY[0x29EDB8F00]);
        ctu::cf::update<__CFString const*,__CFBoolean const*>(v13, @"ccBoot", v26);
        ctu::cf::update<__CFString const*,__CFData const*>(v13, @"crashContextData", cf);
        if (cf)
        {
          CFRelease(cf);
        }

        memset(&__p, 0, sizeof(__p));
        v77 = 0xAAAAAAAAAAAAAAAALL;
        v67 = 0;
        pthread_mutex_lock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
        if (!xmmword_2A18CAF18)
        {
          v28 = operator new(0x18uLL);
          MEMORY[0x29C270EE0](v28, @"com.apple.AppleBasebandManager", *MEMORY[0x29EDB8FB0]);
          value[0] = v28;
          v27 = operator new(0x20uLL);
          *v27 = &unk_2A1E43EE0;
          v27[1] = 0;
          v27[2] = 0;
          v27[3] = v28;
          v29 = *(&xmmword_2A18CAF18 + 1);
          *&xmmword_2A18CAF18 = v28;
          *(&xmmword_2A18CAF18 + 1) = v27;
          if (!v29)
          {
            v78.__r_.__value_.__r.__words[0] = v28;
            v78.__r_.__value_.__l.__size_ = v27;
            goto LABEL_49;
          }

          if (!atomic_fetch_add(&v29->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v29->__on_zero_shared)(v29);
            std::__shared_weak_count::__release_weak(v29);
          }
        }

        v27 = *(&xmmword_2A18CAF18 + 1);
        v28 = xmmword_2A18CAF18;
        *&v78.__r_.__value_.__l.__data_ = xmmword_2A18CAF18;
        if (!*(&xmmword_2A18CAF18 + 1))
        {
LABEL_50:
          pthread_mutex_unlock(&ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance);
          v66.__r_.__value_.__r.__words[0] = 0xAAAAAAAAAAAAAA00;
          *&v66.__r_.__value_.__r.__words[1] = xmmword_2976A3480;
          if (SHIBYTE(v73[2]) >= 0)
          {
            v30 = v73;
          }

          else
          {
            v30 = v73[0];
          }

          ctu::cf::MakeCFString::MakeCFString(value, v30);
          v31 = (**v28)(v28, value[0]);
          if (v31)
          {
            v32 = ctu::cf::assign();
            CFRelease(v31);
            MEMORY[0x29C270E70](value);
            if (v32)
            {
              goto LABEL_67;
            }

            v33 = HIBYTE(v66.__r_.__value_.__r.__words[2]);
            if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_56;
            }
          }

          else
          {
            MEMORY[0x29C270E70](value);
            v33 = HIBYTE(v66.__r_.__value_.__r.__words[2]);
            if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_56:
              if ((v33 & 0x80) != 0)
              {
                std::string::__assign_no_alias<true>(&__p, v66.__r_.__value_.__l.__data_, v66.__r_.__value_.__l.__size_);
              }

              else
              {
                __p = v66;
              }

              goto LABEL_67;
            }
          }

          if ((v33 & 0x80u) == 0)
          {
            v34 = &v66;
          }

          else
          {
            v34 = v66.__r_.__value_.__r.__words[0];
          }

          if ((v33 & 0x80u) == 0)
          {
            v35 = v33;
          }

          else
          {
            v35 = v66.__r_.__value_.__l.__size_;
          }

          std::string::__assign_no_alias<false>(&__p.__r_.__value_.__l.__data_, v34, v35);
LABEL_67:
          if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v66.__r_.__value_.__l.__data_);
          }

          v36 = v78.__r_.__value_.__l.__size_;
          if (v78.__r_.__value_.__l.__size_ && !atomic_fetch_add((v78.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
          {
            (v36->__on_zero_shared)(v36);
            std::__shared_weak_count::__release_weak(v36);
          }

          if (TelephonyUtilIsInternalBuild())
          {
            ctu::cf::update<__CFString const*,__CFBoolean const*>(v70, @"RestoreInternal", v26);
          }

          v37 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v37 = __p.__r_.__value_.__l.__size_;
          }

          if (v37 && ctu::cf::convert_copy())
          {
            v38 = a1[1];
            if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
            {
              p_p = &__p;
              if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                p_p = __p.__r_.__value_.__r.__words[0];
              }

              LODWORD(v78.__r_.__value_.__l.__data_) = 136315138;
              *(v78.__r_.__value_.__r.__words + 4) = p_p;
              _os_log_impl(&dword_297476000, v38, OS_LOG_TYPE_DEFAULT, "#N Retrieved debug args: %s", &v78, 0xCu);
            }

            v40 = v77;
            v41 = v67;
            v67 = v77;
            if (v41)
            {
              CFRelease(v41);
            }

            v42 = v70;
            v78.__r_.__value_.__r.__words[0] = @"DebugArgs";
            CFRetain(@"DebugArgs");
            value[0] = v40;
            if (v40)
            {
              CFRetain(v40);
              CFDictionarySetValue(v42, @"DebugArgs", v40);
              CFRelease(v40);
            }

            CFRelease(@"DebugArgs");
          }

          value[1] = 0xAAAAAAAAAAAAAA00;
          v65 = 0x8AAAAAAAAAAAAAALL;
          v63 = 0;
          value[0] = 0x646E616265736142;
          v13 = v72;
          v78.__r_.__value_.__r.__words[0] = 0;
          v78.__r_.__value_.__l.__size_ = &v63;
          v43 = BasebandUpdaterCreate();
          v44 = *v78.__r_.__value_.__l.__size_;
          if (v78.__r_.__value_.__r.__words[0])
          {
            *v78.__r_.__value_.__l.__size_ = v78.__r_.__value_.__r.__words[0];
            if (!v44)
            {
              goto LABEL_92;
            }
          }

          else
          {
            *v78.__r_.__value_.__l.__size_ = 0;
            if (!v44)
            {
              goto LABEL_92;
            }
          }

          CFRelease(v44);
LABEL_92:
          if (!v43)
          {
            v47 = v63;
            if (v63 && (v48 = a1[1], os_log_type_enabled(v48, OS_LOG_TYPE_ERROR)))
            {
              LODWORD(v78.__r_.__value_.__l.__data_) = 138412290;
              *(v78.__r_.__value_.__r.__words + 4) = v47;
              _os_log_error_impl(&dword_297476000, v48, OS_LOG_TYPE_ERROR, "%@", &v78, 0xCu);
              v49 = a1[1];
              if (!os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_110;
              }
            }

            else
            {
              v49 = a1[1];
              if (!os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_110;
              }
            }

            LOWORD(v78.__r_.__value_.__l.__data_) = 0;
            _os_log_error_impl(&dword_297476000, v49, OS_LOG_TYPE_ERROR, "Failed to initialize BasebandUpdater", &v78, 2u);
            goto LABEL_110;
          }

          v78.__r_.__value_.__r.__words[0] = 0;
          v78.__r_.__value_.__l.__size_ = &v63;
          v45 = BasebandUpdaterExecCommand();
          v46 = *v78.__r_.__value_.__l.__size_;
          if (v78.__r_.__value_.__r.__words[0])
          {
            *v78.__r_.__value_.__l.__size_ = v78.__r_.__value_.__r.__words[0];
            if (v46)
            {
              goto LABEL_101;
            }
          }

          else
          {
            *v78.__r_.__value_.__l.__size_ = 0;
            if (v46)
            {
LABEL_101:
              CFRelease(v46);
            }
          }

          if (v45)
          {
            v50 = a1[1];
            if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(v78.__r_.__value_.__l.__data_) = 0;
              _os_log_impl(&dword_297476000, v50, OS_LOG_TYPE_DEFAULT, "#I Baseband boot complete", &v78, 2u);
            }

            CFRelease(v43);
            v21 = 1;
            v51 = v63;
            if (!v63)
            {
LABEL_115:
              if (SHIBYTE(v65) < 0)
              {
                operator delete(value[0]);
                v56 = v67;
                if (!v67)
                {
                  goto LABEL_120;
                }
              }

              else
              {
                v56 = v67;
                if (!v67)
                {
LABEL_120:
                  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(__p.__r_.__value_.__l.__data_);
                    v57 = v70;
                    if (!v70)
                    {
                      goto LABEL_125;
                    }
                  }

                  else
                  {
                    v57 = v70;
                    if (!v70)
                    {
LABEL_125:
                      v24 = v71;
                      if (!v71)
                      {
                        goto LABEL_127;
                      }

                      goto LABEL_126;
                    }
                  }

                  CFRelease(v57);
                  goto LABEL_125;
                }
              }

              CFRelease(v56);
              goto LABEL_120;
            }

LABEL_114:
            CFRelease(v51);
            goto LABEL_115;
          }

          CFRelease(v43);
          v52 = v63;
          if (v63 && (v53 = a1[1], os_log_type_enabled(v53, OS_LOG_TYPE_ERROR)))
          {
            LODWORD(v78.__r_.__value_.__l.__data_) = 138412290;
            *(v78.__r_.__value_.__r.__words + 4) = v52;
            _os_log_error_impl(&dword_297476000, v53, OS_LOG_TYPE_ERROR, "%@", &v78, 0xCu);
            v54 = a1[1];
            if (!os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_110;
            }
          }

          else
          {
            v54 = a1[1];
            if (!os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_110;
            }
          }

          LOWORD(v78.__r_.__value_.__l.__data_) = 0;
          _os_log_error_impl(&dword_297476000, v54, OS_LOG_TYPE_ERROR, "Failed to boot baseband", &v78, 2u);
LABEL_110:
          memset(&v78, 0, sizeof(v78));
          ctu::cf::assign();
          v62 = v78;
          v55 = a1[1];
          if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
          {
            v61 = &v62;
            if ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v61 = v62.__r_.__value_.__r.__words[0];
            }

            LODWORD(v78.__r_.__value_.__l.__data_) = 136315138;
            *(v78.__r_.__value_.__r.__words + 4) = v61;
            _os_log_error_impl(&dword_297476000, v55, OS_LOG_TYPE_ERROR, "%s", &v78, 0xCu);
            if ((*(a2 + 23) & 0x80000000) == 0)
            {
LABEL_113:
              v21 = 0;
              *a2 = v62;
              v51 = v63;
              if (!v63)
              {
                goto LABEL_115;
              }

              goto LABEL_114;
            }
          }

          else if ((*(a2 + 23) & 0x80000000) == 0)
          {
            goto LABEL_113;
          }

          operator delete(*a2);
          goto LABEL_113;
        }

LABEL_49:
        atomic_fetch_add_explicit(v27 + 1, 1uLL, memory_order_relaxed);
        goto LABEL_50;
      }

      v22 = a1[1];
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
LABEL_31:
        v21 = 0;
        v24 = v71;
        if (!v71)
        {
          goto LABEL_127;
        }

LABEL_126:
        CFRelease(v24);
        goto LABEL_127;
      }

      LOWORD(v78.__r_.__value_.__l.__data_) = 0;
      v23 = "Failed to create updater option dictionary!";
    }

    else
    {
      v22 = a1[1];
      if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_31;
      }

      LOWORD(v78.__r_.__value_.__l.__data_) = 0;
      v23 = "Failed to create restore option dictionary!";
    }

    _os_log_error_impl(&dword_297476000, v22, OS_LOG_TYPE_ERROR, v23, &v78, 2u);
    v21 = 0;
    v24 = v71;
    if (v71)
    {
      goto LABEL_126;
    }
  }

  else
  {
    v20 = a1[1];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v78.__r_.__value_.__l.__data_) = 0;
      _os_log_error_impl(&dword_297476000, v20, OS_LOG_TYPE_ERROR, "Failed to create option dictionary!", &v78, 2u);
    }

    v21 = 0;
    v13 = 0;
  }

LABEL_127:
  if (v13)
  {
    CFRelease(v13);
  }

  if (SHIBYTE(v73[2]) < 0)
  {
    operator delete(v73[0]);
  }

  v58 = v76;
  if (v76 && !atomic_fetch_add((v76 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v58->__on_zero_shared)(v58);
    std::__shared_weak_count::__release_weak(v58);
  }

  v59 = *MEMORY[0x29EDCA608];
  return v21;
}

void sub_2975B15F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, char a35, int a36, __int16 a37, char a38, char a39, int a40, __int16 a41, char a42, char a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

const void **ctu::cf::detail::TakeOwnershipProxy<__CFError>::~TakeOwnershipProxy(const void **a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *v2;
  if (v3)
  {
    *v2 = v3;
    if (v4)
    {
      goto LABEL_5;
    }
  }

  else
  {
    *v2 = 0;
    if (v4)
    {
LABEL_5:
      CFRelease(v4);
    }
  }

  return a1;
}

void BootControllerINT::handleError(BootControllerINT *this@<X0>, _OWORD *a2@<X8>)
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
    _os_log_error_impl(&dword_297476000, v5, OS_LOG_TYPE_ERROR, "%s", &v9, 0xCu);
    v8 = *MEMORY[0x29EDCA608];
  }

  else
  {
    v6 = *MEMORY[0x29EDCA608];
  }
}

void sub_2975B198C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
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

void ctu::cf::update<__CFString const*,__CFBoolean const*>(__CFDictionary *a1, CFTypeRef cf, CFTypeRef a3)
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
      CFDictionarySetValue(a1, cf, a3);
    }

    CFRelease(a3);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_2975B1B08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10)
{
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a9);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a10);
  _Unwind_Resume(a1);
}

void sub_2975B1B2C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va);
  _Unwind_Resume(a1);
}

uint64_t __cxx_global_var_init_6()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ctu::XpcJetsamAssertion>::~PthreadMutexGuardPolicy, &ctu::Singleton<ctu::XpcJetsamAssertion,ctu::XpcJetsamAssertion,ctu::PthreadMutexGuardPolicy<ctu::XpcJetsamAssertion>>::sInstance, &dword_297476000);
  }

  return result;
}

uint64_t __cxx_global_var_init_30_0()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ABMProperties>::~PthreadMutexGuardPolicy, &ctu::Singleton<ABMProperties,ABMProperties,ctu::PthreadMutexGuardPolicy<ABMProperties>>::sInstance, &dword_297476000);
  }

  return result;
}

uint64_t HealthEventDB::addHealthEvent(HealthEventDB *this, const HealthEvent *a2)
{
  v17 = *MEMORY[0x29EDCA608];
  v4 = *(this + 1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    HealthEvent::asString(a2, __p);
    v12 = v14 >= 0 ? __p : __p[0];
    *buf = 136315138;
    v16 = v12;
    _os_log_debug_impl(&dword_297476000, v4, OS_LOG_TYPE_DEBUG, "#D Adding health event: %s", buf, 0xCu);
    if (v14 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v6 = *(this + 3);
  v5 = *(this + 4);
  if (0xAAAAAAAAAAAAAAABLL * ((v5 - v6) >> 3) == *(this + 7))
  {
    if (v5 != v6)
    {
      *(*(this + 6) + 8) = *(a2 + 8);
      v7 = *(this + 6) + 24;
      *(this + 6) = v7;
      if (v7 == *(this + 4))
      {
        v7 = *(this + 3);
        *(this + 6) = v7;
      }

      *(this + 5) = v7;
    }
  }

  else
  {
    v8 = *(this + 6);
    *v8 = &unk_2A1E46818;
    *(v8 + 8) = *(a2 + 8);
    v9 = *(this + 6) + 24;
    *(this + 6) = v9;
    if (v9 == *(this + 4))
    {
      *(this + 6) = *(this + 3);
    }

    ++*(this + 7);
  }

  HealthEventDB::commitToDisk(this);
  v10 = *MEMORY[0x29EDCA608];
  return 1;
}

void HealthEventDB::commitToDisk(HealthEventDB *this)
{
  v31 = 0;
  v32 = 0;
  cf = 0;
  v30 = 0;
  v2 = *MEMORY[0x29EDB8ED8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  v4 = Mutable;
  if (Mutable)
  {
    v32 = Mutable;
  }

  v5 = CFArrayCreateMutable(v2, 0, MEMORY[0x29EDB9000]);
  v6 = v5;
  if (v5)
  {
    v31 = v5;
  }

  v7 = CFArrayCreateMutable(v2, 0, MEMORY[0x29EDB9000]);
  v8 = v7;
  if (v7)
  {
    v30 = v7;
  }

  v9 = CFArrayCreateMutable(v2, 0, MEMORY[0x29EDB9000]);
  v11 = v9;
  if (v9)
  {
    cf = v9;
  }

  if (*(this + 7))
  {
    v12 = *(this + 5);
    if (v12)
    {
      do
      {
        valuePtr = *(v12 + 8);
        v37 = *(v12 + 16);
        v36 = *(v12 + 9);
        v13 = CFNumberCreate(v2, kCFNumberSInt8Type, &valuePtr);
        v35 = v13;
        v14 = CFNumberCreate(v2, kCFNumberSInt64Type, &v37);
        v34 = v14;
        v15 = CFNumberCreate(v2, kCFNumberSInt8Type, &v36);
        v33 = v15;
        if (v13)
        {
          if (v14)
          {
            CFRetain(v13);
            CFArrayAppendValue(v6, v13);
            CFRelease(v13);
            CFRetain(v14);
            CFArrayAppendValue(v8, v14);
            CFRelease(v14);
            __p[0] = v15;
            if (v15)
            {
              CFRetain(v15);
              CFArrayAppendValue(v11, v15);
              CFRelease(v15);
            }
          }
        }

        if (v15)
        {
          CFRelease(v15);
        }

        if (v14)
        {
          CFRelease(v14);
        }

        if (v13)
        {
          CFRelease(v13);
        }

        v12 += 24;
        if (v12 == *(this + 4))
        {
          v12 = *(this + 3);
        }
      }

      while (v12 && v12 != *(this + 6));
    }
  }

  ctu::cf::insert<char const*,__CFArray *>(v4, "HealthEventTypes", v6, v2, v10);
  ctu::cf::insert<char const*,__CFArray *>(v32, "HealthEventTimes", v30, v2, v16);
  ctu::cf::insert<char const*,__CFArray *>(v32, "HealthEventCauseCode", cf, v2, v17);
  for (i = *(this + 10); i; i = *i)
  {
    v25 = (i + 2);
    if (*(i + 39) < 0)
    {
      v25 = *v25;
    }

    (*(*i[5] + 24))(__p);
    ctu::cf::insert<char const*,__CFDictionary const*>(v32, v25, __p[0], v2, v26);
    if (__p[0])
    {
      CFRelease(__p[0]);
    }
  }

  pthread_mutex_lock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  v19 = off_2A18CAFB8;
  if (!off_2A18CAFB8)
  {
    SharedData::create_default_global(__p);
    v20 = *__p;
    __p[0] = 0;
    __p[1] = 0;
    v21 = *(&off_2A18CAFB8 + 1);
    off_2A18CAFB8 = v20;
    if (v21 && !atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v21->__on_zero_shared)(v21);
      std::__shared_weak_count::__release_weak(v21);
    }

    v22 = __p[1];
    if (__p[1] && !atomic_fetch_add(__p[1] + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v22->__on_zero_shared)(v22);
      std::__shared_weak_count::__release_weak(v22);
    }

    v19 = off_2A18CAFB8;
  }

  v23 = *(&off_2A18CAFB8 + 1);
  if (*(&off_2A18CAFB8 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18CAFB8 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  v28 = 13;
  strcpy(__p, "HealthEventDB");
  SharedData::setPreference<__CFDictionary *>(v19, __p, v32);
  if (v28 < 0)
  {
    operator delete(__p[0]);
  }

  if (!v23 || atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v24 = cf;
    if (!cf)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

  (v23->__on_zero_shared)(v23);
  std::__shared_weak_count::__release_weak(v23);
  v24 = cf;
  if (cf)
  {
LABEL_41:
    CFRelease(v24);
  }

LABEL_42:
  if (v30)
  {
    CFRelease(v30);
  }

  if (v31)
  {
    CFRelease(v31);
  }

  if (v32)
  {
    CFRelease(v32);
  }
}

void sub_2975B21D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va3, a5);
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v8 = va_arg(va2, const void *);
  va_copy(va3, va2);
  v10 = va_arg(va3, const void *);
  pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  ctu::cf::CFSharedRef<__CFArray>::~CFSharedRef(va);
  ctu::cf::CFSharedRef<__CFArray>::~CFSharedRef(va1);
  ctu::cf::CFSharedRef<__CFArray>::~CFSharedRef(va2);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(va3);
  _Unwind_Resume(a1);
}

uint64_t HealthEventDB::addHealthEvent(HealthEventDB *a1, char a2, char a3)
{
  memset(v10, 170, sizeof(v10));
  Timestamp::Timestamp(v7);
  Timestamp::asString(v7, 0, 9, &__p);
  v10[0] = &unk_2A1E46818;
  LOBYTE(v10[1]) = a2;
  BYTE1(v10[1]) = a3;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v11, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v11 = __p;
  }

  v10[2] = Timestamp::convert(&v11);
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

LABEL_8:
    operator delete(__p.__r_.__value_.__l.__data_);
    goto LABEL_6;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_8;
  }

LABEL_6:
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v7, v8);
  HealthEventDB::addHealthEvent(a1, v10);
  return 1;
}

void sub_2975B23C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if ((a18 & 0x80000000) == 0)
  {
    std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(&a10, a11);
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(&a10, a11);
  _Unwind_Resume(a1);
}

void HealthEventDB::HealthEventDB(HealthEventDB *this)
{
  v21 = *MEMORY[0x29EDCA608];
  ctu::OsLogContext::OsLogContext(__p, "com.apple.telephony.abm", "HealthEventDB");
  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x29C270D50](this + 8, &v16);
  MEMORY[0x29C270D60](&v16);
  ctu::OsLogContext::~OsLogContext(__p);
  *this = &unk_2A1E49DE0;
  *(this + 4) = 128;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 11) = 0;
  *(this + 24) = 1065353216;
  HealthEventDB::initFromDisk(this);
  v2 = operator new(0x70uLL);
  *(v2 + 8) = 0;
  *(v2 + 9) = 0;
  *v2 = &unk_2A1E4EA20;
  *(v2 + 7) = 0;
  *(v2 + 8) = 0u;
  *(v2 + 24) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 5) = 0u;
  *(v2 + 6) = 0u;
  v16 = v2;
  v3 = operator new(0x20uLL);
  v3->__vftable = &unk_2A1E49E50;
  v3->__shared_owners_ = 0;
  v3->__shared_weak_owners_ = 0;
  v3[1].__vftable = v2;
  v20 = 16;
  strcpy(__p, "KeyBasebandStats");
  v17 = v3;
  v18 = __p;
  v4 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<HealthStats>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<HealthStats>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<HealthStats>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<HealthStats>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this + 16, __p, &v18);
  v16 = 0;
  v17 = 0;
  v5 = v4[6];
  v4[5] = v2;
  v4[6] = v3;
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    if ((v20 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  if (v20 < 0)
  {
LABEL_4:
    operator delete(*__p);
  }

LABEL_5:
  v6 = v17;
  if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = operator new(0x28uLL);
  *&v7->~__shared_weak_count = 0u;
  *&v7->__on_zero_shared = 0u;
  v7->__get_deleter = 0;
  v7->__on_zero_shared_weak = 0;
  v7->~__shared_weak_count = &unk_2A1E4EA80;
  v7->__on_zero_shared = 0;
  LOBYTE(v7->__on_zero_shared_weak) = 0;
  v16 = v7;
  v8 = operator new(0x20uLL);
  v8->__vftable = &unk_2A1E49EA0;
  v8->__shared_owners_ = 0;
  v8->__shared_weak_owners_ = 0;
  v8[1].__vftable = v7;
  v20 = 18;
  strcpy(__p, "KeyCommCenterStats");
  v17 = v8;
  v18 = __p;
  v9 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<HealthStats>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<HealthStats>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<HealthStats>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<HealthStats>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(this + 16, __p, &v18);
  v16 = 0;
  v17 = 0;
  v10 = v9[6];
  v9[5] = v7;
  v9[6] = v8;
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
    if ((v20 & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (v20 < 0)
  {
LABEL_11:
    operator delete(*__p);
  }

LABEL_12:
  v11 = v17;
  if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
    v12 = *(this + 10);
    if (!v12)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v12 = *(this + 10);
    if (!v12)
    {
      goto LABEL_27;
    }
  }

  do
  {
    if (((**v12[5])(v12[5]) & 1) == 0)
    {
      v13 = *(this + 1);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = v12 + 2;
        if (*(v12 + 39) < 0)
        {
          v14 = *v14;
        }

        *__p = 136315138;
        *&__p[4] = v14;
        _os_log_error_impl(&dword_297476000, v13, OS_LOG_TYPE_ERROR, "failed to init %s from disk", __p, 0xCu);
      }
    }

    v12 = *v12;
  }

  while (v12);
LABEL_27:
  v15 = *MEMORY[0x29EDCA608];
}

void sub_2975B28A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a12);
  std::unordered_map<std::string,std::shared_ptr<HealthStats>>::~unordered_map[abi:ne200100](v20 + 64);
  boost::circular_buffer<HealthEvent,std::allocator<HealthEvent>>::~circular_buffer(v21);
  MEMORY[0x29C270D60](v20 + 8);
  _Unwind_Resume(a1);
}

void HealthEventDB::initFromDisk(HealthEventDB *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v3 = operator new(24 * v2);
  }

  else
  {
    v3 = 0;
  }

  v4 = &v3[24 * v2];
  v5 = *(this + 3);
  v6 = *(this + 4);
  *(this + 3) = v3;
  *(this + 4) = v4;
  v7 = *(this + 5);
  *(this + 5) = v3;
  *(this + 6) = v3;
  v8 = *(this + 7);
  for (*(this + 7) = 0; v8; --v8)
  {
    v9 = v7 + 3;
    (**v7)(v7);
    if (v9 == v6)
    {
      v7 = v5;
    }

    else
    {
      v7 = v9;
    }
  }

  if (v5)
  {
    operator delete(v5);
  }

  v49 = 0;
  pthread_mutex_lock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  v10 = off_2A18CAFB8;
  if (!off_2A18CAFB8)
  {
    SharedData::create_default_global(__p);
    v11 = *__p;
    *__p = 0;
    *&__p[8] = 0;
    v12 = *(&off_2A18CAFB8 + 1);
    off_2A18CAFB8 = v11;
    if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v12->__on_zero_shared)(v12);
      std::__shared_weak_count::__release_weak(v12);
    }

    v13 = *&__p[8];
    if (*&__p[8] && !atomic_fetch_add((*&__p[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v13->__on_zero_shared)(v13);
      std::__shared_weak_count::__release_weak(v13);
    }

    v10 = off_2A18CAFB8;
  }

  v14 = *(&off_2A18CAFB8 + 1);
  if (*(&off_2A18CAFB8 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18CAFB8 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  __p[23] = 13;
  strcpy(__p, "HealthEventDB");
  os_unfair_lock_lock((v10 + 40));
  Preferences::getPreference<__CFDictionary const*>(v10, __p, &v49);
  os_unfair_lock_unlock((v10 + 40));
  if ((__p[23] & 0x80000000) != 0)
  {
    operator delete(*__p);
  }

  if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
    v15 = v49;
    v47 = v49;
    if (!v49)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v15 = v49;
  v47 = v49;
  if (v49)
  {
LABEL_26:
    CFRetain(v15);
  }

LABEL_27:
  v46[0] = 0xAAAAAAAAAAAAAAAALL;
  v46[1] = 0xAAAAAAAAAAAAAAAALL;
  ctu::cf::dict_adapter::dict_adapter(v46, v15);
  ctu::cf::MakeCFString::MakeCFString(__p, "HealthEventTypes");
  v16 = ctu::cf::map_adapter::copyCFArrayRef(v46, *__p);
  MEMORY[0x29C270E70](__p);
  v45 = v16;
  ctu::cf::MakeCFString::MakeCFString(__p, "HealthEventCauseCode");
  v17 = ctu::cf::map_adapter::copyCFArrayRef(v46, *__p);
  MEMORY[0x29C270E70](__p);
  v44 = v17;
  ctu::cf::MakeCFString::MakeCFString(__p, "HealthEventTimes");
  v18 = ctu::cf::map_adapter::copyCFArrayRef(v46, *__p);
  MEMORY[0x29C270E70](__p);
  v43 = v18;
  if (v16)
  {
    Count = CFArrayGetCount(v16);
    v20 = CFArrayGetCount(v18);
    v21 = v20 >= Count ? Count : v20;
    if (v21)
    {
      for (i = 0; i != v21; ++i)
      {
        v42 = 0;
        v41 = 0;
        v40 = 0;
        ValueAtIndex = CFArrayGetValueAtIndex(v16, i);
        v26 = ValueAtIndex;
        if (ValueAtIndex)
        {
          v27 = CFGetTypeID(ValueAtIndex);
          if (v27 == CFNumberGetTypeID() && (ctu::cf::assign(&v42, v26, v28) & 1) != 0)
          {
            v29 = CFArrayGetValueAtIndex(v18, i);
            v30 = v29;
            if (v29)
            {
              v31 = CFGetTypeID(v29);
              if (v31 == CFNumberGetTypeID())
              {
                if (ctu::cf::assign(&v41, v30, v32))
                {
                  v33 = CFArrayGetValueAtIndex(v17, i);
                  v34 = v33;
                  if (v33)
                  {
                    v35 = CFGetTypeID(v33);
                    if (v35 == CFNumberGetTypeID())
                    {
                      if (ctu::cf::assign(&v40, v34, v36))
                      {
                        *__p = &unk_2A1E46818;
                        __p[8] = v42;
                        __p[9] = v40;
                        *&__p[16] = v41;
                        v38 = *(this + 3);
                        v37 = *(this + 4);
                        if (0xAAAAAAAAAAAAAAABLL * ((v37 - v38) >> 3) == *(this + 7))
                        {
                          if (v37 != v38)
                          {
                            *(*(this + 6) + 8) = *&__p[8];
                            v39 = *(this + 6) + 24;
                            *(this + 6) = v39;
                            if (v39 == *(this + 4))
                            {
                              v39 = *(this + 3);
                              *(this + 6) = v39;
                            }

                            *(this + 5) = v39;
                          }
                        }

                        else
                        {
                          v23 = *(this + 6);
                          *v23 = &unk_2A1E46818;
                          *(v23 + 8) = *&__p[8];
                          v24 = *(this + 6) + 24;
                          *(this + 6) = v24;
                          if (v24 == *(this + 4))
                          {
                            *(this + 6) = *(this + 3);
                          }

                          ++*(this + 7);
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  if (v18)
  {
    CFRelease(v18);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  MEMORY[0x29C270ED0](v46);
  if (v15)
  {
    CFRelease(v15);
  }
}

void sub_2975B2EF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va4, a5);
  va_start(va3, a5);
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v8 = va_arg(va2, const void *);
  va_copy(va3, va2);
  v10 = va_arg(va3, const void *);
  va_copy(va4, va3);
  v12 = va_arg(va4, void);
  v14 = va_arg(va4, void);
  ctu::cf::CFSharedRef<__CFArray const>::~CFSharedRef(va);
  ctu::cf::CFSharedRef<__CFArray const>::~CFSharedRef(va1);
  ctu::cf::CFSharedRef<__CFArray const>::~CFSharedRef(va2);
  MEMORY[0x29C270ED0](va3);
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(va4);
  _Unwind_Resume(a1);
}

void SharedData::setPreference<__CFDictionary *>(os_unfair_lock_s *a1, uint64_t a2, const void *a3)
{
  os_unfair_lock_lock(a1 + 10);
  if (*(a2 + 23) >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  ctu::cf::MakeCFString::MakeCFString(&v7, v6);
  ctu::cf::plist_adapter::set<__CFArray *>(a1, a3, v7, 1);
  MEMORY[0x29C270E70](&v7);
  os_unfair_lock_unlock(a1 + 10);
}

void HealthEventDB::clearDB(HealthEventDB *this)
{
  cf = 0;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x29EDB8ED8], 0, MEMORY[0x29EDB9010], MEMORY[0x29EDB9020]);
  if (Mutable)
  {
    cf = Mutable;
  }

  pthread_mutex_lock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  v3 = off_2A18CAFB8;
  if (!off_2A18CAFB8)
  {
    SharedData::create_default_global(__p);
    v4 = *__p;
    __p[0] = 0;
    __p[1] = 0;
    v5 = *(&off_2A18CAFB8 + 1);
    off_2A18CAFB8 = v4;
    if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    v6 = __p[1];
    if (__p[1] && !atomic_fetch_add(__p[1] + 1, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }

    v3 = off_2A18CAFB8;
  }

  v7 = *(&off_2A18CAFB8 + 1);
  if (*(&off_2A18CAFB8 + 1))
  {
    atomic_fetch_add_explicit((*(&off_2A18CAFB8 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  v13 = 13;
  strcpy(__p, "HealthEventDB");
  SharedData::setPreference<__CFDictionary *>(v3, __p, cf);
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  if (*(this + 7))
  {
    v8 = 0;
    v9 = *(this + 5);
    do
    {
      (**v9)(v9);
      v10 = *(this + 4);
      v9 = (*(this + 5) + 24);
      *(this + 5) = v9;
      if (v9 == v10)
      {
        v9 = *(this + 3);
        *(this + 5) = v9;
      }

      ++v8;
    }

    while (v8 < *(this + 7));
  }

  *(this + 7) = 0;
  v11 = *(this + 1);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__p[0]) = 0;
    _os_log_impl(&dword_297476000, v11, OS_LOG_TYPE_DEFAULT, "#I Health DB is cleared", __p, 2u);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_2975B32D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void HealthEventDB::getHealthInfo(HealthEventDB *this@<X0>, xpc_object_t *a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  v6 = MEMORY[0x29EDCAA00];
  if (v4)
  {
    *a2 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    *a2 = v5;
    if (!v5)
    {
      v7 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x29C272BA0](v5) == v6)
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v7 = xpc_null_create();
LABEL_8:
  *a2 = v7;
LABEL_9:
  xpc_release(v5);
  if (MEMORY[0x29C272BA0](*a2) == v6)
  {
    for (i = *(this + 10); i; i = *i)
    {
      (*(*i[5] + 24))(&cf);
      ctu::cf_to_xpc(&value, cf, v10);
      v11 = (i + 2);
      if (*(i + 39) < 0)
      {
        v11 = *v11;
      }

      xpc_dictionary_set_value(*a2, v11, value);
      v12 = value;
      value = xpc_null_create();
      xpc_release(v12);
      xpc_release(value);
      value = 0;
      if (cf)
      {
        CFRelease(cf);
      }
    }
  }

  else
  {
    v8 = *(this + 1);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(cf) = 0;
      _os_log_error_impl(&dword_297476000, v8, OS_LOG_TYPE_ERROR, "Failed to create dictionary to collect health info", &cf, 2u);
    }
  }
}

void sub_2975B34E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9)
{
  ctu::cf::CFSharedRef<__CFDictionary const>::~CFSharedRef(&a9);
  xpc::dict::~dict(v9);
  _Unwind_Resume(a1);
}

uint64_t HealthEventDB::updateBootStats(float *a1, void **a2)
{
  v9 = 16;
  strcpy(__p, "KeyBasebandStats");
  v11 = __p;
  v4 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<HealthStats>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<HealthStats>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<HealthStats>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<HealthStats>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1 + 16, __p, &v11)[5];
  v5 = *a2;
  object = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    object = xpc_null_create();
  }

  (*(*v4 + 32))(&cf, v4, &object);
  if (cf)
  {
    CFRelease(cf);
  }

  xpc_release(object);
  object = 0;
  if (v9 < 0)
  {
    operator delete(*__p);
  }

  HealthEventDB::commitToDisk(a1);
  return 1;
}

void sub_2975B3600(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t HealthEventDB::updateCommCenterStats(float *a1, void **a2)
{
  v9 = 18;
  strcpy(__p, "KeyCommCenterStats");
  v11 = __p;
  v4 = std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<HealthStats>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<HealthStats>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<HealthStats>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<HealthStats>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(a1 + 16, __p, &v11)[5];
  v5 = *a2;
  object = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    object = xpc_null_create();
  }

  (*(*v4 + 32))(&cf, v4, &object);
  if (cf)
  {
    CFRelease(cf);
  }

  xpc_release(object);
  object = 0;
  if (v9 < 0)
  {
    operator delete(*__p);
  }

  HealthEventDB::commitToDisk(a1);
  return 1;
}

void sub_2975B3734(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::unordered_map<std::string,std::shared_ptr<HealthStats>>::~unordered_map[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      while (1)
      {
        v3 = *v2;
        v4 = v2[6];
        if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v4->__on_zero_shared)(v4);
          std::__shared_weak_count::__release_weak(v4);
        }

        if (*(v2 + 39) < 0)
        {
          break;
        }

        operator delete(v2);
        v2 = v3;
        if (!v3)
        {
          goto LABEL_9;
        }
      }

      operator delete(v2[2]);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

LABEL_9:
  v5 = *a1;
  *a1 = 0;
  if (v5)
  {
    operator delete(v5);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<std::string,std::shared_ptr<HealthStats>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::shared_ptr<HealthStats>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::shared_ptr<HealthStats>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::shared_ptr<HealthStats>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(float *a1, uint64_t a2, __int128 **a3)
{
  v4 = a2;
  v6 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v7 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v7 = v6;
  }

  v8 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](v53, a2, v7);
  v9 = v8;
  v10 = *(a1 + 1);
  if (v10)
  {
    v11 = vcnt_s8(v10);
    v11.i16[0] = vaddlv_u8(v11);
    if (v11.u32[0] > 1uLL)
    {
      v12 = v8;
      if (v8 >= v10)
      {
        v12 = v8 % v10;
      }
    }

    else
    {
      v12 = (v10 - 1) & v8;
    }

    v13 = *(*a1 + 8 * v12);
    if (v13)
    {
      v14 = *v13;
      if (*v13)
      {
        v15 = v4[23];
        if (v15 >= 0)
        {
          v16 = v4[23];
        }

        else
        {
          v16 = *(v4 + 1);
        }

        if (v15 < 0)
        {
          v4 = *v4;
        }

        if (v11.u32[0] < 2uLL)
        {
          while (1)
          {
            v21 = v14[1];
            if (v21 == v9)
            {
              v22 = *(v14 + 39);
              v23 = v22;
              if ((v22 & 0x80u) != 0)
              {
                v22 = v14[3];
              }

              if (v22 == v16)
              {
                v24 = v23 >= 0 ? (v14 + 2) : v14[2];
                if (!memcmp(v24, v4, v16))
                {
                  return v14;
                }
              }
            }

            else if ((v21 & (v10 - 1)) != v12)
            {
              goto LABEL_43;
            }

            v14 = *v14;
            if (!v14)
            {
              goto LABEL_43;
            }
          }
        }

        do
        {
          v17 = v14[1];
          if (v17 == v9)
          {
            v18 = *(v14 + 39);
            v19 = v18;
            if ((v18 & 0x80u) != 0)
            {
              v18 = v14[3];
            }

            if (v18 == v16)
            {
              v20 = v19 >= 0 ? (v14 + 2) : v14[2];
              if (!memcmp(v20, v4, v16))
              {
                return v14;
              }
            }
          }

          else
          {
            if (v17 >= v10)
            {
              v17 %= v10;
            }

            if (v17 != v12)
            {
              break;
            }
          }

          v14 = *v14;
        }

        while (v14);
      }
    }
  }

  else
  {
    v12 = 0xAAAAAAAAAAAAAAAALL;
  }

LABEL_43:
  v14 = operator new(0x38uLL);
  v53[0] = v14;
  v53[1] = a1;
  v53[2] = 1;
  *v14 = 0;
  v14[1] = v9;
  v25 = *a3;
  v26 = **a3;
  v14[4] = *(*a3 + 2);
  *(v14 + 1) = v26;
  *(v25 + 1) = 0;
  *(v25 + 2) = 0;
  *v25 = 0;
  v14[5] = 0;
  v14[6] = 0;
  v27 = (*(a1 + 3) + 1);
  v28 = a1[8];
  if (!v10 || (v28 * v10) < v27)
  {
    v32 = 1;
    if (v10 >= 3)
    {
      v32 = (v10 & (v10 - 1)) != 0;
    }

    v33 = v32 | (2 * v10);
    v34 = vcvtps_u32_f32(v27 / v28);
    if (v33 <= v34)
    {
      prime = v34;
    }

    else
    {
      prime = v33;
    }

    if (prime == 1)
    {
      prime = 2;
    }

    else if ((prime & (prime - 1)) != 0)
    {
      prime = std::__next_prime(prime);
    }

    v10 = *(a1 + 1);
    if (prime > v10)
    {
LABEL_60:
      if (prime >> 61)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v36 = operator new(8 * prime);
      v37 = *a1;
      *a1 = v36;
      if (v37)
      {
        operator delete(v37);
        v36 = *a1;
      }

      *(a1 + 1) = prime;
      bzero(v36, 8 * prime);
      v39 = (a1 + 4);
      v38 = *(a1 + 2);
      if (!v38)
      {
        goto LABEL_90;
      }

      v40 = v38[1];
      v41 = prime - 1;
      if ((prime & (prime - 1)) == 0)
      {
        v42 = v40 & v41;
        v36[v42] = v39;
        for (i = *v38; *v38; i = *v38)
        {
          v44 = i[1] & v41;
          if (v44 == v42)
          {
            v38 = i;
          }

          else if (v36[v44])
          {
            *v38 = *i;
            *i = *v36[v44];
            *v36[v44] = i;
          }

          else
          {
            v36[v44] = v38;
            v38 = i;
            v42 = v44;
          }
        }

        goto LABEL_90;
      }

      if (v40 >= prime)
      {
        v40 %= prime;
      }

      v36[v40] = v39;
      v48 = *v38;
      if (!*v38)
      {
LABEL_90:
        v10 = prime;
        v50 = prime - 1;
        if ((prime & (prime - 1)) != 0)
        {
          goto LABEL_91;
        }

        goto LABEL_106;
      }

      while (1)
      {
        v49 = v48[1];
        if (v49 >= prime)
        {
          v49 %= prime;
        }

        if (v49 == v40)
        {
          goto LABEL_84;
        }

        if (v36[v49])
        {
          *v38 = *v48;
          *v48 = *v36[v49];
          *v36[v49] = v48;
          v48 = v38;
LABEL_84:
          v38 = v48;
          v48 = *v48;
          if (!v48)
          {
            goto LABEL_90;
          }
        }

        else
        {
          v36[v49] = v38;
          v38 = v48;
          v48 = *v48;
          v40 = v49;
          if (!v48)
          {
            goto LABEL_90;
          }
        }
      }
    }

    if (prime < v10)
    {
      v45 = vcvtps_u32_f32(*(a1 + 3) / a1[8]);
      if (v10 < 3 || (v46 = vcnt_s8(v10), v46.i16[0] = vaddlv_u8(v46), v46.u32[0] > 1uLL))
      {
        v45 = std::__next_prime(v45);
      }

      else
      {
        v47 = 1 << -__clz(v45 - 1);
        if (v45 >= 2)
        {
          v45 = v47;
        }
      }

      if (prime <= v45)
      {
        prime = v45;
      }

      if (prime < v10)
      {
        if (!prime)
        {
          v51 = *a1;
          *a1 = 0;
          if (v51)
          {
            operator delete(v51);
          }

          v10 = 0;
          *(a1 + 1) = 0;
          v50 = -1;
          goto LABEL_106;
        }

        goto LABEL_60;
      }

      v10 = *(a1 + 1);
    }

    v50 = v10 - 1;
    if ((v10 & (v10 - 1)) != 0)
    {
LABEL_91:
      if (v9 >= v10)
      {
        v12 = v9 % v10;
        v29 = *a1;
        v30 = *(*a1 + 8 * (v9 % v10));
        if (v30)
        {
          goto LABEL_46;
        }
      }

      else
      {
        v12 = v9;
        v29 = *a1;
        v30 = *(*a1 + 8 * v9);
        if (v30)
        {
          goto LABEL_46;
        }
      }

      goto LABEL_107;
    }

LABEL_106:
    v12 = v50 & v9;
    v29 = *a1;
    v30 = *(*a1 + 8 * v12);
    if (v30)
    {
      goto LABEL_46;
    }

    goto LABEL_107;
  }

  v29 = *a1;
  v30 = *(*a1 + 8 * v12);
  if (v30)
  {
LABEL_46:
    *v14 = *v30;
    goto LABEL_47;
  }

LABEL_107:
  *v14 = *(a1 + 2);
  *(a1 + 2) = v14;
  v29[v12] = a1 + 4;
  if (!*v14)
  {
    goto LABEL_48;
  }

  v52 = *(*v14 + 8);
  if ((v10 & (v10 - 1)) != 0)
  {
    if (v52 >= v10)
    {
      v52 %= v10;
    }

    v30 = &v29[v52];
  }

  else
  {
    v30 = &v29[v52 & (v10 - 1)];
  }

LABEL_47:
  *v30 = v14;
LABEL_48:
  ++*(a1 + 3);
  return v14;
}

void sub_2975B3D84(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<HealthStats>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<HealthStats>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<HealthStats>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::shared_ptr<HealthStats>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      v3 = *(v2 + 48);
      if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v6 = v2;
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        v2 = v6;
        if ((*(v6 + 39) & 0x80000000) == 0)
        {
          goto LABEL_7;
        }

        goto LABEL_6;
      }

      if (*(v2 + 39) < 0)
      {
LABEL_6:
        v4 = v2;
        operator delete(*(v2 + 16));
        v2 = v4;
      }
    }

LABEL_7:
    operator delete(v2);
  }

  return a1;
}

void std::__shared_ptr_pointer<BasebandStats *,std::shared_ptr<BasebandStats>::__shared_ptr_default_delete<BasebandStats,BasebandStats>,std::allocator<BasebandStats>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<BasebandStats *,std::shared_ptr<BasebandStats>::__shared_ptr_default_delete<BasebandStats,BasebandStats>,std::allocator<BasebandStats>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<BasebandStats *,std::shared_ptr<BasebandStats>::__shared_ptr_default_delete<BasebandStats,BasebandStats>,std::allocator<BasebandStats>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x80000002976A35E2)
  {
    if (((v2 & 0x80000002976A35E2 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000002976A35E2))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000002976A35E2 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void std::__shared_ptr_pointer<CommCenterStats *,std::shared_ptr<CommCenterStats>::__shared_ptr_default_delete<CommCenterStats,CommCenterStats>,std::allocator<CommCenterStats>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<CommCenterStats *,std::shared_ptr<CommCenterStats>::__shared_ptr_default_delete<CommCenterStats,CommCenterStats>,std::allocator<CommCenterStats>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<CommCenterStats *,std::shared_ptr<CommCenterStats>::__shared_ptr_default_delete<CommCenterStats,CommCenterStats>,std::allocator<CommCenterStats>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x80000002976A36ADLL)
  {
    if (((v2 & 0x80000002976A36ADLL & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000002976A36ADLL))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000002976A36ADLL & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void ctu::cf::insert<char const*,__CFArray *>(__CFDictionary *a1, const __CFString **a2, const void *a3, uint64_t a4, const __CFAllocator *a5)
{
  cf = 0;
  ctu::cf::convert_copy(&cf, a2, 0x8000100, a4, a5);
  v7 = cf;
  cf = a3;
  if (a3)
  {
    CFRetain(a3);
    if (v7)
    {
      CFDictionaryAddValue(a1, v7, a3);
    }

    CFRelease(a3);
  }

  if (v7)
  {
    CFRelease(v7);
  }
}

void sub_2975B4078(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a10);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a9);
  _Unwind_Resume(a1);
}

BOOL ctu::cf::insert<char const*,__CFDictionary const*>(__CFDictionary *a1, const __CFString **a2, const void *a3, uint64_t a4, const __CFAllocator *a5)
{
  v10 = 0;
  ctu::cf::convert_copy(&v10, a2, 0x8000100, a4, a5);
  v7 = v10;
  v10 = a3;
  if (!a3)
  {
    v8 = 0;
    if (!v7)
    {
      return v8;
    }

LABEL_7:
    CFRelease(v7);
    return v8;
  }

  CFRetain(a3);
  v8 = v7 != 0;
  if (v7)
  {
    CFDictionaryAddValue(a1, v7, a3);
  }

  CFRelease(a3);
  if (v7)
  {
    goto LABEL_7;
  }

  return v8;
}

void sub_2975B414C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a10);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a9);
  _Unwind_Resume(a1);
}

uint64_t __cxx_global_var_init_7()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<SharedData>::~PthreadMutexGuardPolicy, &ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance, &dword_297476000);
  }

  return result;
}

{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ABMNetworkPolicy>::~PthreadMutexGuardPolicy, &ctu::Singleton<ABMNetworkPolicy,ABMNetworkPolicy,ctu::PthreadMutexGuardPolicy<ABMNetworkPolicy>>::sInstance, &dword_297476000);
  }

  return result;
}

uint64_t asString@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v35 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v34[7] = v4;
  v34[8] = v4;
  v34[5] = v4;
  v34[6] = v4;
  v34[3] = v4;
  v34[4] = v4;
  v34[1] = v4;
  v34[2] = v4;
  v33 = v4;
  v34[0] = v4;
  *__p = v4;
  v32 = v4;
  v29 = v4;
  *__src = v4;
  v27 = v4;
  v28 = v4;
  v26 = v4;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v26);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v27, "Time: ", 6);
  v6 = *(a1 + 23);
  if (v6 >= 0)
  {
    v7 = a1;
  }

  else
  {
    v7 = *a1;
  }

  if (v6 >= 0)
  {
    v8 = *(a1 + 23);
  }

  else
  {
    v8 = *(a1 + 8);
  }

  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, v7, v8);
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "; Mode: ", 8);
  v11 = MEMORY[0x29C271B60](v10, *(a1 + 24));
  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "; Action: ", 10);
  v15 = *(a1 + 32);
  v14 = a1 + 32;
  v13 = v15;
  v16 = *(v14 + 23);
  if (v16 >= 0)
  {
    v17 = v14;
  }

  else
  {
    v17 = v13;
  }

  if (v16 >= 0)
  {
    v18 = *(v14 + 23);
  }

  else
  {
    v18 = *(v14 + 8);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, v17, v18);
  if ((BYTE8(v33) & 0x10) != 0)
  {
    v20 = v33;
    if (v33 < __src[1])
    {
      *&v33 = __src[1];
      v20 = __src[1];
    }

    v21 = __src[0];
    v19 = v20 - __src[0];
    if ((v20 - __src[0]) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_31;
    }
  }

  else
  {
    if ((BYTE8(v33) & 8) == 0)
    {
      v19 = 0;
      a2[23] = 0;
      goto LABEL_27;
    }

    v21 = *(&v28 + 1);
    v19 = *(&v29 + 1) - *(&v28 + 1);
    if (*(&v29 + 1) - *(&v28 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
    {
LABEL_31:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v19 >= 0x17)
  {
    if ((v19 | 7) == 0x17)
    {
      v22 = 25;
    }

    else
    {
      v22 = (v19 | 7) + 1;
    }

    v23 = operator new(v22);
    *(a2 + 1) = v19;
    *(a2 + 2) = v22 | 0x8000000000000000;
    *a2 = v23;
    a2 = v23;
    goto LABEL_26;
  }

  a2[23] = v19;
  if (v19)
  {
LABEL_26:
    memmove(a2, v21, v19);
  }

LABEL_27:
  a2[v19] = 0;
  *&v26 = *MEMORY[0x29EDC9528];
  v24 = *(MEMORY[0x29EDC9528] + 72);
  *(&v26 + *(v26 - 24)) = *(MEMORY[0x29EDC9528] + 64);
  *&v27 = v24;
  *(&v27 + 1) = MEMORY[0x29EDC9570] + 16;
  if (SHIBYTE(v32) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v27 + 1) = MEMORY[0x29EDC9568] + 16;
  std::locale::~locale(&v28);
  std::iostream::~basic_iostream();
  return MEMORY[0x29C271DA0](v34);
}

void sub_2975B44A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a9, MEMORY[0x29EDC9528]);
  MEMORY[0x29C271DA0](v9 + 128);
  _Unwind_Resume(a1);
}

void BBLogTracker::addLog(uint64_t **a1, __int128 *a2, int a3, uint64_t a4)
{
  v13 = a3;
  v11 = 0xAAAAAAAAAAAAAAAALL;
  v12 = 0xAAAAAAAAAAAAAAAALL;
  std::allocate_shared[abi:ne200100]<LogInfo,std::allocator<LogInfo>,std::string const&,abm::helper::SystemLogsMode &,std::string const&,0>(a2, &v13, a4, &v11);
  v14 = a2;
  v6 = std::__tree<std::__value_type<std::string,std::shared_ptr<LogInfo>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<LogInfo>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<LogInfo>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(a1, a2, &std::piecewise_construct, &v14);
  v8 = v11;
  v7 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = v6[8];
  v6[7] = v8;
  v6[8] = v7;
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  v10 = v12;
  if (v12)
  {
    if (!atomic_fetch_add((v12 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
    }
  }
}

uint64_t *BBLogTracker::getLog@<X0>(uint64_t a1@<X0>, const void **a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  result = std::__tree<std::__value_type<std::string,std::map<std::string,xpc::dict>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::map<std::string,xpc::dict>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::map<std::string,xpc::dict>>>>::find<std::string>(a1, a2);
  if ((a1 + 8) != result)
  {
    v7 = result[7];
    v6 = result[8];
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    *a3 = v7;
    a3[1] = v6;
  }

  return result;
}

uint64_t *BBLogTracker::limitLogs(uint64_t *this, unsigned int a2)
{
  v2 = a2;
  if (this[2] > a2)
  {
    v3 = this;
    do
    {
      this = std::__tree<std::__value_type<std::string,std::shared_ptr<LogInfo>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<LogInfo>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<LogInfo>>>>::erase(v3, *v3);
    }

    while (v3[2] > v2);
  }

  return this;
}

void BBLogTracker::getLastLog(BBLogTracker *this@<X0>, unsigned int a2@<W1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  if (!*(this + 2))
  {
    return;
  }

  if (a2)
  {
    v45.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    *&v45.tv_usec = 0xAAAAAAAAAAAAAAAALL;
    gettimeofday(&v45, 0);
    tv_sec = v45.tv_sec;
    tv_usec = v45.tv_usec;
    if (v45.tv_usec >= 0)
    {
      v8 = v45.tv_usec;
    }

    else
    {
      v8 = (v45.tv_usec + 1000000);
    }

    memset(v44, 170, sizeof(v44));
    Timestamp::Timestamp(v44);
    if (v44[1])
    {
      v9 = v44[1];
      while (1)
      {
        while (1)
        {
          v11 = v9;
          v12 = *(v9 + 32);
          if (v12 < 1)
          {
            break;
          }

          v9 = *v11;
          v10 = v11;
          if (!*v11)
          {
            goto LABEL_21;
          }
        }

        if ((v12 & 0x80000000) == 0)
        {
          break;
        }

        v9 = v11[1];
        if (!v9)
        {
          v10 = v11 + 1;
          goto LABEL_21;
        }
      }

      v19 = v11;
    }

    else
    {
      v10 = &v44[1];
      v11 = &v44[1];
LABEL_21:
      v19 = operator new(0x38uLL);
      v19[8] = 0;
      *(v19 + 5) = 0;
      *(v19 + 6) = 0;
      *v19 = 0;
      *(v19 + 1) = 0;
      *(v19 + 2) = v11;
      *v10 = v19;
      if (*v44[0])
      {
        v44[0] = *v44[0];
      }

      std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v44[1], v19);
      ++v44[2];
    }

    *(v19 + 5) = tv_sec - a2 + (tv_usec >> 31);
    *(v19 + 6) = v8 | 0xAAAAAAAA00000000;
    v22 = *(this + 1);
    v21 = (this + 8);
    v20 = v22;
    if (v22)
    {
      do
      {
        v23 = v20;
        v20 = v20[1];
      }

      while (v20);
    }

    else
    {
      v24 = v21;
      do
      {
        v23 = v24[2];
        v16 = *v23 == v24;
        v24 = v23;
      }

      while (v16);
    }

    Timestamp::asString(v44, 0, 9, v42);
    v27 = v23[4];
    v26 = v23 + 4;
    v25 = v27;
    v28 = *(v26 + 23);
    if (v28 >= 0)
    {
      v29 = v26;
    }

    else
    {
      v29 = v25;
    }

    if (v28 >= 0)
    {
      v30 = *(v26 + 23);
    }

    else
    {
      v30 = v26[1];
    }

    v31 = v43;
    v32 = v42[0];
    if ((v43 & 0x80u) == 0)
    {
      v33 = v42;
    }

    else
    {
      v33 = v42[0];
    }

    if ((v43 & 0x80u) == 0)
    {
      v34 = v43;
    }

    else
    {
      v34 = v42[1];
    }

    if (v34 >= v30)
    {
      v35 = v30;
    }

    else
    {
      v35 = v34;
    }

    v36 = memcmp(v29, v33, v35);
    if (v36)
    {
      if ((v36 & 0x80000000) == 0)
      {
        goto LABEL_46;
      }
    }

    else if (v30 >= v34)
    {
LABEL_46:
      v37 = 1;
      if ((v31 & 0x80000000) == 0)
      {
LABEL_48:
        if (v37)
        {
          v38 = *v21;
          if (*v21)
          {
            do
            {
              v39 = v38;
              v38 = v38[1];
            }

            while (v38);
          }

          else
          {
            do
            {
              v39 = v21[2];
              v16 = *v39 == v21;
              v21 = v39;
            }

            while (v16);
          }

          v41 = v39[7];
          v40 = v39[8];
          if (v40)
          {
            atomic_fetch_add_explicit((v40 + 8), 1uLL, memory_order_relaxed);
          }

          *a3 = v41;
          a3[1] = v40;
        }

        std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v44, v44[1]);
        return;
      }

LABEL_47:
      operator delete(v32);
      goto LABEL_48;
    }

    v37 = 0;
    if ((v31 & 0x80000000) == 0)
    {
      goto LABEL_48;
    }

    goto LABEL_47;
  }

  v14 = this + 8;
  v13 = *(this + 1);
  if (v13)
  {
    do
    {
      v15 = v13;
      v13 = *(v13 + 1);
    }

    while (v13);
  }

  else
  {
    do
    {
      v15 = *(v14 + 2);
      v16 = *v15 == v14;
      v14 = v15;
    }

    while (v16);
  }

  v18 = *(v15 + 7);
  v17 = *(v15 + 8);
  if (v17)
  {
    atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
  }

  *a3 = v18;
  a3[1] = v17;
}

void sub_2975B4950(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(va, v5);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v4);
  _Unwind_Resume(a1);
}

void std::allocate_shared[abi:ne200100]<LogInfo,std::allocator<LogInfo>,std::string const&,abm::helper::SystemLogsMode &,std::string const&,0>(uint64_t a1@<X1>, int *a2@<X2>, uint64_t a3@<X3>, std::string **a4@<X8>)
{
  v8 = operator new(0x50uLL);
  v9 = v8;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = &unk_2A1E49EF0;
  v10 = v8 + 1;
  v11 = *a2;
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v8 + 1, *a1, *(a1 + 8));
  }

  else
  {
    *&v10->__r_.__value_.__l.__data_ = *a1;
    v8[1].__r_.__value_.__r.__words[2] = *(a1 + 16);
  }

  LODWORD(v9[2].__r_.__value_.__l.__data_) = v11;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((v9 + 56), *a3, *(a3 + 8));
  }

  else
  {
    *&v9[2].__r_.__value_.__r.__words[1] = *a3;
    v9[3].__r_.__value_.__r.__words[0] = *(a3 + 16);
  }

  *a4 = v10;
  a4[1] = v9;
}

void sub_2975B4A74(_Unwind_Exception *a1)
{
  if (*(v1 + 47) < 0)
  {
    operator delete(*v2);
    std::__shared_weak_count::~__shared_weak_count(v1);
    operator delete(v4);
    _Unwind_Resume(a1);
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v5);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<LogInfo>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E49EF0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<LogInfo>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
    if ((*(a1 + 47) & 0x80000000) == 0)
    {
      return;
    }
  }

  else if ((*(a1 + 47) & 0x80000000) == 0)
  {
    return;
  }

  v2 = *(a1 + 24);

  operator delete(v2);
}

uint64_t *std::__tree<std::__value_type<std::string,std::shared_ptr<LogInfo>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<LogInfo>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<LogInfo>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t **a1, const void **a2, uint64_t a3, __int128 **a4)
{
  v7 = a1 + 1;
  v6 = a1[1];
  if (v6)
  {
    v8 = *(a2 + 23);
    if (v8 >= 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = *a2;
    }

    if (v8 >= 0)
    {
      v10 = *(a2 + 23);
    }

    else
    {
      v10 = a2[1];
    }

    while (1)
    {
      v11 = v6;
      v14 = v6[4];
      v12 = v6 + 4;
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

      if (v17 >= v10)
      {
        v18 = v10;
      }

      else
      {
        v18 = v17;
      }

      v19 = memcmp(v9, v16, v18);
      if (v19)
      {
        if (v19 < 0)
        {
          goto LABEL_8;
        }

LABEL_22:
        v20 = memcmp(v16, v9, v18);
        if (v20)
        {
          if ((v20 & 0x80000000) == 0)
          {
            return v11;
          }
        }

        else if (v17 >= v10)
        {
          return v11;
        }

        v6 = v11[1];
        if (!v6)
        {
          v7 = v11 + 1;
          goto LABEL_29;
        }
      }

      else
      {
        if (v10 >= v17)
        {
          goto LABEL_22;
        }

LABEL_8:
        v6 = *v11;
        v7 = v11;
        if (!*v11)
        {
          goto LABEL_29;
        }
      }
    }
  }

  v11 = a1 + 1;
LABEL_29:
  v21 = operator new(0x48uLL);
  v22 = v21;
  v23 = *a4;
  if (*(*a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((v21 + 32), *v23, *(v23 + 1));
  }

  else
  {
    v24 = *v23;
    *(v21 + 6) = *(v23 + 2);
    *(v21 + 2) = v24;
  }

  v22[7] = 0;
  v22[8] = 0;
  *v22 = 0;
  v22[1] = 0;
  v22[2] = v11;
  *v7 = v22;
  v25 = **a1;
  if (v25)
  {
    *a1 = v25;
  }

  std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], v22);
  a1[2] = (a1[2] + 1);
  return v22;
}

void sub_2975B4D04(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::shared_ptr<LogInfo>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::shared_ptr<LogInfo>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<std::__tree_node<std::__value_type<std::string,std::shared_ptr<LogInfo>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,std::shared_ptr<LogInfo>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t *a1)
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

void *std::__tree<std::__value_type<std::string,std::shared_ptr<LogInfo>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<LogInfo>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<LogInfo>>>>::erase(void *a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (v3)
  {
    do
    {
      v4 = v3;
      v3 = *v3;
    }

    while (v3);
  }

  else
  {
    v5 = a2;
    do
    {
      v4 = v5[2];
      v6 = *v4 == v5;
      v5 = v4;
    }

    while (!v6);
  }

  if (*a1 == a2)
  {
    *a1 = v4;
  }

  v7 = a1[1];
  --a1[2];
  std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v7, a2);
  v8 = *(a2 + 64);
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
    if ((*(a2 + 55) & 0x80000000) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (*(a2 + 55) < 0)
  {
LABEL_12:
    operator delete(*(a2 + 32));
  }

LABEL_13:
  operator delete(a2);
  return v4;
}

void *PowerManager::PowerManager(void *a1, uint64_t *a2)
{
  *a1 = &unk_2A1E49F40;
  v3 = (a1 + 1);
  v4 = a2[1];
  v6 = *a2;
  v7 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  PowerManager::State::create(&v6, v3);
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  PowerManager::State::init(*v3);
  return a1;
}

{
  *a1 = &unk_2A1E49F40;
  v3 = (a1 + 1);
  v4 = a2[1];
  v6 = *a2;
  v7 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  PowerManager::State::create(&v6, v3);
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  PowerManager::State::init(*v3);
  return a1;
}

void sub_2975B4F60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (!a10)
  {
    _Unwind_Resume(exception_object);
  }

  std::__shared_weak_count::__release_weak(a10);
  _Unwind_Resume(exception_object);
}

void PowerManager::State::create(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0xE0uLL);
  v5 = v4;
  v6 = a1[1];
  v7 = *a1;
  v8 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  PowerManager::State::State(v4, &v7);
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  std::shared_ptr<PowerManager::State>::shared_ptr[abi:ne200100]<PowerManager::State,std::shared_ptr<PowerManager::State> ctu::SharedSynchronizable<PowerManager::State>::make_shared_ptr<PowerManager::State>(PowerManager::State*)::{lambda(PowerManager::State*)#1},0>(a2, v5);
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }
}

void sub_2975B500C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
    if (!v11)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if (!v11)
  {
    goto LABEL_3;
  }

  operator delete(v10);
  _Unwind_Resume(exception_object);
}

void PowerManager::State::init(PowerManager::State *this)
{
  v2 = *(this + 1);
  if (!v2 || (v3 = *this, (v4 = std::__shared_weak_count::lock(v2)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v5 = v4;
  p_shared_weak_owners = &v4->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v5);
  }

  v9[0] = MEMORY[0x29EDCA5F8];
  v9[1] = 1174405120;
  v9[2] = ___ZN12PowerManager5State4initEv_block_invoke;
  v9[3] = &__block_descriptor_tmp_21_3;
  v9[4] = this;
  v9[5] = v3;
  v10 = v5;
  v11 = v9;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableIN12PowerManager5StateEE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS8__block_invoke;
  block[3] = &__block_descriptor_tmp_23;
  block[4] = this;
  block[5] = &v11;
  v7 = *(this + 2);
  if (!*(this + 3))
  {
    dispatch_sync(v7, block);
    v8 = v10;
    if (!v10)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  dispatch_async_and_wait(v7, block);
  v8 = v10;
  if (v10)
  {
LABEL_7:
    std::__shared_weak_count::__release_weak(v8);
  }

LABEL_8:
  std::__shared_weak_count::__release_weak(v5);
}

void sub_2975B5240(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (!a10)
  {
    _Unwind_Resume(exception_object);
  }

  std::__shared_weak_count::__release_weak(a10);
  _Unwind_Resume(exception_object);
}

void PowerManager::create(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = operator new(0x18uLL);
  v5 = v4;
  v6 = *a1;
  v7 = a1[1];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  *v4 = &unk_2A1E49F40;
  v8 = (v4 + 1);
  v10 = v6;
  v11 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  PowerManager::State::create(&v10, v4 + 1);
  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }

  PowerManager::State::init(*v8);
  *a2 = v5;
  v9 = operator new(0x20uLL);
  *v9 = &unk_2A1E4A2E8;
  v9[1] = 0;
  v9[2] = 0;
  v9[3] = v5;
  a2[1] = v9;
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }
}

void sub_2975B5344(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  (*(*v10 + 48))(v10);
  if (v11)
  {
    std::__shared_weak_count::__release_weak(v11);
  }

  _Unwind_Resume(a1);
}

void PowerManager::registerForPowerEvents(uint64_t a1, const void **a2)
{
  v2 = *(a1 + 8);
  if (*a2)
  {
    v3 = _Block_copy(*a2);
  }

  else
  {
    v3 = 0;
  }

  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 1174405120;
  v5[2] = ___ZN12PowerManager5State22registerForPowerEventsEN8dispatch5blockIU13block_pointerFv10PowerStateNS1_13group_sessionEEEE_block_invoke;
  v5[3] = &__block_descriptor_tmp_30_1;
  v5[4] = v2;
  if (!v3)
  {
    aBlock = 0;
    ctu::SharedSynchronizable<PowerManager::State>::execute_wrapped(v2, v5);
    v4 = aBlock;
    if (!aBlock)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  aBlock = _Block_copy(v3);
  ctu::SharedSynchronizable<PowerManager::State>::execute_wrapped(v2, v5);
  v4 = aBlock;
  if (aBlock)
  {
LABEL_8:
    _Block_release(v4);
  }

LABEL_9:
  if (v3)
  {
    _Block_release(v3);
  }
}

void PowerManager::createPowerAssertion(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, NSObject **a4@<X8>)
{
  v6 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v17, *a2, *(a2 + 8));
  }

  else
  {
    v17 = *a2;
  }

  v7 = dispatch_group_create();
  *a4 = v7;
  v18 = v6;
  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v17.__r_.__value_.__l.__data_, v17.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v17;
  }

  v20 = a3;
  group = v7;
  if (v7)
  {
    dispatch_retain(v7);
    if (group)
    {
      dispatch_group_enter(group);
    }
  }

  v8 = v6[1];
  if (!v8 || (v9 = *v6, (v10 = std::__shared_weak_count::lock(v8)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v11 = v10;
  v12 = operator new(0x30uLL);
  *v12 = v18;
  v13 = (v12 + 1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v13, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v13->__r_.__value_.__l.__data_ = *&__p.__r_.__value_.__l.__data_;
    v12[3] = *(&__p.__r_.__value_.__l + 2);
  }

  v14 = group;
  v12[4] = v20;
  v12[5] = v14;
  group = 0;
  v15 = v6[2];
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  v16 = operator new(0x18uLL);
  *v16 = v12;
  v16[1] = v9;
  v16[2] = v11;
  dispatch_async_f(v15, v16, dispatch::async<void ctu::SharedSynchronizable<PowerManager::State>::execute_wrapped<PowerManager::State::createPowerAssertion(std::string,std::chrono::duration<long long,std::ratio<1l,1000l>>)::{lambda(void)#1}>(PowerManager::State::createPowerAssertion(std::string,std::chrono::duration<long long,std::ratio<1l,1000l>>)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<PowerManager::State::createPowerAssertion(std::string,std::chrono::duration<long long,std::ratio<1l,1000l>>)::{lambda(void)#1},std::default_delete<PowerManager::State::createPowerAssertion(std::string,std::chrono::duration<long long,std::ratio<1l,1000l>>)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v17.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_24:
    operator delete(v17.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_24;
  }
}

void sub_2975B56AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (v14)
  {
    dispatch_release(v14);
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

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

void PowerManager::releasePowerAssertion(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v11, *a2, *(a2 + 8));
    v12 = v2;
    if ((SHIBYTE(v11.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    std::string::__init_copy_ctor_external(&__p, v11.__r_.__value_.__l.__data_, v11.__r_.__value_.__l.__size_);
    goto LABEL_6;
  }

  v11 = *a2;
  v12 = v2;
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  __p = v11;
LABEL_6:
  v3 = v2[1];
  if (!v3 || (v4 = *v2, (v5 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v6 = v5;
  v7 = operator new(0x20uLL);
  *v7 = v12;
  v8 = (v7 + 1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v8, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v8->__r_.__value_.__l.__data_ = *&__p.__r_.__value_.__l.__data_;
    v7[3] = *(&__p.__r_.__value_.__l + 2);
  }

  v9 = v2[2];
  atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  v10 = operator new(0x18uLL);
  *v10 = v7;
  v10[1] = v4;
  v10[2] = v6;
  dispatch_async_f(v9, v10, dispatch::async<void ctu::SharedSynchronizable<PowerManager::State>::execute_wrapped<PowerManager::State::releasePowerAssertion(std::string)::{lambda(void)#1}>(PowerManager::State::releasePowerAssertion(std::string)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<PowerManager::State::releasePowerAssertion(std::string)::{lambda(void)#1},std::default_delete<PowerManager::State::releasePowerAssertion(std::string)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
  if (atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_13:
      if ((SHIBYTE(v11.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return;
      }

LABEL_17:
      operator delete(v11.__r_.__value_.__l.__data_);
      return;
    }
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_17;
  }
}

void sub_2975B58A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void PowerManager::initialize(PowerManager *this)
{
  v1 = *(this + 1);
  v2[0] = MEMORY[0x29EDCA5F8];
  v2[1] = 0x40000000;
  v2[2] = ___ZN12PowerManager5State10initializeEv_block_invoke;
  v2[3] = &__block_descriptor_tmp_52_1;
  v2[4] = v1;
  ctu::SharedSynchronizable<PowerManager::State>::execute_wrapped(v1, v2);
}

void PowerManager::shutdown(PowerManager *this)
{
  v1 = *(this + 1);
  v2[0] = MEMORY[0x29EDCA5F8];
  v2[1] = 0x40000000;
  v2[2] = ___ZN12PowerManager5State8shutdownEv_block_invoke;
  v2[3] = &__block_descriptor_tmp_53_0;
  v2[4] = v1;
  ctu::SharedSynchronizable<PowerManager::State>::execute_wrapped(v1, v2);
}

void PowerManager::~PowerManager(PowerManager *this)
{
  *this = &unk_2A1E49F40;
  v1 = *(this + 2);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
    }
  }
}

{
  *this = &unk_2A1E49F40;
  v1 = *(this + 2);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = this;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    this = v2;
  }

  operator delete(this);
}

void *std::shared_ptr<PowerManager::State>::shared_ptr[abi:ne200100]<PowerManager::State,std::shared_ptr<PowerManager::State> ctu::SharedSynchronizable<PowerManager::State>::make_shared_ptr<PowerManager::State>(PowerManager::State*)::{lambda(PowerManager::State*)#1},0>(void *a1, void *a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_2A1E49FB0;
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

void sub_2975B5C10(void *a1)
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
    _os_log_impl(&dword_297476000, v4, OS_LOG_TYPE_DEFAULT, "#I Gone!", v15, 2u);
  }

  v5 = *(a1 + 216);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  std::__tree<std::__value_type<std::string,dispatch::group_session>,std::__map_value_compare<std::string,std::__value_type<std::string,dispatch::group_session>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,dispatch::group_session>>>::destroy(*(a1 + 192));
  std::__tree<std::__value_type<std::string,std::shared_ptr<LogInfo>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<LogInfo>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<LogInfo>>>>::destroy(*(a1 + 168));
  std::__tree<std::__value_type<std::string,std::shared_ptr<LogInfo>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<LogInfo>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<LogInfo>>>>::destroy(*(a1 + 144));
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

  MEMORY[0x29C270D60](a1 + 32);
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
  MEMORY[0x29C270D50](a1 + 32, v11);
  MEMORY[0x29C270D60](v11);
  ctu::OsLogContext::~OsLogContext(v10);
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0x200000001;
  *(a1 + 64) = -536870144;
  v6 = operator new(0x88uLL);
  PowerStats::PowerStats(v6);
  *(a1 + 72) = v6;
  v10[0] = v6;
  v7 = operator new(0x20uLL);
  *v7 = &unk_2A1E4E368;
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

void sub_2975B61E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<PowerStats>::~unique_ptr[abi:ne200100](va);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v3);
  MEMORY[0x29C270D60](v2 + 4);
  ctu::SharedSynchronizable<data::TransportService::State>::~SharedSynchronizable(v2);
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
  aBlock[3] = &__block_descriptor_tmp_35;
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
    _os_log_impl(&dword_297476000, v16, OS_LOG_TYPE_DEFAULT, "#I Registered power listener", buf, 2u);
  }

  memset(buf, 170, 16);
  abm::AWDHelperGetConnection(buf);
  if (buf[0])
  {
    v24 = MEMORY[0x29EDCA5F8];
    v25 = 1174405120;
    v26 = ___ZN12PowerManager5State4initEv_block_invoke_11;
    v27 = &__block_descriptor_tmp_18_4;
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
      _os_log_error_impl(&dword_297476000, v20, OS_LOG_TYPE_ERROR, "AWD connection setup failed", v23, 2u);
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

void sub_2975B674C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, char a20, dispatch_object_t object, void *a22, void *aBlock, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, std::__shared_weak_count *a36)
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
                _os_log_impl(&dword_297476000, v24, OS_LOG_TYPE_DEFAULT, "#I Allowing deferred work to run (skipping power event); count=%zd", buf, 0xCu);
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
        _os_log_impl(&dword_297476000, v17, OS_LOG_TYPE_DEFAULT, "#I Cannot accept notification: %s, SleepState: %u, PowerState: %s, Assertions: %lu, Assertions-deferred: %lu, Deferred-ack: %s", buf, 0x3Au);
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
      v30 = off_29EE6BFA8[v32];
    }

    *buf = 136315650;
    *&buf[4] = v29;
    v62 = 2080;
    *v63 = v31;
    *&v63[8] = 2080;
    *&v63[10] = v30;
    _os_log_impl(&dword_297476000, v28, OS_LOG_TYPE_DEFAULT, "#I Power notification: %s, Power state: %s, Sleep state: %s", buf, 0x20u);
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
      block[3] = &__block_descriptor_tmp_26_1;
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
          _os_log_impl(&dword_297476000, v44, OS_LOG_TYPE_DEFAULT, "#I Allowing deferred work to run (after WillNotSleep); count=%zd", buf, 0xCu);
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

void sub_2975B6F34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, dispatch_group_t group)
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
        v8[3] = &__block_descriptor_tmp_14_0;
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
              _os_log_impl(&dword_297476000, v7, OS_LOG_TYPE_DEFAULT, "#I Allowing deferred work to run; count=%zd", &v12, 0xCu);
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
  block[3] = &unk_2A1E4A0B8;
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
  v4 = qword_2A18CAB58;
  if (qword_2A18CAB58)
  {
    goto LABEL_12;
  }

  v5 = operator new(0x38uLL);
  MEMORY[0x29C271260]();
  v6 = operator new(0x20uLL);
  v6->__shared_owners_ = 0;
  p_shared_owners = &v6->__shared_owners_;
  v6->__vftable = &unk_2A1E4A158;
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
  v9 = off_2A18CAB60;
  qword_2A18CAB58 = v5;
  off_2A18CAB60 = v6;
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  v4 = qword_2A18CAB58;
LABEL_12:
  v10 = off_2A18CAB60;
  buf.__r_.__value_.__r.__words[0] = v4;
  buf.__r_.__value_.__l.__size_ = off_2A18CAB60;
  if (off_2A18CAB60)
  {
    atomic_fetch_add_explicit(off_2A18CAB60 + 1, 1uLL, memory_order_relaxed);
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
      _os_log_error_impl(&dword_297476000, v33, OS_LOG_TYPE_ERROR, "Failed to create power assertion '%s'", &buf, 0xCu);
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
          _os_log_impl(&dword_297476000, v73, OS_LOG_TYPE_DEFAULT, "#I Assertion held, but action will be deferred; acknowledging previous notification", &buf, 2u);
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
        v70 = off_29EE6BFA8[v69];
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
        _os_log_impl(&dword_297476000, v62, OS_LOG_TYPE_DEFAULT, "#I Power assertion created for '%s' during sleep; Timeout (millisec): %llu, Status = %d, Override = %d; Sleep state: %s", &buf, 0x2Cu);
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
  _os_log_impl(&dword_297476000, v62, OS_LOG_TYPE_DEFAULT, "#I Power assertion created for '%s'; Timeout (millisec): %llu, Status = %d", &buf, 0x1Cu);
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
    *group = &__block_descriptor_tmp_31_3;
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
              *v122 = &unk_2A1E4A1A8;
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
                *v148 = &unk_2A1E4A1A8;
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

void sub_2975B87FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v9 = va_arg(va1, void *);
  __cxa_end_catch();
  pthread_mutex_unlock(&ctu::Singleton<ctu::power::assertion,ctu::power::assertion,ctu::PthreadMutexGuardPolicy<ctu::power::assertion>>::sInstance);
  std::unique_ptr<PowerManager::State::createPowerAssertion(std::string,std::chrono::duration<long long,std::ratio<1l,1000l>>)::{lambda(void)#1},std::default_delete<PowerManager::State::createPowerAssertion(std::string,std::chrono::duration<long long,std::ratio<1l,1000l>>)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](va1);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(va);
  JUMPOUT(0x2975B8898);
}

void sub_2975B8830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
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
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](va2);
  std::unique_ptr<PowerManager::State::createPowerAssertion(std::string,std::chrono::duration<long long,std::ratio<1l,1000l>>)::{lambda(void)#1},std::default_delete<PowerManager::State::createPowerAssertion(std::string,std::chrono::duration<long long,std::ratio<1l,1000l>>)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](va1);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(va);
  JUMPOUT(0x2975B8898);
}

void sub_2975B883C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](va);
  JUMPOUT(0x2975B8888);
}

void sub_2975B8844(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a27);
  JUMPOUT(0x2975B8888);
}

void sub_2975B8864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a29);
  std::unique_ptr<PowerManager::State::createPowerAssertion(std::string,std::chrono::duration<long long,std::ratio<1l,1000l>>)::{lambda(void)#1},std::default_delete<PowerManager::State::createPowerAssertion(std::string,std::chrono::duration<long long,std::ratio<1l,1000l>>)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&a19);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a18);
  JUMPOUT(0x2975B8898);
}

void sub_2975B8874(_Unwind_Exception *exception_object, int a2)
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

void sub_2975B8A8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](va);
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

void sub_2975B8B14(_Unwind_Exception *exception_object)
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
  MEMORY[0x29C271BA0](v10, v1[1].__shared_owners_);
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
    _os_log_fault_impl(&dword_297476000, on_zero_shared_weak, OS_LOG_TYPE_FAULT, "%s", &buf, 0xCu);
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
    if (MEMORY[0x29C272BA0](v14) == MEMORY[0x29EDCAA00])
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
  MEMORY[0x29C271DA0](v65);
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

void sub_2975B9564(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, char a27)
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
      _os_log_impl(&dword_297476000, v24, OS_LOG_TYPE_DEFAULT, v26, &v57, 0xCu);
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
        _os_log_impl(&dword_297476000, v52, OS_LOG_TYPE_DEFAULT, "#I Clear watchdog timer for power assertion '%s'", &v57, 0xCu);
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
        _os_log_impl(&dword_297476000, v55, OS_LOG_TYPE_DEFAULT, "#I No more assertions held, acknowledging previous notification", &v57, 2u);
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

void sub_2975B9B98(_Unwind_Exception *a1, int a2)
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
  if (v2 != 0x80000002976A39E1)
  {
    if (((v2 & 0x80000002976A39E1 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000002976A39E1))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000002976A39E1 & 0x7FFFFFFFFFFFFFFFLL));
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

void sub_2975B9E08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10)
{
  _ZNSt3__110unique_ptrIZZN11FSModuleICE26registerEventHandlers_syncEvEUb_E3__5NS_14default_deleteIS2_EEED1B8ne200100Ev(&a10);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a9);
  _Unwind_Resume(a1);
}

void sub_2975B9E24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _ZNSt3__110unique_ptrIZZN11FSModuleICE26registerEventHandlers_syncEvEUb_E3__5NS_14default_deleteIS2_EEED1B8ne200100Ev(&a10);
  _ZNSt3__110unique_ptrIZNK3ctu20SharedSynchronizableIN4coex6Module5StateEE15execute_wrappedIZZNS5_4initEvEUb_E3__1EEvOT_EUlvE_NS_14default_deleteISB_EEED1B8ne200100Ev(&a9);
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
                v52[3] = &__block_descriptor_tmp_44_2;
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
                    v46[3] = &__block_descriptor_tmp_48_3;
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
                    v42[3] = &__block_descriptor_tmp_51_1;
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

void sub_2975BA574(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23, char a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, std::__shared_weak_count *a38, char a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
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
    std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v47 - 112);
    std::__shared_weak_count::__release_weak(v46);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](v47 - 112);
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
      v12[3] = &__block_descriptor_tmp_35_3;
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

void sub_2975BA8B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t a9, xpc_object_t object)
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
              _os_log_impl(&dword_297476000, v9, OS_LOG_TYPE_DEFAULT, "#I Pending power assertion '%s'", buf, 0xCu);
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
              _os_log_impl(&dword_297476000, v15, OS_LOG_TYPE_DEFAULT, "#I Deferred work due to sleep '%s'", buf, 0xCu);
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

void sub_2975BADF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  xpc_release(v18);
  if (a17 < 0)
  {
    operator delete(__p);
    std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a18);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a18);
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
        _os_log_impl(&dword_297476000, v6, OS_LOG_TYPE_DEFAULT, "#I Forcefully releasing power assertion '%s'", buf, 0xCu);
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

  std::__tree<std::__value_type<std::string,std::shared_ptr<LogInfo>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<LogInfo>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<LogInfo>>>>::destroy(v3[18]);
  v11 = v3[21];
  v3[17] = v5;
  v3[18] = 0;
  v3[19] = 0;
  std::__tree<std::__value_type<std::string,std::shared_ptr<LogInfo>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::shared_ptr<LogInfo>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::shared_ptr<LogInfo>>>>::destroy(v11);
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
      _os_log_impl(&dword_297476000, v13, OS_LOG_TYPE_DEFAULT, "#I No more assertions held, acknowledging previous notification", buf, 2u);
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

void sub_2975BB2D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
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
  if (v2 != 0x80000002976A3A91)
  {
    if (((v2 & 0x80000002976A3A91 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000002976A3A91))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000002976A3A91 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t __cxx_global_var_init_8()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ctu::power::assertion>::~PthreadMutexGuardPolicy, &ctu::Singleton<ctu::power::assertion,ctu::power::assertion,ctu::PthreadMutexGuardPolicy<ctu::power::assertion>>::sInstance, &dword_297476000);
  }

  return result;
}

{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<CommandDriverFactory>::~PthreadMutexGuardPolicy, &ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance, &dword_297476000);
  }

  return result;
}

uint64_t IOPortUSBCAccessoriesDelegate::create@<X0>(uint64_t a1@<X0>, NSObject **a2@<X1>, std::__shared_weak_count_vtbl **a3@<X8>)
{
  v21 = *MEMORY[0x29EDCA608];
  v17 = 0;
  v18 = 0;
  v6 = operator new(0x70uLL);
  v7 = *(a1 + 24);
  if (!v7)
  {
    goto LABEL_4;
  }

  if (v7 != a1)
  {
    v7 = (*(*v7 + 16))(v7);
LABEL_4:
    v20 = v7;
    goto LABEL_6;
  }

  v20 = v19;
  (*(*v7 + 24))(v7, v19);
LABEL_6:
  v8 = *a2;
  v16 = v8;
  if (v8)
  {
    dispatch_retain(v8);
  }

  IOPortUSBCAccessoriesDelegate::IOPortUSBCAccessoriesDelegate(v6, v19, &v16);
  v11 = operator new(0x20uLL);
  v11->__shared_owners_ = 0;
  p_shared_owners = &v11->__shared_owners_;
  v11->__vftable = &unk_2A1E4A3D0;
  v11->__shared_weak_owners_ = 0;
  v11[1].__vftable = v6;
  on_zero_shared = v6->__on_zero_shared;
  if (!on_zero_shared)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v6->~__shared_weak_count_0 = v6;
    v6->__on_zero_shared = v11;
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  if (on_zero_shared->__shared_owners_ == -1)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v6->~__shared_weak_count_0 = v6;
    v6->__on_zero_shared = v11;
    std::__shared_weak_count::__release_weak(on_zero_shared);
    if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
LABEL_13:
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
    }
  }

LABEL_14:
  v17 = v6;
  v18 = v11;
  if (v8)
  {
    dispatch_release(v8);
  }

  if (v20 == v19)
  {
    (*(*v20 + 32))(v20);
  }

  else if (v20)
  {
    (*(*v20 + 40))(v20, v9, v10);
  }

  result = (*(v6->~__shared_weak_count + 7))(v6);
  *a3 = v6;
  a3[1] = v11;
  v15 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_2975BB738(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12)
{
  operator delete(v12);
  std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

uint64_t std::function<void ()(ctu::cf::CFSharedRef<__CFError>,std::vector<abm::AccessoryInfo>)>::~function(uint64_t a1)
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

void *IOPortUSBCAccessoriesDelegate::IOPortUSBCAccessoriesDelegate(void *a1, uint64_t a2, NSObject **a3)
{
  v13 = *MEMORY[0x29EDCA608];
  *a1 = &unk_2A1E4A338;
  v5 = *(a2 + 24);
  if (v5)
  {
    if (v5 == a2)
    {
      v12 = v11;
      (*(*v5 + 24))(v5, v11);
    }

    else
    {
      v12 = (*(*v5 + 16))(v5);
    }
  }

  else
  {
    v12 = 0;
  }

  v6 = *a3;
  v10 = v6;
  if (v6)
  {
    dispatch_retain(v6);
  }

  v7 = (*(*a1 + 16))(a1);
  AccessoriesDelegateBase::AccessoriesDelegateBase(a1, v11, &v10, v7);
  if (v6)
  {
    dispatch_release(v6);
  }

  if (v12 == v11)
  {
    (*(*v12 + 32))(v12);
  }

  else if (v12)
  {
    (*(*v12 + 40))(v12);
  }

  *a1 = &unk_2A1E4A338;
  a1[11] = 0;
  a1[12] = 0;
  v8 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_2975BBA28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (v10)
  {
    dispatch_release(v10);
  }

  std::function<void ()(ctu::cf::CFSharedRef<__CFError>,std::vector<abm::AccessoryInfo>)>::~function(&a10);
  _Unwind_Resume(a1);
}

void IOPortUSBCAccessoriesDelegate::~IOPortUSBCAccessoriesDelegate(IOPortUSBCAccessoriesDelegate *this)
{
  *this = &unk_2A1E4A338;
  v1 = *(this + 12);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = this;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    this = v2;
  }

  AccessoriesDelegateBase::~AccessoriesDelegateBase(this);
}

{
  *this = &unk_2A1E4A338;
  v1 = *(this + 12);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = this;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    this = v2;
  }

  AccessoriesDelegateBase::~AccessoriesDelegateBase(this);
}

{
  *this = &unk_2A1E4A338;
  v1 = *(this + 12);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    AccessoriesDelegateBase::~AccessoriesDelegateBase(this);
  }

  else
  {
    AccessoriesDelegateBase::~AccessoriesDelegateBase(this);
  }

  operator delete(v2);
}