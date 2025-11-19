void support::misc::safe_timer::create(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, dispatch_qos_class_t a4@<W3>, support::misc::safe_timer **a5@<X8>)
{
  v28 = *MEMORY[0x29EDCA608];
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v24 = v10;
  v25 = v10;
  v23[1] = v10;
  v23[2] = v10;
  v23[0] = v10;
  v21 = operator new(0x30uLL);
  v22 = xmmword_29797C930;
  strcpy(v21, "com.apple.telephony.basebandservices.support");
  v20 = 10;
  strcpy(__p, "safe-timer");
  support::log::client::client(v23, &v21, __p);
  if (v20 < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v22) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((SHIBYTE(v22) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(v21);
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
      v27 = v26;
      (*(*v12 + 24))(v12, v26);
    }

    else
    {
      v27 = *(a3 + 24);
      *(a3 + 24) = 0;
    }
  }

  else
  {
    v27 = 0;
  }

  support::misc::safe_timer::safe_timer(v11, v17, a2, 0, v26, a4);
  if (v27 == v26)
  {
    (*(*v27 + 32))(v27);
    if ((SHIBYTE(v18) & 0x80000000) == 0)
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
    *&v23[0] = &unk_2A1E58EF8;
    v13 = v25;
    if (!v25)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

LABEL_21:
  v15 = *v24;
  if (os_log_type_enabled(*v24, OS_LOG_TYPE_ERROR))
  {
    *v16 = 0;
    _os_log_error_impl(&dword_297948000, v15, OS_LOG_TYPE_ERROR, "error: failed to init safe_timer object", v16, 2u);
  }

  (*(*v11 + 8))(v11);
  *&v23[0] = &unk_2A1E58EF8;
  v13 = v25;
  if (v25)
  {
LABEL_16:
    if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v13->__on_zero_shared)(v13);
      std::__shared_weak_count::__release_weak(v13);
    }
  }

LABEL_18:
  v14 = *MEMORY[0x29EDCA608];
}

void sub_29794911C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, char a30)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *std::string::basic_string[abi:ne200100]<0>(void *a1, char *__s)
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

    v6 = operator new(v7);
    a1[1] = v5;
    a1[2] = v7 | 0x8000000000000000;
    *a1 = v6;
  }

  else
  {
    *(a1 + 23) = v4;
    v6 = a1;
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  memmove(v6, __s, v5);
LABEL_10:
  *(v6 + v5) = 0;
  return a1;
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
    _os_log_error_impl(&dword_297948000, v3, OS_LOG_TYPE_ERROR, v4, v5, 2u);
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

void support::log::client::~client(support::log::client *this)
{
  *this = &unk_2A1E58EF8;
  v1 = *(this + 8);
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
  *this = &unk_2A1E58EF8;
  v1 = *(this + 8);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = this;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    this = v2;
  }

  operator delete(this);
}

void support::misc::safe_timer::create(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, dispatch_qos_class_t a5@<W4>, support::misc::safe_timer **a6@<X8>)
{
  v30 = *MEMORY[0x29EDCA608];
  *&v12 = 0xAAAAAAAAAAAAAAAALL;
  *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v26 = v12;
  v27 = v12;
  v25[1] = v12;
  v25[2] = v12;
  v25[0] = v12;
  v23 = operator new(0x30uLL);
  v24 = xmmword_29797C930;
  strcpy(v23, "com.apple.telephony.basebandservices.support");
  v22 = 10;
  strcpy(__p, "safe-timer");
  support::log::client::client(v25, &v23, __p);
  if (v22 < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v24) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((SHIBYTE(v24) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(v23);
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
      v29 = v28;
      (*(*v14 + 24))(v14, v28);
    }

    else
    {
      v29 = *(a4 + 24);
      *(a4 + 24) = 0;
    }
  }

  else
  {
    v29 = 0;
  }

  support::misc::safe_timer::safe_timer(v13, v19, a2, a3, v28, a5);
  if (v29 == v28)
  {
    (*(*v29 + 32))(v29);
    if ((SHIBYTE(v20) & 0x80000000) == 0)
    {
      goto LABEL_14;
    }
  }

  else
  {
    if (v29)
    {
      (*(*v29 + 40))(v29);
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
    *&v25[0] = &unk_2A1E58EF8;
    v15 = v27;
    if (!v27)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

LABEL_21:
  v17 = *v26;
  if (os_log_type_enabled(*v26, OS_LOG_TYPE_ERROR))
  {
    *v18 = 0;
    _os_log_error_impl(&dword_297948000, v17, OS_LOG_TYPE_ERROR, "error: failed to init safe_timer object", v18, 2u);
  }

  (*(*v13 + 8))(v13);
  *&v25[0] = &unk_2A1E58EF8;
  v15 = v27;
  if (v27)
  {
LABEL_16:
    if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v15->__on_zero_shared)(v15);
      std::__shared_weak_count::__release_weak(v15);
    }
  }

LABEL_18:
  v16 = *MEMORY[0x29EDCA608];
}

void sub_297949808(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, char a30)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t support::misc::safe_timer::safe_timer(uint64_t a1, const std::string::value_type *a2, uint64_t a3, uint64_t a4, uint64_t a5, dispatch_qos_class_t a6)
{
  *a1 = &unk_2A1E58E38;
  v11 = a1 + 8;
  *(&v30.__r_.__value_.__s + 23) = 11;
  strcpy(&v30, "safe-timer.");
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

  v14 = std::string::append(&v30, a2, v13);
  v15 = *&v14->__r_.__value_.__l.__data_;
  *(v11 + 16) = *(&v14->__r_.__value_.__l + 2);
  *v11 = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  v30.__r_.__value_.__r.__words[0] = operator new(0x20uLL);
  *&v30.__r_.__value_.__r.__words[1] = xmmword_29797C940;
  strcpy(v30.__r_.__value_.__l.__data_, "com.apple.telephony.baseband.");
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

  v19 = std::string::append(&v30, v17, v18);
  v20 = (a1 + 32);
  v21 = *&v19->__r_.__value_.__l.__data_;
  *(a1 + 48) = *(&v19->__r_.__value_.__l + 2);
  *(a1 + 32) = v21;
  v19->__r_.__value_.__l.__size_ = 0;
  v19->__r_.__value_.__r.__words[2] = 0;
  v19->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v30.__r_.__value_.__l.__data_);
  }

  v28 = operator new(0x30uLL);
  v29 = xmmword_29797C930;
  strcpy(v28, "com.apple.telephony.basebandservices.support");
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
    if ((SHIBYTE(v29) & 0x80000000) == 0)
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

  else if ((SHIBYTE(v29) & 0x80000000) == 0)
  {
    goto LABEL_19;
  }

  operator delete(v28);
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
  *(a1 + 192) = dispatch_source_create(MEMORY[0x29EDCA5D0], 0, 0, v25);
  *(a1 + 200) = 0;
  return a1;
}

void sub_297949B38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
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

void sub_297949BD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    JUMPOUT(0x297949BC8);
  }

  JUMPOUT(0x297949BCCLL);
}

void support::misc::safe_timer::start_sync(support::misc::safe_timer *this)
{
  v32 = *MEMORY[0x29EDCA608];
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
      _os_log_error_impl(&dword_297948000, v10, OS_LOG_TYPE_ERROR, "error: '%s' already active", buf, 0xCu);
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
    MEMORY[0x29C276780](exception, buf);
    __cxa_throw(exception, MEMORY[0x29EDC9470], MEMORY[0x29EDC9358]);
  }

  *buf = 0;
  _os_log_debug_impl(&dword_297948000, v2, OS_LOG_TYPE_DEBUG, "starting...", buf, 2u);
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
    handler[0] = MEMORY[0x29EDCA5F8];
    handler[1] = 0x40000000;
    handler[2] = ___ZN7support4misc10safe_timer10start_syncEv_block_invoke;
    handler[3] = &__block_descriptor_tmp;
    handler[4] = this;
    dispatch_source_set_event_handler(v7, handler);
    dispatch_activate(*(this + 24));
  }

  *(this + 100) = 1;
  v8 = *MEMORY[0x29EDCA608];
}

void sub_297949E98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
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
    _os_log_debug_impl(&dword_297948000, v2, OS_LOG_TYPE_DEBUG, "fired", v5, 2u);
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
          _os_log_debug_impl(&dword_297948000, v3, OS_LOG_TYPE_DEBUG, "stopping...", buf, 2u);
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

void support::misc::safe_timer::stop_sync(dispatch_queue_t *this)
{
  dispatch_assert_queue_V2(this[23]);
  if (*(this + 200) == 1)
  {
    isa = this[13]->isa;
    if (os_log_type_enabled(isa, OS_LOG_TYPE_DEBUG))
    {
      *v3 = 0;
      _os_log_debug_impl(&dword_297948000, isa, OS_LOG_TYPE_DEBUG, "stopping...", v3, 2u);
    }

    dispatch_suspend(this[24]);
    *(this + 200) = 2;
  }
}

void support::misc::safe_timer::start(support::misc::safe_timer *this)
{
  v2 = *(this + 23);
  if (v2 == dispatch_get_specific("CurrentQueue"))
  {

    support::misc::safe_timer::start_sync(this);
  }

  else
  {
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 0x40000000;
    block[2] = ___ZN7support4misc10safe_timer5startEv_block_invoke;
    block[3] = &__block_descriptor_tmp_8;
    block[4] = this;
    dispatch_sync(v2, block);
  }
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
        _os_log_debug_impl(&dword_297948000, v3, OS_LOG_TYPE_DEBUG, "stopping...", buf, 2u);
      }

      dispatch_suspend(*(this + 24));
      *(this + 200) = 2;
    }
  }

  else
  {
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 0x40000000;
    block[2] = ___ZN7support4misc10safe_timer4stopEv_block_invoke;
    block[3] = &__block_descriptor_tmp_9;
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
      _os_log_debug_impl(&dword_297948000, v2, OS_LOG_TYPE_DEBUG, "stopping...", v3, 2u);
    }

    dispatch_suspend(*(v1 + 192));
    *(v1 + 200) = 2;
  }
}

void support::misc::safe_timer::restart(support::misc::safe_timer *this)
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
        _os_log_debug_impl(&dword_297948000, v3, OS_LOG_TYPE_DEBUG, "stopping...", buf, 2u);
      }

      dispatch_suspend(*(this + 24));
      *(this + 200) = 2;
    }

    v4 = *(this + 23);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 0x40000000;
    block[2] = ___ZN7support4misc10safe_timer7restartEv_block_invoke;
    block[3] = &__block_descriptor_tmp_10;
    block[4] = this;
    dispatch_async(v4, block);
  }

  else
  {
    v5[0] = MEMORY[0x29EDCA5F8];
    v5[1] = 0x40000000;
    v5[2] = ___ZN7support4misc10safe_timer7restartEv_block_invoke_2;
    v5[3] = &__block_descriptor_tmp_11;
    v5[4] = this;
    dispatch_sync(v2, v5);
  }
}

void ___ZN7support4misc10safe_timer7restartEv_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  dispatch_assert_queue_V2(*(v1 + 184));
  if (*(v1 + 200) == 1)
  {
    v2 = **(v1 + 104);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      *v3 = 0;
      _os_log_debug_impl(&dword_297948000, v2, OS_LOG_TYPE_DEBUG, "stopping...", v3, 2u);
    }

    dispatch_suspend(*(v1 + 192));
    *(v1 + 200) = 2;
  }

  support::misc::safe_timer::start_sync(v1);
}

uint64_t support::misc::safe_timer::has_fired(support::misc::safe_timer *this)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v1 = *(this + 23);
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 1107296256;
  v4[2] = ___ZNK7support4misc10safe_timer9has_firedEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_12_1;
  v4[4] = &v5;
  v4[5] = this;
  dispatch_sync(v1, v4);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t support::misc::safe_timer::has_started(support::misc::safe_timer *this)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v1 = *(this + 23);
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 1107296256;
  v4[2] = ___ZNK7support4misc10safe_timer11has_startedEv_block_invoke;
  v4[3] = &__block_descriptor_tmp_15;
  v4[4] = &v5;
  v4[5] = this;
  dispatch_sync(v1, v4);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void support::misc::safe_timer::~safe_timer(support::misc::safe_timer *this)
{
  *this = &unk_2A1E58E38;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  if (*(this + 23))
  {
    support::misc::safe_timer::stop(this);
    v2 = *(this + 23);
    v7[0] = MEMORY[0x29EDCA5F8];
    v7[1] = 1107296256;
    v7[2] = ___ZN7support4misc10safe_timerD2Ev_block_invoke;
    v7[3] = &__block_descriptor_tmp_18;
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
    *(this + 7) = &unk_2A1E58EF8;
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

    *(this + 7) = &unk_2A1E58EF8;
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

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_29EE81848, MEMORY[0x29EDC9348]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x29EDC95D8] + 16);
  return result;
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v5 = this;
    v6 = __s;
    if ((__sz | 7) == 0x17)
    {
      v7 = 25;
    }

    else
    {
      v7 = (__sz | 7) + 1;
    }

    this = operator new(v7);
    v5->__r_.__value_.__l.__size_ = __sz;
    v5->__r_.__value_.__r.__words[2] = v7 | 0x8000000000000000;
    v5->__r_.__value_.__r.__words[0] = this;
    __s = v6;
    v4 = __sz + 1;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = __sz;
    v4 = __sz + 1;
  }

  memmove(this, __s, v4);
}

uint64_t ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>::~PthreadMutexGuardPolicy(uint64_t a1)
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

void std::__throw_bad_function_call[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x29EDC9588] + 16;
  __cxa_throw(exception, MEMORY[0x29EDC9450], MEMORY[0x29EDC93B0]);
}

uint64_t __cxx_global_var_init()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>::~PthreadMutexGuardPolicy, &ctu::Singleton<support::log::shared_stdio,support::log::shared_stdio,ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>>::sInstance, &dword_297948000);
  }

  return result;
}

uint64_t support::transport::ARI::initRT(support::transport::ARI *this, char *__s, dispatch_queue_s *a3)
{
  strcpy(&v51, "com.apple.ARITransport");
  *(&v51.__r_.__value_.__s + 23) = 22;
  if (!__s || !*__s)
  {
    v24 = *(this + 13);
    LOBYTE(rep) = 1;
    v25 = (*(*v24 + 16))(v24, 1, **(this + 10));
    if (v25)
    {
      if (*(v24 + 17))
      {
        support::log::buffer::borrow(v25);
        v26 = 2;
      }

      else
      {
        v26 = 0;
      }

      if (v26 | os_log_type_enabled(**(this + 10), OS_LOG_TYPE_ERROR))
      {
        LOWORD(__p[0]) = 0;
        v39 = _os_log_send_and_compose_impl();
        if (v39)
        {
          v40 = v39;
          __dst.__r_.__value_.__l.__data_ = std::chrono::system_clock::now().__d_.__rep_;
          __p[0] = &unk_2A1E59028;
          __p[1] = this + 40;
          v49 = &rep;
          p_dst = &__dst;
          support::log::manager::message_delegates(v24, __p, v40);
        }
      }
    }

    goto LABEL_77;
  }

  v6 = strlen(__s);
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
    __dst.__r_.__value_.__l.__size_ = v7;
    __dst.__r_.__value_.__r.__words[2] = v9 | 0x8000000000000000;
    __dst.__r_.__value_.__r.__words[0] = v8;
    goto LABEL_11;
  }

  *(&__dst.__r_.__value_.__s + 23) = v6;
  v8 = &__dst;
  if (v6)
  {
LABEL_11:
    memcpy(v8, __s, v7);
  }

  v8->__r_.__value_.__s.__data_[v7] = 0;
  v10 = std::string::insert(&__dst, 0, ".", 1uLL);
  v11 = *&v10->__r_.__value_.__l.__data_;
  v49 = v10->__r_.__value_.__r.__words[2];
  *__p = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v49) >= 0)
  {
    v12 = __p;
  }

  else
  {
    v12 = __p[0];
  }

  if (SHIBYTE(v49) >= 0)
  {
    v13 = HIBYTE(v49);
  }

  else
  {
    v13 = __p[1];
  }

  std::string::append(&v51, v12, v13);
  if (SHIBYTE(v49) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_20;
    }
  }

  else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_20;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);
LABEL_20:
  if ((v51.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = &v51;
  }

  else
  {
    v14 = v51.__r_.__value_.__r.__words[0];
  }

  v15 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v16 = dispatch_queue_create(v14, v15);
  v17 = *(this + 1);
  *(this + 1) = v16;
  if (v17)
  {
    dispatch_release(v17);
    v16 = *(this + 1);
  }

  if (!v16)
  {
    v27 = *(this + 13);
    LOBYTE(rep) = 1;
    v28 = (*(*v27 + 16))(v27, 1, **(this + 10));
    if (v28)
    {
      if (*(v27 + 17))
      {
        support::log::buffer::borrow(v28);
        v29 = 2;
      }

      else
      {
        v29 = 0;
      }

      if (v29 | os_log_type_enabled(**(this + 10), OS_LOG_TYPE_ERROR))
      {
        LOWORD(__p[0]) = 0;
        v41 = _os_log_send_and_compose_impl();
        if (v41)
        {
          goto LABEL_76;
        }
      }
    }

    goto LABEL_77;
  }

  if (AriHost::Init(v16))
  {
    v27 = *(this + 13);
    LOBYTE(rep) = 1;
    v30 = (*(*v27 + 16))(v27, 1, **(this + 10));
    if (v30)
    {
      if (*(v27 + 17))
      {
        support::log::buffer::borrow(v30);
        v31 = 2;
      }

      else
      {
        v31 = 0;
      }

      if (v31 | os_log_type_enabled(**(this + 10), OS_LOG_TYPE_ERROR))
      {
        LOWORD(__p[0]) = 0;
        v41 = _os_log_send_and_compose_impl();
        if (v41)
        {
          goto LABEL_76;
        }
      }
    }

    goto LABEL_77;
  }

  if (AriHost::RegisterClient(__s, this + 16, *(this + 1), a3))
  {
    v27 = *(this + 13);
    LOBYTE(rep) = 1;
    v32 = (*(*v27 + 16))(v27, 1, **(this + 10));
    if (v32)
    {
      if (*(v27 + 17))
      {
        support::log::buffer::borrow(v32);
        v33 = 2;
      }

      else
      {
        v33 = 0;
      }

      if (v33 | os_log_type_enabled(**(this + 10), OS_LOG_TYPE_ERROR))
      {
        LOWORD(__p[0]) = 0;
        v41 = _os_log_send_and_compose_impl();
        if (v41)
        {
LABEL_76:
          v42 = v41;
          __dst.__r_.__value_.__l.__data_ = std::chrono::system_clock::now().__d_.__rep_;
          __p[0] = &unk_2A1E59028;
          __p[1] = this + 40;
          v49 = &rep;
          p_dst = &__dst;
          support::log::manager::message_delegates(v27, __p, v42);
        }
      }
    }

LABEL_77:
    v22 = 0;
    if ((SHIBYTE(v51.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return v22;
    }

    goto LABEL_41;
  }

  v18 = operator new(0x20uLL);
  *v18 = 0u;
  *(v18 + 1) = 0u;
  __dst.__r_.__value_.__r.__words[0] = v18;
  v19 = *(this + 4);
  if (KTLInitOptions())
  {
    if (KTLOpenChannel())
    {
      __dst.__r_.__value_.__r.__words[0] = 0;
      v20 = *(this + 3);
      *(this + 3) = v18;
      if (!v20)
      {
        v22 = 1;
        if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_41;
        }

        return v22;
      }

      if (v20[1])
      {
        TelephonyUtilTransportFree();
        v21 = v20[1];
        v22 = 1;
        if (v21)
        {
          goto LABEL_33;
        }
      }

      else
      {
        v22 = 1;
      }

      goto LABEL_40;
    }

    v34 = *(this + 13);
    v46 = 1;
    v37 = (*(*v34 + 16))(v34, 1, **(this + 10));
    if (v37)
    {
      if (*(v34 + 17))
      {
        support::log::buffer::borrow(v37);
        v38 = 2;
      }

      else
      {
        v38 = 0;
      }

      if (v38 | os_log_type_enabled(**(this + 10), OS_LOG_TYPE_ERROR))
      {
        LOWORD(__p[0]) = 0;
        v43 = _os_log_send_and_compose_impl();
        if (v43)
        {
          goto LABEL_86;
        }
      }
    }
  }

  else
  {
    v34 = *(this + 13);
    v46 = 1;
    v35 = (*(*v34 + 16))(v34, 1, **(this + 10));
    if (v35)
    {
      if (*(v34 + 17))
      {
        support::log::buffer::borrow(v35);
        v36 = 2;
      }

      else
      {
        v36 = 0;
      }

      if (v36 | os_log_type_enabled(**(this + 10), OS_LOG_TYPE_ERROR))
      {
        LOWORD(__p[0]) = 0;
        v43 = _os_log_send_and_compose_impl();
        if (v43)
        {
LABEL_86:
          v44 = v43;
          rep = std::chrono::system_clock::now().__d_.__rep_;
          __p[0] = &unk_2A1E59028;
          __p[1] = this + 40;
          v49 = &v46;
          p_dst = &rep;
          support::log::manager::message_delegates(v34, __p, v44);
        }
      }
    }
  }

  __dst.__r_.__value_.__r.__words[0] = 0;
  if (!v18[1])
  {
    v22 = 0;
    operator delete(v18);
    if ((SHIBYTE(v51.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return v22;
    }

    goto LABEL_41;
  }

  TelephonyUtilTransportFree();
  v22 = 0;
  v21 = v18[1];
  v20 = v18;
  if (v21)
  {
LABEL_33:
    operator delete(v21);
    operator delete(v20);
    if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_41;
    }

    return v22;
  }

LABEL_40:
  operator delete(v20);
  if (SHIBYTE(v51.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_41:
    operator delete(v51.__r_.__value_.__l.__data_);
  }

  return v22;
}

void sub_29794B6E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  std::unique_ptr<KTLOptions,support::transport::ARI::KTLOptionsDestructor>::~unique_ptr[abi:ne200100](&a14);
  if (a32 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void **std::unique_ptr<KTLOptions,support::transport::ARI::KTLOptionsDestructor>::~unique_ptr[abi:ne200100](void **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    if (v1[1])
    {
      TelephonyUtilTransportFree();
      v3 = v1[1];
      if (v3)
      {
        operator delete(v3);
      }
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

uint64_t support::transport::ARI::initLibTU(support::transport::ARI *this, const char *__s, int a3)
{
  strcpy(&v59, "com.apple.ARITransport");
  *(&v59.__r_.__value_.__s + 23) = 22;
  v58 = 0;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v53 = 0u;
  if (!__s || !*__s)
  {
    v23 = *(this + 13);
    LOBYTE(rep) = 1;
    v24 = (*(*v23 + 16))(v23, 1, **(this + 10));
    if (v24)
    {
      if (*(v23 + 17))
      {
        support::log::buffer::borrow(v24);
        v25 = 2;
      }

      else
      {
        v25 = 0;
      }

      if (v25 | os_log_type_enabled(**(this + 10), OS_LOG_TYPE_ERROR))
      {
        LOWORD(__p[0]) = 0;
        v37 = _os_log_send_and_compose_impl();
        if (v37)
        {
          v38 = v37;
          __dst.__r_.__value_.__l.__data_ = std::chrono::system_clock::now().__d_.__rep_;
          __p[0] = &unk_2A1E59028;
          __p[1] = this + 40;
          v51 = &rep;
          p_dst = &__dst;
          support::log::manager::message_delegates(v23, __p, v38);
        }
      }
    }

LABEL_79:
    result = 0;
    if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_38;
    }

    return result;
  }

  v6 = strlen(__s);
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
    __dst.__r_.__value_.__l.__size_ = v7;
    __dst.__r_.__value_.__r.__words[2] = v9 | 0x8000000000000000;
    __dst.__r_.__value_.__r.__words[0] = v8;
    goto LABEL_11;
  }

  *(&__dst.__r_.__value_.__s + 23) = v6;
  v8 = &__dst;
  if (v6)
  {
LABEL_11:
    memcpy(v8, __s, v7);
  }

  v8->__r_.__value_.__s.__data_[v7] = 0;
  v10 = std::string::insert(&__dst, 0, ".", 1uLL);
  v11 = *&v10->__r_.__value_.__l.__data_;
  v51 = v10->__r_.__value_.__r.__words[2];
  *__p = v11;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v51) >= 0)
  {
    v12 = __p;
  }

  else
  {
    v12 = __p[0];
  }

  if (SHIBYTE(v51) >= 0)
  {
    v13 = HIBYTE(v51);
  }

  else
  {
    v13 = __p[1];
  }

  std::string::append(&v59, v12, v13);
  if (SHIBYTE(v51) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_20;
    }
  }

  else if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_20;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);
LABEL_20:
  if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v14 = &v59;
  }

  else
  {
    v14 = v59.__r_.__value_.__r.__words[0];
  }

  v15 = dispatch_queue_create(v14, 0);
  v16 = *(this + 1);
  *(this + 1) = v15;
  if (v16)
  {
    dispatch_release(v16);
    v15 = *(this + 1);
  }

  if (!v15)
  {
    v26 = *(this + 13);
    LOBYTE(rep) = 1;
    v27 = (*(*v26 + 16))(v26, 1, **(this + 10));
    if (v27)
    {
      if (*(v26 + 17))
      {
        support::log::buffer::borrow(v27);
        v28 = 2;
      }

      else
      {
        v28 = 0;
      }

      if (v28 | os_log_type_enabled(**(this + 10), OS_LOG_TYPE_ERROR))
      {
        LOWORD(__p[0]) = 0;
        v39 = _os_log_send_and_compose_impl();
        if (v39)
        {
          v40 = v39;
          __dst.__r_.__value_.__l.__data_ = std::chrono::system_clock::now().__d_.__rep_;
          __p[0] = &unk_2A1E59028;
          __p[1] = this + 40;
          v51 = &rep;
          p_dst = &__dst;
          support::log::manager::message_delegates(v26, __p, v40);
        }
      }
    }

    goto LABEL_79;
  }

  TelephonyBasebandPCITransportInitParameters();
  v17 = *(this + 1);
  DWORD2(v54) = a3;
  LODWORD(v55) = v55 | 1;
  LODWORD(v53) = 8;
  v48[0] = MEMORY[0x29EDCA5F8];
  v48[1] = 0x40000000;
  v48[2] = ___ZN7support9transport3ARI9initLibTUEPKcjj_block_invoke;
  v48[3] = &__block_descriptor_tmp_0;
  v48[4] = this;
  __dst.__r_.__value_.__r.__words[0] = 0;
  *(&v53 + 1) = v17;
  *&v54 = v48;
  operator new(0x58uLL);
  if ((TelephonyBasebandPCITransportCreate() & 1) == 0)
  {
    v29 = *(this + 13);
    v47 = 1;
    v30 = (*(*v29 + 16))(v29, 1, **(this + 10));
    if (v30)
    {
      if (*(v29 + 17))
      {
        support::log::buffer::borrow(v30);
        v31 = 2;
      }

      else
      {
        v31 = 0;
      }

      if (v31 | os_log_type_enabled(**(this + 10), OS_LOG_TYPE_ERROR))
      {
        LOWORD(__p[0]) = 0;
        v41 = _os_log_send_and_compose_impl();
        if (v41)
        {
          v42 = v41;
          rep = std::chrono::system_clock::now().__d_.__rep_;
          __p[0] = &unk_2A1E59028;
          __p[1] = this + 40;
          v51 = &v47;
          p_dst = &rep;
          support::log::manager::message_delegates(v29, __p, v42);
        }
      }
    }

    goto LABEL_79;
  }

  v18 = operator new(0x20uLL);
  *v18 = 0u;
  v18[1] = 0u;
  __dst.__r_.__value_.__r.__words[0] = v18;
  if ((KTLInitOptions() & 1) == 0)
  {
    v32 = *(this + 13);
    v47 = 1;
    v33 = (*(*v32 + 16))(v32, 1, **(this + 10));
    if (!v33)
    {
      goto LABEL_75;
    }

    if (*(v32 + 17))
    {
      support::log::buffer::borrow(v33);
      v34 = 2;
    }

    else
    {
      v34 = 0;
    }

    if (!(v34 | os_log_type_enabled(**(this + 10), OS_LOG_TYPE_ERROR)))
    {
      goto LABEL_75;
    }

    LOWORD(__p[0]) = 0;
    v43 = _os_log_send_and_compose_impl();
    if (!v43)
    {
      goto LABEL_75;
    }

LABEL_74:
    v44 = v43;
    rep = std::chrono::system_clock::now().__d_.__rep_;
    __p[0] = &unk_2A1E59028;
    __p[1] = this + 40;
    v51 = &v47;
    p_dst = &rep;
    support::log::manager::message_delegates(v32, __p, v44);
LABEL_75:
    __dst.__r_.__value_.__r.__words[0] = 0;
    if (*(v18 + 1))
    {
      TelephonyUtilTransportFree();
      v45 = *(v18 + 1);
      if (v45)
      {
        operator delete(v45);
      }
    }

    operator delete(v18);
    goto LABEL_79;
  }

  if ((KTLOpenChannel() & 1) == 0)
  {
    v32 = *(this + 13);
    v47 = 1;
    v35 = (*(*v32 + 16))(v32, 1, **(this + 10));
    if (!v35)
    {
      goto LABEL_75;
    }

    if (*(v32 + 17))
    {
      support::log::buffer::borrow(v35);
      v36 = 2;
    }

    else
    {
      v36 = 0;
    }

    if (!(v36 | os_log_type_enabled(**(this + 10), OS_LOG_TYPE_ERROR)))
    {
      goto LABEL_75;
    }

    LOWORD(__p[0]) = 0;
    v43 = _os_log_send_and_compose_impl();
    if (!v43)
    {
      goto LABEL_75;
    }

    goto LABEL_74;
  }

  __dst.__r_.__value_.__r.__words[0] = 0;
  v19 = *(this + 3);
  *(this + 3) = v18;
  if (!v19)
  {
    result = 1;
    if ((SHIBYTE(v59.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return result;
    }

    goto LABEL_38;
  }

  if (v19[1])
  {
    TelephonyUtilTransportFree();
    v20 = v19[1];
    if (v20)
    {
      operator delete(v20);
    }
  }

  operator delete(v19);
  result = 1;
  if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_38:
    v22 = result;
    operator delete(v59.__r_.__value_.__l.__data_);
    return v22;
  }

  return result;
}

void sub_29794C090(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  std::unique_ptr<KTLOptions,support::transport::ARI::KTLOptionsDestructor>::~unique_ptr[abi:ne200100](&a18);
  if (*(v29 - 73) < 0)
  {
    operator delete(*(v29 - 96));
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void ___ZN7support9transport3ARI9initLibTUEPKcjj_block_invoke(uint64_t a1, uint64_t a2)
{
  v29 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 32);
  v3 = *(v2 + 104);
  if (a2 == 1)
  {
    v24 = 1;
    v6 = (*(*v3 + 16))(v3, a2, **(v2 + 80));
    if (v6)
    {
      if (v3[17])
      {
        v7 = 2;
        support::log::buffer::borrow(v6);
      }

      else
      {
        v7 = 0;
      }

      if (v7 | os_log_type_enabled(**(v2 + 80), OS_LOG_TYPE_ERROR))
      {
        LOWORD(v25) = 0;
        v16 = _os_log_send_and_compose_impl();
        if (v16)
        {
          v12 = v16;
          v13.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
          rep = v13.__d_.__rep_;
          v25 = &unk_2A1E59028;
          v26 = v2 + 40;
          v27 = &v24;
          p_rep = &rep;
          v17 = v3 + 15;
          for (i = v3[16]; i != v17; i = *(i + 8))
          {
            v13.__d_.__rep_ = (***(i + 16))(*(i + 16), &v25, v12);
          }

          goto LABEL_29;
        }
      }
    }
  }

  else if (a2)
  {
    v8 = a2;
    v24 = 1;
    v9 = (*(*v3 + 16))(v3, 1, **(v2 + 80));
    if (v9)
    {
      if (v3[17])
      {
        v10 = 2;
        support::log::buffer::borrow(v9);
      }

      else
      {
        v10 = 0;
      }

      if (v10 | os_log_type_enabled(**(v2 + 80), OS_LOG_TYPE_ERROR))
      {
        LODWORD(v25) = 67109120;
        HIDWORD(v25) = v8;
        v19 = _os_log_send_and_compose_impl();
        if (v19)
        {
          v12 = v19;
          v13.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
          rep = v13.__d_.__rep_;
          v25 = &unk_2A1E59028;
          v26 = v2 + 40;
          v27 = &v24;
          p_rep = &rep;
          v20 = v3 + 15;
          for (j = v3[16]; j != v20; j = *(j + 8))
          {
            v13.__d_.__rep_ = (***(j + 16))(*(j + 16), &v25, v12);
          }

          goto LABEL_29;
        }
      }
    }
  }

  else
  {
    v24 = 1;
    v4 = (*(*v3 + 16))(v3, 1, **(v2 + 80));
    if (v4)
    {
      if (v3[17])
      {
        v5 = 2;
        support::log::buffer::borrow(v4);
      }

      else
      {
        v5 = 0;
      }

      if (v5 | os_log_type_enabled(**(v2 + 80), OS_LOG_TYPE_ERROR))
      {
        LOWORD(v25) = 0;
        v11 = _os_log_send_and_compose_impl();
        if (v11)
        {
          v12 = v11;
          v13.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
          rep = v13.__d_.__rep_;
          v25 = &unk_2A1E59028;
          v26 = v2 + 40;
          v27 = &v24;
          p_rep = &rep;
          v14 = v3 + 15;
          for (k = v3[16]; k != v14; k = *(k + 8))
          {
            v13.__d_.__rep_ = (***(k + 16))(*(k + 16), &v25, v12);
          }

LABEL_29:
          support::log::manager::release_log_buffer(v13.__d_.__rep_, v12);
        }
      }
    }
  }

  v22 = *MEMORY[0x29EDCA608];
}

void support::transport::ARI::create(support::transport::ARI *this@<X0>, dispatch_queue_s *a2@<X1>, char a3@<W3>, const support::log::manager *a4@<X4>, support::transport::ARI **a5@<X8>)
{
  *&v11 = 0xAAAAAAAAAAAAAAAALL;
  *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v38 = v11;
  v39 = v11;
  v37[1] = v11;
  v37[2] = v11;
  v37[0] = v11;
  v35 = operator new(0x30uLL);
  v36 = xmmword_29797C930;
  strcpy(v35, "com.apple.telephony.basebandservices.support");
  v34 = 10;
  strcpy(__p, "ari.create");
  support::log::client::client(v37, &v35, __p, a4);
  if (v34 < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v36) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_10:
    operator delete(v35);
    goto LABEL_3;
  }

  if (SHIBYTE(v36) < 0)
  {
    goto LABEL_10;
  }

LABEL_3:
  *a5 = 0xAAAAAAAAAAAAAAAALL;
  v12 = operator new(0x70uLL);
  support::transport::ARI::ARI(v12, a4);
  *a5 = v12;
  v13 = getprogname();
  if (!strncmp(v13, "CommCenter", 0xAuLL))
  {
    goto LABEL_13;
  }

  v14 = getprogname();
  if (!strncmp(v14, "CommCenter-asan", 0xFuLL))
  {
    goto LABEL_13;
  }

  v15 = getprogname();
  if (!strncmp(v15, "basebandd", 9uLL))
  {
    goto LABEL_13;
  }

  HIBYTE(v28) = 10;
  strcpy(v27, "CommCenter");
  if ((ctu::isProcessRunning() & 1) == 0)
  {
    v32 = 9;
    strcpy(v31, "basebandd");
    isProcessRunning = ctu::isProcessRunning();
    if (SHIBYTE(v28) < 0)
    {
      goto LABEL_19;
    }

    goto LABEL_12;
  }

  isProcessRunning = 1;
  if ((SHIBYTE(v28) & 0x80000000) == 0)
  {
LABEL_12:
    if (!isProcessRunning)
    {
      goto LABEL_20;
    }

LABEL_13:
    if (a3)
    {
      if (support::transport::ARI::initRT(v12, this, a2))
      {
        goto LABEL_15;
      }

      v30 = 1;
      v18 = *(&v39 + 1);
      v23 = (*(**(&v39 + 1) + 16))(*(&v39 + 1), 1, *v38);
      if (!v23)
      {
        goto LABEL_38;
      }

      if (*(v18 + 17))
      {
        support::log::buffer::borrow(v23);
        v24 = 2;
      }

      else
      {
        v24 = 0;
      }

      if (!(v24 | os_log_type_enabled(*v38, OS_LOG_TYPE_ERROR)))
      {
        goto LABEL_38;
      }

      LOWORD(v27[0]) = 0;
      v25 = _os_log_send_and_compose_impl();
      if (!v25)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v30 = 1;
      v18 = *(&v39 + 1);
      v21 = (*(**(&v39 + 1) + 16))(*(&v39 + 1), 1, *v38);
      if (!v21)
      {
        goto LABEL_38;
      }

      if (*(v18 + 17))
      {
        support::log::buffer::borrow(v21);
        v22 = 2;
      }

      else
      {
        v22 = 0;
      }

      if (!(v22 | os_log_type_enabled(*v38, OS_LOG_TYPE_ERROR)))
      {
        goto LABEL_38;
      }

      LOWORD(v27[0]) = 0;
      v25 = _os_log_send_and_compose_impl();
      if (!v25)
      {
        goto LABEL_38;
      }
    }

    goto LABEL_37;
  }

LABEL_19:
  operator delete(v27[0]);
  if (isProcessRunning)
  {
    goto LABEL_13;
  }

LABEL_20:
  if (support::transport::ARI::initLibTU(v12, this, a2))
  {
    goto LABEL_15;
  }

  v30 = 1;
  v18 = *(&v39 + 1);
  v19 = (*(**(&v39 + 1) + 16))(*(&v39 + 1), 1, *v38);
  if (v19)
  {
    if (*(v18 + 17))
    {
      support::log::buffer::borrow(v19);
      v20 = 2;
    }

    else
    {
      v20 = 0;
    }

    if (v20 | os_log_type_enabled(*v38, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v27[0]) = 0;
      v25 = _os_log_send_and_compose_impl();
      if (v25)
      {
LABEL_37:
        v26 = v25;
        v31[0] = std::chrono::system_clock::now().__d_.__rep_;
        v27[0] = &unk_2A1E59028;
        v27[1] = v37 + 8;
        v28 = &v30;
        v29 = v31;
        support::log::manager::message_delegates(v18, v27, v26);
      }
    }
  }

LABEL_38:
  *a5 = 0;
  (*(*v12 + 8))(v12);
LABEL_15:
  *&v37[0] = &unk_2A1E58EF8;
  v17 = v39;
  if (v39)
  {
    if (!atomic_fetch_add((v39 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v17->__on_zero_shared)(v17);
      std::__shared_weak_count::__release_weak(v17);
    }
  }
}

void sub_29794CC00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, char a37)
{
  *v37 = 0;
  (*(*v38 + 8))(v38);
  support::log::client::~client(&a37);
  _Unwind_Resume(a1);
}

support::transport::ARI *support::transport::ARI::ARI(support::transport::ARI *this, const support::log::manager *a2)
{
  *this = &unk_2A1E58F28;
  *(this + 1) = 0;
  *(this + 4) = 0;
  *(this + 3) = 0;
  v7 = operator new(0x30uLL);
  v8 = xmmword_29797C930;
  strcpy(v7, "com.apple.telephony.basebandservices.support");
  v6 = 3;
  LODWORD(__p) = 6910561;
  support::log::client::client(this + 4, &v7, &__p, a2);
  if (v6 < 0)
  {
    operator delete(__p);
    if ((SHIBYTE(v8) & 0x80000000) == 0)
    {
      return this;
    }
  }

  else if ((SHIBYTE(v8) & 0x80000000) == 0)
  {
    return this;
  }

  operator delete(v7);
  return this;
}

void sub_29794CDF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a20 & 0x80000000) == 0)
    {
LABEL_3:
      std::unique_ptr<KTLOptions,support::transport::ARI::KTLOptionsDestructor>::~unique_ptr[abi:ne200100](v21);
      v23 = *(v20 + 8);
      if (!v23)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a20 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a15);
  std::unique_ptr<KTLOptions,support::transport::ARI::KTLOptionsDestructor>::~unique_ptr[abi:ne200100](v21);
  v23 = *(v20 + 8);
  if (!v23)
  {
LABEL_4:
    _Unwind_Resume(a1);
  }

LABEL_7:
  dispatch_release(v23);
  _Unwind_Resume(a1);
}

void support::transport::ARI::~ARI(support::transport::ARI *this)
{
  *this = &unk_2A1E58F28;
  if (*(this + 3))
  {
    KTLCloseChannel();
  }

  v2 = *(this + 4);
  if (v2)
  {
    AriHost::DeregisterClient(v2);
  }

  *(this + 4) = &unk_2A1E58EF8;
  v3 = *(this + 12);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    v4 = *(this + 3);
    *(this + 3) = 0;
    if (!v4)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v4 = *(this + 3);
    *(this + 3) = 0;
    if (!v4)
    {
      goto LABEL_12;
    }
  }

  if (v4[1])
  {
    TelephonyUtilTransportFree();
    v5 = v4[1];
    if (v5)
    {
      operator delete(v5);
    }
  }

  operator delete(v4);
LABEL_12:
  v6 = *(this + 1);
  if (v6)
  {
    dispatch_release(v6);
  }
}

{
  support::transport::ARI::~ARI(this);

  operator delete(v1);
}

support::transport::ARI *support::transport::AriRT::AriRT(support::transport::AriRT *this, const support::log::manager *a2)
{
  result = support::transport::ARI::ARI(this, a2);
  *result = &unk_2A1E58F48;
  return result;
}

{
  result = support::transport::ARI::ARI(this, a2);
  *result = &unk_2A1E58F48;
  return result;
}

void support::transport::AriRT::create(support::transport::AriRT *this@<X0>, dispatch_queue_s *a2@<X1>, const support::log::manager *a3@<X3>, support::transport::ARI **a4@<X8>)
{
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v25 = v9;
  v26 = v9;
  v24[2] = v9;
  v24[0] = v9;
  v24[1] = v9;
  v22 = operator new(0x30uLL);
  v23 = xmmword_29797C930;
  strcpy(v22, "com.apple.telephony.basebandservices.support");
  v21 = 13;
  strcpy(__p, "ari.rt.create");
  support::log::client::client(v24, &v22, __p, a3);
  if (v21 < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v23) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((SHIBYTE(v23) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(v22);
LABEL_3:
  *a4 = 0xAAAAAAAAAAAAAAAALL;
  v10 = operator new(0x70uLL);
  support::transport::ARI::ARI(v10, a3);
  *v10 = &unk_2A1E58F48;
  *a4 = v10;
  if (support::transport::ARI::initRT(v10, this, a2))
  {
    *&v24[0] = &unk_2A1E58EF8;
    v11 = v26;
    if (!v26)
    {
      return;
    }

    goto LABEL_5;
  }

  v19 = 1;
  v12 = *(&v26 + 1);
  v13 = (*(**(&v26 + 1) + 16))(*(&v26 + 1), 1, *v25);
  if (v13)
  {
    if (*(v12 + 17))
    {
      support::log::buffer::borrow(v13);
      v14 = 2;
    }

    else
    {
      v14 = 0;
    }

    if (v14 | os_log_type_enabled(*v25, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v18[0]) = 0;
      v15 = _os_log_send_and_compose_impl();
      if (v15)
      {
        v16 = v15;
        rep = std::chrono::system_clock::now().__d_.__rep_;
        v18[0] = &unk_2A1E59028;
        v18[1] = v24 + 8;
        v18[2] = &v19;
        v18[3] = &rep;
        support::log::manager::message_delegates(v12, v18, v16);
      }
    }
  }

  *a4 = 0;
  (*(*v10 + 8))(v10);
  *&v24[0] = &unk_2A1E58EF8;
  v11 = v26;
  if (v26)
  {
LABEL_5:
    if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
    }
  }
}

void sub_29794D338(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  *v17 = 0;
  (*(*v18 + 8))(v18);
  support::log::client::~client(va);
  _Unwind_Resume(a1);
}

void sub_29794D39C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a30 < 0)
  {
    operator delete(a25);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x29794D394);
}

support::transport::ARI *support::transport::AriSelfHostedRT::AriSelfHostedRT(support::transport::AriSelfHostedRT *this, const support::log::manager *a2)
{
  result = support::transport::ARI::ARI(this, a2);
  *(result + 14) = 0;
  *(result + 15) = 0;
  *result = &unk_2A1E58F68;
  *(result + 32) = -1;
  *(result + 17) = 0;
  return result;
}

{
  result = support::transport::ARI::ARI(this, a2);
  *(result + 14) = 0;
  *(result + 15) = 0;
  *result = &unk_2A1E58F68;
  *(result + 32) = -1;
  *(result + 17) = 0;
  return result;
}

void support::transport::AriSelfHostedRT::~AriSelfHostedRT(std::__shared_weak_count **this)
{
  *this = &unk_2A1E58F68;
  support::transport::AriSelfHostedRT::shutdownRTServer(this);
  v2 = this[17];
  if (v2)
  {
    dlclose(v2);
    this[17] = 0;
  }

  v3 = this[15];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  support::transport::ARI::~ARI(this);
}

{
  *this = &unk_2A1E58F68;
  support::transport::AriSelfHostedRT::shutdownRTServer(this);
  v2 = this[17];
  if (v2)
  {
    dlclose(v2);
    this[17] = 0;
  }

  v3 = this[15];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  support::transport::ARI::~ARI(this);
}

{
  *this = &unk_2A1E58F68;
  support::transport::AriSelfHostedRT::shutdownRTServer(this);
  v2 = this[17];
  if (v2)
  {
    dlclose(v2);
    this[17] = 0;
  }

  v3 = this[15];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  support::transport::ARI::~ARI(this);

  operator delete(v4);
}

void support::transport::AriSelfHostedRT::shutdownRTServer(support::transport::AriSelfHostedRT *this)
{
  v41 = *MEMORY[0x29EDCA608];
  if (*(this + 32))
  {
    goto LABEL_2;
  }

  v3 = *(this + 17);
  if (v3)
  {
    v4 = dlsym(v3, "AriHostRtShutdown");
    v5 = dlerror();
    if (v5)
    {
      v6 = v5;
      v7 = *(this + 13);
      v37 = 1;
      v8 = (*(*v7 + 16))(v7, 1, **(this + 10));
      if (v8)
      {
        if (v7[17])
        {
          v9 = 2;
          support::log::buffer::borrow(v8);
        }

        else
        {
          v9 = 0;
        }

        if (v9 | os_log_type_enabled(**(this + 10), OS_LOG_TYPE_ERROR))
        {
          LODWORD(v38) = 136315138;
          *(&v38 + 4) = v6;
          v22 = _os_log_send_and_compose_impl();
          if (v22)
          {
            v23 = v22;
            v24.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
            rep = v24.__d_.__rep_;
            *&v38 = &unk_2A1E59028;
            *(&v38 + 1) = this + 40;
            v39 = &v37;
            p_rep = &rep;
            v25 = v7 + 15;
            for (i = v7[16]; i != v25; i = *(i + 8))
            {
              v24.__d_.__rep_ = (***(i + 16))(*(i + 16), &v38, v23);
            }

LABEL_24:
            support::log::manager::release_log_buffer(v24.__d_.__rep_, v23);
          }
        }
      }
    }

    else
    {
      if (v4)
      {
        v13 = v4();
        v14 = *(this + 13);
        v15 = this + 40;
        if (v13)
        {
          v16 = v13;
          v37 = 1;
          v17 = (*(*v14 + 16))(v14, 1, **(this + 10));
          if (!v17)
          {
            goto LABEL_2;
          }

          if (*(v14 + 17))
          {
            v18 = 2;
            support::log::buffer::borrow(v17);
          }

          else
          {
            v18 = 0;
          }

          if (!(v18 | os_log_type_enabled(**(this + 10), OS_LOG_TYPE_ERROR)))
          {
            goto LABEL_2;
          }

          LODWORD(v38) = 67109120;
          DWORD1(v38) = v16;
          v32 = _os_log_send_and_compose_impl();
          if (!v32)
          {
            goto LABEL_2;
          }
        }

        else
        {
          v37 = 4;
          v30 = (*(*v14 + 16))(v14, 4, **(this + 10));
          if (!v30)
          {
            goto LABEL_2;
          }

          if (*(v14 + 17))
          {
            v31 = 2;
            support::log::buffer::borrow(v30);
          }

          else
          {
            v31 = 0;
          }

          if (!(v31 | os_log_type_enabled(**(this + 10), (*(v14 + 112) < 4u))))
          {
            goto LABEL_2;
          }

          LOWORD(v38) = 0;
          v32 = _os_log_send_and_compose_impl();
          if (!v32)
          {
            goto LABEL_2;
          }
        }

        v33 = v32;
        rep = std::chrono::system_clock::now().__d_.__rep_;
        *&v38 = &unk_2A1E59028;
        *(&v38 + 1) = v15;
        v39 = &v37;
        p_rep = &rep;
        support::log::manager::message_delegates(v14, &v38, v33);
        goto LABEL_2;
      }

      v19 = *(this + 13);
      v37 = 1;
      v20 = (*(*v19 + 16))(v19, 1, **(this + 10));
      if (v20)
      {
        if (*(v19 + 17))
        {
          v21 = 2;
          support::log::buffer::borrow(v20);
        }

        else
        {
          v21 = 0;
        }

        if (v21 | os_log_type_enabled(**(this + 10), OS_LOG_TYPE_ERROR))
        {
          LOWORD(v38) = 0;
          v34 = _os_log_send_and_compose_impl();
          if (v34)
          {
            v35 = v34;
            rep = std::chrono::system_clock::now().__d_.__rep_;
            *&v38 = &unk_2A1E59028;
            *(&v38 + 1) = this + 40;
            v39 = &v37;
            p_rep = &rep;
            support::log::manager::message_delegates(v19, &v38, v35);
          }
        }
      }
    }
  }

  else
  {
    v10 = *(this + 13);
    v37 = 1;
    v11 = (*(*v10 + 16))(v10, 1, **(this + 10));
    if (v11)
    {
      if (v10[17])
      {
        v12 = 2;
        support::log::buffer::borrow(v11);
      }

      else
      {
        v12 = 0;
      }

      if (v12 | os_log_type_enabled(**(this + 10), OS_LOG_TYPE_ERROR))
      {
        LOWORD(v38) = 0;
        v27 = _os_log_send_and_compose_impl();
        if (v27)
        {
          v23 = v27;
          v24.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
          rep = v24.__d_.__rep_;
          *&v38 = &unk_2A1E59028;
          *(&v38 + 1) = this + 40;
          v39 = &v37;
          p_rep = &rep;
          v28 = v10 + 15;
          for (j = v10[16]; j != v28; j = *(j + 8))
          {
            v24.__d_.__rep_ = (***(j + 16))(*(j + 16), &v38, v23);
          }

          goto LABEL_24;
        }
      }
    }
  }

LABEL_2:
  v1 = *MEMORY[0x29EDCA608];
}

void support::transport::AriSelfHostedRT::create(support::transport::AriSelfHostedRT *this@<X0>, dispatch_queue_s *a2@<X1>, const support::log::manager *a3@<X3>, support::transport::ARI **a4@<X8>)
{
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v27 = v9;
  v28 = v9;
  v26[2] = v9;
  v26[0] = v9;
  v26[1] = v9;
  v24 = operator new(0x30uLL);
  v25 = xmmword_29797C930;
  strcpy(v24, "com.apple.telephony.basebandservices.support");
  __p = operator new(0x20uLL);
  v23 = xmmword_29797C9C0;
  strcpy(__p, "ari.self.hosted.rt.create");
  support::log::client::client(v26, &v24, &__p, a3);
  if (SHIBYTE(v23) < 0)
  {
    operator delete(__p);
    if ((SHIBYTE(v25) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((SHIBYTE(v25) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(v24);
LABEL_3:
  *a4 = 0xAAAAAAAAAAAAAAAALL;
  v10 = operator new(0x90uLL);
  support::transport::ARI::ARI(v10, a3);
  *(v10 + 14) = 0;
  *(v10 + 15) = 0;
  *v10 = &unk_2A1E58F68;
  *(v10 + 32) = -1;
  *(v10 + 17) = 0;
  *a4 = v10;
  if (support::transport::AriSelfHostedRT::initRTServer(v10))
  {
    if (support::transport::ARI::initRT(v10, this, a2))
    {
      *&v26[0] = &unk_2A1E58EF8;
      v11 = v28;
      if (!v28)
      {
        return;
      }

      goto LABEL_6;
    }

    v21 = 1;
    v12 = *(&v28 + 1);
    v15 = (*(**(&v28 + 1) + 16))(*(&v28 + 1), 1, *v27);
    if (v15)
    {
      if (*(v12 + 17))
      {
        support::log::buffer::borrow(v15);
        v16 = 2;
      }

      else
      {
        v16 = 0;
      }

      if (v16 | os_log_type_enabled(*v27, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v20[0]) = 0;
        v17 = _os_log_send_and_compose_impl();
        if (v17)
        {
          goto LABEL_24;
        }
      }
    }
  }

  else
  {
    v21 = 1;
    v12 = *(&v28 + 1);
    v13 = (*(**(&v28 + 1) + 16))(*(&v28 + 1), 1, *v27);
    if (v13)
    {
      if (*(v12 + 17))
      {
        support::log::buffer::borrow(v13);
        v14 = 2;
      }

      else
      {
        v14 = 0;
      }

      if (v14 | os_log_type_enabled(*v27, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v20[0]) = 0;
        v17 = _os_log_send_and_compose_impl();
        if (v17)
        {
LABEL_24:
          v18 = v17;
          rep = std::chrono::system_clock::now().__d_.__rep_;
          v20[0] = &unk_2A1E59028;
          v20[1] = v26 + 8;
          v20[2] = &v21;
          v20[3] = &rep;
          support::log::manager::message_delegates(v12, v20, v18);
        }
      }
    }
  }

  *a4 = 0;
  (*(*v10 + 8))(v10);
  *&v26[0] = &unk_2A1E58EF8;
  v11 = v28;
  if (!v28)
  {
    return;
  }

LABEL_6:
  if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }
}

void sub_29794E0D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, char a31)
{
  *v31 = 0;
  (*(*v32 + 8))(v32);
  support::log::client::~client(&a31);
  _Unwind_Resume(a1);
}

uint64_t support::transport::AriSelfHostedRT::initRTServer(support::transport::AriSelfHostedRT *this)
{
  v86 = *MEMORY[0x29EDCA608];
  HIBYTE(v84) = 10;
  strcpy(&__p, "CommCenter");
  if (ctu::isProcessRunning())
  {
    v2 = 0;
    if (SHIBYTE(v84) < 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v82 = 9;
    strcpy(v81, "basebandd");
    v2 = ctu::isProcessRunning() ^ 1;
    if (SHIBYTE(v84) < 0)
    {
LABEL_3:
      operator delete(__p.__m_);
      v3 = *(this + 13);
      v4 = this + 40;
      if (!v2)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  v3 = *(this + 13);
  v4 = this + 40;
  if (!v2)
  {
LABEL_4:
    LOBYTE(rep) = 4;
    v5 = (*(*v3 + 16))(v3, 4, **(this + 10));
    if (v5)
    {
      if (*(v3 + 136))
      {
        support::log::buffer::borrow(v5);
        v6 = 2;
      }

      else
      {
        v6 = 0;
      }

      if (v6 | os_log_type_enabled(**(this + 10), (*(v3 + 112) < 4u)))
      {
        LOWORD(__p.__m_) = 0;
        v9 = _os_log_send_and_compose_impl();
        if (v9)
        {
          v10 = v9;
          v11.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
          v81[0] = v11.__d_.__rep_;
          __p.__m_ = &unk_2A1E59028;
          *&__p.__owns_ = v4;
          v84 = &rep;
          p_rep = v81;
          v12 = v3 + 120;
          for (i = *(v3 + 128); i != v12; i = *(i + 8))
          {
            v11.__d_.__rep_ = (***(i + 16))(*(i + 16), &__p, v10);
          }

          support::log::manager::release_log_buffer(v11.__d_.__rep_, v10);
        }
      }
    }

    result = 1;
    goto LABEL_53;
  }

LABEL_9:
  LOBYTE(rep) = 4;
  v7 = (*(*v3 + 16))(v3, 4, **(this + 10));
  if (v7)
  {
    if (*(v3 + 136))
    {
      support::log::buffer::borrow(v7);
      v8 = 2;
    }

    else
    {
      v8 = 0;
    }

    if (v8 | os_log_type_enabled(**(this + 10), (*(v3 + 112) < 4u)))
    {
      LODWORD(__p.__m_) = 136315138;
      *(&__p.__m_ + 4) = "/usr/lib/libARIServer.dylib";
      v15 = _os_log_send_and_compose_impl();
      if (v15)
      {
        v16 = v15;
        v17.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
        v81[0] = v17.__d_.__rep_;
        __p.__m_ = &unk_2A1E59028;
        *&__p.__owns_ = v4;
        v84 = &rep;
        p_rep = v81;
        v18 = v3 + 120;
        for (j = *(v3 + 128); j != v18; j = *(j + 8))
        {
          v17.__d_.__rep_ = (***(j + 16))(*(j + 16), &__p, v16);
        }

        support::log::manager::release_log_buffer(v17.__d_.__rep_, v16);
      }
    }
  }

  v20 = dlopen("/usr/lib/libARIServer.dylib", 2);
  *(this + 17) = v20;
  if (!v20)
  {
    v26 = *(this + 13);
    LOBYTE(rep) = 1;
    v27 = (*(*v26 + 16))(v26, 1, **(this + 10));
    if (!v27)
    {
      goto LABEL_52;
    }

    if (v26[17])
    {
      support::log::buffer::borrow(v27);
      v28 = 2;
    }

    else
    {
      v28 = 0;
    }

    if (!(v28 | os_log_type_enabled(**(this + 10), OS_LOG_TYPE_ERROR)))
    {
      goto LABEL_52;
    }

    LODWORD(__p.__m_) = 136315138;
    *(&__p.__m_ + 4) = "/usr/lib/libARIServer.dylib";
    v42 = _os_log_send_and_compose_impl();
    if (!v42)
    {
      goto LABEL_52;
    }

    v38 = v42;
    v39.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    v81[0] = v39.__d_.__rep_;
    __p.__m_ = &unk_2A1E59028;
    *&__p.__owns_ = v4;
    v84 = &rep;
    p_rep = v81;
    v43 = v26 + 15;
    for (k = v26[16]; k != v43; k = *(k + 8))
    {
      v39.__d_.__rep_ = (***(k + 16))(*(k + 16), &__p, v38);
    }

    goto LABEL_51;
  }

  v21 = dlsym(v20, "AriHostRtInit");
  v22 = dlerror();
  if (v22)
  {
    v23 = *(this + 13);
    LOBYTE(rep) = 1;
    v24 = (*(*v23 + 16))(v23, 1, **(this + 10));
    if (!v24)
    {
      goto LABEL_52;
    }

    if (v23[17])
    {
      support::log::buffer::borrow(v24);
      v25 = 2;
    }

    else
    {
      v25 = 0;
    }

    if (!(v25 | os_log_type_enabled(**(this + 10), OS_LOG_TYPE_ERROR)))
    {
      goto LABEL_52;
    }

    LODWORD(__p.__m_) = 136315138;
    *(&__p.__m_ + 4) = v22;
    v37 = _os_log_send_and_compose_impl();
    if (!v37)
    {
      goto LABEL_52;
    }

    v38 = v37;
    v39.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    v81[0] = v39.__d_.__rep_;
    __p.__m_ = &unk_2A1E59028;
    *&__p.__owns_ = v4;
    v84 = &rep;
    p_rep = v81;
    v40 = v23 + 15;
    for (m = v23[16]; m != v40; m = *(m + 8))
    {
      v39.__d_.__rep_ = (***(m + 16))(*(m + 16), &__p, v38);
    }

LABEL_51:
    support::log::manager::release_log_buffer(v39.__d_.__rep_, v38);
LABEL_52:
    result = 0;
    goto LABEL_53;
  }

  if (!v21)
  {
    v34 = *(this + 13);
    LOBYTE(rep) = 1;
    v35 = (*(*v34 + 16))(v34, 1, **(this + 10));
    if (v35)
    {
      if (*(v34 + 17))
      {
        support::log::buffer::borrow(v35);
        v36 = 2;
      }

      else
      {
        v36 = 0;
      }

      if (v36 | os_log_type_enabled(**(this + 10), OS_LOG_TYPE_ERROR))
      {
        LOWORD(__p.__m_) = 0;
        v62 = _os_log_send_and_compose_impl();
        if (v62)
        {
          v63 = v62;
          v81[0] = std::chrono::system_clock::now().__d_.__rep_;
          __p.__m_ = &unk_2A1E59028;
          *&__p.__owns_ = v4;
          v84 = &rep;
          p_rep = v81;
          support::log::manager::message_delegates(v34, &__p, v63);
        }
      }
    }

    goto LABEL_52;
  }

  v29 = operator new(0x90uLL);
  *(v29 + 1) = 0;
  *(v29 + 2) = 0;
  *v29 = &unk_2A1E59058;
  *(v29 + 3) = 850045863;
  *(v29 + 17) = 0;
  *(v29 + 2) = 0u;
  *(v29 + 3) = 0u;
  *(v29 + 4) = 0u;
  *(v29 + 10) = 0;
  *(v29 + 11) = 1018212795;
  *(v29 + 6) = 0u;
  *(v29 + 7) = 0u;
  *(v29 + 121) = 0u;
  v81[0] = v29 + 24;
  v81[1] = v29;
  v30 = *(this + 13);
  v80 = 4;
  v31 = (*(*v30 + 16))(v30, 4, **(this + 10));
  if (v31)
  {
    v32 = v4;
    if (*(v30 + 17))
    {
      support::log::buffer::borrow(v31);
      v33 = 2;
    }

    else
    {
      v33 = 0;
    }

    v46 = v33 | os_log_type_enabled(**(this + 10), (*(v30 + 112) < 4u));
    v4 = v32;
    if (v46)
    {
      LOWORD(__p.__m_) = 0;
      v47 = _os_log_send_and_compose_impl();
      if (v47)
      {
        v48 = v47;
        rep = std::chrono::system_clock::now().__d_.__rep_;
        __p.__m_ = &unk_2A1E59028;
        *&__p.__owns_ = v32;
        v84 = &v80;
        p_rep = &rep;
        support::log::manager::message_delegates(v30, &__p, v48);
      }
    }
  }

  v77[0] = MEMORY[0x29EDCA5F8];
  v77[1] = 1174405120;
  v77[2] = ___ZN7support9transport15AriSelfHostedRT12initRTServerEv_block_invoke;
  v77[3] = &__block_descriptor_tmp_15_0;
  v77[4] = v29 + 24;
  v78 = v29;
  atomic_fetch_add_explicit(v29 + 1, 1uLL, memory_order_relaxed);
  v49 = dispatch_queue_create("AriHostRtInit", 0);
  v50 = v21("ABMRT/PCIe/ARI", v77, v49, 1);
  *(this + 32) = v50;
  if (v49)
  {
    dispatch_release(v49);
    v50 = *(this + 32);
  }

  if (v50 == -92)
  {
    v56 = *(this + 13);
    v80 = 1;
    v57 = (*(*v56 + 16))(v56, 1, **(this + 10));
    if (v57)
    {
      if (*(v56 + 17))
      {
        support::log::buffer::borrow(v57);
        v58 = 2;
      }

      else
      {
        v58 = 0;
      }

      if (v58 | os_log_type_enabled(**(this + 10), OS_LOG_TYPE_ERROR))
      {
        LOWORD(__p.__m_) = 0;
        v69 = _os_log_send_and_compose_impl();
        if (v69)
        {
          goto LABEL_108;
        }
      }
    }

    goto LABEL_109;
  }

  if (v50)
  {
    v56 = *(this + 13);
    v80 = 1;
    v59 = (*(*v56 + 16))(v56, 1, **(this + 10));
    if (v59)
    {
      if (*(v56 + 17))
      {
        support::log::buffer::borrow(v59);
        v60 = 2;
      }

      else
      {
        v60 = 0;
      }

      if (v60 | os_log_type_enabled(**(this + 10), OS_LOG_TYPE_ERROR))
      {
        LOWORD(__p.__m_) = 0;
        v69 = _os_log_send_and_compose_impl();
        if (v69)
        {
LABEL_108:
          v70 = v69;
          rep = std::chrono::system_clock::now().__d_.__rep_;
          __p.__m_ = &unk_2A1E59028;
          *&__p.__owns_ = v4;
          v84 = &v80;
          p_rep = &rep;
          support::log::manager::message_delegates(v56, &__p, v70);
        }
      }
    }

LABEL_109:
    result = 0;
    v71 = v78;
    if (v78)
    {
      goto LABEL_120;
    }

    goto LABEL_122;
  }

  __p.__m_ = (v29 + 24);
  *&__p.__owns_ = 0xAAAAAAAAAAAAAA01;
  std::mutex::lock((v29 + 24));
  v51.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_ + 5000000000;
  do
  {
    if (v29[136])
    {
      goto LABEL_86;
    }

    if (v51.__d_.__rep_ <= std::chrono::steady_clock::now().__d_.__rep_)
    {
      break;
    }

    v54.__d_.__rep_ = v51.__d_.__rep_ - std::chrono::steady_clock::now().__d_.__rep_;
    if (v54.__d_.__rep_ < 1)
    {
      continue;
    }

    std::chrono::steady_clock::now();
    v55.__d_.__rep_ = std::chrono::system_clock::now().__d_.__rep_;
    if (!v55.__d_.__rep_)
    {
      v52 = 0;
      goto LABEL_64;
    }

    if (v55.__d_.__rep_ < 1)
    {
      if (v55.__d_.__rep_ < 0xFFDF3B645A1CAC09)
      {
        v52 = 0x8000000000000000;
        goto LABEL_64;
      }
    }

    else if (v55.__d_.__rep_ > 0x20C49BA5E353F7)
    {
      v52 = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_77;
    }

    v52 = 1000 * v55.__d_.__rep_;
LABEL_77:
    if (v52 > (v54.__d_.__rep_ ^ 0x7FFFFFFFFFFFFFFFLL))
    {
      v53.__d_.__rep_ = 0x7FFFFFFFFFFFFFFFLL;
      goto LABEL_65;
    }

LABEL_64:
    v53.__d_.__rep_ = v52 + v54.__d_.__rep_;
LABEL_65:
    std::condition_variable::__do_timed_wait((v29 + 88), &__p, v53);
    std::chrono::steady_clock::now();
  }

  while (std::chrono::steady_clock::now().__d_.__rep_ < v51.__d_.__rep_);
  if (v29[136] == 1)
  {
LABEL_86:
    v61 = 0;
    goto LABEL_92;
  }

  v61 = 1;
LABEL_92:
  if (__p.__owns_)
  {
    std::mutex::unlock(__p.__m_);
  }

  v64 = *(this + 13);
  if (v61)
  {
    v80 = 1;
    v65 = (*(*v64 + 16))(v64, 1, **(this + 10));
    if (v65)
    {
      if (*(v64 + 17))
      {
        support::log::buffer::borrow(v65);
        v66 = 2;
      }

      else
      {
        v66 = 0;
      }

      if (v66 | os_log_type_enabled(**(this + 10), OS_LOG_TYPE_ERROR))
      {
        LOWORD(__p.__m_) = 0;
        v72 = _os_log_send_and_compose_impl();
        if (v72)
        {
          goto LABEL_118;
        }
      }
    }
  }

  else
  {
    v80 = 4;
    v67 = (*(*v64 + 16))(v64, 4, **(this + 10));
    if (v67)
    {
      if (*(v64 + 17))
      {
        support::log::buffer::borrow(v67);
        v68 = 2;
      }

      else
      {
        v68 = 0;
      }

      if (v68 | os_log_type_enabled(**(this + 10), (v64[112] < 4u)))
      {
        LOWORD(__p.__m_) = 0;
        v72 = _os_log_send_and_compose_impl();
        if (v72)
        {
LABEL_118:
          v73 = v72;
          rep = std::chrono::system_clock::now().__d_.__rep_;
          __p.__m_ = &unk_2A1E59028;
          *&__p.__owns_ = v4;
          v84 = &v80;
          p_rep = &rep;
          support::log::manager::message_delegates(v64, &__p, v73);
        }
      }
    }
  }

  result = v61 ^ 1u;
  v71 = v78;
  if (v78)
  {
LABEL_120:
    if (!atomic_fetch_add(&v71->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v74 = result;
      (v71->__on_zero_shared)(v71);
      std::__shared_weak_count::__release_weak(v71);
      result = v74;
    }
  }

LABEL_122:
  v75 = v81[1];
  if (v81[1] && !atomic_fetch_add((v81[1] + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    v76 = result;
    (v75->__on_zero_shared)(v75);
    std::__shared_weak_count::__release_weak(v75);
    result = v76;
  }

LABEL_53:
  v45 = *MEMORY[0x29EDCA608];
  return result;
}

void sub_29794F1B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  std::shared_ptr<support::transport::AriSelfHostedRT::initRTServer(void)::syncVars>::~shared_ptr[abi:ne200100](v12 + 32);
  std::shared_ptr<support::transport::AriSelfHostedRT::initRTServer(void)::syncVars>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_29794F22C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  if (v20)
  {
    dispatch_release(v20);
  }

  std::shared_ptr<support::transport::AriSelfHostedRT::initRTServer(void)::syncVars>::~shared_ptr[abi:ne200100](v21 + 32);
  std::shared_ptr<support::transport::AriSelfHostedRT::initRTServer(void)::syncVars>::~shared_ptr[abi:ne200100](&a20);
  _Unwind_Resume(a1);
}

void sub_29794F254(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  std::shared_ptr<support::transport::AriSelfHostedRT::initRTServer(void)::syncVars>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_29794F268(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a31 < 0)
  {
    operator delete(a26);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN7support9transport15AriSelfHostedRT12initRTServerEv_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  std::mutex::lock(v2);
  v3 = *(a1 + 32);
  *(v3 + 112) = 1;
  std::condition_variable::notify_one((v3 + 64));

  std::mutex::unlock(v2);
}

uint64_t __copy_helper_block_e8_32c89_ZTSNSt3__110shared_ptrIZN7support9transport15AriSelfHostedRT12initRTServerEvE8syncVarsEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c89_ZTSNSt3__110shared_ptrIZN7support9transport15AriSelfHostedRT12initRTServerEvE8syncVarsEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t std::shared_ptr<support::transport::AriSelfHostedRT::initRTServer(void)::syncVars>::~shared_ptr[abi:ne200100](uint64_t result)
{
  v1 = *(result + 8);
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

void support::transport::AriRT::~AriRT(support::transport::AriRT *this)
{
  support::transport::ARI::~ARI(this);

  operator delete(v1);
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_29EE81850, MEMORY[0x29EDC9350]);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x29EDC95E0] + 16);
  return result;
}

void std::__shared_ptr_emplace<support::transport::AriSelfHostedRT::initRTServer(void)::syncVars,std::allocator<support::transport::AriSelfHostedRT::initRTServer(void)::syncVars>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E59058;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<support::transport::AriSelfHostedRT::initRTServer(void)::syncVars,std::allocator<support::transport::AriSelfHostedRT::initRTServer(void)::syncVars>>::__on_zero_shared(uint64_t a1)
{
  std::condition_variable::~condition_variable((a1 + 88));

  std::mutex::~mutex((a1 + 24));
}

uint64_t __cxx_global_var_init_0()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>::~PthreadMutexGuardPolicy, &ctu::Singleton<support::log::shared_stdio,support::log::shared_stdio,ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>>::sInstance, &dword_297948000);
  }

  return result;
}

uint64_t support::transport::airship::sGetIOServiceProperty(uint64_t a1, const __CFString *a2, void *a3)
{
  v23 = *MEMORY[0x29EDCA608];
  MatchingService = IOServiceGetMatchingService(*MEMORY[0x29EDBB110], 0);
  v6 = MatchingService;
  if (MatchingService)
  {
    CFProperty = IORegistryEntryCreateCFProperty(MatchingService, a2, *MEMORY[0x29EDB8ED8], 0);
    v8 = CFProperty;
    if (CFProperty && (v9 = CFGetTypeID(CFProperty), CFProperty = CFNumberGetTypeID(), v9 == CFProperty))
    {
      Value = CFNumberGetValue(v8, kCFNumberSInt32Type, a3);
      if (Value)
      {
        v11 = 1;
LABEL_6:
        IOObjectRelease(v6);
        if (v8)
        {
          CFRelease(v8);
        }

        v12 = *MEMORY[0x29EDCA608];
        return v11;
      }

      support::transport::getLogClient(Value);
      v20 = *qword_2A13A3760;
      if (!os_log_type_enabled(*qword_2A13A3760, OS_LOG_TYPE_ERROR))
      {
LABEL_16:
        v11 = 0;
        goto LABEL_6;
      }

      *buf = 0;
      v15 = "error: failed to cast to internal type";
      v16 = v20;
      v17 = 2;
    }

    else
    {
      support::transport::getLogClient(CFProperty);
      v14 = *qword_2A13A3760;
      if (!os_log_type_enabled(*qword_2A13A3760, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_16;
      }

      *buf = 138412290;
      v22 = a2;
      v15 = "error: failed to find property %@";
      v16 = v14;
      v17 = 12;
    }

    _os_log_error_impl(&dword_297948000, v16, OS_LOG_TYPE_ERROR, v15, buf, v17);
    goto LABEL_16;
  }

  support::transport::getLogClient(MatchingService);
  v18 = *qword_2A13A3760;
  if (os_log_type_enabled(*qword_2A13A3760, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_297948000, v18, OS_LOG_TYPE_ERROR, "error: failed to find io matching service for airship", buf, 2u);
  }

  v11 = 0;
  v19 = *MEMORY[0x29EDCA608];
  return v11;
}

void sub_29794F7D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<void const>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

void support::transport::getLogClient(support::transport *this)
{
  if ((atomic_load_explicit(&qword_2A13A3718, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A13A3718))
  {
    std::string::basic_string[abi:ne200100]<0>(v3, "com.apple.telephony.basebandservices");
    std::string::basic_string[abi:ne200100]<0>(__p, "airship");
    support::log::client::client(qword_2A13A3730, v3, __p);
    if (v2 < 0)
    {
      operator delete(__p[0]);
    }

    if (v4 < 0)
    {
      operator delete(v3[0]);
    }

    __cxa_guard_release(&qword_2A13A3718);
  }
}

void sub_29794F8BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a20 & 0x80000000) == 0)
    {
LABEL_3:
      __cxa_guard_abort(&qword_2A13A3718);
      _Unwind_Resume(a1);
    }
  }

  else if ((a20 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a15);
  __cxa_guard_abort(&qword_2A13A3718);
  _Unwind_Resume(a1);
}

void support::transport::airship::create(int a1@<W0>, void *a2@<X8>)
{
  *a2 = 0;
  v3 = operator new(0x50uLL);
  v4 = support::transport::airship::airship(v3, a1);
  v8 = v3;
  support::transport::getLogClient(v4);
  v5 = *qword_2A13A3760;
  if (os_log_type_enabled(*qword_2A13A3760, OS_LOG_TYPE_ERROR))
  {
    *v7 = 0;
    _os_log_error_impl(&dword_297948000, v5, OS_LOG_TYPE_ERROR, "error: airship not supported", v7, 2u);
  }

  support::transport::airship::~airship(v3);
  operator delete(v6);
}

void sub_29794F9F0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<support::transport::airship>::~unique_ptr[abi:ne200100](va);
  std::unique_ptr<support::transport::airship>::~unique_ptr[abi:ne200100](v2);
  _Unwind_Resume(a1);
}

void sub_29794FA0C(_Unwind_Exception *a1)
{
  operator delete(v1);
  std::unique_ptr<support::transport::airship>::~unique_ptr[abi:ne200100](v2);
  _Unwind_Resume(a1);
}

BOOL support::transport::airship::init(support::transport::airship *this)
{
  if (!*this)
  {
    support::transport::getLogClient(this);
    v2 = *qword_2A13A3760;
    result = os_log_type_enabled(*qword_2A13A3760, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v7 = 0;
    v3 = "error: invalid dispatch queue";
    v4 = &v7;
    goto LABEL_12;
  }

  if (!*(this + 2))
  {
    support::transport::getLogClient(this);
    v2 = *qword_2A13A3760;
    result = os_log_type_enabled(*qword_2A13A3760, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v6 = 0;
    v3 = "error: invalid protocol";
    v4 = &v6;
LABEL_12:
    _os_log_error_impl(&dword_297948000, v2, OS_LOG_TYPE_ERROR, v3, v4, 2u);
    return 0;
  }

  if (*(this + 3))
  {
    return 1;
  }

  support::transport::getLogClient(this);
  v2 = *qword_2A13A3760;
  result = os_log_type_enabled(*qword_2A13A3760, OS_LOG_TYPE_ERROR);
  if (result)
  {
    v5 = 0;
    v3 = "error: failed to create io timer";
    v4 = &v5;
    goto LABEL_12;
  }

  return result;
}

BOOL support::transport::airship::start(support::transport::airship *this)
{
  v1 = *(this + 72);
  if (v1 != 1)
  {
    return v1 == 1;
  }

  support::transport::getLogClient(this);
  v2 = *qword_2A13A3760;
  if (!os_log_type_enabled(*qword_2A13A3760, OS_LOG_TYPE_DEBUG))
  {
    return v1 == 1;
  }

  *v4 = 0;
  _os_log_debug_impl(&dword_297948000, v2, OS_LOG_TYPE_DEBUG, "already started", v4, 2u);
  return 1;
}

support::transport::airship **std::unique_ptr<support::transport::airship>::~unique_ptr[abi:ne200100](support::transport::airship **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    support::transport::airship::~airship(v2);
    operator delete(v4);
    return v3;
  }

  return v1;
}

uint64_t support::transport::airship::airship(uint64_t a1, int a2)
{
  v21 = *MEMORY[0x29EDCA608];
  v4 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  *a1 = dispatch_queue_create("com.apple.telephony.basebandservices.airship", v4);
  *(a1 + 8) = a2;
  if ((atomic_load_explicit(&qword_2A13A3728, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A13A3728))
  {
    v13 = operator new(0x5890uLL);
    support::perf::memory_pool<support::transport::io_async_cb,256ul>::memory_pool(v13);
    qword_2A13A3720 = v13;
    __cxa_guard_release(&qword_2A13A3728);
  }

  v5 = atomic_load((qword_2A13A3720 + 22664));
  *(a1 + 24) = 0u;
  v6 = (a1 + 24);
  *(a1 + 16) = v5;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  if (atomic_load_explicit(&_MergedGlobals, memory_order_acquire) != -1)
  {
    v18 = &v16;
    v17 = &v18;
    std::__call_once(&_MergedGlobals, &v17, std::__call_once_proxy[abi:ne200100]<std::tuple<support::transport::airship::airship(support::transport::airship::protocol)::$_1 &&>>);
  }

  v15 = 10;
  strcpy(__p, "airship.io");
  v19[0] = &unk_2A1E590F8;
  v19[1] = a1;
  v20 = v19;
  support::misc::safe_timer::create(__p, 10000, v19, QOS_CLASS_UTILITY, &v18);
  v7 = v18;
  v18 = 0;
  v8 = *v6;
  *v6 = v7;
  if (v8)
  {
    (*(*v8 + 8))(v8);
    v9 = v18;
    v18 = 0;
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }
  }

  if (v20 != v19)
  {
    if (v20)
    {
      (*(*v20 + 40))();
    }

    if ((v15 & 0x80000000) == 0)
    {
      goto LABEL_11;
    }

LABEL_14:
    operator delete(__p[0]);
    v12 = *MEMORY[0x29EDCA608];
    return a1;
  }

  (*(*v20 + 32))(v20);
  if (v15 < 0)
  {
    goto LABEL_14;
  }

LABEL_11:
  v10 = *MEMORY[0x29EDCA608];
  return a1;
}

void sub_29794FEC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  operator delete(v20);
  __cxa_guard_abort(&qword_2A13A3728);
  if (!*v19)
  {
    _Unwind_Resume(a1);
  }

  dispatch_release(*v19);
  _Unwind_Resume(a1);
}

void support::transport::airship::~airship(support::transport::airship *this)
{
  v15 = *MEMORY[0x29EDCA608];
  v2 = support::transport::airship::stop(this);
  if ((v2 & 1) == 0 && (support::transport::getLogClient(v2), v3 = *qword_2A13A3760, v2 = os_log_type_enabled(*qword_2A13A3760, OS_LOG_TYPE_ERROR), v2))
  {
    LOWORD(v11) = 0;
    _os_log_error_impl(&dword_297948000, v3, OS_LOG_TYPE_ERROR, "error: failed to stop", &v11, 2u);
    if (atomic_load_explicit(&qword_2A13A3728, memory_order_acquire))
    {
      goto LABEL_4;
    }
  }

  else if (atomic_load_explicit(&qword_2A13A3728, memory_order_acquire))
  {
    goto LABEL_4;
  }

  v2 = __cxa_guard_acquire(&qword_2A13A3728);
  if (v2)
  {
    v10 = operator new(0x5890uLL);
    support::perf::memory_pool<support::transport::io_async_cb,256ul>::memory_pool(v10);
    qword_2A13A3720 = v10;
    __cxa_guard_release(&qword_2A13A3728);
  }

LABEL_4:
  v4 = atomic_load((qword_2A13A3720 + 22664));
  if (*(this + 2) < v4)
  {
    support::transport::getLogClient(v2);
    v5 = *qword_2A13A3760;
    if (os_log_type_enabled(*qword_2A13A3760, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v4 - *(this + 2);
      v11 = 134218242;
      v12 = v6;
      v13 = 2080;
      v14 = "???";
      _os_log_impl(&dword_297948000, v5, OS_LOG_TYPE_DEFAULT, "warning: memory pool dynamic allocation count increased by %zu for %s", &v11, 0x16u);
    }
  }

  v7 = *(this + 6);
  if (v7)
  {
    *(this + 7) = v7;
    operator delete(v7);
  }

  v8 = *(this + 3);
  *(this + 3) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  if (*this)
  {
    dispatch_release(*this);
  }

  v9 = *MEMORY[0x29EDCA608];
}

void sub_297950170(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    operator delete(v2);
    __cxa_guard_abort(&qword_2A13A3728);
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

BOOL support::transport::airship::stop(support::transport::airship *this)
{
  v10 = *MEMORY[0x29EDCA608];
  support::transport::getLogClient(this);
  v2 = *qword_2A13A3760;
  v3 = os_log_type_enabled(*qword_2A13A3760, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    v8 = 136315138;
    v9 = "???";
    _os_log_impl(&dword_297948000, v2, OS_LOG_TYPE_DEFAULT, "%s stopping...", &v8, 0xCu);
  }

  v4 = *(this + 72);
  if (!*(this + 72))
  {
    support::transport::getLogClient(v3);
    v5 = *qword_2A13A3760;
    if (os_log_type_enabled(*qword_2A13A3760, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8) = 0;
      _os_log_impl(&dword_297948000, v5, OS_LOG_TYPE_DEFAULT, "already stopped", &v8, 2u);
    }
  }

  result = v4 == 0;
  v7 = *MEMORY[0x29EDCA608];
  return result;
}

uint64_t support::transport::airship::read_sync(support::transport::airship *this, char *a2, uint64_t a3)
{
  v36 = *MEMORY[0x29EDCA608];
  if (*(this + 72) != 1)
  {
    support::transport::getLogClient(this);
    v26 = *qword_2A13A3760;
    if (!os_log_type_enabled(*qword_2A13A3760, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    LOWORD(block) = 0;
    v23 = "error: invalid state";
    goto LABEL_33;
  }

  v4 = a2;
  if (!a2)
  {
    support::transport::getLogClient(this);
    v26 = *qword_2A13A3760;
    if (!os_log_type_enabled(*qword_2A13A3760, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    LOWORD(block) = 0;
    v23 = "error: invalid dest address";
    goto LABEL_33;
  }

  v6 = *(this + 3);
  v7 = v6[23];
  if (v7 != dispatch_get_specific("CurrentQueue"))
  {
    *&block = MEMORY[0x29EDCA5F8];
    *(&block + 1) = 0x40000000;
    v32 = ___ZN7support4misc10safe_timer5startEv_block_invoke;
    v33 = &__block_descriptor_tmp_8;
    v34 = v6;
    dispatch_sync(v7, &block);
    if (a3)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

  support::misc::safe_timer::start_sync(v6);
  if (!a3)
  {
LABEL_20:
    support::misc::safe_timer::stop(*(this + 3));
    v16 = *(this + 3);
    v27 = 0;
    v28 = &v27;
    v29 = 0x2000000000;
    v30 = 0;
    v17 = *(v16 + 184);
    *&block = MEMORY[0x29EDCA5F8];
    *(&block + 1) = 1107296256;
    v32 = ___ZNK7support4misc10safe_timer9has_firedEv_block_invoke;
    v33 = &__block_descriptor_tmp_12_1;
    v34 = &v27;
    v35 = v16;
    dispatch_sync(v17, &block);
    v18 = *(v28 + 24);
    _Block_object_dispose(&v27, 8);
    if (v18 != 1)
    {
      v20 = 1;
      goto LABEL_22;
    }

    support::transport::getLogClient(v19);
    v26 = *qword_2A13A3760;
    if (!os_log_type_enabled(*qword_2A13A3760, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    LOWORD(block) = 0;
    v23 = "error: read failed (timeout)";
LABEL_33:
    v24 = v26;
    v25 = 2;
    goto LABEL_26;
  }

LABEL_9:
  while (1)
  {
    v9 = *(this + 5);
    v10 = v9 >= a3 ? a3 : *(this + 5);
    support::transport::getLogClient(v8);
    v11 = *qword_2A13A3760;
    v12 = os_log_type_enabled(*qword_2A13A3760, OS_LOG_TYPE_DEBUG);
    if (v12)
    {
      LODWORD(block) = 67109120;
      DWORD1(block) = v10;
      _os_log_debug_impl(&dword_297948000, v11, OS_LOG_TYPE_DEBUG, "reading %u byte(s)", &block, 8u);
    }

    support::transport::getLogClient(v12);
    v13 = *qword_2A13A3760;
    v14 = *qword_2A13A3760;
    if (v9 > a3)
    {
      break;
    }

    v8 = os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG);
    if (v8)
    {
      LODWORD(block) = 134217984;
      *(&block + 4) = a3;
      _os_log_debug_impl(&dword_297948000, v13, OS_LOG_TYPE_DEBUG, "read success, remaining %zu bytes...", &block, 0xCu);
      v15 = v9;
      if (!v9)
      {
        goto LABEL_8;
      }

LABEL_17:
      v8 = memmove(v4, *(this + 6), v15);
      goto LABEL_8;
    }

    v15 = v9;
    if (v9)
    {
      goto LABEL_17;
    }

LABEL_8:
    v4 += v15;
    a3 -= v15;
    if (!a3)
    {
      goto LABEL_20;
    }
  }

  if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_24;
  }

  LODWORD(block) = 67109376;
  DWORD1(block) = v10;
  WORD4(block) = 1024;
  *(&block + 10) = v9;
  v23 = "error: read size mismatch; expected: %u, actual: %u";
  v24 = v13;
  v25 = 14;
LABEL_26:
  _os_log_error_impl(&dword_297948000, v24, OS_LOG_TYPE_ERROR, v23, &block, v25);
LABEL_24:
  v20 = 0;
LABEL_22:
  support::misc::safe_timer::stop(*(this + 3));
  v21 = *MEMORY[0x29EDCA608];
  return v20;
}

uint64_t support::transport::airship::read(support::transport::airship *this, char *a2, unint64_t a3)
{
  v3 = a3;
  v4 = a2;
  v5 = this;
  v56 = *MEMORY[0x29EDCA608];
  if (*(this + 5) < a3)
  {
    v6 = dispatch_group_create();
    *&v51.__state_ = 0xAAAAAAAAAAAAAAAALL;
    *&v7 = 0xAAAAAAAAAAAAAAAALL;
    *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&v51.__gate2_.__cv_.__opaque[8] = v7;
    *&v51.__gate2_.__cv_.__opaque[24] = v7;
    *&v51.__gate1_.__cv_.__opaque[24] = v7;
    *&v51.__gate2_.__cv_.__sig = v7;
    *&v51.__gate1_.__cv_.__sig = v7;
    *&v51.__gate1_.__cv_.__opaque[8] = v7;
    *&v51.__mut_.__m_.__opaque[24] = v7;
    *&v51.__mut_.__m_.__opaque[40] = v7;
    *&v51.__mut_.__m_.__sig = v7;
    *&v51.__mut_.__m_.__opaque[8] = v7;
    object = v6;
    std::__shared_mutex_base::__shared_mutex_base(&v51);
    v48.__cv_.__sig = 1018212795;
    memset(v48.__cv_.__opaque, 0, sizeof(v48.__cv_.__opaque));
    v8 = operator new(0x58uLL);
    v8[3] = 850045863;
    v8[1] = 0;
    v8[2] = 0;
    *v8 = &unk_2A1E590A8;
    *(v8 + 2) = 0u;
    *(v8 + 3) = 0u;
    *(v8 + 4) = 0u;
    v8[10] = 0;
    v49 = (v8 + 3);
    v50 = v8;
    v43 = 0;
    v42 = 1;
    if (*(v5 + 72) == 1)
    {
      if (v4)
      {
        if (v6)
        {
          v9 = *(v5 + 3);
          v10 = *(v9 + 23);
          if (v10 == dispatch_get_specific("CurrentQueue"))
          {
            v6 = object;
            support::misc::safe_timer::start_sync(v9);
          }

          else
          {
            *block = MEMORY[0x29EDCA5F8];
            *&block[8] = 0x40000000;
            *&block[16] = ___ZN7support4misc10safe_timer5startEv_block_invoke;
            v53 = &__block_descriptor_tmp_8;
            v54 = v9;
            dispatch_sync(v10, block);
            v6 = object;
          }

          v13 = 0;
          v40 = v5;
          while (1)
          {
            v14 = atomic_load(&v42);
            if ((v14 & 1) == 0)
            {
              break;
            }

            v15 = *(v5 + 10);
            if (v15 >= v3)
            {
              v16 = v3;
            }

            else
            {
              v16 = v15;
            }

            if ((atomic_load_explicit(&qword_2A13A3728, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A13A3728))
            {
              v28 = operator new(0x5890uLL);
              support::perf::memory_pool<support::transport::io_async_cb,256ul>::memory_pool(v28);
              qword_2A13A3720 = v28;
              __cxa_guard_release(&qword_2A13A3728);
              v5 = v40;
            }

            v17 = qword_2A13A3720;
            *block = 0;
            if (!boost::lockfree::queue<support::transport::io_async_cb *>::pop<support::transport::io_async_cb *>((qword_2A13A3720 + 22528), block))
            {
              *block = aligned_alloc(8uLL, 0x58uLL);
              if (!*block)
              {
                exception = __cxa_allocate_exception(8uLL);
                v39 = std::bad_alloc::bad_alloc(exception);
                __cxa_throw(v39, MEMORY[0x29EDC9490], MEMORY[0x29EDC9408]);
              }

              atomic_fetch_add((v17 + 22664), 1uLL);
            }

            v18 = *block;
            if (*(v5 + 5) <= v16)
            {
              v20 = 0;
              v19 = 0xAAAAAAAAAAAAAA00;
              v21 = 0xAAAAAAAAAAAAAAAALL;
              v22 = 0xAAAAAAAAAAAAAAAALL;
            }

            else
            {
              v19 = *(v5 + 6);
              v20 = 1;
              v21 = v4;
              v22 = v16;
            }

            v6 = object;
            dispatch_retain(object);
            *v18 = v13;
            *(v18 + 8) = v16;
            *(v18 + 16) = v19;
            *(v18 + 24) = v21;
            *(v18 + 32) = v22;
            *(v18 + 40) = v20;
            *(v18 + 41) = -1431655766;
            *(v18 + 44) = -1431655766;
            *(v18 + 48) = object;
            dispatch_retain(object);
            v23 = *(v18 + 48);
            if (v23)
            {
              dispatch_group_enter(v23);
            }

            *(v18 + 56) = &v51;
            *(v18 + 64) = &v48;
            *(v18 + 72) = &v43;
            *(v18 + 80) = &v42;
            dispatch_release(object);
            support::transport::getLogClient(v24);
            v5 = v40;
            v25 = *qword_2A13A3760;
            v26 = os_log_type_enabled(*qword_2A13A3760, OS_LOG_TYPE_DEBUG);
            if (v26)
            {
              *block = 67109120;
              *&block[4] = v16;
              _os_log_debug_impl(&dword_297948000, v25, OS_LOG_TYPE_DEBUG, "reading %u byte(s)", block, 8u);
            }

            support::transport::getLogClient(v26);
            v27 = *qword_2A13A3760;
            if (os_log_type_enabled(*qword_2A13A3760, OS_LOG_TYPE_DEBUG))
            {
              *block = 134218240;
              *&block[4] = v13;
              *&block[12] = 2048;
              *&block[14] = v3;
              _os_log_debug_impl(&dword_297948000, v27, OS_LOG_TYPE_DEBUG, "read scheduled for tid %zu, remaining %zu bytes...", block, 0x16u);
              v4 += v16;
              ++v13;
              v3 -= v16;
              if (!v3)
              {
                break;
              }
            }

            else
            {
              v4 += v16;
              ++v13;
              v3 -= v16;
              if (!v3)
              {
                break;
              }
            }
          }

          support::misc::safe_timer::stop(*(v5 + 3));
          v29 = *(v5 + 3);
          v44 = 0;
          v45 = &v44;
          v46 = 0x2000000000;
          v47 = 0;
          v30 = *(v29 + 184);
          *block = MEMORY[0x29EDCA5F8];
          *&block[8] = 1107296256;
          *&block[16] = ___ZNK7support4misc10safe_timer9has_firedEv_block_invoke;
          v53 = &__block_descriptor_tmp_12_1;
          v54 = &v44;
          v55 = v29;
          dispatch_sync(v30, block);
          v31 = *(v45 + 24);
          _Block_object_dispose(&v44, 8);
          if (v31 != 1)
          {
            v33 = 1;
LABEL_36:
            support::misc::safe_timer::stop(*(v5 + 3));
            dispatch_group_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
            if (v33)
            {
              LOBYTE(v33) = atomic_load(&v42);
            }

            v34 = v50;
            if (v50 && !atomic_fetch_add(&v50->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v34->__on_zero_shared)(v34);
              std::__shared_weak_count::__release_weak(v34);
            }

            std::condition_variable::~condition_variable(&v48);
            std::condition_variable::~condition_variable(&v51.__gate2_);
            std::condition_variable::~condition_variable(&v51.__gate1_);
            std::mutex::~mutex(&v51.__mut_);
            if (v6)
            {
              dispatch_release(v6);
            }

            v35 = *MEMORY[0x29EDCA608];
            return v33 & 1;
          }

          support::transport::getLogClient(v32);
          v36 = *qword_2A13A3760;
          if (os_log_type_enabled(*qword_2A13A3760, OS_LOG_TYPE_ERROR))
          {
            *block = 0;
            v37 = "error: read failed (timeout)";
            goto LABEL_52;
          }

LABEL_53:
          v33 = 0;
          goto LABEL_36;
        }

        support::transport::getLogClient(v8);
        v36 = *qword_2A13A3760;
        if (!os_log_type_enabled(*qword_2A13A3760, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_53;
        }

        *block = 0;
        v37 = "error: failed to create dispatch group";
      }

      else
      {
        support::transport::getLogClient(v8);
        v36 = *qword_2A13A3760;
        if (!os_log_type_enabled(*qword_2A13A3760, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_53;
        }

        *block = 0;
        v37 = "error: invalid dest address";
      }
    }

    else
    {
      support::transport::getLogClient(v8);
      v36 = *qword_2A13A3760;
      if (!os_log_type_enabled(*qword_2A13A3760, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_53;
      }

      *block = 0;
      v37 = "error: invalid state";
    }

LABEL_52:
    _os_log_error_impl(&dword_297948000, v36, OS_LOG_TYPE_ERROR, v37, block, 2u);
    goto LABEL_53;
  }

  v11 = *MEMORY[0x29EDCA608];

  return support::transport::airship::read_sync(this, a2, a3);
}

void sub_297950D80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, dispatch_object_t object, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::condition_variable *a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  operator delete(v29);
  __cxa_guard_abort(&qword_2A13A3728);
  std::condition_variable_any::~condition_variable_any(&a21);
  std::shared_mutex::~shared_mutex[abi:ne200100](&a29);
  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(a1);
}

void std::condition_variable_any::~condition_variable_any(std::condition_variable_any *this)
{
  cntrl = this->__mut_.__cntrl_;
  if (cntrl && !atomic_fetch_add(&cntrl->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = this;
    (cntrl->__on_zero_shared)(cntrl);
    std::__shared_weak_count::__release_weak(cntrl);
    this = v2;
  }

  std::condition_variable::~condition_variable(&this->__cv_);
}

void std::shared_mutex::~shared_mutex[abi:ne200100](uint64_t a1)
{
  std::condition_variable::~condition_variable((a1 + 112));
  std::condition_variable::~condition_variable((a1 + 64));

  std::mutex::~mutex(a1);
}

uint64_t support::transport::airship::read(support::misc::safe_timer **this, void *a2, unint64_t a3, unint64_t *a4)
{
  v36 = *MEMORY[0x29EDCA608];
  if (*(this + 72) != 1)
  {
    support::transport::getLogClient(this);
    v21 = *qword_2A13A3760;
    if (!os_log_type_enabled(*qword_2A13A3760, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_27;
    }

    *block = 0;
    v22 = "error: invalid state";
LABEL_25:
    v26 = v21;
    v27 = 2;
    goto LABEL_26;
  }

  if (!a2)
  {
    support::transport::getLogClient(this);
    v21 = *qword_2A13A3760;
    if (!os_log_type_enabled(*qword_2A13A3760, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_27;
    }

    *block = 0;
    v22 = "error: invalid dest address";
    goto LABEL_25;
  }

  v5 = this[5];
  if (v5 > a3)
  {
    support::transport::getLogClient(this);
    v24 = *qword_2A13A3760;
    if (os_log_type_enabled(*qword_2A13A3760, OS_LOG_TYPE_ERROR))
    {
      v25 = this[5];
      *block = 134218240;
      *&block[4] = a3;
      *&block[12] = 2048;
      *&block[14] = v25;
      v22 = "error: invalid dest size %zu (must be at least %zu)";
      v26 = v24;
      v27 = 22;
LABEL_26:
      _os_log_error_impl(&dword_297948000, v26, OS_LOG_TYPE_ERROR, v22, block, v27);
      goto LABEL_27;
    }

    goto LABEL_27;
  }

  if (!a4)
  {
    support::transport::getLogClient(this);
    v21 = *qword_2A13A3760;
    if (!os_log_type_enabled(*qword_2A13A3760, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_27;
    }

    *block = 0;
    v22 = "error: invalid bytes read argument";
    goto LABEL_25;
  }

  v7 = this[3];
  v8 = *(v7 + 23);
  if (v8 == dispatch_get_specific("CurrentQueue"))
  {
    support::misc::safe_timer::start_sync(v7);
  }

  else
  {
    *block = MEMORY[0x29EDCA5F8];
    *&block[8] = 0x40000000;
    *&block[16] = ___ZN7support4misc10safe_timer5startEv_block_invoke;
    v33 = &__block_descriptor_tmp_8;
    v34 = v7;
    dispatch_sync(v8, block);
  }

  *a4 = 0;
  support::transport::getLogClient(v9);
  v10 = *qword_2A13A3760;
  v11 = os_log_type_enabled(*qword_2A13A3760, OS_LOG_TYPE_DEBUG);
  if (v11)
  {
    *block = 0;
    _os_log_debug_impl(&dword_297948000, v10, OS_LOG_TYPE_DEBUG, "reading...", block, 2u);
  }

  support::transport::getLogClient(v11);
  v12 = *qword_2A13A3760;
  if (os_log_type_enabled(*qword_2A13A3760, OS_LOG_TYPE_DEBUG))
  {
    v20 = *a4;
    *block = 134217984;
    *&block[4] = v20;
    _os_log_debug_impl(&dword_297948000, v12, OS_LOG_TYPE_DEBUG, "read success (%zu bytes)", block, 0xCu);
  }

  *a4 = v5;
  support::misc::safe_timer::stop(this[3]);
  v13 = this[3];
  v28 = 0;
  v29 = &v28;
  v30 = 0x2000000000;
  v31 = 0;
  v14 = *(v13 + 23);
  *block = MEMORY[0x29EDCA5F8];
  *&block[8] = 1107296256;
  *&block[16] = ___ZNK7support4misc10safe_timer9has_firedEv_block_invoke;
  v33 = &__block_descriptor_tmp_12_1;
  v34 = &v28;
  v35 = v13;
  dispatch_sync(v14, block);
  v15 = *(v29 + 24);
  _Block_object_dispose(&v28, 8);
  if (v15 == 1)
  {
    support::transport::getLogClient(v16);
    v21 = *qword_2A13A3760;
    if (os_log_type_enabled(*qword_2A13A3760, OS_LOG_TYPE_ERROR))
    {
      *block = 0;
      v22 = "error: read failed (timeout)";
      goto LABEL_25;
    }

LABEL_27:
    v17 = 0;
    goto LABEL_14;
  }

  v17 = 1;
LABEL_14:
  support::misc::safe_timer::stop(this[3]);
  v18 = *MEMORY[0x29EDCA608];
  return v17;
}

uint64_t support::transport::airship::write_sync(support::misc::safe_timer **this, void *a2, uint64_t a3)
{
  v30 = *MEMORY[0x29EDCA608];
  if (*(this + 72) != 1)
  {
    support::transport::getLogClient(this);
    v19 = *qword_2A13A3760;
    if (os_log_type_enabled(*qword_2A13A3760, OS_LOG_TYPE_ERROR))
    {
      LOWORD(block) = 0;
      v20 = "error: invalid state";
      goto LABEL_26;
    }

LABEL_24:
    v16 = 0;
    goto LABEL_18;
  }

  if (!a2)
  {
    support::transport::getLogClient(this);
    v19 = *qword_2A13A3760;
    if (os_log_type_enabled(*qword_2A13A3760, OS_LOG_TYPE_ERROR))
    {
      LOWORD(block) = 0;
      v20 = "error: invalid source address";
      goto LABEL_26;
    }

    goto LABEL_24;
  }

  v5 = this[3];
  v6 = *(v5 + 23);
  if (v6 == dispatch_get_specific("CurrentQueue"))
  {
    support::misc::safe_timer::start_sync(v5);
    if (!a3)
    {
      goto LABEL_16;
    }
  }

  else
  {
    *&block = MEMORY[0x29EDCA5F8];
    *(&block + 1) = 0x40000000;
    v26 = ___ZN7support4misc10safe_timer5startEv_block_invoke;
    v27 = &__block_descriptor_tmp_8;
    v28 = v5;
    dispatch_sync(v6, &block);
    if (!a3)
    {
      goto LABEL_16;
    }
  }

  do
  {
    if (*(this + 8) >= a3)
    {
      v8 = a3;
    }

    else
    {
      v8 = *(this + 8);
    }

    support::transport::getLogClient(v7);
    v9 = *qword_2A13A3760;
    v10 = os_log_type_enabled(*qword_2A13A3760, OS_LOG_TYPE_DEBUG);
    if (v10)
    {
      LODWORD(block) = 67109120;
      DWORD1(block) = v8;
      _os_log_debug_impl(&dword_297948000, v9, OS_LOG_TYPE_DEBUG, "writing %u byte(s)", &block, 8u);
    }

    support::transport::getLogClient(v10);
    v11 = *qword_2A13A3760;
    v7 = os_log_type_enabled(*qword_2A13A3760, OS_LOG_TYPE_DEBUG);
    if (v7)
    {
      LODWORD(block) = 134217984;
      *(&block + 4) = a3;
      _os_log_debug_impl(&dword_297948000, v11, OS_LOG_TYPE_DEBUG, "write success, remaining %zu bytes...", &block, 0xCu);
    }

    a3 -= v8;
  }

  while (a3);
LABEL_16:
  support::misc::safe_timer::stop(this[3]);
  v12 = this[3];
  v21 = 0;
  v22 = &v21;
  v23 = 0x2000000000;
  v24 = 0;
  v13 = *(v12 + 23);
  *&block = MEMORY[0x29EDCA5F8];
  *(&block + 1) = 1107296256;
  v26 = ___ZNK7support4misc10safe_timer9has_firedEv_block_invoke;
  v27 = &__block_descriptor_tmp_12_1;
  v28 = &v21;
  v29 = v12;
  dispatch_sync(v13, &block);
  v14 = *(v22 + 24);
  _Block_object_dispose(&v21, 8);
  if (v14 == 1)
  {
    support::transport::getLogClient(v15);
    v19 = *qword_2A13A3760;
    if (!os_log_type_enabled(*qword_2A13A3760, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    LOWORD(block) = 0;
    v20 = "error: write failed (timeout)";
LABEL_26:
    _os_log_error_impl(&dword_297948000, v19, OS_LOG_TYPE_ERROR, v20, &block, 2u);
    goto LABEL_24;
  }

  v16 = 1;
LABEL_18:
  support::misc::safe_timer::stop(this[3]);
  v17 = *MEMORY[0x29EDCA608];
  return v16;
}

uint64_t support::transport::airship::write(support::transport::airship *this, void *a2, unint64_t a3)
{
  v3 = a3;
  v50 = *MEMORY[0x29EDCA608];
  if (*(this + 4) < a3)
  {
    v6 = dispatch_group_create();
    *&v45.__state_ = 0xAAAAAAAAAAAAAAAALL;
    *&v7 = 0xAAAAAAAAAAAAAAAALL;
    *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&v45.__gate2_.__cv_.__opaque[8] = v7;
    *&v45.__gate2_.__cv_.__opaque[24] = v7;
    *&v45.__gate1_.__cv_.__opaque[24] = v7;
    *&v45.__gate2_.__cv_.__sig = v7;
    *&v45.__gate1_.__cv_.__sig = v7;
    *&v45.__gate1_.__cv_.__opaque[8] = v7;
    *&v45.__mut_.__m_.__opaque[24] = v7;
    *&v45.__mut_.__m_.__opaque[40] = v7;
    *&v45.__mut_.__m_.__sig = v7;
    *&v45.__mut_.__m_.__opaque[8] = v7;
    std::__shared_mutex_base::__shared_mutex_base(&v45);
    v42.__cv_.__sig = 1018212795;
    memset(v42.__cv_.__opaque, 0, sizeof(v42.__cv_.__opaque));
    v8 = operator new(0x58uLL);
    v8[3] = 850045863;
    v8[1] = 0;
    v8[2] = 0;
    *v8 = &unk_2A1E590A8;
    *(v8 + 2) = 0u;
    *(v8 + 3) = 0u;
    *(v8 + 4) = 0u;
    v8[10] = 0;
    v43 = (v8 + 3);
    v44 = v8;
    v37 = 0;
    v36 = 1;
    if (*(this + 72) == 1)
    {
      if (a2)
      {
        if (v6)
        {
          v9 = *(this + 3);
          v10 = *(v9 + 23);
          if (v10 == dispatch_get_specific("CurrentQueue"))
          {
            support::misc::safe_timer::start_sync(v9);
          }

          else
          {
            *block = MEMORY[0x29EDCA5F8];
            *&block[8] = 0x40000000;
            *&block[16] = ___ZN7support4misc10safe_timer5startEv_block_invoke;
            v47 = &__block_descriptor_tmp_8;
            v48 = v9;
            dispatch_sync(v10, block);
          }

          v13 = 0;
          while (1)
          {
            v14 = atomic_load(&v36);
            if ((v14 & 1) == 0)
            {
              break;
            }

            v15 = *(this + 8);
            if (v15 >= v3)
            {
              v16 = v3;
            }

            else
            {
              v16 = v15;
            }

            if ((atomic_load_explicit(&qword_2A13A3728, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A13A3728))
            {
              v24 = operator new(0x5890uLL);
              support::perf::memory_pool<support::transport::io_async_cb,256ul>::memory_pool(v24);
              qword_2A13A3720 = v24;
              __cxa_guard_release(&qword_2A13A3728);
            }

            v17 = qword_2A13A3720;
            *block = 0;
            if (!boost::lockfree::queue<support::transport::io_async_cb *>::pop<support::transport::io_async_cb *>((qword_2A13A3720 + 22528), block))
            {
              *block = aligned_alloc(8uLL, 0x58uLL);
              if (!*block)
              {
                exception = __cxa_allocate_exception(8uLL);
                v35 = std::bad_alloc::bad_alloc(exception);
                __cxa_throw(v35, MEMORY[0x29EDC9490], MEMORY[0x29EDC9408]);
              }

              atomic_fetch_add((v17 + 22664), 1uLL);
            }

            v18 = *block;
            dispatch_retain(v6);
            *v18 = v13;
            *(v18 + 8) = v16;
            *(v18 + 16) = 0;
            *(v18 + 40) = 0;
            *(v18 + 48) = v6;
            dispatch_retain(v6);
            v19 = *(v18 + 48);
            if (v19)
            {
              dispatch_group_enter(v19);
            }

            *(v18 + 56) = &v45;
            *(v18 + 64) = &v42;
            *(v18 + 72) = &v37;
            *(v18 + 80) = &v36;
            dispatch_release(v6);
            support::transport::getLogClient(v20);
            v21 = *qword_2A13A3760;
            v22 = os_log_type_enabled(*qword_2A13A3760, OS_LOG_TYPE_DEBUG);
            if (v22)
            {
              *block = 67109120;
              *&block[4] = v16;
              _os_log_debug_impl(&dword_297948000, v21, OS_LOG_TYPE_DEBUG, "writing %u byte(s)", block, 8u);
            }

            support::transport::getLogClient(v22);
            v23 = *qword_2A13A3760;
            if (os_log_type_enabled(*qword_2A13A3760, OS_LOG_TYPE_DEBUG))
            {
              *block = 134218240;
              *&block[4] = v13;
              *&block[12] = 2048;
              *&block[14] = v3;
              _os_log_debug_impl(&dword_297948000, v23, OS_LOG_TYPE_DEBUG, "write scheduled for tid %zu, remaining %zu bytes...", block, 0x16u);
              ++v13;
              v3 -= v16;
              if (!v3)
              {
                break;
              }
            }

            else
            {
              ++v13;
              v3 -= v16;
              if (!v3)
              {
                break;
              }
            }
          }

          support::misc::safe_timer::stop(*(this + 3));
          v25 = *(this + 3);
          v38 = 0;
          v39 = &v38;
          v40 = 0x2000000000;
          v41 = 0;
          v26 = *(v25 + 184);
          *block = MEMORY[0x29EDCA5F8];
          *&block[8] = 1107296256;
          *&block[16] = ___ZNK7support4misc10safe_timer9has_firedEv_block_invoke;
          v47 = &__block_descriptor_tmp_12_1;
          v48 = &v38;
          v49 = v25;
          dispatch_sync(v26, block);
          v27 = *(v39 + 24);
          _Block_object_dispose(&v38, 8);
          if (v27 != 1)
          {
            v29 = 1;
LABEL_33:
            support::misc::safe_timer::stop(*(this + 3));
            dispatch_group_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
            if (v29)
            {
              LOBYTE(v29) = atomic_load(&v36);
            }

            v30 = v44;
            if (v44 && !atomic_fetch_add(&v44->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v30->__on_zero_shared)(v30);
              std::__shared_weak_count::__release_weak(v30);
            }

            std::condition_variable::~condition_variable(&v42);
            std::condition_variable::~condition_variable(&v45.__gate2_);
            std::condition_variable::~condition_variable(&v45.__gate1_);
            std::mutex::~mutex(&v45.__mut_);
            if (v6)
            {
              dispatch_release(v6);
            }

            v31 = *MEMORY[0x29EDCA608];
            return v29 & 1;
          }

          support::transport::getLogClient(v28);
          v32 = *qword_2A13A3760;
          if (os_log_type_enabled(*qword_2A13A3760, OS_LOG_TYPE_ERROR))
          {
            *block = 0;
            v33 = "error: write failed (timeout)";
            goto LABEL_49;
          }

LABEL_50:
          v29 = 0;
          goto LABEL_33;
        }

        support::transport::getLogClient(v8);
        v32 = *qword_2A13A3760;
        if (!os_log_type_enabled(*qword_2A13A3760, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_50;
        }

        *block = 0;
        v33 = "error: failed to create dispatch group";
      }

      else
      {
        support::transport::getLogClient(v8);
        v32 = *qword_2A13A3760;
        if (!os_log_type_enabled(*qword_2A13A3760, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_50;
        }

        *block = 0;
        v33 = "error: invalid source address";
      }
    }

    else
    {
      support::transport::getLogClient(v8);
      v32 = *qword_2A13A3760;
      if (!os_log_type_enabled(*qword_2A13A3760, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_50;
      }

      *block = 0;
      v33 = "error: invalid state";
    }

LABEL_49:
    _os_log_error_impl(&dword_297948000, v32, OS_LOG_TYPE_ERROR, v33, block, 2u);
    goto LABEL_50;
  }

  v11 = *MEMORY[0x29EDCA608];

  return support::transport::airship::write_sync(this, a2, a3);
}

void sub_297951C1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::condition_variable *a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  operator delete(v28);
  __cxa_guard_abort(&qword_2A13A3728);
  std::condition_variable_any::~condition_variable_any(&a19);
  std::shared_mutex::~shared_mutex[abi:ne200100](&a27);
  if (v27)
  {
    dispatch_release(v27);
  }

  _Unwind_Resume(a1);
}

const void **ctu::cf::CFSharedRef<void const>::~CFSharedRef(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void *support::perf::memory_pool<support::transport::io_async_cb,256ul>::memory_pool(void *a1)
{
  a1[2816] = 0;
  a1[2824] = 0;
  v2 = a1 + 2832;
  a1[2832] = 0;
  v3 = 257;
  do
  {
    v4 = boost::alignment::aligned_allocator<boost::lockfree::queue<support::transport::io_async_cb *>::node,64ul>::allocate();
    *v4 = 0u;
    *(v4 + 16) = 0u;
    *(v4 + 32) = 0u;
    *(v4 + 48) = 0u;
    v23 = *v2 & 0xFFFF000000000000 | v4 & 0xFFFFFFFFFFFFLL;
    *(v4 & 0xFFFFFFFFFFFFLL) = *(v4 & 0xFFFFFFFFFFFFLL) & 0xFFFF000000000000 | *v2 & 0xFFFFFFFFFFFFLL;
    *v2 = v23;
    --v3;
  }

  while (v3);
  explicit = atomic_load_explicit(v2, memory_order_acquire);
  if ((explicit & 0xFFFFFFFFFFFFLL) != 0)
  {
    while (1)
    {
      v5 = explicit;
      v6 = explicit;
      atomic_compare_exchange_strong(v2, &v6, (explicit & 0xFFFF000000000000 | *(explicit & 0xFFFFFFFFFFFFLL) & 0xFFFFFFFFFFFFLL) + 0x1000000000000);
      if (v6 == v5)
      {
        break;
      }

      explicit = v6;
      if ((v6 & 0xFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_6;
      }
    }

    v7 = explicit & 0xFFFFFFFFFFFFLL;
    if ((explicit & 0xFFFFFFFFFFFFLL) == 0)
    {
      v8 = 0;
      goto LABEL_9;
    }
  }

  else
  {
LABEL_6:
    v7 = boost::alignment::aligned_allocator<boost::lockfree::queue<support::transport::io_async_cb *>::node,64ul>::allocate();
    *(v7 + 32) = 0u;
    *(v7 + 48) = 0u;
    *v7 = 0u;
    *(v7 + 16) = 0u;
  }

  *v7 = 0;
  v8 = v7 & 0xFFFFFFFFFFFFLL;
LABEL_9:
  v9 = 0;
  a1[2816] = v8;
  atomic_store(v8, a1 + 2824);
  a1[2833] = 0;
  do
  {
    v10 = atomic_load_explicit(a1 + 2832, memory_order_acquire);
    do
    {
      v26 = v10;
      if ((v10 & 0xFFFFFFFFFFFFLL) == 0)
      {
        v12 = boost::alignment::aligned_allocator<boost::lockfree::queue<support::transport::io_async_cb *>::node,64ul>::allocate();
        *(v12 + 32) = 0u;
        *(v12 + 48) = 0u;
        *v12 = 0u;
        *(v12 + 16) = 0u;
        goto LABEL_16;
      }

      v11 = v10;
      atomic_compare_exchange_strong(v2, &v10, (v10 & 0xFFFF000000000000 | *(v10 & 0xFFFFFFFFFFFFLL) & 0xFFFFFFFFFFFFLL) + 0x1000000000000);
    }

    while (v10 != v11);
    v12 = v26 & 0xFFFFFFFFFFFFLL;
    if ((v26 & 0xFFFFFFFFFFFFLL) == 0)
    {
      exception = __cxa_allocate_exception(8uLL);
      v22 = std::bad_alloc::bad_alloc(exception);
      __cxa_throw(v22, MEMORY[0x29EDC9490], MEMORY[0x29EDC9408]);
    }

LABEL_16:
    *(v12 + 8) = &a1[11 * v9];
    atomic_store((*v12 & 0xFFFF000000000000) + 0x1000000000000, v12);
    v13 = v12 & 0xFFFFFFFFFFFFLL;
    do
    {
      while (1)
      {
        do
        {
          v27 = atomic_load_explicit(a1 + 2824, memory_order_acquire);
          v15 = atomic_load_explicit((v27 & 0xFFFFFFFFFFFFLL), memory_order_acquire);
          v24 = v15;
        }

        while (v27 != atomic_load_explicit(a1 + 2824, memory_order_acquire));
        v16 = v15 & 0xFFFFFFFFFFFFLL;
        if (!v16)
        {
          break;
        }

        v14 = v27;
        atomic_compare_exchange_strong(a1 + 2824, &v14, (v27 & 0xFFFF000000000000 | v16) + 0x1000000000000);
      }

      v17 = v24;
      v18 = v24;
      atomic_compare_exchange_strong((v27 & 0xFFFFFFFFFFFFLL), &v18, (v24 & 0xFFFF000000000000 | v13) + 0x1000000000000);
    }

    while (v18 != v17);
    v19 = v27;
    atomic_compare_exchange_strong(a1 + 2824, &v19, (v27 & 0xFFFF000000000000 | v13) + 0x1000000000000);
    ++v9;
  }

  while (v9 != 256);
  return a1;
}

void *boost::alignment::aligned_allocator<boost::lockfree::queue<support::transport::io_async_cb *>::node,64ul>::allocate()
{
  __space = 120;
  v0 = malloc(0x80uLL);
  if (!v0 || (v1 = v0, v3 = v0 + 8, std::align(0x40uLL, 0x40uLL, &v3, &__space), *(v3 - 1) = v1, (result = v3) == 0))
  {
    std::bad_alloc::bad_alloc(&__space);
    boost::alignment::detail::throw_exception<std::bad_alloc>();
  }

  return result;
}

void boost::alignment::detail::throw_exception<std::bad_alloc>()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x29EDC9608] + 16;
  __cxa_throw(exception, MEMORY[0x29EDC9490], MEMORY[0x29EDC9408]);
}

unint64_t *boost::lockfree::detail::freelist_stack<boost::lockfree::queue<support::transport::io_async_cb *>::node,boost::alignment::aligned_allocator<boost::lockfree::queue<support::transport::io_async_cb *>::node,64ul>>::~freelist_stack(unint64_t *a1)
{
  v2 = atomic_load(a1);
  v5 = v2;
  while ((v5 & 0xFFFFFFFFFFFFLL) != 0)
  {
    v3 = v5 & 0xFFFFFFFFFFFFLL;
    v5 = *(v5 & 0xFFFFFFFFFFFFLL);
    free(*(v3 - 8));
  }

  return a1;
}

unint64_t *boost::lockfree::queue<support::transport::io_async_cb *>::~queue(unint64_t *a1)
{
  while (1)
  {
    while (1)
    {
      v8 = *a1;
      v7 = a1[8];
      v6 = *(*a1 & 0xFFFFFFFFFFFFLL);
      v2 = v6 & 0xFFFFFFFFFFFFLL;
      if (((v7 ^ *a1) & 0xFFFFFFFFFFFFLL) == 0)
      {
        break;
      }

      if (v2)
      {
        atomic_store((v8 & 0xFFFF000000000000 | v6 & 0xFFFFFFFFFFFFLL) + 0x1000000000000, a1);
        v9 = a1[16] & 0xFFFF000000000000 | v8 & 0xFFFFFFFFFFFFLL;
        *(v9 & 0xFFFFFFFFFFFFLL) = *(v8 & 0xFFFFFFFFFFFFLL) & 0xFFFF000000000000 | a1[16] & 0xFFFFFFFFFFFFLL;
        a1[16] = v9;
      }
    }

    if (!v2)
    {
      break;
    }

    atomic_store((v7 & 0xFFFF000000000000 | v6 & 0xFFFFFFFFFFFFLL) + 0x1000000000000, a1 + 8);
  }

  v10 = a1[16] & 0xFFFF000000000000 | *a1 & 0xFFFFFFFFFFFFLL;
  *(v10 & 0xFFFFFFFFFFFFLL) = *(*a1 & 0xFFFFFFFFFFFFLL) & 0xFFFF000000000000 | a1[16] & 0xFFFFFFFFFFFFLL;
  a1[16] = v10;
  v3 = atomic_load(a1 + 16);
  v11 = v3;
  while ((v11 & 0xFFFFFFFFFFFFLL) != 0)
  {
    v4 = v11 & 0xFFFFFFFFFFFFLL;
    v11 = *(v11 & 0xFFFFFFFFFFFFLL);
    free(*(v4 - 8));
  }

  return a1;
}

void std::__shared_ptr_emplace<std::mutex>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2A1E590A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<support::transport::airship::airship(support::transport::airship::protocol)::$_1 &&>>()
{
  if ((atomic_load_explicit(&qword_2A13A3728, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2A13A3728))
  {
    v0 = operator new(0x5890uLL);
    support::perf::memory_pool<support::transport::io_async_cb,256ul>::memory_pool(v0);
    qword_2A13A3720 = v0;

    __cxa_guard_release(&qword_2A13A3728);
  }
}

void sub_297952370(_Unwind_Exception *a1)
{
  operator delete(v1);
  __cxa_guard_abort(&qword_2A13A3728);
  _Unwind_Resume(a1);
}

void *std::__function::__func<support::transport::airship::airship(support::transport::airship::protocol)::$_0,std::allocator<support::transport::airship::airship(support::transport::airship::protocol)::$_0>,void ()(void)>::__clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_2A1E590F8;
  result[1] = v3;
  return result;
}

uint64_t std::__function::__func<support::transport::airship::airship(support::transport::airship::protocol)::$_0,std::allocator<support::transport::airship::airship(support::transport::airship::protocol)::$_0>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2A1E590F8;
  a2[1] = v2;
  return result;
}

BOOL std::__function::__func<support::transport::airship::airship(support::transport::airship::protocol)::$_0,std::allocator<support::transport::airship::airship(support::transport::airship::protocol)::$_0>,void ()(void)>::operator()(support::transport *a1)
{
  v1 = *(a1 + 1);
  support::transport::getLogClient(a1);
  v2 = *qword_2A13A3760;
  if (!os_log_type_enabled(*qword_2A13A3760, OS_LOG_TYPE_ERROR))
  {
    return support::transport::airship::stop(v1);
  }

  *v4 = 0;
  _os_log_error_impl(&dword_297948000, v2, OS_LOG_TYPE_ERROR, "error: io timeout, aborting...", v4, 2u);
  return support::transport::airship::stop(v1);
}

uint64_t std::__function::__func<support::transport::airship::airship(support::transport::airship::protocol)::$_0,std::allocator<support::transport::airship::airship(support::transport::airship::protocol)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN7support9transport7airshipC1ENS1_8protocolEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN7support9transport7airshipC1ENS1_8protocolEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN7support9transport7airshipC1ENS1_8protocolEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN7support9transport7airshipC1ENS1_8protocolEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

BOOL boost::lockfree::queue<support::transport::io_async_cb *>::pop<support::transport::io_async_cb *>(atomic_ullong *a1, void *a2)
{
  while (1)
  {
    while (1)
    {
      do
      {
        explicit = atomic_load_explicit(a1, memory_order_acquire);
        v11 = atomic_load_explicit(a1 + 8, memory_order_acquire);
        v2 = atomic_load_explicit((explicit & 0xFFFFFFFFFFFFLL), memory_order_acquire);
      }

      while (explicit != atomic_load_explicit(a1, memory_order_acquire));
      v3 = v2 & 0xFFFFFFFFFFFFLL;
      if (((v11 ^ explicit) & 0xFFFFFFFFFFFFLL) != 0)
      {
        break;
      }

      if (!v3)
      {
        return ((v11 ^ explicit) & 0xFFFFFFFFFFFFLL) != 0;
      }

      v6 = v11;
      atomic_compare_exchange_strong(a1 + 8, &v6, (v11 & 0xFFFF000000000000 | v2 & 0xFFFFFFFFFFFFLL) + 0x1000000000000);
    }

    if (v3)
    {
      *a2 = *((v2 & 0xFFFFFFFFFFFFLL) + 8);
      v4 = explicit;
      v5 = explicit;
      atomic_compare_exchange_strong(a1, &v5, (explicit & 0xFFFF000000000000 | v2 & 0xFFFFFFFFFFFFLL) + 0x1000000000000);
      if (v5 == v4)
      {
        break;
      }
    }
  }

  v13 = atomic_load_explicit(a1 + 16, memory_order_acquire);
  *(explicit & 0xFFFFFFFFFFFFLL) = *(explicit & 0xFFFFFFFFFFFFLL) & 0xFFFF000000000000 | v13 & 0xFFFFFFFFFFFFLL;
  v7 = v13;
  v8 = v13;
  atomic_compare_exchange_strong(a1 + 16, &v8, v13 & 0xFFFF000000000000 | explicit & 0xFFFFFFFFFFFFLL);
  if (v8 != v7)
  {
    do
    {
      *(explicit & 0xFFFFFFFFFFFFLL) = *(explicit & 0xFFFFFFFFFFFFLL) & 0xFFFF000000000000 | v8 & 0xFFFFFFFFFFFFLL;
      v9 = v8;
      atomic_compare_exchange_strong(a1 + 16, &v8, v8 & 0xFFFF000000000000 | explicit & 0xFFFFFFFFFFFFLL);
    }

    while (v8 != v9);
  }

  return ((v11 ^ explicit) & 0xFFFFFFFFFFFFLL) != 0;
}

uint64_t __cxx_global_var_init_1()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>::~PthreadMutexGuardPolicy, &ctu::Singleton<support::log::shared_stdio,support::log::shared_stdio,ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>>::sInstance, &dword_297948000);
  }

  return result;
}

void HSFilerRT_Internal::Session::create(uint64_t *a1@<X0>, int a2@<W1>, char a3@<W2>, NSObject **a4@<X3>, uint64_t *a5@<X8>)
{
  *a5 = 0;
  a5[1] = 0;
  if (capabilities::radio::vendor(a1) == 3)
  {
    v10 = operator new(0x98uLL);
    v10[1] = 0;
    v10[2] = 0;
    *v10 = &unk_2A1E59540;
    v11 = (v10 + 3);
    v12 = *a1;
    v13 = a1[1];
    v16[0] = v12;
    v16[1] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v14 = *a4;
    v15 = v14;
    if (v14)
    {
      dispatch_retain(v14);
    }

    HSFilerRT_Internal_INT::Session_INT::Session_INT(v11, v16, a2, a3, &v15);
    if (v14)
    {
      dispatch_release(v14);
    }

    if (v13)
    {
      if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v13->__on_zero_shared)(v13);
        std::__shared_weak_count::__release_weak(v13);
      }
    }

    *a5 = v11;
    a5[1] = v10;
  }
}

void sub_297952804(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (v13)
  {
    dispatch_release(v13);
  }

  std::shared_ptr<support::transport::AriSelfHostedRT::initRTServer(void)::syncVars>::~shared_ptr[abi:ne200100](&a11);
  std::__shared_weak_count::~__shared_weak_count(v12);
  operator delete(v15);
  std::shared_ptr<support::transport::AriSelfHostedRT::initRTServer(void)::syncVars>::~shared_ptr[abi:ne200100](v11);
  _Unwind_Resume(a1);
}

uint64_t HSFilerRT_Internal::Session::Session(uint64_t result, uint64_t *a2, int a3, char a4, NSObject **a5)
{
  v7 = *a2;
  v6 = a2[1];
  *result = &unk_2A1E59188;
  *(result + 8) = v7;
  *(result + 16) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  *(result + 24) = a3;
  *(result + 32) = 0u;
  *(result + 48) = 0u;
  *(result + 64) = 0;
  *(result + 72) = 1065353216;
  v8 = *a5;
  *(result + 80) = *a5;
  if (v8)
  {
    v9 = result;
    dispatch_retain(v8);
    result = v9;
  }

  *(result + 88) = 0;
  *(result + 96) = 0;
  *(result + 104) = 0;
  *(result + 112) = a4;
  *(result + 113) = 0;
  return result;
}

{
  v7 = *a2;
  v6 = a2[1];
  *result = &unk_2A1E59188;
  *(result + 8) = v7;
  *(result + 16) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  *(result + 24) = a3;
  *(result + 32) = 0u;
  *(result + 48) = 0u;
  *(result + 64) = 0;
  *(result + 72) = 1065353216;
  v8 = *a5;
  *(result + 80) = *a5;
  if (v8)
  {
    v9 = result;
    dispatch_retain(v8);
    result = v9;
  }

  *(result + 88) = 0;
  *(result + 96) = 0;
  *(result + 104) = 0;
  *(result + 112) = a4;
  *(result + 113) = 0;
  return result;
}

void HSFilerRT_Internal::Session::~Session(HSFilerRT_Internal::Session *this)
{
  *this = &unk_2A1E59188;
  HSFilerRT_Internal::Session::end(this);
  v2 = *(this + 13);
  *(this + 13) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
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

  v5 = *(this + 7);
  if (v5)
  {
    do
    {
      v8 = *v5;
      if (*(v5 + 39) < 0)
      {
        operator delete(v5[2]);
      }

      operator delete(v5);
      v5 = v8;
    }

    while (v8);
  }

  v6 = *(this + 5);
  *(this + 5) = 0;
  if (v6)
  {
    operator delete(v6);
  }

  v7 = *(this + 2);
  if (v7)
  {
    if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }
  }
}

{
  HSFilerRT_Internal::Session::~Session(this);

  operator delete(v1);
}

_BYTE *HSFilerRT_Internal::Session::markFileAsTransferred(uint64_t a1, __int128 *a2)
{
  result = std::__hash_table<std::__hash_value_type<std::string,BOOL>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,BOOL>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,BOOL>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,BOOL>>>::find<std::string>((a1 + 40), a2);
  if (result)
  {
    v5 = a2;
    result = std::__hash_table<std::__hash_value_type<std::string,BOOL>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,BOOL>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,BOOL>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,BOOL>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 40), a2, &v5);
    result[40] = 1;
  }

  return result;
}

uint64_t HSFilerRT_Internal::Session::fileTransferred(uint64_t a1, __int128 *a2)
{
  if (!std::__hash_table<std::__hash_value_type<std::string,BOOL>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,BOOL>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,BOOL>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,BOOL>>>::find<std::string>((a1 + 40), a2))
  {
    return 0;
  }

  v5 = a2;
  return std::__hash_table<std::__hash_value_type<std::string,BOOL>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,BOOL>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,BOOL>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,BOOL>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 40), a2, &v5)[5] & 1;
}

BOOL HSFilerRT_Internal::Session::allFilesTransferred(HSFilerRT_Internal::Session *this)
{
  v1 = this + 56;
  do
  {
    v1 = *v1;
  }

  while (v1 && (v1[40] & 1) != 0);
  return v1 == 0;
}

void HSFilerRT_Internal::Session::end(HSFilerRT_Internal::Session *this)
{
  v2 = *(this + 13);
  if (v2)
  {
    (*(*v2 + 16))(v2);
    v3 = *(this + 13);
    *(this + 13) = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }
  }

  *(this + 24) = 0;
  *(this + 113) = 0;
  if (*(this + 8))
  {
    v4 = *(this + 7);
    if (v4)
    {
      do
      {
        v6 = *v4;
        if (*(v4 + 39) < 0)
        {
          operator delete(v4[2]);
        }

        operator delete(v4);
        v4 = v6;
      }

      while (v6);
    }

    *(this + 7) = 0;
    v5 = *(this + 6);
    if (v5)
    {
      bzero(*(this + 5), 8 * v5);
    }

    *(this + 8) = 0;
  }
}

void HSFilerRT_Internal::HSFilerRT_Internal(HSFilerRT_Internal *this)
{
  i = this;
  v99[3] = *MEMORY[0x29EDCA608];
  *this = &unk_2A1E59990;
  initially_inactive = dispatch_queue_attr_make_initially_inactive(0);
  v3 = dispatch_queue_create_with_target_V2("HSFilerRT", initially_inactive, 0);
  dispatch_set_qos_class_floor(v3, QOS_CLASS_USER_INITIATED, 0);
  dispatch_activate(v3);
  *(i + 1) = 0;
  *(i + 2) = 0;
  *(i + 3) = v3;
  if (v3)
  {
    dispatch_retain(v3);
    *(i + 4) = 0;
    dispatch_release(v3);
  }

  else
  {
    *(i + 4) = 0;
  }

  *(i + 6) = 0;
  *(i + 5) = i + 48;
  v4 = (i + 40);
  *i = &unk_2A1E59990;
  *(i + 7) = 0;
  *(i + 8) = 0;
  *(i + 9) = 0;
  v67 = (i + 40);
  v68 = (i + 48);
  hsfiler_log_client::hsfiler_log_client((i + 80), "hsfiler.rt");
  ctu::DispatchTimerService::create(v5);
  *(i + 22) = 0;
  *(i + 46) = 0;
  *(i + 25) = 0;
  *(i + 26) = 0;
  *(i + 24) = 0;
  *(i + 216) = 0;
  v82[0] = 0;
  v82[1] = 0;
  v81 = v82;
  v86[0] = 1;
  v66 = i;
  std::map<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>::map[abi:ne200100](v87, &v81);
  v80[0] = 0;
  v80[1] = 0;
  v79 = v80;
  v88 = 2;
  std::map<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>::map[abi:ne200100](v89, &v79);
  v78[0] = 0;
  v78[1] = 0;
  v77 = v78;
  v90 = 3;
  std::map<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>::map[abi:ne200100](v91, &v77);
  v76[0] = 0;
  v76[1] = 0;
  v75 = v76;
  v92 = 4;
  std::map<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>::map[abi:ne200100](v93, &v75);
  v74[0] = 0;
  v74[1] = 0;
  v73 = v74;
  v94 = 5;
  std::map<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>::map[abi:ne200100](v95, &v73);
  v72[0] = 0;
  v72[1] = 0;
  v71 = v72;
  v96 = 6;
  std::map<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>::map[abi:ne200100](v97, &v71);
  v70[0] = 0;
  v70[1] = 0;
  v69 = v70;
  v98 = 7;
  std::map<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>::map[abi:ne200100](v99, &v69);
  if (*(i + 7))
  {
    v83 = i + 40;
    v84 = 0xAAAAAAAAAAAAAAAALL;
    v6 = *v4;
    *v4 = v68;
    *(*v68 + 16) = 0;
    *v68 = 0;
    *(i + 7) = 0;
    v7 = v6[1] ? v6[1] : v6;
    v85 = v7;
    if (v7)
    {
      v8 = v7[2];
      if (v8)
      {
        v9 = *v8;
        if (*v8 == v7)
        {
          *v8 = 0;
          while (1)
          {
            v65 = v8[1];
            if (!v65)
            {
              break;
            }

            do
            {
              v8 = v65;
              v65 = *v65;
            }

            while (v65);
          }
        }

        else
        {
          for (v8[1] = 0; v9; v9 = v8[1])
          {
            do
            {
              v8 = v9;
              v9 = *v9;
            }

            while (v9);
          }
        }
      }

      v10 = 0;
      v84 = v8;
      while (1)
      {
        v11 = &v86[v10];
        v12 = v68;
        v13 = *v68;
        v14 = v86[v10];
LABEL_19:
        v15 = v12;
        if (v13)
        {
          do
          {
            v12 = v13;
            v16 = *(v13 + 32);
            if (v14 < v16)
            {
              v13 = *v12;
              goto LABEL_19;
            }

            if (v16 >= v14)
            {
              goto LABEL_16;
            }

            v13 = v12[1];
          }

          while (v13);
          v15 = v12 + 1;
        }

        *(v7 + 8) = v14;
        if (v7 + 4 != v11)
        {
          v17 = *(v11 + 1);
          v18 = v11 + 4;
          if (!v7[7])
          {
            goto LABEL_70;
          }

          v20 = (v7 + 6);
          v19 = v7[6];
          v21 = v7[5];
          v7[5] = v7 + 6;
          *(v19 + 16) = 0;
          v7[6] = 0;
          v7[7] = 0;
          v22 = *(v21 + 8) ? *(v21 + 8) : v21;
          if (v22)
          {
            v23 = v22[2];
            if (v23)
            {
              v24 = *v23;
              if (*v23 == v22)
              {
                *v23 = 0;
                while (1)
                {
                  v53 = v23[1];
                  if (!v53)
                  {
                    break;
                  }

                  do
                  {
                    v23 = v53;
                    v53 = *v53;
                  }

                  while (v53);
                }
              }

              else
              {
                for (v23[1] = 0; v24; v24 = v23[1])
                {
                  do
                  {
                    v23 = v24;
                    v24 = *v24;
                  }

                  while (v24);
                }
              }
            }

            if (v17 == v18)
            {
              v35 = v17;
              v25 = v22;
            }

            else
            {
              do
              {
                v25 = v23;
                v22[4] = v17[4];
                v27 = v17[5];
                v26 = v17[6];
                if (v26)
                {
                  atomic_fetch_add_explicit((v26 + 8), 1uLL, memory_order_relaxed);
                }

                v28 = v22[6];
                v22[5] = v27;
                v22[6] = v26;
                if (v28 && !atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  v32 = v22;
                  (v28->__on_zero_shared)(v28);
                  std::__shared_weak_count::__release_weak(v28);
                  v22 = v32;
                  v29 = *v20;
                  v30 = (v7 + 6);
                  v31 = (v7 + 6);
                  if (*v20)
                  {
                    do
                    {
LABEL_43:
                      while (1)
                      {
                        v30 = v29;
                        if (v22[4] >= v29[4])
                        {
                          break;
                        }

                        v29 = *v29;
                        v31 = v30;
                        if (!*v30)
                        {
                          goto LABEL_48;
                        }
                      }

                      v29 = v29[1];
                    }

                    while (v29);
                    v31 = v30 + 1;
                  }
                }

                else
                {
                  v29 = *v20;
                  v30 = (v7 + 6);
                  v31 = (v7 + 6);
                  if (*v20)
                  {
                    goto LABEL_43;
                  }
                }

LABEL_48:
                *v22 = 0;
                v22[1] = 0;
                v22[2] = v30;
                *v31 = v22;
                v33 = *v7[5];
                if (v33)
                {
                  v7[5] = v33;
                }

                std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v7[6], v22);
                ++v7[7];
                if (v25)
                {
                  v23 = v25[2];
                  if (v23)
                  {
                    v37 = *v23;
                    if (*v23 == v25)
                    {
                      *v23 = 0;
                      while (1)
                      {
                        v38 = v23[1];
                        if (!v38)
                        {
                          break;
                        }

                        do
                        {
                          v23 = v38;
                          v38 = *v38;
                        }

                        while (v38);
                      }
                    }

                    else
                    {
                      for (v23[1] = 0; v37; v37 = v23[1])
                      {
                        do
                        {
                          v23 = v37;
                          v37 = *v37;
                        }

                        while (v37);
                      }
                    }
                  }
                }

                else
                {
                  v23 = 0;
                }

                v34 = v17[1];
                if (v34)
                {
                  do
                  {
                    v35 = v34;
                    v34 = *v34;
                  }

                  while (v34);
                }

                else
                {
                  do
                  {
                    v35 = v17[2];
                    v36 = *v35 == v17;
                    v17 = v35;
                  }

                  while (!v36);
                }

                if (!v25)
                {
                  break;
                }

                v22 = v25;
                v17 = v35;
              }

              while (v35 != v18);
            }

            std::__tree<std::__value_type<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>>>::destroy((v7 + 5), v25);
            if (v23)
            {
              v39 = v23[2];
              for (i = v66; v39; v39 = v39[2])
              {
                v23 = v39;
              }

              std::__tree<std::__value_type<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>>>::destroy((v7 + 5), v23);
              if (v35 == v18)
              {
                goto LABEL_98;
              }

LABEL_79:
              v40 = (v7 + 6);
              while (2)
              {
                v41 = operator new(0x38uLL);
                v42 = v35[4];
                v41[4] = v42;
                v41[5] = v35[5];
                v43 = v35[6];
                v41[6] = v43;
                if (v43)
                {
                  atomic_fetch_add_explicit((v43 + 8), 1uLL, memory_order_relaxed);
                }

                v44 = *v40;
                v45 = (v7 + 6);
                v46 = (v7 + 6);
                if (*v40)
                {
                  do
                  {
                    while (1)
                    {
                      v45 = v44;
                      if (v42 >= v44[4])
                      {
                        break;
                      }

                      v44 = *v44;
                      v46 = v45;
                      if (!*v45)
                      {
                        goto LABEL_88;
                      }
                    }

                    v44 = v44[1];
                  }

                  while (v44);
                  *v41 = 0;
                  v41[1] = 0;
                  v41[2] = v45;
                  v45[1] = v41;
                  v47 = *v7[5];
                  if (v47)
                  {
LABEL_89:
                    v7[5] = v47;
                  }
                }

                else
                {
LABEL_88:
                  *v41 = 0;
                  v41[1] = 0;
                  v41[2] = v45;
                  *v46 = v41;
                  v47 = *v7[5];
                  if (v47)
                  {
                    goto LABEL_89;
                  }
                }

                std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v7[6], v41);
                ++v7[7];
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
                  do
                  {
                    v49 = v35[2];
                    v36 = *v49 == v35;
                    v35 = v49;
                  }

                  while (!v36);
                }

                v35 = v49;
                if (v49 == v18)
                {
                  goto LABEL_98;
                }

                continue;
              }
            }

            i = v66;
            if (v35 != v18)
            {
              goto LABEL_79;
            }
          }

          else
          {
LABEL_70:
            v35 = v17;
            i = v66;
            if (v35 != v18)
            {
              goto LABEL_79;
            }
          }
        }

LABEL_98:
        *v7 = 0;
        v7[1] = 0;
        v7[2] = v12;
        *v15 = v7;
        v50 = **v67;
        if (v50)
        {
          *v67 = v50;
        }

        std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(i + 6), v7);
        ++*(i + 7);
        v7 = v84;
        v85 = v84;
        if (!v84)
        {
          k = v10 * 4 + 32;
          std::__tree<std::__value_type<HSFilerClientID,std::map<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>>,std::__map_value_compare<HSFilerClientID,std::__value_type<HSFilerClientID,std::map<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>>,std::less<HSFilerClientID>,true>,std::allocator<std::__value_type<HSFilerClientID,std::map<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>>>>::destroy(v83, 0);
          v4 = v67;
          if (k == 224)
          {
            goto LABEL_132;
          }

          goto LABEL_119;
        }

        v8 = *(v84 + 16);
        if (v8)
        {
          v51 = *v8;
          if (*v8 == v84)
          {
            *v8 = 0;
            while (1)
            {
              v52 = v8[1];
              if (!v52)
              {
                break;
              }

              do
              {
                v8 = v52;
                v52 = *v52;
              }

              while (v52);
            }
          }

          else
          {
            for (v8[1] = 0; v51; v51 = v8[1])
            {
              do
              {
                v8 = v51;
                v51 = *v51;
              }

              while (v51);
            }
          }
        }

        v84 = v8;
LABEL_16:
        v10 += 8;
        if (v10 == 56)
        {
          v62 = v83;
          std::__tree<std::__value_type<HSFilerClientID,std::map<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>>,std::__map_value_compare<HSFilerClientID,std::__value_type<HSFilerClientID,std::map<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>>,std::less<HSFilerClientID>,true>,std::allocator<std::__value_type<HSFilerClientID,std::map<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>>>>::destroy(v83, v7);
          if (v8)
          {
            for (j = v8[2]; j; j = j[2])
            {
              v8 = j;
            }

            std::__tree<std::__value_type<HSFilerClientID,std::map<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>>,std::__map_value_compare<HSFilerClientID,std::__value_type<HSFilerClientID,std::map<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>>,std::less<HSFilerClientID>,true>,std::allocator<std::__value_type<HSFilerClientID,std::map<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>>>>::destroy(v62, v8);
          }

          goto LABEL_132;
        }
      }
    }
  }

  for (k = 0; k != 224; k += 32)
  {
LABEL_119:
    v55 = *(v86 + k);
    v56 = v68;
    while (1)
    {
      v57 = *v56;
      v58 = v56;
      if (!*v56)
      {
        break;
      }

      while (1)
      {
        v56 = v57;
        v59 = *(v57 + 32);
        if (v59 > v55)
        {
          break;
        }

        if (v59 >= v55)
        {
          goto LABEL_118;
        }

        v57 = v56[1];
        if (!v57)
        {
          v58 = v56 + 1;
          goto LABEL_125;
        }
      }
    }

LABEL_125:
    v60 = operator new(0x40uLL);
    v83 = v60;
    v84 = v4;
    v85 = 0;
    v60[8] = v55;
    std::map<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>::map[abi:ne200100](v60 + 5, (&v86[2] + k));
    *v60 = 0;
    *(v60 + 1) = 0;
    *(v60 + 2) = v56;
    *v58 = v60;
    v61 = **v4;
    if (v61)
    {
      *v4 = v61;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(i + 6), v60);
    ++*(i + 7);
LABEL_118:
    ;
  }

LABEL_132:
  std::__tree<std::__value_type<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>>>::destroy(v99, v99[1]);
  std::__tree<std::__value_type<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>>>::destroy(v97, v97[1]);
  std::__tree<std::__value_type<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>>>::destroy(v95, v95[1]);
  std::__tree<std::__value_type<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>>>::destroy(v93, v93[1]);
  std::__tree<std::__value_type<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>>>::destroy(v91, v91[1]);
  std::__tree<std::__value_type<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>>>::destroy(v89, v89[1]);
  std::__tree<std::__value_type<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>>>::destroy(v87, v87[1]);
  std::__tree<std::__value_type<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>>>::destroy(&v69, v70[0]);
  std::__tree<std::__value_type<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>>>::destroy(&v71, v72[0]);
  std::__tree<std::__value_type<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>>>::destroy(&v73, v74[0]);
  std::__tree<std::__value_type<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>>>::destroy(&v75, v76[0]);
  std::__tree<std::__value_type<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>>>::destroy(&v77, v78[0]);
  std::__tree<std::__value_type<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>>>::destroy(&v79, v80[0]);
  std::__tree<std::__value_type<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>>>::destroy(&v81, v82[0]);
  v64 = *MEMORY[0x29EDCA608];
}

void sub_297953638(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, void **a14, char a15, void *a16, uint64_t a17, char a18, void *a19, uint64_t a20, char a21, void *a22, uint64_t a23, char a24, void *a25, uint64_t a26, char a27, void *a28, uint64_t a29, char a30, void *a31, uint64_t a32, char a33, void *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  v42 = (v39 + 192);
  std::__tree<std::__value_type<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>>>::destroy(&a15, a16);
  std::__tree<std::__value_type<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>>>::destroy(&a18, a19);
  std::__tree<std::__value_type<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>>>::destroy(&a21, a22);
  std::__tree<std::__value_type<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>>>::destroy(&a24, a25);
  std::__tree<std::__value_type<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>>>::destroy(&a27, a28);
  std::__tree<std::__value_type<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>>>::destroy(&a30, a31);
  std::__tree<std::__value_type<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>>>::destroy(&a33, a34);
  if (&a39 != (v39 + 192))
  {
    do
    {
      std::__tree<std::__value_type<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>>>::destroy((v42 - 24), *(v42 - 2));
      v42 -= 32;
    }

    while (v42 != &a39);
  }

  v43 = a12[26];
  if (v43)
  {
    _Block_release(v43);
  }

  v44 = a12[25];
  if (v44)
  {
    std::__shared_weak_count::__release_weak(v44);
  }

  std::shared_ptr<support::transport::AriSelfHostedRT::initRTServer(void)::syncVars>::~shared_ptr[abi:ne200100]((a12 + 20));
  hsfiler_log_client::~hsfiler_log_client((a12 + 10));
  std::shared_ptr<support::transport::AriSelfHostedRT::initRTServer(void)::syncVars>::~shared_ptr[abi:ne200100](a11);
  std::__tree<std::__value_type<HSFilerClientID,std::map<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>>,std::__map_value_compare<HSFilerClientID,std::__value_type<HSFilerClientID,std::map<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>>,std::less<HSFilerClientID>,true>,std::allocator<std::__value_type<HSFilerClientID,std::map<unsigned long long,std::shared_ptr<HSFilerRT_Internal::Session>>>>>::destroy(a13, *a14);
  ctu::SharedSynchronizable<HSFilerRT_Internal>::~SharedSynchronizable(v40);
  _Unwind_Resume(a1);
}

void sub_297953834(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x29795382CLL);
}

void *ctu::SharedSynchronizable<HSFilerRT_Internal>::~SharedSynchronizable(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

double HSFilerRT_Internal::create@<D0>(HSFilerRT_Internal *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  if (capabilities::radio::vendor(this) == 3)
  {
    _ZNSt3__115allocate_sharedB8ne200100I22HSFilerRT_Internal_INTNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_(v4);
    result = v4[0];
    *a2 = *v4;
  }

  return result;
}

uint64_t HSFilerRT_Internal::createSession(uint64_t a1, uint64_t *a2, int a3, unsigned int a4, NSObject **a5)
{
  v49 = *MEMORY[0x29EDCA608];
  if (a4 >= 9)
  {
    v15 = **(a1 + 128);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = a4;
      _os_log_error_impl(&dword_297948000, v15, OS_LOG_TYPE_ERROR, "error: Invalid clientID param: %d", buf, 8u);
    }

    goto LABEL_19;
  }

  if (!*a5)
  {
    v16 = **(a1 + 128);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_297948000, v16, OS_LOG_TYPE_ERROR, "error: NULL queue param", buf, 2u);
    }

LABEL_19:
    v17 = 0;
    goto LABEL_41;
  }

  v9 = a3;
  if (a3)
  {
    v10 = "read";
  }

  else
  {
    v10 = "write";
  }

  __dst.__r_.__value_.__l.__size_ = 0xAAAAAAAAAAAAAAAALL;
  __dst.__r_.__value_.__r.__words[2] = 0xAAAAAAAAAAAAAAAALL;
  if (a3)
  {
    v11 = 4;
  }

  else
  {
    v11 = 5;
  }

  __dst.__r_.__value_.__r.__words[0] = 0xAAAAAAAAAAAAAAAALL;
  *(&__dst.__r_.__value_.__s + 23) = v11;
  memcpy(&__dst, v10, v11);
  *(&__dst | v11) = 0;
  v12 = **(a1 + 128);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = hsfiler::support::to_string(a4);
    p_dst = &__dst;
    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_dst = __dst.__r_.__value_.__r.__words[0];
    }

    *buf = 136315394;
    *&buf[4] = v13;
    *&buf[12] = 2080;
    *&buf[14] = p_dst;
    _os_log_impl(&dword_297948000, v12, OS_LOG_TYPE_DEFAULT, "Creating client (%s) %s session", buf, 0x16u);
  }

  v39 = 0;
  v40 = &v39;
  v41 = 0x2000000000;
  v42 = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2000000000;
  v38 = 0;
  v28[0] = MEMORY[0x29EDCA5F8];
  v28[1] = 1174405120;
  v28[2] = ___ZN18HSFilerRT_Internal13createSessionENSt3__110shared_ptrI8RegistryEEb15HSFilerClientIDN8dispatch5queueE_block_invoke;
  v28[3] = &__block_descriptor_tmp_3;
  v28[6] = a1;
  v33 = a4;
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = __dst;
  }

  v18 = a2[1];
  v30 = *a2;
  v31 = v18;
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v34 = v9;
  v19 = *a5;
  object = v19;
  if (v19)
  {
    dispatch_retain(v19);
  }

  v28[4] = &v35;
  v28[5] = &v39;
  v44 = v28;
  *buf = MEMORY[0x29EDCA5F8];
  *&buf[8] = 0x40000000;
  *&buf[16] = ___ZNK3ctu20SharedSynchronizableI18HSFilerRT_InternalE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  v46 = &__block_descriptor_tmp_83;
  v47 = a1 + 8;
  v48 = &v44;
  v20 = *(a1 + 24);
  if (*(a1 + 32))
  {
    dispatch_async_and_wait(v20, buf);
    if (*(v40 + 24) != 1)
    {
      goto LABEL_33;
    }
  }

  else
  {
    dispatch_sync(v20, buf);
    if (*(v40 + 24) != 1)
    {
      goto LABEL_33;
    }
  }

  v21 = **(a1 + 128);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = hsfiler::support::to_string(a4);
    v23 = &__dst;
    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v23 = __dst.__r_.__value_.__r.__words[0];
    }

    v24 = v36[3];
    *buf = 136315650;
    *&buf[4] = v22;
    *&buf[12] = 2080;
    *&buf[14] = v23;
    *&buf[22] = 2048;
    v46 = v24;
    _os_log_impl(&dword_297948000, v21, OS_LOG_TYPE_DEFAULT, "Created client (%s) %s session (%llu)", buf, 0x20u);
  }

LABEL_33:
  v17 = v36[3];
  if (object)
  {
    dispatch_release(object);
  }

  v25 = v31;
  if (!v31 || atomic_fetch_add(&v31->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

  (v25->__on_zero_shared)(v25);
  std::__shared_weak_count::__release_weak(v25);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_38:
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_39:
  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(&v39, 8);
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

LABEL_41:
  v26 = *MEMORY[0x29EDCA608];
  return v17;
}

void sub_297953D84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, dispatch_object_t object, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (object)
  {
    dispatch_release(object);
  }

  std::shared_ptr<support::transport::AriSelfHostedRT::initRTServer(void)::syncVars>::~shared_ptr[abi:ne200100](v39 + 80);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(&a30, 8);
  if (a39 < 0)
  {
    operator delete(a34);
  }

  _Unwind_Resume(a1);
}

void ___ZN18HSFilerRT_Internal13createSessionENSt3__110shared_ptrI8RegistryEEb15HSFilerClientIDN8dispatch5queueE_block_invoke(uint64_t a1)
{
  v49 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 48);
  v4 = (v2 + 48);
  v3 = *(v2 + 48);
  v5 = *(a1 + 104);
  v6 = (v2 + 48);
  v7 = (v2 + 48);
  if (v3)
  {
    while (1)
    {
      while (1)
      {
        v7 = v3;
        v8 = *(v3 + 32);
        if (v5 >= v8)
        {
          break;
        }

        v3 = *v7;
        v6 = v7;
        if (!*v7)
        {
          goto LABEL_8;
        }
      }

      if (v8 >= v5)
      {
        break;
      }

      v3 = v7[1];
      if (!v3)
      {
        v6 = v7 + 1;
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    v9 = v7;
    v7 = operator new(0x40uLL);
    *(v7 + 8) = v5;
    v7[7] = 0;
    v7[6] = 0;
    v7[5] = (v7 + 6);
    *v7 = 0;
    v7[1] = 0;
    v7[2] = v9;
    *v6 = v7;
    v10 = **(v2 + 40);
    if (v10)
    {
      *(v2 + 40) = v10;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v2 + 48), v7);
    ++*(v2 + 56);
  }

  if (v7[7] == 20)
  {
    v11 = **(v2 + 128);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = hsfiler::support::to_string(*(a1 + 104));
      v13 = (a1 + 56);
      if (*(a1 + 79) < 0)
      {
        v13 = *v13;
      }

      *buf = 136315650;
      v44 = v12;
      v45 = 2080;
      v46 = v13;
      v47 = 2048;
      v48 = 20;
      _os_log_error_impl(&dword_297948000, v11, OS_LOG_TYPE_ERROR, "error: Failed client (%s) create %s session: max number of sessions (%zu) reached", buf, 0x20u);
    }

    goto LABEL_59;
  }

  v41 = 0xAAAAAAAAAAAAAAAALL;
  v42 = 0xAAAAAAAAAAAAAAAALL;
  v14 = *(a1 + 88);
  v40[0] = *(a1 + 80);
  v40[1] = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v15 = *(a1 + 104);
  v16 = *(a1 + 108);
  v17 = *(a1 + 96);
  v39 = v17;
  if (v17)
  {
    dispatch_retain(v17);
  }

  HSFilerRT_Internal::Session::create(v40, v15, v16, &v39, &v41);
  if (v17)
  {
    dispatch_release(v17);
  }

  if (!v14 || atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (v41)
    {
      goto LABEL_25;
    }

LABEL_37:
    v27 = **(v2 + 128);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = hsfiler::support::to_string(*(a1 + 104));
      v29 = (a1 + 56);
      if (*(a1 + 79) < 0)
      {
        v29 = *v29;
      }

      *buf = 136315394;
      v44 = v28;
      v45 = 2080;
      v46 = v29;
      _os_log_error_impl(&dword_297948000, v27, OS_LOG_TYPE_ERROR, "error: Failed client (%s) create %s session: Session obj alloc failed", buf, 0x16u);
    }

    goto LABEL_56;
  }

  (v14->__on_zero_shared)(v14);
  std::__shared_weak_count::__release_weak(v14);
  if (!v41)
  {
    goto LABEL_37;
  }

LABEL_25:
  *(*(*(a1 + 32) + 8) + 24) = atomic_fetch_add((v2 + 176), 1uLL) + 1;
  *(v41 + 32) = *(*(*(a1 + 32) + 8) + 24);
  v18 = *(v2 + 48);
  v19 = *(a1 + 104);
  v20 = (v2 + 48);
  if (v18)
  {
    while (1)
    {
      while (1)
      {
        v20 = v18;
        v21 = *(v18 + 32);
        if (v19 >= v21)
        {
          break;
        }

        v18 = *v20;
        v4 = v20;
        if (!*v20)
        {
          goto LABEL_32;
        }
      }

      if (v21 >= v19)
      {
        break;
      }

      v18 = v20[1];
      if (!v18)
      {
        v4 = v20 + 1;
        goto LABEL_32;
      }
    }

    v22 = v20;
    v25 = (v20 + 6);
    v24 = v20[6];
    v26 = *(*(*(a1 + 32) + 8) + 24);
    if (v24)
    {
      goto LABEL_44;
    }

LABEL_42:
    v30 = v25;
LABEL_48:
    v32 = operator new(0x38uLL);
    v32[5] = 0;
    v32[6] = 0;
    v32[4] = v26;
    *v32 = 0;
    v32[1] = 0;
    v32[2] = v30;
    *v25 = v32;
    v33 = *v22[5];
    if (v33)
    {
      v22[5] = v33;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v22[6], v32);
    v22[7] = (v22[7] + 1);
    v35 = v41;
    v34 = v42;
    if (!v42)
    {
      goto LABEL_52;
    }

    goto LABEL_51;
  }

LABEL_32:
  v22 = operator new(0x40uLL);
  *(v22 + 8) = v19;
  v22[7] = 0;
  v22[6] = 0;
  v22[5] = v22 + 6;
  *v22 = 0;
  v22[1] = 0;
  v22[2] = v20;
  *v4 = v22;
  v23 = **(v2 + 40);
  if (v23)
  {
    *(v2 + 40) = v23;
  }

  std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v2 + 48), v22);
  ++*(v2 + 56);
  v25 = v22 + 6;
  v24 = v22[6];
  v26 = *(*(*(a1 + 32) + 8) + 24);
  if (!v24)
  {
    goto LABEL_42;
  }

  while (1)
  {
LABEL_44:
    while (1)
    {
      v30 = v24;
      v31 = v24[4];
      if (v26 >= v31)
      {
        break;
      }

      v24 = *v30;
      v25 = v30;
      if (!*v30)
      {
        goto LABEL_48;
      }
    }

    if (v31 >= v26)
    {
      break;
    }

    v24 = v30[1];
    if (!v24)
    {
      v25 = v30 + 1;
      goto LABEL_48;
    }
  }

  v32 = v30;
  v35 = v41;
  v34 = v42;
  if (!v42)
  {
    goto LABEL_52;
  }

LABEL_51:
  atomic_fetch_add_explicit((v34 + 8), 1uLL, memory_order_relaxed);
LABEL_52:
  v36 = v32[6];
  v32[5] = v35;
  v32[6] = v34;
  if (v36 && !atomic_fetch_add(&v36->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v36->__on_zero_shared)(v36);
    std::__shared_weak_count::__release_weak(v36);
  }

  *(*(*(a1 + 40) + 8) + 24) = 1;
LABEL_56:
  v37 = v42;
  if (v42 && !atomic_fetch_add((v42 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v37->__on_zero_shared)(v37);
    std::__shared_weak_count::__release_weak(v37);
  }

LABEL_59:
  v38 = *MEMORY[0x29EDCA608];
}

void sub_297954300(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::shared_ptr<support::transport::AriSelfHostedRT::initRTServer(void)::syncVars>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_297954314(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::shared_ptr<support::transport::AriSelfHostedRT::initRTServer(void)::syncVars>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_297954328(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (v11)
  {
    dispatch_release(v11);
  }

  std::shared_ptr<support::transport::AriSelfHostedRT::initRTServer(void)::syncVars>::~shared_ptr[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

void __copy_helper_block_e8_32r40r56c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE80c35_ZTSNSt3__110shared_ptrI8RegistryEE96c21_ZTSN8dispatch5queueE(uint64_t a1, uint64_t a2)
{
  _Block_object_assign((a1 + 32), *(a2 + 32), 8);
  _Block_object_assign((a1 + 40), *(a2 + 40), 8);
  if (*(a2 + 79) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 56), *(a2 + 56), *(a2 + 64));
  }

  else
  {
    v4 = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 56) = v4;
  }

  v5 = *(a2 + 88);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a2 + 96);
  *(a1 + 96) = v6;
  if (v6)
  {

    dispatch_retain(v6);
  }
}

void sub_2979543F4(_Unwind_Exception *a1)
{
  _Block_object_dispose(*(v1 + 40), 8);
  _Block_object_dispose(*(v1 + 32), 8);
  _Unwind_Resume(a1);
}

void __destroy_helper_block_e8_32r40r56c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE80c35_ZTSNSt3__110shared_ptrI8RegistryEE96c21_ZTSN8dispatch5queueE(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 88);
  if (!v3 || atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((*(a1 + 79) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  (v3->__on_zero_shared)(v3);
  std::__shared_weak_count::__release_weak(v3);
  if (*(a1 + 79) < 0)
  {
LABEL_6:
    operator delete(*(a1 + 56));
  }

LABEL_7:
  _Block_object_dispose(*(a1 + 40), 8);
  v4 = *(a1 + 32);

  _Block_object_dispose(v4, 8);
}

void HSFilerRT_Internal::destroySession(uint64_t a1, int a2, uint64_t a3)
{
  v3[0] = MEMORY[0x29EDCA5F8];
  v3[1] = 0x40000000;
  v3[2] = ___ZN18HSFilerRT_Internal14destroySessionE15HSFilerClientIDy_block_invoke;
  v3[3] = &__block_descriptor_tmp_4;
  v4 = a2;
  v3[4] = a1;
  v3[5] = a3;
  ctu::SharedSynchronizable<HSFilerRT_Internal>::execute_wrapped((a1 + 8), v3);
}

void ___ZN18HSFilerRT_Internal14destroySessionE15HSFilerClientIDy_block_invoke(uint64_t a1)
{
  v5 = 0xAAAAAAAAAAAAAAAALL;
  v6 = 0xAAAAAAAAAAAAAAAALL;
  v1 = *(a1 + 32);
  HSFilerRT_Internal::findSession_sync(v1, *(a1 + 48), *(a1 + 40), &v5);
  if (!v5)
  {
    goto LABEL_6;
  }

  v2 = v6;
  v4[0] = v5;
  v4[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  HSFilerRT_Internal::destroySession_sync(v1, v4);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = v6;
    if (!v6)
    {
      return;
    }
  }

  else
  {
LABEL_6:
    v3 = v6;
    if (!v6)
    {
      return;
    }
  }

  if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);

    std::__shared_weak_count::__release_weak(v3);
  }
}

void sub_297954660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  std::shared_ptr<support::transport::AriSelfHostedRT::initRTServer(void)::syncVars>::~shared_ptr[abi:ne200100](&a9);
  std::shared_ptr<support::transport::AriSelfHostedRT::initRTServer(void)::syncVars>::~shared_ptr[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

uint64_t *HSFilerRT_Internal::findSession_sync@<X0>(uint64_t *result@<X0>, unsigned int a2@<W1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  if (a2 > 8)
  {
    goto LABEL_20;
  }

  v7 = result;
  v9 = result + 6;
  v8 = result[6];
  if (v8)
  {
    while (1)
    {
      while (1)
      {
        v10 = v8;
        v11 = *(v8 + 32);
        if (v11 <= a2)
        {
          break;
        }

        v8 = *v10;
        v9 = v10;
        if (!*v10)
        {
          goto LABEL_9;
        }
      }

      if (v11 >= a2)
      {
        break;
      }

      v8 = v10[1];
      if (!v8)
      {
        v9 = v10 + 1;
        goto LABEL_9;
      }
    }
  }

  else
  {
    v10 = result + 6;
LABEL_9:
    v12 = v10;
    v10 = operator new(0x40uLL);
    *(v10 + 8) = a2;
    v10[7] = 0;
    v10[6] = 0;
    v10[5] = (v10 + 6);
    *v10 = 0;
    v10[1] = 0;
    v10[2] = v12;
    *v9 = v10;
    v13 = *v7[5];
    if (v13)
    {
      v7[5] = v13;
    }

    result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v7[6], v10);
    ++v7[7];
  }

  v16 = v10[6];
  v15 = v10 + 6;
  v14 = v16;
  if (!v16)
  {
    goto LABEL_20;
  }

  v17 = v15;
  do
  {
    v18 = v14[4];
    v19 = v18 >= a3;
    v20 = v18 < a3;
    if (v19)
    {
      v17 = v14;
    }

    v14 = v14[v20];
  }

  while (v14);
  if (v17 != v15 && v17[4] <= a3)
  {
    v22 = v17[5];
    v21 = v17[6];
    *a4 = v22;
    a4[1] = v21;
    if (v21)
    {
      atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
LABEL_20:
    *a4 = 0;
    a4[1] = 0;
  }

  return result;
}

void HSFilerRT_Internal::destroySession_sync(uint64_t a1, void *a2)
{
  v80 = *MEMORY[0x29EDCA608];
  v4 = **(a1 + 128);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = hsfiler::support::to_string(*(*a2 + 24));
    v6 = *(*a2 + 32);
    *buf = 136315394;
    v77 = v5;
    v78 = 2048;
    v79 = v6;
    _os_log_impl(&dword_297948000, v4, OS_LOG_TYPE_DEFAULT, "Destroying client (%s) session (%llu)", buf, 0x16u);
  }

  v74 = 0;
  v75 = 0;
  v7 = *(a1 + 200);
  if (!v7 || (v75 = std::__shared_weak_count::lock(v7)) == 0)
  {
LABEL_16:
    v14 = (a1 + 48);
    v13 = *(a1 + 48);
    v15 = *(*a2 + 24);
    if (v13)
    {
      goto LABEL_21;
    }

LABEL_19:
    v16 = v14;
LABEL_25:
    v18 = operator new(0x40uLL);
    v18[8] = v15;
    *(v18 + 7) = 0;
    *(v18 + 6) = 0;
    *(v18 + 5) = v18 + 12;
    *v18 = 0;
    *(v18 + 1) = 0;
    *(v18 + 2) = v16;
    *v14 = v18;
    v19 = **(a1 + 40);
    if (v19)
    {
      *(a1 + 40) = v19;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(a1 + 48), v18);
    ++*(a1 + 56);
    v21 = (v18 + 12);
    v20 = *(v18 + 6);
    if (!v20)
    {
      goto LABEL_125;
    }

    goto LABEL_30;
  }

  v8 = *(a1 + 192);
  v74 = v8;
  v9 = *a2;
  if (v8 && *(v8 + 32) == *(v9 + 32))
  {
    v10 = **(a1 + 128);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v58 = hsfiler::support::to_string(*(v9 + 24));
      v59 = *(*a2 + 32);
      *buf = 136315394;
      v77 = v58;
      v78 = 2048;
      v79 = v59;
      _os_log_error_impl(&dword_297948000, v10, OS_LOG_TYPE_ERROR, "error: Client (%s) destroying session (%llu) while it is currently in progress", buf, 0x16u);
      v11 = a2[1];
      v72 = *a2;
      v73 = v11;
      if (!v11)
      {
LABEL_10:
        HSFilerRT_Internal::logSessionFileTransferStatus_sync(a1, &v72);
        if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v11->__on_zero_shared)(v11);
          std::__shared_weak_count::__release_weak(v11);
        }

        v12 = *(a1 + 200);
        *(a1 + 192) = 0;
        *(a1 + 200) = 0;
        if (v12)
        {
          std::__shared_weak_count::__release_weak(v12);
        }

        HSFilerRT_Internal::resetBaseband_sync(a1, *(*a2 + 24), *(*a2 + 32), -7);
        goto LABEL_16;
      }
    }

    else
    {
      v11 = a2[1];
      v72 = v9;
      v73 = v11;
      if (!v11)
      {
        goto LABEL_10;
      }
    }

    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    goto LABEL_10;
  }

  v14 = (a1 + 48);
  v13 = *(a1 + 48);
  v15 = *(v9 + 24);
  if (!v13)
  {
    goto LABEL_19;
  }

  while (1)
  {
LABEL_21:
    while (1)
    {
      v16 = v13;
      v17 = *(v13 + 32);
      if (v15 >= v17)
      {
        break;
      }

      v13 = *v16;
      v14 = v16;
      if (!*v16)
      {
        goto LABEL_25;
      }
    }

    if (v17 >= v15)
    {
      break;
    }

    v13 = v16[1];
    if (!v13)
    {
      v14 = v16 + 1;
      goto LABEL_25;
    }
  }

  v18 = v16;
  v21 = (v16 + 6);
  v20 = v16[6];
  if (!v20)
  {
    goto LABEL_125;
  }

LABEL_30:
  v22 = *(*a2 + 32);
  v23 = v21;
  v24 = v20;
  do
  {
    v25 = v24[4];
    v26 = v25 >= v22;
    v27 = v25 < v22;
    if (v26)
    {
      v23 = v24;
    }

    v24 = v24[v27];
  }

  while (v24);
  if (v23 == v21 || v22 < v23[4])
  {
    goto LABEL_125;
  }

  v28 = v23[1];
  if (v28)
  {
    v29 = v23[1];
    do
    {
      v30 = v29;
      v29 = *v29;
    }

    while (v29);
  }

  else
  {
    v31 = v23;
    do
    {
      v30 = v31[2];
      v42 = *v30 == v31;
      v31 = v30;
    }

    while (!v42);
  }

  if (*(v18 + 5) != v23)
  {
    --*(v18 + 7);
    v32 = *v23;
    if (*v23)
    {
      goto LABEL_46;
    }

LABEL_53:
    v33 = v23;
    if (v28)
    {
      goto LABEL_49;
    }

    goto LABEL_54;
  }

  *(v18 + 5) = v30;
  --*(v18 + 7);
  v32 = *v23;
  if (!*v23)
  {
    goto LABEL_53;
  }

LABEL_46:
  if (!v28)
  {
    v28 = v32;
    v33 = v23;
    v34 = 0;
    v35 = v23[2];
    v32[2] = v35;
    v36 = *v35;
    if (*v35 == v23)
    {
      goto LABEL_55;
    }

LABEL_50:
    v35[1] = v28;
    v37 = *(v33 + 24);
    if (v33 == v23)
    {
      goto LABEL_65;
    }

LABEL_61:
    v38 = v23[2];
    v33[2] = v38;
    v38[*v38 != v23] = v33;
    v39 = *v23;
    *v33 = *v23;
    v39[2] = v33;
    v40 = v23[1];
    v33[1] = v40;
    if (v40)
    {
      v40[2] = v33;
    }

    *(v33 + 24) = *(v23 + 24);
    if (v20 == v23)
    {
      v20 = v33;
    }

    goto LABEL_65;
  }

  do
  {
    v33 = v28;
    v28 = *v28;
  }

  while (v28);
  v28 = v33[1];
  if (!v28)
  {
LABEL_54:
    v35 = v33[2];
    v34 = 1;
    v36 = *v35;
    if (*v35 == v33)
    {
      goto LABEL_55;
    }

    goto LABEL_50;
  }

LABEL_49:
  v34 = 0;
  v35 = v33[2];
  v28[2] = v35;
  v36 = *v35;
  if (*v35 != v33)
  {
    goto LABEL_50;
  }

LABEL_55:
  *v35 = v28;
  if (v33 == v20)
  {
    v36 = 0;
    v20 = v28;
    v37 = *(v33 + 24);
    if (v33 == v23)
    {
      goto LABEL_65;
    }

    goto LABEL_61;
  }

  v36 = v35[1];
  v37 = *(v33 + 24);
  if (v33 != v23)
  {
    goto LABEL_61;
  }

LABEL_65:
  if (!v20 || !v37)
  {
    goto LABEL_121;
  }

  if (!v34)
  {
    *(v28 + 24) = 1;
    goto LABEL_121;
  }

  while (1)
  {
    v43 = *(v36 + 2);
    v44 = *v43;
    v45 = *(v36 + 24);
    if (*v43 == v36)
    {
      break;
    }

    if ((*(v36 + 24) & 1) == 0)
    {
      *(v36 + 24) = 1;
      *(v43 + 24) = 0;
      v46 = *(v43 + 8);
      v47 = *v46;
      *(v43 + 8) = *v46;
      if (v47)
      {
        *(v47 + 16) = v43;
      }

      v48 = *(v43 + 16);
      v46[2] = v48;
      v48[*v48 != v43] = v46;
      *v46 = v43;
      *(v43 + 16) = v46;
      if (v20 == *v36)
      {
        v20 = v36;
      }

      v36 = *(*v36 + 8);
    }

    v49 = *v36;
    if (*v36 && v49[24] != 1)
    {
      v50 = *(v36 + 1);
      if (v50 && (v50[24] & 1) == 0)
      {
LABEL_112:
        v49 = v36;
      }

      else
      {
        v49[24] = 1;
        *(v36 + 24) = 0;
        v60 = *(v49 + 1);
        *v36 = v60;
        if (v60)
        {
          *(v60 + 16) = v36;
        }

        v61 = *(v36 + 2);
        *(v49 + 2) = v61;
        v61[*v61 != v36] = v49;
        *(v49 + 1) = v36;
        *(v36 + 2) = v49;
        v50 = v36;
      }

      v62 = *(v49 + 2);
      v49[24] = *(v62 + 24);
      *(v62 + 24) = 1;
      v50[24] = 1;
      v63 = *(v62 + 8);
      v64 = *v63;
      *(v62 + 8) = *v63;
      if (v64)
      {
        *(v64 + 16) = v62;
      }

      v65 = *(v62 + 16);
      v63[2] = v65;
      v65[*v65 != v62] = v63;
      *v63 = v62;
      goto LABEL_120;
    }

    v50 = *(v36 + 1);
    if (v50 && v50[24] != 1)
    {
      goto LABEL_112;
    }

    *(v36 + 24) = 0;
    v41 = *(v36 + 2);
    if (v41 == v20 || (v41[3] & 1) == 0)
    {
      goto LABEL_104;
    }

LABEL_73:
    v36 = *(v41[2] + (*v41[2] == v41));
  }

  if ((*(v36 + 24) & 1) == 0)
  {
    *(v36 + 24) = 1;
    *(v43 + 24) = 0;
    v51 = v44[1];
    *v43 = v51;
    if (v51)
    {
      *(v51 + 16) = v43;
    }

    v52 = *(v43 + 16);
    v44[2] = v52;
    v52[*v52 != v43] = v44;
    v44[1] = v43;
    *(v43 + 16) = v44;
    v53 = *(v36 + 1);
    if (v20 == v53)
    {
      v20 = v36;
    }

    v36 = *v53;
  }

  v54 = *v36;
  if (*v36 && v54[24] != 1)
  {
    goto LABEL_116;
  }

  v55 = *(v36 + 1);
  if (!v55 || v55[24] == 1)
  {
    *(v36 + 24) = 0;
    v41 = *(v36 + 2);
    v42 = *(v41 + 24) != 1 || v41 == v20;
    if (v42)
    {
LABEL_104:
      *(v41 + 24) = 1;
      goto LABEL_121;
    }

    goto LABEL_73;
  }

  if (v54 && (v54[24] & 1) == 0)
  {
LABEL_116:
    v55 = v36;
    goto LABEL_117;
  }

  v55[24] = 1;
  *(v36 + 24) = 0;
  v56 = *v55;
  *(v36 + 1) = *v55;
  if (v56)
  {
    *(v56 + 16) = v36;
  }

  v57 = *(v36 + 2);
  *(v55 + 2) = v57;
  v57[*v57 != v36] = v55;
  *v55 = v36;
  *(v36 + 2) = v55;
  v54 = v36;
LABEL_117:
  v62 = *(v55 + 2);
  v55[24] = *(v62 + 24);
  *(v62 + 24) = 1;
  v54[24] = 1;
  v63 = *v62;
  v66 = *(*v62 + 8);
  *v62 = v66;
  if (v66)
  {
    *(v66 + 16) = v62;
  }

  v67 = *(v62 + 16);
  v63[2] = v67;
  v67[*v67 != v62] = v63;
  v63[1] = v62;
LABEL_120:
  *(v62 + 16) = v63;
LABEL_121:
  v68 = v23[6];
  if (v68 && !atomic_fetch_add(&v68->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v69 = v23;
    (v68->__on_zero_shared)(v68);
    std::__shared_weak_count::__release_weak(v68);
    v23 = v69;
  }

  operator delete(v23);
LABEL_125:
  v70 = v75;
  if (v75 && !atomic_fetch_add(&v75->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v70->__on_zero_shared)(v70);
    std::__shared_weak_count::__release_weak(v70);
  }

  v71 = *MEMORY[0x29EDCA608];
}

void sub_297954FAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::shared_ptr<support::transport::AriSelfHostedRT::initRTServer(void)::syncVars>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_297954FC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::shared_ptr<support::transport::AriSelfHostedRT::initRTServer(void)::syncVars>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_297954FD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  std::shared_ptr<support::transport::AriSelfHostedRT::initRTServer(void)::syncVars>::~shared_ptr[abi:ne200100](&a9);
  std::shared_ptr<support::transport::AriSelfHostedRT::initRTServer(void)::syncVars>::~shared_ptr[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

void sub_297954FF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::shared_ptr<support::transport::AriSelfHostedRT::initRTServer(void)::syncVars>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t HSFilerRT_Internal::queueSession(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t *a4, const void **a5, int a6)
{
  v50 = *MEMORY[0x29EDCA608];
  v7 = *a5;
  if (!*a5)
  {
    v17 = **(a1 + 128);
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    *buf = 0;
    v16 = "error: NULL sessionCb param";
    v18 = v17;
    v19 = 2;
LABEL_23:
    _os_log_error_impl(&dword_297948000, v18, OS_LOG_TYPE_ERROR, v16, buf, v19);
    goto LABEL_24;
  }

  v11 = *a4;
  v10 = a4[1];
  if (*a4 == v10)
  {
    v20 = **(a1 + 128);
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    *buf = 136315394;
    *&buf[4] = hsfiler::support::to_string(a2);
    *&buf[12] = 2048;
    *&buf[14] = a3;
    v16 = "error: Failed client (%s) queue session (%llu): fileIDs empty";
    v18 = v20;
    v19 = 22;
    goto LABEL_23;
  }

  if (0xAAAAAAAAAAAAAAABLL * ((v10 - v11) >> 3) < 0x1F)
  {
    while (1)
    {
      v22 = *(v11 + 23);
      if ((v22 & 0x8000000000000000) != 0)
      {
        v22 = *(v11 + 8);
      }

      if (v22 >= 0x65)
      {
        break;
      }

      v11 += 24;
      if (v11 == v10)
      {
        v25 = **(a1 + 128);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          *&buf[4] = hsfiler::support::to_string(a2);
          *&buf[12] = 2048;
          *&buf[14] = a3;
          _os_log_impl(&dword_297948000, v25, OS_LOG_TYPE_DEFAULT, "Queueing client (%s) session (%llu)", buf, 0x16u);
          v7 = *a5;
        }

        v41 = 0;
        v42 = &v41;
        v43 = 0x2000000000;
        v44 = 0;
        v37[0] = MEMORY[0x29EDCA5F8];
        v37[1] = 1174405120;
        v37[2] = ___ZN18HSFilerRT_Internal12queueSessionE15HSFilerClientIDyRKNSt3__16vectorINS1_12basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEENS6_IS8_EEEEN8dispatch5blockIU13block_pointerFvy13HSFilerStatusEEEj_block_invoke;
        v37[3] = &__block_descriptor_tmp_9_0;
        v39 = a2;
        v37[5] = a1;
        v37[6] = a3;
        v37[7] = a4;
        if (v7)
        {
          v26 = _Block_copy(v7);
        }

        else
        {
          v26 = 0;
        }

        v40 = a6;
        aBlock = v26;
        v37[4] = &v41;
        v45 = v37;
        *buf = MEMORY[0x29EDCA5F8];
        *&buf[8] = 0x40000000;
        *&buf[16] = ___ZNK3ctu20SharedSynchronizableI18HSFilerRT_InternalE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
        v47 = &__block_descriptor_tmp_83;
        v48 = a1 + 8;
        v49 = &v45;
        v32 = *(a1 + 24);
        if (*(a1 + 32))
        {
          dispatch_async_and_wait(v32, buf);
          if (*(v42 + 24) == 1)
          {
            goto LABEL_29;
          }

LABEL_33:
          v29 = 0;
          v35 = aBlock;
          if (!aBlock)
          {
LABEL_37:
            _Block_object_dispose(&v41, 8);
            v36 = *MEMORY[0x29EDCA608];
            return v29 & 1;
          }
        }

        else
        {
          dispatch_sync(v32, buf);
          if (*(v42 + 24) != 1)
          {
            goto LABEL_33;
          }

LABEL_29:
          v33 = **(a1 + 128);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            v34 = hsfiler::support::to_string(a2);
            *buf = 136315394;
            *&buf[4] = v34;
            *&buf[12] = 2048;
            *&buf[14] = a3;
            _os_log_impl(&dword_297948000, v33, OS_LOG_TYPE_DEFAULT, "Queued client (%s) session (%llu)", buf, 0x16u);
            v29 = *(v42 + 24);
            v35 = aBlock;
            if (!aBlock)
            {
              goto LABEL_37;
            }
          }

          else
          {
            v29 = 1;
            v35 = aBlock;
            if (!aBlock)
            {
              goto LABEL_37;
            }
          }
        }

        _Block_release(v35);
        goto LABEL_37;
      }
    }

    v13 = **(a1 + 128);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    v27 = hsfiler::support::to_string(a2);
    v28 = *(v11 + 23);
    if ((v28 & 0x8000000000000000) != 0)
    {
      v28 = *(v11 + 8);
    }

    *buf = 136315906;
    *&buf[4] = v27;
    *&buf[12] = 2048;
    *&buf[14] = a3;
    *&buf[22] = 2048;
    v47 = v28;
    LOWORD(v48) = 1024;
    *(&v48 + 2) = 100;
    v16 = "error: Failed client (%s) queue session (%llu) fileID length (%lu) > max allowed (%d)";
    goto LABEL_22;
  }

  v13 = **(a1 + 128);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v14 = hsfiler::support::to_string(a2);
    v15 = 0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3);
    *buf = 136315906;
    *&buf[4] = v14;
    *&buf[12] = 2048;
    *&buf[14] = a3;
    *&buf[22] = 2048;
    v47 = v15;
    LOWORD(v48) = 1024;
    *(&v48 + 2) = 30;
    v16 = "error: Failed client (%s) queue session (%llu): num files (%lu) > max allowed (%d)";
LABEL_22:
    v18 = v13;
    v19 = 38;
    goto LABEL_23;
  }

LABEL_24:
  v29 = 0;
  v30 = *MEMORY[0x29EDCA608];
  return v29 & 1;
}

void sub_2979554B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *aBlock, uint64_t a19, char a20)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  _Block_object_dispose(&a20, 8);
  _Unwind_Resume(a1);
}

void sub_2979554DC(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void ___ZN18HSFilerRT_Internal12queueSessionE15HSFilerClientIDyRKNSt3__16vectorINS1_12basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEENS6_IS8_EEEEN8dispatch5blockIU13block_pointerFvy13HSFilerStatusEEEj_block_invoke(uint64_t a1)
{
  v53 = *MEMORY[0x29EDCA608];
  v49 = 0xAAAAAAAAAAAAAAAALL;
  v50 = 0xAAAAAAAAAAAAAAAALL;
  v2 = *(a1 + 40);
  HSFilerRT_Internal::findSession_sync(v2, *(a1 + 72), *(a1 + 48), &v49);
  v3 = v49;
  if (!v49)
  {
    goto LABEL_62;
  }

  if (*(v49 + 113) == 1)
  {
    v4 = **(v2 + 128);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = hsfiler::support::to_string(*(a1 + 72));
      v6 = *(a1 + 48);
      LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
      *(buf.__r_.__value_.__r.__words + 4) = v5;
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2048;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = v6;
      _os_log_error_impl(&dword_297948000, v4, OS_LOG_TYPE_ERROR, "error: Failed client (%s) queue session (%llu): already queued", &buf, 0x16u);
    }

    goto LABEL_62;
  }

  v7 = *(a1 + 56);
  v8 = *v7;
  v9 = v7[1];
  if (*v7 != v9)
  {
    do
    {
      buf.__r_.__value_.__r.__words[0] = v8;
      *(std::__hash_table<std::__hash_value_type<std::string,BOOL>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,BOOL>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,BOOL>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,BOOL>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((v3 + 40), v8, &buf) + 40) = 0;
      v11 = **(v2 + 128);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = v8;
        if (*(v8 + 23) < 0)
        {
          v12 = *v8;
        }

        v10 = *(v3 + 32);
        LODWORD(buf.__r_.__value_.__l.__data_) = 134218242;
        *(buf.__r_.__value_.__r.__words + 4) = v10;
        WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = v12;
        _os_log_impl(&dword_297948000, v11, OS_LOG_TYPE_DEFAULT, "Session (%llu) added file (%s)", &buf, 0x16u);
      }

      v8 += 24;
    }

    while (v8 != v9);
  }

  v13 = *(a1 + 64);
  if (v13)
  {
    v13 = _Block_copy(v13);
  }

  v14 = *(v3 + 88);
  *(v3 + 88) = v13;
  if (v14)
  {
    _Block_release(v14);
  }

  std::to_string(&v48, *(v3 + 32));
  v15 = std::string::insert(&v48, 0, "Session ", 8uLL);
  v16 = *&v15->__r_.__value_.__l.__data_;
  buf.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
  *&buf.__r_.__value_.__l.__data_ = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  size = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
  if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
  {
    if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) - 17) < 6)
    {
      v18 = SHIBYTE(buf.__r_.__value_.__r.__words[2]) + 6;
      p_buf = &buf;
      v20 = 22;
LABEL_22:
      v22 = 2 * v20;
      if (v18 > 2 * v20)
      {
        v22 = v18;
      }

      if ((v22 | 7) == 0x17)
      {
        v23 = 25;
      }

      else
      {
        v23 = (v22 | 7) + 1;
      }

      if (v22 >= 0x17)
      {
        v21 = v23;
      }

      else
      {
        v21 = 23;
      }

      v24 = v20 == 22;
      goto LABEL_31;
    }

    v29 = &buf;
LABEL_38:
    v30 = v29 + size;
    *(v30 + 2) = 29285;
    *v30 = 1835627552;
    v31 = size + 6;
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      buf.__r_.__value_.__l.__size_ = size + 6;
    }

    else
    {
      *(&buf.__r_.__value_.__s + 23) = v31 & 0x7F;
    }

    v28 = v29 + v31;
    goto LABEL_42;
  }

  size = buf.__r_.__value_.__l.__size_;
  v20 = (buf.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v20 - buf.__r_.__value_.__l.__size_ >= 6)
  {
    v29 = buf.__r_.__value_.__r.__words[0];
    goto LABEL_38;
  }

  v21 = 0x7FFFFFFFFFFFFFF7;
  v18 = buf.__r_.__value_.__l.__size_ + 6;
  if (0x7FFFFFFFFFFFFFF7 - (buf.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < buf.__r_.__value_.__l.__size_ + 6 - v20)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  p_buf = buf.__r_.__value_.__r.__words[0];
  if (v20 <= 0x3FFFFFFFFFFFFFF2)
  {
    goto LABEL_22;
  }

  v24 = 0;
LABEL_31:
  v25 = operator new(v21);
  v26 = v25;
  if (size)
  {
    memmove(v25, p_buf, size);
  }

  v27 = v26 + size;
  *(v27 + 4) = 29285;
  *v27 = 1835627552;
  if (!v24)
  {
    operator delete(p_buf);
  }

  buf.__r_.__value_.__l.__size_ = v18;
  buf.__r_.__value_.__r.__words[2] = v21 | 0x8000000000000000;
  buf.__r_.__value_.__r.__words[0] = v26;
  v28 = (v26 + v18);
LABEL_42:
  *v28 = 0;
  v32 = *&buf.__r_.__value_.__l.__data_;
  v33 = buf.__r_.__value_.__r.__words[2];
  memset(&buf, 0, sizeof(buf));
  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v48.__r_.__value_.__l.__data_);
    v34 = *(v2 + 160);
    if ((v33 & 0x8000000000000000) == 0)
    {
      goto LABEL_44;
    }

LABEL_46:
    std::string::__init_copy_ctor_external(&v46, v32, *(&v32 + 1));
    goto LABEL_47;
  }

  v34 = *(v2 + 160);
  if ((v33 & 0x8000000000000000) != 0)
  {
    goto LABEL_46;
  }

LABEL_44:
  *&v46.__r_.__value_.__l.__data_ = v32;
  v46.__r_.__value_.__r.__words[2] = v33;
LABEL_47:
  v35 = *(a1 + 76);
  v36 = *(v2 + 24);
  if (v36)
  {
    dispatch_retain(*(v2 + 24));
  }

  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 0x40000000;
  aBlock[2] = ___ZN18HSFilerRT_Internal12queueSessionE15HSFilerClientIDyRKNSt3__16vectorINS1_12basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEENS6_IS8_EEEEN8dispatch5blockIU13block_pointerFvy13HSFilerStatusEEEj_block_invoke_7;
  aBlock[3] = &__block_descriptor_tmp_8_0;
  v45 = *(a1 + 72);
  v37 = *(a1 + 48);
  aBlock[4] = v2;
  aBlock[5] = v37;
  v38 = _Block_copy(aBlock);
  buf = v46;
  memset(&v46, 0, sizeof(v46));
  v48.__r_.__value_.__r.__words[0] = v36;
  v51 = v38;
  (*(*v34 + 16))(&v47, v34, &buf, 0, 1000000 * v35, 0, &v48, &v51);
  if (v51)
  {
    _Block_release(v51);
  }

  if (v48.__r_.__value_.__r.__words[0])
  {
    dispatch_release(v48.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  v39 = v47;
  v47 = 0;
  v40 = *(v3 + 104);
  *(v3 + 104) = v39;
  if (v40)
  {
    (*(*v40 + 8))(v40);
    v41 = v47;
    v47 = 0;
    if (v41)
    {
      (*(*v41 + 8))(v41);
    }
  }

  if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v46.__r_.__value_.__l.__data_);
  }

  *(v3 + 113) = 1;
  HSFilerRT_Internal::sessionScheduler_sync(v2);
  *(*(*(a1 + 32) + 8) + 24) = 1;
  if ((v33 & 0x8000000000000000) != 0)
  {
    operator delete(v32);
  }

LABEL_62:
  v42 = v50;
  if (v50 && !atomic_fetch_add((v50 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v42->__on_zero_shared)(v42);
    std::__shared_weak_count::__release_weak(v42);
  }

  v43 = *MEMORY[0x29EDCA608];
}

void sub_297955AA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, char a32)
{
  if (v33 < 0)
  {
    operator delete(v32);
    std::shared_ptr<support::transport::AriSelfHostedRT::initRTServer(void)::syncVars>::~shared_ptr[abi:ne200100](&a32);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<support::transport::AriSelfHostedRT::initRTServer(void)::syncVars>::~shared_ptr[abi:ne200100](&a32);
  _Unwind_Resume(a1);
}

void ___ZN18HSFilerRT_Internal12queueSessionE15HSFilerClientIDyRKNSt3__16vectorINS1_12basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEENS6_IS8_EEEEN8dispatch5blockIU13block_pointerFvy13HSFilerStatusEEEj_block_invoke_7(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = 0;
  HSFilerRT_Internal::abortSession_sync(v2, v1, v3, -2, &v4);
  if (v4 == 1)
  {

    HSFilerRT_Internal::resetBaseband_sync(v2, v1, v3, -2);
  }

  else
  {

    HSFilerRT_Internal::sessionScheduler_sync(v2);
  }
}

void HSFilerRT_Internal::handleSessionError_sync(HSFilerRT_Internal *a1, unsigned int a2, unint64_t a3, int a4)
{
  v8 = 0;
  HSFilerRT_Internal::abortSession_sync(a1, a2, a3, a4, &v8);
  if (v8 == 1 && ((a4 + 10) <= 8 && ((1 << (a4 + 10)) & 0x137) != 0 || a4 == 0x7FFFFFFF))
  {

    HSFilerRT_Internal::resetBaseband_sync(a1, a2, a3, a4);
  }

  else
  {

    HSFilerRT_Internal::sessionScheduler_sync(a1);
  }
}

void HSFilerRT_Internal::sessionScheduler_sync(HSFilerRT_Internal *this)
{
  v38 = *MEMORY[0x29EDCA608];
  v2 = *(this + 25);
  if ((!v2 || *(v2 + 8) == -1) && (*(this + 216) & 1) == 0)
  {
    v3 = *(this + 5);
    v4 = (this + 48);
    if (v3 != (this + 48))
    {
      v5 = -1;
      v6 = -1;
      v7 = *(this + 5);
      do
      {
        if (v7[7])
        {
          v8 = v7[5];
          if (v8 != v7 + 6)
          {
            v9 = 0;
            do
            {
              v10 = v8[1];
              v11 = v8;
              if (v10)
              {
                do
                {
                  v12 = v10;
                  v10 = *v10;
                }

                while (v10);
              }

              else
              {
                do
                {
                  v12 = v11[2];
                  v13 = *v12 == v11;
                  v11 = v12;
                }

                while (!v13);
              }

              v9 += *(v8[5] + 113);
              v8 = v12;
            }

            while (v12 != v7 + 6);
            if (v9 && v9 < v5)
            {
              v6 = *(v7 + 8);
              v5 = v9;
            }
          }
        }

        v14 = v7[1];
        if (v14)
        {
          do
          {
            v15 = v14;
            v14 = *v14;
          }

          while (v14);
        }

        else
        {
          do
          {
            v15 = v7[2];
            v13 = *v15 == v7;
            v7 = v15;
          }

          while (!v13);
        }

        v7 = v15;
      }

      while (v15 != v4);
      if (v6 != -1)
      {
        v16 = *v4;
        v17 = (this + 48);
        if (*v4)
        {
          while (1)
          {
            while (1)
            {
              v17 = v16;
              v18 = *(v16 + 32);
              if (v6 >= v18)
              {
                break;
              }

              v16 = *v17;
              v4 = v17;
              if (!*v17)
              {
                goto LABEL_34;
              }
            }

            if (v18 >= v6)
            {
              break;
            }

            v16 = v17[1];
            if (!v16)
            {
              v4 = v17 + 1;
              goto LABEL_34;
            }
          }
        }

        else
        {
LABEL_34:
          v19 = v17;
          v17 = operator new(0x40uLL);
          *(v17 + 8) = v6;
          v17[7] = 0;
          v17[6] = 0;
          v17[5] = (v17 + 6);
          *v17 = 0;
          v17[1] = 0;
          v17[2] = v19;
          *v4 = v17;
          if (*v3)
          {
            *(this + 5) = *v3;
          }

          std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(this + 6), v17);
          ++*(this + 7);
        }

        v20 = v17[5];
        v22 = *(v20 + 40);
        v21 = *(v20 + 48);
        if (v21)
        {
          atomic_fetch_add_explicit(&v21->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        }

        v23 = *(this + 25);
        *(this + 24) = v22;
        *(this + 25) = v21;
        if (v23)
        {
          std::__shared_weak_count::__release_weak(v23);
          v21 = *(this + 25);
        }

        if (v21)
        {
          v24 = std::__shared_weak_count::lock(v21);
          __dst[4] = v24;
          if (v24)
          {
            v25 = v24;
            v26 = *(this + 24);
            __dst[3] = v26;
            if (v26)
            {
              memset(__dst, 170, 24);
              if (*(v26 + 112))
              {
                v27 = "read";
              }

              else
              {
                v27 = "write";
              }

              if (*(v26 + 112))
              {
                v28 = 4;
              }

              else
              {
                v28 = 5;
              }

              HIBYTE(__dst[2]) = v28;
              memcpy(__dst, v27, v28);
              *(__dst | v28) = 0;
              v29 = **(this + 16);
              if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
              {
                v30 = hsfiler::support::to_string(v6);
                v31 = __dst;
                if (SHIBYTE(__dst[2]) < 0)
                {
                  v31 = __dst[0];
                }

                v32 = *(v26 + 32);
                *buf = 136315650;
                *&buf[4] = v30;
                *&buf[12] = 2080;
                *&buf[14] = v31;
                *&buf[22] = 2048;
                v36 = v32;
                _os_log_impl(&dword_297948000, v29, OS_LOG_TYPE_DEFAULT, "Scheduling client (%s) %s session (%llu)", buf, 0x20u);
              }

              *buf = MEMORY[0x29EDCA5F8];
              *&buf[8] = 0x40000000;
              *&buf[16] = ___ZN18HSFilerRT_Internal12startSessionEv_block_invoke;
              v36 = &__block_descriptor_tmp_12;
              v37 = this;
              ctu::SharedSynchronizable<HSFilerRT_Internal>::execute_wrapped(this + 1, buf);
              if (SHIBYTE(__dst[2]) < 0)
              {
                operator delete(__dst[0]);
              }
            }

            if (!atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v25->__on_zero_shared)(v25);
              std::__shared_weak_count::__release_weak(v25);
            }
          }
        }
      }
    }
  }

  v33 = *MEMORY[0x29EDCA608];
}

void sub_2979560EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::shared_ptr<support::transport::AriSelfHostedRT::initRTServer(void)::syncVars>::~shared_ptr[abi:ne200100](&a16);
  _Unwind_Resume(a1);
}

void *__copy_helper_block_e8_32r64c58_ZTSN8dispatch5blockIU13block_pointerFvy13HSFilerStatusEEE(uint64_t a1, uint64_t a2)
{
  _Block_object_assign((a1 + 32), *(a2 + 32), 8);
  result = *(a2 + 64);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 64) = result;
  return result;
}

void __destroy_helper_block_e8_32r64c58_ZTSN8dispatch5blockIU13block_pointerFvy13HSFilerStatusEEE(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = *(a1 + 32);

  _Block_object_dispose(v3, 8);
}

uint64_t HSFilerRT_Internal::removeSessionFromQueue(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v24 = *MEMORY[0x29EDCA608];
  v6 = **(a1 + 128);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = hsfiler::support::to_string(a2);
    *&buf[12] = 2048;
    *&buf[14] = a3;
    _os_log_impl(&dword_297948000, v6, OS_LOG_TYPE_DEFAULT, "Removing client (%s) session (%llu) from queue", buf, 0x16u);
  }

  v15 = 0;
  v16 = &v15;
  v17 = 0x2000000000;
  v18 = 0;
  v13[0] = MEMORY[0x29EDCA5F8];
  v13[1] = 1107296256;
  v13[2] = ___ZN18HSFilerRT_Internal22removeSessionFromQueueE15HSFilerClientIDy_block_invoke;
  v13[3] = &__block_descriptor_tmp_10_0;
  v13[5] = a1;
  v13[6] = a3;
  v14 = a2;
  v13[4] = &v15;
  v19 = v13;
  *buf = MEMORY[0x29EDCA5F8];
  *&buf[8] = 0x40000000;
  *&buf[16] = ___ZNK3ctu20SharedSynchronizableI18HSFilerRT_InternalE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  v21 = &__block_descriptor_tmp_83;
  v22 = a1 + 8;
  v23 = &v19;
  v7 = *(a1 + 24);
  if (*(a1 + 32))
  {
    dispatch_async_and_wait(v7, buf);
    if (*(v16 + 24) == 1)
    {
      goto LABEL_5;
    }

LABEL_8:
    v10 = 0;
    goto LABEL_10;
  }

  dispatch_sync(v7, buf);
  if (*(v16 + 24) != 1)
  {
    goto LABEL_8;
  }

LABEL_5:
  v8 = **(a1 + 128);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = hsfiler::support::to_string(a2);
    *buf = 136315394;
    *&buf[4] = v9;
    *&buf[12] = 2048;
    *&buf[14] = a3;
    _os_log_impl(&dword_297948000, v8, OS_LOG_TYPE_DEFAULT, "Removed client (%s) session (%llu) from queue", buf, 0x16u);
    v10 = *(v16 + 24);
  }

  else
  {
    v10 = 1;
  }

LABEL_10:
  _Block_object_dispose(&v15, 8);
  v11 = *MEMORY[0x29EDCA608];
  return v10 & 1;
}

void sub_2979563DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___ZN18HSFilerRT_Internal22removeSessionFromQueueE15HSFilerClientIDy_block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 40);
  v21 = 0;
  v22 = 0;
  v3 = *(v2 + 200);
  if (v3 && (v4 = std::__shared_weak_count::lock(v3), (v22 = v4) != 0) && (v5 = *(v2 + 192), (v21 = v5) != 0))
  {
    v6 = *(a1 + 48);
    if (*(v5 + 32) == v6)
    {
      v6 = *(v5 + 32);
      if (*(v5 + 114) == 1)
      {
        v7 = v4;
        v8 = **(v2 + 128);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v16 = hsfiler::support::to_string(*(a1 + 56));
          v17 = *(a1 + 48);
          *buf = 136315394;
          v24 = v16;
          v25 = 2048;
          v26 = v17;
          _os_log_error_impl(&dword_297948000, v8, OS_LOG_TYPE_ERROR, "error: Failed client (%s) remove session (%llu): session is in progress", buf, 0x16u);
        }

        v20[0] = v5;
        v20[1] = v7;
        atomic_fetch_add_explicit(v7 + 1, 1uLL, memory_order_relaxed);
        HSFilerRT_Internal::logSessionFileTransferStatus_sync(v2, v20);
        if (!atomic_fetch_add(v7 + 1, 0xFFFFFFFFFFFFFFFFLL))
        {
          (*(*v7 + 16))(v7);
          v9 = v7;
LABEL_18:
          std::__shared_weak_count::__release_weak(v9);
          goto LABEL_19;
        }

        goto LABEL_19;
      }
    }
  }

  else
  {
    v6 = *(a1 + 48);
  }

  v18 = 0xAAAAAAAAAAAAAAAALL;
  v19 = 0xAAAAAAAAAAAAAAAALL;
  HSFilerRT_Internal::findSession_sync(v2, *(a1 + 56), v6, &v18);
  if (v18)
  {
    (*(*v18 + 16))(v18);
    *(*(*(a1 + 32) + 8) + 24) = 1;
    v10 = v19;
    if (!v19)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v11 = **(v2 + 128);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v14 = hsfiler::support::to_string(*(a1 + 56));
      v15 = *(a1 + 48);
      *buf = 136315394;
      v24 = v14;
      v25 = 2048;
      v26 = v15;
      _os_log_error_impl(&dword_297948000, v11, OS_LOG_TYPE_ERROR, "error: Unable to find client (%s) session (%llu): this should never happen", buf, 0x16u);
      v10 = v19;
      if (!v19)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v10 = v19;
      if (!v19)
      {
        goto LABEL_19;
      }
    }
  }

  if (!atomic_fetch_add(v10 + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*v10 + 16))(v10);
    v9 = v10;
    goto LABEL_18;
  }

LABEL_19:
  v12 = v22;
  if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  v13 = *MEMORY[0x29EDCA608];
}

void sub_2979566C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::shared_ptr<support::transport::AriSelfHostedRT::initRTServer(void)::syncVars>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_2979566DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  std::shared_ptr<support::transport::AriSelfHostedRT::initRTServer(void)::syncVars>::~shared_ptr[abi:ne200100](va);
  std::shared_ptr<support::transport::AriSelfHostedRT::initRTServer(void)::syncVars>::~shared_ptr[abi:ne200100](va1);
  _Unwind_Resume(a1);
}

void sub_297956708(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::shared_ptr<support::transport::AriSelfHostedRT::initRTServer(void)::syncVars>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void HSFilerRT_Internal::logSessionFileTransferStatus_sync(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x29EDCA608];
  for (i = *(*a2 + 56); i; i = *i)
  {
    v7 = **(a1 + 128);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = i + 2;
      v9 = hsfiler::support::to_string(*(*a2 + 24));
      if (*(i + 39) < 0)
      {
        v8 = *v8;
      }

      v5 = *(*a2 + 32);
      v6 = "not transferred";
      if (*(i + 40))
      {
        v6 = "transferred";
      }

      *buf = 136315906;
      v12 = v9;
      v13 = 2048;
      v14 = v5;
      v15 = 2080;
      v16 = v8;
      v17 = 2080;
      v18 = v6;
      _os_log_impl(&dword_297948000, v7, OS_LOG_TYPE_INFO, "Client (%s) session (%llu): file (%s) %s", buf, 0x2Au);
    }
  }

  v10 = *MEMORY[0x29EDCA608];
}

void HSFilerRT_Internal::startSession(HSFilerRT_Internal *this)
{
  v1[0] = MEMORY[0x29EDCA5F8];
  v1[1] = 0x40000000;
  v1[2] = ___ZN18HSFilerRT_Internal12startSessionEv_block_invoke;
  v1[3] = &__block_descriptor_tmp_12;
  v1[4] = this;
  ctu::SharedSynchronizable<HSFilerRT_Internal>::execute_wrapped(this + 1, v1);
}

void ___ZN18HSFilerRT_Internal12startSessionEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v22 = 0;
  v23 = 0;
  v2 = *(v1 + 200);
  if (v2)
  {
    v23 = std::__shared_weak_count::lock(v2);
    if (!v23)
    {
      return;
    }

    v3 = *(v1 + 192);
    v22 = v3;
    if (v3)
    {
      if ((*(v3 + 113) & 1) == 0)
      {
        v7 = *(v1 + 200);
        *(v1 + 192) = 0;
        *(v1 + 200) = 0;
        if (v7)
        {
          std::__shared_weak_count::__release_weak(v7);
        }

        HSFilerRT_Internal::sessionScheduler_sync(v1);
        goto LABEL_28;
      }

      if ((*(v3 + 114) & 1) == 0)
      {
        v4 = v22;
        *(v22 + 96) = atomic_fetch_add((v1 + 184), 1u) + 1;
        if (*(v4 + 112) == 1)
        {
          v20 = v4;
          v21 = v23;
          if (v23)
          {
            atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v5 = (*(*v1 + 16))(v1, &v20);
          v6 = v21;
          if (!v21)
          {
            goto LABEL_18;
          }
        }

        else
        {
          v18 = v4;
          v19 = v23;
          if (v23)
          {
            atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v5 = (*(*v1 + 24))(v1, &v18);
          v6 = v19;
          if (!v19)
          {
LABEL_18:
            if (v5)
            {
LABEL_19:
              v8 = v22;
              v9 = *(v22 + 32);
              v15[0] = MEMORY[0x29EDCA5F8];
              v15[1] = 1174405120;
              v15[2] = ___ZN18HSFilerRT_Internal12startSessionEv_block_invoke_2;
              v15[3] = &__block_descriptor_tmp_11_0;
              v15[4] = v22;
              v16 = v23;
              if (v23)
              {
                atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v17 = v9;
              dispatch_async(*(v8 + 80), v15);
              *(v8 + 114) = 1;
              v10 = v16;
              if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v10->__on_zero_shared)(v10);
                std::__shared_weak_count::__release_weak(v10);
              }

              goto LABEL_28;
            }

            goto LABEL_25;
          }
        }

        if (atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_18;
        }

        v11 = v5;
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
        if (v11)
        {
          goto LABEL_19;
        }
      }

LABEL_25:
      v12 = *(v22 + 24);
      v13 = *(v22 + 32);
      v24 = 0;
      HSFilerRT_Internal::abortSession_sync(v1, v12, v13, -5, &v24);
      if (v24 == 1)
      {
        HSFilerRT_Internal::resetBaseband_sync(v1, v12, v13, 4294967291);
      }

      else
      {
        HSFilerRT_Internal::sessionScheduler_sync(v1);
      }
    }
  }

LABEL_28:
  v14 = v23;
  if (v23)
  {
    if (!atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v14->__on_zero_shared)(v14);
      std::__shared_weak_count::__release_weak(v14);
    }
  }
}

void sub_297956BE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  std::shared_ptr<support::transport::AriSelfHostedRT::initRTServer(void)::syncVars>::~shared_ptr[abi:ne200100](va);
  std::shared_ptr<support::transport::AriSelfHostedRT::initRTServer(void)::syncVars>::~shared_ptr[abi:ne200100](v8 - 56);
  _Unwind_Resume(a1);
}

void sub_297956BFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  std::shared_ptr<support::transport::AriSelfHostedRT::initRTServer(void)::syncVars>::~shared_ptr[abi:ne200100](va);
  std::shared_ptr<support::transport::AriSelfHostedRT::initRTServer(void)::syncVars>::~shared_ptr[abi:ne200100](v10 - 56);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_32c56_ZTSNSt3__110shared_ptrIN18HSFilerRT_Internal7SessionEEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_32c56_ZTSNSt3__110shared_ptrIN18HSFilerRT_Internal7SessionEEE(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);

    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t HSFilerRT_Internal::read(uint64_t a1, int a2, uint64_t a3, uint64_t a4, void **a5, uint64_t a6)
{
  v48 = *MEMORY[0x29EDCA608];
  if (*a5)
  {
    v36 = 0;
    v37 = &v36;
    v38 = 0x2000000000;
    v39 = 0;
    v27 = MEMORY[0x29EDCA5F8];
    v28 = 1107296256;
    v29 = ___ZN18HSFilerRT_Internal4readE15HSFilerClientIDyRKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEN8dispatch5blockIU13block_pointerFvy13HSFilerStatusS9_EEENS1_8functionIFvPKvmEEE_block_invoke;
    v30 = &__block_descriptor_tmp_15_1;
    v35 = a2;
    v33 = a3;
    v34 = a4;
    v31 = &v36;
    v32 = a1;
    v40 = &v27;
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 0x40000000;
    block[2] = ___ZNK3ctu20SharedSynchronizableI18HSFilerRT_InternalE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
    block[3] = &__block_descriptor_tmp_83;
    block[4] = a1 + 8;
    block[5] = &v40;
    v12 = *(a1 + 24);
    if (*(a1 + 32))
    {
      dispatch_async_and_wait(v12, block);
      v13 = *(v37 + 24);
      if (v13 != 1)
      {
        goto LABEL_23;
      }
    }

    else
    {
      dispatch_sync(v12, block);
      v13 = *(v37 + 24);
      if (v13 != 1)
      {
        goto LABEL_23;
      }
    }

    v42[0] = MEMORY[0x29EDCA5F8];
    v42[1] = 1174405120;
    v42[2] = ___ZN18HSFilerRT_Internal4readE15HSFilerClientIDyRKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEN8dispatch5blockIU13block_pointerFvy13HSFilerStatusS9_EEENS1_8functionIFvPKvmEEE_block_invoke_16;
    v42[3] = &__block_descriptor_tmp_31;
    v42[4] = a1;
    v42[5] = a3;
    v47 = a2;
    v15 = *a5;
    if (*a5)
    {
      v15 = _Block_copy(v15);
    }

    aBlock = v15;
    v44 = a4;
    v16 = *(a6 + 24);
    if (v16)
    {
      if (v16 == a6)
      {
        v46 = v45;
        (*(*v16 + 24))(v16, v45);
        goto LABEL_16;
      }

      v16 = (*(*v16 + 16))(v16);
    }

    v46 = v16;
LABEL_16:
    ctu::SharedSynchronizable<HSFilerRT_Internal>::execute_wrapped((a1 + 8), v42);
    if (v46 != v45)
    {
      if (v46)
      {
        (*(*v46 + 40))(v46, v17, v18, v19, v20, v21, v22, v23, v27, v28);
      }

      v24 = aBlock;
      if (!aBlock)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    (*(*v46 + 32))(v46);
    v24 = aBlock;
    if (aBlock)
    {
LABEL_22:
      _Block_release(v24);
    }

LABEL_23:
    _Block_object_dispose(&v36, 8);
    goto LABEL_24;
  }

  v14 = **(a1 + 128);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    LOWORD(block[0]) = 0;
    _os_log_error_impl(&dword_297948000, v14, OS_LOG_TYPE_ERROR, "error: NULL transferCb param", block, 2u);
  }

  v13 = 0;
LABEL_24:
  v25 = *MEMORY[0x29EDCA608];
  return v13;
}

void sub_297957004(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *aBlock)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void ___ZN18HSFilerRT_Internal4readE15HSFilerClientIDyRKNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEEN8dispatch5blockIU13block_pointerFvy13HSFilerStatusS9_EEENS1_8functionIFvPKvmEEE_block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x29EDCA608];
  v9 = 0xAAAAAAAAAAAAAAAALL;
  v10 = 0xAAAAAAAAAAAAAAAALL;
  v2 = *(a1 + 40);
  HSFilerRT_Internal::findSession_sync(v2, *(a1 + 64), *(a1 + 48), &v9);
  if (!v9)
  {
    goto LABEL_6;
  }

  if (std::__hash_table<std::__hash_value_type<std::string,BOOL>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,BOOL>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,BOOL>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,BOOL>>>::find<std::string>((v9 + 40), *(a1 + 56)))
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    v3 = v10;
    if (!v10)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v4 = **(v2 + 128);
  if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
LABEL_6:
    v3 = v10;
    if (!v10)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v6 = hsfiler::support::to_string(*(a1 + 64));
  v8 = *(a1 + 48);
  v7 = *(a1 + 56);
  if (*(v7 + 23) < 0)
  {
    v7 = *v7;
  }

  *buf = 136315650;
  v12 = v6;
  v13 = 2048;
  v14 = v8;
  v15 = 2080;
  v16 = v7;
  _os_log_error_impl(&dword_297948000, v4, OS_LOG_TYPE_ERROR, "error: Client (%s) session (%llu): invalid fileID (%s)", buf, 0x20u);
  v3 = v10;
  if (v10)
  {
LABEL_7:
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
    }
  }

LABEL_9:
  v5 = *MEMORY[0x29EDCA608];
}