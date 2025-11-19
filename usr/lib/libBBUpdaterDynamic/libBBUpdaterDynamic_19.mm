void sub_1E5336E5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, const void *a13, const void *a14, const void *a15, const void *a16, __int16 a17, char a18, char a19, uint64_t a20, const void *a21, const void *a22, const void *a23, const void *a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  ctu::cf::CFSharedRef<__CFData>::~CFSharedRef(&a13);
  ctu::cf::CFSharedRef<__CFData>::~CFSharedRef(&a14);
  ctu::cf::CFSharedRef<__CFData>::~CFSharedRef(&a15);
  ctu::cf::CFSharedRef<__CFData>::~CFSharedRef(&a16);
  ctu::cf::CFSharedRef<__CFData>::~CFSharedRef(&a21);
  ctu::cf::CFSharedRef<__CFData>::~CFSharedRef(&a22);
  ctu::cf::CFSharedRef<__CFData>::~CFSharedRef(&a23);
  ctu::cf::CFSharedRef<__CFData>::~CFSharedRef(&a24);
  if (a30 < 0)
  {
    operator delete(__p);
    if ((*(v30 - 105) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v30 - 73) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*(v30 - 105) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v30 - 128));
  if ((*(v30 - 73) & 0x80000000) == 0)
  {
LABEL_4:
    if ((*(v30 - 41) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_9:
  operator delete(*(v30 - 96));
  if ((*(v30 - 41) & 0x80000000) == 0)
  {
LABEL_6:
    _Unwind_Resume(a1);
  }

LABEL_5:
  operator delete(*(v30 - 64));
  goto LABEL_6;
}

void eUICC::Source::GetGoldFirmware(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (*(a2 + 23) < 0)
  {
    if (*(a2 + 8))
    {
      v5 = *a2;
    }

    else
    {
      v5 = "vinyl";
    }
  }

  else if (*(a2 + 23))
  {
    v5 = a2;
  }

  else
  {
    v5 = "vinyl";
  }

  memset(__dst, 170, sizeof(__dst));
  v6 = strlen(v5);
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
    __dst[2] = (v9 | 0x8000000000000000);
    __dst[0] = v8;
    goto LABEL_16;
  }

  HIBYTE(__dst[2]) = v6;
  v8 = __dst;
  if (v6)
  {
LABEL_16:
    memmove(v8, v5, v7);
  }

  *(v7 + v8) = 0;
  ctu::path_join_impl();
  ctu::path_join_impl();
  eUICC::Source::GetFirmwareInternal(a1, __dst, a3);
  if (SHIBYTE(__dst[2]) < 0)
  {
    operator delete(__dst[0]);
  }
}

void sub_1E53370D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void **ctu::cf::detail::TakeOwnershipProxy<__CFData>::~TakeOwnershipProxy(const void **a1)
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

void eUICC::Source::GetRecoveryForMac(ctu *this@<X1>, uint64_t a2@<X0>, const char *a3@<X2>, void *a4@<X8>)
{
  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  ctu::hex(this, 8);
  if (v53 >= 0)
  {
    v10 = __p;
  }

  else
  {
    LOBYTE(v10) = __p[0];
  }

  _BBULog(22, 0xFFFFFFFFLL, "eUICC::Source", "", "GetRecoveryForMac: %s\n", v7, v8, v9, v10);
  if (v53 < 0)
  {
    operator delete(__p[0]);
  }

  *&v56 = 0xAAAAAAAAAAAAAAAALL;
  *(&v56 + 1) = 0xAAAAAAAAAAAAAAAALL;
  eUICC::Source::GetGoldFirmware(a2, a3, &v56);
  if (!v56)
  {
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    }

    _BBULog(22, 0xFFFFFFFFLL, "eUICC::Source", "", "GetGoldFirmware did not successfully return anything valid\n", v11, v12, v13, v48);
    *a4 = 0;
    a4[1] = 0;
    v19 = *(&v56 + 1);
    if (*(&v56 + 1))
    {
LABEL_74:
      if (!atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v19->__on_zero_shared)(v19);
        std::__shared_weak_count::__release_weak(v19);
      }
    }

    return;
  }

  v14 = (*(*v56 + 8))(v56);
  if (gBBULogMaskGet(void)::once != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

  ctu::hex(v14, 8);
  if (v53 >= 0)
  {
    v18 = __p;
  }

  else
  {
    LOBYTE(v18) = __p[0];
  }

  _BBULog(22, 0xFFFFFFFFLL, "eUICC::Source", "", "Update/Gold Mac %s\n", v15, v16, v17, v18);
  if ((v53 & 0x80000000) == 0)
  {
    if (*this != *v14)
    {
      goto LABEL_16;
    }

LABEL_25:
    *a4 = v56;
    v56 = 0uLL;
    return;
  }

  operator delete(__p[0]);
  if (*this == *v14)
  {
    goto LABEL_25;
  }

LABEL_16:
  if (a3[23] < 0)
  {
    if (*(a3 + 1))
    {
      a3 = *a3;
    }

    else
    {
      a3 = "vinyl";
    }
  }

  else if (!a3[23])
  {
    a3 = "vinyl";
  }

  memset(__dst, 170, sizeof(__dst));
  v20 = strlen(a3);
  if (v20 >= 0x7FFFFFFFFFFFFFF8)
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
    __dst[1] = v21;
    __dst[2] = (v23 | 0x8000000000000000);
    __dst[0] = v22;
  }

  else
  {
    HIBYTE(__dst[2]) = v20;
    v22 = __dst;
    if (!v20)
    {
      goto LABEL_38;
    }
  }

  memmove(v22, a3, v21);
LABEL_38:
  *(v21 + v22) = 0;
  ctu::path_join_impl();
  ctu::path_join_impl();
  v25 = 0;
  while (1)
  {
    memset(v54, 170, sizeof(v54));
    ctu::LogMessageBuffer::createWithFormat(__p, "%03d", v24, v25, v50);
    v26 = MEMORY[0x1E69264F0](__p);
    v27 = SHIBYTE(__dst[2]) >= 0 ? __dst : __dst[0];
    v28 = SHIBYTE(__dst[2]) >= 0 ? HIBYTE(__dst[2]) : __dst[1];
    v29 = std::string::insert(v26, 0, v27, v28);
    v30 = *&v29->__r_.__value_.__l.__data_;
    v54[2] = v29->__r_.__value_.__r.__words[2];
    *v54 = v30;
    v29->__r_.__value_.__l.__size_ = 0;
    v29->__r_.__value_.__r.__words[2] = 0;
    v29->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x1E6926520](__p);
    eUICC::Source::GetFirmwareInternal(a2, v54, __p);
    v31 = *__p;
    __p[0] = 0;
    __p[1] = 0;
    v32 = *(&v56 + 1);
    v56 = v31;
    if (!v32)
    {
      goto LABEL_47;
    }

    if (!atomic_fetch_add(&v32->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v32->__on_zero_shared)(v32);
      std::__shared_weak_count::__release_weak(v32);
      v33 = __p[1];
      if (!__p[1])
      {
        goto LABEL_51;
      }
    }

    else
    {
LABEL_47:
      v33 = __p[1];
      if (!__p[1])
      {
        goto LABEL_51;
      }
    }

    if (!atomic_fetch_add(&v33->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v33->__on_zero_shared)(v33);
      std::__shared_weak_count::__release_weak(v33);
    }

LABEL_51:
    v34 = v56;
    if (v56)
    {
      v35 = (*(*v56 + 8))(v56);
      if (!v35)
      {
        exception = __cxa_allocate_exception(0x210uLL);
        _BBUException::_BBUException(exception, 35, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/eUICC/Source/eUICCSource.cpp", 0x7Fu, "Assertion failure(fwMac.data && Corrupt FW in input!)", v45, v46, v47, v49);
      }

      if (gBBULogMaskGet(void)::once != -1)
      {
        dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      }

      v36 = SHIBYTE(v54[2]);
      v37 = v54[0];
      ctu::hex(v35, 8);
      v41 = v54;
      if (v36 < 0)
      {
        LOBYTE(v41) = v37;
      }

      v42 = __p;
      if (v53 < 0)
      {
        v42 = __p[0];
      }

      v50 = v42;
      _BBULog(22, 0xFFFFFFFFLL, "eUICC::Source", "", "Path %s -> Mac %s\n", v38, v39, v40, v41);
      if (v53 < 0)
      {
        operator delete(__p[0]);
        if (*this != *v35)
        {
LABEL_61:
          v43 = 1;
          if ((SHIBYTE(v54[2]) & 0x80000000) == 0)
          {
            goto LABEL_63;
          }

LABEL_62:
          operator delete(v54[0]);
          goto LABEL_63;
        }
      }

      else if (*this != *v35)
      {
        goto LABEL_61;
      }

      v43 = 0;
      *a4 = v56;
      v56 = 0uLL;
      if (SHIBYTE(v54[2]) < 0)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v43 = 0;
      if (SHIBYTE(v54[2]) < 0)
      {
        goto LABEL_62;
      }
    }

LABEL_63:
    if ((v43 & 1) == 0)
    {
      break;
    }

    v25 = (v25 + 1);
    if (v25 == 1000)
    {
      goto LABEL_77;
    }
  }

  if (v34)
  {
    if ((SHIBYTE(__dst[2]) & 0x80000000) == 0)
    {
      goto LABEL_73;
    }
  }

  else
  {
LABEL_77:
    *a4 = 0;
    a4[1] = 0;
    if ((SHIBYTE(__dst[2]) & 0x80000000) == 0)
    {
LABEL_73:
      v19 = *(&v56 + 1);
      if (!*(&v56 + 1))
      {
        return;
      }

      goto LABEL_74;
    }
  }

  operator delete(__dst[0]);
  v19 = *(&v56 + 1);
  if (*(&v56 + 1))
  {
    goto LABEL_74;
  }
}

void *std::shared_ptr<eUICC::Source>::shared_ptr[abi:ne200100]<eUICC::Source,0>(void *a1, void *a2)
{
  *a1 = a2;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_1F5F048D8;
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
          goto LABEL_7;
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
LABEL_7:
        v8 = v4;
        (*(*v4 + 16))();
        std::__shared_weak_count::__release_weak(v8);
      }
    }
  }

  return a1;
}

void sub_1E5337A10(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<eUICC::Source>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_pointer<eUICC::Source *,std::shared_ptr<eUICC::Source>::__shared_ptr_default_delete<eUICC::Source,eUICC::Source>,std::allocator<eUICC::Source>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<eUICC::Source *,std::shared_ptr<eUICC::Source>::__shared_ptr_default_delete<eUICC::Source,eUICC::Source>,std::allocator<eUICC::Source>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    v2 = v1[3];
    if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v2->__on_zero_shared)(v2);
      std::__shared_weak_count::__release_weak(v2);
    }

    v3 = v1[1];
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    operator delete(v1);
  }
}

uint64_t std::__shared_ptr_pointer<eUICC::Source *,std::shared_ptr<eUICC::Source>::__shared_ptr_default_delete<eUICC::Source,eUICC::Source>,std::allocator<eUICC::Source>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x80000001E5393DA2)
  {
    if (((v2 & 0x80000001E5393DA2 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x80000001E5393DA2))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x80000001E5393DA2 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void **std::unique_ptr<eUICC::Source>::~unique_ptr[abi:ne200100](void **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = v2[3];
    if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
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

void support::misc::safe_timer::create(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, dispatch_qos_class_t a4@<W3>, support::misc::safe_timer **a5@<X8>)
{
  v26 = *MEMORY[0x1E69E9840];
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v22 = v10;
  v23 = v10;
  v21[1] = v10;
  v21[2] = v10;
  v21[0] = v10;
  v20.__r_.__value_.__r.__words[0] = operator new(0x30uLL);
  *&v20.__r_.__value_.__r.__words[1] = xmmword_1E538EAF0;
  strcpy(v20.__r_.__value_.__l.__data_, "com.apple.telephony.basebandservices.support");
  *(&__p.__r_.__value_.__s + 23) = 10;
  strcpy(&__p, "safe-timer");
  support::log::client::client(v21, &v20, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(v20.__r_.__value_.__l.__data_);
LABEL_3:
  *a5 = 0;
  v11 = operator new(0xD0uLL);
  *v17 = *a1;
  v18 = *(a1 + 16);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  v12 = *(a3 + 24);
  if (v12)
  {
    if (v12 == a3)
    {
      v25 = v24;
      (*(*v12 + 24))(v12, v24);
    }

    else
    {
      v25 = *(a3 + 24);
      *(a3 + 24) = 0;
    }
  }

  else
  {
    v25 = 0;
  }

  support::misc::safe_timer::safe_timer(v11, v17, a2, 0, v24, a4);
  if (v25 == v24)
  {
    (*(*v25 + 32))(v25);
    if ((SHIBYTE(v18) & 0x80000000) == 0)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v25)
    {
      (*(*v25 + 40))(v25);
    }

    if ((SHIBYTE(v18) & 0x80000000) == 0)
    {
LABEL_14:
      if (support::misc::safe_timer::init(v11))
      {
        goto LABEL_15;
      }

      goto LABEL_21;
    }
  }

  operator delete(v17[0]);
  if (support::misc::safe_timer::init(v11))
  {
LABEL_15:
    *a5 = v11;
    *&v21[0] = &unk_1F5EFEF10;
    v13 = v23;
    if (!v23)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

LABEL_21:
  v15 = *v22;
  if (os_log_type_enabled(*v22, OS_LOG_TYPE_ERROR))
  {
    *v16 = 0;
    _os_log_error_impl(&dword_1E5234000, v15, OS_LOG_TYPE_ERROR, "error: failed to init safe_timer object", v16, 2u);
  }

  (*(*v11 + 8))(v11);
  *&v21[0] = &unk_1F5EFEF10;
  v13 = v23;
  if (v23)
  {
LABEL_16:
    if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v13->__on_zero_shared)(v13);
      std::__shared_weak_count::__release_weak(v13);
    }
  }

LABEL_18:
  v14 = *MEMORY[0x1E69E9840];
}

void sub_1E5337F40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, char a30)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

BOOL support::misc::safe_timer::init(support::misc::safe_timer *this)
{
  if (!*(this + 17))
  {
    v3 = **(this + 13);
    result = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v9 = 0;
    v4 = "error: invalid timeout value";
    v5 = &v9;
    goto LABEL_15;
  }

  if (!*(this + 22))
  {
    v3 = **(this + 13);
    result = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v8 = 0;
    v4 = "error: invalid timeout callback";
    v5 = &v8;
    goto LABEL_15;
  }

  v1 = *(this + 23);
  if (!v1)
  {
    v3 = **(this + 13);
    result = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v7 = 0;
    v4 = "error: failed to create dispatch queue";
    v5 = &v7;
LABEL_15:
    _os_log_error_impl(&dword_1E5234000, v3, OS_LOG_TYPE_ERROR, v4, v5, 2u);
    return 0;
  }

  if (*(this + 24))
  {
    dispatch_queue_set_specific(*(this + 23), "CurrentQueue", v1, 0);
    return 1;
  }

  v3 = **(this + 13);
  result = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
  if (result)
  {
    v6 = 0;
    v4 = "error: failed to create dispatch safe_timer object";
    v5 = &v6;
    goto LABEL_15;
  }

  return result;
}

void support::misc::safe_timer::create(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, dispatch_qos_class_t a5@<W4>, support::misc::safe_timer **a6@<X8>)
{
  v28 = *MEMORY[0x1E69E9840];
  *&v12 = 0xAAAAAAAAAAAAAAAALL;
  *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v24 = v12;
  v25 = v12;
  v23[1] = v12;
  v23[2] = v12;
  v23[0] = v12;
  v22.__r_.__value_.__r.__words[0] = operator new(0x30uLL);
  *&v22.__r_.__value_.__r.__words[1] = xmmword_1E538EAF0;
  strcpy(v22.__r_.__value_.__l.__data_, "com.apple.telephony.basebandservices.support");
  *(&__p.__r_.__value_.__s + 23) = 10;
  strcpy(&__p, "safe-timer");
  support::log::client::client(v23, &v22, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(v22.__r_.__value_.__l.__data_);
LABEL_3:
  *a6 = 0;
  v13 = operator new(0xD0uLL);
  *v19 = *a1;
  v20 = *(a1 + 16);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  v14 = *(a4 + 24);
  if (v14)
  {
    if (v14 == a4)
    {
      v27 = v26;
      (*(*v14 + 24))(v14, v26);
    }

    else
    {
      v27 = *(a4 + 24);
      *(a4 + 24) = 0;
    }
  }

  else
  {
    v27 = 0;
  }

  support::misc::safe_timer::safe_timer(v13, v19, a2, a3, v26, a5);
  if (v27 == v26)
  {
    (*(*v27 + 32))(v27);
    if ((SHIBYTE(v20) & 0x80000000) == 0)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v27)
    {
      (*(*v27 + 40))(v27);
    }

    if ((SHIBYTE(v20) & 0x80000000) == 0)
    {
LABEL_14:
      if (support::misc::safe_timer::init(v13))
      {
        goto LABEL_15;
      }

      goto LABEL_21;
    }
  }

  operator delete(v19[0]);
  if (support::misc::safe_timer::init(v13))
  {
LABEL_15:
    *a6 = v13;
    *&v23[0] = &unk_1F5EFEF10;
    v15 = v25;
    if (!v25)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

LABEL_21:
  v17 = *v24;
  if (os_log_type_enabled(*v24, OS_LOG_TYPE_ERROR))
  {
    *v18 = 0;
    _os_log_error_impl(&dword_1E5234000, v17, OS_LOG_TYPE_ERROR, "error: failed to init safe_timer object", v18, 2u);
  }

  (*(*v13 + 8))(v13);
  *&v23[0] = &unk_1F5EFEF10;
  v15 = v25;
  if (v25)
  {
LABEL_16:
    if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v15->__on_zero_shared)(v15);
      std::__shared_weak_count::__release_weak(v15);
    }
  }

LABEL_18:
  v16 = *MEMORY[0x1E69E9840];
}

void sub_1E5338460(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, char a30)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t support::misc::safe_timer::safe_timer(uint64_t a1, const std::string::value_type *a2, uint64_t a3, uint64_t a4, uint64_t a5, dispatch_qos_class_t a6)
{
  *a1 = &unk_1F5F04928;
  v11 = a1 + 8;
  *(&v29.__r_.__value_.__s + 23) = 11;
  strcpy(&v29, "safe-timer.");
  v12 = *(a2 + 1);
  if (a2[23] >= 0)
  {
    v13 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v13 = v12;
  }

  v14 = std::string::append(&v29, a2, v13);
  v15 = *&v14->__r_.__value_.__l.__data_;
  *(v11 + 16) = *(&v14->__r_.__value_.__l + 2);
  *v11 = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  v29.__r_.__value_.__r.__words[0] = operator new(0x20uLL);
  *&v29.__r_.__value_.__r.__words[1] = xmmword_1E538EBE0;
  strcpy(v29.__r_.__value_.__l.__data_, "com.apple.telephony.baseband.");
  v16 = *(a1 + 31);
  if (v16 >= 0)
  {
    v17 = v11;
  }

  else
  {
    v17 = *(a1 + 8);
  }

  if (v16 >= 0)
  {
    v18 = *(a1 + 31);
  }

  else
  {
    v18 = *(a1 + 16);
  }

  v19 = std::string::append(&v29, v17, v18);
  v20 = (a1 + 32);
  v21 = *&v19->__r_.__value_.__l.__data_;
  *(a1 + 48) = *(&v19->__r_.__value_.__l + 2);
  *(a1 + 32) = v21;
  v19->__r_.__value_.__l.__size_ = 0;
  v19->__r_.__value_.__r.__words[2] = 0;
  v19->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  v28.__r_.__value_.__r.__words[0] = operator new(0x30uLL);
  *&v28.__r_.__value_.__r.__words[1] = xmmword_1E538EAF0;
  strcpy(v28.__r_.__value_.__l.__data_, "com.apple.telephony.basebandservices.support");
  if (*(a1 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a1 + 8), *(a1 + 16));
  }

  else
  {
    __p = *v11;
  }

  support::log::client::client((a1 + 56), &v28, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_19:
      *(a1 + 136) = a3;
      *(a1 + 144) = a4;
      v22 = a5 + 24;
      v23 = *(a5 + 24);
      if (v23)
      {
        goto LABEL_20;
      }

LABEL_24:
      v22 = a1 + 176;
      goto LABEL_25;
    }
  }

  else if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_19;
  }

  operator delete(v28.__r_.__value_.__l.__data_);
  *(a1 + 136) = a3;
  *(a1 + 144) = a4;
  v22 = a5 + 24;
  v23 = *(a5 + 24);
  if (!v23)
  {
    goto LABEL_24;
  }

LABEL_20:
  if (v23 != a5)
  {
    *(a1 + 176) = v23;
LABEL_25:
    *v22 = 0;
    goto LABEL_27;
  }

  *(a1 + 176) = a1 + 152;
  (*(**v22 + 24))();
LABEL_27:
  if (*(a1 + 55) < 0)
  {
    v20 = *v20;
  }

  v24 = dispatch_queue_attr_make_with_qos_class(0, a6, 0);
  v25 = dispatch_queue_create(v20, v24);
  *(a1 + 184) = v25;
  *(a1 + 192) = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v25);
  *(a1 + 200) = 0;
  return a1;
}

void sub_1E5338790(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a21 < 0)
  {
    operator delete(__p);
    if ((*(v27 + 55) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }
  }

  else if ((*(v27 + 55) & 0x80000000) == 0)
  {
LABEL_6:
    if (*(v27 + 31) < 0)
    {
      operator delete(*v29);
    }

    _Unwind_Resume(exception_object);
  }

  operator delete(*v28);
  goto LABEL_6;
}

void sub_1E533882C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    JUMPOUT(0x1E5338820);
  }

  JUMPOUT(0x1E5338824);
}

void support::misc::safe_timer::start_sync(support::misc::safe_timer *this)
{
  v32 = *MEMORY[0x1E69E9840];
  v2 = **(this + 13);
  if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    if (*(this + 200) != 1)
    {
      goto LABEL_3;
    }

LABEL_11:
    v9 = this;
    v10 = **(this + 13);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = (v9 + 8);
      if (*(v9 + 31) < 0)
      {
        v11 = *v11;
      }

      *buf = 136315138;
      *&buf[4] = v11;
      _os_log_error_impl(&dword_1E5234000, v10, OS_LOG_TYPE_ERROR, "error: '%s' already active", buf, 0xCu);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v28, "'");
    v15 = *(v9 + 1);
    v14 = v9 + 8;
    v13 = v15;
    v16 = v14[23];
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
      v18 = v14[23];
    }

    else
    {
      v18 = *(v14 + 1);
    }

    v19 = std::string::append(&v28, v17, v18);
    v20 = *&v19->__r_.__value_.__l.__data_;
    v29.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
    *&v29.__r_.__value_.__l.__data_ = v20;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(v26, "' already active");
    if ((v27 & 0x80u) == 0)
    {
      v21 = v26;
    }

    else
    {
      v21 = v26[0];
    }

    if ((v27 & 0x80u) == 0)
    {
      v22 = v27;
    }

    else
    {
      v22 = v26[1];
    }

    v23 = std::string::append(&v29, v21, v22);
    v24 = *&v23->__r_.__value_.__l.__data_;
    v31 = v23->__r_.__value_.__r.__words[2];
    *buf = v24;
    v23->__r_.__value_.__l.__size_ = 0;
    v23->__r_.__value_.__r.__words[2] = 0;
    v23->__r_.__value_.__r.__words[0] = 0;
    MEMORY[0x1E6926EB0](exception, buf);
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  *buf = 0;
  _os_log_debug_impl(&dword_1E5234000, v2, OS_LOG_TYPE_DEBUG, "starting...", buf, 2u);
  if (*(this + 200) == 1)
  {
    goto LABEL_11;
  }

LABEL_3:
  dispatch_assert_queue_V2(*(this + 23));
  v3 = *(this + 24);
  v4 = dispatch_time(0, 1000000 * *(this + 17));
  v5 = *(this + 18);
  if (v5)
  {
    v6 = 1000000 * v5;
  }

  else
  {
    v6 = -1;
  }

  dispatch_source_set_timer(v3, v4, v6, 0x1388uLL);
  v7 = *(this + 24);
  if (*(this + 200))
  {
    dispatch_resume(v7);
  }

  else
  {
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 0x40000000;
    handler[2] = ___ZN7support4misc10safe_timer10start_syncEv_block_invoke;
    handler[3] = &__block_descriptor_tmp_9;
    handler[4] = this;
    dispatch_source_set_event_handler(v7, handler);
    dispatch_activate(*(this + 24));
  }

  *(this + 100) = 1;
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1E5338AE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (*(v34 - 41) < 0)
  {
    operator delete(*(v34 - 64));
    if ((a20 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a32 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((a20 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a15);
  if ((a32 & 0x80000000) == 0)
  {
LABEL_4:
    if (a26 < 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  operator delete(a27);
  if (a26 < 0)
  {
LABEL_5:
    operator delete(__p);
    if ((v33 & 1) == 0)
    {
LABEL_12:
      _Unwind_Resume(a1);
    }

LABEL_11:
    __cxa_free_exception(v32);
    _Unwind_Resume(a1);
  }

LABEL_10:
  if (!v33)
  {
    goto LABEL_12;
  }

  goto LABEL_11;
}

uint64_t ___ZN7support4misc10safe_timer10start_syncEv_block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 200) != 1)
  {
    return result;
  }

  v2 = **(v1 + 104);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_debug_impl(&dword_1E5234000, v2, OS_LOG_TYPE_DEBUG, "fired", v5, 2u);
    *(v1 + 201) = 1;
    if (!*(v1 + 144))
    {
LABEL_4:
      dispatch_assert_queue_V2(*(v1 + 184));
      if (*(v1 + 200) == 1)
      {
        v3 = **(v1 + 104);
        if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_debug_impl(&dword_1E5234000, v3, OS_LOG_TYPE_DEBUG, "stopping...", buf, 2u);
        }

        dispatch_suspend(*(v1 + 192));
        *(v1 + 200) = 2;
      }
    }
  }

  else
  {
    *(v1 + 201) = 1;
    if (!*(v1 + 144))
    {
      goto LABEL_4;
    }
  }

  v4 = *(v1 + 176);
  if (!v4)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v4 + 48))(v4);
}

void support::misc::safe_timer::stop(support::misc::safe_timer *this)
{
  v2 = *(this + 23);
  if (v2 == dispatch_get_specific("CurrentQueue"))
  {
    dispatch_assert_queue_V2(v2);
    if (*(this + 200) == 1)
    {
      v3 = **(this + 13);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_debug_impl(&dword_1E5234000, v3, OS_LOG_TYPE_DEBUG, "stopping...", buf, 2u);
      }

      dispatch_suspend(*(this + 24));
      *(this + 200) = 2;
    }
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ___ZN7support4misc10safe_timer4stopEv_block_invoke;
    block[3] = &__block_descriptor_tmp_9_0;
    block[4] = this;
    dispatch_sync(v2, block);
  }
}

void ___ZN7support4misc10safe_timer4stopEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  dispatch_assert_queue_V2(*(v1 + 184));
  if (*(v1 + 200) == 1)
  {
    v2 = **(v1 + 104);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      *v3 = 0;
      _os_log_debug_impl(&dword_1E5234000, v2, OS_LOG_TYPE_DEBUG, "stopping...", v3, 2u);
    }

    dispatch_suspend(*(v1 + 192));
    *(v1 + 200) = 2;
  }
}

void support::misc::safe_timer::~safe_timer(support::misc::safe_timer *this)
{
  *this = &unk_1F5F04928;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  if (*(this + 23))
  {
    support::misc::safe_timer::stop(this);
    v2 = *(this + 23);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 1107296256;
    v7[2] = ___ZN7support4misc10safe_timerD2Ev_block_invoke;
    v7[3] = &__block_descriptor_tmp_18_0;
    v7[4] = &v8;
    v7[5] = this;
    dispatch_sync(v2, v7);
  }

  v3 = *(this + 24);
  if (v3)
  {
    if (*(v9 + 24))
    {
      dispatch_source_cancel(v3);
      if (*(v9 + 24) == 2)
      {
        dispatch_resume(*(this + 24));
      }
    }

    else
    {
      dispatch_activate(v3);
      dispatch_source_cancel(*(this + 24));
    }

    dispatch_release(*(this + 24));
  }

  v4 = *(this + 23);
  if (v4)
  {
    dispatch_release(v4);
  }

  _Block_object_dispose(&v8, 8);
  v5 = *(this + 22);
  if (v5 == (this + 152))
  {
    (*(*v5 + 32))(v5);
    *(this + 7) = &unk_1F5EFEF10;
    v6 = *(this + 15);
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  else
  {
    if (v5)
    {
      (*(*v5 + 40))(v5);
    }

    *(this + 7) = &unk_1F5EFEF10;
    v6 = *(this + 15);
    if (!v6)
    {
LABEL_18:
      if ((*(this + 55) & 0x80000000) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_22;
    }
  }

  if (atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_18;
  }

  (v6->__on_zero_shared)(v6);
  std::__shared_weak_count::__release_weak(v6);
  if ((*(this + 55) & 0x80000000) == 0)
  {
LABEL_19:
    if ((*(this + 31) & 0x80000000) == 0)
    {
      return;
    }

LABEL_23:
    operator delete(*(this + 1));
    return;
  }

LABEL_22:
  operator delete(*(this + 4));
  if (*(this + 31) < 0)
  {
    goto LABEL_23;
  }
}

{
  support::misc::safe_timer::~safe_timer(this);

  operator delete(v1);
}

uint64_t __cxx_global_var_init_33()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>::~PthreadMutexGuardPolicy, &ctu::Singleton<support::log::shared_stdio,support::log::shared_stdio,ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>>::sInstance, &dword_1E5234000);
  }

  return result;
}

{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<eUICC::detail::StateMachine>::~PthreadMutexGuardPolicy, &ctu::Singleton<eUICC::detail::StateMachine,eUICC::detail::StateMachine,ctu::PthreadMutexGuardPolicy<eUICC::detail::StateMachine>>::sInstance, &dword_1E5234000);
  }

  return result;
}

uint64_t DaleFirmware::getImage_BBCfgSegment(DaleFirmware *this, uint64_t a2)
{
  v73[2] = *MEMORY[0x1E69E9840];
  v4 = *(this + 24);
  Size = DaleImage::getSize(v4);
  if (Size)
  {
    DaleImage::getData(v4, 0, Size, &v71);
    v6 = v71.__r_.__value_.__r.__words[0];
    v71.__r_.__value_.__r.__words[0] = 0;
    if (v6)
    {
      v7 = MEMORY[0x1E69262B0]();
LABEL_102:
      operator delete(v7);
      goto LABEL_103;
    }
  }

  else
  {
    ACFULogging::getLogInstance(0);
    ACFULogging::handleMessage();
  }

  v8 = *(this + 24);
  if (!a2)
  {
    *(&v71.__r_.__value_.__s + 23) = 14;
    strcpy(&v71, "bbcfg_prod.bin");
    v18 = *(this + 111);
    if (v18 >= 0)
    {
      v19 = this + 88;
    }

    else
    {
      v19 = *(this + 11);
    }

    if (v18 >= 0)
    {
      v20 = *(this + 111);
    }

    else
    {
      v20 = *(this + 12);
    }

    v21 = std::string::insert(&v71, 0, v19, v20);
    v22 = v21->__r_.__value_.__r.__words[0];
    *v72 = v21->__r_.__value_.__l.__size_;
    *&v72[7] = *(&v21->__r_.__value_.__r.__words[1] + 7);
    v23 = HIBYTE(v21->__r_.__value_.__r.__words[2]);
    v21->__r_.__value_.__l.__size_ = 0;
    v21->__r_.__value_.__r.__words[2] = 0;
    v21->__r_.__value_.__r.__words[0] = 0;
    *&v67[7] = *&v72[7];
    v66 = v22;
    *v67 = *v72;
    v68 = v23;
    *v72 = 0;
    *&v72[7] = 0;
    v69 = 0;
    std::optional<std::variant<std::string,ctu::cf::CFSharedRef<__CFData const>>>::operator=[abi:ne200100]<std::variant<std::string,ctu::cf::CFSharedRef<__CFData const>>,void>(v8 + 16, &v66);
    if (v69 != -1)
    {
      __b[0] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK8__CFDataEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSL_1EJSD_SJ_EEEEEEDcSN_DpT0_;
      __b[1] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK8__CFDataEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSL_1EJSD_SJ_EEEEEEDcSN_DpT0_;
      (__b[v69])(&v61, &v66);
    }

    v69 = -1;
    if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
    {
      v7 = v71.__r_.__value_.__r.__words[0];
      goto LABEL_102;
    }

    goto LABEL_103;
  }

  *(&v60.__r_.__value_.__s + 23) = 7;
  strcpy(&v60, "bbcfg_s");
  v9 = *(this + 111);
  if (v9 >= 0)
  {
    v10 = this + 88;
  }

  else
  {
    v10 = *(this + 11);
  }

  if (v9 >= 0)
  {
    v11 = *(this + 111);
  }

  else
  {
    v11 = *(this + 12);
  }

  v12 = std::string::insert(&v60, 0, v10, v11);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v61.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v61.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  memset(&v71, 170, sizeof(v71));
  std::to_string(&v71, a2);
  v14 = 0x7FFFFFFFFFFFFFF7;
  memset(__b, 170, sizeof(__b));
  v15 = HIBYTE(v71.__r_.__value_.__r.__words[2]);
  if ((v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v15 = v71.__r_.__value_.__l.__size_;
  }

  v16 = 3 - v15;
  if (3 - v15 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v16 >= 0x17)
  {
    if ((v16 | 7) == 0x17)
    {
      v24 = 25;
    }

    else
    {
      v24 = (v16 | 7) + 1;
    }

    v17 = operator new(v24);
    __b[1] = v16;
    __b[2] = (v24 | 0x8000000000000000);
    __b[0] = v17;
    goto LABEL_32;
  }

  HIBYTE(__b[2]) = 3 - v15;
  v17 = __b;
  if (v15 != 3)
  {
LABEL_32:
    memset(v17, 48, v16);
  }

  *(v17 + v16) = 0;
  v25 = SHIBYTE(__b[2]);
  if (SHIBYTE(__b[2]) >= 0)
  {
    v26 = HIBYTE(__b[2]);
  }

  else
  {
    v26 = __b[1];
  }

  v27 = SHIBYTE(v71.__r_.__value_.__r.__words[2]);
  if ((v71.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v28 = HIBYTE(v71.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v28 = v71.__r_.__value_.__l.__size_;
  }

  v29 = v28 + v26;
  if (v28 + v26 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v29 <= 0x16)
  {
    v58 = 0;
    v59 = 0;
    __p = 0;
    p_p = &__p;
    HIBYTE(v59) = v28 + v26;
    if (!v26)
    {
      goto LABEL_51;
    }

    goto LABEL_47;
  }

  v30 = v8;
  if ((v29 | 7) == 0x17)
  {
    v31 = 25;
  }

  else
  {
    v31 = (v29 | 7) + 1;
  }

  p_p = operator new(v31);
  v58 = v28 + v26;
  v59 = v31 | 0x8000000000000000;
  __p = p_p;
  v8 = v30;
  if (v26)
  {
LABEL_47:
    if (v25 >= 0)
    {
      v33 = __b;
    }

    else
    {
      v33 = __b[0];
    }

    memmove(p_p, v33, v26);
  }

LABEL_51:
  v34 = &p_p[v26];
  if (v28)
  {
    if (v27 >= 0)
    {
      v35 = &v71;
    }

    else
    {
      v35 = v71.__r_.__value_.__r.__words[0];
    }

    memmove(v34, v35, v28);
  }

  v34[v28] = 0;
  if (v25 < 0)
  {
    operator delete(__b[0]);
    if ((*(&v71.__r_.__value_.__s + 23) & 0x80) == 0)
    {
      goto LABEL_58;
    }
  }

  else if ((v27 & 0x80) == 0)
  {
    goto LABEL_58;
  }

  operator delete(v71.__r_.__value_.__l.__data_);
LABEL_58:
  if (v59 >= 0)
  {
    v36 = &__p;
  }

  else
  {
    v36 = __p;
  }

  if (v59 >= 0)
  {
    v37 = HIBYTE(v59);
  }

  else
  {
    v37 = v58;
  }

  v38 = std::string::append(&v61, v36, v37);
  v39 = *&v38->__r_.__value_.__l.__data_;
  *&v72[16] = *(&v38->__r_.__value_.__l + 2);
  *v72 = v39;
  v38->__r_.__value_.__l.__size_ = 0;
  v38->__r_.__value_.__r.__words[2] = 0;
  v38->__r_.__value_.__r.__words[0] = 0;
  v40 = v72[23];
  if ((v72[23] & 0x8000000000000000) == 0)
  {
    if ((v72[23] - 19) < 4)
    {
      v41 = v8;
      v42 = v72[23] + 4;
      v43 = v72;
      v44 = 22;
LABEL_72:
      v45 = 2 * v44;
      if (v42 > 2 * v44)
      {
        v45 = v42;
      }

      if ((v45 | 7) == 0x17)
      {
        v46 = 25;
      }

      else
      {
        v46 = (v45 | 7) + 1;
      }

      if (v45 >= 0x17)
      {
        v14 = v46;
      }

      else
      {
        v14 = 23;
      }

      v47 = v44 == 22;
      goto LABEL_81;
    }

    v51 = v72;
    *&v72[v72[23]] = 1852400174;
    v52 = v40 + 4;
    if ((v72[23] & 0x80000000) == 0)
    {
      goto LABEL_87;
    }

    goto LABEL_89;
  }

  v40 = *&v72[8];
  v44 = (*&v72[16] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v44 - *&v72[8] >= 4)
  {
    v51 = *v72;
    *(*v72 + *&v72[8]) = 1852400174;
    v52 = v40 + 4;
    if ((v72[23] & 0x80000000) == 0)
    {
LABEL_87:
      v72[23] = v52 & 0x7F;
LABEL_90:
      v50 = &v51[v52];
      goto LABEL_91;
    }

LABEL_89:
    *&v72[8] = v52;
    goto LABEL_90;
  }

  v41 = v8;
  v42 = *&v72[8] + 4;
  if (0x7FFFFFFFFFFFFFF7 - (*&v72[16] & 0x7FFFFFFFFFFFFFFFuLL) < *&v72[8] + 4 - v44)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v43 = *v72;
  if (v44 <= 0x3FFFFFFFFFFFFFF2)
  {
    goto LABEL_72;
  }

  v47 = 0;
LABEL_81:
  v48 = operator new(v14);
  v49 = v48;
  if (v40)
  {
    memmove(v48, v43, v40);
  }

  *&v49[v40] = 1852400174;
  if (!v47)
  {
    operator delete(v43);
  }

  *&v72[8] = v42;
  *&v72[16] = v14 | 0x8000000000000000;
  *v72 = v49;
  v50 = &v49[v42];
  v8 = v41;
LABEL_91:
  *v50 = 0;
  v73[0] = *&v72[8];
  v53 = *v72;
  *(v73 + 7) = *&v72[15];
  v54 = v72[23];
  memset(v72, 0, sizeof(v72));
  v62 = v53;
  *v63 = v73[0];
  *&v63[7] = *(v73 + 7);
  v64 = v54;
  v73[0] = 0;
  *(v73 + 7) = 0;
  v65 = 0;
  std::optional<std::variant<std::string,ctu::cf::CFSharedRef<__CFData const>>>::operator=[abi:ne200100]<std::variant<std::string,ctu::cf::CFSharedRef<__CFData const>>,void>(v8 + 16, &v62);
  if (v65 != -1)
  {
    v71.__r_.__value_.__r.__words[0] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK8__CFDataEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSL_1EJSD_SJ_EEEEEEDcSN_DpT0_;
    v71.__r_.__value_.__l.__size_ = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK8__CFDataEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSL_1EJSD_SJ_EEEEEEDcSN_DpT0_;
    (*(&v71.__r_.__value_.__l.__data_ + v65))(__b, &v62);
  }

  v65 = -1;
  if ((v72[23] & 0x80000000) != 0)
  {
    operator delete(*v72);
    if ((SHIBYTE(v59) & 0x80000000) == 0)
    {
LABEL_95:
      if ((SHIBYTE(v61.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_96;
      }

      goto LABEL_100;
    }
  }

  else if ((SHIBYTE(v59) & 0x80000000) == 0)
  {
    goto LABEL_95;
  }

  operator delete(__p);
  if ((SHIBYTE(v61.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_96:
    if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_101;
    }

    goto LABEL_103;
  }

LABEL_100:
  operator delete(v61.__r_.__value_.__l.__data_);
  if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_101:
    v7 = v60.__r_.__value_.__r.__words[0];
    goto LABEL_102;
  }

LABEL_103:
  result = *(this + 24);
  v56 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1E5339844(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::variant<std::string,ctu::cf::CFSharedRef<__CFData const>>::~variant[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 != -1)
  {
    v5[0] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK8__CFDataEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSL_1EJSD_SJ_EEEEEEDcSN_DpT0_;
    v5[1] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK8__CFDataEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSL_1EJSD_SJ_EEEEEEDcSN_DpT0_;
    (v5[v2])(&v4, a1);
  }

  *(a1 + 24) = -1;
  return a1;
}

void DaleFirmware::setPath_Firmware(std::string *a1, __int128 *a2)
{
  v3 = a1;
  v18[2] = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 23);
  if ((v4 & 0x8000000000000000) == 0)
  {
    if (*(a2 + 23))
    {
      v5 = *(a2 + 23);
      goto LABEL_5;
    }

LABEL_8:
    ACFULogging::getLogInstance(a1);
    ACFULogging::handleMessage();
    goto LABEL_28;
  }

  v5 = *(a2 + 1);
  if (!v5)
  {
    goto LABEL_8;
  }

LABEL_5:
  v6 = v5 - 1;
  if ((v4 & 0x80000000) == 0)
  {
    if (*(a2 + v6) == 47)
    {
      goto LABEL_20;
    }

LABEL_10:
    *(&v17.__r_.__value_.__s + 23) = 1;
    LOWORD(v17.__r_.__value_.__l.__data_) = 47;
    if ((v4 & 0x80000000) == 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    if ((v4 & 0x80000000) == 0)
    {
      v8 = v4;
    }

    else
    {
      v8 = *(a2 + 1);
    }

    a1 = std::string::insert(&v17, 0, v7, v8);
    v9 = a1->__r_.__value_.__r.__words[0];
    v18[0] = a1->__r_.__value_.__l.__size_;
    *(v18 + 7) = *(&a1->__r_.__value_.__r.__words[1] + 7);
    v10 = HIBYTE(a1->__r_.__value_.__r.__words[2]);
    a1->__r_.__value_.__l.__size_ = 0;
    a1->__r_.__value_.__r.__words[2] = 0;
    a1->__r_.__value_.__r.__words[0] = 0;
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = v9;
    *(a2 + 1) = v18[0];
    *(a2 + 15) = *(v18 + 7);
    *(a2 + 23) = v10;
    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v17.__r_.__value_.__l.__data_);
    }

    goto LABEL_20;
  }

  if (*(*a2 + v6) != 47)
  {
    goto LABEL_10;
  }

LABEL_20:
  ACFULogging::getLogInstance(a1);
  if (*(a2 + 23) < 0)
  {
    v11 = *a2;
  }

  ACFULogging::handleMessage();
  v12 = a2;
  if (*(a2 + 23) < 0)
  {
    v12 = *a2;
  }

  v13 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v12, 0x8000100u);
  v17.__r_.__value_.__r.__words[0] = v13;
  v3[2].__r_.__value_.__r.__words[2] = ACFUCommon::createURLByAppendingStrings(&stru_1F5F088A0, v13, v14);
  if (v3[4].__r_.__value_.__s.__data_[15] < 0)
  {
    operator delete(v3[3].__r_.__value_.__r.__words[2]);
  }

  v15 = *a2;
  v3[4].__r_.__value_.__l.__size_ = *(a2 + 2);
  *&v3[3].__r_.__value_.__r.__words[2] = v15;
  *(a2 + 23) = 0;
  *a2 = 0;
  if (v13)
  {
    CFRelease(v13);
  }

LABEL_28:
  v16 = *MEMORY[0x1E69E9840];
}

void sub_1E5339BBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void DaleFirmware::setPath_Dynamic(uint64_t a1, __int128 *a2)
{
  v15[2] = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 23);
  if ((v4 & 0x8000000000000000) != 0)
  {
    v5 = *(a2 + 1);
    if (v5)
    {
LABEL_5:
      v6 = v5 - 1;
      if ((v4 & 0x80000000) != 0)
      {
        if (*(*a2 + v6) == 47)
        {
          goto LABEL_19;
        }
      }

      else if (*(a2 + v6) == 47)
      {
        goto LABEL_19;
      }

      *(&v14.__r_.__value_.__s + 23) = 1;
      LOWORD(v14.__r_.__value_.__l.__data_) = 47;
      if ((v4 & 0x80000000) == 0)
      {
        v7 = a2;
      }

      else
      {
        v7 = *a2;
      }

      if ((v4 & 0x80000000) == 0)
      {
        v8 = v4;
      }

      else
      {
        v8 = *(a2 + 1);
      }

      v9 = std::string::insert(&v14, 0, v7, v8);
      v10 = v9->__r_.__value_.__r.__words[0];
      v15[0] = v9->__r_.__value_.__l.__size_;
      *(v15 + 7) = *(&v9->__r_.__value_.__r.__words[1] + 7);
      v11 = HIBYTE(v9->__r_.__value_.__r.__words[2]);
      v9->__r_.__value_.__l.__size_ = 0;
      v9->__r_.__value_.__r.__words[2] = 0;
      v9->__r_.__value_.__r.__words[0] = 0;
      if (*(a2 + 23) < 0)
      {
        operator delete(*a2);
      }

      *a2 = v10;
      *(a2 + 1) = v15[0];
      *(a2 + 15) = *(v15 + 7);
      *(a2 + 23) = v11;
      if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v14.__r_.__value_.__l.__data_);
        if ((*(a1 + 135) & 0x80000000) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_20;
      }

LABEL_19:
      if ((*(a1 + 135) & 0x80000000) == 0)
      {
LABEL_21:
        v12 = *a2;
        *(a1 + 128) = *(a2 + 2);
        *(a1 + 112) = v12;
        *(a2 + 23) = 0;
        *a2 = 0;
        goto LABEL_22;
      }

LABEL_20:
      operator delete(*(a1 + 112));
      goto LABEL_21;
    }
  }

  else if (*(a2 + 23))
  {
    v5 = *(a2 + 23);
    goto LABEL_5;
  }

  ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage();
LABEL_22:
  v13 = *MEMORY[0x1E69E9840];
}

void sub_1E5339DA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void DaleFirmware::setPath_Fdr(uint64_t a1, __int128 *a2)
{
  v15[2] = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 23);
  if ((v4 & 0x8000000000000000) != 0)
  {
    v5 = *(a2 + 1);
    if (v5)
    {
LABEL_5:
      v6 = v5 - 1;
      if ((v4 & 0x80000000) != 0)
      {
        if (*(*a2 + v6) == 47)
        {
          goto LABEL_19;
        }
      }

      else if (*(a2 + v6) == 47)
      {
        goto LABEL_19;
      }

      *(&v14.__r_.__value_.__s + 23) = 1;
      LOWORD(v14.__r_.__value_.__l.__data_) = 47;
      if ((v4 & 0x80000000) == 0)
      {
        v7 = a2;
      }

      else
      {
        v7 = *a2;
      }

      if ((v4 & 0x80000000) == 0)
      {
        v8 = v4;
      }

      else
      {
        v8 = *(a2 + 1);
      }

      v9 = std::string::insert(&v14, 0, v7, v8);
      v10 = v9->__r_.__value_.__r.__words[0];
      v15[0] = v9->__r_.__value_.__l.__size_;
      *(v15 + 7) = *(&v9->__r_.__value_.__r.__words[1] + 7);
      v11 = HIBYTE(v9->__r_.__value_.__r.__words[2]);
      v9->__r_.__value_.__l.__size_ = 0;
      v9->__r_.__value_.__r.__words[2] = 0;
      v9->__r_.__value_.__r.__words[0] = 0;
      if (*(a2 + 23) < 0)
      {
        operator delete(*a2);
      }

      *a2 = v10;
      *(a2 + 1) = v15[0];
      *(a2 + 15) = *(v15 + 7);
      *(a2 + 23) = v11;
      if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v14.__r_.__value_.__l.__data_);
        if ((*(a1 + 159) & 0x80000000) == 0)
        {
          goto LABEL_21;
        }

        goto LABEL_20;
      }

LABEL_19:
      if ((*(a1 + 159) & 0x80000000) == 0)
      {
LABEL_21:
        v12 = *a2;
        *(a1 + 152) = *(a2 + 2);
        *(a1 + 136) = v12;
        *(a2 + 23) = 0;
        *a2 = 0;
        goto LABEL_22;
      }

LABEL_20:
      operator delete(*(a1 + 136));
      goto LABEL_21;
    }
  }

  else if (*(a2 + 23))
  {
    v5 = *(a2 + 23);
    goto LABEL_5;
  }

  ACFULogging::getLogInstance(a1);
  ACFULogging::handleMessage();
LABEL_22:
  v13 = *MEMORY[0x1E69E9840];
}

void sub_1E5339F54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL DaleFirmware::createImage_Loader(DaleFirmware *this)
{
  v14 = 1;
  v15 = 0;
  v1 = *(this + 111);
  if (v1 >= 0)
  {
    v2 = *(this + 111);
  }

  else
  {
    v2 = *(this + 12);
  }

  v3 = v2 + 13;
  if (v2 + 13 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v3 < 0x17)
  {
    v13 = 0;
    v12 = 0uLL;
    v6 = &v12;
    HIBYTE(v13) = v2 + 13;
    if (!v2)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if ((v3 | 7) == 0x17)
    {
      v5 = 25;
    }

    else
    {
      v5 = (v3 | 7) + 1;
    }

    v6 = operator new(v5);
    *(&v12 + 1) = v2 + 13;
    v13 = v5 | 0x8000000000000000;
    *&v12 = v6;
  }

  if (v1 >= 0)
  {
    v7 = this + 88;
  }

  else
  {
    v7 = *(this + 11);
  }

  memmove(v6, v7, v2);
LABEL_15:
  strcpy(v6 + v2, "preloader.bin");
  v16 = v12;
  v17 = v13;
  v13 = 0;
  v12 = 0uLL;
  v18 = 0;
  v19 = 1;
  v8 = DaleImage::create(&v14, &v20);
  v9 = v20;
  v20 = 0;
  if (v19 == 1)
  {
    if (v18 != -1)
    {
      v22[0] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK8__CFDataEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSL_1EJSD_SJ_EEEEEEDcSN_DpT0_;
      v22[1] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK8__CFDataEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSL_1EJSD_SJ_EEEEEEDcSN_DpT0_;
      v8 = (v22[v18])(&v21, &v16);
    }

    v18 = -1;
  }

  if (v9)
  {
    v10 = *(this + 20);
    *(this + 20) = v9;
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }
  }

  else
  {
    ACFULogging::getLogInstance(v8);
    ACFULogging::handleMessage();
  }

  return v9 != 0;
}

void sub_1E533A15C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  DaleImageParameters::~DaleImageParameters(va);
  _Unwind_Resume(a1);
}

BOOL DaleFirmware::createImage_DDR(DaleFirmware *this)
{
  v6 = 2;
  v7 = 1;
  v8[0] = 0;
  v10 = 0;
  v2 = DaleImage::create(&v6, &v11);
  v3 = v11;
  v11 = 0;
  if (v10 == 1)
  {
    if (v9 != -1)
    {
      v13[0] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK8__CFDataEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSL_1EJSD_SJ_EEEEEEDcSN_DpT0_;
      v13[1] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK8__CFDataEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSL_1EJSD_SJ_EEEEEEDcSN_DpT0_;
      v2 = (v13[v9])(&v12, v8);
    }

    v9 = -1;
  }

  if (v3)
  {
    v4 = *(this + 21);
    *(this + 21) = v3;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }
  }

  else
  {
    ACFULogging::getLogInstance(v2);
    ACFULogging::handleMessage();
  }

  return v3 != 0;
}

void sub_1E533A318(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  DaleImageParameters::~DaleImageParameters(va);
  _Unwind_Resume(a1);
}

BOOL DaleFirmware::createImage_BBTicket(DaleFirmware *this)
{
  v14 = 3;
  v15 = 1;
  v1 = *(this + 111);
  if (v1 >= 0)
  {
    v2 = *(this + 111);
  }

  else
  {
    v2 = *(this + 12);
  }

  v3 = v2 + 12;
  if (v2 + 12 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v3 < 0x17)
  {
    v13 = 0;
    v12 = 0uLL;
    v6 = &v12;
    HIBYTE(v13) = v2 + 12;
    if (!v2)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if ((v3 | 7) == 0x17)
    {
      v5 = 25;
    }

    else
    {
      v5 = (v3 | 7) + 1;
    }

    v6 = operator new(v5);
    *(&v12 + 1) = v2 + 12;
    v13 = v5 | 0x8000000000000000;
    *&v12 = v6;
  }

  if (v1 >= 0)
  {
    v7 = this + 88;
  }

  else
  {
    v7 = *(this + 11);
  }

  memmove(v6, v7, v2);
LABEL_15:
  strcpy(v6 + v2, "bbticket.der");
  v17 = v13;
  v16 = v12;
  v12 = 0uLL;
  v13 = 0;
  v18 = 0;
  v19 = 1;
  v8 = DaleImage::create(&v14, &v20);
  v9 = v20;
  v20 = 0;
  if (v19 == 1)
  {
    if (v18 != -1)
    {
      v22[0] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK8__CFDataEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSL_1EJSD_SJ_EEEEEEDcSN_DpT0_;
      v22[1] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK8__CFDataEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSL_1EJSD_SJ_EEEEEEDcSN_DpT0_;
      v8 = (v22[v18])(&v21, &v16);
    }

    v18 = -1;
  }

  if (v9)
  {
    v10 = *(this + 22);
    *(this + 22) = v9;
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }
  }

  else
  {
    ACFULogging::getLogInstance(v8);
    ACFULogging::handleMessage();
  }

  return v9 != 0;
}

void sub_1E533A520(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  DaleImageParameters::~DaleImageParameters(va);
  _Unwind_Resume(a1);
}

BOOL DaleFirmware::createImage_BBCfgHashTable(DaleFirmware *this)
{
  v14 = 4;
  v15 = 0;
  v1 = *(this + 111);
  if (v1 >= 0)
  {
    v2 = *(this + 111);
  }

  else
  {
    v2 = *(this + 12);
  }

  v3 = v2 + 13;
  if (v2 + 13 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v3 < 0x17)
  {
    v13 = 0;
    v12 = 0uLL;
    v6 = &v12;
    HIBYTE(v13) = v2 + 13;
    if (!v2)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if ((v3 | 7) == 0x17)
    {
      v5 = 25;
    }

    else
    {
      v5 = (v3 | 7) + 1;
    }

    v6 = operator new(v5);
    *(&v12 + 1) = v2 + 13;
    v13 = v5 | 0x8000000000000000;
    *&v12 = v6;
  }

  if (v1 >= 0)
  {
    v7 = this + 88;
  }

  else
  {
    v7 = *(this + 11);
  }

  memmove(v6, v7, v2);
LABEL_15:
  strcpy(v6 + v2, "bbcfg_hdr.bin");
  v16 = v12;
  v17 = v13;
  v13 = 0;
  v12 = 0uLL;
  v18 = 0;
  v19 = 1;
  v8 = DaleImage::create(&v14, &v20);
  v9 = v20;
  v20 = 0;
  if (v19 == 1)
  {
    if (v18 != -1)
    {
      v22[0] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK8__CFDataEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSL_1EJSD_SJ_EEEEEEDcSN_DpT0_;
      v22[1] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK8__CFDataEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSL_1EJSD_SJ_EEEEEEDcSN_DpT0_;
      v8 = (v22[v18])(&v21, &v16);
    }

    v18 = -1;
  }

  if (v9)
  {
    v10 = *(this + 23);
    *(this + 23) = v9;
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }
  }

  else
  {
    ACFULogging::getLogInstance(v8);
    ACFULogging::handleMessage();
  }

  return v9 != 0;
}

void sub_1E533A720(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  DaleImageParameters::~DaleImageParameters(va);
  _Unwind_Resume(a1);
}

BOOL DaleFirmware::createImage_BBCfgSegment(DaleFirmware *this)
{
  v6 = 5;
  v7 = 1;
  v8[0] = 0;
  v10 = 0;
  v2 = DaleImage::create(&v6, &v11);
  v3 = v11;
  v11 = 0;
  if (v10 == 1)
  {
    if (v9 != -1)
    {
      v13[0] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK8__CFDataEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSL_1EJSD_SJ_EEEEEEDcSN_DpT0_;
      v13[1] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK8__CFDataEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSL_1EJSD_SJ_EEEEEEDcSN_DpT0_;
      v2 = (v13[v9])(&v12, v8);
    }

    v9 = -1;
  }

  if (v3)
  {
    v4 = *(this + 24);
    *(this + 24) = v3;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }
  }

  else
  {
    ACFULogging::getLogInstance(v2);
    ACFULogging::handleMessage();
  }

  return v3 != 0;
}

void sub_1E533A854(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  DaleImageParameters::~DaleImageParameters(va);
  _Unwind_Resume(a1);
}

BOOL DaleFirmware::createImage_ModemBundle(DaleFirmware *this)
{
  v14 = 6;
  v15 = 0;
  v1 = *(this + 111);
  if (v1 >= 0)
  {
    v2 = *(this + 111);
  }

  else
  {
    v2 = *(this + 12);
  }

  v3 = v2 + 16;
  if (v2 + 16 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v3 < 0x17)
  {
    v13 = 0;
    v12 = 0uLL;
    v6 = &v12;
    HIBYTE(v13) = v2 + 16;
    if (!v2)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if ((v3 | 7) == 0x17)
    {
      v5 = 25;
    }

    else
    {
      v5 = (v3 | 7) + 1;
    }

    v6 = operator new(v5);
    *(&v12 + 1) = v2 + 16;
    v13 = v5 | 0x8000000000000000;
    *&v12 = v6;
  }

  if (v1 >= 0)
  {
    v7 = this + 88;
  }

  else
  {
    v7 = *(this + 11);
  }

  memmove(v6, v7, v2);
LABEL_15:
  strcpy(v6 + v2, "modem-bundle.img");
  v17 = v13;
  v16 = v12;
  v12 = 0uLL;
  v13 = 0;
  v18 = 0;
  v19 = 1;
  v8 = DaleImage::create(&v14, &v20);
  v9 = v20;
  v20 = 0;
  if (v19 == 1)
  {
    if (v18 != -1)
    {
      v22[0] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK8__CFDataEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSL_1EJSD_SJ_EEEEEEDcSN_DpT0_;
      v22[1] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK8__CFDataEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSL_1EJSD_SJ_EEEEEEDcSN_DpT0_;
      v8 = (v22[v18])(&v21, &v16);
    }

    v18 = -1;
  }

  if (v9)
  {
    v10 = *(this + 25);
    *(this + 25) = v9;
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }
  }

  else
  {
    ACFULogging::getLogInstance(v8);
    ACFULogging::handleMessage();
  }

  return v9 != 0;
}

void sub_1E533AA4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  DaleImageParameters::~DaleImageParameters(va);
  _Unwind_Resume(a1);
}

BOOL DaleFirmware::createImage_Calibration(DaleFirmware *this)
{
  v14 = 7;
  v15 = 1;
  v1 = *(this + 159);
  if (v1 >= 0)
  {
    v2 = *(this + 159);
  }

  else
  {
    v2 = *(this + 18);
  }

  v3 = v2 + 4;
  if (v2 + 4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v3 < 0x17)
  {
    v13 = 0;
    v12 = 0uLL;
    v6 = &v12;
    HIBYTE(v13) = v2 + 4;
    if (!v2)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if ((v3 | 7) == 0x17)
    {
      v5 = 25;
    }

    else
    {
      v5 = (v3 | 7) + 1;
    }

    v6 = operator new(v5);
    *(&v12 + 1) = v2 + 4;
    v13 = v5 | 0x8000000000000000;
    *&v12 = v6;
  }

  if (v1 >= 0)
  {
    v7 = this + 136;
  }

  else
  {
    v7 = *(this + 17);
  }

  memmove(v6, v7, v2);
LABEL_15:
  strcpy(v6 + v2, "bbcl");
  v16 = v12;
  v17 = v13;
  v13 = 0;
  v12 = 0uLL;
  v18 = 0;
  v19 = 1;
  v8 = DaleImage::create(&v14, &v20);
  v9 = v20;
  v20 = 0;
  if (v19 == 1)
  {
    if (v18 != -1)
    {
      v22[0] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK8__CFDataEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSL_1EJSD_SJ_EEEEEEDcSN_DpT0_;
      v22[1] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK8__CFDataEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSL_1EJSD_SJ_EEEEEEDcSN_DpT0_;
      v8 = (v22[v18])(&v21, &v16);
    }

    v18 = -1;
  }

  if (v9)
  {
    v10 = *(this + 26);
    *(this + 26) = v9;
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }
  }

  else
  {
    ACFULogging::getLogInstance(v8);
    ACFULogging::handleMessage();
  }

  return v9 != 0;
}

void sub_1E533AC44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  DaleImageParameters::~DaleImageParameters(va);
  _Unwind_Resume(a1);
}

BOOL DaleFirmware::createImage_ProvisioningManifest(DaleFirmware *this)
{
  v14 = 8;
  v15 = 1;
  v1 = *(this + 159);
  if (v1 >= 0)
  {
    v2 = *(this + 159);
  }

  else
  {
    v2 = *(this + 18);
  }

  v3 = v2 + 4;
  if (v2 + 4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v3 < 0x17)
  {
    v13 = 0;
    v12 = 0uLL;
    v6 = &v12;
    HIBYTE(v13) = v2 + 4;
    if (!v2)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if ((v3 | 7) == 0x17)
    {
      v5 = 25;
    }

    else
    {
      v5 = (v3 | 7) + 1;
    }

    v6 = operator new(v5);
    *(&v12 + 1) = v2 + 4;
    v13 = v5 | 0x8000000000000000;
    *&v12 = v6;
  }

  if (v1 >= 0)
  {
    v7 = this + 136;
  }

  else
  {
    v7 = *(this + 17);
  }

  memmove(v6, v7, v2);
LABEL_15:
  strcpy(v6 + v2, "bbpv");
  v16 = v12;
  v17 = v13;
  v13 = 0;
  v12 = 0uLL;
  v18 = 0;
  v19 = 1;
  v8 = DaleImage::create(&v14, &v20);
  v9 = v20;
  v20 = 0;
  if (v19 == 1)
  {
    if (v18 != -1)
    {
      v22[0] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK8__CFDataEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSL_1EJSD_SJ_EEEEEEDcSN_DpT0_;
      v22[1] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK8__CFDataEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSL_1EJSD_SJ_EEEEEEDcSN_DpT0_;
      v8 = (v22[v18])(&v21, &v16);
    }

    v18 = -1;
  }

  if (v9)
  {
    v10 = *(this + 29);
    *(this + 29) = v9;
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }
  }

  else
  {
    ACFULogging::getLogInstance(v8);
    ACFULogging::handleMessage();
  }

  return v9 != 0;
}

void sub_1E533AE3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  DaleImageParameters::~DaleImageParameters(va);
  _Unwind_Resume(a1);
}

BOOL DaleFirmware::createImage_DynamicNVRAM(DaleFirmware *this)
{
  v14 = 9;
  v15 = 1;
  v1 = *(this + 135);
  if (v1 >= 0)
  {
    v2 = *(this + 135);
  }

  else
  {
    v2 = *(this + 15);
  }

  v3 = v2 + 4;
  if (v2 + 4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v3 < 0x17)
  {
    v13 = 0;
    v12 = 0uLL;
    v6 = &v12;
    HIBYTE(v13) = v2 + 4;
    if (!v2)
    {
      goto LABEL_15;
    }
  }

  else
  {
    if ((v3 | 7) == 0x17)
    {
      v5 = 25;
    }

    else
    {
      v5 = (v3 | 7) + 1;
    }

    v6 = operator new(v5);
    *(&v12 + 1) = v2 + 4;
    v13 = v5 | 0x8000000000000000;
    *&v12 = v6;
  }

  if (v1 >= 0)
  {
    v7 = this + 112;
  }

  else
  {
    v7 = *(this + 14);
  }

  memmove(v6, v7, v2);
LABEL_15:
  strcpy(v6 + v2, "nvrm");
  v16 = v12;
  v17 = v13;
  v13 = 0;
  v12 = 0uLL;
  v18 = 0;
  v19 = 1;
  v8 = DaleImage::create(&v14, &v20);
  v9 = v20;
  v20 = 0;
  if (v19 == 1)
  {
    if (v18 != -1)
    {
      v22[0] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK8__CFDataEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSL_1EJSD_SJ_EEEEEEDcSN_DpT0_;
      v22[1] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK8__CFDataEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSL_1EJSD_SJ_EEEEEEDcSN_DpT0_;
      v8 = (v22[v18])(&v21, &v16);
    }

    v18 = -1;
  }

  if (v9)
  {
    v10 = *(this + 27);
    *(this + 27) = v9;
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }
  }

  else
  {
    ACFULogging::getLogInstance(v8);
    ACFULogging::handleMessage();
  }

  return v9 != 0;
}

void sub_1E533B034(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  DaleImageParameters::~DaleImageParameters(va);
  _Unwind_Resume(a1);
}

BOOL DaleFirmware::createImage_SystemBundle(DaleFirmware *this)
{
  v1 = *(this + 111);
  if (v1 >= 0)
  {
    v2 = *(this + 111);
  }

  else
  {
    v2 = *(this + 12);
  }

  v3 = v2 + 14;
  if (v2 + 14 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v3 < 0x17)
  {
    v24 = 0;
    __p = 0uLL;
    HIBYTE(v24) = v2 + 14;
    if (!v2)
    {
      qmemcpy(&__p, "sys-bundle.img", 14);
      v16 = 10;
      v17 = 0;
      v15 = 0xE00000000000000;
      v14 = 0uLL;
      v9 = &v14;
      goto LABEL_22;
    }

    p_p = &__p;
  }

  else
  {
    if ((v3 | 7) == 0x17)
    {
      v5 = 25;
    }

    else
    {
      v5 = (v3 | 7) + 1;
    }

    p_p = operator new(v5);
    *(&__p + 1) = v2 + 14;
    v24 = v5 | 0x8000000000000000;
    *&__p = p_p;
  }

  if (v1 >= 0)
  {
    v7 = this + 88;
  }

  else
  {
    v7 = *(this + 11);
  }

  memmove(p_p, v7, v2);
  strcpy(p_p + v2, "sys-bundle.img");
  v16 = 10;
  v17 = 0;
  if (v3 <= 0x16)
  {
    v15 = 0;
    v14 = 0uLL;
    v9 = &v14;
    HIBYTE(v15) = v2 + 14;
  }

  else
  {
    if ((v3 | 7) == 0x17)
    {
      v8 = 25;
    }

    else
    {
      v8 = (v3 | 7) + 1;
    }

    v9 = operator new(v8);
    *(&v14 + 1) = v2 + 14;
    v15 = v8 | 0x8000000000000000;
    *&v14 = v9;
  }

  memmove(v9, v7, v2);
LABEL_22:
  strcpy(v9 + v2, "sys-bundle.img");
  v18 = v14;
  v19 = v15;
  v15 = 0;
  v14 = 0uLL;
  v20 = 0;
  v21 = 1;
  v10 = DaleImage::create(&v16, &v22);
  v11 = v22;
  v22 = 0;
  if (v21 == 1)
  {
    if (v20 != -1)
    {
      v26[0] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK8__CFDataEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSL_1EJSD_SJ_EEEEEEDcSN_DpT0_;
      v26[1] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_12basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEEN3ctu2cf11CFSharedRefIK8__CFDataEEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSL_1EJSD_SJ_EEEEEEDcSN_DpT0_;
      v10 = (v26[v20])(&v25, &v18);
    }

    v20 = -1;
  }

  if (v11)
  {
    v12 = *(this + 28);
    *(this + 28) = v11;
    if (v12)
    {
      (*(*v12 + 8))(v12);
    }
  }

  else
  {
    ACFULogging::getLogInstance(v10);
    ACFULogging::handleMessage();
  }

  if (SHIBYTE(v24) < 0)
  {
    operator delete(__p);
  }

  return v11 != 0;
}

void sub_1E533B2EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BBUICECommunication::setTransportCreationTimeout(BBUICECommunication *this, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 4) == 0)
    {
LABEL_7:
      *(this + 2) = a2;
      goto LABEL_8;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 4) == 0)
    {
      goto LABEL_7;
    }
  }

  if (gBBULogVerbosity < 0)
  {
    goto LABEL_7;
  }

  v13 = *(this + 2);
  _BBULog(2, 0, "BBUICECommunication", "", "Transport timeout set to %f from %f\n", a7, a8, a9, SLOBYTE(a2));
  v11 = gBBULogMaskGet(void)::once;
  *(this + 2) = a2;
  if (v11 != -1)
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
  }

LABEL_8:
  if ((*gBBULogMaskGet(void)::sBBULogMask & 4) != 0 && (gBBULogVerbosity & 0x80000000) == 0)
  {
    v14 = *(this + 3);
    _BBULog(2, 0, "BBUICECommunication", "", "Boot-up transport timeout set to %f from %f\n", a7, a8, a9, SLOBYTE(a2));
  }

  *(this + 3) = a2;
  return 0;
}

uint64_t BBUICECommunication::freeTransport(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2 >= 1)
  {
    close(v2);
    *(a1 + 56) = -1;
  }

  return TelephonyUtilTransportFree();
}

CFErrorRef BBUpdaterExtremePrivate::makeCFError(CFIndex code, const char *a2)
{
  v2 = code;
  keys[1] = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E695E480];
  if (a2 && (v4 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u)) != 0)
  {
    v5 = *MEMORY[0x1E695E650];
    values = v4;
    keys[0] = v5;
    v6 = v4;
    v7 = CFDictionaryCreate(v3, keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFRelease(v6);
    result = CFErrorCreate(v3, @"BBUpdater", v2, v7);
    if (v7)
    {
      v9 = result;
      CFRelease(v7);
      result = v9;
    }

    v10 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v11 = *MEMORY[0x1E69E9840];

    return CFErrorCreate(v3, @"BBUpdater", v2, 0);
  }

  return result;
}

const char *_BBUFSDebugPrint(const char *result, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (sDelegate)
  {
    return sDelegate(result, a2, &a9);
  }

  return result;
}

void _BBUFSDebugPrintOsLog(const char *a1, const char *a2, va_list a3)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    memset(__b, 170, sizeof(__b));
    vsnprintf(__b, 0x400uLL, a2, a3);
    if (qword_1ED9497A0 != -1)
    {
      dispatch_once(&qword_1ED9497A0, &__block_literal_global_5);
      v5 = _MergedGlobals_8;
      if (!os_log_type_enabled(_MergedGlobals_8, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }

    v5 = _MergedGlobals_8;
    if (os_log_type_enabled(_MergedGlobals_8, OS_LOG_TYPE_DEFAULT))
    {
LABEL_4:
      v7 = 136315138;
      v8 = __b;
      _os_log_impl(&dword_1E5234000, v5, OS_LOG_TYPE_DEFAULT, "%s", &v7, 0xCu);
    }
  }

LABEL_5:
  v6 = *MEMORY[0x1E69E9840];
}

os_log_t ___ZL25_BBUFSDebugGetOsLogObjectv_block_invoke()
{
  result = os_log_create("com.apple.telephony.baseband", "bbufs");
  _MergedGlobals_8 = result;
  return result;
}

void BBUCFDataDataSource::~BBUCFDataDataSource(BBUCFDataDataSource *this)
{
  *this = &unk_1F5F04B00;
  v1 = *(this + 1);
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  *this = &unk_1F5F04B00;
  v2 = *(this + 1);
  if (v2)
  {
    CFRelease(v2);
  }

  operator delete(this);
}

uint64_t BBUCFDataDataSource::copyData(CFDataRef *this, unsigned __int8 *a2, int a3, unsigned int *a4, unsigned int a5)
{
  LODWORD(v7) = a3;
  v10 = (*(*this + 3))(this);
  v11 = v10 - a5;
  if (v10 >= a5)
  {
    if (v11 >= v7)
    {
      v7 = v7;
    }

    else
    {
      v7 = v11;
    }

    v13.location = a5;
    v13.length = v7;
    CFDataGetBytes(this[1], v13, a2);
  }

  else
  {
    LODWORD(v7) = 0;
  }

  *a4 = v7;
  return 0;
}

const __CFData *BBUCFDataDataSource::getSize(BBUCFDataDataSource *this)
{
  result = *(this + 1);
  if (result)
  {
    return CFDataGetLength(result);
  }

  return result;
}

void BBUEURPersonalizationParameters::EURNonce::~EURNonce(BBUEURPersonalizationParameters::EURNonce *this)
{
  *this = &unk_1F5F04B68;
  v1 = *(this + 1);
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  *this = &unk_1F5F04B68;
  v2 = *(this + 1);
  if (v2)
  {
    CFRelease(v2);
  }

  operator delete(this);
}

void cfDataToCString(const __CFData *a1, const __CFData *a2)
{
  v2 = a1;
  if (!a2)
  {
    *(a1 + 23) = 0;
    *a1 = 0;
    return;
  }

  CFDataGetBytePtr(a2);
  Length = CFDataGetLength(a2);
  v5 = operator new[]((3 * Length + 1));
  TelephonyUtilBinToHex();
  memset(v2, 170, 24);
  v6 = strlen(v5);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    if ((v6 | 7) == 0x17)
    {
      v8 = 25;
    }

    else
    {
      v8 = (v6 | 7) + 1;
    }

    v9 = operator new(v8);
    *(v2 + 1) = v7;
    *(v2 + 2) = v8 | 0x8000000000000000;
    *v2 = v9;
    v2 = v9;
  }

  else
  {
    *(v2 + 23) = v6;
    if (!v6)
    {
      goto LABEL_12;
    }
  }

  memcpy(v2, v5, v7);
LABEL_12:
  *(v2 + v7) = 0;

  operator delete[](v5);
}

void BBUEURPersonalizationParameters::EURSerialNumber::~EURSerialNumber(BBUEURPersonalizationParameters::EURSerialNumber *this)
{
  *this = &unk_1F5F04B98;
  v1 = *(this + 1);
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  *this = &unk_1F5F04B98;
  v2 = *(this + 1);
  if (v2)
  {
    CFRelease(v2);
  }

  operator delete(this);
}

uint64_t BBUEURPersonalizationParameters::EURSerialNumber::createFromSerialNumber(BBUEURPersonalizationParameters::EURSerialNumber *this, const unsigned __int8 *a2)
{
  v2 = a2;
  if (capabilities::radio::mav25Plus(this))
  {
    if (v2 != 64)
    {
      return 0;
    }
  }

  else if (v2 != 32)
  {
    return 0;
  }

  v5 = v2 + 7;
  v6 = (v2 + 7) >> 3;
  v7 = operator new(0x10uLL);
  *v7 = &unk_1F5F04B98;
  v7[1] = 0;
  v8 = v7;
  Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], v5 >> 3);
  if (!Mutable)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Personalization/Eureka/BBUEURPersonalizationParameters.cpp", 0x8Cu, "Assertion failure(data)", v29, v30, v31, v32);
  }

  v10 = Mutable;
  MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
  if (v5 < 0x40)
  {
LABEL_7:
    v12 = 0;
    goto LABEL_8;
  }

  v12 = 0;
  v16 = v6 - 1;
  if (!((v6 - 1) >> 32))
  {
    v17 = (v6 - 1) + 1;
    if (MutableBytePtr >= this + v17 || this + v17 - v6 >= &MutableBytePtr[v6])
    {
      if (v5 >= 0x100)
      {
        v12 = v6 & 0x1FFFFFE0;
        v19 = (MutableBytePtr + 16);
        v20 = v12;
        do
        {
          v21 = this + v16;
          v22 = vrev64q_s8(*(v21 - 15));
          v23 = vrev64q_s8(*(v21 - 31));
          v19[-1] = vextq_s8(v22, v22, 8uLL);
          *v19 = vextq_s8(v23, v23, 8uLL);
          v19 += 2;
          v16 -= 32;
          v20 -= 32;
        }

        while (v20);
        if (v12 == v6)
        {
          goto LABEL_10;
        }

        if ((v6 & 0x18) == 0)
        {
          goto LABEL_8;
        }
      }

      else
      {
        v12 = 0;
      }

      v24 = v12;
      v12 = v6 & 0x1FFFFFF8;
      v25 = &MutableBytePtr[v24];
      v26 = v24 - v12;
      v27 = ~v24 + v6;
      do
      {
        *v25++ = vrev64_s8(*(this + v27 - 7));
        v27 -= 8;
        v26 += 8;
      }

      while (v26);
      if (v12 == v6)
      {
        goto LABEL_10;
      }

      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_8:
  v13 = v6 - v12;
  v14 = &MutableBytePtr[v12];
  v15 = ~v12 + v6;
  do
  {
    *v14++ = *(this + v15--);
    --v13;
  }

  while (v13);
LABEL_10:
  CFDataSetLength(v10, v5 >> 3);
  result = v8;
  *(v8 + 8) = v10;
  return result;
}

void BBUEURPersonalizationParameters::EURCertID::~EURCertID(BBUEURPersonalizationParameters::EURCertID *this)
{
  *this = &unk_1F5F04BC8;
  v1 = *(this + 1);
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  *this = &unk_1F5F04BC8;
  v2 = *(this + 1);
  if (v2)
  {
    CFRelease(v2);
  }

  operator delete(this);
}

const __CFData *BBUEURPersonalizationParameters::EURCertID::createFromPublicKeyHashData(const __CFData *this, const __CFData *a2)
{
  if (this)
  {
    v2 = this;
    BytePtr = CFDataGetBytePtr(this);
    if ((CFDataGetLength(v2) & 0xFFFFFFFCLL) != 0)
    {
      v4 = operator new(0x10uLL);
      *v4 = &unk_1F5F04BC8;
      v4[1] = 0;
      valuePtr = bswap32(*BytePtr);
      v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, &valuePtr);
      v4[1] = v5;
      if (!v5)
      {
        exception = __cxa_allocate_exception(0x210uLL);
        _BBUException::_BBUException(exception, 97, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Personalization/Eureka/BBUEURPersonalizationParameters.cpp", 0x104u, "Assertion failure(certID->fNumber && Failed to create certID from public key hash.)", v7, v8, v9, v10);
      }

      return v4;
    }

    else
    {
      return 0;
    }
  }

  return this;
}

uint64_t BBUEURPersonalizationParameters::EURCertID::getAsUnsigned(unsigned int **this, uint64_t a2, const __CFNumber *a3)
{
  v9 = -1431655766;
  if ((ctu::cf::assign(&v9, this[1], a3) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 97, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Personalization/Eureka/BBUEURPersonalizationParameters.cpp", 0x122u, "Assertion failure(success && Failed to create certID.)", v5, v6, v7, v8);
  }

  return v9;
}

void BBUEURPersonalizationParameters::EURChipID::~EURChipID(BBUEURPersonalizationParameters::EURChipID *this)
{
  *this = &unk_1F5F04BF8;
  v1 = *(this + 1);
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  *this = &unk_1F5F04BF8;
  v2 = *(this + 1);
  if (v2)
  {
    CFRelease(v2);
  }

  operator delete(this);
}

void *BBUEURPersonalizationParameters::EURChipID::createFromChipID(BBUEURPersonalizationParameters::EURChipID *this)
{
  v1 = this;
  v2 = operator new(0x10uLL);
  *v2 = &unk_1F5F04BF8;
  v2[1] = 0;
  valuePtr = v1;
  v3 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, &valuePtr);
  v2[1] = v3;
  if (!v3)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 98, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Personalization/Eureka/BBUEURPersonalizationParameters.cpp", 0x13Bu, "Assertion failure(chipID->fNumber && Failed to create certID.)", v6, v7, v8, v9);
  }

  return v2;
}

uint64_t BBUEURPersonalizationParameters::EURChipID::getAsUnsigned(unsigned int **this, uint64_t a2, const __CFNumber *a3)
{
  v9 = -1431655766;
  if ((ctu::cf::assign(&v9, this[1], a3) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 98, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Personalization/Eureka/BBUEURPersonalizationParameters.cpp", 0x156u, "Assertion failure(success && Failed to create chipID.)", v5, v6, v7, v8);
  }

  return v9;
}

void BBUEURPersonalizationParameters::EURKeyStatus::~EURKeyStatus(BBUEURPersonalizationParameters::EURKeyStatus *this)
{
  *this = &unk_1F5F04C28;
  v1 = *(this + 1);
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  *this = &unk_1F5F04C28;
  v2 = *(this + 1);
  if (v2)
  {
    CFRelease(v2);
  }

  operator delete(this);
}

void *BBUEURPersonalizationParameters::EURKeyStatus::createFromKeyStatus(BBUEURPersonalizationParameters::EURKeyStatus *this)
{
  v1 = this;
  v2 = operator new(0x10uLL);
  *v2 = &unk_1F5F04C28;
  v2[1] = 0;
  valuePtr = v1;
  v3 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, &valuePtr);
  v2[1] = v3;
  if (!v3)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 99, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Personalization/Eureka/BBUEURPersonalizationParameters.cpp", 0x16Fu, "Assertion failure(status->fNumber && Failed to create key status.)", v6, v7, v8, v9);
  }

  return v2;
}

uint64_t BBUEURPersonalizationParameters::EURKeyStatus::getAsUnsigned(unsigned int **this, uint64_t a2, const __CFNumber *a3)
{
  v9 = -1431655766;
  if ((ctu::cf::assign(&v9, this[1], a3) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 99, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Personalization/Eureka/BBUEURPersonalizationParameters.cpp", 0x184u, "Assertion failure(success && Failed to create key status.)", v5, v6, v7, v8);
  }

  return v9;
}

void BBUEURPersonalizationParameters::EURKeyHash::~EURKeyHash(BBUEURPersonalizationParameters::EURKeyHash *this)
{
  *this = &unk_1F5F04C58;
  v1 = *(this + 1);
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  *this = &unk_1F5F04C58;
  v2 = *(this + 1);
  if (v2)
  {
    CFRelease(v2);
  }

  operator delete(this);
}

void BBUEURPersonalizationParameters::EURPublicKeyHash::~EURPublicKeyHash(BBUEURPersonalizationParameters::EURPublicKeyHash *this)
{
  *this = &unk_1F5F04C88;
  v1 = *(this + 1);
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  *this = &unk_1F5F04C88;
  v2 = *(this + 1);
  if (v2)
  {
    CFRelease(v2);
  }

  operator delete(this);
}

BOOL BBUHashData::compareHash(BBUHashData *this, BBUFeedback *a2, const unsigned __int8 *a3, const unsigned __int8 *a4, const char *a5)
{
  v10 = (*(*this + 32))(this);
  v11 = memcmp(a3, a4, v10);
  if (!v11)
  {
    return v11 == 0;
  }

  BBUFeedback::handleComment(a2, "%s Hash mismatch", a5);
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
    {
      goto LABEL_4;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*gBBULogMaskGet(void)::sBBULogMask & 2) != 0)
    {
LABEL_4:
      if (gBBULogVerbosity >= 1)
      {
        _BBULog(1, 1, "BBUEUR2HashData", "", "%s Hash mismatch\n", v12, v13, v14, a5);
      }
    }
  }

  __p = 0;
  v18 = 0;
  v19 = 0;
  (*(*this + 32))(this);
  ctu::assign();
  BBUFeedback::handleComment(a2, "\t %s:  %s", "File    ", &__p);
  if (SHIBYTE(v19) < 0)
  {
    operator delete(__p);
  }

  __p = 0;
  v18 = 0;
  v19 = 0;
  (*(*this + 32))(this);
  ctu::assign();
  if (v19 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  BBUFeedback::handleComment(a2, "\t %s:  %s", "Manifest", p_p);
  if (SHIBYTE(v19) < 0)
  {
    operator delete(__p);
  }

  return v11 == 0;
}

void sub_1E533C898(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *BBUProgrammer::Item::createFromImage(int a1, char **a2)
{
  if ((a1 - 16391) >= 0x26)
  {
    if ((a1 - 20480) < 8)
    {
      v4 = operator new(0x38uLL);
      BBUICE16Programmer::ICE16Item::ICE16Item(v4, a1, a2);
    }

    else if ((a1 - 16385) >= 6)
    {
      if ((a1 - 0x2000) > 1)
      {
        exception = __cxa_allocate_exception(0x210uLL);
        _BBUException::_BBUException(exception, 85, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Protocol/Common/BBUProgrammer.cpp", 0xC9u, "Assertion failure(false && Unrecognized BBU programmer item.)", v7, v8, v9, v10);
      }

      v4 = operator new(0x18uLL);
      BBUEUR2Programmer::EUR2Item::EUR2Item(v4, a1, a2);
    }

    else
    {
      v4 = operator new(0x18uLL);
      BBUEUR4Programmer::EUR4Item::EUR4Item(v4, a1, a2);
    }
  }

  else
  {
    v4 = operator new(0x20uLL);
    BBUEUR10Programmer::EUR10Item::EUR10Item(v4, a1, a2);
  }

  return v4;
}

uint64_t BBUProgrammer::BBUProgrammer(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = &unk_1F5F04DD0;
  *(result + 8) = a2;
  *(result + 16) = a3;
  *(result + 24) = a4;
  *(result + 32) = 0;
  *(result + 40) = result + 40;
  *(result + 48) = result + 40;
  *(result + 56) = 0;
  *(result + 64) = 0;
  if (!a3)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 67, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Protocol/Common/BBUProgrammer.cpp", 0xD4u, "Assertion failure(transport && BBU telephony util transport error.)", v5, v6, v7, v8);
  }

  return result;
}

void sub_1E533CAF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t *a10)
{
  __cxa_free_exception(v10);
  std::list<BBUProgrammer::Item *>::~list(a10);
  _Unwind_Resume(a1);
}

void BBUProgrammer::~BBUProgrammer(BBUProgrammer *this)
{
  *this = &unk_1F5F04DD0;
  v2 = this + 40;
  for (i = *(this + 6); i != v2; i = *(i + 8))
  {
    v4 = *(i + 16);
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }
  }

  if (*(this + 7))
  {
    v5 = *(this + 6);
    v6 = *(*(this + 5) + 8);
    v7 = *v5;
    *(v7 + 8) = v6;
    *v6 = v7;
    *(this + 7) = 0;
    if (v5 != v2)
    {
      do
      {
        v8 = *(v5 + 1);
        operator delete(v5);
        v5 = v8;
      }

      while (v8 != v2);
    }
  }
}

uint64_t BBUProgrammer::addItemsFromList(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != a2)
  {
    v5 = a1 + 40;
    do
    {
      v6 = *(v2 + 16);
      if (!v6)
      {
        exception = __cxa_allocate_exception(0x210uLL);
        _BBUException::_BBUException(exception, 66, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Protocol/Common/BBUProgrammer.cpp", 0xE1u, "Assertion failure(item && Error: loading programmer items!)", v11, v12, v13, v14);
      }

      v7 = operator new(0x18uLL);
      v7[1] = v5;
      v7[2] = v6;
      v8 = *(a1 + 40);
      *v7 = v8;
      *(v8 + 8) = v7;
      *(a1 + 40) = v7;
      ++*(a1 + 56);
      v2 = *(v2 + 8);
    }

    while (v2 != a2);
  }

  return 0;
}

char *BBUProgrammer::create(capabilities::updater *a1, uint64_t a2, uint64_t a3)
{
  ProgrammerType = capabilities::updater::getProgrammerType(a1);
  if (ProgrammerType > 2)
  {
    if (ProgrammerType == 3)
    {
      v3 = operator new(0x198uLL);
      BBUICE18Programmer::BBUICE18Programmer(v3, a1, a2, a3);
      return v3;
    }

    if (ProgrammerType != 4)
    {
      if (ProgrammerType != 5)
      {
        return v3;
      }

      goto LABEL_13;
    }
  }

  else if (ProgrammerType != 1)
  {
    if (ProgrammerType == 2)
    {
      v3 = operator new(0x140uLL);
      BBUICEProgrammer::BBUICEProgrammer(v3, a1, a2, a3);
      *v3 = &unk_1F5F04688;
      *(v3 + 81) = 0;
      v3[111] = 0;
      v3[88] = 0;
      *(v3 + 28) = 0;
      pthread_mutex_init((v3 + 120), 0);
      *(v3 + 46) = 0;
      *(v3 + 12) = 0u;
      *(v3 + 13) = 0u;
      *(v3 + 56) = 1065353216;
      *(v3 + 30) = 0;
      *(v3 + 31) = 0;
      *(v3 + 29) = 0;
      v3[279] = 3;
      strcpy(v3 + 256, "EBL");
      *(v3 + 280) = xmmword_1E5393C80;
      *(v3 + 308) = 0;
      *(v3 + 300) = 0;
      *(v3 + 74) = 257;
      return v3;
    }

    if (ProgrammerType)
    {
      return v3;
    }

LABEL_13:
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 87, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Protocol/Common/BBUProgrammer.cpp", 0x10Au, "Assertion failure(false && Unrecognized radio type.)", v12, v13, v14, v15);
  }

  v9 = operator new(0x1108uLL);
  BBUEUR2Programmer::BBUEUR2Programmer(v9, a1, a2, a3);
  v9[4327] = 0;
  *(v9 + 537) = 0;
  v9[4304] = 0;
  *v9 = &unk_1F5F02F98;
  *(v9 + 541) = 0;
  *(v9 + 543) = 0;
  *(v9 + 542) = 0;
  v10 = operator new(0x400uLL);
  *(v9 + 541) = v10;
  *(v9 + 543) = v10 + 1024;
  bzero(v10, 0x400uLL);
  *(v9 + 542) = v10 + 1024;
  *(v9 + 544) = v10;
  return v9;
}

void sub_1E533CEF4(_Unwind_Exception *a1)
{
  if (*(v1 + 111) < 0)
  {
    operator delete(*(v1 + 88));
  }

  BBUICEProgrammer::~BBUICEProgrammer(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_1E533CF58(_Unwind_Exception *a1)
{
  BBUEUR10Programmer::~BBUEUR10Programmer(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t *BBUProgrammer::addProgressBarTimes(uint64_t **this, BBUFeedback *a2)
{
  result = capabilities::updater::getProgrammerProgressBarTimesType(this);
  if (result == 2)
  {
    v6 = this + 2;
    v5 = this[2];
    if (v5)
    {
      while (1)
      {
        while (1)
        {
          v7 = v5;
          v8 = *(v5 + 32);
          if (v8 < 2)
          {
            break;
          }

          v5 = *v7;
          v6 = v7;
          if (!*v7)
          {
            goto LABEL_13;
          }
        }

        if (v8 == 1)
        {
          break;
        }

        v5 = *(v7 + 1);
        if (!v5)
        {
          v6 = v7 + 8;
          goto LABEL_13;
        }
      }
    }

    else
    {
      v7 = (this + 2);
LABEL_13:
      v9 = v7;
      v7 = operator new(0x30uLL);
      *(v7 + 8) = 1;
      *(v7 + 5) = 0;
      *v7 = 0;
      *(v7 + 1) = 0;
      *(v7 + 2) = v9;
      *v6 = v7;
      v10 = *this[1];
      if (v10)
      {
        this[1] = v10;
      }

      result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(this[2], v7);
      this[3] = (this[3] + 1);
    }

    *(v7 + 5) = 0x408F400000000000;
  }

  else
  {
    if (result != 1)
    {
      exception = __cxa_allocate_exception(0x210uLL);
      _BBUException::_BBUException(exception, 87, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Protocol/Common/BBUProgrammer.cpp", 0x11Eu, "Assertion failure(false && Unrecognized radio type.)", v12, v13, v14, v15);
    }

    return BBUEUR20Programmer::addProgressBarTimes(this, v4);
  }

  return result;
}

uint64_t BBUProgrammer::connect(BBUProgrammer *this)
{
  if (*(this + 32) == 1)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 74, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Protocol/Common/BBUProgrammer.cpp", 0x125u, "Assertion failure(!fConnected && Cannot finish connection, since BBU programmer is already (falsely) recognized as connected!)", v3, v4, v5, v6);
  }

  *(this + 32) = 1;
  return 0;
}

uint64_t BBUProgrammer::disconnect(BBUProgrammer *this)
{
  if ((*(this + 32) & 1) == 0)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 74, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Protocol/Common/BBUProgrammer.cpp", 0x12Eu, "Assertion failure(fConnected && Cannot finish disconnection, since BBU programmer is already (falsely) recognized as disconnected!)", v3, v4, v5, v6);
  }

  *(this + 32) = 0;
  return 0;
}

uint64_t BBUProgrammer::cmdCopyMei(BBUProgrammer *this, const __CFDictionary **a2)
{
  v17[4] = *MEMORY[0x1E69E9840];
  memset(v17, 170, 25);
  memset(&value[1], 170, 7);
  memset(v16, 170, 15);
  v4 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v6 = *(this + 2);
  if (ETLGSMGetIMEI() && ETLGSMMakeStringFromIMEI())
  {
    value[0] = 0xAAAAAAAAAAAAAAAALL;
    ctu::cf::convert_copy(value, v17, 0x8000100, v4, v7);
    CFDictionarySetValue(Mutable, @"imei", value[0]);
    CFRelease(value[0]);
    v8 = 1;
    v9 = *(this + 2);
    if (!ETLCDMAGetMEID())
    {
      goto LABEL_8;
    }
  }

  else
  {
    v8 = 0;
    v10 = *(this + 2);
    if (!ETLCDMAGetMEID())
    {
      goto LABEL_8;
    }
  }

  if (ETLCDMAMakeStringFromMEID())
  {
    value[0] = 0xAAAAAAAAAAAAAAAALL;
    ctu::cf::convert_copy(value, v16, 0x8000100, v4, v11);
    CFDictionarySetValue(Mutable, @"meid", value[0]);
    CFRelease(value[0]);
LABEL_9:
    result = 0;
    *a2 = Mutable;
    v13 = *MEMORY[0x1E69E9840];
    return result;
  }

LABEL_8:
  if (v8)
  {
    goto LABEL_9;
  }

  result = 1;
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t *std::list<BBUProgrammer::Item *>::~list(uint64_t *a1)
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

__int16 *DaleTransport_BootLogger::create@<X0>(__int16 *result@<X0>, void *a2@<X8>)
{
  v2 = result;
  *a2 = 0;
  a2[1] = 0;
  if (*(result + 1) == 1)
  {
    std::allocate_shared[abi:ne200100]<DaleTransport_BootLogger_PCIE,std::allocator<DaleTransport_BootLogger_PCIE>,DaleTransport_BootLogger::Parameters &,0>(result, v6);
    *a2 = *v6;
    ACFULogging::getLogInstance(v4);
    return ACFULogging::handleMessage();
  }

  if (*(result + 1))
  {
    return result;
  }

  if (BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS == -1)
  {
    if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS == -1)
    {
      goto LABEL_5;
    }

LABEL_10:
    dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS, &__block_literal_global_13);
    if (BBUpdaterCommon::inRestoreOS(void)::restoreOS)
    {
      goto LABEL_11;
    }

    goto LABEL_6;
  }

  dispatch_once(&BBUpdaterCommon::inRestoreOS(void)::sOnceRestoreOS, &__block_literal_global_7);
  if (BBUpdaterCommon::inRestoreOS(void)::sOnceRecoveryOS != -1)
  {
    goto LABEL_10;
  }

LABEL_5:
  if (BBUpdaterCommon::inRestoreOS(void)::restoreOS)
  {
LABEL_11:
    std::allocate_shared[abi:ne200100]<DaleTransport_BootLogger_UART,std::allocator<DaleTransport_BootLogger_UART>,DaleTransport_BootLogger::Parameters &,0>(v2, v6);
    *a2 = *v6;
    ACFULogging::getLogInstance(v5);
    return ACFULogging::handleMessage();
  }

LABEL_6:
  if (BBUpdaterCommon::inRestoreOS(void)::recoveryOS)
  {
    goto LABEL_11;
  }

  ACFULogging::getLogInstance(result);
  return ACFULogging::handleMessage();
}

uint64_t DaleTransport_BootLogger::DaleTransport_BootLogger(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F5F04E68;
  *(a1 + 8) = *a2;
  v3 = *(a2 + 8);
  *(a1 + 16) = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }

  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v6.__r_.__value_.__r.__words[0] = operator new(0x28uLL);
  *&v6.__r_.__value_.__r.__words[1] = xmmword_1E538EA40;
  strcpy(v6.__r_.__value_.__l.__data_, "com.apple.telephony.basebandservices");
  *(&__p.__r_.__value_.__s + 23) = 14;
  strcpy(&__p, "dale.transport");
  support::log::client::client((a1 + 64), &v6, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v6.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return a1;
    }
  }

  else if ((SHIBYTE(v6.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    return a1;
  }

  operator delete(v6.__r_.__value_.__l.__data_);
  return a1;
}

void sub_1E533D6A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a20 & 0x80000000) == 0)
    {
LABEL_3:
      v22 = *(v20 + 56);
      if (!v22)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }
  }

  else if ((a20 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a15);
  v22 = *(v20 + 56);
  if (!v22)
  {
    goto LABEL_9;
  }

LABEL_7:
  dispatch_group_leave(v22);
  v23 = *(v20 + 56);
  if (v23)
  {
    dispatch_release(v23);
  }

LABEL_9:
  std::function<void ()(unsigned char const*,long)>::~function(v20 + 24);
  v24 = *(v20 + 16);
  if (v24)
  {
    dispatch_release(v24);
  }

  _Unwind_Resume(a1);
}

void DaleTransport_BootLogger::~DaleTransport_BootLogger(DaleTransport_BootLogger *this)
{
  *this = &unk_1F5F04E68;
  *(this + 8) = &unk_1F5EFEF10;
  v2 = *(this + 16);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(this + 7);
  if (v3)
  {
    dispatch_group_leave(v3);
    v4 = *(this + 7);
    if (v4)
    {
      dispatch_release(v4);
    }
  }

  v5 = *(this + 6);
  if (v5 == (this + 24))
  {
    (*(*v5 + 32))(v5);
    v6 = *(this + 2);
    if (!v6)
    {
      return;
    }

    goto LABEL_11;
  }

  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  v6 = *(this + 2);
  if (v6)
  {
LABEL_11:
    dispatch_release(v6);
  }
}

void std::allocate_shared[abi:ne200100]<DaleTransport_BootLogger_UART,std::allocator<DaleTransport_BootLogger_UART>,DaleTransport_BootLogger::Parameters &,0>(__int16 *a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = operator new(0xB8uLL);
  v4[1] = 0;
  v4[2] = 0;
  *v4 = &unk_1F5F04EA8;
  v5 = (v4 + 3);
  v6 = *a1;
  v7 = *(a1 + 1);
  if (v7)
  {
    dispatch_retain(v7);
    dispatch_retain(v7);
  }

  v8 = v6;
  v9 = v7;
  DaleTransport_BootLogger::DaleTransport_BootLogger(v5, &v8);
  if (v7)
  {
    dispatch_release(v7);
    v4[3] = &unk_1F5F00DE0;
    v4[21] = 0;
    v4[22] = 0;
    dispatch_release(v7);
  }

  else
  {
    v4[3] = &unk_1F5F00DE0;
    v4[21] = 0;
    v4[22] = 0;
  }

  *a2 = v5;
  a2[1] = v4;
}

void sub_1E533D950(_Unwind_Exception *a1)
{
  if (v2)
  {
    dispatch_release(v2);
    dispatch_release(v2);
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v4);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<DaleTransport_BootLogger_UART>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5F04EA8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::allocate_shared[abi:ne200100]<DaleTransport_BootLogger_PCIE,std::allocator<DaleTransport_BootLogger_PCIE>,DaleTransport_BootLogger::Parameters &,0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = operator new(0x148uLL);
  v4->__shared_owners_ = 0;
  p_shared_owners = &v4->__shared_owners_;
  v4->__shared_weak_owners_ = 0;
  v4->__vftable = &unk_1F5F04EF8;
  v6 = &v4[1];
  v9 = *a1;
  v7 = *(a1 + 8);
  v10 = v7;
  if (v7)
  {
    dispatch_retain(v7);
  }

  DaleTransport_BootLogger_PCIE::DaleTransport_BootLogger_PCIE(v6, &v9);
  if (v7)
  {
    dispatch_release(v7);
  }

  *a2 = v6;
  a2[1] = v4;
  shared_owners = v4[7].__shared_owners_;
  if (shared_owners)
  {
    if (shared_owners->__shared_owners_ != -1)
    {
      return;
    }

    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v4[7].__vftable = v6;
    v4[7].__shared_owners_ = v4;
    std::__shared_weak_count::__release_weak(shared_owners);
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }
  }

  else
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v4[7].__vftable = v6;
    v4[7].__shared_owners_ = v4;
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      return;
    }
  }

  (v4->__on_zero_shared)(v4);

  std::__shared_weak_count::__release_weak(v4);
}

void sub_1E533DB68(_Unwind_Exception *a1)
{
  if (v2)
  {
    dispatch_release(v2);
  }

  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v4);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<DaleTransport_BootLogger_PCIE>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5F04EF8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t __cxx_global_var_init_34()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>::~PthreadMutexGuardPolicy, &ctu::Singleton<support::log::shared_stdio,support::log::shared_stdio,ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>>::sInstance, &dword_1E5234000);
  }

  return result;
}

void BBUEURMIImage::BBUEURMIImage(BBUEURMIImage *this, BBUDataSource *a2, uint64_t a3)
{
  *this = &unk_1F5F04F58;
  *(this + 1) = a2;
  *(this + 14) = a3;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  v3 = (this + 16);
  v42 = -1431655766;
  *(this + 6) = 0;
  if (!a2)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Images/Eureka/MultiImage/BBUEURMIImage.cpp", 0xCu, "Assertion failure(fDataSource)", v27, v28, v29, v36);
    goto LABEL_39;
  }

  if ((*(*a2 + 16))(a2, v3, 40, &v42, a3))
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 79, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Images/Eureka/MultiImage/BBUEURMIImage.cpp", 0xEu, "Assertion failure(( ret == kBBUReturnSuccess) && Failed to copy MI Image data.)", v30, v31, v32, v36);
    goto LABEL_39;
  }

  if (v42 != 40)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 79, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Images/Eureka/MultiImage/BBUEURMIImage.cpp", 0xFu, "Assertion failure(( amountCopied == sizeof( MIBootImageHeader)) && Copied data size mismatch: Failed to copy MI Image data.)", v33, v34, v35, v36);
LABEL_39:
  }

  if (*v3 <= 0xBu && ((1 << *v3) & 0xC04) != 0)
  {
    if (gBBULogMaskGet(void)::once == -1)
    {
      goto LABEL_9;
    }

LABEL_26:
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  *(this + 8) = (*(**(this + 1) + 24))(*(this + 1)) - 40;
  if (gBBULogMaskGet(void)::once != -1)
  {
    goto LABEL_26;
  }

LABEL_9:
  if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_10:
  if (gBBULogVerbosity >= 7)
  {
    v6 = (*(*this + 16))(this);
    v37 = *(this + 5);
    _BBULog(16, 7, v6, "", "Image ID: %u, Header version: %u\n", v7, v8, v9, *(this + 4));
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_13;
    }
  }

LABEL_12:
  if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_13:
  if (gBBULogVerbosity >= 7)
  {
    v10 = (*(*this + 16))(this);
    v38 = *(this + 7);
    _BBULog(16, 7, v10, "", "Image Flash Address: %u, Image RAM Address: %u\n", v11, v12, v13, *(this + 6));
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 1) == 0)
      {
        goto LABEL_18;
      }

      goto LABEL_16;
    }
  }

LABEL_15:
  if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_16:
  if (gBBULogVerbosity >= 7)
  {
    v14 = (*(*this + 16))(this);
    v39 = *(this + 9);
    _BBULog(16, 7, v14, "", "Image Size: %u, Code Size: %u\n", v15, v16, v17, *(this + 8));
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 1) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_19;
    }
  }

LABEL_18:
  if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_19:
  if (gBBULogVerbosity >= 7)
  {
    v18 = (*(*this + 16))(this);
    v40 = *(this + 11);
    _BBULog(16, 7, v18, "", "Signature Address: %u, Signature Size: %u\n", v19, v20, v21, *(this + 10));
    if (gBBULogMaskGet(void)::once != -1)
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 1) == 0)
      {
        return;
      }

      goto LABEL_22;
    }
  }

LABEL_21:
  if ((*(gBBULogMaskGet(void)::sBBULogMask + 2) & 1) == 0)
  {
    return;
  }

LABEL_22:
  if (gBBULogVerbosity >= 7)
  {
    v22 = (*(*this + 16))(this);
    v41 = *(this + 13);
    _BBULog(16, 7, v22, "", "Cert Chain Address: %u, Cert Chain Size: %up\n", v23, v24, v25, *(this + 12));
  }
}

void BBUEURMIImage::~BBUEURMIImage(BBUEURMIImage *this)
{
  *this = &unk_1F5F04F58;
  v1 = *(this + 1);
  if (v1)
  {
    (*(*v1 + 8))(*(this + 1));
  }
}

{
  *this = &unk_1F5F04F58;
  v2 = *(this + 1);
  if (v2)
  {
    v3 = this;
    (*(*v2 + 8))(*(this + 1));
    this = v3;
    v1 = vars8;
  }

  operator delete(this);
}

uint64_t BBUEURMIImage::getWritePayloadData(BBUEURMIImage *this, unsigned __int8 *a2, uint64_t a3, int a4)
{
  v19 = -1431655766;
  v5 = *(this + 1);
  if (!v5)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Images/Eureka/MultiImage/BBUEURMIImage.cpp", 0x35u, "Assertion failure(fDataSource)", v9, v10, v11, v18);
    goto LABEL_8;
  }

  v6 = a3;
  result = (*(*v5 + 16))(v5, a2, a3, &v19, (*(this + 14) + a4));
  if (result)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 79, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Images/Eureka/MultiImage/BBUEURMIImage.cpp", 0x37u, "Assertion failure(( ret == kBBUReturnSuccess) && Failed to copy MI Image data.)", v12, v13, v14, v18);
    goto LABEL_8;
  }

  if (v19 != v6)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 79, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Images/Eureka/MultiImage/BBUEURMIImage.cpp", 0x38u, "Assertion failure(( amountCopied == amount) && Copied data size mismatch: Failed to copy MI Image data.)", v15, v16, v17, v18);
LABEL_8:
  }

  return result;
}

FILE *fopen_file_func(int a1, char *__filename, char a3)
{
  v3 = a3 & 3;
  v4 = "r+b";
  v5 = "wb";
  if ((a3 & 8) == 0)
  {
    v5 = 0;
  }

  if ((a3 & 4) != 0)
  {
    LOBYTE(v6) = 1;
  }

  else
  {
    v6 = (a3 & 8) >> 3;
  }

  if ((a3 & 4) == 0)
  {
    v4 = v5;
  }

  if (v3 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = v6;
  }

  if (v3 == 1)
  {
    v8 = "rb";
  }

  else
  {
    v8 = v4;
  }

  if (__filename && (v7 & 1) != 0)
  {
    return fopen(__filename, v8);
  }

  else
  {
    return 0;
  }
}

uint64_t fseek_file_func(int a1, FILE *a2, uint64_t a3, unsigned int a4)
{
  if (a4 > 2)
  {
    return -1;
  }

  fseek(a2, a3, a4);
  return 0;
}

FILE *(**fill_fopen_filefunc(FILE *(**result)(int a1, char *__filename, char a3)))(int a1, char *__filename, char a3)
{
  *result = fopen_file_func;
  result[1] = fread_file_func;
  result[2] = fwrite_file_func;
  result[3] = ftell_file_func;
  result[4] = fseek_file_func;
  result[5] = fclose_file_func;
  result[6] = ferror_file_func;
  result[7] = 0;
  return result;
}

void BBUProfiler::BBUProfiler(BBUProfiler *this)
{
  *(this + 6) = 0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v3 = *this;
    *this = Mutable;
    if (v3)
    {
      CFRelease(v3);
    }
  }

  v4 = *(this + 1);
  v5 = *(this + 3);
  v6 = *(this + 2);
  if (v5 == v6)
  {
    v7 = 0;
  }

  else
  {
    v7 = ((v5 - v6) << 6) - 1;
  }

  v8 = *(this + 6);
  v9 = v8 + *(this + 5);
  if (v7 == v9)
  {
    std::deque<ctu::cf::CFSharedRef<__CFDictionary>>::__add_back_capacity(this + 8);
    v6 = *(this + 2);
    v8 = *(this + 6);
    v9 = v8 + *(this + 5);
  }

  v10 = *this;
  *(*(v6 + ((v9 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v9 & 0x1FF)) = *this;
  if (v10)
  {
    CFRetain(v10);
    v8 = *(this + 6);
  }

  *(this + 6) = v8 + 1;
}

void sub_1E533E600(_Unwind_Exception *a1)
{
  std::stack<ctu::cf::CFSharedRef<__CFDictionary>>::~stack((v1 + 1));
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(v1);
  _Unwind_Resume(a1);
}

void BBUProfiler::startStage(void *a1, uint64_t a2)
{
  v4 = a1[6] + a1[5] - 1;
  v5 = *(*(a1[2] + ((v4 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v4 & 0x1FF));
  if (v5)
  {
    CFRetain(v5);
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v14, *a2, *(a2 + 8));
  }

  else
  {
    v14 = *a2;
  }

  cf = 0;
  ctu::cf::convert_copy();
  v7 = cf;
  v15 = cf;
  cf = Mutable;
  if (Mutable)
  {
    CFRetain(Mutable);
    if (v7)
    {
      CFDictionaryAddValue(v5, v7, Mutable);
    }

    CFRelease(Mutable);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  v8 = *(a1 + 1);
  v9 = a1[3];
  v10 = a1[2];
  if (v9 == v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = ((v9 - v10) << 6) - 1;
  }

  v12 = a1[6];
  v13 = v12 + a1[5];
  if (v11 == v13)
  {
    std::deque<ctu::cf::CFSharedRef<__CFDictionary>>::__add_back_capacity((a1 + 1));
    v10 = a1[2];
    v12 = a1[6];
    v13 = v12 + a1[5];
  }

  *(*(v10 + ((v13 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v13 & 0x1FF)) = Mutable;
  if (Mutable)
  {
    CFRetain(Mutable);
    v12 = a1[6];
  }

  a1[6] = v12 + 1;
  *(&v14.__r_.__value_.__s + 23) = 5;
  strcpy(&v14, "start");
  BBUProfiler::markEvent(a1, &v14);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v5)
  {
    CFRelease(v5);
  }
}

void sub_1E533E804(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, int a19, __int16 a20, char a21, char a22)
{
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(&a9);
  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(&a10);
  _Unwind_Resume(a1);
}

void BBUProfiler::markEvent(void *a1, uint64_t a2)
{
  v3 = a1[6] + a1[5] - 1;
  v4 = *(*(a1[2] + ((v3 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v3 & 0x1FF));
  if (v4)
  {
    CFRetain(v4);
  }

  v5 = TelephonyUtilSystemMachTime();
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v10, *a2, *(a2 + 8));
  }

  else
  {
    v10 = *a2;
  }

  v6 = *MEMORY[0x1E695E480];
  v12 = 0;
  ctu::cf::convert_copy();
  v7 = v12;
  v11 = v12;
  valuePtr = v5;
  v8 = CFNumberCreate(v6, kCFNumberIntType, &valuePtr);
  v9 = v8;
  v12 = v8;
  if (v7 && v8)
  {
    CFDictionaryAddValue(v4, v7, v8);
  }

  else if (!v8)
  {
    goto LABEL_11;
  }

  CFRelease(v9);
LABEL_11:
  if (v7)
  {
    CFRelease(v7);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
    if (!v4)
    {
      return;
    }

    goto LABEL_17;
  }

  if (v4)
  {
LABEL_17:
    CFRelease(v4);
  }
}

void sub_1E533E9C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, const void *a17, const void *a18)
{
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a18);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(&a17);
  if (a16 < 0)
  {
    operator delete(__p);
    ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(&a10);
    _Unwind_Resume(a1);
  }

  ctu::cf::CFSharedRef<__CFDictionary>::~CFSharedRef(&a10);
  _Unwind_Resume(a1);
}

uint64_t BBUProfiler::endStage(BBUProfiler *this)
{
  v36 = 4;
  strcpy(v35, "stop");
  BBUProfiler::markEvent(this, v35);
  v2 = *(this + 2);
  v3 = *(this + 5) + *(this + 6) - 1;
  v35[0] = 0xAAAAAAAAAAAAAAAALL;
  v35[1] = 0xAAAAAAAAAAAAAAAALL;
  ctu::cf::dict_adapter::dict_adapter(v35, *(*(v2 + ((v3 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v3 & 0x1FF)));
  v34 = 0;
  ctu::cf::MakeCFString::MakeCFString(&v38, "stop");
  v4 = (*v35[0])(v35, v38);
  v5 = v4;
  if (v4)
  {
    v6 = CFGetTypeID(v4);
    if (v6 == CFNumberGetTypeID())
    {
      ctu::cf::assign((&v34 + 4), v5, v7);
    }

    CFRelease(v5);
  }

  MEMORY[0x1E6926590](&v38);
  ctu::cf::MakeCFString::MakeCFString(&v38, "start");
  v8 = (*v35[0])(v35, v38);
  v9 = v8;
  if (v8)
  {
    v10 = CFGetTypeID(v8);
    if (v10 == CFNumberGetTypeID())
    {
      ctu::cf::assign(&v34, v9, v11);
    }

    CFRelease(v9);
  }

  MEMORY[0x1E6926590](&v38);
  v12 = *(this + 6) + *(this + 5) - 1;
  v14 = v34;
  v13 = HIDWORD(v34);
  v15 = *MEMORY[0x1E695E480];
  v16 = *(*(*(this + 2) + ((v12 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v12 & 0x1FF));
  v38 = 0;
  ctu::cf::convert_copy(&v38, "delta", 0x8000100, v15, v17);
  v18 = v13 - v14;
  v19 = v38;
  v37 = v38;
  valuePtr = v18;
  v20 = CFNumberCreate(v15, kCFNumberIntType, &valuePtr);
  v21 = v20;
  v38 = v20;
  if (v19 && v20)
  {
    CFDictionaryAddValue(v16, v19, v20);
  }

  else if (!v20)
  {
    goto LABEL_14;
  }

  CFRelease(v21);
LABEL_14:
  if (v19)
  {
    CFRelease(v19);
  }

  v23 = *(this + 5);
  v22 = *(this + 6);
  v24 = v22 - 1;
  v25 = v22 - 1 + v23;
  v26 = *(this + 2);
  v27 = *(v26 + ((v25 >> 6) & 0x3FFFFFFFFFFFFF8));
  v28 = v25 & 0x1FF;
  v29 = *(v27 + 8 * v28);
  if (v29)
  {
    CFRetain(*(v27 + 8 * v28));
    v23 = *(this + 5);
    v22 = *(this + 6);
    v26 = *(this + 2);
    v24 = v22 - 1;
    v30 = *(*(v26 + (((v22 - 1 + v23) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v22 - 1 + v23) & 0x1FF));
    if (v30)
    {
      CFRelease(v30);
      v26 = *(this + 2);
      v23 = *(this + 5);
      v22 = *(this + 6);
      v24 = v22 - 1;
    }
  }

  v31 = *(this + 3);
  *(this + 6) = v24;
  if (v31 == v26)
  {
    v32 = 0;
  }

  else
  {
    v32 = ((v31 - v26) << 6) - 1;
  }

  if ((v32 - (v23 + v22) + 1) >= 0x400)
  {
    operator delete(*(v31 - 8));
    *(this + 3) -= 8;
  }

  if (v29)
  {
    CFRelease(v29);
  }

  return MEMORY[0x1E69265E0](v35);
}

void sub_1E533ED2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  va_copy(va2, va1);
  v8 = va_arg(va2, const void *);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va2);
  ctu::cf::ConvertToCFTypeRef::~ConvertToCFTypeRef(va1);
  MEMORY[0x1E69265E0](va);
  _Unwind_Resume(a1);
}

void sub_1E533ED68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  MEMORY[0x1E69265E0](va);
  _Unwind_Resume(a1);
}

void sub_1E533ED80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  MEMORY[0x1E6926590](va1);
  MEMORY[0x1E69265E0](va);
  _Unwind_Resume(a1);
}

BOOL BBUProfiler::exportToFile(CFTypeRef *a1, uint64_t a2)
{
  v3 = *a1;
  CFRetain(*a1);
  v13 = v3;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v15, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v15 = __p;
  }

  v14 = 0;
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v16, v15.__r_.__value_.__l.__data_, v15.__r_.__value_.__l.__size_);
  }

  else
  {
    v16 = v15;
  }

  v17 = 0;
  v4 = *MEMORY[0x1E695E480];
  if (ctu::cf::convert_copy())
  {
    v5 = v17;
  }

  else
  {
    v5 = 0;
  }

  if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    v12 = v5;
    if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

LABEL_20:
    operator delete(v15.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_21;
  }

  operator delete(v16.__r_.__value_.__l.__data_);
  v12 = v5;
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_20;
  }

LABEL_15:
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

LABEL_21:
  operator delete(__p.__r_.__value_.__l.__data_);
LABEL_16:
  v6 = CFURLCreateWithFileSystemPath(v4, v5, kCFURLPOSIXPathStyle, 0);
  v16.__r_.__value_.__r.__words[0] = v6;
  v7 = CFWriteStreamCreateWithFile(0, v6);
  v15.__r_.__value_.__r.__words[0] = v7;
  if (!CFWriteStreamOpen(v7))
  {
    v9 = 0;
    if (!v7)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

  v8 = CFPropertyListWrite(v3, v7, kCFPropertyListXMLFormat_v1_0, 0, 0);
  CFWriteStreamClose(v7);
  v9 = v8 != 0;
  if (v7)
  {
LABEL_23:
    CFRelease(v7);
  }

LABEL_24:
  if (v6)
  {
    CFRelease(v6);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  return v9;
}

void sub_1E533EF88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, int a16, const void *a17, const void *a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  ctu::cf::CFSharedRef<__CFString const>::~CFSharedRef(&a18);
  if (a24 < 0)
  {
    operator delete(__p);
    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:
      ctu::cf::CFSharedRef<void const>::~CFSharedRef(&a17);
      _Unwind_Resume(a1);
    }
  }

  else if ((a14 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a9);
  ctu::cf::CFSharedRef<void const>::~CFSharedRef(&a17);
  _Unwind_Resume(a1);
}

uint64_t std::stack<ctu::cf::CFSharedRef<__CFDictionary>>::~stack(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 == v2)
  {
    *(a1 + 40) = 0;
    v10 = 0;
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = &v2[v4 >> 9];
    v6 = *v5;
    v7 = (*v5 + 8 * (v4 & 0x1FF));
    v8 = *(v2 + (((*(a1 + 40) + v4) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((*(a1 + 40) + v4) & 0x1FF);
    if (v7 != v8)
    {
      do
      {
        if (*v7)
        {
          CFRelease(*v7);
          v6 = *v5;
        }

        if (++v7 - v6 == 4096)
        {
          v9 = v5[1];
          ++v5;
          v6 = v9;
          v7 = v9;
        }
      }

      while (v7 != v8);
      v2 = *(a1 + 8);
      v3 = *(a1 + 16);
    }

    *(a1 + 40) = 0;
    v10 = v3 - v2;
    if (v10 >= 3)
    {
      do
      {
        operator delete(*v2);
        v3 = *(a1 + 16);
        v2 = (*(a1 + 8) + 8);
        *(a1 + 8) = v2;
        v10 = v3 - v2;
      }

      while (v10 > 2);
    }
  }

  if (v10 == 1)
  {
    v11 = 256;
    goto LABEL_17;
  }

  if (v10 == 2)
  {
    v11 = 512;
LABEL_17:
    *(a1 + 32) = v11;
  }

  if (v2 != v3)
  {
    do
    {
      v12 = *v2++;
      operator delete(v12);
    }

    while (v2 != v3);
    v14 = *(a1 + 8);
    v13 = *(a1 + 16);
    if (v13 != v14)
    {
      *(a1 + 16) = v13 + ((v14 - v13 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::deque<ctu::cf::CFSharedRef<__CFDictionary>>::__add_back_capacity(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2 >= 0x200;
  v4 = v2 - 512;
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

void sub_1E533F61C(_Unwind_Exception *a1)
{
  operator delete(v2);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void BBULogKTLPrintDelegate(const char *a1, const char *a2, va_list a3)
{
  if (a1)
  {
    if (a2)
    {
      v5 = strnlen(a1, 0x400uLL);
      if (v5 - 1005 >= 0xFFFFFFFFFFFFFC00)
      {
        v6 = 1005 - v5;
        std::mutex::lock(&gLogLock);
        v7 = vsnprintf(gLogBuffer, v6, a2, a3);
        ACFULogging::getLogInstance(v7);
        ACFULogging::handleMessage();

        std::mutex::unlock(&gLogLock);
      }
    }
  }
}

{
  v30 = *MEMORY[0x1E69E9840];
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v28 = v5;
  v29 = v5;
  v26 = v5;
  v27 = v5;
  v24 = v5;
  v25 = v5;
  v22 = v5;
  v23 = v5;
  v20 = v5;
  v21 = v5;
  v18 = v5;
  v19 = v5;
  v16 = v5;
  v17 = v5;
  *__str = v5;
  v15 = v5;
  v13.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  *&v13.tv_usec = 0xAAAAAAAAAAAAAAAALL;
  gettimeofday(&v13, 0);
  vsnprintf(__str, 0x100uLL, a2, a3);
  if (gBBULogMaskGet(void)::once == -1)
  {
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    if ((*(gBBULogMaskGet(void)::sBBULogMask + 1) & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  if ((gBBULogVerbosity & 0x80000000) == 0)
  {
    _BBULogPlain(8, "%u.%03u: %s: %s", v6, v7, v8, v9, v10, v11, v13.tv_sec);
  }

LABEL_5:
  v12 = *MEMORY[0x1E69E9840];
}

void BBULogKTLPrintErrorDelegate(const char *a1, const char *a2, va_list a3)
{
  if (a1)
  {
    if (a2)
    {
      v5 = strnlen(a1, 0x400uLL);
      if (v5 - 1005 >= 0xFFFFFFFFFFFFFC00)
      {
        v6 = 1005 - v5;
        std::mutex::lock(&gLogLock);
        v7 = vsnprintf(gLogBuffer, v6, a2, a3);
        ACFULogging::getLogInstance(v7);
        ACFULogging::handleMessage();

        std::mutex::unlock(&gLogLock);
      }
    }
  }
}

{
  v30 = *MEMORY[0x1E69E9840];
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v28 = v5;
  v29 = v5;
  v26 = v5;
  v27 = v5;
  v24 = v5;
  v25 = v5;
  v22 = v5;
  v23 = v5;
  v20 = v5;
  v21 = v5;
  v18 = v5;
  v19 = v5;
  v16 = v5;
  v17 = v5;
  *__str = v5;
  v15 = v5;
  v13.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  *&v13.tv_usec = 0xAAAAAAAAAAAAAAAALL;
  gettimeofday(&v13, 0);
  vsnprintf(__str, 0x100uLL, a2, a3);
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
    _BBULogPlain(0, "%u.%03u: %s: %s", v6, v7, v8, v9, v10, v11, v13.tv_sec);
  }

LABEL_5:
  v12 = *MEMORY[0x1E69E9840];
}

void BBULogKTLPrintBinaryDelegate(ACFULogging *a1)
{
  ACFULogging::getLogInstance(a1);
  v1 = ACFULogging::handleMessage();
  ACFULogging::getLogInstance(v1);
  strcpy(__p, "BasebandUpdater:");
  ACFULogging::handleMessageBinary();
}

void sub_1E533F91C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t BBUEnvironment::validate(uint64_t a1, uint64_t a2)
{
  v49 = 10;
  strcpy(__p, "CommCenter");
  __size[0] = 0;
  if (sysctl(BBUEnvironment::isProcessLoaded(std::string const&)::kNames, 3u, 0, __size, 0, 0))
  {
    v34 = *__error();
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Support/BBUEnvironment.cpp", 0x24u, "first sysctl() failed with err = %d", v36, v37, v38, v34);
    goto LABEL_64;
  }

  v3 = malloc(__size[0]);
  if (!v3)
  {
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 11, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Support/BBUEnvironment.cpp", 0x2Au, "malloc failed for proc list", v39, v40, v41, v46);
    goto LABEL_64;
  }

  v4 = v3;
  if (sysctl(BBUEnvironment::isProcessLoaded(std::string const&)::kNames, 3u, v3, __size, 0, 0))
  {
    v42 = *__error();
    exception = __cxa_allocate_exception(0x210uLL);
    _BBUException::_BBUException(exception, 2, "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices/BBUpdater/Legacy/Framework/Support/BBUEnvironment.cpp", 0x32u, "second sysctl() failed with err = %d", v43, v44, v45, v42);
LABEL_64:
  }

  v8 = __size[0];
  v9 = ((__size[0] >> 3) * 0x329161F9ADD3C0CBuLL) >> 64;
  v10 = &unk_1ED949000;
  if (gBBULogMaskGet(void)::once == -1)
  {
    v11 = __size[0] / 0x288;
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
    v11 = v9 >> 4;
    if ((*gBBULogMaskGet(void)::sBBULogMask & 8) != 0)
    {
LABEL_6:
      if ((gBBULogVerbosity & 0x80000000) == 0)
      {
        _BBULog(3, 0, "BBUEnvironment", "", "There are %zu processes\n", v5, v6, v7, v11);
      }
    }
  }

  if (v8 <= 0x287)
  {
    free(v4);
    goto LABEL_54;
  }

  v47 = a2;
  v12 = 0;
  v13 = 1;
  do
  {
    v15 = &v4[648 * v12];
    memset(__size, 170, sizeof(__size));
    v16 = strlen(v15 + 243);
    if (v16 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v20 = v16;
    if (v16 >= 0x17)
    {
      v22 = v10;
      if ((v16 | 7) == 0x17)
      {
        v23 = 25;
      }

      else
      {
        v23 = (v16 | 7) + 1;
      }

      v21 = operator new(v23);
      __size[1] = v20;
      __size[2] = v23 | 0x8000000000000000;
      __size[0] = v21;
      v10 = v22;
LABEL_22:
      memcpy(v21, v15 + 243, v20);
      goto LABEL_23;
    }

    HIBYTE(__size[2]) = v16;
    v21 = __size;
    if (v16)
    {
      goto LABEL_22;
    }

LABEL_23:
    *(v21 + v20) = 0;
    if (v10[396] == -1)
    {
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_29;
      }
    }

    else
    {
      dispatch_once(&gBBULogMaskGet(void)::once, &__block_literal_global_7);
      if ((*gBBULogMaskGet(void)::sBBULogMask & 8) == 0)
      {
        goto LABEL_29;
      }
    }

    if ((gBBULogVerbosity & 0x80000000) == 0)
    {
      v24 = __size;
      if ((__size[2] & 0x8000000000000000) != 0)
      {
        LOBYTE(v24) = __size[0];
      }

      _BBULog(3, 0, "BBUEnvironment", "", "Checking against process %s\n", v17, v18, v19, v24);
    }

LABEL_29:
    v25 = SHIBYTE(__size[2]);
    if ((__size[2] & 0x8000000000000000) == 0)
    {
      v26 = HIBYTE(__size[2]);
    }

    else
    {
      v26 = __size[1];
    }

    v27 = v49;
    v28 = v49;
    if (v49 < 0)
    {
      v27 = __p[1];
    }

    if (v26 != v27)
    {
      v31 = 0;
      if ((SHIBYTE(__size[2]) & 0x80000000) == 0)
      {
        goto LABEL_10;
      }

LABEL_44:
      operator delete(__size[0]);
      goto LABEL_10;
    }

    if ((__size[2] & 0x8000000000000000) == 0)
    {
      v29 = __size;
    }

    else
    {
      v29 = __size[0];
    }

    if (v49 >= 0)
    {
      v30 = __p;
    }

    else
    {
      v30 = __p[0];
    }

    v31 = memcmp(v29, v30, v26) == 0;
    if (v25 < 0)
    {
      goto LABEL_44;
    }

LABEL_10:
    v12 = v13;
    v14 = v11 <= v13++ || v31;
  }

  while (v14 != 1);
  free(v4);
  a2 = v47;
  if (v28 < 0)
  {
    operator delete(__p[0]);
    if (!v31)
    {
      goto LABEL_54;
    }

LABEL_50:
    v32 = operator new(0x30uLL);
    strcpy(v32, "Process CommCenter is loaded, please unload it");
    if (*(v47 + 23) < 0)
    {
      operator delete(*v47);
    }

    result = 0;
    *v47 = v32;
    *(v47 + 8) = 46;
    *(v47 + 16) = 0x8000000000000030;
  }

  else
  {
    if (v31)
    {
      goto LABEL_50;
    }

LABEL_54:
    if (*(a2 + 23) < 0)
    {
      **a2 = 0;
      *(a2 + 8) = 0;
    }

    else
    {
      *a2 = 0;
      *(a2 + 23) = 0;
    }

    return 1;
  }

  return result;
}

void sub_1E533FE38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (v22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t bbufs::prepareDestination(bbufs *this, const char *a2)
{
  memset(v182, 170, 24);
  v3 = strlen(this);
  if (v3 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v4 = v3;
  if (v3 >= 0x17)
  {
    if ((v3 | 7) == 0x17)
    {
      v10 = 25;
    }

    else
    {
      v10 = (v3 | 7) + 1;
    }

    p_dst = operator new(v10);
    *(&__dst + 1) = v4;
    v181 = v10 | 0x8000000000000000;
    *&__dst = p_dst;
  }

  else
  {
    HIBYTE(v181) = v3;
    p_dst = &__dst;
    if (!v3)
    {
      LOBYTE(__dst) = 0;
      v6 = SHIBYTE(v181);
      if ((SHIBYTE(v181) & 0x8000000000000000) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_12;
    }
  }

  memcpy(p_dst, this, v4);
  *(p_dst + v4) = 0;
  v6 = SHIBYTE(v181);
  if ((SHIBYTE(v181) & 0x8000000000000000) == 0)
  {
LABEL_5:
    v7 = &__dst;
    if (v6 == 22)
    {
      v8 = 22;
      v9 = 23;
LABEL_15:
      v11 = 2 * v8;
      if (v9 > 2 * v8)
      {
        v11 = v9;
      }

      if ((v11 | 7) == 0x17)
      {
        v12 = 25;
      }

      else
      {
        v12 = (v11 | 7) + 1;
      }

      if (v11 >= 0x17)
      {
        v13 = v12;
      }

      else
      {
        v13 = 23;
      }

      v14 = v8 == 22;
      goto LABEL_24;
    }

LABEL_30:
    *(v7 + v6) = 47;
    v18 = v6 + 1;
    if (SHIBYTE(v181) < 0)
    {
      *(&__dst + 1) = v18;
    }

    else
    {
      HIBYTE(v181) = v18 & 0x7F;
    }

    v17 = v7 + v18;
    goto LABEL_34;
  }

LABEL_12:
  v6 = *(&__dst + 1);
  v9 = v181 & 0x7FFFFFFFFFFFFFFFLL;
  v8 = (v181 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v8 != *(&__dst + 1))
  {
    v7 = __dst;
    goto LABEL_30;
  }

  if (v9 == 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v7 = __dst;
  if (v8 < 0x3FFFFFFFFFFFFFF3)
  {
    goto LABEL_15;
  }

  v14 = 0;
  v13 = 0x7FFFFFFFFFFFFFF7;
LABEL_24:
  v15 = operator new(v13);
  v16 = v15;
  if (v8)
  {
    memmove(v15, v7, v8);
  }

  v16[v8] = 47;
  if (!v14)
  {
    operator delete(v7);
  }

  *(&__dst + 1) = v9;
  v181 = v13 | 0x8000000000000000;
  *&__dst = v16;
  v17 = &v16[v9];
LABEL_34:
  *v17 = 0;
  v182[0] = __dst;
  *&v182[1] = v181;
  v19 = kBBUFSServerBackupName;
  v20 = strlen(kBBUFSServerBackupName);
  if (v20 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v21 = v20;
  if (v20 >= 0x17)
  {
    if ((v20 | 7) == 0x17)
    {
      v27 = 25;
    }

    else
    {
      v27 = (v20 | 7) + 1;
    }

    v22 = operator new(v27);
    __p[1] = v21;
    __p[2] = (v27 | 0x8000000000000000);
    __p[0] = v22;
  }

  else
  {
    HIBYTE(__p[2]) = v20;
    v22 = __p;
    if (!v20)
    {
      LOBYTE(__p[0]) = 0;
      v23 = SHIBYTE(__p[2]);
      if ((SHIBYTE(__p[2]) & 0x8000000000000000) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_45;
    }
  }

  memmove(v22, v19, v21);
  *(v21 + v22) = 0;
  v23 = SHIBYTE(__p[2]);
  if ((SHIBYTE(__p[2]) & 0x8000000000000000) == 0)
  {
LABEL_38:
    v24 = __p;
    if (v23 == 22)
    {
      v25 = 22;
      v26 = 23;
LABEL_48:
      v28 = 2 * v25;
      if (v26 > 2 * v25)
      {
        v28 = v26;
      }

      if ((v28 | 7) == 0x17)
      {
        v29 = 25;
      }

      else
      {
        v29 = (v28 | 7) + 1;
      }

      if (v28 >= 0x17)
      {
        v30 = v29;
      }

      else
      {
        v30 = 23;
      }

      v31 = v25 == 22;
      goto LABEL_57;
    }

LABEL_63:
    *(v23 + v24) = 47;
    v35 = v23 + 1;
    if (SHIBYTE(__p[2]) < 0)
    {
      __p[1] = v35;
    }

    else
    {
      HIBYTE(__p[2]) = v35 & 0x7F;
    }

    v34 = &v35[v24];
    goto LABEL_67;
  }

LABEL_45:
  v23 = __p[1];
  v26 = __p[2] & 0x7FFFFFFFFFFFFFFFLL;
  v25 = (__p[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v25 != __p[1])
  {
    v24 = __p[0];
    goto LABEL_63;
  }

  if (v26 == 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v24 = __p[0];
  if (v25 < 0x3FFFFFFFFFFFFFF3)
  {
    goto LABEL_48;
  }

  v31 = 0;
  v30 = 0x7FFFFFFFFFFFFFF7;
LABEL_57:
  v32 = operator new(v30);
  v33 = v32;
  if (v25)
  {
    memmove(v32, v24, v25);
  }

  v33[v25] = 47;
  if (!v31)
  {
    operator delete(v24);
  }

  __p[1] = v26;
  __p[2] = (v30 | 0x8000000000000000);
  __p[0] = v33;
  v34 = &v33[v26];
LABEL_67:
  *v34 = 0;
  v181 = __p[2];
  __dst = *__p;
  v36 = SBYTE7(v182[1]);
  memset(__p, 170, sizeof(__p));
  if ((SBYTE7(v182[1]) & 0x80u) == 0)
  {
    v37 = BYTE7(v182[1]);
  }

  else
  {
    v37 = *(&v182[0] + 1);
  }

  v38 = SHIBYTE(v181);
  if (v181 >= 0)
  {
    v39 = HIBYTE(v181);
  }

  else
  {
    v39 = *(&__dst + 1);
  }

  v40 = v39 + v37;
  if (v39 + v37 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v40 <= 0x16)
  {
    memset(__p, 0, sizeof(__p));
    v42 = __p;
    HIBYTE(__p[2]) = v39 + v37;
    if (!v37)
    {
      goto LABEL_85;
    }

    goto LABEL_81;
  }

  if ((v40 | 7) == 0x17)
  {
    v41 = 25;
  }

  else
  {
    v41 = (v40 | 7) + 1;
  }

  v42 = operator new(v41);
  __p[1] = (v39 + v37);
  __p[2] = (v41 | 0x8000000000000000);
  __p[0] = v42;
  if (v37)
  {
LABEL_81:
    if (v36 >= 0)
    {
      v43 = v182;
    }

    else
    {
      v43 = *&v182[0];
    }

    memmove(v42, v43, v37);
  }

LABEL_85:
  v44 = &v42[v37];
  if (v39)
  {
    if (v38 >= 0)
    {
      v45 = &__dst;
    }

    else
    {
      v45 = __dst;
    }

    memmove(v44, v45, v39);
  }

  v44[v39] = 0;
  v46 = strlen(this);
  if (v46 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v53 = v46;
  if (v46 >= 0x17)
  {
    if ((v46 | 7) == 0x17)
    {
      v75 = 25;
    }

    else
    {
      v75 = (v46 | 7) + 1;
    }

    v54 = operator new(v75);
    v177 = v53;
    v178 = v75 | 0x8000000000000000;
    v176 = v54;
  }

  else
  {
    HIBYTE(v178) = v46;
    v54 = &v176;
    if (!v46)
    {
      LOBYTE(v176) = 0;
      v55 = SHIBYTE(v178);
      if ((SHIBYTE(v178) & 0x80000000) == 0)
      {
        goto LABEL_94;
      }

      goto LABEL_108;
    }
  }

  memcpy(v54, this, v53);
  *(v54 + v53) = 0;
  v55 = SHIBYTE(v178);
  if ((SHIBYTE(v178) & 0x80000000) == 0)
  {
LABEL_94:
    if (v55)
    {
      goto LABEL_95;
    }

LABEL_109:
    v77 = "invalid path pointer to create directory\n";
LABEL_111:
    _BBUFSDebugPrint("prepareDestination", v77, v47, v48, v49, v50, v51, v52, v170);
    goto LABEL_112;
  }

LABEL_108:
  v76 = v177;
  operator delete(v176);
  if (!v76)
  {
    goto LABEL_109;
  }

LABEL_95:
  if ((ctu::fs::create_directory() & 1) == 0)
  {
    v77 = "failed creating directory\n";
    goto LABEL_111;
  }

  v56 = getpwnam("_wireless");
  if (!v56)
  {
    v80 = "failed to get uid and gid information for _wireless\n";
    _BBUFSDebugPrint("getWirelessID", "failed to get uid and gid information for _wireless\n", v57, v58, v59, v60, v61, v62, v170);
LABEL_130:
    _BBUFSDebugPrint("prepareDestination", v80, v81, v82, v83, v84, v85, v86, v170);
    goto LABEL_112;
  }

  pw_uid = v56->pw_uid;
  pw_gid = v56->pw_gid;
  if ((SBYTE7(v182[1]) & 0x80u) == 0)
  {
    v65 = v182;
  }

  else
  {
    v65 = *&v182[0];
  }

  if (chown(v65, pw_uid, pw_gid))
  {
    v66 = __error();
    v67 = strerror(*v66);
    v74 = "failed changing owner of bbfs directory:  %s\n";
LABEL_102:
    _BBUFSDebugPrint("prepareDestination", v74, v68, v69, v70, v71, v72, v73, v67);
LABEL_112:
    v78 = 0;
    goto LABEL_113;
  }

  if ((ctu::fs::create_directory() & 1) == 0)
  {
    v80 = "failed creating backup directory\n";
    goto LABEL_130;
  }

  if (SHIBYTE(__p[2]) >= 0)
  {
    v87 = __p;
  }

  else
  {
    v87 = __p[0];
  }

  if (chown(v87, pw_uid, pw_gid))
  {
    v88 = __error();
    v67 = strerror(*v88);
    v74 = "failed changing owner of bbfs backup directory:  %s\n";
    goto LABEL_102;
  }

  v176 = 0;
  v177 = 0;
  v178 = 0;
  folder = ctu::fs::read_folder();
  if ((folder & 1) == 0)
  {
    _BBUFSDebugPrint("prepareDestination", "failed reading backup directory\n", v90, v91, v92, v93, v94, v95, v170);
    v78 = 0;
LABEL_146:
    v109 = v176;
    if (!v176)
    {
      goto LABEL_113;
    }

LABEL_147:
    v110 = v177;
    v111 = v109;
    if (v177 != v109)
    {
      do
      {
        v112 = *(v110 - 1);
        v110 -= 3;
        if (v112 < 0)
        {
          operator delete(*v110);
        }
      }

      while (v110 != v109);
      v111 = v176;
    }

    v177 = v109;
    operator delete(v111);
    goto LABEL_113;
  }

  if (capabilities::radio::vendor(folder) != 2)
  {
    goto LABEL_167;
  }

  v102 = v176;
  if (v176 == v177)
  {
    goto LABEL_168;
  }

  v103 = v176;
  while (1)
  {
    v107 = *(v103 + 23);
    if (v107 < 0)
    {
      break;
    }

    v108 = v103;
    if (v107 == 10)
    {
      goto LABEL_135;
    }

LABEL_139:
    v103 += 3;
    if (v103 == v177)
    {
      goto LABEL_168;
    }
  }

  if (v103[1] != 10)
  {
    goto LABEL_139;
  }

  v108 = *v103;
LABEL_135:
  v104 = *v108;
  v105 = *(v108 + 4);
  if (v104 != 0x6E2E636974617473 || v105 != 28022)
  {
    goto LABEL_139;
  }

  if (v103 == v177)
  {
    goto LABEL_168;
  }

  while (2)
  {
    v116 = *(v102 + 23);
    if (v116 < 0)
    {
      if (v102[1] != 11)
      {
        goto LABEL_160;
      }

      v117 = *v102;
    }

    else
    {
      v117 = v102;
      if (v116 != 11)
      {
        goto LABEL_160;
      }
    }

    v113 = *v117;
    v114 = *(v117 + 3);
    if (v113 != 0x2E63696D616E7964 || v114 != 0x6D766E2E63696D61)
    {
LABEL_160:
      v102 += 3;
      if (v102 == v177)
      {
        goto LABEL_168;
      }

      continue;
    }

    break;
  }

  if (v102 != v177)
  {
LABEL_167:
    v118 = 1;
    goto LABEL_169;
  }

LABEL_168:
  _BBUFSDebugPrint("prepareDestination", "both files not present in backup, removing backup files\n", v96, v97, v98, v99, v100, v101, v170);
  v118 = 0;
LABEL_169:
  _BBUFSDebugPrint("prepareDestination", "FSInit: restore_files=%d\n", v96, v97, v98, v99, v100, v101, v118);
  v109 = v176;
  v172 = v177;
  if (v176 != v177)
  {
    v125 = (v176 + 24);
    v78 = 1;
    v171 = v118;
    while (1)
    {
      memset(&v175, 170, sizeof(v175));
      if (*(v125 - 1) < 0)
      {
        std::string::__init_copy_ctor_external(&v175, *(v125 - 3), *(v125 - 2));
      }

      else
      {
        v127 = *(v125 - 3);
        v175.__r_.__value_.__r.__words[2] = *(v125 - 1);
        *&v175.__r_.__value_.__l.__data_ = v127;
      }

      memset(v174, 170, sizeof(v174));
      v128 = SHIBYTE(__p[2]);
      if (SHIBYTE(__p[2]) >= 0)
      {
        v129 = HIBYTE(__p[2]);
      }

      else
      {
        v129 = __p[1];
      }

      v130 = SHIBYTE(v175.__r_.__value_.__r.__words[2]);
      if ((v175.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v175.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v175.__r_.__value_.__l.__size_;
      }

      v132 = size + v129;
      if (size + v129 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v132 <= 0x16)
      {
        break;
      }

      if ((v132 | 7) == 0x17)
      {
        v133 = 25;
      }

      else
      {
        v133 = (v132 | 7) + 1;
      }

      v134 = operator new(v133);
      v174[1] = (size + v129);
      v174[2] = (v133 | 0x8000000000000000);
      v174[0] = v134;
      v118 = v171;
      if (v129)
      {
        goto LABEL_193;
      }

LABEL_197:
      v136 = &v134[v129];
      if (size)
      {
        if (v130 >= 0)
        {
          v137 = &v175;
        }

        else
        {
          v137 = v175.__r_.__value_.__r.__words[0];
        }

        memmove(v136, v137, size);
      }

      v136[size] = 0;
      memset(v173, 170, sizeof(v173));
      v138 = SBYTE7(v182[1]);
      if ((SBYTE7(v182[1]) & 0x80u) == 0)
      {
        v139 = BYTE7(v182[1]);
      }

      else
      {
        v139 = *(&v182[0] + 1);
      }

      v140 = v139 + size;
      if (v139 + size > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v140 <= 0x16)
      {
        memset(v173, 0, sizeof(v173));
        v142 = v173;
        HIBYTE(v173[2]) = v139 + size;
        if (!v139)
        {
          goto LABEL_217;
        }

LABEL_213:
        if (v138 >= 0)
        {
          v143 = v182;
        }

        else
        {
          v143 = *&v182[0];
        }

        memmove(v142, v143, v139);
        goto LABEL_217;
      }

      if ((v140 | 7) == 0x17)
      {
        v141 = 25;
      }

      else
      {
        v141 = (v140 | 7) + 1;
      }

      v142 = operator new(v141);
      v173[1] = (v139 + size);
      v173[2] = (v141 | 0x8000000000000000);
      v173[0] = v142;
      v118 = v171;
      if (v139)
      {
        goto LABEL_213;
      }

LABEL_217:
      v144 = &v142[v139];
      if (v130 >= 0)
      {
        v145 = &v175;
      }

      else
      {
        v145 = v175.__r_.__value_.__r.__words[0];
      }

      if (size)
      {
        memmove(v144, v145, size);
      }

      v144[size] = 0;
      if (v118)
      {
        _BBUFSDebugPrint("prepareDestination", "%s backup present, restoring\n", v119, v120, v121, v122, v123, v124, v145);
        v147 = v174;
        if (SHIBYTE(v174[2]) >= 0)
        {
          v148 = v174;
        }

        else
        {
          v148 = v174[0];
        }

        if (SHIBYTE(v173[2]) >= 0)
        {
          v149 = v173;
        }

        else
        {
          v149 = v173[0];
        }

        rename(v148, v149, v146);
        if (v150 < 0)
        {
          if (SHIBYTE(v174[2]) < 0)
          {
            LOBYTE(v147) = v174[0];
          }

          v151 = __error();
          strerror(*v151);
          _BBUFSDebugPrint("prepareDestination", "failed restoring %s to %s:  %s\n", v152, v153, v154, v155, v156, v157, v147);
          goto LABEL_249;
        }
      }

      else
      {
        _BBUFSDebugPrint("prepareDestination", "%s backup present, but rule is to delete it\n", v119, v120, v121, v122, v123, v124, v145);
        v159 = v174;
        if (SHIBYTE(v174[2]) >= 0)
        {
          v160 = v174;
        }

        else
        {
          v160 = v174[0];
        }

        if (remove(v160, v158) < 0)
        {
          if (SHIBYTE(v174[2]) < 0)
          {
            LOBYTE(v159) = v174[0];
          }

          v163 = __error();
          strerror(*v163);
          _BBUFSDebugPrint("prepareDestination", "failed removing %s:  %s\n", v164, v165, v166, v167, v168, v169, v159);
LABEL_249:
          v78 = 0;
          v161 = 1;
          if ((SHIBYTE(v173[2]) & 0x80000000) == 0)
          {
            goto LABEL_239;
          }

LABEL_238:
          operator delete(v173[0]);
          goto LABEL_239;
        }
      }

      v161 = 0;
      if (SHIBYTE(v173[2]) < 0)
      {
        goto LABEL_238;
      }

LABEL_239:
      if (SHIBYTE(v174[2]) < 0)
      {
        operator delete(v174[0]);
        if ((SHIBYTE(v175.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_172;
        }

LABEL_241:
        operator delete(v175.__r_.__value_.__l.__data_);
        if (v125 == v172)
        {
          v162 = 1;
        }

        else
        {
          v162 = v161;
        }

        v125 += 3;
        if (v162)
        {
          goto LABEL_146;
        }
      }

      else
      {
        if (SHIBYTE(v175.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_241;
        }

LABEL_172:
        if (v125 == v172)
        {
          v126 = 1;
        }

        else
        {
          v126 = v161;
        }

        v125 += 3;
        if (v126)
        {
          goto LABEL_146;
        }
      }
    }

    memset(v174, 0, sizeof(v174));
    v134 = v174;
    HIBYTE(v174[2]) = size + v129;
    if (!v129)
    {
      goto LABEL_197;
    }

LABEL_193:
    if (v128 >= 0)
    {
      v135 = __p;
    }

    else
    {
      v135 = __p[0];
    }

    memmove(v134, v135, v129);
    goto LABEL_197;
  }

  v78 = 1;
  if (v176)
  {
    goto LABEL_147;
  }

LABEL_113:
  if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v181) & 0x80000000) == 0)
    {
      goto LABEL_115;
    }

LABEL_118:
    operator delete(__dst);
    if ((SBYTE7(v182[1]) & 0x80000000) == 0)
    {
      return v78 & 1;
    }

LABEL_119:
    operator delete(*&v182[0]);
    return v78 & 1;
  }

  operator delete(__p[0]);
  if (SHIBYTE(v181) < 0)
  {
    goto LABEL_118;
  }

LABEL_115:
  if (SBYTE7(v182[1]) < 0)
  {
    goto LABEL_119;
  }

  return v78 & 1;
}

void sub_1E5340A50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void **a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  std::vector<std::string>::~vector[abi:ne200100](&a34);
  if (a42 < 0)
  {
    operator delete(__p);
  }

  if (*(v42 - 121) < 0)
  {
    operator delete(*(v42 - 144));
  }

  if (*(v42 - 89) < 0)
  {
    operator delete(*(v42 - 112));
  }

  _Unwind_Resume(a1);
}

void bbufs::createDirectoryWithTimestamp(const void **a1@<X0>, std::string *a2@<X8>)
{
  v135 = *MEMORY[0x1E69E9840];
  v134 = -21846;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v132 = v4;
  v133 = v4;
  *__s = v4;
  v130 = time(0);
  v5 = localtime(&v130);
  strftime(__s, 0x32uLL, "%Y-%m-%d-%H-%M-%S", v5);
  memset(a2, 170, sizeof(std::string));
  v6 = *(a1 + 23);
  if (v6 >= 0)
  {
    v7 = *(a1 + 23);
  }

  else
  {
    v7 = a1[1];
  }

  if (!v7)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    a2->__r_.__value_.__r.__words[0] = 0;
    a2->__r_.__value_.__l.__size_ = 0;
    a2->__r_.__value_.__r.__words[2] = 0;
    goto LABEL_59;
  }

  v8 = v7 + 7;
  if (v7 + 7 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v8 <= 0x16)
  {
    memset(&v128, 0, sizeof(v128));
    v10 = &v128;
    *(&v128.__r_.__value_.__s + 23) = v7 + 7;
  }

  else
  {
    if ((v8 | 7) == 0x17)
    {
      v9 = 25;
    }

    else
    {
      v9 = (v8 | 7) + 1;
    }

    v10 = operator new(v9);
    v128.__r_.__value_.__l.__size_ = v7 + 7;
    v128.__r_.__value_.__r.__words[2] = v9 | 0x8000000000000000;
    v128.__r_.__value_.__r.__words[0] = v10;
  }

  v14 = *a1;
  if (v6 >= 0)
  {
    v15 = a1;
  }

  else
  {
    v15 = *a1;
  }

  memmove(v10, v15, v7);
  strcpy(v10 + v7, "bbulog-");
  v16 = strlen(__s);
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

    p_dst = operator new(v19);
    v126 = v17;
    v127 = v19 | 0x8000000000000000;
    __dst = p_dst;
    goto LABEL_24;
  }

  HIBYTE(v127) = v16;
  p_dst = &__dst;
  if (v16)
  {
LABEL_24:
    memcpy(p_dst, __s, v17);
  }

  *(p_dst + v17) = 0;
  if (v127 >= 0)
  {
    v20 = &__dst;
  }

  else
  {
    v20 = __dst;
  }

  if (v127 >= 0)
  {
    v21 = HIBYTE(v127);
  }

  else
  {
    v21 = v126;
  }

  v22 = std::string::append(&v128, v20, v21);
  v23 = *&v22->__r_.__value_.__l.__data_;
  v129.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
  *&v129.__r_.__value_.__l.__data_ = v23;
  v22->__r_.__value_.__l.__size_ = 0;
  v22->__r_.__value_.__r.__words[2] = 0;
  v22->__r_.__value_.__r.__words[0] = 0;
  size = SHIBYTE(v129.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(v129.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
  {
    v25 = &v129;
    if (SHIBYTE(v129.__r_.__value_.__r.__words[2]) == 22)
    {
      v26 = 22;
      v27 = 23;
LABEL_37:
      v28 = 2 * v26;
      if (v27 > 2 * v26)
      {
        v28 = v27;
      }

      if ((v28 | 7) == 0x17)
      {
        v29 = 25;
      }

      else
      {
        v29 = (v28 | 7) + 1;
      }

      if (v28 >= 0x17)
      {
        v30 = v29;
      }

      else
      {
        v30 = 23;
      }

      v31 = v26 == 22;
      goto LABEL_46;
    }

LABEL_52:
    v25->__r_.__value_.__s.__data_[size] = 47;
    v35 = size + 1;
    if (SHIBYTE(v129.__r_.__value_.__r.__words[2]) < 0)
    {
      v129.__r_.__value_.__l.__size_ = v35;
    }

    else
    {
      *(&v129.__r_.__value_.__s + 23) = v35 & 0x7F;
    }

    v34 = v25 + v35;
    goto LABEL_56;
  }

  size = v129.__r_.__value_.__l.__size_;
  v27 = v129.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL;
  v26 = (v129.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v26 != v129.__r_.__value_.__l.__size_)
  {
    v25 = v129.__r_.__value_.__r.__words[0];
    goto LABEL_52;
  }

  if (v27 == 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v25 = v129.__r_.__value_.__r.__words[0];
  if (v26 <= 0x3FFFFFFFFFFFFFF2)
  {
    goto LABEL_37;
  }

  v31 = 0;
  v30 = 0x7FFFFFFFFFFFFFF7;
LABEL_46:
  v32 = operator new(v30);
  v33 = v32;
  if (v26)
  {
    memmove(v32, v25, v26);
  }

  *(v33 + v26) = 47;
  if (!v31)
  {
    operator delete(v25);
  }

  v129.__r_.__value_.__l.__size_ = v27;
  v129.__r_.__value_.__r.__words[2] = v30 | 0x8000000000000000;
  v129.__r_.__value_.__r.__words[0] = v33;
  v34 = (v33 + v27);
LABEL_56:
  *v34 = 0;
  *a2 = v129;
  memset(&v129, 0, sizeof(v129));
  if (SHIBYTE(v127) < 0)
  {
    operator delete(__dst);
    if ((SHIBYTE(v128.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_58;
    }

LABEL_171:
    operator delete(v128.__r_.__value_.__l.__data_);
    goto LABEL_58;
  }

  if (SHIBYTE(v128.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_171;
  }

LABEL_58:
  v13 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  v12 = a2->__r_.__value_.__r.__words[0];
  v11 = a2->__r_.__value_.__l.__size_;
LABEL_59:
  memset(&v129, 0, sizeof(v129));
  memset(&v128, 0, sizeof(v128));
  if ((v13 & 0x80u) == 0)
  {
    v36 = a2;
  }

  else
  {
    v36 = v12;
  }

  if ((v13 & 0x80u) == 0)
  {
    v37 = v13;
  }

  else
  {
    v37 = v11;
  }

  v38 = v36 + v37;
  if (v37 >= 9)
  {
    v39 = v37;
    v40 = v36;
    do
    {
      v41 = memchr(v40, 47, v39 - 8);
      if (!v41)
      {
        break;
      }

      if (*v41 == 0x73656C657269772FLL && v41[8] == 115)
      {
        goto LABEL_74;
      }

      v40 = (v41 + 1);
      v39 = v38 - v40;
    }

    while (v38 - v40 > 8);
  }

  v41 = v36 + v37;
LABEL_74:
  if (v41 == v38)
  {
    v43 = -1;
  }

  else
  {
    v43 = v41 - v36;
  }

  v126 = 0xAAAAAAAAAAAAAAAALL;
  v127 = 0xAAAAAAAAAAAAAAAALL;
  if (v37 >= v43)
  {
    v37 = v43;
  }

  __dst = 0xAAAAAAAAAAAAAAAALL;
  if (v37 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v37 >= 0x17)
  {
    if ((v37 | 7) == 0x17)
    {
      v49 = 25;
    }

    else
    {
      v49 = (v37 | 7) + 1;
    }

    v44 = operator new(v49);
    v126 = v37;
    v127 = v49 | 0x8000000000000000;
    __dst = v44;
  }

  else
  {
    HIBYTE(v127) = v37;
    v44 = &__dst;
    if (!v37)
    {
      LOBYTE(__dst) = 0;
      memset(v124, 170, sizeof(v124));
      v45 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
      if ((v45 & 0x8000000000000000) == 0)
      {
        goto LABEL_83;
      }

      goto LABEL_93;
    }
  }

  memmove(v44, v36, v37);
  *(v44 + v37) = 0;
  memset(v124, 170, sizeof(v124));
  v45 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  if ((v45 & 0x8000000000000000) == 0)
  {
LABEL_83:
    v46 = a2;
    if (v43 <= v45)
    {
      v47 = v45 - v43;
      if (v45 - v43 <= 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_85;
      }

LABEL_95:
      std::string::__throw_length_error[abi:ne200100]();
    }

LABEL_198:
    std::string::__throw_out_of_range[abi:ne200100]();
  }

LABEL_93:
  v45 = a2->__r_.__value_.__l.__size_;
  if (v45 < v43)
  {
    goto LABEL_198;
  }

  v46 = a2->__r_.__value_.__r.__words[0];
  v47 = v45 - v43;
  if (v45 - v43 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_95;
  }

LABEL_85:
  if (v47 >= 0x17)
  {
    if ((v47 | 7) == 0x17)
    {
      v50 = 25;
    }

    else
    {
      v50 = (v47 | 7) + 1;
    }

    v48 = operator new(v50);
    v124[1] = v47;
    v124[2] = (v50 | 0x8000000000000000);
    v124[0] = v48;
    goto LABEL_100;
  }

  HIBYTE(v124[2]) = v47;
  v48 = v124;
  if (v45 != v43)
  {
LABEL_100:
    memmove(v48, v46 + v43, v47);
  }

  *(v48 + v47) = 0;
  memset(&__p[1], 170, sizeof(std::string));
  ctu::tokenize();
  v57 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  if (v57 >= 0)
  {
    v58 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  }

  else
  {
    v58 = a2->__r_.__value_.__l.__size_;
  }

  if (!v58)
  {
    _BBUFSDebugPrint("createDirectoryWithTimestamp", "Invalid directory path\n", v51, v52, v53, v54, v55, v56, v117);
    goto LABEL_176;
  }

  if (v57 < 0)
  {
    v59 = a2->__r_.__value_.__r.__words[0];
  }

  if ((ctu::fs::create_directory() & 1) == 0)
  {
    _BBUFSDebugPrint("createDirectoryWithTimestamp", "Failed to create the directory\n", v60, v61, v62, v63, v64, v65, v117);
    goto LABEL_173;
  }

  v66 = getpwnam("_wireless");
  if (!v66)
  {
    _BBUFSDebugPrint("getWirelessID", "failed to get uid and gid information for _wireless\n", v67, v68, v69, v70, v71, v72, v117);
    _BBUFSDebugPrint("createDirectoryWithTimestamp", "Failed to get directory ownership information for _wireless\n", v106, v107, v108, v109, v110, v111, v117);
LABEL_173:
    if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
    {
      *a2->__r_.__value_.__l.__data_ = 0;
      a2->__r_.__value_.__l.__size_ = 0;
    }

    else
    {
      a2->__r_.__value_.__s.__data_[0] = 0;
      *(&a2->__r_.__value_.__s + 23) = 0;
    }

    goto LABEL_176;
  }

  data = __p[1].__r_.__value_.__l.__data_;
  if (__p[1].__r_.__value_.__l.__size_ == __p[1].__r_.__value_.__r.__words[0])
  {
    goto LABEL_177;
  }

  v74 = 0;
  if (v127 >= 0)
  {
    v75 = HIBYTE(v127);
  }

  else
  {
    v75 = v126;
  }

  if (v127 >= 0)
  {
    v76 = &__dst;
  }

  else
  {
    v76 = __dst;
  }

  v121 = &__p[0].__r_.__value_.__s.__data_[1];
  __src = v76;
  v77 = 1;
  pw_uid = v66->pw_uid;
  pw_gid = v66->pw_gid;
  v120 = pw_uid;
  while (1)
  {
    v79 = &data[24 * v74];
    v80 = v79[23];
    if (v80 >= 0)
    {
      v81 = v79[23];
    }

    else
    {
      v81 = *(v79 + 1);
    }

    v82 = v81 + 1;
    if (v81 + 1 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v82 < 0x17)
    {
      __p[0].__r_.__value_.__r.__words[2] = 0;
      *(&__p[0].__r_.__value_.__s + 23) = v81 + 1;
      v85 = v121;
      *&__p[0].__r_.__value_.__l.__data_ = 0x2FuLL;
      if (!v81)
      {
        goto LABEL_132;
      }
    }

    else
    {
      v83 = (v82 | 7) == 0x17 ? 25 : (v82 | 7) + 1;
      v84 = operator new(v83);
      __p[0].__r_.__value_.__l.__size_ = v81 + 1;
      __p[0].__r_.__value_.__r.__words[2] = v83 | 0x8000000000000000;
      __p[0].__r_.__value_.__r.__words[0] = v84;
      *v84 = 47;
      v85 = v84 + 1;
    }

    v86 = *v79;
    v87 = v80 >= 0 ? v79 : *v79;
    memmove(v85, v87, v81);
LABEL_132:
    v85[v81] = 0;
    if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v88 = __p;
    }

    else
    {
      v88 = __p[0].__r_.__value_.__r.__words[0];
    }

    if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v89 = HIBYTE(__p[0].__r_.__value_.__r.__words[2]);
    }

    else
    {
      v89 = __p[0].__r_.__value_.__l.__size_;
    }

    std::string::append(&v129, v88, v89);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    v90 = SHIBYTE(v129.__r_.__value_.__r.__words[2]);
    if ((v129.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v91 = HIBYTE(v129.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v91 = v129.__r_.__value_.__l.__size_;
    }

    v92 = v91 + v75;
    if (v91 + v75 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v92 <= 0x16)
    {
      memset(__p, 0, 24);
      v94 = __p;
      *(&__p[0].__r_.__value_.__s + 23) = v91 + v75;
      if (!v75)
      {
        goto LABEL_152;
      }

LABEL_151:
      memmove(v94, __src, v75);
      goto LABEL_152;
    }

    if ((v92 | 7) == 0x17)
    {
      v93 = 25;
    }

    else
    {
      v93 = (v92 | 7) + 1;
    }

    v94 = operator new(v93);
    __p[0].__r_.__value_.__l.__size_ = v91 + v75;
    __p[0].__r_.__value_.__r.__words[2] = v93 | 0x8000000000000000;
    __p[0].__r_.__value_.__r.__words[0] = v94;
    if (v75)
    {
      goto LABEL_151;
    }

LABEL_152:
    v95 = v94 + v75;
    if (v91)
    {
      if (v90 >= 0)
      {
        v96 = &v129;
      }

      else
      {
        v96 = v129.__r_.__value_.__r.__words[0];
      }

      memmove(v95, v96, v91);
    }

    v95[v91] = 0;
    if (SHIBYTE(v128.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v128.__r_.__value_.__l.__data_);
    }

    v128 = __p[0];
    if (ctu::fs::is_directory())
    {
      v97 = (v128.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v128 : v128.__r_.__value_.__r.__words[0];
      if (chown(v97, v120, pw_gid))
      {
        break;
      }
    }

    v74 = v77;
    data = __p[1].__r_.__value_.__l.__data_;
    ++v77;
    if (0xAAAAAAAAAAAAAAABLL * ((__p[1].__r_.__value_.__l.__size_ - __p[1].__r_.__value_.__r.__words[0]) >> 3) <= v74)
    {
      goto LABEL_176;
    }
  }

  if ((v128.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v98 = &v128;
  }

  else
  {
    LOBYTE(v98) = v128.__r_.__value_.__s.__data_[0];
  }

  v99 = __error();
  v118 = strerror(*v99);
  _BBUFSDebugPrint("createDirectoryWithTimestamp", "Failed changing owner of coredump directory:  %s: %s\n", v100, v101, v102, v103, v104, v105, v98);
LABEL_176:
  data = __p[1].__r_.__value_.__l.__data_;
LABEL_177:
  if (data)
  {
    v112 = __p[1].__r_.__value_.__l.__size_;
    v113 = data;
    if (__p[1].__r_.__value_.__l.__size_ != data)
    {
      do
      {
        v114 = *(v112 - 1);
        v112 -= 3;
        if (v114 < 0)
        {
          operator delete(*v112);
        }
      }

      while (v112 != data);
      v113 = __p[1].__r_.__value_.__l.__data_;
    }

    __p[1].__r_.__value_.__l.__size_ = data;
    operator delete(v113);
  }

  if (SHIBYTE(v124[2]) < 0)
  {
    operator delete(v124[0]);
    if (SHIBYTE(v127) < 0)
    {
      goto LABEL_191;
    }

LABEL_187:
    if ((SHIBYTE(v128.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_188;
    }

LABEL_192:
    operator delete(v128.__r_.__value_.__l.__data_);
    if (SHIBYTE(v129.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_193;
    }

LABEL_189:
    v115 = *MEMORY[0x1E69E9840];
  }

  else
  {
    if ((SHIBYTE(v127) & 0x80000000) == 0)
    {
      goto LABEL_187;
    }

LABEL_191:
    operator delete(__dst);
    if (SHIBYTE(v128.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_192;
    }

LABEL_188:
    if ((SHIBYTE(v129.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_189;
    }

LABEL_193:
    operator delete(v129.__r_.__value_.__l.__data_);
    v116 = *MEMORY[0x1E69E9840];
  }
}

void sub_1E53414F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void **a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48)
{
  std::vector<std::string>::~vector[abi:ne200100](&a21);
  if (a29 < 0)
  {
    operator delete(__p);
    if ((a35 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a35 & 0x80000000) == 0)
  {
LABEL_3:
    if (a41 < 0)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  operator delete(a30);
  if (a41 < 0)
  {
LABEL_4:
    operator delete(a36);
    if ((a48 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  if ((a48 & 0x80000000) == 0)
  {
LABEL_5:
    if ((*(v48 + 23) & 0x80000000) == 0)
    {
LABEL_12:
      _Unwind_Resume(a1);
    }

LABEL_11:
    operator delete(*v48);
    _Unwind_Resume(a1);
  }

LABEL_10:
  operator delete(a43);
  if ((*(v48 + 23) & 0x80000000) == 0)
  {
    goto LABEL_12;
  }

  goto LABEL_11;
}

uint64_t bbufs::chownToWireless(uint64_t *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a2;
  if (*(a1 + 23) < 0)
  {
    if (!a1[1])
    {
      goto LABEL_11;
    }

    a1 = *a1;
  }

  else if (!*(a1 + 23))
  {
LABEL_11:
    v9 = 1;
    if (a2 < 0)
    {
      goto LABEL_12;
    }

LABEL_7:
    v10 = getpwnam("_wireless");
    if (v10)
    {
      pw_uid = v10->pw_uid;
      if (fchown(v8, pw_uid, v10->pw_gid))
      {
        _BBUFSDebugPrint("chownToWireless", "Failed changing file ownership (%u, %u)\n", v18, v19, v20, v21, v22, v23, pw_uid);
        v24 = 0;
        if (v9)
        {
          return v24;
        }
      }

      else
      {
        v24 = 1;
        _BBUFSDebugPrint("chownToWireless", "chown'd to _wireless(%u, %u) : ret %d \n", v18, v19, v20, v21, v22, v23, pw_uid);
        if (v9)
        {
          return v24;
        }
      }
    }

    else
    {
      _BBUFSDebugPrint("getWirelessID", "failed to get uid and gid information for _wireless\n", v11, v12, v13, v14, v15, v16, v26);
      v24 = 0;
      if (v9)
      {
        return v24;
      }
    }

    close(v8);
    return v24;
  }

  v8 = open(a1, 1, 420);
  v9 = 0;
  if ((v8 & 0x80000000) == 0)
  {
    goto LABEL_7;
  }

LABEL_12:
  _BBUFSDebugPrint("chownToWireless", "Failed to open file to chown\n", a3, a4, a5, a6, a7, a8, v26);
  return 0;
}

char *bbufs::copyFSPath(bbufs *this)
{
  pthread_mutex_lock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
  v1 = off_1ED944170;
  if (!off_1ED944170)
  {
    v2 = operator new(0x18uLL);
    BBUPartitionManager::BBUPartitionManager(v2);
    v11 = v2;
    v3 = operator new(0x20uLL);
    *v3 = &unk_1F5F05A00;
    v3[1] = 0;
    v3[2] = 0;
    v3[3] = v2;
    v4 = off_1ED944178;
    off_1ED944170 = v2;
    off_1ED944178 = v3;
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    v1 = off_1ED944170;
  }

  v5 = off_1ED944178;
  if (off_1ED944178)
  {
    atomic_fetch_add_explicit(off_1ED944178 + 1, 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
  BBUPartitionManager::getBBUFSPath(v1, &__s1);
  if (SHIBYTE(__s1.__r_.__value_.__r.__words[2]) < 0)
  {
    v7 = __s1.__r_.__value_.__r.__words[0];
    v8 = strdup(__s1.__r_.__value_.__l.__data_);
    operator delete(v7);
    result = v8;
    if (!v5)
    {
      return result;
    }
  }

  else
  {
    result = strdup(&__s1);
    if (!v5)
    {
      return result;
    }
  }

  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v9 = result;
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    return v9;
  }

  return result;
}

void sub_1E5341914(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  std::unique_ptr<BBUPartitionManager>::~unique_ptr[abi:ne200100](va);
  pthread_mutex_unlock(&ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance);
  _Unwind_Resume(a1);
}

uint64_t bbufs::backupFile(uint64_t a1, uint64_t *a2)
{
  memset(&v35, 170, sizeof(v35));
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v35, *a1, *(a1 + 8));
  }

  else
  {
    v35 = *a1;
  }

  v4 = *(a2 + 23);
  if (v4 < 0)
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  ctu::path_join_impl();
  if (!ctu::fs::file_exists())
  {
    v13 = &v35;
    if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      LOBYTE(v13) = v35.__r_.__value_.__s.__data_[0];
    }

    _BBUFSDebugPrint("backupFile", "Nothing to backup: file (%s) does not exist\n", v7, v8, v9, v10, v11, v12, v13);
    goto LABEL_30;
  }

  memset(&v34, 170, sizeof(v34));
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v34, *a1, *(a1 + 8));
  }

  else
  {
    v34 = *a1;
  }

  ctu::path_join_impl();
  memset(&v33, 170, sizeof(v33));
  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v33, v34.__r_.__value_.__l.__data_, v34.__r_.__value_.__l.__size_);
  }

  else
  {
    v33 = v34;
  }

  v14 = *(a2 + 23);
  if (v14 < 0)
  {
    v15 = *a2;
  }

  if (v14 >= 0)
  {
    v16 = *(a2 + 23);
  }

  else
  {
    v16 = a2[1];
  }

  ctu::path_join_impl();
  if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v23 = &v35;
  }

  else
  {
    LOBYTE(v23) = v35.__r_.__value_.__s.__data_[0];
  }

  _BBUFSDebugPrint("backupFile", "Backing-up file from (%s) to (%s)\n", v17, v18, v19, v20, v21, v22, v23);
  if (ctu::fs::rename())
  {
    if ((SHIBYTE(v33.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      if ((SHIBYTE(v34.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_39;
    }

    operator delete(v33.__r_.__value_.__l.__data_);
    if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_39:
      operator delete(v34.__r_.__value_.__l.__data_);
      result = 1;
      if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_43;
      }

      return result;
    }

LABEL_30:
    result = 1;
    if ((SHIBYTE(v35.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return result;
    }

LABEL_43:
    v32 = result;
    operator delete(v35.__r_.__value_.__l.__data_);
    return v32;
  }

  v31 = &v35;
  if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    LOBYTE(v31) = v35.__r_.__value_.__s.__data_[0];
  }

  _BBUFSDebugPrint("backupFile", "Failed to backup file from (%s) to (%s)\n", v24, v25, v26, v27, v28, v29, v31);
  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v34.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_36:
      result = 0;
      if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_43;
      }

      return result;
    }
  }

  else if ((SHIBYTE(v34.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_36;
  }

  operator delete(v34.__r_.__value_.__l.__data_);
  result = 0;
  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_43;
  }

  return result;
}

void sub_1E5341C48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
    if ((*(v23 - 41) & 0x80000000) == 0)
    {
LABEL_4:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((*(v23 - 41) & 0x80000000) == 0)
  {
    goto LABEL_4;
  }

  operator delete(*(v23 - 64));
  goto LABEL_4;
}

uint64_t bbufs::createBackupDir(uint64_t a1)
{
  memset(&v25, 170, sizeof(v25));
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v25, *a1, *(a1 + 8));
  }

  else
  {
    v25 = *a1;
  }

  ctu::path_join_impl();
  v7 = ctu::fs::file_exists();
  if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = &v25;
  }

  else
  {
    LOBYTE(v8) = v25.__r_.__value_.__s.__data_[0];
  }

  if (v7)
  {
    if ((ctu::fs::is_directory() & 1) == 0)
    {
      v15 = &v25;
      if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        LOBYTE(v15) = v25.__r_.__value_.__s.__data_[0];
      }

      _BBUFSDebugPrint("createBackupDir", "Backup directory path (%s) exists but is not a directory\n", v9, v10, v11, v12, v13, v14, v15);
LABEL_16:
      result = 0;
      if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_17;
      }

      return result;
    }
  }

  else
  {
    _BBUFSDebugPrint("createBackupDir", "Backup directory (%s) does not exist, creating it\n", v1, v2, v3, v4, v5, v6, v8);
    if ((ctu::fs::create_directory() & 1) == 0)
    {
      _BBUFSDebugPrint("createBackupDir", "Failed to create backup directory\n", v16, v17, v18, v19, v20, v21, v24);
      goto LABEL_16;
    }
  }

  result = 1;
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_17:
    v23 = result;
    operator delete(v25.__r_.__value_.__l.__data_);
    return v23;
  }

  return result;
}

void sub_1E5341E4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t bbufs::createFile(uint64_t a1, uint64_t *a2)
{
  memset(&v48, 170, sizeof(v48));
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v48, *a1, *(a1 + 8));
  }

  else
  {
    v48 = *a1;
  }

  v3 = *(a2 + 23);
  if (v3 < 0)
  {
    v4 = *a2;
  }

  if (v3 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  ctu::path_join_impl();
  v12 = ctu::fs::open_file();
  if ((v12 & 0x80000000) == 0)
  {
    v13 = getpwnam("_wireless");
    if (v13)
    {
      if (!fchown(v12, v13->pw_uid, v13->pw_gid))
      {
        v36 = 1;
LABEL_23:
        v43 = ctu::fs::close_file(v12);
        if ((v43 & 1) == 0)
        {
          v44 = &v48;
          if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            LOBYTE(v44) = v48.__r_.__value_.__s.__data_[0];
          }

          _BBUFSDebugPrint("createFile", "Failed to close file (%s)\n", v37, v38, v39, v40, v41, v42, v44);
        }

        result = v36 & v43;
        if ((SHIBYTE(v48.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          return result;
        }

LABEL_29:
        v45 = result;
        operator delete(v48.__r_.__value_.__l.__data_);
        return v45;
      }

      if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v20 = &v48;
      }

      else
      {
        LOBYTE(v20) = v48.__r_.__value_.__s.__data_[0];
      }

      v21 = __error();
      strerror(*v21);
      _BBUFSDebugPrint("createFile", "Failed to change file (%s) owner: %s\n", v22, v23, v24, v25, v26, v27, v20);
    }

    else
    {
      _BBUFSDebugPrint("getWirelessID", "failed to get uid and gid information for _wireless\n", v14, v15, v16, v17, v18, v19, v46);
      _BBUFSDebugPrint("createFile", "Failed to get uid gid information for _wireless\n", v30, v31, v32, v33, v34, v35, v47);
    }

    v36 = 0;
    goto LABEL_23;
  }

  v28 = &v48;
  if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    LOBYTE(v28) = v48.__r_.__value_.__s.__data_[0];
  }

  _BBUFSDebugPrint("createFile", "Failed to open/create file (%s)\n", v6, v7, v8, v9, v10, v11, v28);
  result = 0;
  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_29;
  }

  return result;
}

void sub_1E5342054(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t bbufs::restoreBackupFile(uint64_t a1, uint64_t *a2)
{
  memset(&v23, 170, sizeof(v23));
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v23, *a1, *(a1 + 8));
  }

  else
  {
    v23 = *a1;
  }

  ctu::path_join_impl();
  memset(&v22, 170, sizeof(v22));
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v22, v23.__r_.__value_.__l.__data_, v23.__r_.__value_.__l.__size_);
  }

  else
  {
    v22 = v23;
  }

  v4 = *(a2 + 23);
  if (v4 < 0)
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  ctu::path_join_impl();
  if (!ctu::fs::file_exists())
  {
    goto LABEL_29;
  }

  memset(&v21, 170, sizeof(v21));
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v21, *a1, *(a1 + 8));
  }

  else
  {
    v21 = *a1;
  }

  v7 = *(a2 + 23);
  if (v7 < 0)
  {
    v8 = *a2;
  }

  if (v7 >= 0)
  {
    v9 = *(a2 + 23);
  }

  else
  {
    v9 = a2[1];
  }

  ctu::path_join_impl();
  v10 = ctu::fs::rename();
  v17 = v10;
  if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = &v22;
  }

  else
  {
    LOBYTE(v18) = v22.__r_.__value_.__s.__data_[0];
  }

  if (v10)
  {
    _BBUFSDebugPrint("restoreBackupFile", "Restored backup file from (%s) to (%s)\n", v11, v12, v13, v14, v15, v16, v18);
  }

  else
  {
    _BBUFSDebugPrint("restoreBackupFile", "Failed to restore backup file (%s)\n", v11, v12, v13, v14, v15, v16, v18);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
    if ((v17 & 1) == 0)
    {
      goto LABEL_33;
    }

LABEL_29:
    v19 = 1;
    if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_30;
    }

LABEL_34:
    operator delete(v22.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return v19;
    }

    goto LABEL_35;
  }

  if (v17)
  {
    goto LABEL_29;
  }

LABEL_33:
  v19 = 0;
  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_34;
  }

LABEL_30:
  if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    return v19;
  }

LABEL_35:
  operator delete(v23.__r_.__value_.__l.__data_);
  return v19;
}

void sub_1E53422C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
    if ((*(v23 - 41) & 0x80000000) == 0)
    {
LABEL_4:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((*(v23 - 41) & 0x80000000) == 0)
  {
    goto LABEL_4;
  }

  operator delete(*(v23 - 64));
  goto LABEL_4;
}

uint64_t bbufs::clearBackupFile(uint64_t a1, uint64_t *a2)
{
  memset(&v23, 170, sizeof(v23));
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v23, *a1, *(a1 + 8));
  }

  else
  {
    v23 = *a1;
  }

  ctu::path_join_impl();
  memset(&v22, 170, sizeof(v22));
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v22, v23.__r_.__value_.__l.__data_, v23.__r_.__value_.__l.__size_);
  }

  else
  {
    v22 = v23;
  }

  v3 = *(a2 + 23);
  if (v3 < 0)
  {
    v4 = *a2;
  }

  if (v3 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  ctu::path_join_impl();
  if (!ctu::fs::file_exists() || ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v12 = &v22) : (LOBYTE(v12) = v22.__r_.__value_.__s.__data_[0]), _BBUFSDebugPrint("clearBackupFile", "Deleting backup file (%s)\n", v6, v7, v8, v9, v10, v11, v12), (ctu::fs::remove_file() & 1) != 0))
  {
    v19 = 1;
    if ((SHIBYTE(v22.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

LABEL_23:
    operator delete(v22.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return v19;
    }

    goto LABEL_24;
  }

  v21 = &v22;
  if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    LOBYTE(v21) = v22.__r_.__value_.__s.__data_[0];
  }

  _BBUFSDebugPrint("clearBackupFile", "Failed to delete file backup (%s)\n", v13, v14, v15, v16, v17, v18, v21);
  v19 = 0;
  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_23;
  }

LABEL_18:
  if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    return v19;
  }

LABEL_24:
  operator delete(v23.__r_.__value_.__l.__data_);
  return v19;
}

void sub_1E53424F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __cxx_global_var_init_35()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<BBUPartitionManager>::~PthreadMutexGuardPolicy, &ctu::Singleton<BBUPartitionManager,BBUPartitionManager,ctu::PthreadMutexGuardPolicy<BBUPartitionManager>>::sInstance, &dword_1E5234000);
  }

  return result;
}

void BBUStringToArgv(char *a1, void **a2)
{
  v2 = a1[23];
  if (v2 >= 0)
  {
    v3 = a1[23];
  }

  else
  {
    v3 = *(a1 + 1);
  }

  v4 = v3 + 4;
  if (v3 + 4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v4 < 0x17)
  {
    v50 = 0;
    HIBYTE(v50) = v3 + 4;
    v8 = &v49 + 4;
    v49 = 0x20706167u;
    if (!v3)
    {
      goto LABEL_15;
    }
  }

  else
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
    *(&v49 + 1) = v3 + 4;
    v50 = v6 | 0x8000000000000000;
    *&v49 = v7;
    *v7 = 544235879;
    v8 = (v7 + 1);
  }

  v9 = *a1;
  if (v2 >= 0)
  {
    v10 = a1;
  }

  else
  {
    v10 = *a1;
  }

  memmove(v8, v10, v3);
LABEL_15:
  v8[v3] = 0;
  if (v2 < 0)
  {
    operator delete(*a1);
  }

  *a1 = v49;
  v11 = v50;
  *(a1 + 2) = v50;
  v12 = HIBYTE(v11);
  if ((v12 & 0x80u) == 0)
  {
    v13 = v12;
  }

  else
  {
    v13 = *(a1 + 1);
  }

  v14 = a2;
  if (v13)
  {
    v15 = 0;
    v16 = MEMORY[0x1E69E9830];
    do
    {
      while (1)
      {
        v17 = a1[23] >= 0 ? a1 : *a1;
        v18 = v17[v15];
        v19 = (v18 & 0x80000000) != 0 ? __maskrune(v18, 0x4000uLL) : *(v16 + 4 * v18 + 60) & 0x4000;
        v20 = a1[23] >= 0 ? a1 : *a1;
        v21 = &v20[v15];
        if (v15 >= v13 || !v19)
        {
          break;
        }

        *v21 = 0;
        ++v15;
      }

      v23 = v14[1];
      v22 = v14[2];
      if (v23 >= v22)
      {
        v25 = *v14;
        v26 = v23 - *v14;
        v27 = (v26 >> 3) + 1;
        if (v27 >> 61)
        {
          goto LABEL_73;
        }

        v28 = v22 - v25;
        if (v28 >> 2 > v27)
        {
          v27 = v28 >> 2;
        }

        if (v28 >= 0x7FFFFFFFFFFFFFF8)
        {
          v29 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v29 = v27;
        }

        if (v29)
        {
          if (v29 >> 61)
          {
            goto LABEL_74;
          }

          v30 = operator new(8 * v29);
        }

        else
        {
          v30 = 0;
        }

        v31 = &v30[8 * (v26 >> 3)];
        *v31 = v21;
        v24 = v31 + 8;
        memcpy(v30, v25, v26);
        v14 = a2;
        *a2 = v30;
        a2[1] = v24;
        a2[2] = &v30[8 * v29];
        if (v25)
        {
          operator delete(v25);
        }
      }

      else
      {
        *v23 = v21;
        v24 = v23 + 1;
      }

      v14[1] = v24;
      v32 = v15 + 1;
      do
      {
        v33 = v32;
        if (a1[23] >= 0)
        {
          v34 = a1;
        }

        else
        {
          v34 = *a1;
        }

        v35 = v34[v33];
        if ((v35 & 0x80000000) != 0)
        {
          v36 = __maskrune(v35, 0x4000uLL);
          v32 = v33 + 1;
          if (v33 >= v13)
          {
            break;
          }
        }

        else
        {
          v36 = *(v16 + 4 * v35 + 60) & 0x4000;
          v32 = v33 + 1;
          if (v33 >= v13)
          {
            break;
          }
        }
      }

      while (!v36);
      v15 = v32 - 1;
    }

    while (v33 < v13);
  }

  v38 = v14[1];
  v37 = v14[2];
  if (v38 >= v37)
  {
    v40 = *v14;
    v41 = v38 - *v14;
    v42 = (v41 >> 3) + 1;
    if (v42 >> 61)
    {
LABEL_73:
      std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
    }

    v43 = v37 - v40;
    if (v43 >> 2 > v42)
    {
      v42 = v43 >> 2;
    }

    if (v43 >= 0x7FFFFFFFFFFFFFF8)
    {
      v44 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v44 = v42;
    }

    if (v44)
    {
      if (v44 >> 61)
      {
LABEL_74:
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v45 = operator new(8 * v44);
    }

    else
    {
      v45 = 0;
    }

    v46 = &v45[8 * (v41 >> 3)];
    v47 = &v45[8 * v44];
    *v46 = 0;
    v39 = v46 + 8;
    memcpy(v45, v40, v41);
    *a2 = v45;
    a2[1] = v39;
    v14 = a2;
    a2[2] = v47;
    if (v40)
    {
      operator delete(v40);
    }
  }

  else
  {
    *v38 = 0;
    v39 = v38 + 1;
  }

  v14[1] = v39;
}

void ParseDebugArgs(const void **a1, uint64_t a2, int a3)
{
  v4 = *(a1 + 23);
  if (v4 >= 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    v5 = a1[1];
  }

  if (v5)
  {
    v7 = (a2 + 40);
    if ((a2 + 40) != a1)
    {
      if (*(a2 + 63) < 0)
      {
        if (v4 >= 0)
        {
          v9 = a1;
        }

        else
        {
          v9 = *a1;
        }

        v10 = a1;
        std::string::__assign_no_alias<false>(v7, v9, v5);
      }

      else
      {
        if ((v4 & 0x80000000) == 0)
        {
          v8 = *a1;
          *(a2 + 56) = a1[2];
          *v7 = v8;
          goto LABEL_15;
        }

        v10 = a1;
        std::string::__assign_no_alias<true>(v7, *a1, a1[1]);
      }

      a1 = v10;
    }

LABEL_15:
    __p = 0;
    v45 = 0;
    v46 = 0;
    BBUStringToArgv(a1, &__p);
    *MEMORY[0x1E69E98F0] = 1;
    v11 = MEMORY[0x1E69E98E0];
    *MEMORY[0x1E69E9900] = 1;
    while (1)
    {
      v12 = __p;
      switch(getopt_long(((v45 - __p) >> 3) - 1, __p, "dmfl:tnp:iuseb:o:", &ParseDebugArgs(std::string &,UpdaterDebugArgs &,BOOL)::long_options, 0))
      {
        case -1:
          if (v12)
          {
            operator delete(v12);
          }

          return;
        case 98:
          if (!a3)
          {
            continue;
          }

          v13 = *v11;
          v14 = strlen(*v11);
          if (v14 > 0x7FFFFFFFFFFFFFF7)
          {
            goto LABEL_91;
          }

          v15 = v14;
          if (v14 >= 0x17)
          {
            if ((v14 | 7) == 0x17)
            {
              v32 = 25;
            }

            else
            {
              v32 = (v14 | 7) + 1;
            }

            v16 = operator new(v32);
            v41 = v15;
            v42 = v32 | 0x8000000000000000;
            v40 = v16;
LABEL_64:
            memmove(v16, v13, v15);
            v16[v15] = 0;
            v17 = SHIBYTE(v42);
            if ((SHIBYTE(v42) & 0x8000000000000000) == 0)
            {
              goto LABEL_23;
            }

            goto LABEL_65;
          }

          HIBYTE(v42) = v14;
          v16 = &v40;
          if (v14)
          {
            goto LABEL_64;
          }

          LOBYTE(v40) = 0;
          v17 = SHIBYTE(v42);
          if ((SHIBYTE(v42) & 0x8000000000000000) != 0)
          {
LABEL_65:
            v18 = v40;
            v19 = v41;
            if (strncasecmp("ROM", v40, v41))
            {
              goto LABEL_66;
            }

            *(a2 + 64) = 0;
LABEL_86:
            operator delete(v18);
          }

          else
          {
LABEL_23:
            v18 = &v40;
            v19 = v17;
            if (!strncasecmp("ROM", &v40, v17))
            {
              *(a2 + 64) = 0;
            }

            else
            {
LABEL_66:
              if (!strncasecmp("PL", v18, v19))
              {
                v33 = 1;
              }

              else
              {
                v33 = 2;
              }

              *(a2 + 64) = v33;
              if ((v17 & 0x80000000) != 0)
              {
                v18 = v40;
                goto LABEL_86;
              }
            }
          }

          continue;
        case 100:
          *(a2 + 35) = 1;
          continue;
        case 101:
          *(a2 + 37) = 1;
          continue;
        case 102:
          if (a3)
          {
            *(a2 + 8) = 1;
          }

          continue;
        case 105:
          if (a3)
          {
            *(a2 + 32) = 1;
          }

          continue;
        case 108:
          *(a2 + 4) = atoi(*v11);
          continue;
        case 109:
          *(a2 + 36) = 1;
          continue;
        case 110:
          if (a3)
          {
            *(a2 + 9) = 1;
          }

          continue;
        case 111:
          if (!a3)
          {
            continue;
          }

          v24 = *v11;
          v25 = strlen(*v11);
          if (v25 > 0x7FFFFFFFFFFFFFF7)
          {
LABEL_91:
            std::string::__throw_length_error[abi:ne200100]();
          }

          v26 = v25;
          if (v25 >= 0x17)
          {
            if ((v25 | 7) == 0x17)
            {
              v34 = 25;
            }

            else
            {
              v34 = (v25 | 7) + 1;
            }

            v27 = operator new(v34);
            v38 = v26;
            v39 = v34 | 0x8000000000000000;
            v37 = v27;
LABEL_75:
            memmove(v27, v24, v26);
            v27[v26] = 0;
            v28 = SHIBYTE(v39);
            if ((SHIBYTE(v39) & 0x8000000000000000) != 0)
            {
              goto LABEL_76;
            }

LABEL_48:
            v18 = &v37;
            v29 = v28;
            if (strncasecmp("UART", &v37, v28))
            {
              goto LABEL_77;
            }

            *(a2 + 65) = 0;
          }

          else
          {
            HIBYTE(v39) = v25;
            v27 = &v37;
            if (v25)
            {
              goto LABEL_75;
            }

            LOBYTE(v37) = 0;
            v28 = SHIBYTE(v39);
            if ((SHIBYTE(v39) & 0x8000000000000000) == 0)
            {
              goto LABEL_48;
            }

LABEL_76:
            v18 = v37;
            v29 = v38;
            if (!strncasecmp("UART", v37, v38))
            {
              *(a2 + 65) = 0;
              goto LABEL_86;
            }

LABEL_77:
            if (!strncasecmp("PCIE", v18, v29))
            {
              v35 = 1;
            }

            else
            {
              v35 = 2;
            }

            *(a2 + 65) = v35;
            if ((v28 & 0x80000000) != 0)
            {
              v18 = v37;
              goto LABEL_86;
            }
          }

          continue;
        case 112:
          if (!a3)
          {
            continue;
          }

          v20 = *v11;
          v21 = strlen(*v11);
          if (v21 > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          v22 = v21;
          if (v21 >= 0x17)
          {
            if ((v21 | 7) == 0x17)
            {
              v30 = 25;
            }

            else
            {
              v30 = (v21 | 7) + 1;
            }

            p_dst_1 = operator new(v30);
            __dst_1.__r_.__value_.__l.__size_ = v22;
            __dst_1.__r_.__value_.__r.__words[2] = v30 | 0x8000000000000000;
            __dst_1.__r_.__value_.__r.__words[0] = p_dst_1;
          }

          else
          {
            *(&__dst_1.__r_.__value_.__s + 23) = v21;
            p_dst_1 = &__dst_1;
            if (!v21)
            {
              goto LABEL_57;
            }
          }

          memmove(p_dst_1, v20, v22);
LABEL_57:
          p_dst_1->__r_.__value_.__s.__data_[v22] = 0;
          v31 = std::stol(&__dst_1, 0, 10);
          if (SHIBYTE(__dst_1.__r_.__value_.__r.__words[2]) < 0)
          {
            v36 = v31;
            operator delete(__dst_1.__r_.__value_.__l.__data_);
            v31 = v36;
            if ((v36 & 0x8000000000000000) == 0)
            {
LABEL_83:
              *(a2 + 16) = v31;
              *(a2 + 24) = 1;
            }
          }

          else if ((v31 & 0x8000000000000000) == 0)
          {
            goto LABEL_83;
          }

          break;
        case 115:
          if (a3)
          {
            *(a2 + 34) = 1;
          }

          continue;
        case 116:
          if (a3)
          {
            *a2 = 1;
          }

          continue;
        case 117:
          if (a3)
          {
            *(a2 + 33) = 1;
          }

          continue;
        default:
          continue;
      }
    }
  }
}